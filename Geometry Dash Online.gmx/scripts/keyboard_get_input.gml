///keyboard_get_input(mode)

if instance_exists(obj_keyboard)
	if argument[0]==0
		return obj_keyboard.TEXT
	else
		return obj_keyboard.letters
return ""

