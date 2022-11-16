///TextBox_Click(num,offset,minW,minH)
if !mouse_check_button_pressed(mb_left) exit;  //check for a click 
var TW,TH,X1,Y1,XL,YH ;
//min back size
if argument2 < string_width(global.text[argument0]){
    TW = string_width(global.text[argument0])    
}else{
    TW = argument2
}
if argument3 < string_height(global.text[argument0]){
    TH = string_height(global.text[argument0])
}else{
    TH = argument3
}


switch global.textAlign[argument0] {
    case 0:
    var TW = global.textWidth[argument0] ;
    var TH = global.textHeight[argument0] ;
    X1 = global.xx[argument0] - (argument1/2);
    Y1 = global.yy[argument0] - (TH/2) - (argument1/2);
    XL = global.xx[argument0] + (TW) + (argument1/2);
    YH = global.yy[argument0] + (TH/2) + (argument1/2);
    
    break;
    case 1:
    var TW = global.textWidth[argument0] ;
    var TH = global.textHeight[argument0] ;
    XL = global.xx[argument0] + (argument1/2);
    YH = global.yy[argument0] +(TH/2)+ (argument1/2);
    X1 = global.xx[argument0] - (TW) - (argument1/2);
    Y1 = global.yy[argument0] - (TH/2)- (argument1/2);
    
    break;
    case 2:
    var TW = global.textWidth[argument0] ;
    var TH = global.textHeight[argument0] ;
    X1 = global.xx[argument0] - (TW/2) -  (argument1/2);
    Y1 = global.yy[argument0] - (TH/2) - (argument1/2);
    XL = global.xx[argument0] + (TW/2) + (argument1/2);
    YH = global.yy[argument0] + (TH/2) + (argument1/2);
    
    break;

}

if  (gui_mouse_x > X1) and 
    (gui_mouse_x < XL) and
    (gui_mouse_y > Y1) and 
    (gui_mouse_y < YH) {
    TextBox_Select(argument0,1)
    keyboard_create(0,view_hport - 298,view_wport,298);
}else{
    TextBox_Select(argument0,0)
}
