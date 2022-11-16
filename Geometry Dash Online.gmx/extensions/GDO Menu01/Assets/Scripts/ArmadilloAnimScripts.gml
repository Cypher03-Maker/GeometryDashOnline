#define ArmadilloAnimScripts

#define scr_ArmadilloXState
ArmadilloXState = argument[0]

#define scr_ArmadilloYState
ArmadilloYState = argument[0]

#define scr_ArmadilloScaleXState
ArmadilloScaleXState = argument[0]

#define scr_ArmadilloScaleYState
ArmadilloScaleYState = argument[0]

#define scr_ArmadilloAngleState
ArmadilloAngleState = argument[0]

#define scr_ArmadilloXState02
ArmadilloXState02 = argument[0]

#define scr_ArmadilloYState02
ArmadilloYState02 = argument[0]

#define scr_ArmadilloScaleXState02
ArmadilloScaleXState02 = argument[0]

#define scr_ArmadilloScaleYState02
ArmadilloScaleYState02 = argument[0]

#define scr_ArmadilloAngleState02
ArmadilloAngleState02 = argument[0]

#define scr_ArmadilloXState03
ArmadilloXState03 = argument[0]

#define scr_ArmadilloYState03
ArmadilloYState03 = argument[0]

#define scr_ArmadilloScaleXState03
ArmadilloScaleXState03 = argument[0]

#define scr_ArmadilloScaleYState03
ArmadilloScaleYState03 = argument[0]

#define scr_ArmadilloAngleState03
ArmadilloAngleState03 = argument[0]

#define scr_ArmadilloXState04
ArmadilloXState04 = argument[0]

#define scr_ArmadilloYState04
ArmadilloYState04 = argument[0]

#define scr_ArmadilloScaleXState04
ArmadilloScaleXState04 = argument[0]

#define scr_ArmadilloScaleYState04
ArmadilloScaleYState04 = argument[0]

#define scr_ArmadilloAngleState04
ArmadilloAngleState04 = argument[0]

#define scr_ArmadilloXState05
ArmadilloXState05 = argument[0]

#define scr_ArmadilloYState05
ArmadilloYState05 = argument[0]

#define scr_ArmadilloScaleXState05
ArmadilloScaleXState05 = argument[0]

#define scr_ArmadilloScaleYState05
ArmadilloScaleYState05 = argument[0]

#define scr_ArmadilloAngleState05
ArmadilloAngleState05 = argument[0]

#define scr_ArmadilloXState06
ArmadilloXState06 = argument[0]

#define scr_ArmadilloYState06
ArmadilloYState06 = argument[0]

#define scr_ArmadilloScaleXState06
ArmadilloScaleXState06 = argument[0]

#define scr_ArmadilloScaleYState06
ArmadilloScaleYState06 = argument[0]

#define scr_ArmadilloAngleState06
ArmadilloAngleState06 = argument[0]

#define scr_armadilloDraw
if (gravDir == 1.00) {
    draw_set_blend_mode(bm_add)
    draw_sprite_ext(sprArmadilloColGlow_part1, global.ArmadilloNumber, x + obj_ArmadilloAnimControler.ArmadilloXState * facing, y + obj_ArmadilloAnimControler.ArmadilloYState, (facing * obj_ArmadilloAnimControler.ArmadilloScaleXState), (obj_ArmadilloAnimControler.ArmadilloScaleYState * gravDir), (facing * obj_ArmadilloAnimControler.ArmadilloAngleState), global.Col03, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprArmadilloColGlow_part2, global.ArmadilloNumber, x + (32 * facing) + (obj_ArmadilloAnimControler.ArmadilloXState02 * facing), y + 16 + (obj_ArmadilloAnimControler.ArmadilloYState02), (facing * obj_ArmadilloAnimControler.ArmadilloScaleXState02), (obj_ArmadilloAnimControler.ArmadilloScaleYState02 * gravDir), (facing * obj_ArmadilloAnimControler.ArmadilloAngleState02), global.Col03, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprArmadilloColGlow_part3, global.ArmadilloNumber, x + (16 * facing) + (obj_ArmadilloAnimControler.ArmadilloXState03 * facing), y + 25 + (obj_ArmadilloAnimControler.ArmadilloYState03), (facing * obj_ArmadilloAnimControler.ArmadilloScaleXState03), (obj_ArmadilloAnimControler.ArmadilloScaleYState03 * gravDir), (facing * obj_ArmadilloAnimControler.ArmadilloAngleState03), global.Col03, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprArmadilloColGlow_part4, global.ArmadilloNumber, x + (3 * facing) + (obj_ArmadilloAnimControler.ArmadilloXState04 * facing), y + 25 + (obj_ArmadilloAnimControler.ArmadilloYState04), (facing * obj_ArmadilloAnimControler.ArmadilloScaleXState04), (obj_ArmadilloAnimControler.ArmadilloScaleYState04 * gravDir), (facing * obj_ArmadilloAnimControler.ArmadilloAngleState04), global.Col03, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprArmadilloColGlow_part5, global.ArmadilloNumber, x - (12 * facing) + (obj_ArmadilloAnimControler.ArmadilloXState05 * facing), y + 25 + (obj_ArmadilloAnimControler.ArmadilloYState05), (facing * obj_ArmadilloAnimControler.ArmadilloScaleXState05), (obj_ArmadilloAnimControler.ArmadilloScaleYState05 * gravDir), (facing * obj_ArmadilloAnimControler.ArmadilloAngleState05), global.Col03, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprArmadilloColGlow_part6, global.ArmadilloNumber, x - (24 * facing) + (obj_ArmadilloAnimControler.ArmadilloXState06 * facing), y + 25 + (obj_ArmadilloAnimControler.ArmadilloYState06), (facing * obj_ArmadilloAnimControler.ArmadilloScaleXState06), (obj_ArmadilloAnimControler.ArmadilloScaleYState06 * gravDir), (facing * obj_ArmadilloAnimControler.ArmadilloAngleState06), global.Col03, (image_alpha) * SpiderAlpha)
    draw_set_blend_mode(bm_normal)
    
    draw_sprite_ext(sprArmadilloCol01_part6, global.ArmadilloNumber, x - (24 * facing) + (obj_ArmadilloAnimControler.ArmadilloXState06 * facing), y + 25 + (obj_ArmadilloAnimControler.ArmadilloYState06), (facing * obj_ArmadilloAnimControler.ArmadilloScaleXState06), (obj_ArmadilloAnimControler.ArmadilloScaleYState06 * gravDir), (facing * obj_ArmadilloAnimControler.ArmadilloAngleState06), global.Col01, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprArmadilloCol01_part5, global.ArmadilloNumber, x - (12 * facing) + (obj_ArmadilloAnimControler.ArmadilloXState05 * facing), y + 25 + (obj_ArmadilloAnimControler.ArmadilloYState05), (facing * obj_ArmadilloAnimControler.ArmadilloScaleXState05), (obj_ArmadilloAnimControler.ArmadilloScaleYState05 * gravDir), (facing * obj_ArmadilloAnimControler.ArmadilloAngleState05), global.Col01, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprArmadilloCol01_part4, global.ArmadilloNumber, x + (3 * facing) + (obj_ArmadilloAnimControler.ArmadilloXState04 * facing), y + 25 + (obj_ArmadilloAnimControler.ArmadilloYState04), (facing * obj_ArmadilloAnimControler.ArmadilloScaleXState04), (obj_ArmadilloAnimControler.ArmadilloScaleYState04 * gravDir), (facing * obj_ArmadilloAnimControler.ArmadilloAngleState04), global.Col01, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprArmadilloCol01_part3, global.ArmadilloNumber, x + (16 * facing) + (obj_ArmadilloAnimControler.ArmadilloXState03 * facing), y + 25 + (obj_ArmadilloAnimControler.ArmadilloYState03), (facing * obj_ArmadilloAnimControler.ArmadilloScaleXState03), (obj_ArmadilloAnimControler.ArmadilloScaleYState03 * gravDir), (facing * obj_ArmadilloAnimControler.ArmadilloAngleState03), global.Col01, (image_alpha) * SpiderAlpha)
    
    draw_sprite_ext(sprArmadilloCol02_part1, global.ArmadilloNumber, x + obj_ArmadilloAnimControler.ArmadilloXState * facing, y + obj_ArmadilloAnimControler.ArmadilloYState, (facing * obj_ArmadilloAnimControler.ArmadilloScaleXState), (obj_ArmadilloAnimControler.ArmadilloScaleYState * gravDir), (facing * obj_ArmadilloAnimControler.ArmadilloAngleState), global.Col02, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprArmadilloCol01_part1, global.ArmadilloNumber, x + obj_ArmadilloAnimControler.ArmadilloXState * facing, y + obj_ArmadilloAnimControler.ArmadilloYState, (facing * obj_ArmadilloAnimControler.ArmadilloScaleXState), (obj_ArmadilloAnimControler.ArmadilloScaleYState * gravDir), (facing * obj_ArmadilloAnimControler.ArmadilloAngleState), global.Col01, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprArmadilloCol02_part2, global.ArmadilloNumber, x + (32 * facing) + (obj_ArmadilloAnimControler.ArmadilloXState02 * facing), y + 16 + (obj_ArmadilloAnimControler.ArmadilloYState02), (facing * obj_ArmadilloAnimControler.ArmadilloScaleXState02), (obj_ArmadilloAnimControler.ArmadilloScaleYState02 * gravDir), (facing * obj_ArmadilloAnimControler.ArmadilloAngleState02), global.Col02, (image_alpha) * SpiderAlpha)
    
    draw_sprite_ext(sprArmadilloColExtra_part1, global.ArmadilloExtraNumber, x + obj_ArmadilloAnimControler.ArmadilloXState * facing, y + (obj_ArmadilloAnimControler.ArmadilloYState), (facing * obj_ArmadilloAnimControler.ArmadilloScaleXState), (obj_ArmadilloAnimControler.ArmadilloScaleYState * gravDir), (facing * obj_ArmadilloAnimControler.ArmadilloAngleState), c_white, global.ArmadilloExtraAlpha)
    draw_sprite_ext(sprArmadilloCol01_part2, global.ArmadilloNumber, x + (32 * facing) + (obj_ArmadilloAnimControler.ArmadilloXState02 * facing), y + 16 + (obj_ArmadilloAnimControler.ArmadilloYState02), (facing * obj_ArmadilloAnimControler.ArmadilloScaleXState02), (obj_ArmadilloAnimControler.ArmadilloScaleYState02 * gravDir), (facing * obj_ArmadilloAnimControler.ArmadilloAngleState02), global.Col01, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprArmadilloColExtra_part2, global.ArmadilloExtraNumber, x + (32 * facing) + (obj_ArmadilloAnimControler.ArmadilloXState02 * facing), y + 16 + (obj_ArmadilloAnimControler.ArmadilloYState02), (facing * obj_ArmadilloAnimControler.ArmadilloScaleXState02), (obj_ArmadilloAnimControler.ArmadilloScaleYState02 * gravDir), (facing * obj_ArmadilloAnimControler.ArmadilloAngleState02), c_white,  (global.ArmadilloExtraAlpha) * SpiderAlpha)
} else if (gravDir == -1.00) {
    draw_set_blend_mode(bm_add)
    draw_sprite_ext(sprArmadilloColGlow_part1, global.ArmadilloNumber, x + obj_ArmadilloAnimControler.ArmadilloXState * facing, y + obj_ArmadilloAnimControler.ArmadilloYState, (facing * obj_ArmadilloAnimControler.ArmadilloScaleXState), (obj_ArmadilloAnimControler.ArmadilloScaleYState * gravDir), (facing * obj_ArmadilloAnimControler.ArmadilloAngleState), global.Col03, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprArmadilloColGlow_part2, global.ArmadilloNumber, x + (32 * facing) + (obj_ArmadilloAnimControler.ArmadilloXState02 * facing), y - 16 - (obj_ArmadilloAnimControler.ArmadilloYState02), (facing * obj_ArmadilloAnimControler.ArmadilloScaleXState02), (obj_ArmadilloAnimControler.ArmadilloScaleYState02 * gravDir), (facing * obj_ArmadilloAnimControler.ArmadilloAngleState02), global.Col03, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprArmadilloColGlow_part3, global.ArmadilloNumber, x + (16 * facing) + (obj_ArmadilloAnimControler.ArmadilloXState03 * facing), y - 25 - (obj_ArmadilloAnimControler.ArmadilloYState03), (facing * obj_ArmadilloAnimControler.ArmadilloScaleXState03), (obj_ArmadilloAnimControler.ArmadilloScaleYState03 * gravDir), (facing * obj_ArmadilloAnimControler.ArmadilloAngleState03), global.Col03, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprArmadilloColGlow_part4, global.ArmadilloNumber, x + (3 * facing) + (obj_ArmadilloAnimControler.ArmadilloXState04 * facing), y - 25 - (obj_ArmadilloAnimControler.ArmadilloYState04), (facing * obj_ArmadilloAnimControler.ArmadilloScaleXState04), (obj_ArmadilloAnimControler.ArmadilloScaleYState04 * gravDir), (facing * obj_ArmadilloAnimControler.ArmadilloAngleState04), global.Col03, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprArmadilloColGlow_part5, global.ArmadilloNumber, x - (12 * facing) + (obj_ArmadilloAnimControler.ArmadilloXState05 * facing), y - 25 - (obj_ArmadilloAnimControler.ArmadilloYState05), (facing * obj_ArmadilloAnimControler.ArmadilloScaleXState05), (obj_ArmadilloAnimControler.ArmadilloScaleYState05 * gravDir), (facing * obj_ArmadilloAnimControler.ArmadilloAngleState05), global.Col03, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprArmadilloColGlow_part6, global.ArmadilloNumber, x - (24 * facing) + (obj_ArmadilloAnimControler.ArmadilloXState06 * facing), y - 25 - (obj_ArmadilloAnimControler.ArmadilloYState06), (facing * obj_ArmadilloAnimControler.ArmadilloScaleXState06), (obj_ArmadilloAnimControler.ArmadilloScaleYState06 * gravDir), (facing * obj_ArmadilloAnimControler.ArmadilloAngleState06), global.Col03, (image_alpha) * SpiderAlpha)
    draw_set_blend_mode(bm_normal)
    
    draw_sprite_ext(sprArmadilloCol01_part6, global.ArmadilloNumber, x - (24 * facing) + (obj_ArmadilloAnimControler.ArmadilloXState06 * facing), y - 25 - (obj_ArmadilloAnimControler.ArmadilloYState06), (facing * obj_ArmadilloAnimControler.ArmadilloScaleXState06), (obj_ArmadilloAnimControler.ArmadilloScaleYState06 * gravDir), (facing * obj_ArmadilloAnimControler.ArmadilloAngleState06), global.Col01, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprArmadilloCol01_part5, global.ArmadilloNumber, x - (12 * facing) + (obj_ArmadilloAnimControler.ArmadilloXState05 * facing), y - 25 - (obj_ArmadilloAnimControler.ArmadilloYState05), (facing * obj_ArmadilloAnimControler.ArmadilloScaleXState05), (obj_ArmadilloAnimControler.ArmadilloScaleYState05 * gravDir), (facing * obj_ArmadilloAnimControler.ArmadilloAngleState05), global.Col01, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprArmadilloCol01_part4, global.ArmadilloNumber, x + (3 * facing) + (obj_ArmadilloAnimControler.ArmadilloXState04 * facing), y - 25 - (obj_ArmadilloAnimControler.ArmadilloYState04), (facing * obj_ArmadilloAnimControler.ArmadilloScaleXState04), (obj_ArmadilloAnimControler.ArmadilloScaleYState04 * gravDir), (facing * obj_ArmadilloAnimControler.ArmadilloAngleState04), global.Col01, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprArmadilloCol01_part3, global.ArmadilloNumber, x + (16 * facing) + (obj_ArmadilloAnimControler.ArmadilloXState03 * facing), y - 25 - (obj_ArmadilloAnimControler.ArmadilloYState03), (facing * obj_ArmadilloAnimControler.ArmadilloScaleXState03), (obj_ArmadilloAnimControler.ArmadilloScaleYState03 * gravDir), (facing * obj_ArmadilloAnimControler.ArmadilloAngleState03), global.Col01, (image_alpha) * SpiderAlpha)
    
    draw_sprite_ext(sprArmadilloCol02_part1, global.ArmadilloNumber, x + obj_ArmadilloAnimControler.ArmadilloXState * facing, y - obj_ArmadilloAnimControler.ArmadilloYState, (facing * obj_ArmadilloAnimControler.ArmadilloScaleXState), (obj_ArmadilloAnimControler.ArmadilloScaleYState * gravDir), (facing * obj_ArmadilloAnimControler.ArmadilloAngleState), global.Col02, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprArmadilloCol01_part1, global.ArmadilloNumber, x + obj_ArmadilloAnimControler.ArmadilloXState * facing, y - obj_ArmadilloAnimControler.ArmadilloYState, (facing * obj_ArmadilloAnimControler.ArmadilloScaleXState), (obj_ArmadilloAnimControler.ArmadilloScaleYState * gravDir), (facing * obj_ArmadilloAnimControler.ArmadilloAngleState), global.Col01, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprArmadilloCol02_part2, global.ArmadilloNumber, x + (32 * facing) + (obj_ArmadilloAnimControler.ArmadilloXState02 * facing), y - 16 - (obj_ArmadilloAnimControler.ArmadilloYState02), (facing * obj_ArmadilloAnimControler.ArmadilloScaleXState02), (obj_ArmadilloAnimControler.ArmadilloScaleYState02 * gravDir), (facing * obj_ArmadilloAnimControler.ArmadilloAngleState02), global.Col02, (image_alpha) * SpiderAlpha)
    
    draw_sprite_ext(sprArmadilloColExtra_part1, global.ArmadilloExtraNumber, x + obj_ArmadilloAnimControler.ArmadilloXState * facing, y - (obj_ArmadilloAnimControler.ArmadilloYState), (facing * obj_ArmadilloAnimControler.ArmadilloScaleXState), (obj_ArmadilloAnimControler.ArmadilloScaleYState * gravDir), (facing * obj_ArmadilloAnimControler.ArmadilloAngleState), c_white, global.ArmadilloExtraAlpha)
    draw_sprite_ext(sprArmadilloCol01_part2, global.ArmadilloNumber, x + (32 * facing) + (obj_ArmadilloAnimControler.ArmadilloXState02 * facing), y - 16 - (obj_ArmadilloAnimControler.ArmadilloYState02), (facing * obj_ArmadilloAnimControler.ArmadilloScaleXState02), (obj_ArmadilloAnimControler.ArmadilloScaleYState02 * gravDir), (facing * obj_ArmadilloAnimControler.ArmadilloAngleState02), global.Col01, (image_alpha) * SpiderAlpha)
    draw_sprite_ext(sprArmadilloColExtra_part2, global.ArmadilloExtraNumber, x + (32 * facing) + (obj_ArmadilloAnimControler.ArmadilloXState02 * facing), y - 16 - (obj_ArmadilloAnimControler.ArmadilloYState02), (facing * obj_ArmadilloAnimControler.ArmadilloScaleXState02), (obj_ArmadilloAnimControler.ArmadilloScaleYState02 * gravDir), (facing * obj_ArmadilloAnimControler.ArmadilloAngleState02), c_white, (global.ArmadilloExtraAlpha) * SpiderAlpha)
}
