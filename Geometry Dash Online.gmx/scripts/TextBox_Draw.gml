///TextBox_Draw(num,xscale,yscale)
if string_length(global.textshow[argument0]) < 1 {
    global.text[argument0] = global.textdef[argument0] ;   
}else{
    if global.pass[argument0]{
        global.text[argument0] = string_repeat('*',string_length(global.textshow[argument0]))     
    }else{
        global.text[argument0] = global.textshow[argument0] 
    }
}
draw_text_transformed(global.xx[argument0],global.yy[argument0],global.text[argument0],argument1,argument2,0)
