#define scr_create_gsButtonSimpleExt
/// scr_create_gsButtonSimpleExt(ButtonCreate, x, y, sprite_index, text, CoordState, PosX, PosY, image_color_1, image_color_2, mouse_left_callback, mouse_left_pressed_callback, mouse_enter_callback, mouse_leave_callback, mouse_left_release_callback, button_group_id, is_button_selected); 
var obj_new_button;
var ButtonCreate = argument0;

// creates a new button from obj_button
obj_new_button = instance_create(argument1, argument2, ButtonCreate);

// sets the text and color for the button
obj_new_button.sprite_index = argument3;
obj_new_button.Text = argument4;
obj_new_button.CoordState = argument5;

obj_new_button.PosX = argument6;
obj_new_button.PosY = argument7;

obj_new_button.image_color_1 = argument8;

// sets the callback scripts for the button
obj_new_button.scripts[ev_left_button] = argument9; // mouse left button
obj_new_button.scripts[ev_left_press] = argument10; // mouse left press
obj_new_button.scripts[ev_mouse_enter] = argument11; // mouse enter
obj_new_button.scripts[ev_mouse_leave] = argument12; // mouse leave
obj_new_button.scripts[ev_left_release] = argument13; // mouse release

// sets the button group id - used by
obj_new_button.group_id = argument14;

// is currently selected or not
obj_new_button.is_selected = argument15;

// returns new button object
return obj_new_button;

#define scr_create_gsButtonSimple
/// scr_create_gsButtonSimple(ButtonCreate, x, y, sprite_index, CoordState, PosX, PosY, image_color_1, image_color_2, mouse_left_callback, mouse_left_pressed_callback, mouse_enter_callback, mouse_leave_callback, mouse_left_release_callback, button_group_id, is_button_selected); 
var obj_new_button;
var ButtonCreate = argument0;

// creates a new button from obj_button
obj_new_button = instance_create(argument1, argument2, ButtonCreate);

// sets the text and color for the button
obj_new_button.sprite_index = argument3;
obj_new_button.CoordState = argument4;

obj_new_button.PosX = argument5;
obj_new_button.PosY = argument6;

obj_new_button.image_color_1 = argument7;
obj_new_button.image_color_2 = argument8;

// sets the callback scripts for the button
obj_new_button.scripts[ev_left_button] = argument9; // mouse left button
obj_new_button.scripts[ev_left_press] = argument10; // mouse left press
obj_new_button.scripts[ev_mouse_enter] = argument11; // mouse enter
obj_new_button.scripts[ev_mouse_leave] = argument12; // mouse leave
obj_new_button.scripts[ev_left_release] = argument13; // mouse release

// sets the button group id - used by
obj_new_button.group_id = argument14;

// is currently selected or not
obj_new_button.is_selected = argument15;

// returns new button object
return obj_new_button;
#define scr_create_gsButtonSimpleMenu
/// scr_create_gsButtonSimpleMenu(x, y, image_index, sprite_index, CoordState, PosX, PosY, image_color_1, image_color_2, mouse_left_callback, mouse_left_pressed_callback, mouse_enter_callback, mouse_leave_callback, mouse_left_release_callback, button_group_id, is_button_selected); 
var obj_new_button;

// creates a new button from obj_button
obj_new_button = instance_create(argument0, argument1, obj_gsButtonMenuOrd01);

// sets the text and color for the button
obj_new_button.image_index = argument2;
obj_new_button.sprite_index = argument3;
obj_new_button.CoordState = argument4;

obj_new_button.PosX = argument5;
obj_new_button.PosY = argument6;

obj_new_button.image_color_1 = argument7;
obj_new_button.image_color_2 = argument8;

// sets the callback scripts for the button
obj_new_button.scripts[ev_left_button] = argument9; // mouse left button
obj_new_button.scripts[ev_left_press] = argument10; // mouse left press
obj_new_button.scripts[ev_mouse_enter] = argument11; // mouse enter
obj_new_button.scripts[ev_mouse_leave] = argument12; // mouse leave
obj_new_button.scripts[ev_left_release] = argument13; // mouse release

// sets the button group id - used by
obj_new_button.group_id = argument14;

// is currently selected or not
obj_new_button.is_selected = argument15;

// returns new button object
return obj_new_button;
#define scr_create_gsButtonSimpleGUIEditor
/// scr_create_gsButtonSimpleGUIEditor(ButtonCreate, PosX, PosY, sprite_index, image_index, sprite_button_index, image_button_index, CoordState, image_color_1, mouse_left_callback, mouse_left_pressed_callback, mouse_enter_callback, mouse_leave_callback, mouse_left_release_callback, button_group_id, is_button_selected); 
var obj_new_button, CoordX, CoordY;
var ButtonCreate = argument0;

CoordX = 0;
CoordY = 0;

// creates a new button from obj_button
obj_new_button = instance_create(CoordX, CoordY, ButtonCreate);

obj_new_button.PosX = argument1;
obj_new_button.PosY = argument2;

// sets the text and color for the button
obj_new_button.sprite_index = argument3;
obj_new_button.image_index = argument4;
obj_new_button.sprite_button_index = argument5;
obj_new_button.image_button_index = argument6;
obj_new_button.CoordState = argument7;

obj_new_button.image_color_1 = argument8;

// sets the callback scripts for the button
obj_new_button.scripts[ev_left_button] = argument9; // mouse left button
obj_new_button.scripts[ev_left_press] = argument10; // mouse left press
obj_new_button.scripts[ev_mouse_enter] = argument11; // mouse enter
obj_new_button.scripts[ev_mouse_leave] = argument12; // mouse leave
obj_new_button.scripts[ev_left_release] = argument13; // mouse release

// sets the button group id - used by
obj_new_button.group_id = argument14;

// is currently selected or not
obj_new_button.is_selected = argument15;

// returns new button object
return obj_new_button;
#define scr_create_gsButtonGUIEditor
/// scr_create_gsButtonGUIEditor(ButtonCreate, x, y, CoordState, PosX, PosY, sprite_index, image_index, image_color_1, mouse_left_callback, mouse_left_pressed_callback, mouse_enter_callback, mouse_leave_callback, mouse_left_release_callback, button_group_id, is_button_selected); 
var obj_new_button;
var ButtonCreate = argument0;

// creates a new button from obj_button
obj_new_button = instance_create(argument1, argument2, ButtonCreate);

// sets the text and color for the button
obj_new_button.CoordState = argument3;

obj_new_button.PosX = argument4;
obj_new_button.PosY = argument5;

obj_new_button.sprite_index = argument6;
obj_new_button.image_index = argument7;
obj_new_button.image_color_1 = argument8;

// sets the callback scripts for the button
obj_new_button.scripts[ev_left_button] = argument9; // mouse left button
obj_new_button.scripts[ev_left_press] = argument10; // mouse left press
obj_new_button.scripts[ev_mouse_enter] = argument11; // mouse enter
obj_new_button.scripts[ev_mouse_leave] = argument12; // mouse leave
obj_new_button.scripts[ev_left_release] = argument13; // mouse release

// sets the button group id - used by
obj_new_button.group_id = argument14;

// is currently selected or not
obj_new_button.is_selected = argument15;

// returns new button object
return obj_new_button;