#define SpiderAnimScripts


#define scr_SpiderXState
SpiderXState = argument0

#define scr_SpiderYState
SpiderYState = argument0

#define scr_SpiderScaleXState
SpiderScaleXState = argument0

#define scr_SpiderScaleYState
SpiderScaleYState = argument0

#define scr_SpiderAngleState
SpiderAngleState = argument0;

#define scr_SpiderXState02
SpiderXState02 = argument0;

#define scr_SpiderYState02
SpiderYState02 = argument0;

#define scr_SpiderScaleXState02
SpiderScaleXState02 = argument0

#define scr_SpiderScaleYState02
SpiderScaleYState02 = argument0;

#define scr_SpiderAngleState02
SpiderAngleState02 = argument0;

#define scr_SpiderXState03
SpiderXState03 = argument0;

#define scr_SpiderYState03
SpiderYState03 = argument0;

#define scr_SpiderScaleXState03
SpiderScaleXState03 = argument0;

#define scr_SpiderScaleYState03
SpiderScaleYState03 = argument0;

#define scr_SpiderAngleState03
SpiderAngleState03 = argument0;

#define scr_SpiderXState04
SpiderXState04 = argument0;

#define scr_SpiderYState04
SpiderYState04 = argument0;

#define scr_SpiderScaleXState04
SpiderScaleXState04 = argument0;

#define scr_SpiderScaleYState04
SpiderScaleYState04 = argument0;

#define scr_SpiderAngleState04
SpiderAngleState04 = argument0;

#define scr_SpiderXState05
SpiderXState05 = argument0;

#define scr_SpiderYState05
SpiderYState05 = argument0

#define scr_SpiderScaleXState05
SpiderScaleXState05 = argument0

#define scr_SpiderScaleYState05
SpiderScaleYState05 = argument0

#define scr_SpiderAngleState05
SpiderAngleState05 = argument0;

#define scr_SpiderXState06
SpiderXState06 = argument0

#define scr_SpiderYState06
SpiderYState06 = argument0

#define scr_SpiderScaleXState06
SpiderScaleXState06 = argument0

#define scr_SpiderScaleYState06
SpiderScaleYState06 = argument0

#define scr_SpiderAngleState06
SpiderAngleState06 = argument0;
#define scr_spiderDraw
if (gravDir == 1.00) {
    draw_set_blend_mode(bm_add)
    draw_sprite_ext(sprSpiderGlow_part2_3, global.SpiderNumber, x + (17 * facing) + (obj_SpiderAnimControler.SpiderXState04), y + (11) + (obj_SpiderAnimControler.SpiderYState04), (facing * obj_SpiderAnimControler.SpiderScaleXState04), (obj_SpiderAnimControler.SpiderScaleYState04 * gravDir), (facing * obj_SpiderAnimControler.SpiderAngleState04), global.Col03, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderGlow_part2_2, global.SpiderNumber, x + (33 * facing) + (obj_SpiderAnimControler.SpiderXState03), y + (11) + (obj_SpiderAnimControler.SpiderYState03), (facing * obj_SpiderAnimControler.SpiderScaleXState03), (obj_SpiderAnimControler.SpiderScaleYState03 * gravDir), (facing * obj_SpiderAnimControler.SpiderAngleState03), global.Col03, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderGlow_part4, global.SpiderNumber, x - (10 * facing) + (obj_SpiderAnimControler.SpiderXState05), y + (6) + (obj_SpiderAnimControler.SpiderYState05), (facing * obj_SpiderAnimControler.SpiderScaleXState05), (obj_SpiderAnimControler.SpiderScaleYState05 * gravDir), (facing * obj_SpiderAnimControler.SpiderAngleState05), global.Col03, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderGlow_part1, global.SpiderNumber, x + (obj_SpiderAnimControler.SpiderXState), y + (obj_SpiderAnimControler.SpiderYState), (facing * obj_SpiderAnimControler.SpiderScaleXState), (obj_SpiderAnimControler.SpiderScaleYState * gravDir), (facing * obj_SpiderAnimControler.SpiderAngleState), global.Col03, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderGlow_part3, global.SpiderNumber, x - (17 * facing) + (obj_SpiderAnimControler.SpiderXState06), y + (15) + (obj_SpiderAnimControler.SpiderYState06), (facing * obj_SpiderAnimControler.SpiderScaleXState06), (obj_SpiderAnimControler.SpiderScaleYState06 * gravDir), (facing * obj_SpiderAnimControler.SpiderAngleState06), global.Col03, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderGlow_part2, global.SpiderNumber, x + (obj_SpiderAnimControler.SpiderXState02), y + (11) + (obj_SpiderAnimControler.SpiderYState02), (facing * obj_SpiderAnimControler.SpiderScaleXState02), (obj_SpiderAnimControler.SpiderScaleYState02 * gravDir), (facing * obj_SpiderAnimControler.SpiderAngleState02), global.Col03, (image_alpha) * SpiderAlpha)
    draw_set_blend_mode(bm_normal)
    
    draw_sprite_ext(sprSpiderCol02_part2_3, global.SpiderNumber, x + (17 * facing) + (obj_SpiderAnimControler.SpiderXState04), y + (11) + (obj_SpiderAnimControler.SpiderYState04), (facing * obj_SpiderAnimControler.SpiderScaleXState04), (obj_SpiderAnimControler.SpiderScaleYState04 * gravDir), (facing * obj_SpiderAnimControler.SpiderAngleState04), global.Col02, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderCol01_part2_3, global.SpiderNumber, x + (17 * facing) + (obj_SpiderAnimControler.SpiderXState04), y + (11) + (obj_SpiderAnimControler.SpiderYState04), (facing * obj_SpiderAnimControler.SpiderScaleXState04), (obj_SpiderAnimControler.SpiderScaleYState04 * gravDir), (facing * obj_SpiderAnimControler.SpiderAngleState04), global.Col01, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderCol02_part2_2, global.SpiderNumber, x + (33 * facing) + (obj_SpiderAnimControler.SpiderXState03), y + (11) + (obj_SpiderAnimControler.SpiderYState03), (facing * obj_SpiderAnimControler.SpiderScaleXState03), (obj_SpiderAnimControler.SpiderScaleYState03 * gravDir), (facing * obj_SpiderAnimControler.SpiderAngleState03), global.Col02, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderCol01_part2_2, global.SpiderNumber, x + (33 * facing) + (obj_SpiderAnimControler.SpiderXState03), y + (11) + (obj_SpiderAnimControler.SpiderYState03), (facing * obj_SpiderAnimControler.SpiderScaleXState03), (obj_SpiderAnimControler.SpiderScaleYState03 * gravDir), (facing * obj_SpiderAnimControler.SpiderAngleState03), global.Col01, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderCol01_part4, global.SpiderNumber, x - (10 * facing) + (obj_SpiderAnimControler.SpiderXState05), y + (6) + (obj_SpiderAnimControler.SpiderYState05), (facing * obj_SpiderAnimControler.SpiderScaleXState05), (obj_SpiderAnimControler.SpiderScaleYState05 * gravDir), (facing * obj_SpiderAnimControler.SpiderAngleState05), global.Col01, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderCol02_part1, global.SpiderNumber, x + (obj_SpiderAnimControler.SpiderXState), y + (obj_SpiderAnimControler.SpiderYState), (facing * obj_SpiderAnimControler.SpiderScaleXState), (obj_SpiderAnimControler.SpiderScaleYState * gravDir), (facing * obj_SpiderAnimControler.SpiderAngleState), global.Col02, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderCol01_part1, global.SpiderNumber, x + (obj_SpiderAnimControler.SpiderXState), y + (obj_SpiderAnimControler.SpiderYState), (facing * obj_SpiderAnimControler.SpiderScaleXState), (obj_SpiderAnimControler.SpiderScaleYState * gravDir), (facing * obj_SpiderAnimControler.SpiderAngleState), global.Col01, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderCol02_part3, global.SpiderNumber, x - (17 * facing) + (obj_SpiderAnimControler.SpiderXState06), y + (15) + (obj_SpiderAnimControler.SpiderYState06), (facing * obj_SpiderAnimControler.SpiderScaleXState06), (obj_SpiderAnimControler.SpiderScaleYState06 * gravDir), (facing * obj_SpiderAnimControler.SpiderAngleState06), global.Col02, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderCol01_part3, global.SpiderNumber, x - (17 * facing) + (obj_SpiderAnimControler.SpiderXState06), y + (15) + (obj_SpiderAnimControler.SpiderYState06), (facing * obj_SpiderAnimControler.SpiderScaleXState06), (obj_SpiderAnimControler.SpiderScaleYState06 * gravDir), (facing * obj_SpiderAnimControler.SpiderAngleState06), global.Col01, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderColExtra, global.SpiderExtraNumber, x + (obj_SpiderAnimControler.SpiderXState), y + (obj_SpiderAnimControler.SpiderYState), (facing * obj_SpiderAnimControler.SpiderScaleXState), (obj_SpiderAnimControler.SpiderScaleYState * gravDir), (facing * obj_SpiderAnimControler.SpiderAngleState), c_white, global.SpiderExtraAlpha * (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderCol02_part2, global.SpiderNumber, x + (obj_SpiderAnimControler.SpiderXState02), y + (11) + (obj_SpiderAnimControler.SpiderYState02), (facing * obj_SpiderAnimControler.SpiderScaleXState02), (obj_SpiderAnimControler.SpiderScaleYState02 * gravDir), (facing * obj_SpiderAnimControler.SpiderAngleState02), global.Col02, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderCol01_part2, global.SpiderNumber, x + (obj_SpiderAnimControler.SpiderXState02), y + (11) + (obj_SpiderAnimControler.SpiderYState02), (facing * obj_SpiderAnimControler.SpiderScaleXState02), (obj_SpiderAnimControler.SpiderScaleYState02 * gravDir), (facing * obj_SpiderAnimControler.SpiderAngleState02), global.Col01, (image_alpha) * SpiderAlpha)
} else if (gravDir == -1.00) {
    draw_set_blend_mode(bm_add)
    draw_sprite_ext(sprSpiderGlow_part2_3, global.SpiderNumber, x + (17 * facing) + (obj_SpiderAnimControler.SpiderXState04), y - (11) - (obj_SpiderAnimControler.SpiderYState04), (facing * obj_SpiderAnimControler.SpiderScaleXState04), (obj_SpiderAnimControler.SpiderScaleYState04 * gravDir), (facing * obj_SpiderAnimControler.SpiderAngleState04 * gravDir), global.Col03, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderGlow_part2_2, global.SpiderNumber, x + (33 * facing) + (obj_SpiderAnimControler.SpiderXState03), y - (11) - (obj_SpiderAnimControler.SpiderYState03), (facing * obj_SpiderAnimControler.SpiderScaleXState03), (obj_SpiderAnimControler.SpiderScaleYState03 * gravDir), (facing * obj_SpiderAnimControler.SpiderAngleState03 * gravDir), global.Col03, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderGlow_part4, global.SpiderNumber, x - (10 * facing) + (obj_SpiderAnimControler.SpiderXState05), y - (6) - (obj_SpiderAnimControler.SpiderYState05), (facing * obj_SpiderAnimControler.SpiderScaleXState05), (obj_SpiderAnimControler.SpiderScaleYState05 * gravDir), (facing * obj_SpiderAnimControler.SpiderAngleState05 * gravDir), global.Col03, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderGlow_part1, global.SpiderNumber, x + (obj_SpiderAnimControler.SpiderXState), y - (obj_SpiderAnimControler.SpiderYState), (facing * obj_SpiderAnimControler.SpiderScaleXState), (obj_SpiderAnimControler.SpiderScaleYState * gravDir), (facing * obj_SpiderAnimControler.SpiderAngleState), global.Col03, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderGlow_part3, global.SpiderNumber, x - (17 * facing) + (obj_SpiderAnimControler.SpiderXState06), y - (15) - (obj_SpiderAnimControler.SpiderYState06), (facing * obj_SpiderAnimControler.SpiderScaleXState06), (obj_SpiderAnimControler.SpiderScaleYState06 * gravDir), (facing * obj_SpiderAnimControler.SpiderAngleState06 * gravDir), global.Col03, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderGlow_part2, global.SpiderNumber, x + (obj_SpiderAnimControler.SpiderXState02), y - (11) - (obj_SpiderAnimControler.SpiderYState02), (facing * obj_SpiderAnimControler.SpiderScaleXState02), (obj_SpiderAnimControler.SpiderScaleYState02 * gravDir), (facing * obj_SpiderAnimControler.SpiderAngleState02 * gravDir), global.Col03, (image_alpha) * SpiderAlpha)
    draw_set_blend_mode(bm_normal)
    
    draw_sprite_ext(sprSpiderCol02_part2_3, global.SpiderNumber, x + (17 * facing) + (obj_SpiderAnimControler.SpiderXState04), y - (11) - (obj_SpiderAnimControler.SpiderYState04), (facing * obj_SpiderAnimControler.SpiderScaleXState04), (obj_SpiderAnimControler.SpiderScaleYState04 * gravDir), (facing * obj_SpiderAnimControler.SpiderAngleState04 * gravDir), global.Col02, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderCol01_part2_3, global.SpiderNumber, x + (17 * facing) + (obj_SpiderAnimControler.SpiderXState04), y - (11) - (obj_SpiderAnimControler.SpiderYState04), (facing * obj_SpiderAnimControler.SpiderScaleXState04), (obj_SpiderAnimControler.SpiderScaleYState04 * gravDir), (facing * obj_SpiderAnimControler.SpiderAngleState04 * gravDir), global.Col01, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderCol02_part2_2, global.SpiderNumber, x + (33 * facing) + (obj_SpiderAnimControler.SpiderXState03), y - (11) - (obj_SpiderAnimControler.SpiderYState03), (facing * obj_SpiderAnimControler.SpiderScaleXState03), (obj_SpiderAnimControler.SpiderScaleYState03 * gravDir), (facing * obj_SpiderAnimControler.SpiderAngleState03 * gravDir), global.Col02, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderCol01_part2_2, global.SpiderNumber, x + (33 * facing) + (obj_SpiderAnimControler.SpiderXState03), y - (11) - (obj_SpiderAnimControler.SpiderYState03), (facing * obj_SpiderAnimControler.SpiderScaleXState03), (obj_SpiderAnimControler.SpiderScaleYState03 * gravDir), (facing * obj_SpiderAnimControler.SpiderAngleState03 * gravDir), global.Col01, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderCol01_part4, global.SpiderNumber, x - (10 * facing) + (obj_SpiderAnimControler.SpiderXState05), y - (6) - (obj_SpiderAnimControler.SpiderYState05), (facing * obj_SpiderAnimControler.SpiderScaleXState05), (obj_SpiderAnimControler.SpiderScaleYState05 * gravDir), (facing * obj_SpiderAnimControler.SpiderAngleState05 * gravDir), global.Col01, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderCol02_part1, global.SpiderNumber, x + (obj_SpiderAnimControler.SpiderXState), y - (obj_SpiderAnimControler.SpiderYState), (facing * obj_SpiderAnimControler.SpiderScaleXState), (obj_SpiderAnimControler.SpiderScaleYState * gravDir), (facing * obj_SpiderAnimControler.SpiderAngleState), global.Col02, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderCol01_part1, global.SpiderNumber, x + (obj_SpiderAnimControler.SpiderXState), y - (obj_SpiderAnimControler.SpiderYState), (facing * obj_SpiderAnimControler.SpiderScaleXState), (obj_SpiderAnimControler.SpiderScaleYState * gravDir), (facing * obj_SpiderAnimControler.SpiderAngleState), global.Col01, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderCol02_part3, global.SpiderNumber, x - (17 * facing) + (obj_SpiderAnimControler.SpiderXState06), y - (15) - (obj_SpiderAnimControler.SpiderYState06), (facing * obj_SpiderAnimControler.SpiderScaleXState06), (obj_SpiderAnimControler.SpiderScaleYState06 * gravDir), (facing * obj_SpiderAnimControler.SpiderAngleState06 * gravDir), global.Col02, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderCol01_part3, global.SpiderNumber, x - (17 * facing) + (obj_SpiderAnimControler.SpiderXState06), y - (15) - (obj_SpiderAnimControler.SpiderYState06), (facing * obj_SpiderAnimControler.SpiderScaleXState06), (obj_SpiderAnimControler.SpiderScaleYState06 * gravDir), (facing * obj_SpiderAnimControler.SpiderAngleState06 * gravDir), global.Col01, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderColExtra, global.SpiderExtraNumber, x + (obj_SpiderAnimControler.SpiderXState), y - (obj_SpiderAnimControler.SpiderYState), (facing * obj_SpiderAnimControler.SpiderScaleXState), (obj_SpiderAnimControler.SpiderScaleYState * gravDir), (facing * obj_SpiderAnimControler.SpiderAngleState * gravDir), c_white, global.SpiderExtraAlpha * (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderCol02_part2, global.SpiderNumber, x + (obj_SpiderAnimControler.SpiderXState02), y - (11) - (obj_SpiderAnimControler.SpiderYState02), (facing * obj_SpiderAnimControler.SpiderScaleXState02), (obj_SpiderAnimControler.SpiderScaleYState02 * gravDir), (facing * obj_SpiderAnimControler.SpiderAngleState02 * gravDir), global.Col02, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderCol01_part2, global.SpiderNumber, x + (obj_SpiderAnimControler.SpiderXState02), y - (11) - (obj_SpiderAnimControler.SpiderYState02), (facing * obj_SpiderAnimControler.SpiderScaleXState02), (obj_SpiderAnimControler.SpiderScaleYState02 * gravDir), (facing * obj_SpiderAnimControler.SpiderAngleState02 * gravDir), global.Col01, (image_alpha) * SpiderAlpha)
}
