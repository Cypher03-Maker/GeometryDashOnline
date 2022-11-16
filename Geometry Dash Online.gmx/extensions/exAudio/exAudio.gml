#define ex_audio_class_add_sound
///ex_audio_class_add_sound(soundName, className)

var _sound_name     = argument[0];
var _class_name     = argument[1];
var _sound_list     = obj_ex_audio._ex_audio_sounds;
var _classes_list   = obj_ex_audio._ex_audio_classes;
var _class_list     = -1;
var _sound_resource = -1;
var _autoincrement  = 0;

// check name column of classes parent grid
_class_list = ex_audio_class_get_index(_class_name);

// get sound resource
_sound_resource = ex_audio_get_asset_index(_sound_name);

// resize audio class list and set autoincrement
if (ds_grid_height(_class_list) <= 0) {
    ds_grid_resize(_class_list, 4, 1);
    ds_grid_clear(_class_list, "");
} else {
    ds_grid_resize(_class_list, 4, ds_grid_height(_class_list)+1);
    _autoincrement = ds_grid_height(_class_list)-1;
}

// add sound to class list
ds_grid_set(_class_list, 0, _autoincrement, _sound_name);     // name
ds_grid_set(_class_list, 1, _autoincrement, _sound_resource); // sound id
ds_grid_set(_class_list, 2, _autoincrement, 0);               // has played
ds_grid_set(_class_list, 3, _autoincrement, 0);               // is latter

// add to unique list
var _cy = ds_grid_value_y(_classes_list, 0, 0, 0, ds_grid_height(_classes_list), string( _class_name ));
if (_cy < 0) {
    if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, could not find class with name "'+string( _class_name )+'"');
    }
    return -1;
}

var _list_unique_items        = _classes_list[# 2, _cy];
var _list_unique_items_last   = _classes_list[# 3, _cy];
var _list_unique_items_offset = _classes_list[# 4, _cy];

//show_debug_message(_list_unique_items);
ds_list_add(_list_unique_items, _sound_name);

if (ex_audio_get_debug_mode()) {
    show_debug_message('exAudio: Added sound with name "'+string( _sound_name )+'" to audio class "'+_class_name+'" ['+string( _class_list)+ ', ' +string( _autoincrement )+']'+'');
}

//
// return grid y position
return _autoincrement;



#define ex_audio_class_clear
///ex_audio_class_clear(className)

var _name = argument[0];

// get class grid
var _list = ex_audio_class_get_index(_name);

// check if classes exist first
if (_list < 0) {
    
    if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, trying to access non-existing class with name "'+string( _name )+'"');
    }
    
    return 0;

}

ds_grid_clear(_list, "");
ds_grid_resize(_list, ds_grid_width(_list), 1);

// add to unique list
var _classes_list = obj_ex_audio._ex_audio_classes;
var _cy = ds_grid_value_y(_classes_list, 0, 0, 0, ds_grid_height(_classes_list), string( _name ));
if (_cy < 0) {
    if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, could not find class with name "'+string( _name )+'"');
    }
    return -1;
}

var _list_unique_items = _classes_list[# 2, _cy];
var _list_unique_items_last = _classes_list[# 3, _cy];
var _list_unique_items_offset = _classes_list[# 4, _cy];

if (not ds_list_empty(_list_unique_items)) { ds_list_clear(_list_unique_items); }
if (not ds_list_empty(_list_unique_items_last)) { ds_list_clear(_list_unique_items_last); }
if (not ds_list_empty(_list_unique_items_offset)) { ds_list_clear(_list_unique_items_offset); }

if (ex_audio_get_debug_mode()) {
    show_debug_message('exAudio: Cleared all sounds from class "'+string( _name )+'"');
}

return 1;


#define ex_audio_class_count
///ex_audio_class_count()

var _classes_list = obj_ex_audio._ex_audio_classes;

if (not ds_exists(_classes_list, ds_type_grid)) {
    return 0;
}

if (ds_grid_height(_classes_list) < 2) {

	if (ds_grid_get(_classes_list, 0, 0) == "") {
		return 0;
	}

}

return ds_grid_height(_classes_list);


#define ex_audio_class_count_sounds
///ex_audio_class_count_sounds(className)

var _name = argument[0];
var _list = ex_audio_class_get_index(_name);

if (not ds_exists(obj_ex_audio._ex_audio_classes, ds_type_grid)) {
    return 0;
}

if (_list < 0) {

    if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, trying to access non-existing class with name "'+string( _name )+'"');
    }
    
    return 0;

}

if (ds_grid_height(_list) < 1) {
	
	return 0;
}

// ds resize workaround
if (is_string( ds_grid_get(_list, 0, 0) )) {

	if (ds_grid_height(_list) < 2) {
		if (ds_grid_get(_list, 0, 0) == "") {
			return 0;
		}
	}

} else {
	return 0;
}

return ds_grid_height(_list);


#define ex_audio_class_create
///ex_audio_class_create(className)

var _list           = obj_ex_audio._ex_audio_classes;
var _list_max_size  = 5;
var _name           = argument[0];
var _class_list     = -1;
var _autoincrement  = 0;

// create or update the classes list
if (ds_exists(_list, ds_type_grid)) {

// workaround
if (_list[# 0, 0] == "") {

	} else {

		ds_grid_resize(_list, _list_max_size, ds_grid_height(_list)+1);
		_autoincrement = ds_grid_height(_list)-1;

	}
    
} else {
    obj_ex_audio._ex_audio_classes = ds_grid_create(_list_max_size, 1);
    _list = obj_ex_audio._ex_audio_classes;
}

// create a new class grid
_class_list = ds_grid_create(5, 0);

var _unique_list_previous = ds_list_create();
var _unique_list_last     = ds_list_create();
var _unique_list_offset   = ds_list_create();

// add new grid
ds_grid_set(_list, 0, _autoincrement, _name);       // name
ds_grid_set(_list, 1, _autoincrement, _class_list); // class grid
ds_grid_set(_list, 2, _autoincrement, _unique_list_previous); // unique items list
ds_grid_set(_list, 3, _autoincrement, _unique_list_last); // unique last items list
ds_grid_set(_list, 4, _autoincrement, _unique_list_offset); // offset list

var _y = ds_grid_value_y(_list, 0, 0, 1, ds_grid_height(_list), string( _name ));

if (ex_audio_get_debug_mode()) {
    show_debug_message('exAudio: Created audio class with name "'+string( _name )+'" ['+string( _y )+']');
}


#define ex_audio_class_destroy
///ex_audio_class_destroy(className)

var _class_name     = argument[0];
var _classes_list   = obj_ex_audio._ex_audio_classes;
var _class_list     = -1;

// check name column of classes parent grid
var _y = ds_grid_value_y(_classes_list, 0, 0, 0, ds_grid_height(_classes_list), string( _class_name ));

_class_list = ds_grid_get(_classes_list, 1, _y);

// destroy lists
var _list_unique_items        = _classes_list[# 2, _y];
var _list_unique_items_last   = _classes_list[# 3, _y];
var _list_unique_items_offset = _classes_list[# 4, _y];

if (ds_exists(_list_unique_items, ds_type_list)) {
	ds_list_destroy(_list_unique_items);
}
if (ds_exists(_list_unique_items_last, ds_type_list)) {
	ds_list_destroy(_list_unique_items_last);
}

if (ds_exists(_list_unique_items_offset, ds_type_list)) {
	ds_list_destroy(_list_unique_items_offset);
}

// remove class index
if (ds_grid_height(_classes_list) < 2) {

    ds_grid_clear(_classes_list, "");
    ds_grid_resize(_classes_list, ds_grid_width(_classes_list), 1);

} else {
    ex_audio_ds_grid_delete_y(_classes_list, _y, true);
}

ds_grid_destroy(_class_list);

if (ex_audio_get_debug_mode()) {
    show_debug_message('exAudio: Destroyed audio class with name "'+string( _class_name )+'" ['+string( _y )+']');
}

return 1;



#define ex_audio_class_exists
///ex_audio_class_exists(className)

var _name = argument[0];
var _list = ex_audio_class_get_index(_name);

if (_list < 0) {
    return 0;    
} else {
    return 1;
}


#define ex_audio_class_get_index
///ex_audio_class_get_index(className)

var _class_name     = argument[0];
var _classes_list   = obj_ex_audio._ex_audio_classes;
var _class_list     = -1;

// check if classes exist first
if (ex_audio_class_count() < 1) {
	return -1;
}

// check name column of classes parent grid
var _cy = ds_grid_value_y(_classes_list, 0, 0, 0, ds_grid_height(_classes_list), string( _class_name ));
if (_cy < 0) {
    if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, could not find class with name "'+string( _class_name )+'"');
    }
    return -1;
}

// get class list
_class_list = ds_grid_get(_classes_list, 1, _cy);

return _class_list;


#define ex_audio_class_get_name
///ex_audio_class_get_name(index)

var _class_index  = argument[0];
var _classes_list = obj_ex_audio._ex_audio_classes;
var _class_list   = "";

if (_classes_list < 0) {
return "";
}

if (_class_index < 0 or _class_index > ds_grid_height(_classes_list)) {
    return "";
}

// get class list
_class_list = ds_grid_get(_classes_list, 0, _class_index);

return _class_list;



#define ex_audio_class_pause
///ex_audio_class_pause(className)

var _name = argument[0];
var _list = ex_audio_class_get_index(_name);

if (_list < 0) {
    
    if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, trying to access non-existing class with name "'+string( _name )+'"');
    }
    
    return 0;

}

var _list_size = ds_grid_height(_list);
var _result    = 0;

// loop through all sounds in the group
for (var _i=0; _i < _list_size; ++_i) {
    
    _result += 1;
	ex_audio_pause( _list[# _ex_audio._name, _i] );
    
}

if (ex_audio_get_debug_mode()) {
    show_debug_message('exAudio: Paused all sounds with class "'+string( _name )+'", '+string( _result )+' in total');
}

return _result;


#define ex_audio_class_play
///ex_audio_class_play(className, loop)

var _name = argument[0];
var _list = ex_audio_class_get_index(_name);
var _loop = false;

if (argument_count >= 2) {
	_loop = argument[1];
}

if (_list < 0) {
    
    if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, trying to access non-existing class with name "'+string( _name )+'"');
    }
    
    return 0;

}

var _list_size = ds_grid_height(_list);
var _result    = 0;

// loop through all sounds in the group
for (var _i=0; _i < _list_size; ++_i) {
    
    _result += 1;
	ex_audio_play( _list[# _ex_audio._name, _i], _loop );
    
}

if (ex_audio_get_debug_mode()) {
    show_debug_message('exAudio: Playing all sounds with class "'+string( _name )+'", '+string( _result )+' in total, looping "'+string(_loop)+'"');
}

return _result;



#define ex_audio_class_play_unique
///ex_audio_class_play_unique(className, pitchMin, pitchMax)

var _name = argument[0];
var _list = ex_audio_class_get_index(_name);

if (_list < 0) {
    
    if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, trying to access non-existing class with name "'+string( _name )+'"');
    }

    return 0;
}

//ds resize bug workaround
if (ds_grid_get(_list, 0, 0) == "" and ds_grid_height(_list) < 2) {

    if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Warning, no sounds exist in class with name "'+string( _name )+'"');
    }

    return 0;
}

var _sounds_list    = obj_ex_audio._ex_audio_sounds;
var _list_size      = ds_grid_height(_list);
var _choice         = irandom_range(0, _list_size-1);
var _played         = 0;
var _latter_average = _list_size/3;
var _sound          = -1;
var _pitch_min      = 1.0;
var _pitch_max      = 1.0;

if (_latter_average == 1) {
    _latter_average = 0.5;
}

var _classes_list = obj_ex_audio._ex_audio_classes;
// get lists
var _cy = ds_grid_value_y(_classes_list, 0, 0, 0, ds_grid_height(_classes_list), string( _name ));
if (_cy < 0) {
    if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, could not find class with name "'+string( _name )+'"');
    }
    return -1;
}

// lists
var _list_unique_items = _classes_list[# 2, _cy];
var _list_unique_items_last = _classes_list[# 3, _cy];
var _list_unique_items_offset = _classes_list[# 4, _cy];

var _toplay = string( ex_audio_ds_list_random_unique(_list_unique_items, _list_unique_items_last, _list_unique_items_offset) );

var _sound = ds_grid_get(_sounds_list, 0, ex_audio_get_index(string(_toplay)));

if (ex_audio_get_debug_mode()) {
    show_debug_message('exAudio: Playing unique sound "'+_sound+'" from class "'+string( _name )+'"');
}

// set random pitch within range if applicable
if (argument_count >= 2) {
    ex_audio_set_pitch(_sound, random_range(argument[1], argument[2]));
}

// play rolled sound
ex_audio_play(_sound);

return _sound;


#define ex_audio_class_remove_sound
///ex_audio_class_remove_sound(soundName, className)

var _sound_name = argument[0];
var _class_name = argument[1];

// get class grid
_list = ex_audio_class_get_index(_class_name);

// check name column
var _y = ds_grid_value_y(_list, 0, 0, 1, ds_grid_height(_list), string( _sound_name ));
if (_y < 0) {

    if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, could not find class with name "'+string( _class_name )+'"');
    }
    return 0;
    
}

// remove row
if (ds_grid_height(_list) < 2) {
    ds_grid_clear(_list, ""); //ds resize bug workaround
} else {
    ds_grid_set_grid_region(_list, _list, 0, _y+1, ds_grid_width(_list)-1, _y+1, 0, _y);
    ds_grid_resize(_list, ds_grid_width(_list), ds_grid_height(_list)-1);
}

// remove from unique list
var _classes_list   = obj_ex_audio._ex_audio_classes;
var _cy = ds_grid_value_y(_classes_list, 0, 0, 0, ds_grid_height(_classes_list), string( _class_name ));
if (_cy < 0) {
    if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, could not find class with name "'+string( _class_name )+'"');
    }
    return -1;
}

var _list_unique_items = _list[# 2, _cy];
var _list_unique_items_last = _list[# 3, _cy];
//var _list_unique_items_offset = _list[# 4, _cy];

ds_list_delete(_list_unique_items, _sound_name);
ds_list_delete(_list_unique_items_last, _sound_name);
//ds_list_delete(_list_unique_items_offset, _sound_name);

if (ex_audio_get_debug_mode()) {
    show_debug_message('exAudio: Removed sound with name "'+string( _sound_name )+'" from class "'+_class_name+'"');
}

return 1;



#define ex_audio_class_resume
///ex_audio_class_resume(className)

var _name = argument[0];
var _list = ex_audio_class_get_index(_name);

//ds resize bug workaround
if (ds_grid_get(_list, 0, 0) == "" and ds_grid_height(_list) < 2) {

if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Warning, no sounds exist in class with name "'+string( _name )+'"');
    }

return 0;
}

if (_list < 0) {
    
    if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, trying to access non-existing class with name "'+string( _name )+'"');
    }
    
    return 0;

}

var _list_size = ds_grid_height(_list);
var _result    = 0;

// loop through all sounds in the group
for (var _i=0; _i < _list_size; ++_i) {
    
    _result += 1;
    ex_audio_resume( ds_grid_get(_list, 0, _i) );
    
}

if (ex_audio_get_debug_mode()) {
    show_debug_message('exAudio: Resumed all sounds with class "'+string( _name )+'", '+string( _result )+' in total');
}

return _result;



#define ex_audio_class_set_pitch
///ex_audio_class_set_pitch(className, value, duration, easing)

var _name     = argument[0];
var _list     = ex_audio_class_get_index(_name);
var _pitch    = argument[1];
var _duration = 0;
var _easing   = -1;

if (_list < 0) {
    
    if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, trying to access non-existing class with name "'+string( _name )+'"');
    }
    
    return 0;

}

if (ds_grid_height(_list) < 1) {
	
	if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Warning, no sounds exist in class with name "'+string( _name )+'"');
    }
	
	return 0;
}

var _list_size = ds_grid_height(_list);
var _result    = 0;

// set easing
if (argument_count >= 4) {
    _easing = argument[3];
}

// set duration
if (argument_count >= 3) {
    _duration = argument[2];
}

// loop through all sounds in the group
for (var _i=0; _i < _list_size; ++_i) {
    
    _result += 1;
    
    // set pitch with optional arguments
    if (argument_count >= 4) {
        ex_audio_set_pitch( ds_grid_get(_list, 0, _i), _pitch, _duration, _easing );
    } else if (argument_count >= 3) {
        ex_audio_set_pitch( ds_grid_get(_list, 0, _i), _pitch, _duration);
    } else {
        ex_audio_set_pitch( ds_grid_get(_list, 0, _i), _pitch);    
    }
    
}

if (ex_audio_get_debug_mode()) {
    show_debug_message('exAudio: Setting pitch of all sounds with class "'+string( _name )+'", '+string( _result )+' in total to "'+string( _pitch )+'"');
}

return _result;


#define ex_audio_class_set_position
///ex_audio_class_set_position(className, x, y, z)

var _name = argument[0];
var _position_x = argument[1];
var _position_y = argument[2];
var _position_z = argument[3];
var _list = ex_audio_class_get_index(_name);

if (_list < 0) {

    if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, trying to access non-existing class with name "'+string( _name )+'"');
    }
    
    return 0;

}

if (ds_grid_height(_list) < 1) {
	
	if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Warning, no sounds exist in class with name "'+string( _name )+'"');
    }
	
	return 0;
	
}

var _list_size = ds_grid_height(_list);
var _result    = 0;

// loop through all sounds in the group
for (var _i=0; _i < _list_size; ++_i) {
    
// get sound emitter
var _emitter = ds_grid_get(_list, 2, _i);

audio_emitter_position(_emitter, _position_x, _position_y, _position_z);

// set position
ds_grid_set(_list, 7, _i, _position_x);
ds_grid_set(_list, 8, _i, _position_y);
ds_grid_set(_list, 9, _i, _position_z);
    
}

return 1;


#define ex_audio_class_set_volume
///ex_audio_class_set_volume(className, value, duration, easing)

var _name     = argument[0];
var _list     = ex_audio_class_get_index(_name);
var _volume   = argument[1];
var _duration = 0;
var _easing   = -1;

if (_list < 0) {
    
    if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, trying to access non-existing class with name "'+string( _name )+'"');
    }
    
    return 0;

}

if (ds_grid_height(_list) < 1) {
	
	if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Warning, no sounds exist in class with name "'+string( _name )+'"');
    }
	
	return 0;
}


//ds resize bug workaround
if (ds_grid_get(_list, 0, 0) == "") {

	if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Warning, no sounds exist in class with name "'+string( _name )+'"');
    }

	return 0;
}

var _list_size = ds_grid_height(_list);
var _result    = 0;

// set easing
if (argument_count >= 4) {
    _easing = argument[3];
}

// set duration
if (argument_count >= 3) {
    _duration = argument[2];
}

// loop through all sounds in the group
for (var _i=0; _i < _list_size; ++_i) {
    
    _result += 1;
    
    // set volume with optional arguments
    if (argument_count >= 4) {
        ex_audio_set_volume( ds_grid_get(_list, 0, _i), _volume, _duration, _easing );
    } else if (argument_count >= 3) {
        ex_audio_set_volume( ds_grid_get(_list, 0, _i), _volume, _duration);
    } else {
        ex_audio_set_volume( ds_grid_get(_list, 0, _i), _volume);    
    }
    
}

if (ex_audio_get_debug_mode()) {
    show_debug_message('exAudio: Setting volume of all sounds with class "'+string( _name )+'", '+string( _result )+' in total to "'+string( _volume )+'"');
}

return _result;


#define ex_audio_class_stop
///ex_audio_class_stop(className)

var _name = argument[0];
var _list = ex_audio_class_get_index(_name);

if (_list < 0) {

    if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, trying to access non-existing class with name "'+string( _name )+'"');
    }
    
    return 0;

}

var _list_size = ds_grid_height(_list);
var _result    = 0;

// loop through all sounds in the group
for (var _i=0; _i < _list_size; ++_i) {
    
    _result += 1;
    ex_audio_stop( ds_grid_get(_list, 0, _i) );
    
}

if (ex_audio_get_debug_mode()) {
    show_debug_message('exAudio: Stopped all sounds with class "'+string( _name )+'", '+string( _result )+' in total');
}

return _result;


#define ex_audio_copy
///ex_audio_copy(name, copyName)

var _name      = argument[0];
var _copy_name = argument[1];

if (ex_audio_get_debug_mode()) {
    show_debug_message('exAudio: Copying sound with name "'+string( _name )+'" to '+string( _copy_name )+'"');
}

// check name column
var _y = ex_audio_get_index(_name);
if (_y < 0) {

    if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, cannot copy sound with "'+string( _name )+'" does not exist');
    }
    
    return 0;
}

// do not copy if sound is external
if (ds_grid_get(_list, 22, _y) == 1) {
    
    if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, cannot copy sound with "'+string( _name )+'" because original sound is external stream');
    }
    
    return 0;
}

var _list           = obj_ex_audio._ex_audio_sounds;
var _list_max_size  = 23;
var _autoincrement  = 0;

// update the sounds list
if (ds_exists(_list, ds_type_grid)) {
    ds_grid_resize(_list, _list_max_size, ds_grid_height(_list)+1);
    _autoincrement = ds_grid_height(_list)-1;
} else {
    
    if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, cannot copy sound with "'+string( _name )+'", no loaded sounds exist');
    }
    
    return 0;
}

// create audio emitter
_audio_emitter = audio_emitter_create();

// add sound to list
_list[# _ex_audio._name,                 _autoincrement] = _copy_name;
_list[# _ex_audio._resource,             _autoincrement] = _list[# _ex_audio._resource, _y];
_list[# _ex_audio._emitter,              _autoincrement] = _audio_emitter;
_list[# _ex_audio._position,             _autoincrement] = -1;
_list[# _ex_audio._position_previous,    _autoincrement] = 0;
_list[# _ex_audio._duration,             _autoincrement] = _list[# _ex_audio._duration, _y];
_list[# _ex_audio._priority,             _autoincrement] = _list[# _ex_audio._priority, _y];
_list[# _ex_audio._volume,               _autoincrement] = _list[# _ex_audio._volume, _y];
_list[# _ex_audio._pitch,                _autoincrement] = _list[# _ex_audio._pitch, _y];
_list[# _ex_audio._x,                    _autoincrement] = _list[# _ex_audio._x, _y];
_list[# _ex_audio._y,                    _autoincrement] = _list[# _ex_audio._y, _y];
_list[# _ex_audio._z,                    _autoincrement] = _list[# _ex_audio._z, _y];
_list[# _ex_audio._falloff_ref,          _autoincrement] = _list[# _ex_audio._falloff_ref, _y];
_list[# _ex_audio._falloff_max,          _autoincrement] = _list[# _ex_audio._falloff_max, _y];
_list[# _ex_audio._falloff_factor,       _autoincrement] = _list[# _ex_audio._falloff_factor, _y];
_list[# _ex_audio._suspended,            _autoincrement] = _list[# _ex_audio._suspended, _y];
_list[# _ex_audio._playing,              _autoincrement] = false;
_list[# _ex_audio._paused,               _autoincrement] = false;
_list[# _ex_audio._looping,              _autoincrement] = false;
_list[# _ex_audio._velocity_x,           _autoincrement] = _list[# _ex_audio._velocity_x, _y];
_list[# _ex_audio._velocity_y,           _autoincrement] = _list[# _ex_audio._velocity_y, _y];
_list[# _ex_audio._velocity_z,           _autoincrement] = _list[# _ex_audio._velocity_z, _y];
_list[# _ex_audio._last_started,         _autoincrement] = _list[# _ex_audio._last_started, _y];
_list[# _ex_audio._channel,              _autoincrement] = _list[# _ex_audio._channel, _y];
_list[# _ex_audio._audio_group,          _autoincrement] = _list[# _ex_audio._audio_group, _y];
_list[# _ex_audio._external,             _autoincrement] = _list[# _ex_audio._external, _y];
_list[# _ex_audio._fade_volume_start,    _autoincrement] = -1;
_list[# _ex_audio._fade_volume_end,      _autoincrement] = -1;
_list[# _ex_audio._fade_volume_position, _autoincrement] = -1;
_list[# _ex_audio._fade_volume_easing,   _autoincrement] = -1;
_list[# _ex_audio._fade_volume_duration, _autoincrement] = -1;
_list[# _ex_audio._fade_pitch_start,     _autoincrement] = -1;
_list[# _ex_audio._fade_pitch_end,       _autoincrement] = -1;
_list[# _ex_audio._fade_pitch_position,  _autoincrement] = -1;
_list[# _ex_audio._fade_pitch_easing,    _autoincrement] = -1;
_list[# _ex_audio._fade_pitch_duration,  _autoincrement] = -1;

// update audio classes
var _classes        = ex_audio_get_classes(_name);
var _classes_number = ex_audio_get_classes_number(_name);

for (var _i=0; _i < _classes_number; ++_i) {
    ex_audio_class_add_sound(_copy_name, _classes[_i]);
}

    
if (ex_audio_get_debug_mode()) {
    show_debug_message('exAudio: Updated classes of copied sound "'+string( _copy_name )+'"');
}

if (ex_audio_get_debug_mode()) {
    show_debug_message('exAudio: Finished copying sound with name "'+string( _name )+'" to '+string( _copy_name )+'"');
}

// return grid y position
return _autoincrement;


#define ex_audio_count
///ex_audio_count()

//gml_pragma("forceinline"); 



var _list = obj_ex_audio._ex_audio_sounds;

if (_list == -1) {
return 0;
}

var _ds_height = ds_grid_height(_list);

if (_ds_height < 2) {

if (_list[# 0, 0] == "") {
return 0;
}

}

return _ds_height;


#define ex_audio_ds_grid_delete_y
// for internal use
 
var _grid   = argument[0];
var _y      = argument[1];
var _shift  = false;

if (argument_count >= 3) {
    _shift = argument[2];
}

var _grid_width  = ds_grid_width(_grid);
var _grid_height = ds_grid_height(_grid);

if (_grid_height < 2) {

    ds_grid_clear(_grid, "");
    ds_grid_resize(_grid, ds_grid_width(_grid), 1);

    return 0;
}


if (_shift == true) {

    ds_grid_set_grid_region(_grid, _grid, 0, _y+1, _grid_width-1, _y+1, 0, _y);
    for (var _i=_y; _i <= ds_grid_height(_grid); ++_i) {
        ds_grid_set_grid_region(_grid, _grid, 0, _i+1, _grid_width-1, _i+1, 0, _i);    
    }
    
} else {
    
    ds_grid_set_grid_region(_grid, _grid, 0, _y+1, _grid_width-1, _grid_height-_y, 0, _y);
    
}

ds_grid_resize(_grid, _grid_width, _grid_height-1);

return 1;

#define ex_audio_ds_list_random_unique
// for internal use
 
var _list              = argument[0];
var _list_previous     = argument[1];
var _list_previous_ext = argument[2];

// set last offset to half of the list size
var _last_offset = floor(ds_list_size(_list)/2);

if (argument_count >= 4) {
    _last_offset = _last_offset+argument[3];
    // if offset exceeds or equals list size, decrement by 2 items
    if (_last_offset >= ds_list_size(_list)) {
       _last_offset = ds_list_size(_list)-2; 
    }
}

// if listPrevious size is equal to listItems, clear it so we choose items again randomized in new order
if (ds_list_size(_list) == ds_list_size(_list_previous)) {
    ds_list_clear(_list_previous);
}

// randomize listItems
ds_list_shuffle(_list);

// loop through all listItems until it finds an item that has not occurred before
var _list_size = ds_list_size(_list);
for (var _i=0; _i<= _list_size; ++_i) {
    
    // get current item from listItems
    var _value = ds_list_find_value(_list, _i);
    
    // try to find if it exists in the listPrevious
    var _value_exists = -1;
    _value_exists = ds_list_find_index(_list_previous, _value);
    
    // try to find if it exists in the listPreviousOffset
    var _value_exists_ext = -1;
    _value_exists_ext = ds_list_find_index(_list_previous_ext, _value);
    
    if (_value_exists <= -1) {
        
        // if list has more than 2 items, then account for an offset
        if ( ds_list_size(_list) >= 3) {
            if (_value_exists_ext <= -1) {
            
                if (ds_list_size(_list_previous) == ds_list_size(_list)-(_last_offset)-1) {
                    
                    // clear listPreviousOffset if threshold to last entries has been reached
                    ds_list_clear(_list_previous_ext);
                } else if (ds_list_size(_list_previous) > ds_list_size(_list)-(_last_offset)) {
                    
                    // store value to listPreviousOffset
                    ds_list_add(_list_previous_ext, _value);
                }
                
            } else {
                // just continue until next unique value
                continue;
            }
        }
        
        // add the value to the previous list and return it
        ds_list_add(_list_previous, _value);
        
        return _value;
        
    } else {
        // just continue until next unique value
        continue;
    }

}

return "";

#define ex_audio_exists
///ex_audio_exists(name)

//gml_pragma("forceinline"); 

var _name = argument[0];
var _list = ex_audio_get_index(_name);

if (_list < 0) {
    return 0;    
} else {
    return 1;
}


#define ex_audio_get_asset_index
///ex_audio_get_asset_index(name)

//gml_pragma("forceinline"); 

var _name = argument[0];
var _list = obj_ex_audio._ex_audio_sounds;
var _sound = -1;

var _y = ex_audio_get_index(_name);
if (_y < 0) {
    return 0;
}

// get sound resource
return _list[# 1, _y];



#define ex_audio_get_asset_name
///ex_audio_get_asset_name(name)

//gml_pragma("forceinline"); 

var _name = argument[0];
var _list = obj_ex_audio._ex_audio_sounds;
var _sound = "";

var _y = ex_audio_get_index(_name);
if (_y < 0) {
    return "";
}

return audio_get_name( _list[# _ex_audio._resource, _y] );


#define ex_audio_get_channel
///ex_audio_get_channel(name)

//gml_pragma("forceinline"); 

var _name    = argument[0];
var _list    = obj_ex_audio._ex_audio_sounds;
var _channel = -1;

var _y = ex_audio_get_index(_name);
if (_y < 0) {
return -1;
}

// get channel
return _list[# _ex_audio._channel, _y];


#define ex_audio_get_channel_number
///ex_audio_get_channel_number()

//gml_pragma("forceinline"); 

return obj_ex_audio._ex_audio_channel_number;


#define ex_audio_get_classes
///ex_audio_get_classes(name)

var _sound_name        = argument[0];
var _classes_list      = obj_ex_audio._ex_audio_classes;
var _classes_list_size = ds_grid_height(_classes_list);
var _class_list        = -1;
var _class_name        = -1;

var _classes_array;

_classes_array[0] = "";

var _classes_array_index = 0;

for (var _i=0; _i < _classes_list_size; ++_i) {
    
    _class_name = ds_grid_get(_classes_list, 0, _i);
    _class_list = ds_grid_get(_classes_list, 1, _i);

    var _class_list_size = ds_grid_height(_class_list);
    
    for (var _i2=0; _i2 < _class_list_size; _i2++) {
    
        var _current_sound_name = ds_grid_get(_class_list, 0, _i2);
        
        if (_sound_name == _current_sound_name) {
            
            _classes_array[_classes_array_index] = _class_name;
            _classes_array_index += 1;
            
        }
    
    }

}

return _classes_array;



#define ex_audio_get_classes_number
///ex_audio_get_classes_number(name)

var _sound_name        = argument[0];
var _classes_list      = obj_ex_audio._ex_audio_classes;
var _classes_list_size = ds_grid_height(_classes_list);
var _class_list        = -1;

var _result = 0;

for (var _i=0; _i < _classes_list_size; ++_i) {
    
    _class_list = ds_grid_get(_classes_list, 1, _i);

    var _class_list_size = ds_grid_height(_class_list);
    
    for (var _i2=0; _i2 < _class_list_size; _i2++) {
    
        var _current_sound_name = ds_grid_get(_class_list, 0, _i2);
        
        if (_sound_name == _current_sound_name) {
            
            _result += 1;
            
        }
    
    }

}

return _result;


#define ex_audio_get_debug_mode
///ex_audio_get_debug_mode()

return obj_ex_audio._ex_audio_debug_mode;


#define ex_audio_get_emitter
///ex_audio_get_emitter(name)

var _name    = argument[0];
var _list    = obj_ex_audio._ex_audio_sounds;
var _emitter = -1;

var _y = ex_audio_get_index(_name);
if (_y < 0) {
	return -1;
}

return _list[# _ex_audio._emitter, _y];



#define ex_audio_get_falloff_factor
///ex_audio_get_falloff_factor(name)

var _list = obj_ex_audio._ex_audio_sounds;
var _name = argument[0];

// check name column
var _y = ex_audio_get_index(_name);
if (_y < 0) {
	return 0;
}

// return property
return ds_grid_get(_list, 12, _y);



#define ex_audio_get_falloff_max
///ex_audio_get_falloff_max(name)

var _list = obj_ex_audio._ex_audio_sounds;
var _name = argument[0];

// check name column
var _y = ex_audio_get_index(_name);
if (_y < 0) {
	return 0;
}

// return property
return ds_grid_get(_list, 11, _y);


#define ex_audio_get_falloff_model
///ex_audio_get_falloff_model()

return obj_ex_audio._ex_audio_falloff_model;


#define ex_audio_get_falloff_ref
///ex_audio_get_falloff_ref(name)

var _list = obj_ex_audio._ex_audio_sounds;
var _name = argument[0];

// check name column
var _y = ex_audio_get_index(_name);
if (_y < 0) {
	return 0;
}

// return property
return ds_grid_get(_list, 10, _y);



#define ex_audio_get_group
///ex_audio_get_group(name)

var _name = argument[0];
var _list = obj_ex_audio._ex_audio_sounds;
var _sound = "";

var _y = ex_audio_get_index(_name);
if (_y < 0) {
    return -1;
}

return _list[# _ex_audio._audio_group, _y];



#define ex_audio_get_index
///ex_audio_get_index(name)

//gml_pragma("forceinline"); 

var _name = argument[0];
var _list = obj_ex_audio._ex_audio_sounds;

// check if sounds exist first
if (ex_audio_count() < 1) {
return -1;
}

var _y = ds_grid_value_y(_list, 0, 0, 1, ds_grid_height(_list), _name);
if (_y < 0) {
    if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, could not find sound with name "'+string(_name)+'"');
    }
    _y = -1;
}

return _y;



#define ex_audio_get_name
///ex_audio_get_name(index)

var _sound_index = argument[0];
var _sounds_list = obj_ex_audio._ex_audio_sounds;
var _out_name  = "";

if (_sounds_list < 0) {
	return "";
}

if (_sound_index < 0 or _sound_index > ds_grid_height(_sounds_list)) {
    return "";
}

// get sound name
_out_name = ds_grid_get(_sounds_list, 0, _sound_index);

return _out_name;



#define ex_audio_get_pitch
///ex_audio_get_pitch(name)

var _name = argument[0];
var _list = obj_ex_audio._ex_audio_sounds;
var _sound = -1;

var _y = ex_audio_get_index(_name);
if (_y < 0) {
	return 0;
}

// get pitch
_sound = ds_grid_get(_list, 6, _y);

return _sound;



#define ex_audio_get_position_x
///ex_audio_get_position_x(name)

var _list = obj_ex_audio._ex_audio_sounds;
var _name = argument[0];

// check name column
var _y = ex_audio_get_index(_name);
if (_y < 0) {
	return 0;
}

// return property
return ds_grid_get(_list, 7, _y);



#define ex_audio_get_position_y
///ex_audio_get_position_y(name)

var _list = obj_ex_audio._ex_audio_sounds;
var _name = argument[0];

// check name column
var _y = ex_audio_get_index(_name);
if (_y < 0) {
	return 0;
}

// return property
return ds_grid_get(_list, 8, _y);



#define ex_audio_get_position_z
///ex_audio_get_position_z(name)

var _list = obj_ex_audio._ex_audio_sounds;
var _name = argument[0];

// check name column
var _y = ex_audio_get_index(_name);
if (_y < 0) {
	return 0;
}

// return property
return ds_grid_get(_list, 9, _y);



#define ex_audio_get_priority
///ex_audio_get_priority(name)

var _name = argument[0];
var _list = obj_ex_audio._ex_audio_sounds;
var _sound = -1;

var _y = ex_audio_get_index(_name);
if (_y < 0) {
	return 0;
}

// get priority
_sound = ds_grid_get(_list, 4, _y);

return _sound;



#define ex_audio_get_track_position
///ex_audio_get_track_position(name)

var _name    = argument[0];
var _list    = obj_ex_audio._ex_audio_sounds;
var _channel = -1;

var _y = ex_audio_get_index(_name);
if (_y < 0) {

	if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, could not find sound with name "'+string( _name )+'"');
    }

	return 0;
}

// get sound channel
_channel = ds_grid_get(_list, 20, _y);

return audio_sound_get_track_position(_channel);



#define ex_audio_get_track_duration
///ex_audio_get_track_duration(name)

var _name   = argument[0];
var _list   = obj_ex_audio._ex_audio_sounds;

var _y = ex_audio_get_index(_name);
if (_y < 0) {

	if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, could not find sound with name "'+string( _name )+'"');
    }

	return 0;
}

// get length
return audio_sound_length(ds_grid_get(_list, 1, _y));



#define ex_audio_get_velocity_x
///ex_audio_get_velocity_x(name)

var _list = obj_ex_audio._ex_audio_sounds;
var _name = argument[0];

// check name column
var _y = ex_audio_get_index(_name);
if (_y < 0) {

	if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, could not find sound with name "'+string( _name )+'"');
    }

	return 0;
}

// return property
return ds_grid_get(_list, 16, _y);


#define ex_audio_get_velocity_z
///ex_audio_get_velocity_z(name)

var _list = obj_ex_audio._ex_audio_sounds;
var _name = argument[0];

// check name column
var _y = ex_audio_get_index(_name);
if (_y < 0) {

	if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, could not find sound with name "'+string( _name )+'"');
    }

	return 0;
}

// return property
return ds_grid_get(_list, 18, _y);


#define ex_audio_get_velocity_y
///ex_audio_get_velocity_y(name)

var _list = obj_ex_audio._ex_audio_sounds;
var _name = argument[0];

// check name column
var _y = ex_audio_get_index(_name);
if (_y < 0) {

if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, could not find sound with name "'+string( _name )+'"');
    }

return 0;
}

// return property
return ds_grid_get(_list, 17, _y);


#define ex_audio_get_volume
///ex_audio_get_volume(name)

var _name = argument[0];
var _list = obj_ex_audio._ex_audio_sounds;
var _sound = -1;

// check name column
var _y = ex_audio_get_index(_name);
if (_y < 0) {

	if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, could not find sound with name "'+string( _name )+'"');
    }

	return 0;
}

// get volume
_sound = ds_grid_get(_list, 5, _y);

return _sound;


#define ex_audio_group_get_load_progress
///ex_audio_group_get_load_progress(audioGroup)

return audio_group_load_progress(argument[0]);


#define ex_audio_group_is_loaded
///ex_audio_group_is_loaded(audioGroup)

if (audio_group_is_loaded(argument[0])) {
    return 1;
} else {
    return 0;
}



#define ex_audio_group_unload
///ex_audio_group_unload(audioGroup)

var _list = obj_ex_audio._ex_audio_sounds;

if (ex_audio_count() < 1) {

	if (ex_audio_get_debug_mode()) {
		show_debug_message('exAudio: No loaded sounds exist to unload');
	}

	return 0;
}

var _list_size  = ds_grid_height(_list);
var _audiogroup = argument[0];

if (ex_audio_get_debug_mode()) {
    show_debug_message('exAudio: Started complete unloading of audio group "'+string( _audiogroup )+'"');
}

// loop through all sounds and unload those who depend on the audio group
for (var _i=0; _i < _list_size; ++_i) {
    
    var _current_name = ds_grid_get(_list, 0, _i);
    var _current_audiogroup = ds_grid_get(_list, 21, _i);
    
    if (_current_audiogroup == _audiogroup) {
        ex_audio_unload(_current_name);
        _i -= 1;
    }
    
}

if (ex_audio_get_debug_mode()) {
    show_debug_message('exAudio: Finished complete unloading of audio group "'+string( _audiogroup )+'"');
}

return 1;



#define ex_audio_has_class
///ex_audio_has_class(soundName, className)

var _sound_name     = argument[0];
var _class_name     = argument[1];
var _classes_list   = obj_ex_audio._ex_audio_classes;
var _class_list     = -1;

// check name column
_class_list = ex_audio_class_get_index(_class_name);

if (_class_list < 0) {
    
    if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, trying to access non-existing class with name "'+string( _class_name )+'"');
    }
    
    return 0;

}

if (ds_grid_height(_class_list) < 1) {
	
	if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Warning, no sounds exist in class with name "'+string( _class_name )+'"');
    }
	
	return 0;
}

var _y = ds_grid_value_y(_class_list, 0, 0, 1, ds_grid_height(_class_list), string( _sound_name ));
if (_y < 0) {

	return 0;
}

return 1;



#define ex_audio_initialize
///ex_audio_initialize()

if (instance_exists(obj_ex_audio)) {

	if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Warning, Audio system is already initialized');
    }

	return 0;
}

// create exAudio object
// @version: 1.0.0
instance_create(0, 0, obj_ex_audio); 

audio_falloff_set_model(audio_falloff_linear_distance);
obj_ex_audio._ex_audio_falloff_model = audio_falloff_linear_distance;

return 1;



#define ex_audio_is_loaded
///ex_audio_is_loaded(name)

var _name       = argument[0];
var _list       = obj_ex_audio._ex_audio_sounds;
var _audiogroup = -1;

// check name column
var _y = ds_grid_value_y(_list, 0, 0, 1, ds_grid_height(_list), string( _name ));
if (_y < 0) {

    if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, could not find sound with name "'+string( _name )+'"');
    }

    return 0;
}

// get audiogroup
_audiogroup = ds_grid_get(_list, 21, _y);

// return playing state
    
if (audio_group_is_loaded(_audiogroup)) {
    return 1;
} else {
    return 0;
}


#define ex_audio_is_looping
///ex_audio_is_looping(name)

var _name = argument[0];
var _list = obj_ex_audio._ex_audio_sounds;

// check name column
var _y = ex_audio_get_index(_name);
if (_y < 0) {

if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, could not find sound with name "'+string( _name )+'"');
    }

	return 0;
}

// return loop state
return ds_grid_get(_list, 15, _y);



#define ex_audio_is_paused
///ex_audio_is_paused(name)

//gml_pragma("forceinline"); 

var _name = argument[0];
var _list = obj_ex_audio._ex_audio_sounds;

// check name column
var _y = ex_audio_get_index(_name);
if (_y < 0) {

    if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, could not find sound with name "'+string( _name )+'"');
    }

    return 0;
}

// return paused state
return _list[# _ex_audio._paused, _y];


#define ex_audio_is_playing
///ex_audio_is_playing(name)

//gml_pragma("forceinline"); 

var _name = argument[0];
var _list = obj_ex_audio._ex_audio_sounds;
var _sound = -1;

// check name column
var _y = ex_audio_get_index(_name);
if (_y < 0) {

    if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, could not find sound with name "'+string( _name )+'"');
    }

    return 0;
}

// return playing state
return _list[# _ex_audio._playing, _y];


#define ex_audio_is_suspended
///ex_audio_is_suspended(name)

var _name = argument[0];
var _list = obj_ex_audio._ex_audio_sounds;

// check name column
var _y = ex_audio_get_index(_name);
if (_y < 0) {
	
	if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, could not find sound with name "'+string( _name )+'"');
    }

	return 0;
}

// return suspended state
return _list[# _ex_audio._suspended, _y];



#define ex_audio_listener_get_orientation_lookat_x
///ex_audio_listener_get_orientation_lookat_x()

return obj_ex_audio._ex_audio_listener[3];



#define ex_audio_listener_get_orientation_lookat_y
///ex_audio_listener_get_orientation_lookat_y()

return obj_ex_audio._ex_audio_listener[4];




#define ex_audio_listener_get_orientation_lookat_z
///ex_audio_listener_get_orientation_lookat_z()

return obj_ex_audio._ex_audio_listener[5];



#define ex_audio_listener_get_orientation_up_x
///ex_audio_listener_get_orientation_up_x()

return obj_ex_audio._ex_audio_listener[6];



#define ex_audio_listener_get_orientation_up_y
///ex_audio_listener_get_orientation_up_y()

return obj_ex_audio._ex_audio_listener[7];



#define ex_audio_listener_get_orientation_up_z
///ex_audio_listener_get_orientation_up_z()

return obj_ex_audio._ex_audio_listener[8];



#define ex_audio_listener_get_position_y
///ex_audio_listener_get_position_y()

return obj_ex_audio._ex_audio_listener[1];



#define ex_audio_listener_get_position_x
///ex_audio_listener_get_position_x()

return obj_ex_audio._ex_audio_listener[0];



#define ex_audio_listener_get_position_z
///ex_audio_listener_get_position_z()

return obj_ex_audio._ex_audio_listener[2];




#define ex_audio_listener_get_velocity_x
///ex_audio_listener_get_velocity_x()

return obj_ex_audio._ex_audio_listener[9];



#define ex_audio_listener_get_velocity_y
///ex_audio_listener_get_velocity_y()

return obj_ex_audio._ex_audio_listener[10];



#define ex_audio_listener_get_velocity_z
///ex_audio_listener_get_velocity_z()

return obj_ex_audio._ex_audio_listener[11];



#define ex_audio_listener_set_orientation
///ex_audio_listener_set_orientation(lookatX, lookatY, lookatZ, upX, upY, upZ)

var _orientation_lookat_x = argument[0];
var _orientation_lookat_y = argument[1];
var _orientation_lookat_z = argument[2];
var _orientation_up_x     = argument[3];
var _orientation_up_y     = argument[4];
var _orientation_up_z     = argument[5];

audio_listener_orientation(
    _orientation_lookat_x,
    _orientation_lookat_y,
    _orientation_lookat_z,
    _orientation_up_x,
    _orientation_up_y,
    _orientation_up_z
);

obj_ex_audio._ex_audio_listener[3] = _orientation_lookat_x;
obj_ex_audio._ex_audio_listener[4] = _orientation_lookat_y;
obj_ex_audio._ex_audio_listener[5] = _orientation_lookat_z;
obj_ex_audio._ex_audio_listener[6] = _orientation_up_x;
obj_ex_audio._ex_audio_listener[7] = _orientation_up_y;
obj_ex_audio._ex_audio_listener[8] = _orientation_up_z;



#define ex_audio_listener_reset
///ex_audio_listener_reset()

audio_listener_position(0, 0, 0);
audio_listener_velocity(0, 0, 0);
audio_listener_orientation(0, 0, 0, 0, 0, 0);

obj_ex_audio._ex_audio_listener[0] = 0;
obj_ex_audio._ex_audio_listener[1] = 0;
obj_ex_audio._ex_audio_listener[2] = 0;
obj_ex_audio._ex_audio_listener[3] = 0;
obj_ex_audio._ex_audio_listener[4] = 0;
obj_ex_audio._ex_audio_listener[5] = 0;
obj_ex_audio._ex_audio_listener[6] = 0;
obj_ex_audio._ex_audio_listener[7] = 0;
obj_ex_audio._ex_audio_listener[8] = 0;
obj_ex_audio._ex_audio_listener[9] = 0;
obj_ex_audio._ex_audio_listener[10] = 0;
obj_ex_audio._ex_audio_listener[11] = 0;

return 1;



#define ex_audio_listener_set_position
///ex_audio_listener_set_position(x, y, z)

var _position_x = argument[0];
var _position_y = argument[1];
var _position_z = argument[2];

audio_listener_position(
    _position_x,
    _position_y,
    _position_z
);

obj_ex_audio._ex_audio_listener[0] = _position_x;
obj_ex_audio._ex_audio_listener[1] = _position_y;
obj_ex_audio._ex_audio_listener[2] = _position_z;


#define ex_audio_listener_set_velocity
///ex_audio_listener_set_velocity(x, y, z)

var _velocity_x = argument[0];
var _velocity_y = argument[1];
var _velocity_z = argument[2];

audio_listener_position(
    _velocity_x,
    _velocity_y,
    _velocity_z
);

obj_ex_audio._ex_audio_listener[9] = _velocity_x;
obj_ex_audio._ex_audio_listener[10] = _velocity_y;
obj_ex_audio._ex_audio_listener[11] = _velocity_z;



#define ex_audio_load
///ex_audio_load(name, sound, classes, priority, audiogroup)

var _list           = obj_ex_audio._ex_audio_sounds;
var _list_max_size  = 36;
var _autoincrement  = 0;
var _audio_name     = argument[0];
var _audio_resource = argument[1];
var _audio_classes  = "";
var _audio_emitter  = -1;
var _audio_length   = 0;
var _audio_priority = 0;
var _audio_group    = 0;
var _audio_external = 0;

// create or update the sounds list
if (ds_exists(_list, ds_type_grid)) {
    
// workaround
if (ds_grid_get(_list, 0, 0) == "") {

	} else {

		ds_grid_resize(_list, _list_max_size, ds_grid_height(_list)+1);
		_autoincrement = ds_grid_height(_list)-1;

	}

} else {
    obj_ex_audio._ex_audio_sounds = ds_grid_create(_list_max_size, 0);
    _list = obj_ex_audio._ex_audio_sounds;
    ds_grid_resize(_list, _list_max_size, ds_grid_height(_list)+1);
}

// check if sound with the same name exists
var _y = ds_grid_value_y(_list, 0, 0, ds_grid_width(_list), ds_grid_height(_list), string( _audio_name ));
if (_y > -1) {
    if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, sound name "'+string( _audio_name )+'" already exists, sound names must be unique');
    }
    return -1;
}

// set audio priority
if (argument_count >= 4) {
    _audio_priority = argument[3];
}

// set audio group
if (argument_count >= 5) {
    _audio_group = argument[4];
}

// create audio emitter
_audio_emitter = audio_emitter_create();

// get audio duration
_audio_length = audio_sound_length(_audio_resource);

// check if external (if provided a string)
if (is_string(_audio_resource)) {
    
    _audio_external = 1;
    
    // create stream and pass it as resource
    _audio_resource = audio_create_stream(_audio_resource);
    
    // not using audio group
    _audio_group = 0;
    
    if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Created stream from sound "'+string( _audio_name )+'"');
    }
}

// add sound to the list
_list[# _ex_audio._name,                 _autoincrement] = _audio_name;
_list[# _ex_audio._resource,             _autoincrement] = _audio_resource;
_list[# _ex_audio._emitter,              _autoincrement] = _audio_emitter;
_list[# _ex_audio._position,             _autoincrement] = -1;
_list[# _ex_audio._position_previous,    _autoincrement] = 0;
_list[# _ex_audio._duration,             _autoincrement] = _audio_length;
_list[# _ex_audio._priority,             _autoincrement] = _audio_priority;
_list[# _ex_audio._volume,               _autoincrement] = 1.0;
_list[# _ex_audio._pitch,                _autoincrement] = 1.0;
_list[# _ex_audio._x,                    _autoincrement] = 0;
_list[# _ex_audio._y,                    _autoincrement] = 0;
_list[# _ex_audio._z,                    _autoincrement] = 0;
_list[# _ex_audio._falloff_ref,          _autoincrement] = 50;
_list[# _ex_audio._falloff_max,          _autoincrement] = 100;
_list[# _ex_audio._falloff_factor,       _autoincrement] = 1;
_list[# _ex_audio._suspended,            _autoincrement] = false;
_list[# _ex_audio._playing,              _autoincrement] = false;
_list[# _ex_audio._paused,               _autoincrement] = false;
_list[# _ex_audio._looping,              _autoincrement] = false;
_list[# _ex_audio._velocity_x,           _autoincrement] = 0;
_list[# _ex_audio._velocity_y,           _autoincrement] = 0;
_list[# _ex_audio._velocity_z,           _autoincrement] = 0;
_list[# _ex_audio._last_started,         _autoincrement] = 0;
_list[# _ex_audio._channel,              _autoincrement] = -1;
_list[# _ex_audio._audio_group,          _autoincrement] = _audio_group;
_list[# _ex_audio._external,             _autoincrement] = _audio_external;
_list[# _ex_audio._fade_volume_start,    _autoincrement] = -1;
_list[# _ex_audio._fade_volume_end,      _autoincrement] = -1;
_list[# _ex_audio._fade_volume_position, _autoincrement] = -1;
_list[# _ex_audio._fade_volume_easing,   _autoincrement] = -1;
_list[# _ex_audio._fade_volume_duration, _autoincrement] = -1;
_list[# _ex_audio._fade_pitch_start,     _autoincrement] = -1;
_list[# _ex_audio._fade_pitch_end,       _autoincrement] = -1;
_list[# _ex_audio._fade_pitch_position,  _autoincrement] = -1;
_list[# _ex_audio._fade_pitch_easing,    _autoincrement] = -1;
_list[# _ex_audio._fade_pitch_duration,  _autoincrement] = -1;

if (ex_audio_get_debug_mode()) {
    var _y = ds_grid_value_y(_list, 0, 0, 1, ds_grid_height(_list), string( _audio_name ));
show_debug_message('exAudio: Created sound with name "'+string( _audio_name )+'" ['+string( _y )+']');
}

if (_audio_group != 0 and _audio_external == 0) {

    if (not audio_group_is_loaded(_audio_group)) {
        if (ex_audio_get_debug_mode()) {
            show_debug_message('exAudio: Loading audio group "'+audio_group_name(_audio_group)+'" ['+string( _audio_group )+']');
        }
        audio_group_load(_audio_group);
    }

}

// set audio classes (separated by space)
if (argument_count >= 3) {
    
    if (argument[2] != "") {
        
        if (ex_audio_class_count() > 0) {
        
            _audio_classes = argument[2];
            
            // add sound to each class
            var _audio_classes_array = ex_audio_string_split(_audio_classes, " ");
            var _audio_classes_array_size = array_length_1d(_audio_classes_array);
            
            for (var _i=0; _i < _audio_classes_array_size; ++_i) {
            
                if (ex_audio_class_exists(_audio_classes_array[_i])) {
                
                    ex_audio_class_add_sound(_audio_name, _audio_classes_array[_i]);
                
                    if (ex_audio_get_debug_mode()) {
                        show_debug_message('exAudio: Added sound "'+string( _audio_name )+'" under audio class "'+_audio_classes_array[_i]+'"');
                        }
                    } else {
                        if (ex_audio_get_debug_mode()) {
                           show_debug_message('exAudio: Cannot add sound "'+string( _audio_name )+'" to non-existent class "'+_audio_classes_array[_i]+'", you need to create that class first before adding the sound');
                        }
                    }
                
            }
        
        }
        
    }
    
}

// return grid y position
return _autoincrement;




#define ex_audio_math_smoothstep
// for internal use
 
//gml_pragma("forceinline"); 
 
var _p;

var _a = argument[0];
var _b = argument[1];
var _t = argument[2];

if (_t < _a) { 
    return 0;
}

if (_t >= _b) {
    return 1;
}

if (_a == _b) {
    return -1;
}

_p = ((_t - _a) / (_b - _a));

return (_p * _p * (3 - 2 * _p));

#define ex_audio_pause
///ex_audio_pause(name)

var _name    = argument[0];
var _list    = obj_ex_audio._ex_audio_sounds;
var _sound   = -1;
var _emitter = -1;

// check name column
var _y = ex_audio_get_index(_name);
if (_y < 0) {

if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, could not find sound with name "'+string( _name )+'"');
    }

    return 0;
}

// get sound resource
_sound = _list[# _ex_audio._resource, _y];

// pause sound and set state
_list[# _ex_audio._paused, _y] = true;
audio_pause_sound(_sound);

if (ex_audio_get_debug_mode()) {
    show_debug_message('exAudio: Pausing sound "'+string( _name )+'"');
}



#define ex_audio_pause_all
///ex_audio_pause_all()

var _list       = obj_ex_audio._ex_audio_sounds;
var _list_size  = ds_grid_height(_list);

// check if any sounds exist at all
if (ex_audio_count() < 1) {
    if (ex_audio_get_debug_mode()) {
	show_debug_message('exAudio: Warning, no sounds in Audio database');
	}
	return 0;
}

// loop through all sounds
for (var _i=0; _i < _list_size; ++_i) {
    
    var _current_name = ds_grid_get(_list, 0, _i);
    ex_audio_pause(_current_name);
    
}

if (ex_audio_get_debug_mode()) {
    show_debug_message('exAudio: Paused all sounds');
}



#define ex_audio_play
///ex_audio_play(name, loop)

var _name    = argument[0];
var _list    = obj_ex_audio._ex_audio_sounds;
var _sound   = -1;
var _emitter = -1;
var _channel = -1;
var _priority = 0;
var _loop    = false;

// check name column
var _y = ex_audio_get_index(_name);
if (_y < 0) {

	if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, could not find sound with name "'+string( _name )+'"');
    }

	return 0;
}

// get sound resource
_sound = _list[# _ex_audio._resource, _y];

// get sound emitter
_emitter = _list[# _ex_audio._emitter, _y];

// get sound priority
_priority = _list[# _ex_audio._priority, _y];

// get audiogroup
_audiogroup = _list[# _ex_audio._audio_group, _y];

// get loop
if (argument_count >= 2) {
    _loop = argument[1];
}

// play sound, set loop flag and update channel id
if (not audio_group_is_loaded(_audiogroup)) {
    
    if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, trying to play sound "'+string( _name )+'", but audio group "'+string( _audiogroup )+'" is not loaded');
    }
    
    return -1;
}

_channel = audio_play_sound_on(_emitter, _sound, _loop, _priority);
_list[# _ex_audio._channel, _y] = _channel;
_list[# _ex_audio._looping, _y] = _loop;
_list[# _ex_audio._playing, _y] = true;


if (ex_audio_get_debug_mode()) {
    show_debug_message('exAudio: Playing sound "'+string( _name )+'", looping "'+string( _loop )+'"');
}

return _channel;



#define ex_audio_rename
///ex_audio_rename(name, newName)

var _name     = argument[0];
var _new_name = argument[1];
var _list     = obj_ex_audio._ex_audio_sounds;


if (ex_audio_get_debug_mode()) {
    show_debug_message('exAudio: Renaming sound with name "'+string( _name )+'" to "'+string( _new_name )+'"');
}

// check name column
var _cy = ds_grid_value_y(_list, 0, 0, 1, ds_grid_height(_list), string( _new_name ));
if (_cy >= 0) {
    if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, cannot rename "'+string( _name )+'" to "'+string( _new_name )+'", name already exists');
    }
    return 0;
}

var _y = ds_grid_value_y(_list, 0, 0, 1, ds_grid_height(_list), string( _name ));
if (_y < 0) {
    
    if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, could not find sound with name "'+string( _name )+'"');
    }
    return 0;
}

// set name
_list[# _ex_audio._name, _y] = _new_name;

if (ex_audio_get_debug_mode()) {
    show_debug_message('exAudio: Finished renaming sound with name "'+string( _name )+'" to "'+string( _new_name )+'"');
}

return 1;



#define ex_audio_restore_all
///ex_audio_restore_all()

var _list      = obj_ex_audio._ex_audio_sounds;
var _list_size = ds_grid_height(_list);
var _result    = 0;

// check if any sounds exist at all
if (ex_audio_count() < 1) {
    if (ex_audio_get_debug_mode()) {
		show_debug_message('exAudio: Warning, no sounds in Audio database');
	}
	return 0;
}

// loop through all sounds
for (var _i=0; _i < _list_size; ++_i) {
    
    var _current_name  = _list[# _ex_audio._name, _i];
    var _current_sound = _list[# _ex_audio._resource, _i];
    
	if (_list[# _ex_audio._suspended, _i] == true) {
		_result += 1;
	}

    if (_list[# _ex_audio._paused, _i] == false) {
        audio_resume_sound(_current_sound);
		_list[# _ex_audio._suspended, _i] = false;
    }
    
}

if (_result > 0) {
	if (ex_audio_get_debug_mode()) {
		show_debug_message('exAudio: Restored all suspended sounds');
	}
}

return 1;



#define ex_audio_resume
///ex_audio_resume(name)

var _name    = argument[0];
var _list    = obj_ex_audio._ex_audio_sounds;
var _sound   = -1;
var _emitter = -1;

// check name column
var _y = ex_audio_get_index(_name);
if (_y < 0) {

	if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, could not find sound with name "'+string( _name )+'"');
    }

	return 0;
}

// get sound resource
_sound = ds_grid_get(_list, 1, _y);

// pause sound and set state
if (ds_grid_get(_list, 14, _y) == 0) {

		if (ex_audio_get_debug_mode()) {
			show_debug_message('exAudio: Tried to resume sound "'+string( _name )+'", but it is not paused');
		}

		return 0;

	} else {
		ds_grid_set(_list, 14, _y, 0);
		audio_resume_sound(_sound);
	}


if (ex_audio_get_debug_mode()) {
    show_debug_message('exAudio: Resuming sound "'+string( _name )+'"');
}

return 1;


#define ex_audio_resume_all
///ex_audio_resume_all()

var _list       = obj_ex_audio._ex_audio_sounds;
var _list_size  = ds_grid_height(_list);

// check if any sounds exist at all
if (ex_audio_count() < 1) {
    if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Warning, no sounds in Audio database');
    }
    return 0;
}

// loop through all sounds
for (var _i=0; _i < _list_size; ++_i) {
    
    var _current_name = ds_grid_get(_list, 0, _i);
    ex_audio_resume(_current_name);
    
}

if (ex_audio_get_debug_mode()) {
    show_debug_message('exAudio: Resumed all sounds');
}

return 1;


#define ex_audio_set_channel_number
///ex_audio_set_channel_number(value)

var _channels = argument[0];

audio_channel_num(_channels);
obj_ex_audio._ex_audio_channel_number = _channels;

if (ex_audio_get_debug_mode()) {
    show_debug_message('exAudio: Setting channel max number to '+string( _channels )+'');
}

return 1;



#define ex_audio_set_debug_mode
///ex_audio_set_debug_mode(enabled)

obj_ex_audio._ex_audio_debug_mode = argument[0];



#define ex_audio_set_falloff
///ex_audio_set_falloff(name, falloffRef, falloffMax, falloffFactor)

var _name           = argument[0];
var _falloff_ref    = argument[1];
var _falloff_max    = argument[2];
var _falloff_factor = argument[3];
var _list           = obj_ex_audio._ex_audio_sounds;

// check name column
var _y = ex_audio_get_index(_name);
if (_y < 0) {

	if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, could not find sound with name "'+string( _name )+'"');
    }

	return 0;
}

// get sound emitter
var _emitter = ds_grid_get(_list, 2, _y);

audio_emitter_falloff(_emitter, _falloff_ref, _falloff_max, _falloff_factor);

// set falloff
ds_grid_set(_list, 10, _y, _falloff_ref);
ds_grid_set(_list, 11, _y, _falloff_max);
ds_grid_set(_list, 12, _y, _falloff_factor);

return 1;



#define ex_audio_set_falloff_model
///ex_audio_set_falloff_model(falloffModel)

obj_ex_audio._ex_audio_falloff_model = argument[0];



#define ex_audio_set_pitch
///ex_audio_set_pitch(name, value, duration, easing)

var _name     = argument[0];
var _pitch    = argument[1];
var _list     = obj_ex_audio._ex_audio_sounds;
var _emitter  = -1;
var _duration = 0;
var _ease     = -1;

if (argument_count >= 3) {
    _duration = argument[2];
}

if (argument_count >= 4) {
    _ease = argument[3];
}

// check name column
var _y = ex_audio_get_index(_name);
if (_y < 0) {

    if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, could not find sound with name "'+string( _name )+'"');
    }

    return 0;
}

_emitter = _list[# _ex_audio._emitter, _y];

if (_duration > 0) {
    
    // fade pitch
    _list[# _ex_audio._fade_pitch_start,    _y] = _list[# _ex_audio._pitch, _y];
    _list[# _ex_audio._fade_pitch_end,      _y] = _pitch;
    _list[# _ex_audio._fade_pitch_position, _y] = -1;
    _list[# _ex_audio._fade_pitch_easing,   _y] = _ease;
    _list[# _ex_audio._fade_pitch_duration, _y] = _duration;

} else {

    // instantly set pitch
    audio_emitter_pitch(_emitter, _pitch);
    _list[# _ex_audio._pitch, _y] = _pitch;


    if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Set pitch to '+string( _pitch )+' for sound "'+_name+'"');
    }
}

return 1;



#define ex_audio_set_pitch_all
///ex_audio_set_pitch_all(value, duration, easing)

var _list       = obj_ex_audio._ex_audio_sounds;
var _list_size  = ds_grid_height(_list);
var _pitch      = argument[0];
var _duration   = 0;
var _easing     = -1;

// set easing
if (argument_count >= 3) {
    _easing = argument[2];
}

// set duration
if (argument_count >= 2) {
    _duration = argument[1];
}

// check if any sounds exist at all
if (ex_audio_count() < 1) {
    if (ex_audio_get_debug_mode()) {
		show_debug_message('exAudio: Warning, no sounds in Audio database');
	}
	return 0;
}

if (ex_audio_get_debug_mode()) {
    show_debug_message('exAudio: Setting pitch of all sounds to "'+string( _pitch )+'"');
}

// loop through all sounds
for (var _i=0; _i < _list_size; ++_i) {
    
    var _current_name = ds_grid_get(_list, 0, _i);
    
    // set pitch with optional arguments
    if (argument_count >= 3) {
        ex_audio_set_pitch( _current_name, _pitch, _duration, _easing );
    } else if (argument_count >= 2) {
        ex_audio_set_pitch( _current_name, _pitch, _duration);
    } else {
        ex_audio_set_pitch( _current_name, _pitch);    
    }

}



#define ex_audio_set_position
///ex_audio_set_position(name, x, y, z)

var _name       = argument[0];
var _position_x = argument[1];
var _position_y = argument[2];
var _position_z = argument[3];
var _list       = obj_ex_audio._ex_audio_sounds;

// check name column
var _y = ex_audio_get_index(_name);
if (_y < 0) {

	if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, could not find sound with name "'+string( _name )+'"');
    }

	return 0;
}

// get sound emitter
var _emitter = ds_grid_get(_list, 2, _y);

audio_emitter_position(_emitter, _position_x, _position_y, _position_z);

// set position
ds_grid_set(_list, 7, _y, _position_x);
ds_grid_set(_list, 8, _y, _position_y);
ds_grid_set(_list, 9, _y, _position_z);

return 1;



#define ex_audio_set_track_position
///ex_audio_set_track_position(name, position)

var _name     = argument[0];
var _list     = obj_ex_audio._ex_audio_sounds;
var _channel  = -1;
var _position = argument[1];

var _y = ex_audio_get_index(_name);
if (_y < 0) {

    if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, could not find sound with name "'+string( _name )+'"');
    }

    return 0;
}

// get sound channel
_channel = ds_grid_get(_list, 20, _y);

audio_sound_set_track_position(_channel, _position);

return 1;



#define ex_audio_set_velocity
///ex_audio_set_velocity(name, velocityX, velocityY, velocityZ)

var _name       = argument[0];
var _velocity_x = argument[1];
var _velocity_y = argument[2];
var _velocity_z = argument[3];
var _list       = obj_ex_audio._ex_audio_sounds;

// check name column
var _y = ex_audio_get_index(_name);
if (_y < 0) {

	if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, could not find sound with name "'+string( _name )+'"');
    }

	return 0;
}

// get sound emitter
var _emitter = ds_grid_get(_list, 2, _y);

audio_emitter_velocity(_emitter, _velocity_x, _velocity_y, _velocity_z);

// set velocity
ds_grid_set(_list, 16, _y, _velocity_x);
ds_grid_set(_list, 17, _y, _velocity_y);
ds_grid_set(_list, 18, _y, _velocity_z);

return 1;



#define ex_audio_set_volume
///ex_audio_set_volume(name, value, duration, easing)

var _name     = argument[0];
var _volume   = argument[1];
var _list     = obj_ex_audio._ex_audio_sounds;
var _emitter  = -1;
var _duration = 0;
var _ease     = -1;

if (argument_count >= 3) {
    _duration = argument[2];
}

if (argument_count >= 4) {
    _ease = argument[3];
}

// check name column
var _y = ex_audio_get_index(_name);
if (_y < 0) {

	if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, could not find sound with name "'+string( _name )+'"');
    }

    return 0;
}

_emitter = _list[# _ex_audio._emitter, _y];

if (_duration > 0) {

    // fade volume
    _list[# _ex_audio._fade_volume_start,    _y] = _list[# _ex_audio._volume, _y];
    _list[# _ex_audio._fade_volume_end,      _y] = _volume;
    _list[# _ex_audio._fade_volume_position, _y] = -1;
    _list[# _ex_audio._fade_volume_easing,   _y] = _ease;
    _list[# _ex_audio._fade_volume_duration, _y] = _duration;

} else {
    
    // instantly set volume
    audio_emitter_gain(_emitter, _volume);
    _list[# _ex_audio._volume, _y] = _volume;
    
    if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Set volume to '+string( _volume )+' for sound "'+_name+'"');
    }
}

return 1;



#define ex_audio_set_volume_all
///ex_audio_set_volume_all(value, duration, easing)

var _list       = obj_ex_audio._ex_audio_sounds;
var _list_size  = ds_grid_height(_list);
var _volume     = argument[0];
var _duration   = 0;
var _easing     = -1;

// set easing
if (argument_count >= 3) {
    _easing = argument[2];
}

// set duration
if (argument_count >= 2) {
    _duration = argument[1];
}

// check if any sounds exist at all
if (ex_audio_count() < 1) {
    if (ex_audio_get_debug_mode()) {
		show_debug_message('exAudio: Warning, no sounds in Audio database');
	}
	return 0;
}

if (ex_audio_get_debug_mode()) {
    show_debug_message('exAudio: Setting volume of all sounds to "'+string( _volume )+'"');
}

// loop through all sounds
for (var _i=0; _i < _list_size; ++_i) {
    
    var _current_name = ds_grid_get(_list, 0, _i);
    
    // set volume with optional arguments
    if (argument_count >= 3) {
        ex_audio_set_volume( _current_name, _volume, _duration, _easing );
    } else if (argument_count >= 2) {
        ex_audio_set_volume( _current_name, _volume, _duration);
    } else {
        ex_audio_set_volume( _current_name, _volume);    
    }

}



#define ex_audio_stop
///ex_audio_stop(name)

var _name    = argument[0];
var _list    = obj_ex_audio._ex_audio_sounds;
var _sound   = -1;
var _channel = -1;

// check name column
var _y = ex_audio_get_index(_name);
if (_y < 0) {

	if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, could not find sound with name "'+string( _name )+'"');
    }

	return 0;
}

// get sound resource
_sound = ds_grid_get(_list, 1, _y);

// get sound channel
_channel = ds_grid_get(_list, 20, _y);

// stop sound and reset track position, looping and playing/paused state
ds_grid_set(_list, 14, _y, 0);
ds_grid_set(_list, 15, _y, 0);
_list[# _ex_audio._playing, _y] = false;
_list[# _ex_audio._position, _y] = 0;
_list[# _ex_audio._position_previous, _y] = 0;

audio_stop_sound(_sound);
audio_sound_set_track_position(_channel, 0);

if (ex_audio_get_debug_mode()) {
    show_debug_message('exAudio: Stopping sound "'+string( _name )+'"');
}



#define ex_audio_stop_all
///ex_audio_stop_all()

var _list      = obj_ex_audio._ex_audio_sounds;
var _list_size = ds_grid_height(_list);

// check if any sounds exist at all
if (ex_audio_count() < 1) {
    if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Warning, no sounds in Audio database');
    }
    return 0;
}

// loop through all sounds
for (var _i=0; _i < _list_size; ++_i) {
    
    var _current_name = ds_grid_get(_list, 0, _i);
    ex_audio_stop(_current_name);

}

if (ex_audio_get_debug_mode()) {
    show_debug_message('exAudio: Stopped all sounds');
}



#define ex_audio_string_split
// for internal use
 
var _string = argument[0];
var _delimiter = ",";

if (argument_count >= 2) {
    _delimiter = argument[1];
}

var _position = string_pos(_delimiter, _string);
var _array;

if (_position == 0) {
    _array[0] = _string; 
    return _array;
}

var _delimiter_length = string_length(_delimiter);
var _array_length = 0;

while (true) {

    _array[_array_length++] = string_copy(_string, 1, _position - 1);
    _string = string_copy(_string, _position + _delimiter_length, string_length(_string) - _position - _delimiter_length + 1);
    _position = string_pos(_delimiter, _string);
    
    if (_position == 0) {
        _array[_array_length] = _string;
        return _array;
    }
}

#define ex_audio_suspend_all
///ex_audio_suspend_all()

var _list      = obj_ex_audio._ex_audio_sounds;
var _list_size = ds_grid_height(_list);

// check if any sounds exist at all
if (ex_audio_count() < 1) {
    if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Warning, no sounds in Audio database');
    }
    return 0;
}

// loop through all sounds
for (var _i=0; _i < _list_size; ++_i) {
    
    var _current_name = ds_grid_get(_list, 0, _i);
    var _current_sound = ds_grid_get(_list, 1, _i);

    if (ds_grid_get(_list, 14, _i) == 0) {
        audio_pause_sound(_current_sound);
        ds_grid_set(_list, 13, _i, 1);
    }

    
}

if (ex_audio_get_debug_mode()) {
    show_debug_message('exAudio: Suspended all sounds');
}




#define ex_audio_unload
///ex_audio_unload(soundName)

var _name          = argument[0];
var _list          = obj_ex_audio._ex_audio_sounds;
var _sound         = -1;
var _audiogroup    = -1;
var _audio_emitter = -1;
var _external      = 0;

// check name column
var _y = ds_grid_value_y(_list, 0, 0, 1, ds_grid_height(_list), string( _name ));
if (_y < 0) {

	if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Error, could not find sound with name "'+string( _name )+'"');
    }

	return 0;
}

ex_audio_stop(_name);

// get resource
_sound = ds_grid_get(_list, 1, _y);

// get emitter
_audio_emitter = ds_grid_get(_list, 2, _y);

// get audiogroup
_audiogroup = ds_grid_get(_list, 21, _y);

// get external
_external = ds_grid_get(_list, 22, _y);

// destroy audio emitter
audio_emitter_free(_audio_emitter);

// remove class index
if (ds_grid_height(_list) < 2) {

	ds_grid_clear(_list, "");
	ds_grid_resize(_list, ds_grid_width(_list), 1);

} else {
    ex_audio_ds_grid_delete_y(_list, _y, true);
}


if (ex_audio_get_debug_mode()) {
    show_debug_message('exAudio: Removed sound with name "'+string( _name )+'"');
}

// check audio groups and unload if not needed anymore
var _gy = ds_grid_value_y(_list, 20, 0, 21, ds_grid_height(_list), _audiogroup);
if (_gy < 0) {
    
    if (_audiogroup != 0 and audio_group_is_loaded(_audiogroup) and _external == 0) {
    
        audio_group_unload(_audiogroup);
        
        if (ex_audio_get_debug_mode()) {
            show_debug_message('exAudio: Unloaded audio group "'+string( _audiogroup )+'" since it is not needed anymore by any sounds');
        }
    
    }
    
}

// check for stream
if (_external == 1) {
    audio_destroy_stream(_sound);
    
    if (ex_audio_get_debug_mode()) {
        show_debug_message('exAudio: Destroyed stream of "'+_name+'"');
    }
}

return 1;