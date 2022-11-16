///view_position_update_lerp(vind,amt,[obj]/[x,y]);
//Create controller if it does not exist
if !instance_exists(sys_views) {
 instance_create(0,0,sys_views);
}

//Find position
var _view = argument[0], _a;
if argument_count == 2 {
 _a = view_calculate_target_position(_view);
} else if argument_count == 3 {
 _a = view_calculate_target_position(_view,argument[2]);
} else if argument_count > 3 {
 _a = view_calculate_target_position(_view,argument[2],argument[3]);
}

//Move view
view_hspd[_view] = lerp(0,_a[0]-view_xview[_view],argument[1]);
view_vspd[_view] = lerp(0,_a[1]-view_yview[_view],argument[1]);
view_xview[_view] += view_hspd[_view];
view_yview[_view] += view_vspd[_view];

//Constraint
if view_constraint[_view] {
 clamp_view(_view,view_xmin[_view],view_ymin[_view],view_xmax[_view],view_ymax[_view]);
}