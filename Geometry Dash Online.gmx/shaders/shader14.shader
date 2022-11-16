//
// Simple passthrough vertex shader
//
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

//######################_==_YOYO_SHADER_MARKER_==_######################@~//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_fragmentColor;

// common uniforms
uniform float _screenAspect;
uniform float _screenAspectInv;
uniform vec2 _textureScale;
uniform vec2 _textureScaleInv;
uniform vec2 _shaderPosition;
uniform vec3 _blurRefColor;
uniform bool _blurUseRef;
uniform float _blurIntensity;

// grayscale uniforms
uniform float _grayscaleValue;
uniform vec3 _grayscaleTint;
uniform bool _grayscaleUseLum;

// hue uniforms
uniform float _hueShiftCosA;
uniform float _hueShiftSinA;

// invert color uniforms
uniform vec4 _invertColorValue;

// chromatic uniforms
uniform float _chromaticXOff;
uniform float _chromaticYOff;

// lens circle uniforms
uniform vec2 _lensCircleOrigin;
uniform float _lensCircleStart;
uniform float _lensCircleEnd;
uniform float _lensCircleStrength;

// sepia uniforms
uniform float _sepiaValue;

// bulge uniforms
uniform float _bulgeValue;
uniform float _bulgeValue2;

// pinch uniforms
uniform vec2 _pinchValue;
uniform vec2 _pinchCenterPos;

// motionblur uniforms
uniform vec2 _motionBlurValue;
uniform float _motionBlurMult;

// radialblur uniforms
uniform vec2 _radialBlurCenter;
uniform float _radialBlurValue;

// splitscreen uniforms
uniform float _rowmod;
uniform float _colmod;
uniform float _rowmodCalc;
uniform float _colmodCalc;

// change color uniforms
uniform vec3 _colorChangeB; // brightness
uniform vec3 _colorChangeC; // contrast

uniform sampler2D CC_Texture;

vec4 grayscale(vec4 col)
{
    float grayscaleIntensity = (col.x + col.y + col.z) / 3.0 * _grayscaleValue;
    if(_grayscaleUseLum)
        grayscaleIntensity = 0.21 * col.r + 0.71 * col.g + 0.07 * col.b;

    return col * (1.0 - _grayscaleValue) + vec4(grayscaleIntensity, grayscaleIntensity, grayscaleIntensity, 1.0) * vec4(_grayscaleTint, 1.0);
}

vec4 hueshift(vec4 col)
{
    const vec3 k = vec3(0.57735, 0.57735, 0.57735);
    vec3 color = col.rgb;
    return vec4(color * _hueShiftCosA + cross(k, color) * _hueShiftSinA + k * dot(k, color) * (1.0 - _hueShiftCosA), 1.0);
}

vec4 invertColor(vec4 col)
{
    vec3 color = col.rgb;

    color.r = _invertColorValue.r - color.r;
    color.g = _invertColorValue.g - color.g;
    color.b = _invertColorValue.b - color.b;

    return vec4(col.rgb * (1.0 - _invertColorValue.a) + color * _invertColorValue.a, col.a);
}
vec4 chromatic(vec2 uv)
{
    vec4 col = texture2D(CC_Texture, uv);
    col.r = texture2D(CC_Texture, uv + vec2(_chromaticXOff, _chromaticYOff)).r;
    col.g = texture2D(CC_Texture, uv + vec2(_chromaticXOff * 0.5, _chromaticYOff * 0.5)).g;
    return col;
}

vec4 lensCircle(vec4 col)
{
    vec2 uv = v_vTexcoord;
    uv -= 0.2185 * _textureScale;
    uv.x *= _screenAspectInv;
    float dist = distance(uv, _lensCircleOrigin * _textureScale);
    float lensStart = _lensCircleStart;
    float lensEnd = _lensCircleEnd;
    if(_lensCircleEnd >= _lensCircleStart)
    {
        lensStart = _lensCircleEnd + 0.001;
        lensEnd = _lensCircleStart;
    }
    col.rgb = col.rgb * (1.0 - _lensCircleStrength) + col.rgb * smoothstep(lensStart, lensEnd, dist) * _lensCircleStrength;
    return col;
}

vec4 sepia(vec4 col)
{
    const vec3 sepiaCol = vec3(1.0, 0.95, 0.82);
    float grey = dot(col.rgb, vec3(0.299, 0.587, 0.114));

    vec3 sepiaA = vec3(grey);
    sepiaA *= sepiaCol;

    return vec4(col.rgb * (1.0 - _sepiaValue) + sepiaA * _sepiaValue, col.a);
}

vec2 bulgeDistort(vec2 uv)
{
    float radius = length(uv);
    float a = atan(uv.y, uv.x);

    radius = pow(radius, _bulgeValue + 1.0);

    uv = radius * vec2(cos(a), sin(a));

    return uv + 0.5;
}

vec2 pinchDistort(vec2 p)
{
    vec2 cp = _pinchCenterPos * _textureScale;
    vec2 dir = normalize(cp - p);
    float d = length(cp - p);
    vec2 factor = -_pinchValue / 2.0;
    vec2 f = exp(factor * (d - 0.5)) - 1.0;

    return p + f * dir;
}

vec4 blur(vec4 col, vec2 uv)
{
vec2 d = _radialBlurCenter * _textureScale - uv;
vec3 color = col.rgb;
    if(_motionBlurValue.x != 0.0 || _motionBlurValue.y != 0.0)
    {
        // motionblur
        color += texture2D(CC_Texture, uv - vec2(0.005) * _motionBlurValue * 100.0 * _motionBlurMult).rgb;
        color += texture2D(CC_Texture, uv - vec2(0.01) * _motionBlurValue * 100.0 * _motionBlurMult).rgb;
        color += texture2D(CC_Texture, uv - vec2(0.015) * _motionBlurValue * 100.0 * _motionBlurMult).rgb;
        color += texture2D(CC_Texture, uv - vec2(0.02) * _motionBlurValue * 100.0 * _motionBlurMult).rgb;
        color += texture2D(CC_Texture, uv - vec2(0.0025) * _motionBlurValue * 100.0 * _motionBlurMult).rgb;
        color += texture2D(CC_Texture, uv - vec2(0.0075) * _motionBlurValue * 100.0 * _motionBlurMult).rgb;
        color += texture2D(CC_Texture, uv - vec2(0.0125) * _motionBlurValue * 100.0 * _motionBlurMult).rgb;
        color += texture2D(CC_Texture, uv - vec2(0.0175) * _motionBlurValue * 100.0 * _motionBlurMult).rgb;

        color /= 9.0;
    }
    // radialblur
    if(_radialBlurValue != 0.0)
    {
        color += texture2D(CC_Texture, uv - vec2(0.005) * _radialBlurValue * d * 100.0).rgb;
        color += texture2D(CC_Texture, uv - vec2(0.01) * _radialBlurValue * d * 100.0).rgb;
        color += texture2D(CC_Texture, uv - vec2(0.015) * _radialBlurValue * d * 100.0).rgb;
        color += texture2D(CC_Texture, uv - vec2(0.02) * _radialBlurValue * d * 100.0).rgb;
        color += texture2D(CC_Texture, uv - vec2(0.0025) * _radialBlurValue * d * 100.0).rgb;
        color += texture2D(CC_Texture, uv - vec2(0.0075) * _radialBlurValue * d * 100.0).rgb;
        color += texture2D(CC_Texture, uv - vec2(0.0125) * _radialBlurValue * d * 100.0).rgb;
        color += texture2D(CC_Texture, uv - vec2(0.0175) * _radialBlurValue * d * 100.0).rgb;

        color += texture2D(CC_Texture, uv - vec2(0.001) * _radialBlurValue * d * 100.0).rgb;
        color += texture2D(CC_Texture, uv - vec2(0.006) * _radialBlurValue * d * 100.0).rgb;
        color += texture2D(CC_Texture, uv - vec2(0.0130) * _radialBlurValue * d * 100.0).rgb;
        color += texture2D(CC_Texture, uv - vec2(0.0185) * _radialBlurValue * d * 100.0).rgb;
        color /= 13.0;
    }

return vec4(color, col.a);
}

vec2 splitscreen(vec2 uv)
{
    float colmod = abs(_colmod);
    float rowmod = abs(_rowmod);

    uv.x *= colmod;
    uv.y *= rowmod;
        
    for(float c = colmod; c > 0.0; c--)
    {
        if(uv.x > c * _textureScale.x)
            uv.x -= c * _textureScale.x;
    }

    for(float r = rowmod; r > 0.0; r--)
    {
        if(uv.y > r * _textureScale.y)
            uv.y -= r * _textureScale.y;
    }
    if(_colmod < 0.0)
        uv.x = _textureScale.x - uv.x;
    if(_rowmod < 0.0)
        uv.y = _textureScale.y - uv.y;
    
    return uv;
}

float remap(float value, float inputMin, float inputMax, float outputMin, float outputMax)
{
    return (value - inputMin) * ((outputMax - outputMin) / (inputMax - inputMin)) + outputMin;
}

vec4 colorChange(vec4 col)
{
    vec3 contrast = vec3(0.0);

    contrast.x = remap(_colorChangeC.x, -2.0, 2.0, 0.0, 2.0);
    contrast.y = remap(_colorChangeC.y, -2.0, 2.0, 0.0, 2.0);
    contrast.z = remap(_colorChangeC.z, -2.0, 2.0, 0.0, 2.0);

    col.rgb = ((col.rgb - 0.5) * max(contrast, 0.0)) + 0.5;
    col.rgb += _colorChangeB;

    return col;
}

void main()
{
    vec2 uv = splitscreen(bulgeDistort(pinchDistort(v_vTexcoord) - 0.5));
    vec4 col = chromatic(uv);
    gl_FragColor = colorChange(lensCircle(sepia(invertColor(grayscale(hueshift(blur(col, uv)))))));
}
