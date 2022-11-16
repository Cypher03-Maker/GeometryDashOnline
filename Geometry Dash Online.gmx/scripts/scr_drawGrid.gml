///scr_drawGrid(colour, alpha)
var colour, alpha;

colour = argument0;
alpha = argument1;

draw_set_alpha(alpha)
draw_set_colour(colour)

for (var i = 0; i <= room_height; i += sprite_get_height(sprBlocks) * 1.17)
{
    draw_line(0, i, room_width, i)
}

for (var i = 0; i <= room_width; i += sprite_get_width(sprBlocks) * 1.17)
{
    draw_line(i, 0, i, room_height)
}

/*for(var i=0; i<= max(room_width, room_height); i+=173) {
     draw_line(0, i, room_width, i);
     draw_line(i, 0, i, room_height);
}*/

draw_set_colour(c_white)
draw_set_alpha(1)
