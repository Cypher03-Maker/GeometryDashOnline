#define scr_IconTable
var obj_Button = argument0;

var pos_x = floor(view_wview*0.5);
var pos_y = floor(view_hview*0.5);

var Script = argument1;

xPos = 122;
yPos = 79;
cont = 0;

for (i=0; i<36; i+=1)
{
    cont += 1;
    ButtonIcon[i] = scr_create_gsButtonSimple(obj_Button, pos_x, pos_y, sprBtnCubes, 9, xPos, yPos, c_white, c_white, noone, noone, noone, noone, Script, i, true);
    //EditorBtn[i].ButtonScale = ScaleVarEditor01;
    //EditorBtn[i].ButtonMode = 2;
    ButtonIcon[i].image_xscale = 0.95;
    ButtonIcon[i].image_yscale = 0.95;
    ButtonIcon[i].ScaleIn = 1.15;
    ButtonIcon[i].ScaleOut = 0.95;
    ButtonIcon[i].AlphaDraw = 1;
    ButtonIcon[i].cube_index = i;
    ButtonIcon[i].ship_index = i;
    ButtonIcon[i].ball_index = i;
    ButtonIcon[i].ufo_index = i;
    ButtonIcon[i].wave_index = i;
    ButtonIcon[i].smasher_index = i;
    ButtonIcon[i].spider_index = i;
    ButtonIcon[i].swing_index = i;
    ButtonIcon[i].armadillo_index = i;
    ButtonIcon[i].jetpack_index = i;
    ButtonIcon[i].exp_index = i;
    ButtonIcon[i].special_index = i;
    
    xPos += 67;
    
    if (cont > 11) {
        cont = 0;
        xPos = 122;
        yPos += 65;
    }
    
    if (i > 36) {
        exit;
    }
}

return obj_Button;

#define scr_EditorGUITable
var obj_Button = argument0;
var SpriteButton = argument1;

Button01 = scr_create_gsButtonSimpleGUIEditor(obj_Button, -225, -140, sprBtnButton01, 0, SpriteButton, 0, 7, ColorCheck, noone, noone, noone, noone, scr_createObjects, 0, true)
Button02 = scr_create_gsButtonSimpleGUIEditor(obj_Button, -135, -140, sprBtnButton01, 1, SpriteButton, 1, 7, ColorCheck, noone, noone, noone, noone, scr_createObjects, 0, true)
Button03 = scr_create_gsButtonSimpleGUIEditor(obj_Button,  -45, -140, sprBtnButton01, 2, SpriteButton, 2, 7, ColorCheck, noone, noone, noone, noone, scr_createObjects, 0, true)
Button04 = scr_create_gsButtonSimpleGUIEditor(obj_Button,   45, -140, sprBtnButton01, 3, SpriteButton, 3, 7, ColorCheck, noone, noone, noone, noone, scr_createObjects, 0, true)
Button05 = scr_create_gsButtonSimpleGUIEditor(obj_Button,  135, -140, sprBtnButton01, 4, SpriteButton, 4, 7, ColorCheck, noone, noone, noone, noone, scr_createObjects, 0, true)
Button06 = scr_create_gsButtonSimpleGUIEditor(obj_Button,  225, -140, sprBtnButton01, 5, SpriteButton, 5, 7, ColorCheck, noone, noone, noone, noone, scr_createObjects, 0, true)

Button07 = scr_create_gsButtonSimpleGUIEditor(obj_Button, -225, -50,  sprBtnButton01, 6, SpriteButton, 6, 7, ColorCheck, noone, noone, noone, noone, scr_createObjects, 0, true)
Button08 = scr_create_gsButtonSimpleGUIEditor(obj_Button, -135, -50,  sprBtnButton01, 0, SpriteButton, 7, 7, ColorCheck, noone, noone, noone, noone, scr_createObjects, 0, true)
Button09 = scr_create_gsButtonSimpleGUIEditor(obj_Button,  -45, -50,  sprBtnButton01, 0, SpriteButton, 8, 7, ColorCheck, noone, noone, noone, noone, scr_createObjects, 0, true)
Button10 = scr_create_gsButtonSimpleGUIEditor(obj_Button,   45, -50,  sprBtnButton01, 0, SpriteButton, 9, 7, ColorCheck, noone, noone, noone, noone, scr_createObjects, 0, true)
Button11 = scr_create_gsButtonSimpleGUIEditor(obj_Button,  135, -50,  sprBtnButton01, 0, SpriteButton, 10, 7, ColorCheck, noone, noone, noone, noone, scr_createObjects, 0, true)
Button12 = scr_create_gsButtonSimpleGUIEditor(obj_Button,  225, -50,  sprBtnButton01, 0, SpriteButton, 11, 7, ColorCheck, noone, noone, noone, noone, scr_createObjects, 0, true)