attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_fragmentColor;

void main()
{
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    
    v_fragmentColor = in_Colour;
    v_vTexcoord = in_TextureCoord;
}
//######################_==_YOYO_SHADER_MARKER_==_######################@~uniform vec3 iResolution; 
varying vec2 v_vTexcoord;
varying vec4 v_fragmentColor;

uniform vec2 _lensCircleOrigin;
uniform float _lensCircleStart;
uniform float _lensCircleEnd;
uniform float _lensCircleStrength;

// common uniforms
uniform float _screenAspect;
uniform float _screenAspectInv;
uniform vec2 _textureScale;
uniform vec2 _textureScaleInv;
uniform vec2 _shaderPosition;
uniform vec3 _blurRefColor;
uniform bool _blurUseRef;
uniform float _blurIntensity;

void main()
{
    /*vec2 uv = fragCoord.xy / iResolution.xy;
    
    vec2 coords = uv * 2.0 - 1.0;//Remap uv to cartesian coordinates. -1 to 1
    coords.x *= iResolution.x / iResolution.y;//Account for aspect ratio
    
    float l_time = 0.50;//Calculate a 0-1 time ... In this case it repeats every 0.75 seconds
    float l_radius = 2.0;
    
    gl_FragColor = vec4(0.0,0.0,0.0,1.0);//Set the background to green
    
    if(length(coords) < l_time * l_radius)  //Set to black if less than 
    {
        gl_FragColor = texture2D( gm_BaseTexture, uv );
    }*/
    
    vec2 uv = v_vTexcoord;
    uv -= 0.2185 * _textureScale;
    uv.x *= _screenAspectInv;
    vec4 col = texture2D( gm_BaseTexture, uv );
    float dist = distance(uv, _lensCircleOrigin * _textureScale);
    float lensStart = _lensCircleStart;
    float lensEnd = _lensCircleEnd;
    if(_lensCircleEnd >= _lensCircleStart)
    {
        lensStart = _lensCircleEnd + 0.001;
        lensEnd = _lensCircleStart;
    }
    col.rgb = col.rgb * (1.0 - _lensCircleStrength) + col.rgb * smoothstep(lensStart, lensEnd, dist) * _lensCircleStrength;
    
    gl_FragColor = texture2D( gm_BaseTexture, uv );
    gl_FragColor = col;
}
