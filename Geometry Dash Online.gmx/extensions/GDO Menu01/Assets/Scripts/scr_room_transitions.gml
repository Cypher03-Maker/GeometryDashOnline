///scr_room_transitions(room, Transition)

if(!instance_exists(obj_Transitions)) {
    with(instance_create(0, 0, obj_Transitions)) {
        NextRoom = argument[0];
        
        Transition = argument[1];
        
        if (Transition != Transitions.Fade) {
            room_goto(NextRoom)
        }
    }
}
