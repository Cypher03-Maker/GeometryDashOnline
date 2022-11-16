///gsui_draw_sprite_scale9(sprite, left, top, right, bottom, image_blend, image_alpha)

var w, h, sw, sh, top, left, bottom, right, colour, alpha;

w = sprite_get_width(argument0);
h = sprite_get_height(argument0);
sw = w/3;
sh = h/3;
left = argument1;
top = argument2;
right = argument3;
bottom = argument4;
colour = argument5;
alpha = argument6;
mid_w = ((right - left)-(sw*2))/sw;
mid_h = ((bottom - top)-(sh*2))/sh;


// middle
draw_sprite_part_ext(argument0, 0, sw*1, sh*1, sw, sh, left + sw, top + sh, mid_w, mid_h, colour, alpha);
// top mid
draw_sprite_part_ext(argument0, 0, sw*1, 0, sw, sh, left + sw, top, mid_w, 1, colour, alpha);
// left mid
draw_sprite_part_ext(argument0, 0, 0, sh*1, sw, sh, left, top + sh, 1, mid_h, colour, alpha);
// right mid
draw_sprite_part_ext(argument0, 0, sw*2, sh*1, sw, sh, right - sw, top + sh, 1, mid_h, colour, alpha);
// bottom mid
draw_sprite_part_ext(argument0, 0, sw*1, sh*2, sw, sh, left + sw, bottom - sh, mid_w, 1, colour, alpha);

// top left
draw_sprite_part_ext(argument0, 0, 0, 0, sw, sh, left, top, 1, 1, colour, alpha);
// top right
draw_sprite_part_ext(argument0, 0, sw*2, 0, sw, sh, right - sw, top, 1, 1, colour, alpha);
// bottom left
draw_sprite_part_ext(argument0, 0, 0, sh*2, sw, sh, left, bottom - sh, 1, 1, colour, alpha);
// bottom right
draw_sprite_part_ext(argument0, 0, sw*2, sh*2, sw, sh, right - sw, bottom - sh, 1, 1, colour, alpha);
