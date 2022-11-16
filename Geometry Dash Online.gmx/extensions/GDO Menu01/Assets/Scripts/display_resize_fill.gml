/// display_resize_fill(view width, view height, display_width?, display_height?)
{
    // Auto initialization :D
    display_resize_init();
    
    var display_w, display_h, view_w, view_h, aspec_ratio;
    
    if ( argument_count == 2 ) {
        if ( os_browser == browser_not_a_browser ) {
            if (os_type == os_windows) {
                if (window_get_fullscreen()) {
                    display_w = display_get_width();
                    display_h = display_get_height();
                } else {
                    display_w = global.WindowWidth;//window_get_width();
                    display_h = global.WindowHeight;//window_get_height();
                }
            } else if (os_type == os_android) {
                display_w = display_get_width();
                display_h = display_get_height();
            }
        }
        else {
            display_w = browser_width;
            display_h = browser_height;
        }
        view_w = argument[0];
        view_h = argument[1];
    }
    else {
        view_w = argument[0];
        view_h = argument[1];
        display_w = argument[2];
        display_h = argument[3];
    }

    aspect_ratio = (display_w / display_h) / (view_w / view_h);
    if (aspect_ratio < 1)
    {
        view_wview[0] = view_w * aspect_ratio;
        view_hview[0] = view_h;
    }
    else if (aspect_ratio > 1)
    {
        view_wview[0] = view_w;
        view_hview[0] = view_h / aspect_ratio;
    }
    else {
        view_wview[0] = view_w;
        view_hview[0] = view_h;
    }
    
    view_wport[0] = view_wview[0];
    view_hport[0] = view_hview[0];
    
    window_set_size(display_w, display_h);
    display_set_gui_size(view_wport[0], view_hport[0]);
    surface_resize(application_surface, view_wport[0], view_hport[0]);
}
