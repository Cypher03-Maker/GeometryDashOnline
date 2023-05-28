#define SmasherAnimScripts

#define scr_SmasherXState
SmasherXState = argument[0]

#define scr_SmasherYState
SmasherYState = argument[0]

#define scr_SmasherScaleXState
SmasherScaleXState = argument[0]

#define scr_SmasherScaleYState
SmasherScaleYState = argument[0]

#define scr_SmasherAngleState
SmasherAngleState = argument[0];

#define scr_SmasherXState02
SmasherXState02 = argument[0]

#define scr_SmasherYState02
SmasherYState02 = argument[0]

#define scr_SmasherScaleXState02
SmasherScaleXState02 = argument[0]

#define scr_SmasherScaleYState02
SmasherScaleYState02 = argument[0]

#define scr_SmasherAngleState02
SmasherAngleState02 = argument[0]

#define scr_SmasherXState03
SmasherXState03 = argument[0]

#define scr_SmasherYState03
SmasherYState03 = argument[0]

#define scr_SmasherScaleXState03
SmasherScaleXState03 = argument[0]

#define scr_SmasherScaleYState03
SmasherScaleYState03 = argument[0]

#define scr_SmasherAngleState03
SmasherAngleState03 = argument[0]

#define scr_SmasherXState04
SmasherXState04 = argument[0]

#define scr_SmasherYState04
SmasherYState04 = argument[0]

#define scr_SmasherScaleXState04
SmasherScaleXState04 = argument[0]

#define scr_SmasherScaleYState04
SmasherScaleYState04 = argument[0]

#define scr_SmasherAngleState04
SmasherAngleState04 = argument[0]

#define scr_SmasherXState05
SmasherXState05 = argument[0]

#define scr_SmasherYState05
SmasherYState05 = argument[0]

#define scr_SmasherScaleXState05
SmasherScaleXState05 = argument[0]

#define scr_SmasherScaleYState05
SmasherScaleYState05 = argument[0]

#define scr_SmasherAngleState05
SmasherAngleState05 = argument[0]

#define scr_smasherDraw
if (gravDir == 1.00) {
    draw_set_blend_mode(bm_add)
    draw_sprite_ext(sprSmasherColGlow_part1, global.SmasherNumber, x + SmasherXState * facing, y + SmasherYState, (facing * SmasherScaleXState), (SmasherScaleYState * gravDir), (facing * SmasherAngleState), global.Col03, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSmasherColGlow_part2, global.SmasherNumber, x + (SmasherXState02 * facing), y + (SmasherYState02), (facing * SmasherScaleXState02), (SmasherScaleYState02 * gravDir), (facing * SmasherAngleState02), global.Col03, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSmasherColGlow_part3, global.SmasherNumber, x + (SmasherXState03 * facing), y + (SmasherYState03), (facing * SmasherScaleXState03), (SmasherScaleYState03 * gravDir), (facing * SmasherAngleState03), global.Col03, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSmasherColGlow_part4, global.SmasherNumber, x + (SmasherXState04 * facing), y + (SmasherYState04), (facing * SmasherScaleXState04), (SmasherScaleYState04 * gravDir), (facing * SmasherAngleState04), global.Col03, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSmasherColGlow_part5, global.SmasherNumber, x + (SmasherXState05 * facing), y + (SmasherYState05), (facing * SmasherScaleXState05), (SmasherScaleYState05 * gravDir), (facing * SmasherAngleState05), global.Col03, (image_alpha) * SpiderAlpha)
    draw_set_blend_mode(bm_normal)
    
    draw_sprite_ext(sprSmasherCol02_part3, global.SmasherNumber, x + SmasherXState03 * facing, y + SmasherYState03, (facing * SmasherScaleXState03), (SmasherScaleYState03 * gravDir), (facing * SmasherAngleState03), global.Col02, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSmasherCol01_part3, global.SmasherNumber, x + SmasherXState03 * facing, y + SmasherYState03, (facing * SmasherScaleXState03), (SmasherScaleYState03 * gravDir), (facing * SmasherAngleState03), global.Col01, (image_alpha) * SpiderAlpha)
    
    draw_sprite_ext(sprSmasherCol02_part5, global.SmasherNumber, x + (SmasherXState05 * facing), y + (SmasherYState05), (facing * SmasherScaleXState05), (SmasherScaleYState05 * gravDir), (facing * SmasherAngleState05), global.Col02, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSmasherCol02_part4, global.SmasherNumber, x + (SmasherXState04 * facing), y + (SmasherYState04), (facing * SmasherScaleXState04), (SmasherScaleYState04 * gravDir), (facing * SmasherAngleState04), global.Col02, (image_alpha) * SpiderAlpha) 
    draw_sprite_ext(sprSmasherCol01_part5, global.SmasherNumber, x + (SmasherXState05 * facing), y + (SmasherYState05), (facing * SmasherScaleXState05), (SmasherScaleYState05 * gravDir), (facing * SmasherAngleState05), global.Col01, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSmasherCol01_part4, global.SmasherNumber, x + (SmasherXState04 * facing), y + (SmasherYState04), (facing * SmasherScaleXState04), (SmasherScaleYState04 * gravDir), (facing * SmasherAngleState04), global.Col01, (image_alpha) * SpiderAlpha) 
    
    draw_sprite_ext(sprSmasherCol02_part1, global.SmasherNumber, x + SmasherXState * facing, y + SmasherYState, (facing * SmasherScaleXState), (SmasherScaleYState * gravDir), (facing * SmasherAngleState), global.Col02, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSmasherCol01_part1, global.SmasherNumber, x + SmasherXState * facing, y + SmasherYState, (facing * SmasherScaleXState), (SmasherScaleYState * gravDir), (facing * SmasherAngleState), global.Col01, (image_alpha) * SpiderAlpha)
    
    draw_sprite_ext(sprSmasherColExtra_part1, global.SmasherExtraNumber, x + SmasherXState * facing, y + SmasherYState, (facing * SmasherScaleXState), (SmasherScaleYState * gravDir), (facing * SmasherAngleState), c_white, global.SmasherExtraAlpha)
    draw_sprite_ext(sprSmasherCol02_part2, global.SmasherNumber, x + SmasherXState02 * facing, y + SmasherYState02, (facing * SmasherScaleXState02), (SmasherScaleYState02 * gravDir), (facing * SmasherAngleState02), global.Col02, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSmasherCol01_part2, global.SmasherNumber, x + SmasherXState02 * facing, y + SmasherYState02, (facing * SmasherScaleXState02), (SmasherScaleYState02 * gravDir), (facing * SmasherAngleState02), global.Col01, (image_alpha) * SpiderAlpha)
} else if (gravDir == -1.00) {
    draw_set_blend_mode(bm_add)
    draw_sprite_ext(sprSmasherColGlow_part1, global.SmasherNumber, x + SmasherXState * facing, y - SmasherYState, (facing * SmasherScaleXState), (SmasherScaleYState * gravDir), (facing * SmasherAngleState) * gravDir, global.Col03, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSmasherColGlow_part2, global.SmasherNumber, x + (SmasherXState02 * facing), y - (SmasherYState02), (facing * SmasherScaleXState02), (SmasherScaleYState02 * gravDir), (facing * SmasherAngleState02) * gravDir, global.Col03, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSmasherColGlow_part3, global.SmasherNumber, x + (SmasherXState03 * facing), y - (SmasherYState03), (facing * SmasherScaleXState03), (SmasherScaleYState03 * gravDir), (facing * SmasherAngleState03) * gravDir, global.Col03, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSmasherColGlow_part4, global.SmasherNumber, x + (SmasherXState04 * facing), y - (SmasherYState04), (facing * SmasherScaleXState04), (SmasherScaleYState04 * gravDir), (facing * SmasherAngleState04) * gravDir, global.Col03, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSmasherColGlow_part5, global.SmasherNumber, x + (SmasherXState05 * facing), y - (SmasherYState05), (facing * SmasherScaleXState05), (SmasherScaleYState05 * gravDir), (facing * SmasherAngleState05) * gravDir, global.Col03, (image_alpha) * SpiderAlpha)
    draw_set_blend_mode(bm_normal)
    
    draw_sprite_ext(sprSmasherCol02_part3, global.SmasherNumber, x + SmasherXState03 * facing, y - SmasherYState03, (facing * SmasherScaleXState03), (SmasherScaleYState03 * gravDir), (facing * SmasherAngleState03) * gravDir, global.Col02, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSmasherCol01_part3, global.SmasherNumber, x + SmasherXState03 * facing, y - SmasherYState03, (facing * SmasherScaleXState03), (SmasherScaleYState03 * gravDir), (facing * SmasherAngleState03) * gravDir, global.Col01, (image_alpha) * SpiderAlpha)
    
    draw_sprite_ext(sprSmasherCol02_part5, global.SmasherNumber, x + (SmasherXState05 * facing), y - (SmasherYState05), (facing * SmasherScaleXState05), (SmasherScaleYState05 * gravDir), (facing * SmasherAngleState05) * gravDir, global.Col02, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSmasherCol02_part4, global.SmasherNumber, x + (SmasherXState04 * facing), y - (SmasherYState04), (facing * SmasherScaleXState04), (SmasherScaleYState04 * gravDir), (facing * SmasherAngleState04) * gravDir, global.Col02, (image_alpha) * SpiderAlpha) 
    draw_sprite_ext(sprSmasherCol01_part5, global.SmasherNumber, x + (SmasherXState05 * facing), y - (SmasherYState05), (facing * SmasherScaleXState05), (SmasherScaleYState05 * gravDir), (facing * SmasherAngleState05) * gravDir, global.Col01, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSmasherCol01_part4, global.SmasherNumber, x + (SmasherXState04 * facing), y - (SmasherYState04), (facing * SmasherScaleXState04), (SmasherScaleYState04 * gravDir), (facing * SmasherAngleState04) * gravDir, global.Col01, (image_alpha) * SpiderAlpha) 
    
    draw_sprite_ext(sprSmasherCol02_part1, global.SmasherNumber, x + SmasherXState * facing, y - SmasherYState, (facing * SmasherScaleXState), (SmasherScaleYState * gravDir), (facing * SmasherAngleState) * gravDir, global.Col02, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSmasherCol01_part1, global.SmasherNumber, x + SmasherXState * facing, y - SmasherYState, (facing * SmasherScaleXState), (SmasherScaleYState * gravDir), (facing * SmasherAngleState) * gravDir, global.Col01, (image_alpha) * SpiderAlpha)
    
    draw_sprite_ext(sprSmasherColExtra_part1, global.SmasherExtraNumber, x + SmasherXState * facing, y - SmasherYState, (facing * SmasherScaleXState), (SmasherScaleYState * gravDir), (facing * SmasherAngleState) * gravDir, c_white, global.SmasherExtraAlpha)
    draw_sprite_ext(sprSmasherCol02_part2, global.SmasherNumber, x + SmasherXState02 * facing, y - SmasherYState02, (facing * SmasherScaleXState02), (SmasherScaleYState02 * gravDir), (facing * SmasherAngleState02) * gravDir, global.Col02, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprSmasherCol01_part2, global.SmasherNumber, x + SmasherXState02 * facing, y - SmasherYState02, (facing * SmasherScaleXState02), (SmasherScaleYState02 * gravDir), (facing * SmasherAngleState02) * gravDir, global.Col01, (image_alpha) * SpiderAlpha)
}
