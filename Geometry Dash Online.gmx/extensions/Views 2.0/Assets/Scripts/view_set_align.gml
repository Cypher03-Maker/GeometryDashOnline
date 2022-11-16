///view_set_align(vind,halign,valign);
//Create controller if it does not exist
if !instance_exists(sys_views) {
 instance_create(0,0,sys_views);
}
//Set the new align
view_halign[argument0] = argument1;
view_valign[argument0] = argument2;