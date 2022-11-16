///view_size_update_jump(vind,[w],[h]);
//Create controller if it does not exist
if !instance_exists(sys_views) {
 instance_create(0,0,sys_views);
}

//Find position
var _view = argument[0], _w, _h, _a;
if argument_count > 1 {
 _w = argument[1];
}
if argument_count > 2 {
 _h = argument[2];
}
_a = view_calculate_position_from_size(_view,_w,_h);

//Update view
view_wscspd[_view] = 0;
view_hscspd[_view] = 0;
view_xview[_view] = _a[0];
view_yview[_view] = _a[1];
view_wview[_view] = _w;
view_hview[_view] = _h;

//Constraint
if view_constraint[_view] {
 clamp_view(_view,view_xmin[_view],view_ymin[_view],view_xmax[_view],view_ymax[_view]);
}