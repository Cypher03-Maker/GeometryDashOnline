#define scr_scale_path9
ex_tween_play(ScalePath_, ScalePath, 0.5, 30, scr_ease_out_bounce, true)

#define scr_changeResolution
if (global.Fullscreen == 0) {
    scr_switchResolutions()
    window_set_size(global.WindowWidth, global.WindowHeight)
}