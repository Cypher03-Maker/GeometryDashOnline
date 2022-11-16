///clamp_view(vind,left,top,right,bottom);
var _view = argument0, _x = view_xview[_view], _y = view_yview[_view], _w = view_wview[_view], _h = view_hview[_view];

//Create controller if it does not exist
if !instance_exists(sys_views) {
 instance_create(0,0,sys_views);
}

//Find bbox if angled view
if view_angle[_view] != 0 {
 var _w1, _w2, _h1, _h2;
 _w1 = abs(lengthdir_x(view_wview[_view],view_angle[_view]));
 _w2 = abs(lengthdir_x(view_hview[_view],view_angle[_view]+270));
 _w = _w1+_w2;
 _h1 = abs(lengthdir_y(view_wview[_view],view_angle[_view]));
 _h2 = abs(lengthdir_y(view_hview[_view],view_angle[_view]+270));
 _h = _h1+_h2;
 _x += view_wview[_view]/2-_w/2;
 _y += view_hview[_view]/2-_h/2;
}

//Shrink the view if necessary
var _r = _w/_h;
if _w > argument3-argument1+1 {
 _w = argument3-argument1+1;
 _h = _w/_r;
}
if _h > argument4-argument2+1 {
 _h = argument4-argument2+1;
 _w = _h*_r;
}

//Set new position
var _a = view_calculate_position_from_size(_view,_w,_h);
_x = _a[0];
_y = _a[1];

//Move the view if necessary
_x = median(argument1,_x,argument3-_w+1);
_y = median(argument2,_y,argument4-_h+1);

//Calculate the real values if angled view
if view_angle[_view] != 0 {
 _x += _w/2;
 _y += _h/2;
 //Calculate parts again
 _w1 = _w/(_w1+_w2)*_w1;
 _w2 = _w-_w1;
 _h1 = _h/(_h1+_h2)*_h1;
 _h2 = _h-_h1;
 _w = sqrt(sqr(_w1)+sqr(_h1));
 _h = sqrt(sqr(_w2)+sqr(_h2));
 //And find real-world values
 _x -= _w/2;
 _y -= _h/2;
}

//Actually set the values
view_xview[_view] = _x;
view_yview[_view] = _y;
view_wview[_view] = _w;
view_hview[_view] = _h;
