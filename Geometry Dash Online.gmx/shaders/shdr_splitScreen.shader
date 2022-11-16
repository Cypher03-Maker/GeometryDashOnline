attribute vec3 in_Position; 
varying vec2 fragCoord;

void main() 
{
    vec4 Position = vec4( in_Position, 1); 
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * Position; 
    fragCoord = in_Position.xy; 
}
//######################_==_YOYO_SHADER_MARKER_==_######################@~uniform float iResolution; 
varying vec2 fragCoord; 
int column = 1;
int row = 1;
float borderSize  = 1.0;
int actualScreen= 0;
int screenActif= 0;
vec4  borderColor= vec4(0.0);
vec3 subResolution= vec3(0.0);

void display(out vec4 fragColor, in vec2 fragCoord)
{
    vec2    uv = fragCoord.xy / subResolution.xy;

   if (actualScreen == screenActif)
        gl_FragColor = vec4(1.0);
    else
    gl_FragColor = texture2D(gm_BaseTexture, -uv);
}

void splitScreen(out vec4 fragColor, in vec2 fragCoord)
{
    float columnNew = float(column);
    float rowNew = float(row);
    
    vec2    newFragCoord = fragCoord;
    vec3    newResolution = iResolution - borderSize;
    vec2    subFragCoord = float(mod(newFragCoord.x, newResolution.x / columnNew),
                                 mod(newFragCoord.y, newResolution.y / rowNew)) - borderSize;
                                 
    subResolution = vec3(newResolution.x / float(column),
                         newResolution.y / float(row),
                         newResolution.z) - borderSize;
    int actualColumn = int(newFragCoord.x / (subResolution.x + borderSize) + 1.0);
    int actualRow = int((newResolution.y - newFragCoord.y) / (subResolution.y + borderSize));
    actualScreen = actualRow * column + actualColumn;

    int tactualColumn = int(subResolution.x + 1.0);
    int tactualRow = int(iResolution.y / subResolution.y);
    screenActif = tactualRow * column + tactualColumn;

    if (subFragCoord.x > 0.0 && subFragCoord.x < subResolution.x
        && subFragCoord.y > 0.0 && subFragCoord.y < subResolution.y) {
        display(gl_FragColor, subFragCoord);
    } else {
        gl_FragColor = borderColor;
    }
}

void main(void)
{
   // DEMO
    column = 3;
    row = 3;
    
    // !DEMO
     splitScreen(gl_FragColor, fragCoord);
}

