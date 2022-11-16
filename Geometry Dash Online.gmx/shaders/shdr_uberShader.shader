attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float greyscale;
uniform float blurSize;
uniform float intensity;

void main()
{ 
    vec4 colour = texture2D(gm_BaseTexture, v_vTexcoord);
    float gray = dot(colour.rgb, vec3(1.0/3.0));
    
    vec3 sepia = vec3(0.0);
    vec3 SepiaEffect = vec3(0.0);
    vec3 GeneralEffect = vec3(0.0);
    sepia.r = dot(colour.rgb, vec3(0.393,0.769,0.189));
    sepia.g = dot(colour.rgb, vec3(0.349,0.686,0.168));
    sepia.b = dot(colour.rgb, vec3(0.272,0.534,0.131));
    SepiaEffect = mix(colour.rgb,sepia.rgb,0.0);
    
    GeneralEffect = mix(colour.rgb, vec3(gray, SepiaEffect), greyscale);
    
    gl_FragColor = vec4(GeneralEffect, colour.a);
}
