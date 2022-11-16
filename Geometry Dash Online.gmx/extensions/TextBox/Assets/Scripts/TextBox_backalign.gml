///dont touch it
draw_set_valign(fa_center)
switch global.textAlign[argument0] {
    case 0:
    draw_set_halign(fa_left)
    var TL = global.textWidth[argument0] ;
    var TH = global.textHeight[argument0] ;
    x1[argument0] = global.xx[argument0] - (argument1/2);
    y1[argument0] = global.yy[argument0] - (TH/2) - (argument1/2);
    x2[argument0] = global.xx[argument0] + (TL) + (argument1/2);
    y2[argument0] = global.yy[argument0] + (TH/2) + (argument1/2);
    
    break;
    case 1:
    
    draw_set_halign(fa_right)
    var TL = global.textWidth[argument0] ;
    var TH = global.textHeight[argument0] ;
    x1[argument0] = global.xx[argument0] + (argument1/2);
    y1[argument0] = global.yy[argument0] +(TH/2)+ (argument1/2);
    x2[argument0] = global.xx[argument0] - (TL) - (argument1/2);
    y2[argument0] = global.yy[argument0] - (TH/2)- (argument1/2);
    
    break;
    case 2:
    
    draw_set_halign(fa_center)
    var TL = global.textWidth[argument0] ;
    var TH = global.textHeight[argument0] ;
    x1[argument0] = global.xx[argument0] - (TL/2) -  (argument1/2);
    y1[argument0] = global.yy[argument0] - (TH/2) - (argument1/2);
    x2[argument0] = global.xx[argument0] + (TL/2) + (argument1/2);
    y2[argument0] = global.yy[argument0] + (TH/2) + (argument1/2);
    
    break;

}
