///keyboard_set_from_top(Y coordinate);

//This script will adjust the keyboard top border position to the given argument;

if instance_exists(object_keyboard){
    with(object_keyboard){
        y = real(argument0);
        __spse_keyboard_synchronize();
        }
    }
