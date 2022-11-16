/// scr_buttonGroup_Activate - internal - executes click on selected button

with(buttonList[selected_id]) {
    if(scripts[ev_left_release] != noone) {
        script_execute(scripts[ev_left_release]);
    }
}
