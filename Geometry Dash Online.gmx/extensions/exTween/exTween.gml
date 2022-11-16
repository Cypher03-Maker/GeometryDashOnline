#define ex_tween_count
///ex_tween_count()

var _list = obj_ex_tween._ex_tweens;

if (not ds_exists(_list, ds_type_grid)) {
    return 0;
}

if (ds_grid_height(_list) < 2) {

/*    if (_list[# 0, 0] == "") {
return 0;
    }*/
    return 0;

}

return ds_grid_height(_list);


#define ex_tween_create
///ex_tween_create(name, instanceID, property, start, end, duration, easing, syncDelta, onComplete, onCompleteArguments)

var _list              = obj_ex_tween._ex_tweens;
var _list_max_size     = _ex_tween._length;
var _autoincrement     = 0;

var _tween_name        = argument[0];
var _tween_object      = argument[1];
var _tween_property    = argument[2];
var _tween_start       = 0;
var _tween_end         = 0;
var _tween_duration    = 10;
var _tween_easing      = -1;
var _tween_oncomplete  = -1;
var _tween_oncomplete_arguments = noone;
var _tween_syncdelta   = false;

if (argument_count >= 4) {
    _tween_start = argument[3];
}

if (argument_count >= 5) {
    _tween_end = argument[4];
}

if (argument_count >= 6) {
    _tween_duration = argument[5];
}

if (argument_count >= 7) {
    _tween_easing = argument[6];
}

if (argument_count >= 8) {
    _tween_syncdelta = argument[7];
}

if (argument_count >= 9) {
    _tween_oncomplete = argument[8];
}

if (argument_count >= 10) {
    _tween_oncomplete_arguments = argument[9];
}


// create or update the tween list
if (ds_exists(_list, ds_type_grid)) {
    
    // check if tween with the same name exists, todo: also check property
    var _y = ds_grid_value_y(_list, 0, 0, ds_grid_width(_list), ds_grid_height(_list), _tween_name);

    if (_y >= 0) {
        if (ex_tween_get_debug_mode()) {
            show_debug_message('exTween: Error, tween name "'+string( _tween_name )+'" already exists, persistent tween names must be unique');
        }
        return -1;
    }

    // workaround
    /*if (_list[# 0, 0] != "") {
        ds_grid_resize(_list, _list_max_size, ds_grid_height(_list)+1);
        _autoincrement = ds_grid_height(_list)-1;
    }*/
    
    ds_grid_resize(_list, _list_max_size, ds_grid_height(_list)+1);
    _autoincrement = ds_grid_height(_list)-1;

} else {
    obj_ex_tween._ex_tweens = ds_grid_create(_list_max_size, 0);
    _list = obj_ex_tween._ex_tweens;
    ds_grid_resize(_list, _list_max_size, ds_grid_height(_list)+1);
}


// check if tween with the same name exists, todo: also check property
var _y = ds_grid_value_y(_list, 0, 0, ds_grid_width(_list), ds_grid_height(_list), _tween_name);

if (_y >= 0) {
    if (ex_tween_get_debug_mode()) {
        show_debug_message('exTween: Error, tween name "'+string( _tween_name )+'" already exists, persistent tween names must be unique');
    }
    return -1;
}

// add tween to the list
_list[# _ex_tween._name,       _autoincrement] = _tween_name;
_list[# _ex_tween._property,   _autoincrement] = _tween_property;
_list[# _ex_tween._start,      _autoincrement] = _tween_start;
_list[# _ex_tween._end,        _autoincrement] = _tween_end;
_list[# _ex_tween._duration,   _autoincrement] = _tween_duration;
_list[# _ex_tween._easing,     _autoincrement] = _tween_easing;
_list[# _ex_tween._position,   _autoincrement] = 0;
_list[# _ex_tween._playing,    _autoincrement] = false;
_list[# _ex_tween._instance,   _autoincrement] = _tween_object;
_list[# _ex_tween._oncomplete, _autoincrement] = _tween_oncomplete;
_list[# _ex_tween._oncomplete_arguments, _autoincrement] = _tween_oncomplete_arguments;
_list[# _ex_tween._current,    _autoincrement] = 0;
_list[# _ex_tween._speed,      _autoincrement] = 1;
_list[# _ex_tween._paused,     _autoincrement] = false;
_list[# _ex_tween._local,      _autoincrement] = false;
_list[# _ex_tween._sync_delta, _autoincrement] = _tween_syncdelta;

if (ex_tween_get_debug_mode()) {
    var _y = ds_grid_value_y(_list, 0, 0, 1, ds_grid_height(_list), string( _tween_name ));
    show_debug_message('exTween: Created tween with name "'+string( _tween_name )+'" ['+string( _y )+']');
}

// return grid y position
return _autoincrement;


#define ex_tween_destroy
///ex_tween_destroy(name)

var _name = argument[0];
var _list = obj_ex_tween._ex_tweens;

// check name column
var _y = ex_tween_get_index(_name);
if (_y < 0) {

    if (ex_tween_get_debug_mode()) {
        show_debug_message('exTween: Error, could not find tween with name "'+string( _name )+'"');
    }
    
    return 0;
}

// remove tween
ex_tween_ds_grid_delete_y(_list, _y, true);


if (ex_tween_get_debug_mode()) {
    show_debug_message('exTween: Destroyed tween with name "'+string( _name )+'"');
}

return 1;


#define ex_tween_destroy_all
///ex_tween_destroy_all()

var _i = ex_tween_count();
while (_i--) {
    ex_tween_destroy( ex_tween_get_name(_i) );
}

if (ex_tween_get_debug_mode()) {
    show_debug_message('exTween: Destroyed all tweens');
}


return 1;



#define ex_tween_exists
///ex_tween_exists(name)

var _name = argument[0];
var _list = ex_tween_get_index(_name);

if (_list < 0) {
    return 0;    
} else {
    return 1;
}




#define ex_tween_finish
///ex_tween_finish(name)

var _name = argument[0];
var _list = obj_ex_tween._ex_tweens;

// if name is not string then tween must be local, reconstruct tween name
if (not is_string(_name)) {
    _name = string(id)+"_"+script_get_name(_name);
}

// check name column
var _y = ex_tween_get_index(_name);
if (_y < 0) {

    if (ex_tween_get_debug_mode()) {
        show_debug_message('exTween: Error, could not find tween with name "'+string( _name )+'"');
    }

    return 0;
}

_list[# _ex_tween._position, _y] = _list[# _ex_tween._duration, _y];
_list[# _ex_tween._start, _y] = _list[# _ex_tween._end, _y];
_list[# _ex_tween._current, _y] = _list[# _ex_tween._end, _y];
_list[# _ex_tween._playing, _y] = false;

with (_list[# _ex_tween._instance, _y]) {
    script_execute(_list[# _ex_tween._property, _y], _list[# _ex_tween._end, _y]);
}

// get script
var _script = _list[# _ex_tween._oncomplete, _y];

if (_script > -1) {
    
    var _script_args = _list[# _ex_tween._oncomplete_arguments, _y];
    
    if (is_real(_script_args) or is_string(_script_args)) {
        
        script_execute(_script, _script_args);
    
    } else if (is_array(_script_args)) {
        
        var _length = array_length_1d(_script_args);
        
        switch (_length) {
            case 0: script_execute(_script); break;
            case 1: script_execute(_script, _script_args[0]); break;
            case 2: script_execute(_script, _script_args[0], _script_args[1]); break;
            case 3: script_execute(_script, _script_args[0], _script_args[1], _script_args[2]); break;
            case 4: script_execute(_script, _script_args[0], _script_args[1], _script_args[2], _script_args[3]); break;
            case 5: script_execute(_script, _script_args[0], _script_args[1], _script_args[2], _script_args[3], _script_args[4]); break;
            case 6: script_execute(_script, _script_args[0], _script_args[1], _script_args[2], _script_args[3], _script_args[4], _script_args[5]); break;
            case 7: script_execute(_script, _script_args[0], _script_args[1], _script_args[2], _script_args[3], _script_args[4], _script_args[5], _script_args[6]); break;
            case 8: script_execute(_script, _script_args[0], _script_args[1], _script_args[2], _script_args[3], _script_args[4], _script_args[5], _script_args[6], _script_args[7]); break;
            case 9: script_execute(_script, _script_args[0], _script_args[1], _script_args[2], _script_args[3], _script_args[4], _script_args[5], _script_args[6], _script_args[7], _script_args[8]); break;
            // ...
            default: 
                if (ex_tween_get_debug_mode()) {
                    show_debug_message('exTween: Error in tween with name: "'+string( _name )+'", onComplete script to trigger has too few (less than 0) or too many arguments (max 9 [0-8] allowed)');
                }
                break;
        }
    
    } else {
        
        script_execute(_script);
    }
    
}
/* */

if (ex_tween_get_debug_mode()) {
    show_debug_message('exTween: Finished tween "'+_name+'"');
}

// auto destroy if local
if (_list[# _ex_tween._local, _y] == true) {
    ex_tween_destroy(_name);
}


return 1;



#define ex_tween_get_debug_mode
///ex_tween_get_debug_mode()

//gml_pragma("forceinline");

return obj_ex_tween._ex_tween_debug_mode;


#define ex_tween_get_duration
///ex_tween_get_duration(name)

var _name = argument[0];
var _list = obj_ex_tween._ex_tweens;

// check name column
var _y = ex_tween_get_index(_name);
if (_y < 0) {

    if (ex_tween_get_debug_mode()) {
        show_debug_message('exTween: Error, could not find tween with name "'+string( _name )+'"');
    }

    return 0;
}

// get duration
return _list[# _ex_tween._duration, _y];



#define ex_tween_get_index
///ex_tween_get_index(name)

var _name = argument[0];
var _list = obj_ex_tween._ex_tweens;

// check if tweens exist first
if (ex_tween_count() < 1) {
    return -1;
}

var _y = ds_grid_value_y(_list, 0, 0, 1, ds_grid_height(_list), _name);
if (_y < 0) {
    _y = -1;
}

return _y;



#define ex_tween_get_name
///ex_tween_get_name(index)

var _tween_index = argument[0];
var _tween_list = obj_ex_tween._ex_tweens;
var _out_name  = "";

if (_tween_list < 0) {
    return "";
}

if (_tween_index < 0 or _tween_index > ds_grid_height(_tween_list)) {
    return "";
}

// get tween name
_out_name = _tween_list[# 0, _tween_index];

return _out_name;


#define ex_tween_get_position
///ex_tween_get_position(name)

var _name = argument[0];
var _list = obj_ex_tween._ex_tweens;

// check name column
var _y = ex_tween_get_index(_name);
if (_y < 0) {

    if (ex_tween_get_debug_mode()) {
        show_debug_message('exTween: Error, could not find tween with name "'+string( _name )+'"');
    }

    return 0;
}

// get position
return _list[# _ex_tween._position, _y];


#define ex_tween_initialize
///ex_tween_initialize()

if (instance_exists(obj_ex_tween)) {

if (ex_tween_get_debug_mode()) {
        show_debug_message('exTween: Warning, Tween system is already initialized');
    }

return 0;
}

instance_create(0, 0, obj_ex_tween);

return 1;



#define ex_tween_is_playing
///ex_tween_is_playing(name)

var _name = argument[0];
var _list = obj_ex_tween._ex_tweens;

// check name column
var _y = ex_tween_get_index(_name);
if (_y < 0) {

    if (ex_tween_get_debug_mode()) {
        show_debug_message('exTween: Error, could not find tween with name "'+string( _name )+'"');
    }

    return 0;
}

// get playing state
return _list[# _ex_tween._playing, _y];




#define ex_tween_play
///ex_tween_play(name, start, end, duration, easing, syncDelta, onComplete, onCompleteArguments)

var _name = argument[0];
var _list = obj_ex_tween._ex_tweens;

var _tween_start = 0;
var _tween_end = 0;
var _tween_duration = 10;
var _tween_easing = -1; 
var _tween_playing = false; 
var _tween_oncomplete = -1;
var _tween_oncomplete_arguments = noone;
var _tween_syncdelta = false;

var _tween_exists = false;
var _tween_local_exists = false;

// check name column
var _y = ex_tween_get_index(_name);
if (_y >= 0) {
    _tween_exists = true;
}

// set tween current to start value
//_list[# _ex_tween._current, _y] = _tween_start;

if (argument_count >= 2) {
    _tween_start = argument[1];
}

if (argument_count >= 3) {
    _tween_end = argument[2];
}

if (argument_count >= 4) {
    _tween_duration = argument[3];
}

if (argument_count >= 5) {
    _tween_easing = argument[4];
}

if (argument_count >= 6) {
    _tween_syncdelta = argument[5];
}

if (argument_count >= 7) {
    _tween_oncomplete = argument[6];
}

if (argument_count >= 8) {
    _tween_oncomplete_arguments = argument[7];
}

// if local
if (not is_string(_name)) {
    
    var _y2 = ex_tween_get_index(string(id)+"_"+script_get_name(_name));

    //if (ex_tween_get_debug_mode()) {
        //show_debug_message('exTween: Detected local tween for instance "'+string(id)+'" and property "'+string( _name )+'"');
    //}
    
    ex_tween_play_local(_y2, _name, _tween_local_exists, _tween_start, _tween_end, _tween_duration, _tween_easing, _tween_syncdelta, _tween_oncomplete, _tween_oncomplete_arguments);
    return "";
}

// if not local tween, then check if exists
if (_tween_exists == false) {
    if (ex_tween_get_debug_mode()) {
        show_debug_message('exTween: Error, could not find tween with name "'+string( _name )+'"');
    }
    return "";
}

// properties
_list[# _ex_tween._current, _y]    = _tween_start;
_list[# _ex_tween._start, _y]      = _tween_start;
_list[# _ex_tween._end, _y]        = _tween_end;
_list[# _ex_tween._duration, _y]   = _tween_duration;
_list[# _ex_tween._easing, _y]     = _tween_easing;
_list[# _ex_tween._oncomplete, _y] = _tween_oncomplete;
_list[# _ex_tween._oncomplete_arguments, _y] = _tween_oncomplete_arguments;
_list[# _ex_tween._sync_delta, _y] = _tween_syncdelta;
_list[# _ex_tween._local, _y] = false;

// set position
_list[# _ex_tween._position, _y] = 0;

// set playing state
_list[# _ex_tween._playing, _y] = true;

if (ex_tween_get_debug_mode()) {
    show_debug_message('exTween: Started tween with name: "'+string( _name )+'"');
}

return _name;




#define ex_tween_play_local
///ex_tween_play_local(...)

// for internal use only

var _list              = obj_ex_tween._ex_tweens;
var _list_max_size     = _ex_tween._length;
var _autoincrement     = 0;

var _tween_index       = argument[0];
var _tween_property    = argument[1];
var _tween_exists      = argument[2];
var _tween_start       = 0;
var _tween_end         = 0;
var _tween_duration    = 10;
var _tween_easing      = -1;
var _tween_playing     = false; 
var _tween_syncdelta   = false;
var _tween_oncomplete  = -1;
var _tween_oncomplete_arguments  = noone;

if (argument_count >= 4) {
    _tween_start = argument[3];
}

if (argument_count >= 5) {
    _tween_end = argument[4];
}

if (argument_count >= 6) {
    _tween_duration = argument[5];
}

if (argument_count >= 7) {
    _tween_easing = argument[6];
}

if (argument_count >= 8) {
    _tween_syncdelta = argument[7];
}

if (argument_count >= 9) {
    _tween_oncomplete = argument[8];
}

if (argument_count >= 10) {
    _tween_oncomplete_arguments = argument[9];
}


//check if exists
var _exists = false;

if (not ds_exists(_list, ds_type_grid)) {
    obj_ex_tween._ex_tweens = ds_grid_create(_list_max_size, 0);
    _list = obj_ex_tween._ex_tweens;
    ds_grid_resize(_list, _list_max_size, ds_grid_height(_list)+1);
}

var _tween_name = string(id)+"_"+script_get_name(_tween_property);

var _y = ds_grid_value_y(_list, 0, 0, 1, ds_grid_height(_list), _tween_name);
if (_y >= 0) {
    _exists = true;
} else {
    exists = false;
}

if (_exists == true) {
    
    // tween exists, just play
    _list[# _ex_tween._start,      _tween_index] = _tween_start;
    _list[# _ex_tween._end,        _tween_index] = _tween_end;
    _list[# _ex_tween._duration,   _tween_index] = _tween_duration;
    _list[# _ex_tween._easing,     _tween_index] = _tween_easing;
    _list[# _ex_tween._current, _tween_index] = _tween_start;
    _list[# _ex_tween._oncomplete, _tween_index] = _tween_oncomplete;
    _list[# _ex_tween._oncomplete_arguments, _tween_index] = _tween_oncomplete_arguments;
    _list[# _ex_tween._sync_delta, _tween_index] = _tween_syncdelta;
    
    if (ex_tween_get_debug_mode()) {
        show_debug_message('exTween: Local tween "'+string(_list[# _ex_tween._name, _tween_index])+'" exists, just play it');
    }
    
    // play now
    _list[# _ex_tween._position, _tween_index] = 0;
    _list[# _ex_tween._playing,  _tween_index] = true;
    
    return 1;

} else {

    /*if (_list[# 0, 0] != "") {
        ds_grid_resize(_list, _list_max_size, ds_grid_height(_list)+1);
        _autoincrement = ds_grid_height(_list)-1;
    }*/
    
    ds_grid_resize(_list, _list_max_size, ds_grid_height(_list)+1);
    _autoincrement = ds_grid_height(_list)-1;
    
    // add tween to the list and play
    _list[# _ex_tween._name,       _autoincrement] = string(id)+"_"+script_get_name(_tween_property);
    _list[# _ex_tween._property,   _autoincrement] = _tween_property;
    _list[# _ex_tween._start,      _autoincrement] = _tween_start;
    _list[# _ex_tween._end,        _autoincrement] = _tween_end;
    _list[# _ex_tween._duration,   _autoincrement] = _tween_duration;
    _list[# _ex_tween._easing,     _autoincrement] = _tween_easing;
    _list[# _ex_tween._position,   _autoincrement] = 0;
    _list[# _ex_tween._playing,    _autoincrement] = true; // play
    _list[# _ex_tween._instance,   _autoincrement] = id; // this object
    _list[# _ex_tween._oncomplete, _autoincrement] = _tween_oncomplete;
    _list[# _ex_tween._oncomplete_arguments, _autoincrement] = _tween_oncomplete_arguments;
    _list[# _ex_tween._sync_delta, _autoincrement] = _tween_syncdelta;
    
    //_list[# _ex_tween._current,    _autoincrement] = 0;
    _list[# _ex_tween._current, _autoincrement] = _tween_start;
    _list[# _ex_tween._speed,   _autoincrement] = 1;
    _list[# _ex_tween._paused,  _autoincrement] = false;
    _list[# _ex_tween._local,   _autoincrement] = true; // flag as local
    
    if (ex_tween_get_debug_mode()) {
        show_debug_message("exTween: Created "+_tween_name+" at grid Y position: "+string(_autoincrement));
    }
    
    return 1;
}


#define ex_tween_restore_all
///ex_tween_restore_all()

with (obj_ex_tween) {
    _suspended = false;
}

if (ex_tween_get_debug_mode()) {
    show_debug_message('exTween: Restored all suspended tweens');
}

return 1;



#define ex_tween_set_debug_mode
///ex_tween_set_debug_mode(enabled)

obj_ex_tween._ex_tween_debug_mode = argument[0];



#define ex_tween_stop
///ex_tween_stop(name)

var _name = argument[0];
var _list = obj_ex_tween._ex_tweens;

// if name is not string then tween must be local, reconstruct tween name
if (not is_string(_name)) {
    _name = string(id)+"_"+script_get_name(_name);
}


// check name column
var _y = ex_tween_get_index(_name);
if (_y < 0) {

    if (ex_tween_get_debug_mode()) {
        show_debug_message('exTween: Error, could not find tween with name "'+string( _name )+'"');
    }
    
    return 0;
}

if (_list[# _ex_tween._playing, _y] == false) {

    if (ex_tween_get_debug_mode()) {
        show_debug_message('exTween: Tween with name "'+string( _name )+'" is not playing and was not stopped');
    }

    return 0;
}

// set playing state
_list[# _ex_tween._playing, _y] = false;

// set position
_list[# _ex_tween._position, _y] = 0;

if (ex_tween_get_debug_mode()) {
    show_debug_message('exTween: Stopped tween with name: "'+string( _name )+'"');
}

// auto destroy if local
if (_list[# _ex_tween._local, _y] == true) {
    ex_tween_destroy(_name);
}

return 1;



#define ex_tween_suspend_all
///ex_tween_suspend_all()

with (obj_ex_tween) {
    _suspended = true;
}

if (ex_tween_get_debug_mode()) {
    show_debug_message('exTween: Suspended all tweens');
}

return 1;




#define ex_tween_set_position
///ex_tween_set_position(name, position)

var _name = argument[0];
var _position = argument[1];
var _list = obj_ex_tween._ex_tweens;

// check name column
var _y = ex_tween_get_index(_name);
if (_y < 0) {

    if (ex_tween_get_debug_mode()) {
        show_debug_message('exTween: Error, could not find tween with name "'+string( _name )+'"');
    }

    return 0;
}

var _current_position = _list[# _ex_tween._position, _y];
var _duration = _list[# _ex_tween._duration, _y];

// set position
if (_current_position >= _duration) {
	
	_list[# _ex_tween._position, _y] = _duration;
	
} else {

	_list[# _ex_tween._position, _y] = _position;

}

return 1;


#define ex_tween_ds_grid_delete_y
///ex_tween_ds_grid_delete_y(DSGridIndex, y, shift)

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

#define ex_tween_math_smoothstep

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