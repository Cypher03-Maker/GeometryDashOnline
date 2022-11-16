///display_resize_init(mode?, view width?, view height?) - Initializes the system (called automatically)
/**
 * Initializes the system. This is called automatically by the extension when its loaded.
 *
 * mode             - Which mode to use. Use the DisplayMode enum. Defaults to DisplayMode.FIT
 * view distance    - The view distance used as the base size in pixels. Defafults to view_wview[0] or view_hview[0] (the smallest dimension)
 */
{
    if (instance_exists(obj_display_resizer)) {
        exit;
    }
    
    enum DisplayMode {
        FIT,
        FILL,
        STRETCH,
        SIZE,
    }
    
    if (argument_count == 3) {
        display_view_width = argument[1];
        display_view_height = argument[2];
    }
    else {
        display_view_width = view_wview[0];
        display_view_height = view_hview[0];
    }
    
    if (argument_count >= 1) {
        display_mode = argument[0];
    }
    else {
        display_mode = DisplayMode.FIT;
    }
    
    instance_create(0, 0, obj_display_resizer);
}
