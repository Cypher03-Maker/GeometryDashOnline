///scr_room_switch()

switch(group_id) {
    case 0:
        scr_room_transitions(rmMenu01, TransitionGen)
    break;
    
    case 1:
        scr_room_transitions(rmCustom, TransitionGen)
    break;
    
    case 2:
        scr_room_transitions(rmMenu02, TransitionGen)
    break;
    
    case 3:
        scr_room_transitions(rmTheShop01, Transitions.SlideBounceOut)
    break;
    
    case 4:
        scr_room_transitions(rmCustom, Transitions.SlideDown)
    break;
    
    case 5:
        scr_room_transitions(rmOtherGames, TransitionGen)
    break;
    
    case 6:
        scr_room_transitions(rmSettings, TransitionGen)
    break;
    
    case 7:
        scr_room_transitions(rmMenuLevels, TransitionGen)
    break;
    
    case 8:
        scr_room_transitions(rmLevelTest, TransitionGen)
    break;
}
