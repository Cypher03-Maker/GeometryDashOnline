#define scr_orbCollision
if (kJumpPressed && place_meeting(x, y, oParOrbs)) {
    switch(other.OrbGM) {
        case 1:
        vy = (-jumpHeight * gravDir) * 1.25;
        break;
        
        case 2:
        vy = (-jumpHeight * gravDir) * 0.75;
        break;
        
        case 3:
        vy = (-jumpHeight * gravDir) * 1.5;
        break;
        
        case 4:
        if (gravDir = 1) {
            gravDir = -1;
            gravNorm = -1.50
        }
        else if (gravDir = -1){
            gravDir = 1;
            gravNorm = 1.50;
        }
        vy = vyMax * gravDir;
        break;
        
        case 5:
        vy = (jumpHeight * gravDir) * 1.75;
        break;
        
        case 6:
        vy = (jumpHeight * gravDir) * 0.75;
        gravDir = -gravDir;
        break;
        
        case 7:
        vyMax    = 250.0;
        if (gravDir = 1) {
            gravDir = -1;
            gravNorm = 100.0 * -1;
        }
        else {
            gravDir = 1;
            gravNorm = 100.0 * 1;
        }
        
        vy = vyMax * gravDir;
        image_alpha = 0.5;
        break;
    }
}

#define scr_padCollision
if (place_meeting(x, y, oParPads)) {
    switch(other.PadGM) {
        case 1:
        vy = (-jumpHeight * gravDir) * 1.25;
        break;
        
        case 2:
        vy = (-jumpHeight * gravDir) * 0.75;
        break;
        
        case 3:
        vy = (-jumpHeight * gravDir) * 1.5;
        break;
        
        case 4:
        if (gravDir = 1) {
            gravDir = -1;
            gravNorm = -1.50
        }
        else if (gravDir = -1){
            gravDir = 1;
            gravNorm = 1.50;
        }
        vy = vyMax * gravDir;
        break;
        
        case 5:
        vyMax    = 250.0;
        if (gravDir = 1) {
            gravDir = -1;
            gravNorm = 100.0 * -1;
        }
        else {
            gravDir = 1;
            gravNorm = 100.0 * 1;
        }
        
        vy = vyMax * gravDir;
        image_alpha = 0.5;
        break;
    }
}

#define scr_orbSpecialCollision
if (place_meeting(x, y, oParOrbsSpecial)) {
    switch(other.OrbSpecialGM) {
        case 1:
        {
            if gravDir = 1
            {
                var _x1, _y1, _g1;
                    
                    _x1 = lengthdir_x(3 * other.ForceGrav, other.image_angle + 90);
                    _g1 = lengthdir_y(3 * other.ForceGrav, other.image_angle + 90); //-GravState * other.ForceGrav;
                    
                    vx += _x1;
                    gravNorm = (1.50 * _g1);
                    vy += gravNorm;
        
            }
            else if gravDir = -1
            {
                var _x1, _y1, _g1;
                    
                    _x1 = lengthdir_x(3 * other.ForceGrav, other.image_angle);
                    _g1 = lengthdir_y(3 * other.ForceGrav, other.image_angle);
                    
                    vx += _x1;
                    gravNorm = (1.50 * _g1);
                    vy -= gravNorm;
            }
        }
        break;
    }
}

#define scr_speedsCollision
if (place_meeting(x, y, oParSpeeds)) {
    switch(other.SpeedGM) {
        case 1:
        SpeedVar = 0.75;
        break;
        
        case 2:
        SpeedVar = 1.00;
        break;
        
        case 3:
        SpeedVar = 1.25;
        break;
        
        case 4:
        SpeedVar = 1.50;
        break;
        
        case 5:
        SpeedVar = 1.75;
        break;
    }
}