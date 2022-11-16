#define PlaceMeetingException
var exception = argument3;

with (argument2) {
    // Allow 'other' access
    var this = id;
    
    if (id == exception)
        continue;
    else
        with (other)
            if (place_meeting(argument0, argument1, this))
                return true;
}

// Collision with a different object
return false;

#define scr_slopeCollision
///scr_slopeCollision(dir)

var dir = argument0

//UP slope
if (place_meeting(x + sign(vx), y, oParSolid) && !place_meeting(x + sign(vx), y - 6, oParSolid))
    y -= dir;
    
// DOWN slope
if (!place_meeting(x + sign(vx), y, oParSolid) && !place_meeting(x + sign(vx), y + 6, oParSolid) && place_meeting(x + sign(vx), y + 7, oParSolid))
    y += dir;
    
//UP slope
if (place_meeting(x + sign(vx), y, oParSolid) && !place_meeting(x + sign(vx), y + 6, oParSolid))
    y += dir;
    
// DOWN slope
if (!place_meeting(x + sign(vx), y, oParSolid) && !place_meeting(x + sign(vx), y - 6, oParSolid) && place_meeting(x + sign(vx), y - 7, oParSolid))
    y -= dir;
























/*//UP slope
    if (place_meeting(x + sign(vx), y, oParSolid) && !place_meeting(x + sign(vx), y - 1, oParSolid))
        --y;
    if (place_meeting(x + sign(vx), y, oParSolid) && place_meeting(x + sign(vx), y - 1, oParSolid) && !place_meeting(x + sign(vx), y - 2, oParSolid))
        y -= 2;
    if (place_meeting(x + sign(vx), y, oParSolid) && place_meeting(x + sign(vx), y - 1, oParSolid) && place_meeting(x + sign(vx), y - 2, oParSolid) && !place_meeting(x + sign(vx), y - 3, oParSolid))
        y -= 3;
    if (place_meeting(x + sign(vx), y, oParSolid) && place_meeting(x + sign(vx), y - 1, oParSolid) && place_meeting(x + sign(vx), y - 2, oParSolid) && place_meeting(x + sign(vx), y - 3, oParSolid) && !place_meeting(x + sign(vx), y - 4, oParSolid))
        y -= 4;
    if (place_meeting(x + sign(vx), y, oParSolid) && place_meeting(x + sign(vx), y - 1, oParSolid) && place_meeting(x + sign(vx), y - 2, oParSolid) && place_meeting(x + sign(vx), y - 3, oParSolid) && place_meeting(x + sign(vx), y - 4, oParSolid) && !place_meeting(x + sign(vx), y - 5, oParSolid))
        y -= 5;
    if (place_meeting(x + sign(vx), y, oParSolid) && place_meeting(x + sign(vx), y - 1, oParSolid) && place_meeting(x + sign(vx), y - 2, oParSolid) && place_meeting(x + sign(vx), y - 3, oParSolid) && place_meeting(x + sign(vx), y - 4, oParSolid) && place_meeting(x + sign(vx), y - 5, oParSolid) && !place_meeting(x + sign(vx), y - 6, oParSolid))
        y -= 6;
        
    // DOWN slope
    if (!place_meeting(x + sign(vx), y, oParSolid) && !place_meeting(x + sign(vx), y + 1, oParSolid) && place_meeting(x + sign(vx), y + 2, oParSolid))
        ++y;
    if (!place_meeting(x + sign(vx), y, oParSolid) && !place_meeting(x + sign(vx), y + 1, oParSolid) && !place_meeting(x + sign(vx), y + 2, oParSolid) && place_meeting(x + sign(vx), y + 3, oParSolid))
        y += 2;
    if (!place_meeting(x + sign(vx), y, oParSolid) && !place_meeting(x + sign(vx), y + 1, oParSolid) && !place_meeting(x + sign(vx), y + 2, oParSolid) && !place_meeting(x + sign(vx), y + 3, oParSolid) && place_meeting(x + sign(vx), y + 4, oParSolid))
        y += 3;
    if (!place_meeting(x + sign(vx), y, oParSolid) && !place_meeting(x + sign(vx), y + 1, oParSolid) && !place_meeting(x + sign(vx), y + 2, oParSolid) && !place_meeting(x + sign(vx), y + 3, oParSolid) && !place_meeting(x + sign(vx), y + 4, oParSolid) && place_meeting(x + sign(vx), y + 5, oParSolid))
        y += 4;
    if (!place_meeting(x + sign(vx), y, oParSolid) && !place_meeting(x + sign(vx), y + 1, oParSolid) && !place_meeting(x + sign(vx), y + 2, oParSolid) && !place_meeting(x + sign(vx), y + 3, oParSolid) && !place_meeting(x + sign(vx), y + 4, oParSolid) && !place_meeting(x + sign(vx), y + 5, oParSolid) && place_meeting(x + sign(vx), y + 6, oParSolid))
        y += 5;
    if (!place_meeting(x + sign(vx), y, oParSolid) && !place_meeting(x + sign(vx), y + 1, oParSolid) && !place_meeting(x + sign(vx), y + 2, oParSolid) && !place_meeting(x + sign(vx), y + 3, oParSolid) && !place_meeting(x + sign(vx), y + 4, oParSolid) && !place_meeting(x + sign(vx), y + 5, oParSolid) && !place_meeting(x + sign(vx), y + 6, oParSolid) && place_meeting(x + sign(vx), y + 7, oParSolid))
        y += 6;
*/