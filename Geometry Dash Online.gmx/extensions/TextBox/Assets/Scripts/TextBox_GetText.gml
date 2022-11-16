///TextBox_GetText(num,reset)
var text = global.textshow[argument0]
if argument1 {
    TextBox_ResetText(argument0);
}
return(text);

