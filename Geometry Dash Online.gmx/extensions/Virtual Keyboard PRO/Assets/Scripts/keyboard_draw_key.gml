///keyboard_draw_key(x, y, width, text, mousex, mousey, col, presscol, toggle, *alpha, *togglevar)

//changing font
//changing halign
//changing valign


var _x = argument[0]
var _y = argument[1]
var _width = argument[2]
var _text = argument[3]
var _alpha = 1
var _mousex = argument[4]
var _mousey = argument[5]
var _col = argument[6] //color blend
var _presscolor = argument[7]
var _toggle = argument[8]
var _togglevar = 0

if _toggle!=0 var _togglevar=argument[10] //variable to toggle
if argument_count>=10 _alpha = argument[9] //alpha from 0 to 1

var _touchonce = touchlong//mouse_check_button_pressed(mb_left)

var _turnedrly = false

var _prevcolor = draw_get_color()
var _prevalpha = draw_get_alpha()
draw_set_alpha(_alpha)
draw_set_color(_presscolor)

draw_set_font(ft_keyboard)

var _freewidth = 2
var _spr = spr_key
var _spr1 = spr_key1
var _spr_0width = sprite_get_width(spr_key)
var _spr_height = sprite_get_height(spr_key)-4
;
_x -= _freewidth
_width+=2*_freewidth

var _end = _x+2*_spr_0width+_width-2*_spr_0width
var _turned = false
if _toggle != 0 {
var _prev_touch=touch
touch = _touchonce
}

var perm1 = point_in_rectangle(_mousex,_mousey,_x,_y,_end,_y+_spr_height)&&touch

if perm1 or _togglevar
{
if perm1 {_togglevar=!_togglevar if _touchonce {letters+=_text _turnedrly=true}}
_turned = true
draw_set_color(_col)
_col = _presscolor
}
if _toggle != 0
touch = _prev_touch
//show_debug_message(_togglevar)

draw_sprite_ext(_spr,0,_x,_y,1,1,0,_col,_alpha)

//for (var _i = 0; _i<_width-2*_spr_0width; _i++)
{
draw_sprite_ext(_spr1,0,_x+_spr_0width,_y,_width-2*_spr_0width+1,1,0,_col,_alpha)
}

draw_sprite_ext(_spr,0,_x+2*_spr_0width+_width-2*_spr_0width,_y,-1,1,0,_col,_alpha)

draw_set_halign(fa_middle)
draw_set_valign(fa_middle)

draw_text((_x+_end)/2,(2*_y+_spr_height)/2,_text)

draw_set_halign(-1)
draw_set_valign(-1)

draw_set_color(_prevcolor)
draw_set_alpha(_prevalpha)

var _returnarray;
_returnarray[0] = _turned
_returnarray[1] = _togglevar
_returnarray[2] = _turnedrly

return _returnarray

