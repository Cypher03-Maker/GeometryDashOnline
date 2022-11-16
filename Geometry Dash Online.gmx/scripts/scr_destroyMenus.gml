switch(group_id) {
    case 0:
    instance_destroy(obj_MenuPaletteColor)
    instance_destroy(obj_gsButtonSimple)
    instance_destroy(obj_gsButtonColorMode)
    instance_destroy(obj_gsButtonPaletteColor)
    obj_GDOControler.alarm[1] = 10
    break;
    
    case 1:
    instance_destroy(obj_MenuCredits)
    instance_destroy(obj_gsButtonSwitch02)
    instance_destroy(obj_gsButtonSimple)
    PageCredits = 1;
    obj_GDOControler.alarm[1] = 10
    break;
    
    case 2:
    instance_destroy(obj_MenuParticles)
    instance_destroy(obj_gsButtonSimple)
    instance_destroy(obj_gsButtonCheckBoxPart)
    instance_destroy(obj_particleTest)
    instance_destroy(obj_slider_size)
    instance_destroy(obj_slider_sizeIncr)
    instance_destroy(obj_slider_alpha1)
    instance_destroy(obj_slider_alpha2)
    instance_destroy(obj_slider_alpha3)
    instance_destroy(obj_slider_speed)
    instance_destroy(obj_slider_speedIncr)
    instance_destroy(obj_slider_RMin)
    instance_destroy(obj_slider_GMin)
    instance_destroy(obj_slider_BMin)
    instance_destroy(obj_slider_RMax)
    instance_destroy(obj_slider_GMax)
    instance_destroy(obj_slider_BMax)
    instance_destroy(obj_slider_dirMin)
    instance_destroy(obj_slider_dirMax)
    instance_destroy(obj_slider_dirIncr)
    instance_destroy(obj_slider_life)
    obj_GDOControler.alarm[1] = 10
    break;
    
    case 3:
    instance_destroy(obj_MenuIconCredits)
    instance_destroy(obj_gsButtonSwitch02)
    instance_destroy(obj_gsButtonSimple)
    instance_destroy(obj_gsButtonGameModeCredits)
    global.PageGameModeCredits = 1;
    global.PageCubesCredits = 1;
    global.PageShipsCredits = 1;
    global.PageSpidersCredits = 1;
    global.PageSwingsCredits = 1;
    global.PageJetPacksCredits = 1;
    obj_GDOControler.alarm[1] = 10
    break;
    
    case 4:
    instance_destroy(obj_MenuShaders)
    instance_destroy(obj_gsButtonSwitch02)
    instance_destroy(obj_gsButtonSimple)
    instance_destroy(obj_ShaderGrayScale)
    instance_destroy(obj_ShaderSepia)
    instance_destroy(obj_ShaderInvert)
    instance_destroy(obj_ShaderBloom)
    instance_destroy(obj_ShaderThermal)
    instance_destroy(obj_ShaderLED)
    instance_destroy(obj_ShaderChromaticAberration)
    instance_destroy(obj_ShaderPixelate)
    instance_destroy(obj_NullShader)
    ScaleVar01 = true;
    break;
    
    case 5:
    instance_destroy(obj_MenuTransitions)
    instance_destroy(obj_gsButtonSwitch02)
    instance_destroy(obj_gsButtonSimple)
    scr_switchTransitions();
    ScaleVar01 = true;
    break;
    
    case 6:
    with (obj_gsButtonExitSettings) {
        ex_tween_play(PosGen_, PosGen, -0.5, 20, scr_ease_in_quad, true)
    }
    
    /*with (obj_sliderMusic) {
        ex_tween_play(PosGen_, PosGen, -0.5, 20, scr_ease_in_quad, true)
    }*/
    
    with (obj_MenuSettings) {
        ex_tween_play(PosGen_, PosGen, -0.5, 20, scr_ease_in_quad, true)
        ex_tween_play(AlphaBackGround_, AlphaBackGround, 0, 20, scr_ease_out_quad, true)
    }
    
    obj_GDOControler.alarm[1] = 20
    obj_GDOControler.alarm[2] = 20
    break;
    
    case 7:
    instance_destroy(obj_GUIMenuProperties)
    instance_destroy(obj_sliderScale)
    instance_destroy(obj_sliderAngle)
    instance_destroy(obj_sliderAlpha)
    global.IDBlockSelect = true;
    break;
    
    case 8:
    instance_destroy(obj_MenuColorBlind)
    instance_destroy(obj_gsButtonSimple)
    instance_destroy(obj_gsButtonCheckBoxColorBlind)
    instance_destroy(obj_gsButtonCheckBoxEnableCB)
    ScaleVar01 = true;
    break;
    
    case 9:
    if (instance_exists(obj_GUIMenuTriggerColor)) {
        instance_destroy(obj_GUIMenuTriggerColor)
        instance_destroy(obj_SliderRGB01)
        instance_destroy(obj_SliderRGB02)
        instance_destroy(obj_SliderRGB03)
        instance_destroy(obj_gsButtonGUIDirMenu)
        instance_destroy(obj_SliderTime)
        instance_destroy(obj_gsButtonGUICheckBoxTriggerColor)
    }
    
    if (instance_exists(obj_GUIMenuTriggerZoom)) {
        instance_destroy(obj_GUIMenuTriggerZoom)
        instance_destroy(obj_SliderZoom)
        instance_destroy(obj_SliderTime)
        instance_destroy(obj_gsButtonGUICheckBoxTriggerZoom)
    }
    
    if (instance_exists(obj_GUIMenuTriggerRotate)) {
        instance_destroy(obj_GUIMenuTriggerRotate)
        instance_destroy(obj_SliderRotateCam)
        instance_destroy(obj_SliderTime)
        instance_destroy(obj_gsButtonGUICheckBoxTriggerRotateCam)
    }
    
    if (instance_exists(obj_GUIMenuTriggerShake)) {
        instance_destroy(obj_GUIMenuTriggerShake)
        instance_destroy(obj_SliderShake)
        instance_destroy(obj_SliderTime)
        instance_destroy(obj_gsButtonGUICheckBoxTriggerShake)
    }
    
    if (instance_exists(obj_GUIMenuTriggerTimeWarp)) {
        instance_destroy(obj_GUIMenuTriggerTimeWarp)
        instance_destroy(obj_SliderTimeAlt)
        instance_destroy(obj_gsButtonGUICheckBoxTriggerTimeWarp)
    }
    
    if (instance_exists(obj_GUIMenuSongTrigger)) {
        instance_destroy(obj_GUIMenuSongTrigger)
        instance_destroy(obj_SliderSong)
        instance_destroy(obj_gsButtonGUIPlaySound)
        audio_stop_sound(global.MusicID)
        instance_destroy(obj_gsButtonGUICheckBoxTriggerSong)
    }
    
    if (instance_exists(obj_GUIMenuForceBlock)) {
        instance_destroy(obj_GUIMenuForceBlock)
        instance_destroy(obj_SliderTimeAlt)
    }
    
    if (instance_exists(obj_GUIMenuShaderControl)) {
        instance_destroy(obj_GUIMenuShaderControl)
        instance_destroy(obj_gsButtonGUICheckBox)
    }
    ScaleVar01 = true;
    break;
    
    case 10:
    instance_destroy(obj_GUIMenuSettings)
    instance_destroy(obj_gsButtonGUISettingsBG)
    instance_destroy(obj_gsButtonGUISettingsG)
    instance_destroy(obj_gsButtonGUIDirMenu)
    ScaleVar01 = true;
    break;
    
    case 11:
    instance_destroy(obj_GUIMenuBackGrounds)
    instance_destroy(obj_gsButtonGUIBackgrounds)
    BGDrawIndex = BGIndex;
    obj_GDOControler.alarm[0] = 10
    break;
    
    case 12:
    instance_destroy(obj_GUIMenuGrounds)
    instance_destroy(obj_gsButtonGUIGrounds)
    GDrawIndex = GIndex;
    FGDrawIndex = FGIndex;
    obj_GDOControler.alarm[0] = 10
    break;
}
