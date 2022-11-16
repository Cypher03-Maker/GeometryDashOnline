///view_position_update_jump(vind,[obj]/[x,y]);
//Create controller if it does not exist
if !instance_exists(sys_views) {
 instance_create(0,0,sys_views);
}

//Find position
var _view = argument[0], _a;
if argument_count == 1 {
 _a = view_calculate_target_position(_view);
} else if argument_count == 2 {
 _a = view_calculate_target_position(_view,argument[1]);
} else if argument_count > 2 {
 _a = view_calculate_target_position(_view,argument[1],argument[2]);
}

//Move view
view_xview[_view] = _a[0];
view_yview[_view] = _a[1];
view_hspd[_view] = 0;
view_vspd[_view] = 0;

//Constraint
if view_constraint[_view] {
 clamp_view(_view,view_xmin[_view],view_ymin[_view],view_xmax[_view],view_ymax[_view]);
}
