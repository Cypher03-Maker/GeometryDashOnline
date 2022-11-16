///listen(freq,default);
var _freq = argument0; //The key/frequency to check for messages
if instance_exists(sys_broadcast) {
 if ds_map_exists(sys_broadcast.map_current,_freq) {
  //Return the message
  return sys_broadcast.map_current[? _freq];
 }
}

//This script will return the chosen default value if no messages are found
return argument1;
