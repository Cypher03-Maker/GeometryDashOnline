///keyboard_create(depth)

// if you'll have more than 1 keyboard running at the same time, the keyboard functions won't work good

var _inst = instance_create(0,0,obj_keyboard);
_inst.depth = argument[0]
