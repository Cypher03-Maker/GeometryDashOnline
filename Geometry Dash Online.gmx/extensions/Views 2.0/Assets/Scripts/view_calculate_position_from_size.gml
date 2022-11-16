///view_calculate_position_from_size(vind,w,h);
var _view = argument0, _w = argument1, _h = argument2, _cx, _cy, _offx, _offy, _len, _dir, _px, _py, _dir, _cx, _cy;
_cx = view_xview[_view]+view_wview[_view]/2; //Center
_cy = view_yview[_view]+view_hview[_view]/2;
_offx = (view_wview[_view]-1)*view_halign[_view]+view_xoffset[_view];
_offy = (view_hview[_view]-1)*view_valign[_view]+view_yoffset[_view];
_len = point_distance(0,0,-view_wview[_view]/2+_offx,-view_hview[_view]/2+_offy); //Vector
_dir = point_direction(0,0,-view_wview[_view]/2+_offx,-view_hview[_view]/2+_offy)-view_angle[_view];
_px = _cx+lengthdir_x(_len,_dir); //Corner
_py = _cy+lengthdir_y(_len,_dir);

_offx = (_w-1)*view_halign[_view]+view_xoffset[_view]; //New offset
_offy = (_h-1)*view_valign[_view]+view_yoffset[_view];
_len = point_distance(_offx,_offy,_w/2,_h/2); //New vector
_dir = point_direction(_offx,_offy,_w/2,_h/2)-view_angle[_view]; 
_cx = _px+lengthdir_x(_len,_dir); //New center
_cy = _py+lengthdir_y(_len,_dir);

var _r;
_r[1] = _cy-_h/2;
_r[0] = _cx-_w/2;
return _r;