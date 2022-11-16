#define Triggers


#define scr_triggerCameraZoom
///scr_triggerCameraZoom(Zoom, Time, Ease)
var Zoom = argument[0];
var Time = argument[1];
var EaseMode = argument[2];
ex_camera_zoom("main", Zoom, Time, EaseMode);

#define scr_triggerCameraRotate
///scr_triggerCameraRotate(Angle, Time, Ease)
var Angle = argument[0];
var Time = argument[1];
var EaseMode = argument[2];
ex_camera_tilt("main", Angle, Time, EaseMode);

#define scr_triggerColorBG
///scr_triggerColorBG(R, G, B, time)
var RED = argument[0];
var GREEN = argument[1];
var BLUE = argument[2];
var Time = argument[3];

ex_tween_play(ColorRedBG_, ColorRedBG, RED, Time, scr_ease_out_sine, false)
ex_tween_play(ColorGreenBG_, ColorGreenBG, GREEN, Time, scr_ease_out_sine, false)
ex_tween_play(ColorBlueBG_, ColorBlueBG, BLUE, Time, scr_ease_out_sine, false)

#define scr_triggerColorG
///scr_triggerColorG(R, G, B, time)
var RED = argument[0];
var GREEN = argument[1];
var BLUE = argument[2];
var Time = argument[3];

ex_tween_play(ColorRedG_, ColorRedG, RED, Time, scr_ease_out_sine, false)
ex_tween_play(ColorGreenG_, ColorGreenG, GREEN, Time, scr_ease_out_sine, false)
ex_tween_play(ColorBlueG_, ColorBlueG, BLUE, Time, scr_ease_out_sine, false)

#define scr_triggerShakeEffect
///scr_triggerShakeEffect(ShakeX, ShakeY, ShakeAngle, Time, Ease)
var shakeX = argument[0];
var shakeY = argument[1];
var shakeAngle = argument[2];
var Time = argument[3];
var Ease = argument[4];

ex_camera_shake("main", shakeX, shakeY, shakeAngle, Time, Ease);

#define scr_triggerTimeWarp
///scr_triggerTimeWarp(TimeWarp);
TimeWarp = 1 * TimeWarpTrigger;

//Camera Offset
//ex_tween_play(CameraX_, CameraX, 50, 30, scr_ease_inout_sine, true)
//ex_tween_play(CameraY_, CameraY, -500, 30, scr_ease_inout_sine, true)
#define scr_triggerSong
///scr_triggerSong()

audio_stop_sound(global.MusicPlayID)
TimeSong = audio_sound_length(global.MusicPlayID) * TimeSongLimit;
if (!audio_is_playing(global.MusicPlayID)) {
    audio_sound_set_track_position(global.MusicPlayID, TimeSong)
    audio_play_sound(global.MusicPlayID, 100, 0)
}
//global.TimeSong = audio_sound_length(global.MusicPlayID) * global.TimeLimitSong;