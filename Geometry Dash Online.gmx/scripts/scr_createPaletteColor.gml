#define scr_createPaletteColor
var pos_x = floor(view_wview*0.5);
var pos_y = floor(view_hview*0.5);

if (!instance_exists(obj_MenuPaletteColor)) {
    scr_create_panel9Path(obj_MenuPaletteColor, pos_x, pos_y, sprMenu01, 1)
    
    scr_create_gsButtonSimple(obj_gsButtonSimple, pos_x, pos_y, sprBtnExit, 11, -478, -310, c_white, c_white, noone, noone, noone, noone, scr_destroyMenus, 0, true);
    
    //Red Scale
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -440, -81.5, make_colour_rgb(253, 212, 206), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -440, -27.5, make_colour_rgb(159, 0, 0), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -440, 25.5, make_colour_rgb(175, 0, 75), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -387, -81.5, make_colour_rgb(255, 125, 125), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -387, -27.5, make_colour_rgb(115, 0, 0), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -387, 25.5, make_colour_rgb(129, 79, 80), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -334, -81.5, make_colour_rgb(255, 57, 58), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -334, -27.5, make_colour_rgb(83, 0, 0), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -334, 25.5, make_colour_rgb(123, 53, 53), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -281, -81.5, make_colour_rgb(255, 0, 0), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -281, -27.5, make_colour_rgb(56, 0, 0), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -281, 25.5, make_colour_rgb(82, 36, 36), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    
    //Orange Scale
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -200, -81.5, make_colour_rgb(255, 185, 115), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -200, -27.5, make_colour_rgb(173, 75, 0), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -200, 25.5, make_colour_rgb(155, 47, 0), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -147, -81.5, make_colour_rgb(255, 158, 73), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -147, -27.5, make_colour_rgb(157, 100, 73), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -147, 25.5, make_colour_rgb(104, 49, 28), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -94, -81.5, make_colour_rgb(255, 127, 0), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -94, -27.5, make_colour_rgb(118, 72, 56), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -94, 25.5, make_colour_rgb(89, 40, 0), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -41, -81.5, make_colour_rgb(255, 76, 0), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -41, -27.5, make_colour_rgb(85, 53, 40), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -41, 25.5, make_colour_rgb(71, 32, 0), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    
    //Yellow Scale
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 200, -81.5, make_colour_rgb(255, 255, 197), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 200, -27.5, make_colour_rgb(249, 224, 168), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 200, 25.5, make_colour_rgb(201, 166, 124), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 147, -81.5, make_colour_rgb(255, 255, 126), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 147, -27.5, make_colour_rgb(255, 185, 0), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 147, 25.5, make_colour_rgb(169, 120, 88), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 94, -81.5, make_colour_rgb(255, 255, 0), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 94, -27.5, make_colour_rgb(150, 100, 0), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 94, 25.5, make_colour_rgb(110, 83, 56), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 41, -81.5, make_colour_rgb(126, 123, 0), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 41, -27.5, make_colour_rgb(83, 50, 0), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 41, 25.5, make_colour_rgb(81, 61, 37), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    
    //Green Scale
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 440, -81.5, make_colour_rgb(189, 255, 165), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 440, -27.5, make_colour_rgb(209, 255, 58), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 440, 25.5, make_colour_rgb(0, 255, 125), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 387, -81.5, make_colour_rgb(177, 255, 107), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 387, -27.5, make_colour_rgb(73, 176, 0), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 387, 25.5, make_colour_rgb(0, 150, 0), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 334, -81.5, make_colour_rgb(125, 255, 0), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 334, -27.5, make_colour_rgb(98, 152, 0), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 334, 25.5, make_colour_rgb(0, 96, 0), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 281, -81.5, make_colour_rgb(0, 255, 0), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 281, -27.5, make_colour_rgb(2, 175, 68), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 281, 25.5, make_colour_rgb(0, 67, 0), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    
    //Cyan Scale
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -440, 100.5, make_colour_rgb(191, 255, 224), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -440, 154.5, make_colour_rgb(126, 255, 175), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -440, 207.5, make_colour_rgb(3, 149, 100), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -387, 100.5, make_colour_rgb(148, 255, 229), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -387, 154.5, make_colour_rgb(70, 159, 137), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -387, 207.5, make_colour_rgb(0, 126, 125), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -334, 100.5, make_colour_rgb(0, 255, 193), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -334, 154.5, make_colour_rgb(49, 110, 95), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -334, 207.5, make_colour_rgb(0, 95, 94), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -281, 100.5, make_colour_rgb(0, 255, 255), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -281, 154.5, make_colour_rgb(40, 83, 73), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -281, 207.5, make_colour_rgb(0, 64, 61), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    
    //Blue Scale
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -200, 100.5, make_colour_rgb(158, 255, 255), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -200, 154.5, make_colour_rgb(0, 78, 176), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -200, 207.5, make_colour_rgb(0, 99, 153), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -200, 260.5, make_colour_rgb(119, 188, 255), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -147, 100.5, make_colour_rgb(0, 200, 255), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -147, 154.5, make_colour_rgb(0, 0, 150), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -147, 207.5, make_colour_rgb(0, 73, 108), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -147, 260.5, make_colour_rgb(80, 128, 174), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -94, 100.5, make_colour_rgb(0, 128, 255), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -94, 154.5, make_colour_rgb(0, 0, 113), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -94, 207.5, make_colour_rgb(0, 50, 77), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -94, 260.5, make_colour_rgb(50, 83, 116), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -41, 100.5, make_colour_rgb(0, 0, 255), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -41, 154.5, make_colour_rgb(0, 10, 77), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -41, 207.5, make_colour_rgb(0, 38, 56), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, -41, 260.5, make_colour_rgb(35, 61, 86), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    
    //Purple Scale
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 200, 100.5, make_colour_rgb(191, 180, 255), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 200, 154.5, make_colour_rgb(183, 128, 255), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 200, 207.5, make_colour_rgb(78, 76, 151), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 147, 100.5, make_colour_rgb(123, 126, 255), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 147, 154.5, make_colour_rgb(71, 0, 175), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 147, 207.5, make_colour_rgb(110, 72, 171), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 94, 100.5, make_colour_rgb(136, 0, 255), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 94, 154.5, make_colour_rgb(62, 0, 141), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 94, 207.5, make_colour_rgb(85, 51, 135), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 41, 100.5, make_colour_rgb(100, 0, 150), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 41, 154.5, make_colour_rgb(53, 0, 99), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 41, 207.5, make_colour_rgb(63, 43, 104), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    
    //Pink Scale
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 440, 100.5, make_colour_rgb(255, 175, 255), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 440, 154.5, make_colour_rgb(255, 0, 255), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 440, 207.5, make_colour_rgb(255, 121, 255), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 387, 100.5, make_colour_rgb(255, 0, 132), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 387, 154.5, make_colour_rgb(184, 0, 255), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 387, 207.5, make_colour_rgb(179, 63, 180), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 334, 100.5, make_colour_rgb(150, 0, 100), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 334, 154.5, make_colour_rgb(129, 0, 129), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 334, 207.5, make_colour_rgb(132, 65, 136), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 281, 100.5, make_colour_rgb(102, 0, 64), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 281, 154.5, make_colour_rgb(69, 0, 53), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 281, 207.5, make_colour_rgb(90, 51, 95), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    
    //Gray Scale
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 439, 281.5, make_colour_rgb(0, 0, 0), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 386, 281.5, make_colour_rgb(63, 63, 63), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 333, 281.5, make_colour_rgb(90, 90, 90), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 280, 281.5, make_colour_rgb(127, 127, 127), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 226, 281.5, make_colour_rgb(175, 175, 175), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 172, 281.5, make_colour_rgb(224, 224, 224), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
    scr_create_gsButtonSimple(obj_gsButtonPaletteColor, pos_x, pos_y, sprBtnPaletteColor, 10, 119, 281.5, make_colour_rgb(255, 255, 255), c_white, noone, noone, noone, noone, scr_colorPalette01, 0, true);
}

#define scr_createMenuCredits
var pos_x = floor(view_wview*0.5);
var pos_y = floor(view_hview*0.5);

if (!instance_exists(obj_MenuCredits)) {
    scr_create_panel9Path(obj_MenuCredits, pos_x, pos_y, sprMenu02, 2)
    
    scr_create_gsButtonSimple(obj_gsButtonSimple, pos_x, pos_y, sprBtnExit, 12, -478, -310, c_white, c_white, noone, noone, noone, noone, scr_destroyMenus, 1, true);

    DirCredits01 = scr_create_gsButtonSimple(obj_gsButtonSwitch02, pos_x, pos_y, sprBtnDir01, 11, 70, 0, c_white, c_white, noone, noone, noone, noone, scr_switchPageCredits, 1, true);
    DirCredits02 = scr_create_gsButtonSimple(obj_gsButtonSwitch02, pos_x, pos_y, sprBtnDir01, 13, -70, 0, c_white, c_white, noone, noone, noone, noone, scr_switchPageCredits, 2, true);
}

#define scr_createMenuParticles
var pos_x = floor(view_wview*0.5);
var pos_y = floor(view_hview*0.5);

if (!instance_exists(obj_MenuParticles)) {
    scr_create_panel9Path(obj_MenuParticles, pos_x, pos_y, sprMenu03, 2)
    
    scr_create_gsButtonSimple(obj_gsButtonSimple, pos_x, pos_y, sprBtnExit, 2, 420, -280, c_white, c_white, noone, noone, noone, noone, scr_destroyMenus, 2, true);
    scr_create_gsButtonSimple(obj_gsButtonCheckBoxPart, pos_x, pos_y, sprCheckBox, 2, 420, 280, c_white, c_white, noone, noone, noone, noone, scr_switchCheckBox, 3, true); 
}

#define scr_createMenuIconsCredits
var pos_x = floor(view_wview*0.5);
var pos_y = floor(view_hview*0.5);

if (!instance_exists(obj_MenuCredits)) {
    scr_create_panel9Path(obj_MenuIconCredits, pos_x, pos_y, sprMenu03, 2)
    
    scr_create_gsButtonSimple(obj_gsButtonSimple, pos_x, pos_y, sprBtnExit, 12, -478, -310, c_white, c_white, noone, noone, noone, noone, scr_destroyMenus, 3, true);
    
    scr_create_gsButtonSimple(obj_gsButtonGameModeCredits, pos_x, pos_y, sprBtnGameModeCubeOff, 12, -160, -100, c_white, c_white, noone, noone, noone, noone, scr_switchGameModesCredits, 1, true);
    scr_create_gsButtonSimple(obj_gsButtonGameModeCredits, pos_x, pos_y, sprBtnGameModeShipOff, 12, -80, -100, c_white, c_white, noone, noone, noone, noone, scr_switchGameModesCredits, 2, true);
    scr_create_gsButtonSimple(obj_gsButtonGameModeCredits, pos_x, pos_y, sprBtnGameModeJetPackOff, 12, 0, -100, c_white, c_white, noone, noone, noone, noone, scr_switchGameModesCredits, 9, true);
    scr_create_gsButtonSimple(obj_gsButtonGameModeCredits, pos_x, pos_y, sprBtnGameModeSpiderOff, 12, 80, -100, c_white, c_white, noone, noone, noone, noone, scr_switchGameModesCredits, 7, true);
    scr_create_gsButtonSimple(obj_gsButtonGameModeCredits, pos_x, pos_y, sprBtnGameModeSwingOff, 12, 160, -100, c_white, c_white, noone, noone, noone, noone, scr_switchGameModesCredits, 8, true);
}
#define scr_createMenuExit
var pos_x = floor(view_wview*0.5);
var pos_y = floor(view_hview*0.5);

if (!instance_exists(obj_MenuExit)) {
    scr_create_panel9Path(obj_MenuExit, pos_x, pos_y, sprPopup, 3)
}

#define scr_createMenuShaders
var pos_x = floor(view_wview*0.5);
var pos_y = floor(view_hview*0.5);

if (!instance_exists(obj_MenuShaders)) {
    scr_create_panel9Path(obj_MenuShaders, pos_x, pos_y, sprMenu04, 2)
    
    scr_create_gsButtonSimple(obj_gsButtonSimple, pos_x, pos_y, sprBtnExit, 12, -478, -310, c_white, c_white, noone, noone, noone, noone, scr_destroyMenus, 4, true);
    scr_create_gsButtonSimple(obj_gsButtonSimple, pos_x, pos_y, sprBtnPaletteColor, 12, 380, 230, c_white, c_white, noone, noone, noone, noone, scr_switchShaders, 0, true);
    
    DirCredits01 = scr_create_gsButtonSimple(obj_gsButtonSwitch02, pos_x, pos_y, sprBtnDir01, 11, 70, 0, c_white, c_white, noone, noone, noone, noone, scr_pageShaders, 1, true);
    DirCredits02 = scr_create_gsButtonSimple(obj_gsButtonSwitch02, pos_x, pos_y, sprBtnDir01, 13, -70, 0, c_white, c_white, noone, noone, noone, noone, scr_pageShaders, 2, true);
}

#define scr_createMenuTransitions
var pos_x = floor(view_wview*0.5);
var pos_y = floor(view_hview*0.5);

if (!instance_exists(obj_MenuTransitions)) {
    scr_create_panel9Path(obj_MenuTransitions, pos_x, pos_y, sprMenu03, 2)
    
    scr_create_gsButtonSimple(obj_gsButtonSimple, pos_x, pos_y, sprBtnExit, 12, -325, -215, c_white, c_white, noone, noone, noone, noone, scr_destroyMenus, 5, true);

    DirCredits01 = scr_create_gsButtonSimple(obj_gsButtonSwitch02, pos_x, pos_y, sprBtnDir01, 11, 70, 0, c_white, c_white, noone, noone, noone, noone, scr_pageTransitions, 1, true);
    DirCredits02 = scr_create_gsButtonSimple(obj_gsButtonSwitch02, pos_x, pos_y, sprBtnDir01, 13, -70, 0, c_white, c_white, noone, noone, noone, noone, scr_pageTransitions, 2, true);
}

#define scr_createMenuSettings
var pos_x = floor(view_wview*0.5);
var pos_y = floor(view_hview*0.5);

if (!instance_exists(obj_MenuSettings)) {
    instance_create(pos_x, pos_y, obj_MenuSettings)
    
    //SliderMusic = instance_create(pos_x, pos_y, obj_sliderMusic)
    //SliderMusic.PosX = -250;
    
    scr_create_gsButtonSimple(obj_gsButtonExitSettings, pos_x, pos_y, sprBtnDir02, 11, 55, -350, c_white, c_white, noone, noone, noone, noone, scr_destroyMenus, 6, true);
    
    with (obj_gsButtonExitSettings) {
        ex_tween_play(PosGen_, PosGen, 0.5, 20, scr_ease_out_quad, true)
    }
    
    /*with (obj_sliderMusic) {
        ex_tween_play(PosGen_, PosGen, 0.5, 20, scr_ease_out_quad, true)
    }*/
    
    with (obj_MenuSettings) {
        ex_tween_play(PosGen_, PosGen, 0.5, 20, scr_ease_out_quad, true)
        ex_tween_play(AlphaBackGround_, AlphaBackGround, 0.5, 20, scr_ease_out_quad, true)
    }
}
#define scr_createMenuEditSpecial02
var pos_x = floor(view_wport*0.5);
var pos_y = floor(view_hport*0.5);

if (!instance_exists(obj_GUIMenuProperties) && global.EditProperties) {
    instance_create(300, pos_y, obj_GUIMenuProperties)
}

#define scr_createMenuColorBlind
var pos_x = floor(view_wview*0.5);
var pos_y = floor(view_hview*0.5);

if (!instance_exists(obj_MenuColorBlind)) {
    scr_create_panel9Path(obj_MenuColorBlind, pos_x, pos_y, sprMenu02, 2)
    
    scr_create_gsButtonSimple(obj_gsButtonSimple, pos_x, pos_y, sprBtnExit, 12, -478, -310, c_white, c_white, noone, noone, noone, noone, scr_destroyMenus, 8, true);
    scr_create_gsButtonSimple(obj_gsButtonCheckBoxEnableCB, pos_x, pos_y, sprCheckBox, 12, 370, 220, c_white, c_white, noone, noone, noone, noone, scr_switchCBCheckBox, 3, true);
}
#define scr_createMenuEditSpecial01
var pos_x = floor(view_wport*0.5);
var pos_y = floor(view_hport*0.5);

switch(EditTriggerMode) {
    case 1:
    if (!instance_exists(obj_GUIMenuTriggerColor) && global.EditTriggersProperties) {
        instance_create(pos_x, pos_y, obj_GUIMenuTriggerColor)
    }
    break;
    
    case 2:
    if (!instance_exists(obj_GUIMenuTriggerZoom) && global.EditTriggersProperties) {
        instance_create(pos_x, pos_y, obj_GUIMenuTriggerZoom)
    }
    break;
    
    case 3:
    if (!instance_exists(obj_GUIMenuTriggerRotate) && global.EditTriggersProperties) {
        instance_create(pos_x, pos_y, obj_GUIMenuTriggerRotate)
    }
    break;
    
    case 7:
    if (!instance_exists(obj_GUIMenuTriggerShake) && global.EditTriggersProperties) {
        instance_create(pos_x, pos_y, obj_GUIMenuTriggerShake)
    }
    break;
    
    case 8:
    if (!instance_exists(obj_GUIMenuTriggerTimeWarp) && global.EditTriggersProperties) {
        instance_create(pos_x, pos_y, obj_GUIMenuTriggerTimeWarp)
    }
    break;
    
    case 9:
    if (!instance_exists(obj_GUIMenuSongTrigger) && global.EditTriggersProperties) {
        instance_create(pos_x, pos_y, obj_GUIMenuSongTrigger)
    }
    break;
    
    case 10:
    if (!instance_exists(obj_GUIMenuForceBlock) && global.EditTriggersProperties) {
        instance_create(pos_x, pos_y, obj_GUIMenuForceBlock)
    }
    break;
    
    case 18:
    if (!instance_exists(obj_GUIMenuShaderControl) && global.EditTriggersProperties) {
        instance_create(pos_x, pos_y, obj_GUIMenuShaderControl)
    }
    break;
}

#define scr_createMenuSettingsGUI
var pos_x = floor(view_wport*0.5);
var pos_y = floor(view_hport*0.5);

if (!instance_exists(obj_GUIMenuSettings)) {
    instance_create(pos_x, pos_y, obj_GUIMenuSettings);
}
#define scr_createMenuBG
var pos_x = floor(view_wport*0.5);
var pos_y = floor(view_hport*0.5);

if (!instance_exists(obj_GUIMenuBackGrounds)) {
    instance_create(pos_x, pos_y, obj_GUIMenuBackGrounds);
    
    scr_create_gsButtonSimple(obj_gsButtonGUIExitSettings, pos_x, pos_y, sprBtnExit, 13, 250, 210, c_white, c_white, noone, noone, noone, noone, scr_destroyMenus, 11, true)
    
    scr_create_gsButtonGUIEditor(obj_gsButtonGUIBackgrounds, pos_x, pos_y, 13, 0, -115, sprBtnBGEditor, 0, c_white, noone, noone, noone, noone, scr_IndexBackground, 1, true)
    scr_create_gsButtonGUIEditor(obj_gsButtonGUIBackgrounds, pos_x, pos_y, 13, -110, -115, sprBtnBGEditor, 1, c_white, noone, noone, noone, noone, scr_IndexBackground, 1, true)
    scr_create_gsButtonGUIEditor(obj_gsButtonGUIBackgrounds, pos_x, pos_y, 13, -220, -115, sprBtnBGEditor, 2, c_white, noone, noone, noone, noone, scr_IndexBackground, 1, true)
    scr_create_gsButtonGUIEditor(obj_gsButtonGUIBackgrounds, pos_x, pos_y, 13, -330, -115, sprBtnBGEditor, 3, c_white, noone, noone, noone, noone, scr_IndexBackground, 1, true)
    scr_create_gsButtonGUIEditor(obj_gsButtonGUIBackgrounds, pos_x, pos_y, 13, -440, -115, sprBtnBGEditor, 4, c_white, noone, noone, noone, noone, scr_IndexBackground, 1, true)
    scr_create_gsButtonGUIEditor(obj_gsButtonGUIBackgrounds, pos_x, pos_y, 13, -550, -115, sprBtnBGEditor, 5, c_white, noone, noone, noone, noone, scr_IndexBackground, 1, true)
    scr_create_gsButtonGUIEditor(obj_gsButtonGUIBackgrounds, pos_x, pos_y, 13, 0, -10, sprBtnBGEditor, 6, c_white, noone, noone, noone, noone, scr_IndexBackground, 1, true)
    scr_create_gsButtonGUIEditor(obj_gsButtonGUIBackgrounds, pos_x, pos_y, 13, -110, -10, sprBtnBGEditor, 7, c_white, noone, noone, noone, noone, scr_IndexBackground, 1, true)
    scr_create_gsButtonGUIEditor(obj_gsButtonGUIBackgrounds, pos_x, pos_y, 13, -220, -10, sprBtnBGEditor, 8, c_white, noone, noone, noone, noone, scr_IndexBackground, 1, true)
    scr_create_gsButtonGUIEditor(obj_gsButtonGUIBackgrounds, pos_x, pos_y, 13, -330, -10, sprBtnBGEditor, 9, c_white, noone, noone, noone, noone, scr_IndexBackground, 1, true)
    scr_create_gsButtonGUIEditor(obj_gsButtonGUIBackgrounds, pos_x, pos_y, 13, -440, -10, sprBtnBGEditor, 10, c_white, noone, noone, noone, noone, scr_IndexBackground, 1, true)
    scr_create_gsButtonGUIEditor(obj_gsButtonGUIBackgrounds, pos_x, pos_y, 13, -550, -10, sprBtnBGEditor, 11, c_white, noone, noone, noone, noone, scr_IndexBackground, 1, true)
    scr_create_gsButtonGUIEditor(obj_gsButtonGUIBackgrounds, pos_x, pos_y, 13, 0, 97, sprBtnBGEditor, 12, c_white, noone, noone, noone, noone, scr_IndexBackground, 1, true)
    scr_create_gsButtonGUIEditor(obj_gsButtonGUIBackgrounds, pos_x, pos_y, 13, -110, 97, sprBtnBGEditor, 13, c_white, noone, noone, noone, noone, scr_IndexBackground, 1, true)
    scr_create_gsButtonGUIEditor(obj_gsButtonGUIBackgrounds, pos_x, pos_y, 13, -220, 97, sprBtnBGEditor, 14, c_white, noone, noone, noone, noone, scr_IndexBackground, 1, true)
    scr_create_gsButtonGUIEditor(obj_gsButtonGUIBackgrounds, pos_x, pos_y, 13, -330, 97, sprBtnBGEditor, 15, c_white, noone, noone, noone, noone, scr_IndexBackground, 1, true)
    scr_create_gsButtonGUIEditor(obj_gsButtonGUIBackgrounds, pos_x, pos_y, 13, -440, 97, sprBtnBGEditor, 16, c_white, noone, noone, noone, noone, scr_IndexBackground, 1, true)
    scr_create_gsButtonGUIEditor(obj_gsButtonGUIBackgrounds, pos_x, pos_y, 13, -550, 97, sprBtnBGEditor, 17, c_white, noone, noone, noone, noone, scr_IndexBackground, 1, true)
    scr_create_gsButtonGUIEditor(obj_gsButtonGUIBackgrounds, pos_x, pos_y, 13, 0, 203, sprBtnBGEditor, 18, c_white, noone, noone, noone, noone, scr_IndexBackground, 1, true)
    scr_create_gsButtonGUIEditor(obj_gsButtonGUIBackgrounds, pos_x, pos_y, 13, -110, 203, sprBtnBGEditor, 19, c_white, noone, noone, noone, noone, scr_IndexBackground, 1, true)
    scr_create_gsButtonGUIEditor(obj_gsButtonGUIBackgrounds, pos_x, pos_y, 13, -220, 203, sprBtnBGEditor, 20, c_white, noone, noone, noone, noone, scr_IndexBackground, 1, true)
    scr_create_gsButtonGUIEditor(obj_gsButtonGUIBackgrounds, pos_x, pos_y, 13, -330, 203, sprBtnBGEditor, 21, c_white, noone, noone, noone, noone, scr_IndexBackground, 1, true)
    
}

#define scr_createMenuG
var pos_x = floor(view_wport*0.5);
var pos_y = floor(view_hport*0.5);

if (!instance_exists(obj_GUIMenuGrounds)) {
    instance_create(pos_x, pos_y, obj_GUIMenuGrounds);
    
    scr_create_gsButtonSimple(obj_gsButtonGUIExitSettings, pos_x, pos_y, sprBtnExit, 13, 0, 210, c_white, c_white, noone, noone, noone, noone, scr_destroyMenus, 12, true)
    
    scr_create_gsButtonGUIEditor(obj_gsButtonGUIGrounds, pos_x, pos_y, 13, 0, -115, sprBtnGEditor, 0, c_white, noone, noone, noone, noone, scr_IndexGround, 2, true)
    scr_create_gsButtonGUIEditor(obj_gsButtonGUIGrounds, pos_x, pos_y, 13, -110, -115, sprBtnGEditor, 1, c_white, noone, noone, noone, noone, scr_IndexGround, 2, true)
    scr_create_gsButtonGUIEditor(obj_gsButtonGUIGrounds, pos_x, pos_y, 13, -220, -115, sprBtnGEditor, 2, c_white, noone, noone, noone, noone, scr_IndexGround, 2, true)
    scr_create_gsButtonGUIEditor(obj_gsButtonGUIGrounds, pos_x, pos_y, 13, -330, -115, sprBtnGEditor, 3, c_white, noone, noone, noone, noone, scr_IndexGround, 2, true)
    scr_create_gsButtonGUIEditor(obj_gsButtonGUIGrounds, pos_x, pos_y, 13, -440, -115, sprBtnGEditor, 4, c_white, noone, noone, noone, noone, scr_IndexGround, 2, true)
    scr_create_gsButtonGUIEditor(obj_gsButtonGUIGrounds, pos_x, pos_y, 13, -550, -115, sprBtnGEditor, 5, c_white, noone, noone, noone, noone, scr_IndexGround, 2, true)
    scr_create_gsButtonGUIEditor(obj_gsButtonGUIGrounds, pos_x, pos_y, 13, 0, -10, sprBtnGEditor, 6, c_white, noone, noone, noone, noone, scr_IndexGround, 2, true)
    scr_create_gsButtonGUIEditor(obj_gsButtonGUIGrounds, pos_x, pos_y, 13, -110, -10, sprBtnGEditor, 7, c_white, noone, noone, noone, noone, scr_IndexGround, 2, true)
    scr_create_gsButtonGUIEditor(obj_gsButtonGUIGrounds, pos_x, pos_y, 13, -220, -10, sprBtnGEditor, 8, c_white, noone, noone, noone, noone, scr_IndexGround, 2, true)
    scr_create_gsButtonGUIEditor(obj_gsButtonGUIGrounds, pos_x, pos_y, 13, -330, -10, sprBtnGEditor, 9, c_white, noone, noone, noone, noone, scr_IndexGround, 2, true)
    scr_create_gsButtonGUIEditor(obj_gsButtonGUIGrounds, pos_x, pos_y, 13, -440, -10, sprBtnGEditor, 10, c_white, noone, noone, noone, noone, scr_IndexGround, 2, true)
    scr_create_gsButtonGUIEditor(obj_gsButtonGUIGrounds, pos_x, pos_y, 13, -550, -10, sprBtnGEditor, 11, c_white, noone, noone, noone, noone, scr_IndexGround, 2, true)
    scr_create_gsButtonGUIEditor(obj_gsButtonGUIGrounds, pos_x, pos_y, 13, 0, 97, sprBtnGEditor, 12, c_white, noone, noone, noone, noone, scr_IndexGround, 2, true)
    scr_create_gsButtonGUIEditor(obj_gsButtonGUIGrounds, pos_x, pos_y, 13, -110, 97, sprBtnGEditor, 13, c_white, noone, noone, noone, noone, scr_IndexGround, 2, true)
    scr_create_gsButtonGUIEditor(obj_gsButtonGUIGrounds, pos_x, pos_y, 13, -220, 97, sprBtnGEditor, 14, c_white, noone, noone, noone, noone, scr_IndexGround, 2, true)
    scr_create_gsButtonGUIEditor(obj_gsButtonGUIGrounds, pos_x, pos_y, 13, -330, 97, sprBtnGEditor, 15, c_white, noone, noone, noone, noone, scr_IndexGround, 2, true)
    scr_create_gsButtonGUIEditor(obj_gsButtonGUIGrounds, pos_x, pos_y, 13, -440, 97, sprBtnGEditor, 16, c_white, noone, noone, noone, noone, scr_IndexGround, 2, true)
}