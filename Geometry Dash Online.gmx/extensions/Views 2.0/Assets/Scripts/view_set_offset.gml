///view_set_offset(vind,xoffset,yoffset);
//Create controller if it does not exist
if !instance_exists(sys_views) {
 instance_create(0,0,sys_views);
}
//Set the new align
view_xoffset[argument0] = argument1;
view_yoffset[argument0] = argument2;