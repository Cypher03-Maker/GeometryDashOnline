///scr_checkForButtons - internal, checks for new buttons
var c = instance_number(obj_gsButtonBase);

buttonList = noone;
buttonList[0] = 0;

for(var i=0,j=0;i<c;i++) {
    var obj = instance_find(obj_gsButtonBase, i);
    if(obj != noone) {
        if(obj.group_id == group_id) {
            buttonList[j] = obj;
            if(buttonList[j].is_selected) selected_id = j;
            j++;
        }
    }
}

buttonCount = array_length_1d(buttonList);
