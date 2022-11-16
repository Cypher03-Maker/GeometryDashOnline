///scr_test_focus_player()

// focus back player and enable camera follow

show_debug_message("  > Callback from scr_test_focus_player: Camera movement has completed and starting to reset player camera follow");

with (obj_ex_camera_demo_camera) {
    alarm[0] = 60;
}
