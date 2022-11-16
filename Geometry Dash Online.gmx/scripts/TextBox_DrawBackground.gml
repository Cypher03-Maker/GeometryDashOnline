///TextBox_DrawBackground(num,offset,minW,minH,radio,c1,c2,alpha,ChangeColor)
if string_length(global.text[argument0]) < 1 exit;
//min back size
if argument2 < string_width(global.text[argument0]){
    global.textWidth[argument0] = string_width(global.text[argument0])    
}else{
    global.textWidth[argument0] = argument2
}
if argument3 < string_height(global.text[argument0]){
    global.textHeight[argument0] = string_height(global.text[argument0])
}else{
    global.textHeight[argument0] = argument3
}

//
TextBox_backalign(argument0,argument1);

draw_set_alpha(argument7)
if argument8 = false {
    draw_roundrect_colour_ext(x1[argument0],y1[argument0],x2[argument0],y2[argument0],argument4,argument4,argument5,argument5,0)    
}else{
    if global.Selected[argument0] = true{
        draw_roundrect_colour_ext(x1[argument0],y1[argument0],x2[argument0],y2[argument0],argument4,argument4,argument5,argument5,0)
    }else{
        draw_roundrect_colour_ext(x1[argument0],y1[argument0],x2[argument0],y2[argument0],argument4,argument4,argument6,argument6,0)    
    }
}
draw_set_alpha(1)
