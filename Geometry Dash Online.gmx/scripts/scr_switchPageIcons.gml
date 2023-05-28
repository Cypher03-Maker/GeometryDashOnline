#define scr_switchPageIcons
switch(global.PageGameModes) {
    case 1:
    switch(group_id) {
        case 1:
        if (global.PageIcons != 1) {
            global.PageIcons -=1;
        }
        else {
            global.PageIcons = 6;
        }
        break;
        
        case 2:
        if (global.PageIcons != 6) {
            global.PageIcons +=1;
        }
        else {
            global.PageIcons = 1;
        }
        break;
    }
    break;
    
    case 2:
    switch(group_id) {
        case 1:
        if (global.PageShips != 1) {
            global.PageShips -=1;
        }
        else {
            global.PageShips = 2;
        }
        break;
        
        case 2:
        if (global.PageShips != 2) {
            global.PageShips +=1;
        }
        else {
            global.PageShips = 1;
        }
        break;
    }
    break;
    
    case 3:
    switch(group_id) {
        case 1:
        if (global.PageBalls != 1) {
            global.PageBalls -=1;
        }
        else {
            global.PageBalls = 2;
        }
        break;
        
        case 2:
        if (global.PageBalls != 2) {
            global.PageBalls +=1;
        }
        else {
            global.PageBalls = 1;
        }
        break;
    }
    break;
    
    case 4:
    global.PageUFOs = 1;
    break;
    
    case 5:
    global.PageWaves = 1;
    break;
    
    case 7:
    global.PageSpiders = 1;
    break;
    
    case 8:
    global.PageSwings = 1;
    break;
}

#define scr_pageCubes
switch (global.PageGameModes) {
    case 1:
    switch (global.PageIcons) {
        case 1:
        for(i = 0; i < 36; i++) {
            ButtonIcon[i].cube_index = i;
            ButtonIcon[i].cube_extra_index = 0;
            ButtonIcon[i].cube_extra_alpha = 0;
        }
        break;
        
        case 2:
        for(i = 0; i < 36; i++) {
            ButtonIcon[i].cube_index = i + 36;
            ButtonIcon[i].cube_extra_index = 0;
            ButtonIcon[i].cube_extra_alpha = 0;
        }
        break;
        
        case 3:
        for(i = 0; i < 36; i++) {
            ButtonIcon[i].cube_index = i + 72;
            
            if (i > 23 && i < 34) {
                ButtonIcon[i].cube_extra_index = i - 24;
                ButtonIcon[i].cube_extra_alpha = 1;
            }
            else {
                ButtonIcon[i].cube_extra_index = 0;
                ButtonIcon[i].cube_extra_alpha = 0;
            }
        }
        break;
        
        case 4:
        for(i = 0; i < 36; i++) {
            ButtonIcon[i].cube_index = i + 108;
            
            if (i == 0) {
                ButtonIcon[i].cube_extra_index = i + 10;
                ButtonIcon[i].cube_extra_alpha = 1;
            }
            else if (i > 2 && i < 11) {
                ButtonIcon[i].cube_extra_index = i + 8;
                ButtonIcon[i].cube_extra_alpha = 1;
            }
            else if (i > 11 && i < 13) {
                ButtonIcon[i].cube_extra_index = i + 7;
                ButtonIcon[i].cube_extra_alpha = 1;
            }
            else if (i > 17 && i < 21) {
                ButtonIcon[i].cube_extra_index = i + 2;
                ButtonIcon[i].cube_extra_alpha = 1;
            }
            else if (i > 21 && i < 23) {
                ButtonIcon[i].cube_extra_index = i + 1;
                ButtonIcon[i].cube_extra_alpha = 1;
            }
            else if (i > 23 && i < 25) {
                ButtonIcon[i].cube_extra_index = i;
                ButtonIcon[i].cube_extra_alpha = 1;
            }
            else if (i > 26 && i < 31) {
                ButtonIcon[i].cube_extra_index = i - 2;
                ButtonIcon[i].cube_extra_alpha = 1;
            }
            else if (i > 31 && i < 34) {
                ButtonIcon[i].cube_extra_index = i - 3;
                ButtonIcon[i].cube_extra_alpha = 1;
            }
            else {
                ButtonIcon[i].cube_extra_index = 0;
                ButtonIcon[i].cube_extra_alpha = 0;
            }
        }
        break;
        
        case 5:
        for(i = 0; i < 36; i++) {
            ButtonIcon[i].cube_index = i + 144;
            
            if (i < 2) {
                ButtonIcon[i].cube_extra_index = i + 31;
                ButtonIcon[i].cube_extra_alpha = 1;
            }
            else if (i > 2 && i < 4) {
                ButtonIcon[i].cube_extra_index = 33;
                ButtonIcon[i].cube_extra_alpha = 1;
            }
            else if (i > 4 && i < 9) {
                ButtonIcon[i].cube_extra_index = i + 29;
                ButtonIcon[i].cube_extra_alpha = 1;
            }
            else if (i > 9) {
                ButtonIcon[i].cube_extra_index = i + 28;
                ButtonIcon[i].cube_extra_alpha = 1;
            }
            else {
                ButtonIcon[i].cube_extra_index = 0;
                ButtonIcon[i].cube_extra_alpha = 0;
            }
        }
        break;
        
        case 6:
        for(i = 0; i < 36; i++) {
            ButtonIcon[i].cube_index = i + 180;
            ButtonIcon[i].cube_extra_index = i + 64;
            ButtonIcon[i].cube_extra_alpha = 1;
        }
        break;
    }
    
    if (global.PageIcons == 6) {
        for(i = 0; i < 36; i++) {
            if (i > 4 && i < 36) {
                instance_deactivate_object(ButtonIcon[i])
            }
        }
    }
    else {
        for(i = 0; i < 36; i++) {
            if (i > 4 && i < 36) {
                instance_activate_object(ButtonIcon[i])
            }
        }
    }
    break;
    
    case 2:
    switch (global.PageShips) {
        case 1:
        for(i = 0; i < 36; i++) {
            ButtonIcon[i].ship_index = i;
            
            if (i > 24 && i < 32) {
                ButtonIcon[i].ship_extra_index = i - 6;
                ButtonIcon[i].ship_extra_alpha = 1;
            }
            else if (i > 33 && i < 35) {
                ButtonIcon[i].ship_extra_index = i - 8;
                ButtonIcon[i].ship_extra_alpha = 1;
            }
            else {
                ButtonIcon[i].ship_extra_index = 0;
                ButtonIcon[i].ship_extra_alpha = 0;
            }
        }
        break;
        
        case 2:
        for(i = 0; i < 36; i++) {
            ButtonIcon[i].ship_index = i + 36;
            
            if (i > 0 && i < 2) {
                ButtonIcon[i].ship_extra_index = i + 8;
                ButtonIcon[i].ship_extra_alpha = 1;
            }
            else if (i > 2 && i < 5) {
                ButtonIcon[i].ship_extra_index = i + 7;
                ButtonIcon[i].ship_extra_alpha = 1;
            }
            else if (i > 9 && i < 14) {
                ButtonIcon[i].ship_extra_index = i + 2;
                ButtonIcon[i].ship_extra_alpha = 1;
            }
            else if (i > 15) {
                ButtonIcon[i].ship_extra_index = i;
                ButtonIcon[i].ship_extra_alpha = 1;
            }
            else {
                ButtonIcon[i].ship_extra_index = 0;
                ButtonIcon[i].ship_extra_alpha = 0;
            }
        }
        break;
    }
    
    if (global.PageShips == 2) {
        for(i = 0; i < 36; i++) {
            if (i > 18 && i < 36) {
                instance_deactivate_object(ButtonIcon[i])
            }
        }
    }
    else {
        for(i = 0; i < 36; i++) {
            if (i > 18 && i < 36) {
                instance_activate_object(ButtonIcon[i])
            }
        }
    }
    break;
    
    case 3:
    switch (global.PageBalls) {
        case 1:
        for(i = 0; i < 36; i++) {
            ButtonIcon[i].ball_index = i;
            
            if (i > 20 && i < 25) {
                ButtonIcon[i].ball_extra_index = i + 7;
                ButtonIcon[i].ball_extra_alpha = 1;
            }
            else if (i > 26 && i < 28) {
                ButtonIcon[i].ball_extra_index = i + 5;
                ButtonIcon[i].ball_extra_alpha = 1;
            }
            else if (i > 33 && i < 35) {
                ButtonIcon[i].ball_extra_index = i + 6;
                ButtonIcon[i].ball_extra_alpha = 1;
            }
            else {
                ButtonIcon[i].ball_extra_index = 0;
                ButtonIcon[i].ball_extra_alpha = 0;
            }
        }
        break;
        
        case 2:
        for(i = 0; i < 36; i++) {
            ButtonIcon[i].ball_index = i + 36;
            
            if (i > 6 && i < 8) {
                ButtonIcon[i].ball_extra_index = i + 6;
                ButtonIcon[i].ball_extra_alpha = 1;
            }
            else {
                ButtonIcon[i].ball_extra_index = 0;
                ButtonIcon[i].ball_extra_alpha = 0;
            }
        }
        break;
    }
    
    if (global.PageBalls == 2) {
        for(i = 0; i < 36; i++) {
            if (i > 7 && i < 36) {
                instance_deactivate_object(ButtonIcon[i])
            }
        }
    }
    else {
        for(i = 0; i < 36; i++) {
            if (i > 7 && i < 36) {
                instance_activate_object(ButtonIcon[i])
            }
        }
    }
    break;
    
    case 4:
    switch (global.PageUFOs) {
        case 1:
        for(i = 0; i < 36; i++) {
            ButtonIcon[i].ufo_index = i;
            
            if (i > 18 && i < 30) {
                ButtonIcon[i].ufo_extra_index = i - 4;
                ButtonIcon[i].ufo_extra_alpha = 1;
            }
            else if (i > 30) {
                ButtonIcon[i].ufo_extra_index = i - 5;
                ButtonIcon[i].ufo_extra_alpha = 1;
            }
            else {
                ButtonIcon[i].ufo_extra_index = 0;
                ButtonIcon[i].ufo_extra_alpha = 0;
            }
        }
        break;
        
        case 2:
        for(i = 0; i < 36; i++) {
            ButtonIcon[i].ufo_index = i + 36;
            
            ButtonIcon[i].ufo_extra_index = 0;
            ButtonIcon[i].ufo_extra_alpha = 0;
        }
        break;
    }
    
    for(i = 0; i < 36; i++) {
        if (i > 34) {
            instance_deactivate_object(ButtonIcon[i])
        }
    }
    break;
    
    case 5:
    switch (global.PageWaves) {
        case 1:
        for(i = 0; i < 36; i++) {
            ButtonIcon[i].wave_index = i;
            
            if (i > 26) {
                ButtonIcon[i].wave_extra_index = i;
                ButtonIcon[i].wave_extra_alpha = 1;
            }
            else {
                ButtonIcon[i].wave_extra_index = 0;
                ButtonIcon[i].wave_extra_alpha = 0;
            }
        }
        break;
        
        case 2:
        for(i = 0; i < 36; i++) {
            ButtonIcon[i].wave_index = i + 36;
            
            ButtonIcon[i].wave_extra_index = 0;
            ButtonIcon[i].wave_extra_alpha = 0;
        }
        break;
    }
    
    for(i = 0; i < 36; i++) {
        if (i > 34) {
            instance_deactivate_object(ButtonIcon[i])
        }
    }
    break;
    
    case 6:
    switch (global.PageSmashers) {
        case 1:
        for(i = 0; i < 36; i++) {
            ButtonIcon[i].smasher_index = i;
            
            if (i > 0) {
                ButtonIcon[i].smasher_extra_index = i - 1;
                ButtonIcon[i].smasher_extra_alpha = 1;
            }
            else {
                ButtonIcon[i].smasher_extra_index = 0;
                ButtonIcon[i].smasher_extra_alpha = 0;
            }
        }
        break;
        
        case 2:
        for(i = 0; i < 36; i++) {
            ButtonIcon[i].smasher_index = i + 36;
            
            ButtonIcon[i].smasher_extra_index = 0;
            ButtonIcon[i].smasher_extra_alpha = 0;
        }
        break;
    }
    
    for(i = 0; i < 36; i++) {
        if (i > 28) {
            instance_deactivate_object(ButtonIcon[i])
        }
    }
    break;
    
    case 7:
    switch (global.PageSpiders) {
        case 1:
        for(i = 0; i < 36; i++) {
            ButtonIcon[i].spider_index = i;
            
            if (i > 0) {
                ButtonIcon[i].spider_extra_index = i - 1;
                ButtonIcon[i].spider_extra_alpha = 1;
            }
            else {
                ButtonIcon[i].spider_extra_index = 0;
                ButtonIcon[i].spider_extra_alpha = 0;
            }
        }
        break;
        
        case 2:
        for(i = 0; i < 36; i++) {
            ButtonIcon[i].spider_index = i + 36;
            
            ButtonIcon[i].spider_extra_index = 0;
            ButtonIcon[i].spider_extra_alpha = 0;
        }
        break;
    }
    
    for(i = 0; i < 36; i++) {
        if (i > 4) {
            instance_deactivate_object(ButtonIcon[i])
        }
    }
    break;
    
    case 8:
    switch (global.PageSwings) {
        case 1:
        for(i = 0; i < 36; i++) {
            ButtonIcon[i].swing_index = i;
            
            if (i > -1 && i < 3) {
                ButtonIcon[i].swing_extra_index = i;
                ButtonIcon[i].swing_extra_alpha = 1;
            }
            else if (i > 4) {
                ButtonIcon[i].swing_extra_index = i - 2;
                ButtonIcon[i].swing_extra_alpha = 1;
            }
            else {
                ButtonIcon[i].swing_extra_index = 0;
                ButtonIcon[i].swing_extra_alpha = 0;
            }
        }
        break;
        
        case 2:
        for(i = 0; i < 36; i++) {
            ButtonIcon[i].swing_index = i + 36;
            
            ButtonIcon[i].swing_extra_index = 0;
            ButtonIcon[i].swing_extra_alpha = 0;
        }
        break;
    }
    
    for(i = 0; i < 36; i++) {
        if (i > 14) {
            instance_deactivate_object(ButtonIcon[i])
        }
    }
    break;
    
    case 9:
    switch (global.PageArmadillos) {
        case 1:
        for(i = 0; i < 36; i++) {
            ButtonIcon[i].armadillo_index = i;
            
            if (i > -1) {
                ButtonIcon[i].armadillo_extra_index = i;
                ButtonIcon[i].armadillo_extra_alpha = 1;
            }
            else {
                ButtonIcon[i].armadillo_extra_index = 0;
                ButtonIcon[i].armadillo_extra_alpha = 0;
            }
        }
        break;
        
        case 2:
        for(i = 0; i < 36; i++) {
            ButtonIcon[i].armadillo_index = i + 36;
            
            ButtonIcon[i].armadillo_extra_index = 0;
            ButtonIcon[i].armadillo_extra_alpha = 0;
        }
        break;
    }
    
    for(i = 0; i < 36; i++) {
        if (i > 0) {
            instance_deactivate_object(ButtonIcon[i])
        }
    }
    break;
    
    case 10:
    switch (global.PageJetPacks) {
        case 1:
        for(i = 0; i < 36; i++) {
            ButtonIcon[i].jetpack_index = i;
            ButtonIcon[i].jetpack_extra_index = 0;
            ButtonIcon[i].jetpack_extra_alpha = 0;
        }
        break;
        
        case 2:
        for(i = 0; i < 36; i++) {
            ButtonIcon[i].jetpack_index = i + 36;
            
            ButtonIcon[i].jetpack_extra_index = 0;
            ButtonIcon[i].jetpack_extra_alpha = 0;
        }
        break;
    }
    
    for(i = 0; i < 36; i++) {
        if (i > 1) {
            instance_deactivate_object(ButtonIcon[i])
        }
    }
    break;
}

#define scr_switchCubeNumber
switch(global.PageGameModes) {
    case 1:
    global.CubeNumber = other.cube_index;
    global.CubeExtraNumber = other.cube_extra_index;
    global.CubeExtraAlpha = other.cube_extra_alpha;
    global.PageGameModeExt = 1;
    break;
    
    case 2:
    global.ShipNumber = other.ship_index;
    global.ShipExtraNumber = other.ship_extra_index;
    global.ShipExtraAlpha = other.ship_extra_alpha;
    global.PageGameModeExt = 2;
    ShipMode = 1;
    break;
    
    case 3:
    global.BallNumber = other.ball_index;
    global.BallExtraNumber = other.ball_extra_index;
    global.BallExtraAlpha = other.ball_extra_alpha;
    global.PageGameModeExt = 3;
    break;
    
    case 4:
    global.UFONumber = other.ufo_index;
    global.UFOExtraNumber = other.ufo_extra_index;
    global.UFOExtraAlpha = other.ufo_extra_alpha;
    global.PageGameModeExt = 4;
    break;
    
    case 5:
    global.WaveNumber = other.wave_index;
    global.WaveExtraNumber = other.wave_extra_index;
    global.WaveExtraAlpha = other.wave_extra_alpha;
    global.PageGameModeExt = 5;
    break;
    
    case 6:
    global.SmasherNumber = other.smasher_index;
    global.SmasherExtraNumber = other.smasher_extra_index;
    global.SmasherExtraAlpha = other.smasher_extra_alpha;
    global.PageGameModeExt = 6;
    break;
    
    case 7:
    global.SpiderNumber = other.spider_index;
    global.SpiderExtraNumber = other.spider_extra_index;
    global.SpiderExtraAlpha = other.spider_extra_alpha;
    global.PageGameModeExt = 7;
    break;
    
    case 8:
    global.SwingNumber = other.swing_index;
    global.SwingExtraNumber = other.swing_extra_index;
    global.SwingExtraAlpha = other.swing_extra_alpha;
    global.PageGameModeExt = 8;
    break;
    
    case 9:
    global.ArmadilloNumber = other.armadillo_index;
    global.ArmadilloExtraNumber = other.armadillo_extra_index;
    global.ArmadilloExtraAlpha = other.armadillo_extra_alpha;
    global.PageGameModeExt = 9;
    break;
    
    case 10:
    global.JetPackNumber = other.jetpack_index;
    global.JetPackExtraNumber = other.jetpack_extra_index;
    global.JetPackExtraAlpha = other.jetpack_extra_alpha;
    global.PageGameModeExt = 10;
    ShipMode = 2
    break;
}

switch(global.PageEffects) {
    case 1:
    global.SpecialEffectNumber = other.special_index;
    break;
    
    case 2:
    global.ExplotionNumber = other.exp_index;
    break;
}

#define scr_switchPageCredits
switch(group_id) {
    case 1:
    switch(PageCredits) {
        case 3:
        PageCredits = 2;
        break;
        
        case 2:
        PageCredits = 1;
        break;
        
        case 1:
        PageCredits = 3;
        break;
    }
    break;
    
    case 2:
    switch(PageCredits) {
        case 1:
        PageCredits = 2;
        break;
        
        case 2:
        PageCredits = 3;
        break;
        
        case 3:
        PageCredits = 1;
        break;
    }
    break;
}

#define scr_pageEffects
switch (global.PageEffects) {
    case 1:
    for(i = 0; i < 36; i++) {
        ButtonIcon[i].exp_index = i;
    }
    
    for(i = 0; i < 36; i++) {
        if (i > 3) {
            instance_deactivate_object(ButtonIcon[i])
        }
    }
    break;
    
    case 2:
    for(i = 0; i < 36; i++) {
        ButtonIcon[i].special_index = i;
    }
    
    for(i = 0; i < 36; i++) {
        if (i > 16) {
            instance_deactivate_object(ButtonIcon[i])
        }
    }
    break;
}

#define scr_switchCheckBox
switch(group_id) {
    case 0:
    break;
    
    case 1:
    if (global.Fullscreen == 0) {
        global.Fullscreen = 1;
    }
    else if (global.Fullscreen == 1) {
        global.Fullscreen = 0
    }
    
    window_set_fullscreen(global.Fullscreen);
    break;
    
    case 2:
    if (global.FPSAlpha == 0) {
        global.FPSAlpha = 1;
    }
    else if (global.FPSAlpha == 1) {
        global.FPSAlpha = 0;
    }
    break;
    
    case 3:
    if (global.PartBlend == 1) {
        global.PartBlend = 0;
    }
    else if (global.PartBlend == 0) {
        global.PartBlend = 1;
    }
    
    part_type_blend(global.ParticleType, global.PartBlend)
    break;
    
    case 5:
    if (ModeEditor == 1) {
        ModeEditor = 2;
        CreateObjects = true;
        DragCamera = false;
    }
    else if (ModeEditor == 2) {
        ModeEditor = 1;
        CreateObjects = false;
        DragCamera = true;
    }
    break;
}

#define scr_pageCubesCredits
switch(global.PageGameModeCredits) {
    case 1:
    switch(group_id) {
        case 1:
        switch(global.PageCubesCredits) {
            case 3:
            global.PageCubesCredits = 2;
            break;
            
            case 2:
            global.PageCubesCredits = 1;
            break;
            
            case 1:
            global.PageCubesCredits = 3;
            break;
        }
        break;
        
        case 2:
        switch(global.PageCubesCredits) {
            case 1:
            global.PageCubesCredits = 2;
            break;
            
            case 2:
            global.PageCubesCredits = 3;
            break;
            
            case 3:
            global.PageCubesCredits = 1;
            break;
        }
        break;
    }
    break;
    
    case 2:
    global.PageShipsCredits = 1;
    break;
    
    case 3:
    global.PageBallsCredits = 1;
    break;
    
    case 4:
    global.PageUFOsCredits = 1;
    break;
    
    case 5:
    global.PageWavesCredits = 1;
    break;
    
    case 7:
    global.PageSpidersCredits = 1;
    break;
    
    case 8:
    switch(group_id) {
        case 1:
        switch(global.PageSwingsCredits) {
            case 3:
            global.PageSwingsCredits = 2;
            break;
            
            case 2:
            global.PageSwingsCredits = 1;
            break;
            
            case 1:
            global.PageSwingsCredits = 3;
            break;
        }
        break;
        
        case 2:
        switch(global.PageSwingsCredits) {
            case 1:
            global.PageSwingsCredits = 2;
            break;
            
            case 2:
            global.PageSwingsCredits = 3;
            break;
            
            case 3:
            global.PageSwingsCredits = 1;
            break;
        }
        break;
    }
    break;
}
#define scr_switchShaders
switch(PageShaders) {
    case 1:
    if (!instance_exists(obj_ShaderGrayScaleView)) {
        instance_create(0, 0, obj_ShaderGrayScaleView)
        instance_destroy(obj_ShaderSepiaView)
        instance_destroy(obj_ShaderInvertView)
        instance_destroy(obj_ShaderBloomView)
        instance_destroy(obj_ShaderThermalView)
        instance_destroy(obj_ShaderLEDView)
        instance_destroy(obj_ShaderChromaticAberView)
        instance_destroy(obj_ShaderPixelateView)
        instance_destroy(obj_NullShader)
    }
    break;
    
    case 2:
    if (!instance_exists(obj_ShaderSepiaView)) {
        instance_create(0, 0, obj_ShaderSepiaView)
        instance_destroy(obj_ShaderGrayScaleView)
        instance_destroy(obj_ShaderInvertView)
        instance_destroy(obj_ShaderBloomView)
        instance_destroy(obj_ShaderThermalView)
        instance_destroy(obj_ShaderLEDView)
        instance_destroy(obj_ShaderChromaticAberView)
        instance_destroy(obj_ShaderPixelateView)
        instance_destroy(obj_NullShader)
    }
    break;
    
    case 3:
    if (!instance_exists(obj_ShaderInvertView)) {
        instance_create(0, 0, obj_ShaderInvertView)
        instance_destroy(obj_ShaderGrayScaleView)
        instance_destroy(obj_ShaderSepiaView)
        instance_destroy(obj_ShaderBloomView)
        instance_destroy(obj_ShaderThermalView)
        instance_destroy(obj_ShaderLEDView)
        instance_destroy(obj_ShaderChromaticAberView)
        instance_destroy(obj_ShaderPixelateView)
        instance_destroy(obj_NullShader)
    }
    break;
    
    case 4:
    if (!instance_exists(obj_ShaderBloomView)) {
        instance_create(0, 0, obj_ShaderBloomView)
        instance_destroy(obj_ShaderGrayScaleView)
        instance_destroy(obj_ShaderInvertView)
        instance_destroy(obj_ShaderSepiaView)
        instance_destroy(obj_ShaderThermalView)
        instance_destroy(obj_ShaderLEDView)
        instance_destroy(obj_ShaderChromaticAberView)
        instance_destroy(obj_ShaderPixelateView)
        instance_destroy(obj_NullShader)
    }
    break;
    
    case 5:
    if (!instance_exists(obj_ShaderThermalView)) {
        instance_create(0, 0, obj_ShaderThermalView)
        instance_destroy(obj_ShaderGrayScaleView)
        instance_destroy(obj_ShaderInvertView)
        instance_destroy(obj_ShaderSepiaView)
        instance_destroy(obj_ShaderBloomView)
        instance_destroy(obj_ShaderLEDView)
        instance_destroy(obj_ShaderChromaticAberView)
        instance_destroy(obj_ShaderPixelateView)
        instance_destroy(obj_NullShader)
    }
    break;
    
    case 6:
    if (!instance_exists(obj_ShaderLEDView)) {
        instance_create(0, 0, obj_ShaderLEDView)
        instance_destroy(obj_ShaderGrayScaleView)
        instance_destroy(obj_ShaderInvertView)
        instance_destroy(obj_ShaderSepiaView)
        instance_destroy(obj_ShaderBloomView)
        instance_destroy(obj_ShaderThermalView)
        instance_destroy(obj_ShaderChromaticAberView)
        instance_destroy(obj_ShaderPixelateView)
        instance_destroy(obj_NullShader)
    }
    break;
    
    case 7:
    if (!instance_exists(obj_ShaderChromaticAberView)) {
        instance_create(0, 0, obj_ShaderChromaticAberView)
        instance_destroy(obj_ShaderGrayScaleView)
        instance_destroy(obj_ShaderInvertView)
        instance_destroy(obj_ShaderSepiaView)
        instance_destroy(obj_ShaderBloomView)
        instance_destroy(obj_ShaderThermalView)
        instance_destroy(obj_ShaderLEDView)
        instance_destroy(obj_ShaderPixelateView)
        instance_destroy(obj_NullShader)
    }
    break;
    
    case 8:
    if (!instance_exists(obj_ShaderPixelateView)) {
        instance_create(0, 0, obj_ShaderPixelateView)
        instance_destroy(obj_ShaderGrayScaleView)
        instance_destroy(obj_ShaderInvertView)
        instance_destroy(obj_ShaderSepiaView)
        instance_destroy(obj_ShaderBloomView)
        instance_destroy(obj_ShaderThermalView)
        instance_destroy(obj_ShaderLEDView)
        instance_destroy(obj_ShaderChromaticAberView)
        instance_destroy(obj_NullShader)
    }
    break;
    
    case 9:
    instance_destroy(obj_ShaderGrayScaleView)
    instance_destroy(obj_ShaderInvertView)
    instance_destroy(obj_ShaderSepiaView)
    instance_destroy(obj_ShaderBloomView)
    instance_destroy(obj_ShaderThermalView)
    instance_destroy(obj_ShaderLEDView)
    instance_destroy(obj_ShaderChromaticAberView)
    instance_destroy(obj_ShaderPixelateView)
    break;
}

#define scr_pageShaders
switch(group_id) {
    case 1:
    switch(PageShaders) {
        case 9:
        PageShaders = 8;
        break;
        
        case 8:
        PageShaders = 7;
        break;
        
        case 7:
        PageShaders = 6;
        break;
        
        case 6:
        PageShaders = 5;
        break;    
    
        case 5:
        PageShaders = 4;
        break;
        
        case 4:
        PageShaders = 3;
        break;
        
        case 3:
        PageShaders = 2;
        break;
        
        case 2:
        PageShaders = 1;
        break;
        
        case 1:
        PageShaders = 9;
        break;
    }
    break;
    
    case 2:
    switch(PageShaders) {
        case 1:
        PageShaders = 2;
        break;
        
        case 2:
        PageShaders = 3;
        break;
        
        case 3:
        PageShaders = 4;
        break;
        
        case 4:
        PageShaders = 5;
        break;
        
        case 5:
        PageShaders = 6;
        break;
        
        case 6:
        PageShaders = 7;
        break;
        
        case 7:
        PageShaders = 8;
        break;
        
        case 8:
        PageShaders = 9;
        break;
        
        case 9:
        PageShaders = 1;
        break;
    }
    break;
}

#define scr_pageTransitions
switch(group_id) {
    case 1:
    switch(PageTransitions) {
        case 13:
        PageTransitions = 12;
        break;
        
        case 12:
        PageTransitions = 11;
        break;
        
        case 11:
        PageTransitions = 10;
        break;
        
        case 10:
        PageTransitions = 9;
        break;
        
        case 9:
        PageTransitions = 8;
        break;
        
        case 8:
        PageTransitions = 7;
        break;
        
        case 7:
        PageTransitions = 6;
        break;
        
        case 6:
        PageTransitions = 5;
        break;    
    
        case 5:
        PageTransitions = 4;
        break;
        
        case 4:
        PageTransitions = 3;
        break;
        
        case 3:
        PageTransitions = 2;
        break;
        
        case 2:
        PageTransitions = 1;
        break;
        
        case 1:
        PageTransitions = 13;
        break;
    }
    break;
    
    case 2:
    switch(PageTransitions) {
        case 1:
        PageTransitions = 2;
        break;
        
        case 2:
        PageTransitions = 3;
        break;
        
        case 3:
        PageTransitions = 4;
        break;
        
        case 4:
        PageTransitions = 5;
        break;
        
        case 5:
        PageTransitions = 6;
        break;
        
        case 6:
        PageTransitions = 7;
        break;
        
        case 7:
        PageTransitions = 8;
        break;
        
        case 8:
        PageTransitions = 9;
        break;
        
        case 9:
        PageTransitions = 10;
        break;
        
        case 10:
        PageTransitions = 11;
        break;
        
        case 11:
        PageTransitions = 12;
        break;
        
        case 12:
        PageTransitions = 13;
        break;
        
        case 13:
        PageTransitions = 1;
        break;
    }
    break;
}

#define scr_switchTransitions
switch(PageTransitions) {
    case 1:
    TransitionGen = Transitions.Fade;
    break;
    
    case 2:
    TransitionGen = Transitions.SlideBounceOut;
    break;
    
    case 3:
    TransitionGen = Transitions.SlideBounceIn;
    break;
    
    case 4:
    TransitionGen = Transitions.RotateCam;
    break;
    
    case 5:
    TransitionGen = Transitions.ScaleXSine;
    break;
    
    case 6:
    TransitionGen = Transitions.ScaleYSine;
    break;
    
    case 7:
    TransitionGen = Transitions.ScaleSine;
    break;
    
    case 8:
    TransitionGen = Transitions.SlideLeft;
    break;
    
    case 9:
    TransitionGen = Transitions.SlideRight;
    break;
    
    case 10:
    TransitionGen = Transitions.SlideUp;
    break;
    
    case 11:
    TransitionGen = Transitions.SlideDown;
    break;
    
    case 12:
    TransitionGen = Transitions.ColourFade;
    break;
    
    case 13:
    TransitionGen = Transitions.CrossFade;
    break;
}

#define scr_switchResolutions
switch(PageResolutions) {
    case 1:
    global.WindowWidth = 640;
    global.WindowHeight = 480;
    break;
    
    case 2:
    global.WindowWidth = 960;//640;
    global.WindowHeight = 544;//360;
    break;
    
    case 3:
    global.WindowWidth = 1280;
    global.WindowHeight = 720;
    break;
    
    case 4:
    global.WindowWidth = 1920;
    global.WindowHeight = 1080;
    break;
}

#define scr_pageResolutions
switch(group_id) {
    case 1:
    switch(PageResolutions) {
        case 4:
        PageResolutions = 3;
        break;
        
        case 3:
        PageResolutions = 2;
        break;
        
        case 2:
        PageResolutions = 1;
        break;
        
        case 1:
        PageResolutions = 4;
        break;
    }
    break;
    
    case 2:
    switch(PageResolutions) {
        case 1:
        PageResolutions = 2;
        break;
        
        case 2:
        PageResolutions = 3;
        break;
        
        case 3:
        PageResolutions = 4;
        break;
        
        case 4:
        PageResolutions = 1;
        break;
    }
    break;
}
#define scr_pageEditorObjects
switch(global.ObjectSelect) {
    case 0:
    switch(PageObjects) {
        case 1:
        Button01.image_button_index = 0;
        Button02.image_button_index = 1;
        Button03.image_button_index = 2;
        Button04.image_button_index = 3;
        Button05.image_button_index = 4;
        Button06.image_button_index = 5;
        Button07.image_button_index = 6;
        Button08.image_button_index = 7;
        Button09.image_button_index = 8;
        Button10.image_button_index = 9;
        Button11.image_button_index = 10;
        Button12.image_button_index = 11;
        break;
        
        case 2:
        Button01.image_button_index = 12;
        Button02.image_button_index = 13;
        Button03.image_button_index = 14;
        Button04.image_button_index = 15;
        Button05.image_button_index = 16;
        Button06.image_button_index = 17;
        Button07.image_button_index = 18;
        Button08.image_button_index = 19;
        Button09.image_button_index = 20;
        Button10.image_button_index = 21;
        Button11.image_button_index = 22;
        Button12.image_button_index = 23;
        break;
    }
    break;
    
    case 1:
    switch(PagePortals) {
        case 1:
        Button01.image_button_index = 0;
        Button02.image_button_index = 1;
        Button03.image_button_index = 2;
        Button04.image_button_index = 3;
        Button05.image_button_index = 4;
        Button06.image_button_index = 5;
        Button07.image_button_index = 6;
        Button08.image_button_index = 7;
        Button09.image_button_index = 8;
        Button10.image_button_index = 9;
        Button11.image_button_index = 10;
        Button12.image_button_index = 11;
        break;
        
        case 2:
        Button01.image_button_index = 12;
        Button02.image_button_index = 13;
        Button03.image_button_index = 14;
        Button04.image_button_index = 15;
        Button05.image_button_index = 16;
        Button06.image_button_index = 17;
        Button07.image_button_index = 18;
        Button08.image_button_index = 19;
        Button09.image_button_index = 20;
        Button10.image_button_index = 21;
        Button11.image_button_index = 22;
        Button12.image_button_index = 23;
        break;
    }
    break
    
    case 2:
    switch(PageOrbs) {
        case 1:
        Button01.image_button_index = 0;
        Button02.image_button_index = 1;
        Button03.image_button_index = 2;
        Button04.image_button_index = 3;
        Button05.image_button_index = 4;
        Button06.image_button_index = 5;
        Button07.image_button_index = 6;
        Button08.image_button_index = 7;
        Button09.image_button_index = 8;
        Button10.image_button_index = 9;
        Button11.image_button_index = 10;
        Button12.image_button_index = 11;
        break;
        
        case 2:
        Button01.image_button_index = 12;
        Button02.image_button_index = 13;
        Button03.image_button_index = 14;
        Button04.image_button_index = 15;
        Button05.image_button_index = 16;
        Button06.image_button_index = 17;
        Button07.image_button_index = 18;
        Button08.image_button_index = 19;
        Button09.image_button_index = 20;
        Button10.image_button_index = 21;
        Button11.image_button_index = 22;
        Button12.image_button_index = 23;
        break;
    }
    break
    
    case 3:
    switch(PageTriggers) {
        case 1:
        Button01.image_button_index = 0;
        Button02.image_button_index = 1;
        Button03.image_button_index = 2;
        Button04.image_button_index = 3;
        Button05.image_button_index = 4;
        Button06.image_button_index = 5;
        Button07.image_button_index = 6;
        Button08.image_button_index = 7;
        Button09.image_button_index = 8;
        Button10.image_button_index = 9;
        Button11.image_button_index = 10;
        Button12.image_button_index = 11;
        break;
        
        case 2:
        Button01.image_button_index = 12;
        Button02.image_button_index = 13;
        Button03.image_button_index = 14;
        Button04.image_button_index = 15;
        Button05.image_button_index = 16;
        Button06.image_button_index = 17;
        Button07.image_button_index = 18;
        Button08.image_button_index = 19;
        Button09.image_button_index = 20;
        Button10.image_button_index = 21;
        Button11.image_button_index = 22;
        Button12.image_button_index = 23;
        break;
    }
    break
}

#define scr_switchCBCheckBox
switch(group_id) {
    case 0:
    global.ShaderColorBlindMode = 0;
    obj_ShaderColorBlindMode.mode = global.ShaderColorBlindMode;
    break;
    
    case 1:
    global.ShaderColorBlindMode = 1;
    obj_ShaderColorBlindMode.mode = global.ShaderColorBlindMode;
    break;
    
    case 2:
    global.ShaderColorBlindMode = 2;
    obj_ShaderColorBlindMode.mode = global.ShaderColorBlindMode;
    break;
    
    case 3:
    global.EnableCB = !global.EnableCB;
    obj_ShaderColorBlindMode.enabled = global.EnableCB;
    break;
    
    case 4:
    ShaderTriggerID.DrawShaders = !ShaderTriggerID.DrawShaders;
    obj_ShaderControl.Enabled = ShaderTriggerID.DrawShaders;
    break;
    
    case 5:
    if (ColorTriggerID.TriggerModeEdit == 0) {
        ColorTriggerID.TriggerModeEdit = 1;
    }
    else if (ColorTriggerID.TriggerModeEdit == 1) {
        ColorTriggerID.TriggerModeEdit = 0;
    }
    break;
    
    case 6:
    if (ZoomCameraID.TriggerModeEdit == 0) {
        ZoomCameraID.TriggerModeEdit = 1;
    }
    else if (ZoomCameraID.TriggerModeEdit == 1) {
        ZoomCameraID.TriggerModeEdit = 0;
    }
    break;
    
    case 7:
    if (RotateCameraID.TriggerModeEdit == 0) {
        RotateCameraID.TriggerModeEdit = 1;
    }
    else if (RotateCameraID.TriggerModeEdit == 1) {
        RotateCameraID.TriggerModeEdit = 0;
    }
    break;
    
    case 8:
    if (ShakeEffectID.TriggerModeEdit == 0) {
        ShakeEffectID.TriggerModeEdit = 1;
    }
    else if (ShakeEffectID.TriggerModeEdit == 1) {
        ShakeEffectID.TriggerModeEdit = 0;
    }
    break;
    
    case 9:
    if (TimeWarpID.TriggerModeEdit == 0) {
        TimeWarpID.TriggerModeEdit = 1;
    }
    else if (TimeWarpID.TriggerModeEdit == 1) {
        TimeWarpID.TriggerModeEdit = 0;
    }
    break;
    
    case 10:
    if (SongTriggerID.TriggerModeEdit == 0) {
        SongTriggerID.TriggerModeEdit = 1;
    }
    else if (SongTriggerID.TriggerModeEdit == 1) {
        SongTriggerID.TriggerModeEdit = 0;
    }
    break;
    
    case 11:
    if (EndTriggerID.TriggerModeEdit == 0) {
        EndTriggerID.TriggerModeEdit = 1;
    }
    else if (EndTriggerID.TriggerModeEdit == 1) {
        EndTriggerID.TriggerModeEdit = 0;
    }
    break;
}

#define scr_ColorModeTrigger
switch(group_id) {
    case 0:
    if (ColorTriggerID.ColorMode == 2) {
        ColorTriggerID.ColorMode = 1;
    }
    else if (ColorTriggerID.ColorMode == 1) {
        ColorTriggerID.ColorMode = 2;
    }
    break;
    
    case 1:
    if (ColorTriggerID.ColorMode == 1) {
        ColorTriggerID.ColorMode = 2;
    }
    else if (ColorTriggerID.ColorMode == 2) {
        ColorTriggerID.ColorMode = 1;
    }
    break;
}
#define scr_switchSongList
switch(group_id) {
    case 0:
    switch(PageSongs) {
        case 1:
        PageSongs = 2;
        obj_GUIMenuSettings.StringSongs = "02: Back on Track";
        obj_GUIMenuSettings.ScaleText = 0.75;
        break;
        
        case 2:
        PageSongs = 3;
        obj_GUIMenuSettings.StringSongs = "03: Polargeist";
        obj_GUIMenuSettings.ScaleText = 0.75;
        break;
        
        case 3:
        PageSongs = 4;
        obj_GUIMenuSettings.StringSongs = "04: Dry Out";
        obj_GUIMenuSettings.ScaleText = 0.75;
        break;
        
        case 4:
        PageSongs = 5;
        obj_GUIMenuSettings.StringSongs = "05: Base After Base";
        obj_GUIMenuSettings.ScaleText = 0.65;
        break;
    }
    break;
    
    case 1:
    switch(PageSongs) {
        case 5:
        PageSongs = 4;
        obj_GUIMenuSettings.StringSongs = "04: Dry Out";
        obj_GUIMenuSettings.ScaleText = 0.75;
        break;
        
        case 4:
        PageSongs = 3;
        obj_GUIMenuSettings.StringSongs = "03: Polargeist";
        obj_GUIMenuSettings.ScaleText = 0.75;
        break;
        
        case 3:
        PageSongs = 2;
        obj_GUIMenuSettings.StringSongs = "02: Back on Track";
        obj_GUIMenuSettings.ScaleText = 0.75;
        break;
        
        case 2:
        PageSongs = 1;
        obj_GUIMenuSettings.StringSongs = "01: Stereo Madness";
        obj_GUIMenuSettings.ScaleText = 0.75;
        break;
    }
    break;
}
#define scr_exitGame
switch(group_id) {
    case 1:
    instance_destroy(obj_MenuExit)
    instance_destroy(obj_gsButtonExitGame)
    obj_GDOControler.alarm[1] = 10
    break;
    
    case 2:
    switch(os_type) {
        case os_windows:
        game_end();
        break;
        
        case os_android:
        game_restart();
        game_end();
        break;
    }
    break;
}