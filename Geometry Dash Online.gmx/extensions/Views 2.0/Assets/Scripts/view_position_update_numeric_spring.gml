///view_position_update_numeric_spring(vind,damp,freq,step,[obj]/[x,y]);
//Create controller if it does not exist
if !instance_exists(sys_views) {
 instance_create(0,0,sys_views);
}

//Find position
var _view = argument[0], _a;
if argument_count == 4 {
 _a = view_calculate_target_position(_view);
} else if argument_count == 5 {
 _a = view_calculate_target_position(_view,argument[4]);
} else if argument_count > 5 {
 _a = view_calculate_target_position(_view,argument[4],argument[5]);
}

//Move view
var _a2 = numeric_springing(view_xview[_view],view_hspd[_view],_a[0],argument[1],argument[2],argument[3]);
view_xview[_view] = _a2[0];
view_hspd[_view] = _a2[1];

_a2 = numeric_springing(view_yview[_view],view_vspd[_view],_a[1],argument[1],argument[2],argument[3]);
view_yview[_view] = _a2[0];
view_vspd[_view] = _a2[1];

//Constraint
if view_constraint[_view] {
 clamp_view(_view,view_xmin[_view],view_ymin[_view],view_xmax[_view],view_ymax[_view]);
}