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
uniform vec4 firstColor;
uniform vec4 endColor;
varying vec2 v_texcoord; 
//vec4 firstColor = vec4(1.0,1.0,0.0,1.0); //red
//vec4 endColor = vec4(0.0,0.0,1.0,1.0); // blue

void main( void )
{
    vec2 uv = fragCoord.xy / iResolution.xy;
    
    float h = 1.0; // adjust position of middleColor
    vec4 col = mix(firstColor, endColor, uv.x/h);
    
    gl_FragColor = col;
}
