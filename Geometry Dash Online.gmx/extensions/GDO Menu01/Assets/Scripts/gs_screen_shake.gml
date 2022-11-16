/// gs_screen_shake(view_number, intensity, time)

with(instance_create(0, 0, obj_gsScreenShake)) {
    shake_view = argument0;
    shake_intensity = argument1;
    shake_time = argument2;
    shake_start = true;
}
