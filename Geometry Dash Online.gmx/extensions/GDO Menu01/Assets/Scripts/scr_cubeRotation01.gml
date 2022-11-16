#define scr_cubeRotation01
newimageangle = lerp(newimageangle,imageangle,.5)
if imageangle > 360 or imageangle < -360 {imageangle = 0; newimageangle = 0}; 

if gravDir = 1{imageangle = lerp(imageangle,imageangle,.003);
if !place_meeting(x,y+1,oParSolid){newimageangle = newimageangle - 5.8; imageangle = imageangle - 5.8;} else {//place_meeting(x,y+1,oParSolid){
if imageangle <   45 and imageangle > -45  {imageangle = 0}
if imageangle < - 44 and imageangle > -135 {imageangle = -90}
if imageangle < -134 and imageangle > -225 {imageangle = -180}
if imageangle < -224 and imageangle > -310 {imageangle = -270}
if imageangle < -309 and imageangle > -390 {imageangle = -360}}}// else {newimageangle = newimageangle - 3.8 ;imageangle = imageangle - 3.8;}}

if gravDir = -1 {imageangle = lerp(imageangle,imageangle,-.003);
if !place_meeting(x,y-1,oParSolid){newimageangle = newimageangle - 5.8; imageangle = imageangle - 5.8;} else {//place_meeting(x,y-1,oParSolid){
if imageangle <   45 and imageangle > -45  {imageangle = 0}
if imageangle < - 44 and imageangle > -135 {imageangle = -90}
if imageangle < -134 and imageangle > -225 {imageangle = -180}
if imageangle < -224 and imageangle > -310 {imageangle = -270}
if imageangle < -309 and imageangle > -390 {imageangle = -360}}}// else {newimageangle = newimageangle + 3.8 ;imageangle = imageangle + 3.8;}}

#define scr_cubeRotation02
newimageangle = lerp(newimageangle,imageangle,.3)
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