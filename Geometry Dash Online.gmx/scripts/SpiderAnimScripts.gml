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
    draw_sprite_ext(sprSpiderGlow_part2_3, global.SpiderNumber, x + (SpiderXState04 * image_xscale) * facing, y + (SpiderYState04 * image_yscale), (SpiderScaleXState04 * facing), (SpiderScaleYState04 * gravDir), SpiderAngleState04 * facing, global.Col03, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderGlow_part2_2, global.SpiderNumber, x + (SpiderXState03 * image_xscale) * facing, y + (SpiderYState03 * image_yscale), (SpiderScaleXState03 * facing), (SpiderScaleYState03 * gravDir), SpiderAngleState03 * facing, global.Col03, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderGlow_part4, global.SpiderNumber, x - (SpiderXState05 * image_xscale) * facing, y + (SpiderYState05 * image_yscale), (SpiderScaleXState05 * facing), (SpiderScaleYState05 * gravDir), SpiderAngleState05 * facing, global.Col03, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderGlow_part1, global.SpiderNumber, x + (SpiderXState * image_xscale) * facing, y + (SpiderYState * image_yscale) * gravDir, (SpiderScaleXState * facing), (SpiderScaleYState * gravDir), SpiderAngleState * facing, global.Col03, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderGlow_part3, global.SpiderNumber, x - (SpiderXState06 * image_xscale) * facing, y + (SpiderYState06 * image_yscale), (SpiderScaleXState06 * facing), (SpiderScaleYState06 * gravDir), SpiderAngleState06 * facing, global.Col03, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderGlow_part2, global.SpiderNumber, x - (SpiderXState02 * image_xscale) * facing, y + (SpiderYState02 * image_yscale), (SpiderScaleXState02 * facing), (SpiderScaleYState02 * gravDir), SpiderAngleState02 * facing, global.Col03, (image_alpha) * SpiderAlpha)
    draw_set_blend_mode(bm_normal)
    
    draw_sprite_ext(sprSpiderCol02_part2_3, global.SpiderNumber, x + (SpiderXState04 * image_xscale) * facing, y + (SpiderYState04 * image_yscale), (SpiderScaleXState04 * facing), (SpiderScaleYState04 * gravDir), SpiderAngleState04 * facing, global.Col02, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderCol01_part2_3, global.SpiderNumber, x + (SpiderXState04 * image_xscale) * facing, y + (SpiderYState04 * image_yscale), (SpiderScaleXState04 * facing), (SpiderScaleYState04 * gravDir), SpiderAngleState04 * facing, global.Col01, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderCol02_part2_2, global.SpiderNumber, x + (SpiderXState03 * image_xscale) * facing, y + (SpiderYState03 * image_yscale), (SpiderScaleXState03 * facing), (SpiderScaleYState03 * gravDir), SpiderAngleState03 * facing, global.Col02, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderCol01_part2_2, global.SpiderNumber, x + (SpiderXState03 * image_xscale) * facing, y + (SpiderYState03 * image_yscale), (SpiderScaleXState03 * facing), (SpiderScaleYState03 * gravDir), SpiderAngleState03 * facing, global.Col01, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderCol01_part4, global.SpiderNumber, x - (SpiderXState05 * image_xscale) * facing, y + (SpiderYState05 * image_yscale), (SpiderScaleXState05 * facing), (SpiderScaleYState05 * gravDir), SpiderAngleState05 * facing, global.Col01, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderCol02_part1, global.SpiderNumber, x + (SpiderXState * image_xscale) * facing, y + (SpiderYState * image_yscale) * gravDir, (SpiderScaleXState * facing), (SpiderScaleYState * gravDir), SpiderAngleState * facing, global.Col02, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderCol01_part1, global.SpiderNumber, x + (SpiderXState * image_xscale) * facing, y + (SpiderYState * image_yscale) * gravDir, (SpiderScaleXState * facing), (SpiderScaleYState * gravDir), SpiderAngleState * facing, global.Col01, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderCol02_part3, global.SpiderNumber, x - (SpiderXState06 * image_xscale) * facing, y + (SpiderYState06 * image_yscale), (SpiderScaleXState06 * facing), (SpiderScaleYState06 * gravDir), SpiderAngleState06 * facing, global.Col02, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderCol01_part3, global.SpiderNumber, x - (SpiderXState06 * image_xscale) * facing, y + (SpiderYState06 * image_yscale), (SpiderScaleXState06 * facing), (SpiderScaleYState06 * gravDir), SpiderAngleState06 * facing, global.Col01, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderColExtra, global.SpiderExtraNumber, x + (SpiderXState * image_xscale) * facing, y + (SpiderYState * image_yscale) * gravDir, (SpiderScaleXState * facing), (SpiderScaleYState * gravDir), SpiderAngleState * facing, c_white, global.SpiderExtraAlpha * (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderCol02_part2, global.SpiderNumber, x - (SpiderXState02 * image_xscale) * facing, y + (SpiderYState02 * image_yscale), (SpiderScaleXState02 * facing), (SpiderScaleYState02 * gravDir), SpiderAngleState02 * facing, global.Col02, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderCol01_part2, global.SpiderNumber, x - (SpiderXState02 * image_xscale) * facing, y + (SpiderYState02 * image_yscale), (SpiderScaleXState02 * facing), (SpiderScaleYState02 * gravDir), SpiderAngleState02 * facing, global.Col01, (image_alpha) * SpiderAlpha)
} else if (gravDir == -1.00) {
    draw_set_blend_mode(bm_add)
    draw_sprite_ext(sprSpiderGlow_part2_3, global.SpiderNumber, x + (SpiderXState04 * image_xscale) * facing, y - (SpiderYState04 * image_yscale), (SpiderScaleXState04 * facing), (SpiderScaleYState04 * gravDir), -SpiderAngleState04 * facing, global.Col03, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderGlow_part2_2, global.SpiderNumber, x + (SpiderXState03 * image_xscale) * facing, y - (SpiderYState03 * image_yscale), (SpiderScaleXState03 * facing), (SpiderScaleYState03 * gravDir), -SpiderAngleState03 * facing, global.Col03, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderGlow_part4, global.SpiderNumber, x - (SpiderXState05 * image_xscale) * facing, y - (SpiderYState05 * image_yscale), (SpiderScaleXState05 * facing), (SpiderScaleYState05 * gravDir), -SpiderAngleState05 * facing, global.Col03, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderGlow_part1, global.SpiderNumber, x + (SpiderXState * image_xscale) * facing, y + (SpiderYState * image_yscale) * gravDir, (SpiderScaleXState * facing), (SpiderScaleYState * gravDir), -SpiderAngleState * facing, global.Col03, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderGlow_part3, global.SpiderNumber, x - (SpiderXState06 * image_xscale) * facing, y - (SpiderYState06 * image_yscale), (SpiderScaleXState06 * facing), (SpiderScaleYState06 * gravDir), -SpiderAngleState06 * facing, global.Col03, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderGlow_part2, global.SpiderNumber, x - (SpiderXState02 * image_xscale) * facing, y - (SpiderYState02 * image_yscale), (SpiderScaleXState02 * facing), (SpiderScaleYState02 * gravDir), -SpiderAngleState02 * facing, global.Col03, (image_alpha) * SpiderAlpha)
    draw_set_blend_mode(bm_normal)
    
    draw_sprite_ext(sprSpiderCol02_part2_3, global.SpiderNumber, x + (SpiderXState04 * image_xscale) * facing, y - (SpiderYState04 * image_yscale), (SpiderScaleXState04 * facing), (SpiderScaleYState04 * gravDir), -SpiderAngleState04 * facing, global.Col02, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderCol01_part2_3, global.SpiderNumber, x + (SpiderXState04 * image_xscale) * facing, y - (SpiderYState04 * image_yscale), (SpiderScaleXState04 * facing), (SpiderScaleYState04 * gravDir), -SpiderAngleState04 * facing, global.Col01, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderCol02_part2_2, global.SpiderNumber, x + (SpiderXState03 * image_xscale) * facing, y - (SpiderYState03 * image_yscale), (SpiderScaleXState03 * facing), (SpiderScaleYState03 * gravDir), -SpiderAngleState03 * facing, global.Col02, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderCol01_part2_2, global.SpiderNumber, x + (SpiderXState03 * image_xscale) * facing, y - (SpiderYState03 * image_xscale), (SpiderScaleXState03 * facing), (SpiderScaleYState03 * gravDir), -SpiderAngleState03 * facing, global.Col01, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderCol01_part4, global.SpiderNumber, x - (SpiderXState05 * image_xscale) * facing, y - (SpiderYState05 * image_yscale), (SpiderScaleXState05 * facing), (SpiderScaleYState05 * gravDir), -SpiderAngleState05 * facing, global.Col01, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderCol02_part1, global.SpiderNumber, x + (SpiderXState * image_xscale) * facing, y + (SpiderYState * image_yscale) * gravDir, (SpiderScaleXState * facing), (SpiderScaleYState * gravDir), -SpiderAngleState * facing, global.Col02, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderCol01_part1, global.SpiderNumber, x + (SpiderXState * image_xscale) * facing, y + (SpiderYState * image_yscale) * gravDir, (SpiderScaleXState * facing), (SpiderScaleYState * gravDir), -SpiderAngleState * facing, global.Col01, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderCol02_part3, global.SpiderNumber, x - (SpiderXState06 * image_xscale) * facing, y - (SpiderYState06 * image_yscale), (SpiderScaleXState06 * facing), (SpiderScaleYState06 * gravDir), -SpiderAngleState06 * facing, global.Col02, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderCol01_part3, global.SpiderNumber, x - (SpiderXState06 * image_xscale) * facing, y - (SpiderYState06 * image_yscale), (SpiderScaleXState06 * facing), (SpiderScaleYState06 * gravDir), -SpiderAngleState06 * facing, global.Col01, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderColExtra, global.SpiderExtraNumber, x + (SpiderXState * image_xscale) * facing, y + (SpiderYState * image_yscale) * gravDir, (SpiderScaleXState * facing), (SpiderScaleYState * gravDir), -SpiderAngleState * facing, c_white, global.SpiderExtraAlpha * (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderCol02_part2, global.SpiderNumber, x - (SpiderXState02 * image_xscale) * facing, y - (SpiderYState02 * image_yscale), (SpiderScaleXState02 * facing), (SpiderScaleYState02 * gravDir), -SpiderAngleState02 * facing, global.Col02, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSpiderCol01_part2, global.SpiderNumber, x - (SpiderXState02 * image_xscale) * facing, y - (SpiderYState02 * image_yscale), (SpiderScaleXState02 * facing), (SpiderScaleYState02 * gravDir), -SpiderAngleState02 * facing, global.Col01, (image_alpha) * SpiderAlpha)
}