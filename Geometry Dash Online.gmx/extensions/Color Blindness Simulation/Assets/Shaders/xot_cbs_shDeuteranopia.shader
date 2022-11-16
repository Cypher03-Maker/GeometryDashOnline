/// shDeuteranopia
//
//  Simple passthrough vertex shader.
//
/// GMLscripts.com/license

attribute vec3 in_Position;                  // (x,y,z)
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

//######################_==_YOYO_SHADER_MARKER_==_######################@~/// shDeuteranopia
//
//  Deuteranopia color blindness simulation fragment shader.
//
/// GMLscripts.com/license

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

const mat4 mDeuteranopia = mat4( 0.43 ,  0.72 , -0.15 ,  0.0 ,
                                 0.34 ,  0.57 ,  0.09 ,  0.0 ,
                                -0.02 ,  0.03 ,  1.00 ,  0.0 ,
                                 0.0  ,  0.0  ,  0.0  ,  1.0 );

void main()
{
    gl_FragColor = (v_vColour * texture2D(gm_BaseTexture, v_vTexcoord)) * mDeuteranopia;
}
