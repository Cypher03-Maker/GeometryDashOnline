#define scr_orbCollision
if (kJumpPressed && place_meeting(x, y, oParOrbs)) {
    switch(other.OrbGM) {
        case 1:
        vy = (-jumpHeight * gravDir) * 1.25;
        break;
        
        case 2:
        vy = (-jumpHeight * gravDir) * 0.5;
        break;
        
        case 3:
        vy = (-jumpHeight * gravDir) * 1.5;
        break;
        
        case 4:
        vy = (-jumpHeight * gravDir) * 0.25;
        gravDir = -gravDir;
        break;
        
        case 5:
        vy = (jumpHeight * gravDir);
        break;
        
        case 6:
        vy = (jumpHeight * gravDir);
        gravDir = -gravDir;
        break;
        
        case 7:
        vyMax    = 100.00;
        gravNorm = 100.00;
        gravDir  = -gravDir;
        
        image_alpha = 0;
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
        vy = (-jumpHeight * gravDir) * 0.5;
        break;
        
        case 3:
        vy = (-jumpHeight * gravDir) * 1.5;
        break;
        
        case 4:
        vy = (-jumpHeight * gravDir) * 0.25;
        gravDir = -gravDir;
        break;
    }
}

#define scr_orbSpecialCollision
if (kJumpPressed && place_meeting(x, y, oParOrbsSpecial)) {
    switch(other.OrbSpecialGM) {
        case 1:
        x = objOrbTeleport_02.id.x;
        y = objOrbTeleport_02.id.y;
        break;
        
        case 2:
        x = objOrbTeleport_01.id;
        y = objOrbTeleport_01.id;
        break;
    }
}
