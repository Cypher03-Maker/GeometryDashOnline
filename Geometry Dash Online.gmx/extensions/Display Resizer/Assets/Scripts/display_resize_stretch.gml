/// display_resize_stretch(view width, view height, display_width?, display_height?)
{
    // Auto initialization :D
    display_resize_init();
    
    var display_w, display_h, view_w, view_h, aspec_ratio;
    if ( argument_count == 2 ) {
        if ( os_browser == browser_not_a_browser ) {
            display_w = window_get_width();
            display_h = window_get_height();
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

    view_wview[0] = view_w;
    view_hview[0] = view_h;    
    view_wport[0] = view_w;
    view_hport[0] = view_h;
    
    window_set_size(display_w, display_h);
    surface_resize(application_surface, view_wport[0], view_hport[0]);
}
