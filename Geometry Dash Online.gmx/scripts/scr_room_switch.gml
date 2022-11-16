#define scr_room_switch
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
        audio_stop_sound(menuLoop)
    break;
    
    case 9:
        scr_room_transitions(rmLevelEditor, TransitionGen)
        audio_stop_sound(menuLoop)
    break;
}

#define scr_pauseGame
instance_create(0, 0, obj_Pause)

#define scr_resumeGame
instance_destroy(obj_Pause);
global.Pause = false;
obj_GDOControler.alarm[1] = 10;
instance_destroy(object_index);

#define scr_returnMenu
scr_room_transitions(rmMenuLevels, TransitionGen);
audio_stop_sound(StereoMadness)
audio_stop_sound(BackOnTrack)
audio_stop_sound(Polargeist)
audio_stop_sound(DryOut)
audio_stop_sound(BaseAfterBase)
obj_GDOControler.alarm[1] = 10;