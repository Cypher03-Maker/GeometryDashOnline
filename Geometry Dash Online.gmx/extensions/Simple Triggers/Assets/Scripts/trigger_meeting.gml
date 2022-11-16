///trigger_meeting(x,y);
/*////////////////////////////////////////////////////
 Custom collision script for the triggers. The reason
 this is used, and not just place_meeting is because I
 ran into a bug where place_meeting wouldn't work for
 my Spine sprites with standard sprite masks.
 
 The trigger rectangle can be lying diagonally, thus
 we need to know all the corners of it, to test against
 the proper area.
 
 If either rectangle has a corner inside the other, we
 have a collision.
*/

//Target's bounding box
var _l, _r, _t, _b;
_l = bbox_left-x+argument0;
_r = bbox_right-x+argument0;
_t = bbox_top-y+argument1;
_b = bbox_bottom-y+argument1;

//Trigger's bounding box
var _x1, _y1, _x2, _y2, _x3, _y3, _x4, _y4;
with other {
 _x1 = x;
 _y1 = y;
 _x2 = _x1+lengthdir_x(sprite_width,image_angle);
 _y2 = _y1+lengthdir_y(sprite_width,image_angle);
 _x3 = _x1+lengthdir_x(sprite_height,image_angle-90);
 _y3 = _y1+lengthdir_y(sprite_height,image_angle-90);
 _x4 = _x2+_x3-_x1;
 _y4 = _y2+_y3-_y1;
}

//Corner test 1 (target's bounding box's corners inside the mask of the trigger)
if point_in_triangle(_l,_t,_x1,_y1,_x2,_y2,_x3,_y3) || point_in_triangle(_l,_t,_x4,_y4,_x2,_y2,_x3,_y3) || 
   point_in_triangle(_r,_t,_x1,_y1,_x2,_y2,_x3,_y3) || point_in_triangle(_r,_t,_x4,_y4,_x2,_y2,_x3,_y3) || 
   point_in_triangle(_l,_b,_x1,_y1,_x2,_y2,_x3,_y3) || point_in_triangle(_l,_b,_x4,_y4,_x2,_y2,_x3,_y3) || 
   point_in_triangle(_r,_b,_x1,_y1,_x2,_y2,_x3,_y3) || point_in_triangle(_r,_b,_x4,_y4,_x2,_y2,_x3,_y3) {
 return true;
}

//Corner test 2 (mask of the trigger's corners inside the bounding box of the target)
if point_in_rectangle(_x1,_y1,_l,_t,_r,_b) || point_in_rectangle(_x2,_y2,_l,_t,_r,_b) || 
   point_in_rectangle(_x3,_y3,_l,_t,_r,_b) || point_in_rectangle(_x4,_y4,_l,_t,_r,_b) {
 return true;
}

//No collision
return false;
