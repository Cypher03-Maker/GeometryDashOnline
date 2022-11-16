/// scr_gsButtonGroup_selectNext - internal, select next button
var d = argument0;

buttonList[selected_id].is_selected = false;

if(selected_id <= 0 && d < 0) {
    selected_id = buttonCount - 1;
} else if(selected_id >= (buttonCount-1) && d > 0) {
    selected_id = 0;
} else {
    selected_id += argument0;
}

buttonList[selected_id].is_selected = true;
