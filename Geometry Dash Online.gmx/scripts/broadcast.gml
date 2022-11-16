///broadcast(freq,msg);
var _freq, _msg;
_freq = argument0; //(the key in the ds_map in sys_broadcast)
_msg = argument1; //(the string or integer to broadcast)

//Create sys_broadcast if it does not exist
if !instance_exists(sys_broadcast) {
 instance_create(0,0,sys_broadcast);
}

//Broadcast
sys_broadcast.map_next[? _freq] = _msg;

/*////////////////////////////////////////////////////
 Remember, there can be only one message per frequency
 every step. If you broadcast a message on a frequency
 already in use, it will simply overwrite the message.
*/
