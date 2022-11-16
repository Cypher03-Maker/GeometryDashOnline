attribute vec3 in_Position; 
varying vec2 fragCoord; 
 void main() 
 {
    vec4 Position = vec4( in_Position, 1); 
   gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * Position; 
   fragCoord = in_Position.xy; 
 }
//######################_==_YOYO_SHADER_MARKER_==_######################@~uniform vec3 iResolution; 
varying vec2 fragCoord;

float crop(float i, float Scale)
{
    return floor(i * Scale) / Scale;
}

void main( void )
{	
    vec2 percent = (fragCoord.xy / iResolution.xy);
    vec2 percent2 = (fragCoord / iResolution.xy);
    percent.y = percent.y;
    percent2.y = percent2.y;
    
    vec3 pixelColor = texture2D(gm_BaseTexture, percent).xyz;
    vec4 Color = texture2D(gm_BaseTexture, percent);
    
    float mode = 1.0;
    
    if (mode == 3.0)
    {
        // Invert Color
        pixelColor.xyz = vec3(1, 1, 1) - Color.xyz;
        
        gl_FragColor = vec4(pixelColor, 1.0);
    }
    else if (mode == 1.0)
    {
        // naive grey scale conversion - average R,G and B
        float pixelGrey = dot(pixelColor, vec3(1.0/3.0));
        		pixelColor = vec3(pixelGrey);
        
        gl_FragColor = vec4(pixelColor, 1.0);
    }
    else if (mode == 2.0)
    {
        vec3 sepia = vec3(0.0);
        sepia.r = dot(Color.rgb, vec3(0.393,0.769,0.189));
        sepia.g = dot(Color.rgb, vec3(0.349,0.686,0.168));
        sepia.b = dot(Color.rgb, vec3(0.272,0.534,0.131));
        pixelColor.rgb = mix(Color.rgb,sepia.rgb, 1.0);
        
        gl_FragColor = vec4(pixelColor, 1.0);
    }
    else if (mode == 4.0)
    {
        // Normalized pixel coordinates (from 0 to 1)
        vec2 uv = fragCoord/iResolution.xy;

        // Time varying pixel color
        float pre = 32.0;
        vec4 col = texture2D(gm_BaseTexture, vec2(crop(uv.x, 2.0*pre), crop(uv.y, 1.0*pre)));
        
        gl_FragColor = vec4(col);
    }
    else if (mode == 5.0)
    {
        vec2 uv = percent2;
        vec4 tex_color;

        tex_color.r = texture2D(gm_BaseTexture, vec2(uv.x + 0.025, uv.y + 0.025)).x;
        tex_color.g = texture2D(gm_BaseTexture, vec2(uv.x, uv.y)).y;
        tex_color.b = texture2D(gm_BaseTexture, vec2(uv.x - 0.025, uv.y - 0.025)).z;
        tex_color.a = texture2D(gm_BaseTexture, vec2(uv.x, uv.y)).a;
        
        gl_FragColor.rgba = tex_color;
    }
    else if (mode == 6.0)
    {
        vec2 coords = percent * 2.0 - 1.0;//Remap uv to cartesian coordinates. -1 to 1
        coords.x *= iResolution.x / iResolution.y;//Account for aspect ratio

        float l_time = 0.50;//Calculate a 0-1 time ... In this case it repeats every 0.75 seconds
        float l_radius = 2.0;

        gl_FragColor = vec4(0.0,0.0,0.0,1.0);//Set the background to green

        if(length(coords) < l_time * l_radius)  //Set to black if less than 
        {
            gl_FragColor = texture2D( gm_BaseTexture, percent );
        }
    }
}
