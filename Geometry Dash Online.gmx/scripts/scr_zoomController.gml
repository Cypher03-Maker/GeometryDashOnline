#define scr_zoomController
switch(group_id) {
    case 0:
    scr_view_zoom(ZoomAmount, 0)
    break;
    
    case 1:
    scr_view_zoom(-ZoomAmount, 0)
    break
}

#define scr_createObjects
switch(global.ObjectSelect) {
    case 0:
    global.BlockSelect = image_button_index;
    EditBlock = image_button_index;
    break;
    
    case 1:
    global.PortalSelect = image_button_index;
    EditPortals = image_button_index;
    break;
    
    case 2:
    global.OrbSelect = image_button_index;
    EditOrbs = image_button_index;
    break;
    
    case 3:
    global.TriggerSelect = image_button_index;
    EditTriggers = image_button_index;
    break;
}

#define scr_switchObjectSelect
global.ObjectSelect = image_button_index;