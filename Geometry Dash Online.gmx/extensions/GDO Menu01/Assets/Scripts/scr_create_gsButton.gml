/// scr_create_gsButton(x, y, text, color, mouse_left_callback, mouse_left_pressed_callback, mouse_enter_callback, mouse_leave_callback, mouse_left_release_callback, button_group_id, is_button_selected); 
var obj_new_button;

// creates a new button from obj_button
obj_new_button = instance_create(argument0, argument1, obj_gsButton);

// sets the text and color for the button
obj_new_button.str_text = argument2;
obj_new_button.label_color = argument3;

// sets the callback scripts for the button
obj_new_button.scripts[ev_left_button] = argument4; // mouse left button
obj_new_button.scripts[ev_left_press] = argument5; // mouse left press
obj_new_button.scripts[ev_mouse_enter] = argument6; // mouse enter
obj_new_button.scripts[ev_mouse_leave] = argument7; // mouse leave
obj_new_button.scripts[ev_left_release] = argument8; // mouse release

// sets the button group id - used by
obj_new_button.group_id = argument9;

// is currently selected or not
obj_new_button.is_selected = argument10;

// returns new button object
return obj_new_button;
