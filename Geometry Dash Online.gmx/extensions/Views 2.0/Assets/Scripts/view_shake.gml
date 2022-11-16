///view_shake(vind,steps,position strength,size strength,angle strength);
//Create controller if it does not exist
if !instance_exists(sys_views) {
 instance_create(0,0,sys_views);
}

//Set shake
var _view = argument0;
view_shake_time[_view] = argument1;;
view_shake_position[_view] = argument2;
view_shake_size[_view] = argument3;
view_shake_angle[_view] = argument4;