#define OnGround
/// OnGround();

if (place_meeting(x, y + 1 * gravDir, oParSolid) || (place_meeting(x, y + 1 * gravDir, oParJumpThru) && !place_meeting(x, y, oParJumpThru))) {
    if (GameMode == 1 || GameMode == 3 || GameMode == 4 || GameMode == 5 || GameMode == 6 || GameMode == 7 || GameMode == 8 || GameMode == 10) {
        return 1;
    }
    else {
        return 0;
    }
}

#define OnGroundPush
return place_meeting(x, y + 1 * gravDir, oParSolid) || (place_meeting(x, y + 1 * gravDir, oParJumpThru) && !place_meeting(x, y, oParJumpThru))