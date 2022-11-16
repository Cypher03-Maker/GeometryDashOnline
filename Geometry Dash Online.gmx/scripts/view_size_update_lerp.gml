///view_size_update_lerp(vind,amt,[w],[h]);
//Create controller if it does not exist
if !instance_exists(sys_views) {
 instance_create(0,0,sys_views);
}

//Find position
var _view = argument[0], _amt = argument[1], _w, _h, _a;
if argument_count > 2 {
 _w = argument[2];
}
if argument_count > 3 {
 _h = argument[3];
}

var _len, _dir;
_w = lerp(view_wview[_view],_w,_amt);
_h = lerp(view_hview[_view],_h,_amt);
_len = point_distance(view_wview[_view],view_hview[_view],_w,_h);
_dir = point_direction(view_wview[_view],view_hview[_view],_w,_h);
view_wscspd[_view] = lengthdir_x(_len,_dir);
view_hscspd[_view] = lengthdir_y(_len,_dir);
_w = view_wview[_view]+view_wscspd[_view];
_h = view_hview[_view]+view_hscspd[_view];

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
