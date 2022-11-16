var count, c1, c2, amount;

/**************************************************************
*    Author: David Wolff of NPC
*
*    This script interpolates a list of colors by the given amount.
*
***************************************************************
*
*    color_lerp(color_array,amount)  returns color
*
*    color_array - an array of all colors to lerp
*    amount - The amount to interpolate (between 0 and 1)
*
**************************************************************/

var color_array = argument0;
var amount = clamp(argument1, 0, 1);

count = array_length_1d(color_array);

c1 = floor((count*amount) mod count);
c2 = (c1+1) mod count;

lerp_amount = abs(amount*count-c1);

return merge_colour(color_array[c1],color_array[c2],lerp_amount);
