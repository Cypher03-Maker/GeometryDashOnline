///view_angle_update_linear(vind,spd,[angle]);
//Create controller if it does not exist
if !instance_exists(sys_views) {
 instance_create(0,0,sys_views);
}

//Find target angle
var _view = argument[0], _ang = view_angle[_view], _spd = argument[1], _a;
if argument_count > 2 {
 _ang = argument[2];
}
view_aspd[_view] = angle_difference(_ang,view_angle[_view]);
view_aspd[_view] = sign(view_aspd[_view])*min(abs(view_aspd[_view]),_spd);
_ang = view_angle[_view]+view_aspd[_view];

_a = view_calculate_position_from_angle(_view,_ang);

//Set new angle
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