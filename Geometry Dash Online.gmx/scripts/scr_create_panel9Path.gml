/// scr_create_panel9Path(PannelCreate, x, y, sprite_index, CoordState); 
var obj_new_panel;
var PanelCreate = argument0;

// creates a new button from obj_button
obj_new_panel = instance_create(argument1, argument2, PanelCreate);

// sets the text and color for the button
obj_new_panel.sprite_index = argument3;
obj_new_panel.CoordState = argument4;

// returns new button object
return obj_new_panel;
