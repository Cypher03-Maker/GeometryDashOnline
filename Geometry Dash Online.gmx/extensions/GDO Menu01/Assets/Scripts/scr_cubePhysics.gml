#define scr_cubePhysics
// Wall cling to avoid accidental push-off
if ((!cRight && !cLeft) || onGround) {
    canStick = true;
    sticking = false;
}

if (((kRight && cLeft) || (kLeft && cRight)) && canStick && !onGround) {
    alarm[0] = clingTime;
    sticking = true; 
    canStick = false;       
}

// Wall jump
if (kJump && cLeft && !onGround) {   
    xscale = 0.5;
    yscale = 1.5;
                    
    for (var i = 0; i < 4; i++)
        instance_create(bbox_left, random_range(bbox_top, bbox_bottom), oFxDust);
                 
    // Wall jump is different when pushing off/towards the wall        
    if (kLeft) {
        vx = jumpHeight * .75;
        vy = (-jumpHeight * gravDir) * 1.1;
    } else {
        vx = vxMax;    
        vy = (-jumpHeight * gravDir) * 1.1;
    }  
} else if (kJump && cRight && !onGround) {   
    xscale = 0.5;
    yscale = 1.5;

    for (var i = 0; i < 4; i++)
        instance_create(bbox_right, random_range(bbox_top, bbox_bottom), oFxDust);
                               
    // Wall jump is different when pushing off/towards the wall  
    if (kRight) {
        vx = -jumpHeight * .75;
        vy = (-jumpHeight * gravDir) * 1.1;
    } else {
        vx = -vxMax;    
        vy = (-jumpHeight * gravDir) * 1.1;
    }  
}

// Jump 
if (kJump) {
    if (onGround) {
        // Fall thru platform
        if (kDown) && (place_meeting(x, y + 1, oParJumpThru) && !place_meeting(x, y + 1, oParSolid)) {
            ++y;
        // Normal jump
        } else {
            if StateAnim == 2 {
                xscale = 0.8;
                yscale = 1.8;
            }
            
            if (gravDir == 1.00) {
                instance_create(random_range(bbox_left, bbox_right), bbox_bottom, oFxDust);
            } else if (gravDir == -1.00) {
                instance_create(random_range(bbox_left, bbox_right), bbox_top, oFxDust);
            }
            
            vy = -jumpHeight * gravDir;
        }
    }
}

#define scr_shipPhysics
// Jump 
if (kJump) {
    gravNorm = -0.70;
} else {
    gravNorm = 0.70;
}

#define scr_ballPhysics
//Jump
if (kJumpPressed) {
    if (onGround) {
        for (var i = 0; i < 4; i++) {
            if (gravDir == 1.00) {
                instance_create(random_range(bbox_left, bbox_right), bbox_bottom, oFxDust);
            } else if (gravDir == -1.00) {
                instance_create(random_range(bbox_left, bbox_right), bbox_top, oFxDust);
            }
        }
        
        gravDir = -gravDir;
    }
}

#define scr_jetpackPhysics
// Jump 
if (kJump) {
    gravNorm = -0.90;
} else {
    gravNorm = 0.90;
}

#define scr_ufoPhysics
// Jump
if (kJumpPressed) {
    for (var i = 0; i < 4; i++) {
        if (gravDir == 1.00) {
            instance_create(random_range(bbox_left, bbox_right), bbox_bottom, oFxDust);
        } else if (gravDir == -1.00) {
            instance_create(random_range(bbox_left, bbox_right), bbox_top, oFxDust);
        }
    }
    
    vy = -jumpHeight;
}

#define scr_spiderPhysics
//Jump
if (kJumpPressed) {
    if (onGround) {
        for (var i = 0; i < 4; i++) {
            if (gravDir == 1.00) {
                instance_create(random_range(bbox_left, bbox_right), bbox_bottom, oFxDust);
            } else if (gravDir == -1.00) {
                instance_create(random_range(bbox_left, bbox_right), bbox_top, oFxDust);
            }
        }
        
        vyMax    = 100.00;
        gravNorm = 100.00;
        gravDir  = -gravDir;
        SpiderAlpha = 0.00;
    }
}

if (kLeft || kRight) {
    with (obj_SpiderAnimControler) {
        SpiderAnimState = "RUN"
    }
} else {
    with (obj_SpiderAnimControler) {
        SpiderAnimState = "IDLE"
    }
}

#define scr_swingCopterPhysics
//Jump
if (kJumpPressed) {
    for (var i = 0; i < 4; i++) {
        if (gravDir == 1.00) {
            instance_create(random_range(bbox_left, bbox_right), bbox_bottom, oFxDust);
        } else if (gravDir == -1.00) {
            instance_create(random_range(bbox_left, bbox_right), bbox_top, oFxDust);
        }
    }
    
    gravDir = -gravDir;
}

#define scr_armadilloPhysics
// Jump
if (kJumpPressed) {
    if (onGround) {
        for (var i = 0; i < 4; i++) {
            if (gravDir == 1.00) {
                instance_create(random_range(bbox_left, bbox_right), bbox_bottom, oFxDust);
            } else if (gravDir == -1.00) {
                instance_create(random_range(bbox_left, bbox_right), bbox_top, oFxDust);
            }
        }
        
        vy = -jumpHeight * gravDir;
        jumpState = 0
    }
}

if (kJumpPressed) {
    if (!onGround) {
        vy = jumpHeight * gravDir;
        jumpState = 1
    }
}

if (kLeft || kRight) {
    with (obj_ArmadilloAnimControler) {
        ArmadilloAnimState = "RUN"
    }
} else {
    with (obj_ArmadilloAnimControler) {
        ArmadilloAnimState = "IDLE"
    }
}