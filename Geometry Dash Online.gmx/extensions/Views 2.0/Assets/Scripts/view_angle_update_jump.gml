///view_angle_update_jump(vind,[angle]);
//Create controller if it does not exist
if !instance_exists(sys_views) {
 instance_create(0,0,sys_views);
}

//Find target angle
var _view = argument[0], _ang = view_angle[_view], _a;
if argument_count > 1 {
 _ang = argument[1];
}
_a = view_calculate_position_from_angle(_view,_ang);

//Set new angle
view_rspd[_view] = 0;
view_xview[_view] = _a[0];
view_yview[_view] = _a[1];
view_angle[_view] = _ang;

//Clean up angle
view_angle[_view] += ((-view_angle[_view] div 360)+1)*360;
view_angle[_view] %= 360;

//Constraint
if view_constraint[_view] {
 clamp_view(_view,view_xmin[_view],view_ymin[_view],view_xmax[_view],view_ymax[_view]);
}