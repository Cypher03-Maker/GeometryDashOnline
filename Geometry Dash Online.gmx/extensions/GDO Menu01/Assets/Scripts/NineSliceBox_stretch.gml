///NineSliceBox_stretch(sprite, colour, x1, y1, x2, y2, alpha)

var _size = sprite_get_width(argument0) / 3;
var colour = argument1;
var _x1 = argument2;
var _y1 = argument3;
var _x2 = argument4;
var _y2 = argument5;
var alpha = argument6;
var _w = _x2 - _x1;
var _h = _y2 - _y1;

draw_sprite_part_ext(argument0, 0, _size, _size, 1, 1, _x1+_size, _y1+_size, _w-(_size*2), _h-(_size*2), colour, alpha);

draw_sprite_part_ext(argument0, 0, 0, 0, _size, _size, _x1, _y1, 1, 1, colour, alpha);

draw_sprite_part_ext(argument0, 0, _size*2, 0, _size, _size, _x1+_w-_size, _y1, 1, 1, colour, alpha);

draw_sprite_part_ext(argument0, 0, 0, _size*2, _size, _size, _x1, _y1+_h-_size, 1, 1, colour, alpha);

draw_sprite_part_ext(argument0, 0, _size*2, _size*2, _size, _size, _x1+_w-_size, _y1+_h-_size, 1, 1, colour, alpha);

draw_sprite_part_ext(argument0, 0, 0, _size, _size, 1, _x1, _y1+_size, 1, _h-(_size*2), colour, alpha);

draw_sprite_part_ext(argument0, 0, _size*2, _size, _size, 1, _x1+_w-_size, _y1+_size, 1, _h-(_size*2), colour, alpha);

draw_sprite_part_ext(argument0, 0, _size, 0, 1, _size, _x1+_size, _y1, _w-(_size*2), 1, colour, alpha);

draw_sprite_part_ext(argument0, 0, _size, _size*2, 1, _size, _x1+_size, _y1+_h-(_size), _w-(_size*2), 1, colour, alpha);
