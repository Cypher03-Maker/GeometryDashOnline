///view_set_constraint(vind,flag,[left,top,width,height]);
//Create controller if it does not exist
if !instance_exists(sys_views) {
 instance_create(0,0,sys_views);
}

//Set the new constraintment value
var _view = argument[0];
view_constraint[_view] = argument[1];

//Set new area
if argument_count > 2 {
 view_xmin[_view] = argument[2];
}
if argument_count > 3 {
 view_ymin[_view] = argument[3];
}
if argument_count > 4 {
 view_xmax[_view] = argument[2]+argument[4]-1;
}
if argument_count > 5 {
 view_ymax[_view] = argument[3]+argument[5]-1;
}

//Constraint
if view_constraint[_view] {
 clamp_view(_view,view_xmin[_view],view_ymin[_view],view_xmax[_view],view_ymax[_view]);
}
