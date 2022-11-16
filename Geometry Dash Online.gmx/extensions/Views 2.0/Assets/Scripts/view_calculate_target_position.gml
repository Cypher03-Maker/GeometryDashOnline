///view_calculate_target_position(vind,[obj]/[x,y]);
var _view = argument[0], _x = view_xview[_view], _y = view_yview[_view];
if argument_count == 1 {
 //Follow view object
 if instance_exists(view_object[_view]) {
  var _c = 0;
  _x = 0;
  _y = 0;
  //Loop through multiple instances (or just one)
  with view_object[_view] {
   _x += x;
   _y += y;
   _c++;
  }
  //Divide to get the mean
  _x /= _c;
  _y /= _c;
 }
} else if argument_count == 2 {
 //Follow object (1 argument)
 if instance_exists(argument[1]) {
  var _c = 0;
  _x = 0;
  _y = 0;
  //Loop through multiple instances (or just one)
  with argument[1] {
   _x += x;
   _y += y;
   _c++;
  }
  //Divide to get the mean
  _x /= _c;
  _y /= _c;
 }
} else if argument_count > 2 {
 //Go to selected position (2 arguments)
 _x = argument[1];
 _y = argument[2];
}
//Add offset
_x += view_xoffset[_view];
_y += view_yoffset[_view];
//Calculate alignment
_x -= (view_wview[_view]-1)*view_halign[_view];
_y -= (view_hview[_view]-1)*view_valign[_view];
//Find center
var _offx, _offy, _len, _dir, _cx, _cy;
_offx = (view_wview[_view]-1)*view_halign[_view]+view_xoffset[_view];
_offy = (view_hview[_view]-1)*view_valign[_view]+view_yoffset[_view];
_len = point_distance(view_wview[_view]/2-_offx,view_hview[_view]/2-_offy,0,0); //Vector
_dir = point_direction(view_wview[_view]/2-_offx,view_hview[_view]/2-_offy,0,0);
_cx = _x+lengthdir_x(_len,_dir); //Center
_cy = _y+lengthdir_y(_len,_dir);
_dir = point_direction(0,0,view_wview[_view]/2-_offx,view_hview[_view]/2-_offy)-view_angle[_view]; //New vector
_x = _cx+lengthdir_x(_len,_dir); //New position
_y = _cy+lengthdir_y(_len,_dir);
//Return value
var _ret;
_ret[1] = _y;
_ret[0] = _x;
return _ret;