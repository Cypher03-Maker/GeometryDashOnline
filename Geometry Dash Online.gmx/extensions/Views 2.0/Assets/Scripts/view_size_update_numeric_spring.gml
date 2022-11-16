///view_size_update_numeric_spring(vind,damp,freq,step,[w],[h]);
//Create controller if it does not exist
if !instance_exists(sys_views) {
 instance_create(0,0,sys_views);
}

//Find position
var _view = argument[0], _damp = argument[1], _freq = argument[2], _step = argument[3], _w, _h, _a;
if argument_count > 4 {
 _w = argument[4];
}
if argument_count > 5 {
 _h = argument[5];
}

_a = numeric_springing(view_wview[_view],view_wscspd[_view],_w,_damp,_freq,_step);
_w = _a[0];
view_wscspd[_view] = _a[1];

_a = numeric_springing(view_hview[_view],view_hscspd[_view],_h,_damp,_freq,_step);
_h = _a[0];
view_hscspd[_view] = _a[1];

_a = view_calculate_position_from_size(_view,_w,_h);

//Update view
view_xview[_view] = _a[0];
view_yview[_view] = _a[1];
view_wview[_view] = _w;
view_hview[_view] = _h;

//Constraint
if view_constraint[_view] {
 clamp_view(_view,view_xmin[_view],view_ymin[_view],view_xmax[_view],view_ymax[_view]);
}