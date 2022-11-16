#define scr_cubeRotation01
if (global.Pause == false) {
    newimageangle = lerp(newimageangle,imageangle,.5 * TimeWarp)
    if imageangle > 360 or imageangle < -360 {imageangle = 0; newimageangle = 0}; 
    
    if gravDir = 1{imageangle = lerp(imageangle,imageangle,.003 * TimeWarp)
    if !place_meeting(x,y+1,oParSolid){newimageangle = newimageangle - 5.8 * TimeWarp; imageangle = imageangle - 5.8 * TimeWarp;} else {//place_meeting(x,y+1,oParSolid){
    if imageangle <   45 and imageangle > -45  {imageangle = 0}
    if imageangle < - 44 and imageangle > -135 {imageangle = -90}
    if imageangle < -134 and imageangle > -225 {imageangle = -180}
    if imageangle < -224 and imageangle > -310 {imageangle = -270}
    if imageangle < -309 and imageangle > -390 {imageangle = -360}}}// else {newimageangle = newimageangle - 3.8 ;imageangle = imageangle - 3.8;}}
    
    if gravDir = -1 {imageangle = lerp(imageangle,imageangle,-.003 * TimeWarp)
    if !place_meeting(x,y-1,oParSolid){newimageangle = newimageangle - 5.8 * TimeWarp; imageangle = imageangle - 5.8 * TimeWarp;} else {//place_meeting(x,y-1,oParSolid){
    if imageangle <   45 and imageangle > -45  {imageangle = 0}
    if imageangle < - 44 and imageangle > -135 {imageangle = -90}
    if imageangle < -134 and imageangle > -225 {imageangle = -180}
    if imageangle < -224 and imageangle > -310 {imageangle = -270}
    if imageangle < -309 and imageangle > -390 {imageangle = -360}}}// else {newimageangle = newimageangle + 3.8 ;imageangle = imageangle + 3.8;}}
}

#define scr_cubeRotation02
if (global.Pause == false) {
    newimageangle = lerp(newimageangle,imageangle,.3 * TimeWarp)
    if imageangle > 360 or imageangle < -360 {imageangle = 0; newimageangle = 0}; 
    
    if gravDir = 1 {
    if imageangle <   45 and imageangle > -45  {imageangle = 0}
    if imageangle < - 44 and imageangle > -135 {imageangle = -90}
    if imageangle < -134 and imageangle > -225 {imageangle = -180}
    if imageangle < -224 and imageangle > -310 {imageangle = -270}
    if imageangle < -309 and imageangle > -390 {imageangle = -360}}
    
    if gravDir = -1 {
    if imageangle <   45 and imageangle > -45  {imageangle = 0}
    if imageangle < - 44 and imageangle > -135 {imageangle = -90}
    if imageangle < -134 and imageangle > -225 {imageangle = -180}
    if imageangle < -224 and imageangle > -310 {imageangle = -270}
    if imageangle < -309 and imageangle > -390 {imageangle = -360}}
}