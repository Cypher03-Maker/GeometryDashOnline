///TextBox_Step(num)
if !global.Selected[argument0] exit;
lk[argument0] = keyboard_lastkey;
switch global.InputType[argument0]{
    case 0:
        lc[argument0] = keyboard_lastchar 
    break;
    case 1:
       lc[argument0] = string_letters(keyboard_lastchar)  
    break;
    case 2:
        lc[argument0] = string_digits(keyboard_lastchar) 
    break;
}
if lk[argument0] = -1  exit;

if global.MaxChar[argument0] != -1 {
    if string_length(global.textshow[argument0]) >= global.MaxChar[argument0]{
        if lk[argument0] = vk_enter or lk[argument0] = vk_space { lk[argument0] = -1; }
        lc[argument0] = '';
    }
};
switch lk[argument0]{
    case vk_backspace:
        if string_char_at(global.textshow[argument0],string_length(global.textshow[argument0])) = '#'{
            global.textshow[argument0] = string_copy(global.textshow[argument0],1,string_length(global.textshow[argument0])-1)
        }
        global.textshow[argument0] = string_copy(global.textshow[argument0],1,string_length(global.textshow[argument0])-1)         
    break;
    case vk_space:        
        if !global.SpaceAllow[argument0] break;
        if string_byte_at(global.textshow[argument0],string_length(global.textshow[argument0])) = vk_space break;
        global.textshow[argument0] = global.textshow[argument0] + " ";
    break;
    case vk_enter:        
        if !global.EnterAllow[argument0] break;
        global.textshow[argument0] = global.textshow[argument0] + lc[argument0];
    break; 
    default:
        if lc[argument0] = '#'{  global.textshow[argument0] = global.textshow[argument0] + "\#" break; } 
        global.textshow[argument0] = global.textshow[argument0] + lc[argument0];
    break; 
}
keyboard_lastkey = -1;
keyboard_lastchar = '';
