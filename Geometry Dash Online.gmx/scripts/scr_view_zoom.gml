#define scr_view_zoom
///scr_view_zoom(amount, view_index)
var amount = 1+argument[0];
var view = argument[1];

if(view_wview[view] <= 1250 && amount < 1) exit;
if(view_wview[view] >= 5000 && amount > 1) exit;

var offx = abs(view_wview[view]*amount - view_wview[view]);
var offy = abs(view_hview[view]*amount - view_hview[view]);

view_wview[view] *= amount;
view_hview[view] *= amount;

if (amount < 1)
{
    view_xview[view] += offx;
    view_yview[view] += offy;
}
else if (amount > 1)
{
    view_xview[view] -= offx;
    view_yview[view] -= offy;
}

view_wview[view] = max(0, min(view_wview, room_width))
view_hview[view] = max(0, min(view_hview, room_height))

#define scr_string_split
///scr_string_split(string, substring)

my_string = argument0;
explode = argument1;

numbers = string_count(explode, my_string);

for (i = 0; i < numbers; i++)
{
    pos = string_pos(explode, my_string);
    array[i] = string_copy(my_string, 1, pos-1);
    my_string = string_delete(my_string, 1, pos);
}

return array;

#define scr_save_level
if (file_exists("CCGameLevelManager.dat")) {
    file_delete("CCGameLevelManager.dat");
}

var file = file_text_open_write("CCGameLevelManager.dat");
var map = ds_map_create();
var BlocksList = ds_list_create();
var SlopesList = ds_list_create();
var PushBlock = ds_list_create();
var FadeBlock = ds_list_create();

var OrbJump = ds_list_create();
var OrbMinJump = ds_list_create();
var OrbMaxJump = ds_list_create();
var OrbGravity01 = ds_list_create();
var OrbBackJump = ds_list_create();
var OrbGravity02 = ds_list_create();
var OrbTPList01 = ds_list_create();
var OrbTPList02 = ds_list_create();
var OrbSpider = ds_list_create();
var ForceBlock = ds_list_create();

var PadJump = ds_list_create();
var PadMinJump = ds_list_create();
var PadMaxJump = ds_list_create();
var PadGravity = ds_list_create();
var PadSpider = ds_list_create();

var PortalCube = ds_list_create();
var PortalBall = ds_list_create();
var PortalShip = ds_list_create();
var PortalUFO = ds_list_create();
var PortalWave = ds_list_create();
var PortalRobot = ds_list_create();
var PortalSpider = ds_list_create();
var PortalSwing = ds_list_create();
var PortalArmadillo = ds_list_create();

var PortalTP01 = ds_list_create();
var PortalTP02 = ds_list_create();
var PortalMirror01 = ds_list_create();
var PortalMirror02 = ds_list_create();
var PortalGravity01 = ds_list_create();
var PortalGravity02 = ds_list_create();

var Speed01 = ds_list_create();
var Speed02 = ds_list_create();
var Speed03 = ds_list_create();
var Speed04 = ds_list_create();
var Speed05 = ds_list_create();

var ZoomTrigger = ds_list_create();
var RotateTrigger = ds_list_create();
var ShakeTrigger = ds_list_create();
var TimeWarpTrigger = ds_list_create();
var SongTrigger = ds_list_create();
var EndTrigger = ds_list_create();
var ColorTrigger = ds_list_create();

var LevelSettings = ds_list_create();

//Add the lists to the map
ds_map_add_list(map, "Blocks", BlocksList);
ds_map_add_list(map, "PushBlock", PushBlock);
ds_map_add_list(map, "ForceBlock", ForceBlock);
ds_map_add_list(map, "FadeBlock", FadeBlock);

ds_map_add_list(map, "OrbJump", OrbJump);
ds_map_add_list(map, "OrbMinJump", OrbMinJump);
ds_map_add_list(map, "OrbMaxJump", OrbMaxJump);
ds_map_add_list(map, "OrbGravity01", OrbGravity01);
ds_map_add_list(map, "OrbBackJump", OrbBackJump);
ds_map_add_list(map, "OrbGravity02", OrbGravity02);
ds_map_add_list(map, "OrbTeleport01", OrbTPList01);
ds_map_add_list(map, "OrbTeleport02", OrbTPList02);
ds_map_add_list(map, "OrbSpider", OrbSpider);

ds_map_add_list(map, "PadJump", PadJump);
ds_map_add_list(map, "PadMinJump", PadMinJump);
ds_map_add_list(map, "PadMaxJump", PadMaxJump);
ds_map_add_list(map, "PadGravity", PadGravity);
ds_map_add_list(map, "PadSpider", PadSpider);

ds_map_add_list(map, "PortalCube", PortalCube);
ds_map_add_list(map, "PortalShip", PortalShip);
ds_map_add_list(map, "PortalBall", PortalBall);
ds_map_add_list(map, "PortalUFO", PortalUFO);
ds_map_add_list(map, "PortalWave", PortalWave);
ds_map_add_list(map, "PortalRobot", PortalRobot);
ds_map_add_list(map, "PortalSpider", PortalSpider);
ds_map_add_list(map, "PortalSwing", PortalSwing);
ds_map_add_list(map, "PortalArmadillo", PortalArmadillo);

ds_map_add_list(map, "PortalTP01", PortalTP01);
ds_map_add_list(map, "PortalTP02", PortalTP02);
ds_map_add_list(map, "PortalMirror01", PortalMirror01);
ds_map_add_list(map, "PortalMirror02", PortalMirror02);
ds_map_add_list(map, "PortalGravity01", PortalGravity01);
ds_map_add_list(map, "PortalGravity02", PortalGravity02);

ds_map_add_list(map, "Speed01", Speed01);
ds_map_add_list(map, "Speed02", Speed02);
ds_map_add_list(map, "Speed03", Speed03);
ds_map_add_list(map, "Speed04", Speed04);
ds_map_add_list(map, "Speed05", Speed05);

ds_map_add_list(map, "ZoomTrigger", ZoomTrigger);
ds_map_add_list(map, "RotateTrigger", RotateTrigger);
ds_map_add_list(map, "ShakeTrigger", ShakeTrigger);
ds_map_add_list(map, "TimeWarpTrigger", TimeWarpTrigger);
ds_map_add_list(map, "SongTrigger", SongTrigger);
ds_map_add_list(map, "EndTrigger", EndTrigger);
ds_map_add_list(map, "ColorTrigger", ColorTrigger);

ds_map_add_list(map, "LevelSettings", LevelSettings);

//Go through all Wall_1 objects and add them to list
with (obj_DragBlocks) {
    //Create a map to represent this instance
    var instance_map = ds_map_create();
    
    //Store the Positions
    ds_map_add(instance_map, "x", x);
    ds_map_add(instance_map, "y", y);
    ds_map_add(instance_map, "image_index", image_index);
    ds_map_add(instance_map, "ScaleBlocks", ScaleBlocks);
    ds_map_add(instance_map, "AlphaBlocks", AlphaBlocks);
    ds_map_add(instance_map, "AngleBlocks", AngleBlocks);
    
    //Add the map to the Wall_1 list
    var pos = ds_list_size(BlocksList);
    ds_list_add(BlocksList, instance_map);
    ds_list_mark_as_map(BlocksList, pos);
}

with (objOrbJump_Edit) {
    //Create a map to represent this instance
    var instance_map = ds_map_create();
    
    //Store the Positions
    ds_map_add(instance_map, "x", x);
    ds_map_add(instance_map, "y", y);
    ds_map_add(instance_map, "ScaleBlocks", ScaleBlocks);
    ds_map_add(instance_map, "AlphaBlocks", AlphaBlocks);
    ds_map_add(instance_map, "AngleBlocks", AngleBlocks);
    
    //Add the map to the Wall_1 list
    var pos = ds_list_size(OrbJump);
    ds_list_add(OrbJump, instance_map);
    ds_list_mark_as_map(OrbJump, pos);
}

with (objOrbMinJump_Edit) {
    //Create a map to represent this instance
    var instance_map = ds_map_create();
    
    //Store the Positions
    ds_map_add(instance_map, "x", x);
    ds_map_add(instance_map, "y", y);
    ds_map_add(instance_map, "ScaleBlocks", ScaleBlocks);
    ds_map_add(instance_map, "AlphaBlocks", AlphaBlocks);
    ds_map_add(instance_map, "AngleBlocks", AngleBlocks);
    
    //Add the map to the Wall_1 list
    var pos = ds_list_size(OrbMinJump);
    ds_list_add(OrbMinJump, instance_map);
    ds_list_mark_as_map(OrbMinJump, pos);
}

with (objOrbMaxJump_Edit) {
    //Create a map to represent this instance
    var instance_map = ds_map_create();
    
    //Store the Positions
    ds_map_add(instance_map, "x", x);
    ds_map_add(instance_map, "y", y);
    ds_map_add(instance_map, "ScaleBlocks", ScaleBlocks);
    ds_map_add(instance_map, "AlphaBlocks", AlphaBlocks);
    ds_map_add(instance_map, "AngleBlocks", AngleBlocks);
    
    //Add the map to the Wall_1 list
    var pos = ds_list_size(OrbMaxJump);
    ds_list_add(OrbMaxJump, instance_map);
    ds_list_mark_as_map(OrbMaxJump, pos);
}

with (objOrbGravity01_Edit) {
    //Create a map to represent this instance
    var instance_map = ds_map_create();
    
    //Store the Positions
    ds_map_add(instance_map, "x", x);
    ds_map_add(instance_map, "y", y);
    ds_map_add(instance_map, "ScaleBlocks", ScaleBlocks);
    ds_map_add(instance_map, "AlphaBlocks", AlphaBlocks);
    ds_map_add(instance_map, "AngleBlocks", AngleBlocks);
    
    //Add the map to the Wall_1 list
    var pos = ds_list_size(OrbGravity01);
    ds_list_add(OrbGravity01, instance_map);
    ds_list_mark_as_map(OrbGravity01, pos);
}

with (objOrbBackJump_Edit) {
    //Create a map to represent this instance
    var instance_map = ds_map_create();
    
    //Store the Positions
    ds_map_add(instance_map, "x", x);
    ds_map_add(instance_map, "y", y);
    ds_map_add(instance_map, "ScaleBlocks", ScaleBlocks);
    ds_map_add(instance_map, "AlphaBlocks", AlphaBlocks);
    ds_map_add(instance_map, "AngleBlocks", AngleBlocks);
    
    //Add the map to the Wall_1 list
    var pos = ds_list_size(OrbBackJump);
    ds_list_add(OrbBackJump, instance_map);
    ds_list_mark_as_map(OrbBackJump, pos);
}

with (objOrbGravity02_Edit) {
    //Create a map to represent this instance
    var instance_map = ds_map_create();
    
    //Store the Positions
    ds_map_add(instance_map, "x", x);
    ds_map_add(instance_map, "y", y);
    ds_map_add(instance_map, "ScaleBlocks", ScaleBlocks);
    ds_map_add(instance_map, "AlphaBlocks", AlphaBlocks);
    ds_map_add(instance_map, "AngleBlocks", AngleBlocks);
    
    //Add the map to the Wall_1 list
    var pos = ds_list_size(OrbGravity02);
    ds_list_add(OrbGravity02, instance_map);
    ds_list_mark_as_map(OrbGravity02, pos);
}

with (objOrbTeleport01_Edit) {
    //Create a map to represent this instance
    var instance_map = ds_map_create();
    
    //Store the Positions
    ds_map_add(instance_map, "x", x);
    ds_map_add(instance_map, "y", y);
    ds_map_add(instance_map, "ScaleBlocks", ScaleBlocks);
    ds_map_add(instance_map, "AlphaBlocks", AlphaBlocks);
    ds_map_add(instance_map, "AngleBlocks", AngleBlocks);
    
    //Add the map to the Wall_1 list
    var pos = ds_list_size(OrbTPList01);
    ds_list_add(OrbTPList01, instance_map);
    ds_list_mark_as_map(OrbTPList01, pos);
}

with (objOrbTeleport02_Edit) {
    //Create a map to represent this instance
    var instance_map = ds_map_create();
    
    //Store the Positions
    ds_map_add(instance_map, "x", x);
    ds_map_add(instance_map, "y", y);
    ds_map_add(instance_map, "ScaleBlocks", ScaleBlocks);
    ds_map_add(instance_map, "AlphaBlocks", AlphaBlocks);
    ds_map_add(instance_map, "AngleBlocks", AngleBlocks);
    
    //Add the map to the Wall_1 list
    var pos = ds_list_size(OrbTPList02);
    ds_list_add(OrbTPList02, instance_map);
    ds_list_mark_as_map(OrbTPList02, pos);
}

with (objOrbSpider_Edit) {
    //Create a map to represent this instance
    var instance_map = ds_map_create();
    
    //Store the Positions
    ds_map_add(instance_map, "x", x);
    ds_map_add(instance_map, "y", y);
    ds_map_add(instance_map, "ScaleBlocks", ScaleBlocks);
    ds_map_add(instance_map, "AlphaBlocks", AlphaBlocks);
    ds_map_add(instance_map, "AngleBlocks", AngleBlocks);
    
    //Add the map to the Wall_1 list
    var pos = ds_list_size(OrbSpider);
    ds_list_add(OrbSpider, instance_map);
    ds_list_mark_as_map(OrbSpider, pos);
}

with (objForceBlock_Edit) {
    //Create a map to represent this instance
    var instance_map = ds_map_create();
    
    //Store the Positions
    ds_map_add(instance_map, "x", x);
    ds_map_add(instance_map, "y", y);
    ds_map_add(instance_map, "ScaleBlocks", ScaleBlocks);
    ds_map_add(instance_map, "AngleBlocks", AngleBlocks);
    ds_map_add(instance_map, "AlphaBlocks", AlphaBlocks);
    ds_map_add(instance_map, "ForceGravDest", ForceGravDest);
    
    //Add the map to the Wall_1 list
    var pos = ds_list_size(ForceBlock);
    ds_list_add(ForceBlock, instance_map);
    ds_list_mark_as_map(ForceBlock, pos);
}

with (objFadeBlock_Edit) {
    //Create a map to represent this instance
    var instance_map = ds_map_create();
    
    //Store the Positions
    ds_map_add(instance_map, "x", x);
    ds_map_add(instance_map, "y", y);
    ds_map_add(instance_map, "ScaleBlocks", ScaleBlocks);
    ds_map_add(instance_map, "AlphaBlocks", AlphaBlocks);
    ds_map_add(instance_map, "AngleBlocks", AngleBlocks);
    
    //Add the map to the Wall_1 list
    var pos = ds_list_size(FadeBlock);
    ds_list_add(FadeBlock, instance_map);
    ds_list_mark_as_map(FadeBlock, pos);
}

with (objPadJump_Edit) {
    //Create a map to represent this instance
    var instance_map = ds_map_create();
    
    //Store the Positions
    ds_map_add(instance_map, "x", x);
    ds_map_add(instance_map, "y", y);
    ds_map_add(instance_map, "ScaleBlocks", ScaleBlocks);
    ds_map_add(instance_map, "AlphaBlocks", AlphaBlocks);
    ds_map_add(instance_map, "AngleBlocks", AngleBlocks);
    
    //Add the map to the Wall_1 list
    var pos = ds_list_size(PadJump);
    ds_list_add(PadJump, instance_map);
    ds_list_mark_as_map(PadJump, pos);
}

with (objPadMinJump_Edit) {
    //Create a map to represent this instance
    var instance_map = ds_map_create();
    
    //Store the Positions
    ds_map_add(instance_map, "x", x);
    ds_map_add(instance_map, "y", y);
    ds_map_add(instance_map, "ScaleBlocks", ScaleBlocks);
    ds_map_add(instance_map, "AlphaBlocks", AlphaBlocks);
    ds_map_add(instance_map, "AngleBlocks", AngleBlocks);
    
    //Add the map to the Wall_1 list
    var pos = ds_list_size(PadMinJump);
    ds_list_add(PadMinJump, instance_map);
    ds_list_mark_as_map(PadMinJump, pos);
}

with (objPadMaxJump_Edit) {
    //Create a map to represent this instance
    var instance_map = ds_map_create();
    
    //Store the Positions
    ds_map_add(instance_map, "x", x);
    ds_map_add(instance_map, "y", y);
    ds_map_add(instance_map, "ScaleBlocks", ScaleBlocks);
    ds_map_add(instance_map, "AlphaBlocks", AlphaBlocks);
    ds_map_add(instance_map, "AngleBlocks", AngleBlocks);
    
    //Add the map to the Wall_1 list
    var pos = ds_list_size(PadMaxJump);
    ds_list_add(PadMaxJump, instance_map);
    ds_list_mark_as_map(PadMaxJump, pos);
}

with (objPadGravity_Edit) {
    //Create a map to represent this instance
    var instance_map = ds_map_create();
    
    //Store the Positions
    ds_map_add(instance_map, "x", x);
    ds_map_add(instance_map, "y", y);
    ds_map_add(instance_map, "ScaleBlocks", ScaleBlocks);
    ds_map_add(instance_map, "AlphaBlocks", AlphaBlocks);
    ds_map_add(instance_map, "AngleBlocks", AngleBlocks);
    
    //Add the map to the Wall_1 list
    var pos = ds_list_size(PadGravity);
    ds_list_add(PadGravity, instance_map);
    ds_list_mark_as_map(PadGravity, pos);
}

with (objPadSpider_Edit) {
    //Create a map to represent this instance
    var instance_map = ds_map_create();
    
    //Store the Positions
    ds_map_add(instance_map, "x", x);
    ds_map_add(instance_map, "y", y);
    ds_map_add(instance_map, "ScaleBlocks", ScaleBlocks);
    ds_map_add(instance_map, "AlphaBlocks", AlphaBlocks);
    ds_map_add(instance_map, "AngleBlocks", AngleBlocks);
    
    //Add the map to the Wall_1 list
    var pos = ds_list_size(PadSpider);
    ds_list_add(PadSpider, instance_map);
    ds_list_mark_as_map(PadSpider, pos);
}

with (objPushBlock_Edit) {
    //Create a map to represent this instance
    var instance_map = ds_map_create();
    
    //Store the Positions
    ds_map_add(instance_map, "x", x);
    ds_map_add(instance_map, "y", y);
    ds_map_add(instance_map, "ScaleBlocks", ScaleBlocks);
    ds_map_add(instance_map, "AlphaBlocks", AlphaBlocks);
    ds_map_add(instance_map, "AngleBlocks", AngleBlocks);
    
    //Add the map to the Wall_1 list
    var pos = ds_list_size(PushBlock);
    ds_list_add(PushBlock, instance_map);
    ds_list_mark_as_map(PushBlock, pos);
}

with (objPortalCube_Edit) {
    //Create a map to represent this instance
    var instance_map = ds_map_create();
    
    //Store the Positions
    ds_map_add(instance_map, "x", x);
    ds_map_add(instance_map, "y", y);
    ds_map_add(instance_map, "image_index", image_index);
    ds_map_add(instance_map, "ScaleBlocks", ScaleBlocks);
    ds_map_add(instance_map, "AlphaBlocks", AlphaBlocks);
    ds_map_add(instance_map, "AngleBlocks", AngleBlocks);
    
    //Add the map to the Wall_1 list
    var pos = ds_list_size(PortalCube);
    ds_list_add(PortalCube, instance_map);
    ds_list_mark_as_map(PortalCube, pos);
}

with (objPortalShip_Edit) {
    //Create a map to represent this instance
    var instance_map = ds_map_create();
    
    //Store the Positions
    ds_map_add(instance_map, "x", x);
    ds_map_add(instance_map, "y", y);
    ds_map_add(instance_map, "ScaleBlocks", ScaleBlocks);
    ds_map_add(instance_map, "AlphaBlocks", AlphaBlocks);
    ds_map_add(instance_map, "AngleBlocks", AngleBlocks);
    
    //Add the map to the Wall_1 list
    var pos = ds_list_size(PortalShip);
    ds_list_add(PortalShip, instance_map);
    ds_list_mark_as_map(PortalShip, pos);
}

with (objPortalBall_Edit) {
    //Create a map to represent this instance
    var instance_map = ds_map_create();
    
    //Store the Positions
    ds_map_add(instance_map, "x", x);
    ds_map_add(instance_map, "y", y);
    ds_map_add(instance_map, "ScaleBlocks", ScaleBlocks);
    ds_map_add(instance_map, "AlphaBlocks", AlphaBlocks);
    ds_map_add(instance_map, "AngleBlocks", AngleBlocks);
    
    //Add the map to the Wall_1 list
    var pos = ds_list_size(PortalBall);
    ds_list_add(PortalBall, instance_map);
    ds_list_mark_as_map(PortalBall, pos);
}

with (objPortalUFO_Edit) {
    //Create a map to represent this instance
    var instance_map = ds_map_create();
    
    //Store the Positions
    ds_map_add(instance_map, "x", x);
    ds_map_add(instance_map, "y", y);
    ds_map_add(instance_map, "ScaleBlocks", ScaleBlocks);
    ds_map_add(instance_map, "AlphaBlocks", AlphaBlocks);
    ds_map_add(instance_map, "AngleBlocks", AngleBlocks);
    
    //Add the map to the Wall_1 list
    var pos = ds_list_size(PortalUFO);
    ds_list_add(PortalUFO, instance_map);
    ds_list_mark_as_map(PortalUFO, pos);
}

with (objPortalWave_Edit) {
    //Create a map to represent this instance
    var instance_map = ds_map_create();
    
    //Store the Positions
    ds_map_add(instance_map, "x", x);
    ds_map_add(instance_map, "y", y);
    ds_map_add(instance_map, "ScaleBlocks", ScaleBlocks);
    ds_map_add(instance_map, "AlphaBlocks", AlphaBlocks);
    ds_map_add(instance_map, "AngleBlocks", AngleBlocks);
    
    //Add the map to the Wall_1 list
    var pos = ds_list_size(PortalWave);
    ds_list_add(PortalWave, instance_map);
    ds_list_mark_as_map(PortalWave, pos);
}

with (objPortalRobot_Edit) {
    //Create a map to represent this instance
    var instance_map = ds_map_create();
    
    //Store the Positions
    ds_map_add(instance_map, "x", x);
    ds_map_add(instance_map, "y", y);
    ds_map_add(instance_map, "ScaleBlocks", ScaleBlocks);
    ds_map_add(instance_map, "AlphaBlocks", AlphaBlocks);
    ds_map_add(instance_map, "AngleBlocks", AngleBlocks);
    
    //Add the map to the Wall_1 list
    var pos = ds_list_size(PortalRobot);
    ds_list_add(PortalRobot, instance_map);
    ds_list_mark_as_map(PortalRobot, pos);
}

with (objPortalSpider_Edit) {
    //Create a map to represent this instance
    var instance_map = ds_map_create();
    
    //Store the Positions
    ds_map_add(instance_map, "x", x);
    ds_map_add(instance_map, "y", y);
    ds_map_add(instance_map, "ScaleBlocks", ScaleBlocks);
    ds_map_add(instance_map, "AlphaBlocks", AlphaBlocks);
    ds_map_add(instance_map, "AngleBlocks", AngleBlocks);
    
    //Add the map to the Wall_1 list
    var pos = ds_list_size(PortalSpider);
    ds_list_add(PortalSpider, instance_map);
    ds_list_mark_as_map(PortalSpider, pos);
}

with (objPortalSwing_Edit) {
    //Create a map to represent this instance
    var instance_map = ds_map_create();
    
    //Store the Positions
    ds_map_add(instance_map, "x", x);
    ds_map_add(instance_map, "y", y);
    ds_map_add(instance_map, "ScaleBlocks", ScaleBlocks);
    ds_map_add(instance_map, "AlphaBlocks", AlphaBlocks);
    ds_map_add(instance_map, "AngleBlocks", AngleBlocks);
    
    //Add the map to the Wall_1 list
    var pos = ds_list_size(PortalSwing);
    ds_list_add(PortalSwing, instance_map);
    ds_list_mark_as_map(PortalSwing, pos);
}

with (objPortalTeleport01_Edit) {
    //Create a map to represent this instance
    var instance_map = ds_map_create();
    
    //Store the Positions
    ds_map_add(instance_map, "x", x);
    ds_map_add(instance_map, "y", y);
    ds_map_add(instance_map, "ScaleBlocks", ScaleBlocks);
    ds_map_add(instance_map, "AlphaBlocks", AlphaBlocks);
    ds_map_add(instance_map, "AngleBlocks", AngleBlocks);
    
    //Add the map to the Wall_1 list
    var pos = ds_list_size(PortalTP01);
    ds_list_add(PortalTP01, instance_map);
    ds_list_mark_as_map(PortalTP01, pos);
}

with (objPortalTeleport02_Edit) {
    //Create a map to represent this instance
    var instance_map = ds_map_create();
    
    //Store the Positions
    ds_map_add(instance_map, "x", x);
    ds_map_add(instance_map, "y", y);
    ds_map_add(instance_map, "ScaleBlocks", ScaleBlocks);
    ds_map_add(instance_map, "AlphaBlocks", AlphaBlocks);
    ds_map_add(instance_map, "AngleBlocks", AngleBlocks);
    
    //Add the map to the Wall_1 list
    var pos = ds_list_size(PortalTP02);
    ds_list_add(PortalTP02, instance_map);
    ds_list_mark_as_map(PortalTP02, pos);
}

with (objPortalMirror01_Edit) {
    //Create a map to represent this instance
    var instance_map = ds_map_create();
    
    //Store the Positions
    ds_map_add(instance_map, "x", x);
    ds_map_add(instance_map, "y", y);
    ds_map_add(instance_map, "ScaleBlocks", ScaleBlocks);
    ds_map_add(instance_map, "AlphaBlocks", AlphaBlocks);
    ds_map_add(instance_map, "AngleBlocks", AngleBlocks);
    
    //Add the map to the Wall_1 list
    var pos = ds_list_size(PortalMirror01);
    ds_list_add(PortalMirror01, instance_map);
    ds_list_mark_as_map(PortalMirror01, pos);
}

with (objPortalMirror02_Edit) {
    //Create a map to represent this instance
    var instance_map = ds_map_create();
    
    //Store the Positions
    ds_map_add(instance_map, "x", x);
    ds_map_add(instance_map, "y", y);
    ds_map_add(instance_map, "ScaleBlocks", ScaleBlocks);
    ds_map_add(instance_map, "AlphaBlocks", AlphaBlocks);
    ds_map_add(instance_map, "AngleBlocks", AngleBlocks);
    
    //Add the map to the Wall_1 list
    var pos = ds_list_size(PortalMirror02);
    ds_list_add(PortalMirror02, instance_map);
    ds_list_mark_as_map(PortalMirror02, pos);
}

with (objPortalGravity01_Edit) {
    //Create a map to represent this instance
    var instance_map = ds_map_create();
    
    //Store the Positions
    ds_map_add(instance_map, "x", x);
    ds_map_add(instance_map, "y", y);
    ds_map_add(instance_map, "ScaleBlocks", ScaleBlocks);
    ds_map_add(instance_map, "AlphaBlocks", AlphaBlocks);
    ds_map_add(instance_map, "AngleBlocks", AngleBlocks);
    
    //Add the map to the Wall_1 list
    var pos = ds_list_size(PortalGravity01);
    ds_list_add(PortalGravity01, instance_map);
    ds_list_mark_as_map(PortalGravity01, pos);
}

with (objPortalGravity02_Edit) {
    //Create a map to represent this instance
    var instance_map = ds_map_create();
    
    //Store the Positions
    ds_map_add(instance_map, "x", x);
    ds_map_add(instance_map, "y", y);
    ds_map_add(instance_map, "ScaleBlocks", ScaleBlocks);
    ds_map_add(instance_map, "AlphaBlocks", AlphaBlocks);
    ds_map_add(instance_map, "AngleBlocks", AngleBlocks);
    
    //Add the map to the Wall_1 list
    var pos = ds_list_size(PortalGravity02);
    ds_list_add(PortalGravity02, instance_map);
    ds_list_mark_as_map(PortalGravity02, pos);
}

with (objSpeed01_Edit) {
    //Create a map to represent this instance
    var instance_map = ds_map_create();
    
    //Store the Positions
    ds_map_add(instance_map, "x", x);
    ds_map_add(instance_map, "y", y);
    ds_map_add(instance_map, "ScaleBlocks", ScaleBlocks);
    ds_map_add(instance_map, "AlphaBlocks", AlphaBlocks);
    ds_map_add(instance_map, "AngleBlocks", AngleBlocks);
    
    //Add the map to the Wall_1 list
    var pos = ds_list_size(Speed01);
    ds_list_add(Speed01, instance_map);
    ds_list_mark_as_map(Speed01, pos);
}

with (objSpeed02_Edit) {
    //Create a map to represent this instance
    var instance_map = ds_map_create();
    
    //Store the Positions
    ds_map_add(instance_map, "x", x);
    ds_map_add(instance_map, "y", y);
    ds_map_add(instance_map, "ScaleBlocks", ScaleBlocks);
    ds_map_add(instance_map, "AlphaBlocks", AlphaBlocks);
    ds_map_add(instance_map, "AngleBlocks", AngleBlocks);
    
    //Add the map to the Wall_1 list
    var pos = ds_list_size(Speed02);
    ds_list_add(Speed02, instance_map);
    ds_list_mark_as_map(Speed02, pos);
}

with (objSpeed03_Edit) {
    //Create a map to represent this instance
    var instance_map = ds_map_create();
    
    //Store the Positions
    ds_map_add(instance_map, "x", x);
    ds_map_add(instance_map, "y", y);
    ds_map_add(instance_map, "ScaleBlocks", ScaleBlocks);
    ds_map_add(instance_map, "AlphaBlocks", AlphaBlocks);
    ds_map_add(instance_map, "AngleBlocks", AngleBlocks);
    
    //Add the map to the Wall_1 list
    var pos = ds_list_size(Speed03);
    ds_list_add(Speed03, instance_map);
    ds_list_mark_as_map(Speed03, pos);
}

with (objSpeed04_Edit) {
    //Create a map to represent this instance
    var instance_map = ds_map_create();
    
    //Store the Positions
    ds_map_add(instance_map, "x", x);
    ds_map_add(instance_map, "y", y);
    ds_map_add(instance_map, "ScaleBlocks", ScaleBlocks);
    ds_map_add(instance_map, "AlphaBlocks", AlphaBlocks);
    ds_map_add(instance_map, "AngleBlocks", AngleBlocks);
    
    //Add the map to the Wall_1 list
    var pos = ds_list_size(Speed04);
    ds_list_add(Speed04, instance_map);
    ds_list_mark_as_map(Speed04, pos);
}

with (objSpeed05_Edit) {
    //Create a map to represent this instance
    var instance_map = ds_map_create();
    
    //Store the Positions
    ds_map_add(instance_map, "x", x);
    ds_map_add(instance_map, "y", y);
    ds_map_add(instance_map, "ScaleBlocks", ScaleBlocks);
    ds_map_add(instance_map, "AlphaBlocks", AlphaBlocks);
    ds_map_add(instance_map, "AngleBlocks", AngleBlocks);
    
    //Add the map to the Wall_1 list
    var pos = ds_list_size(Speed05);
    ds_list_add(Speed05, instance_map);
    ds_list_mark_as_map(Speed05, pos);
}

with (objTriggerCol_Edit) {
    //Create a map to represent this instance
    var instance_map = ds_map_create();
    
    //Store the Positions
    ds_map_add(instance_map, "x", x);
    ds_map_add(instance_map, "y", y);
    ds_map_add(instance_map, "RedBG", RedBG);
    ds_map_add(instance_map, "GreenBG", GreenBG);
    ds_map_add(instance_map, "BlueBG", BlueBG);
    ds_map_add(instance_map, "RedG", RedG);
    ds_map_add(instance_map, "GreenG", GreenG);
    ds_map_add(instance_map, "BlueG", BlueG);
    ds_map_add(instance_map, "ColorTime01", ColorTime01);
    ds_map_add(instance_map, "ColorTime02", ColorTime02);
    ds_map_add(instance_map, "ColorTime03", ColorTime03);
    ds_map_add(instance_map, "ColorMode", ColorMode);
    ds_map_add(instance_map, "TimeColor", TimeColor);
    ds_map_add(instance_map, "TimeNum01", TimeNum01);
    ds_map_add(instance_map, "TriggerMode", TriggerModeEdit);
    
    //Add the map to the Wall_1 list
    var pos = ds_list_size(ColorTrigger);
    ds_list_add(ColorTrigger, instance_map);
    ds_list_mark_as_map(ColorTrigger, pos);
}

with (objTriggerZoom_Edit) {
    //Create a map to represent this instance
    var instance_map = ds_map_create();
    
    //Store the Positions
    ds_map_add(instance_map, "x", x);
    ds_map_add(instance_map, "y", y);
    ds_map_add(instance_map, "ZoomCam", ZoomCamera);
    ds_map_add(instance_map, "TimeCam", TimeCamera);
    
    ds_map_add(instance_map, "TimeNum01", TimeNum01);
    ds_map_add(instance_map, "TimeNum02", TimeNum02);
    ds_map_add(instance_map, "TriggerMode", TriggerModeEdit);
    
    //Add the map to the Wall_1 list
    var pos = ds_list_size(ZoomTrigger);
    ds_list_add(ZoomTrigger, instance_map);
    ds_list_mark_as_map(ZoomTrigger, pos);
}

with (objTriggerRotateCam_Edit) {
    //Create a map to represent this instance
    var instance_map = ds_map_create();
    
    //Store the Positions
    ds_map_add(instance_map, "x", x);
    ds_map_add(instance_map, "y", y);
    ds_map_add(instance_map, "RotateCam", RotateCamera);
    ds_map_add(instance_map, "TimeCam", TimeCamera);
    
    ds_map_add(instance_map, "TimeNum01", TimeNum01);
    ds_map_add(instance_map, "TimeNum02", TimeNum02);
    ds_map_add(instance_map, "TriggerMode", TriggerModeEdit);
    
    //Add the map to the Wall_1 list
    var pos = ds_list_size(RotateTrigger);
    ds_list_add(RotateTrigger, instance_map);
    ds_list_mark_as_map(RotateTrigger, pos);
}

with (objTriggerShake_Edit) {
    //Create a map to represent this instance
    var instance_map = ds_map_create();
    
    //Store the Positions
    ds_map_add(instance_map, "x", x);
    ds_map_add(instance_map, "y", y);
    ds_map_add(instance_map, "ShakeX", ShakeXDest);
    ds_map_add(instance_map, "ShakeY", ShakeYDest);
    ds_map_add(instance_map, "ShakeAngle", ShakeAngleDest);
    ds_map_add(instance_map, "ShakeTime", ShakeTimeDest);
    
    ds_map_add(instance_map, "TimeNum01", TimeNum01);
    ds_map_add(instance_map, "TimeNum02", TimeNum02);
    ds_map_add(instance_map, "TimeNum03", TimeNum03);
    ds_map_add(instance_map, "TimeNum04", TimeNum04);
    ds_map_add(instance_map, "TriggerMode", TriggerModeEdit);
    
    //Add the map to the Wall_1 list
    var pos = ds_list_size(ShakeTrigger);
    ds_list_add(ShakeTrigger, instance_map);
    ds_list_mark_as_map(ShakeTrigger, pos);
}

with (objTriggerTimeWarp_Edit) {
    //Create a map to represent this instance
    var instance_map = ds_map_create();
    
    //Store the Positions
    ds_map_add(instance_map, "x", x);
    ds_map_add(instance_map, "y", y);
    ds_map_add(instance_map, "TimeWarp", TimeWarpDest);
    ds_map_add(instance_map, "TriggerMode", TriggerModeEdit);
    
    //Add the map to the Wall_1 list
    var pos = ds_list_size(TimeWarpTrigger);
    ds_list_add(TimeWarpTrigger, instance_map);
    ds_list_mark_as_map(TimeWarpTrigger, pos);
}

with (objTriggerSong_Edit) {
    //Create a map to represent this instance
    var instance_map = ds_map_create();
    
    //Store the Positions
    ds_map_add(instance_map, "x", x);
    ds_map_add(instance_map, "y", y);
    ds_map_add(instance_map, "TimeSongLength", TimeLimitSong);
    ds_map_add(instance_map, "TriggerMode", TriggerModeEdit);
    
    //Add the map to the Wall_1 list
    var pos = ds_list_size(SongTrigger);
    ds_list_add(SongTrigger, instance_map);
    ds_list_mark_as_map(SongTrigger, pos);
}

with (obj_LevelEditorOrd) {
    //Create a map to represent this instance
    var instance_map = ds_map_create();
    
    //Store the Positions
    ds_map_add(instance_map, "BGIndex", BGIndex);
    ds_map_add(instance_map, "GIndex", GIndex);
    ds_map_add(instance_map, "FGIndex", FGIndex);
    ds_map_add(instance_map, "FGAlpha", FGAlpha);
    ds_map_add(instance_map, "SongList", PageSongs);
    ds_map_add(instance_map, "MusicID", global.MusicID)
    
    //Add the map to the Wall_1 list
    var pos = ds_list_size(LevelSettings);
    ds_list_add(LevelSettings, instance_map);
    ds_list_mark_as_map(LevelSettings, pos);
}

//Create a JSON and save it
var json = json_encode(map);
file_text_write_string(file, json);

//Free the map
ds_map_destroy(map);
ds_list_destroy(BlocksList);
ds_list_destroy(SlopesList);

ds_list_destroy(OrbJump);
ds_list_destroy(OrbMinJump);
ds_list_destroy(OrbMaxJump);
ds_list_destroy(OrbGravity01);
ds_list_destroy(OrbBackJump);
ds_list_destroy(OrbGravity02);
ds_list_destroy(OrbTPList01);
ds_list_destroy(OrbTPList02);
ds_list_destroy(OrbSpider);

ds_list_destroy(PushBlock);
ds_list_destroy(ForceBlock);
ds_list_destroy(FadeBlock);

ds_list_destroy(PadJump);
ds_list_destroy(PadMinJump);
ds_list_destroy(PadMaxJump);
ds_list_destroy(PadGravity);
ds_list_destroy(PadSpider);

ds_list_destroy(PortalCube);
ds_list_destroy(PortalShip);
ds_list_destroy(PortalBall);
ds_list_destroy(PortalUFO);
ds_list_destroy(PortalWave);
ds_list_destroy(PortalRobot);
ds_list_destroy(PortalSpider);
ds_list_destroy(PortalSwing);
ds_list_destroy(PortalArmadillo);

ds_list_destroy(PortalTP01);
ds_list_destroy(PortalTP02);
ds_list_destroy(PortalMirror01);
ds_list_destroy(PortalMirror02);
ds_list_destroy(PortalGravity01);
ds_list_destroy(PortalGravity02);

ds_list_destroy(ZoomTrigger);
ds_list_destroy(RotateTrigger);
ds_list_destroy(ShakeTrigger);
ds_list_destroy(TimeWarpTrigger);
ds_list_destroy(EndTrigger);
ds_list_destroy(SongTrigger);
ds_list_destroy(ColorTrigger);

ds_list_destroy(Speed01);
ds_list_destroy(Speed02);
ds_list_destroy(Speed03);
ds_list_destroy(Speed04);
ds_list_destroy(Speed05);

ds_list_destroy(LevelSettings);

file_text_close(file);

#define scr_save_room_level
var file = file_text_open_read("CCGameLevelManager.dat");
var json = "";

if (file_exists("CCGameLevelManager.dat")) {
    if (!file_text_eof(file)) {
        json += file_text_read_string(file);
        file_text_readln(file);
    }
    
    //Decode the JSON into a map
    var map = json_decode(json);
    
    //Get the object lists
    var BlocksList = ds_map_find_value(map, "Blocks");
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(BlocksList); i++) {
    
        var instance_map = ds_list_find_value(BlocksList, i);
        var instance = instance_create(0, 0, obj_DragBlocks);
        instance.x = ds_map_find_value(instance_map, "x");
        instance.y = ds_map_find_value(instance_map, "y");
        instance.ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        instance.AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        instance.AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        instance.image_index = ds_map_find_value(instance_map, "image_index");
        instance.sprite_index = sprBlocks;
    }
    
    //Get the object lists
    var OrbJump      = ds_map_find_value(map, "OrbJump");
    var OrbMinJump   = ds_map_find_value(map, "OrbMinJump");
    var OrbMaxJump   = ds_map_find_value(map, "OrbMaxJump");
    var OrbGravity01 = ds_map_find_value(map, "OrbGravity01");
    var OrbBackJump  = ds_map_find_value(map, "OrbBackJump");
    var OrbGravity02 = ds_map_find_value(map, "OrbGravity02");
    var OrbTPList01  = ds_map_find_value(map, "OrbTeleport01");
    var OrbTPList02  = ds_map_find_value(map, "OrbTeleport02");
    var OrbSpider    = ds_map_find_value(map, "OrbSpider");
    var PushBlock    = ds_map_find_value(map, "PushBlock");
    var ForceBlock   = ds_map_find_value(map, "ForceBlock");
    var FadeBlock    = ds_map_find_value(map, "FadeBlock");
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(OrbJump); i++) {
    
        var instance_map = ds_list_find_value(OrbJump, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objOrbJump_Edit);
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(OrbMinJump); i++) {
    
        var instance_map = ds_list_find_value(OrbMinJump, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objOrbMinJump_Edit);
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(OrbMaxJump); i++) {
    
        var instance_map = ds_list_find_value(OrbMaxJump, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objOrbMaxJump_Edit);
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(OrbGravity01); i++) {
    
        var instance_map = ds_list_find_value(OrbGravity01, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objOrbGravity01_Edit);
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(OrbBackJump); i++) {
    
        var instance_map = ds_list_find_value(OrbBackJump, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objOrbBackJump_Edit);
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(OrbGravity02); i++) {
    
        var instance_map = ds_list_find_value(OrbGravity02, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objOrbGravity02_Edit);
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(OrbTPList01); i++) {
    
        var instance_map = ds_list_find_value(OrbTPList01, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objOrbTeleport01_Edit);
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(OrbTPList02); i++) {
    
        var instance_map = ds_list_find_value(OrbTPList02, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objOrbTeleport02_Edit);
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(OrbSpider); i++) {
    
        var instance_map = ds_list_find_value(OrbSpider, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objOrbSpider_Edit);
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(PushBlock); i++) {
    
        var instance_map = ds_list_find_value(PushBlock, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objPushBlock_Edit);
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(ForceBlock); i++) {
    
        var instance_map = ds_list_find_value(ForceBlock, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ForceGravDest = ds_map_find_value(instance_map, "ForceGravDest");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        
        Instance = instance_create(_x, _y, objForceBlock_Edit);
        Instance.ForceGravDest = _ForceGravDest;
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AngleBlocks = _AngleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(FadeBlock); i++) {
    
        var instance_map = ds_list_find_value(FadeBlock, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objFadeBlock_Edit);
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    var PadJump    = ds_map_find_value(map, "PadJump");
    var PadMinJump = ds_map_find_value(map, "PadMinJump");
    var PadMaxJump = ds_map_find_value(map, "PadMaxJump");
    var PadGravity = ds_map_find_value(map, "PadGravity");
    var PadSpider  = ds_map_find_value(map, "PadSpider");
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(PadJump); i++) {
    
        var instance_map = ds_list_find_value(PadJump, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objPadJump_Edit);
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(PadMinJump); i++) {
    
        var instance_map = ds_list_find_value(PadMinJump, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objPadMinJump_Edit);
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(PadMaxJump); i++) {
    
        var instance_map = ds_list_find_value(PadMaxJump, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objPadMaxJump_Edit);
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(PadGravity); i++) {
    
        var instance_map = ds_list_find_value(PadGravity, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objPadGravity_Edit);
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(PadSpider); i++) {
    
        var instance_map = ds_list_find_value(PadSpider, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objPadSpider_Edit);
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Get the object lists
    var PortalCube       = ds_map_find_value(map, "PortalCube");
    var PortalShip       = ds_map_find_value(map, "PortalShip");
    var PortalBall       = ds_map_find_value(map, "PortalBall");
    var PortalUFO        = ds_map_find_value(map, "PortalUFO");
    var PortalWave       = ds_map_find_value(map, "PortalWave");
    var PortalRobot      = ds_map_find_value(map, "PortalRobot");
    var PortalSpider     = ds_map_find_value(map, "PortalSpider");
    var PortalSwing      = ds_map_find_value(map, "PortalSwing");
    var PortalArmadillo  = ds_map_find_value(map, "PortalSwing");
    
    var PortalTP01       = ds_map_find_value(map, "PortalTP01");
    var PortalTP02       = ds_map_find_value(map, "PortalTP02");
    var PortalMirror01   = ds_map_find_value(map, "PortalMirror01");
    var PortalMirror02   = ds_map_find_value(map, "PortalMirror02");
    var PortalGravity01  = ds_map_find_value(map, "PortalGravity01");
    var PortalGravity02  = ds_map_find_value(map, "PortalGravity02");
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(PortalCube); i++) {
    
        var instance_map = ds_list_find_value(PortalCube, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objPortalCube_Edit)
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(PortalShip); i++) {
    
        var instance_map = ds_list_find_value(PortalShip, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objPortalShip_Edit)
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(PortalBall); i++) {
    
        var instance_map = ds_list_find_value(PortalBall, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objPortalBall_Edit)
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(PortalUFO); i++) {
    
        var instance_map = ds_list_find_value(PortalUFO, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objPortalUFO_Edit)
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(PortalWave); i++) {
    
        var instance_map = ds_list_find_value(PortalWave, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objPortalWave_Edit)
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(PortalRobot); i++) {
    
        var instance_map = ds_list_find_value(PortalRobot, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objPortalRobot_Edit)
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(PortalSpider); i++) {
    
        var instance_map = ds_list_find_value(PortalSpider, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objPortalSpider_Edit)
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(PortalSwing); i++) {
    
        var instance_map = ds_list_find_value(PortalSwing, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objPortalSwing_Edit)
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(PortalTP01); i++) {
    
        var instance_map = ds_list_find_value(PortalTP01, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objPortalTeleport01_Edit);
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(PortalTP02); i++) {
    
        var instance_map = ds_list_find_value(PortalTP02, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objPortalTeleport02_Edit);
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(PortalMirror01); i++) {
    
        var instance_map = ds_list_find_value(PortalMirror01, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objPortalMirror01_Edit);
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(PortalMirror02); i++) {
    
        var instance_map = ds_list_find_value(PortalMirror02, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objPortalMirror02_Edit);
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(PortalGravity01); i++) {
    
        var instance_map = ds_list_find_value(PortalGravity01, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objPortalGravity01_Edit);
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(PortalGravity02); i++) {
    
        var instance_map = ds_list_find_value(PortalGravity02, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objPortalGravity02_Edit);
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    var Speed01 = ds_map_find_value(map, "Speed01");
    var Speed02 = ds_map_find_value(map, "Speed02");
    var Speed03 = ds_map_find_value(map, "Speed03");
    var Speed04 = ds_map_find_value(map, "Speed04");
    var Speed05 = ds_map_find_value(map, "Speed05");
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(Speed01); i++) {
    
        var instance_map = ds_list_find_value(Speed01, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objSpeed01_Edit);
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(Speed02); i++) {
    
        var instance_map = ds_list_find_value(Speed02, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objSpeed02_Edit);
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(Speed03); i++) {
    
        var instance_map = ds_list_find_value(Speed03, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objSpeed03_Edit);
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(Speed04); i++) {
    
        var instance_map = ds_list_find_value(Speed04, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objSpeed04_Edit);
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(Speed05); i++) {
    
        var instance_map = ds_list_find_value(Speed05, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objSpeed05_Edit);
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    var ZoomTrigger     = ds_map_find_value(map, "ZoomTrigger");
    var RotateTrigger   = ds_map_find_value(map, "RotateTrigger");
    var ShakeTrigger    = ds_map_find_value(map, "ShakeTrigger");
    var TimeWarpTrigger = ds_map_find_value(map, "TimeWarpTrigger");
    var EndTrigger      = ds_map_find_value(map, "FadeBlock");
    var SongTrigger     = ds_map_find_value(map, "SongTrigger");
    var ColorTrigger    = ds_map_find_value(map, "ColorTrigger");
    
    for (var i = 0; i < ds_list_size(ColorTrigger); i++) {
    
        var instance_map = ds_list_find_value(ColorTrigger, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ColTime01 = ds_map_find_value(instance_map, "ColorTime01");
        var _ColTime02 = ds_map_find_value(instance_map, "ColorTime02");
        var _ColTime03 = ds_map_find_value(instance_map, "ColorTime03");
        var _ColRedBG = ds_map_find_value(instance_map, "RedBG");
        var _ColGreenBG = ds_map_find_value(instance_map, "GreenBG");
        var _ColBlueBG = ds_map_find_value(instance_map, "BlueBG");
        var _ColRedG = ds_map_find_value(instance_map, "RedG");
        var _ColGreenG = ds_map_find_value(instance_map, "GreenG");
        var _ColBlueG = ds_map_find_value(instance_map, "BlueG");
        var _ColorMode = ds_map_find_value(instance_map, "ColorMode");
        var _ColorTime = ds_map_find_value(instance_map, "TimeColor");
        var _TimeColor = ds_map_find_value(instance_map, "TimeNum01");
        var _TriggerMode = ds_map_find_value(instance_map, "TriggerMode");
        
        Instance = instance_create(_x, _y, objTriggerCol_Edit)
        Instance.ColorTime01 = _ColTime01;
        Instance.ColorTime02 = _ColTime02;
        Instance.ColorTime03 = _ColTime03;
        Instance.RedBG = _ColRedBG;
        Instance.GreenBG = _ColGreenBG;
        Instance.BlueBG = _ColBlueBG;
        Instance.RedG = _ColRedG;
        Instance.GreenG = _ColGreenG;
        Instance.BlueG = _ColBlueG;
        Instance.ColorMode = _ColorMode;
        Instance.TimeColor = _ColorTime;
        Instance.TimeNum01 = _TimeColor;
        Instance.TriggerModeEdit = _TriggerMode;
    }
    
    for (var i = 0; i < ds_list_size(ZoomTrigger); i++) {
    
        var instance_map = ds_list_find_value(ZoomTrigger, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _TimeNum01 = ds_map_find_value(instance_map, "TimeNum01");
        var _TimeNum02 = ds_map_find_value(instance_map, "TimeNum02");
        var _ZoomCam = ds_map_find_value(instance_map, "ZoomCam");
        var _TimeCam = ds_map_find_value(instance_map, "TimeCam");
        var _TriggerMode = ds_map_find_value(instance_map, "TriggerMode");
        
        Instance = instance_create(_x, _y, objTriggerZoom_Edit)
        Instance.TimeNum01 = _TimeNum01;
        Instance.TimeNum02 = _TimeNum02;
        Instance.ZoomCamera = _ZoomCam;
        Instance.TimeCamera = _TimeCam;
        Instance.TriggerModeEdit = _TriggerMode;
    }
    
    for (var i = 0; i < ds_list_size(RotateTrigger); i++) {
    
        var instance_map = ds_list_find_value(RotateTrigger, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _TimeNum01 = ds_map_find_value(instance_map, "TimeNum01");
        var _TimeNum02 = ds_map_find_value(instance_map, "TimeNum02");
        var _RotateCam = ds_map_find_value(instance_map, "RotateCam");
        var _TimeCam = ds_map_find_value(instance_map, "TimeCam");
        var _TriggerMode = ds_map_find_value(instance_map, "TriggerMode");
        
        Instance = instance_create(_x, _y, objTriggerRotateCam_Edit)
        Instance.TimeNum01 = _TimeNum01;
        Instance.TimeNum02 = _TimeNum02;
        Instance.RotateCamera = _RotateCam;
        Instance.TimeCamera = _TimeCam;
        Instance.TriggerModeEdit = _TriggerMode;
    }
    
    for (var i = 0; i < ds_list_size(ShakeTrigger); i++) {
    
        var instance_map = ds_list_find_value(ShakeTrigger, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ShakeX = ds_map_find_value(instance_map, "ShakeX");
        var _ShakeY = ds_map_find_value(instance_map, "ShakeY");
        var _ShakeAngle = ds_map_find_value(instance_map, "ShakeAngle");
        var _ShakeTime = ds_map_find_value(instance_map, "ShakeTime");
        
        var _Time01 = ds_map_find_value(instance_map, "TimeNum01");
        var _Time02 = ds_map_find_value(instance_map, "TimeNum02");
        var _Time03 = ds_map_find_value(instance_map, "TimeNum03");
        var _Time04 = ds_map_find_value(instance_map, "TimeNum04");
        var _TriggerMode = ds_map_find_value(instance_map, "TriggerMode");
        
        Instance = instance_create(_x, _y, objTriggerShake_Edit)
        Instance.ShakeXDest = _ShakeX;
        Instance.ShakeYDest = _ShakeY;
        Instance.ShakeAngleDest = _ShakeAngle;
        Instance.ShakeTimeDest = _ShakeTime;
        
        Instance.TimeNum01 = _Time01;
        Instance.TimeNum02 = _Time02;
        Instance.TimeNum03 = _Time03;
        Instance.TimeNum04 = _Time04;
        Instance.TriggerModeEdit = _TriggerMode;
    }
    
    for (var i = 0; i < ds_list_size(TimeWarpTrigger); i++) {
    
        var instance_map = ds_list_find_value(TimeWarpTrigger, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _TimeWarpDest = ds_map_find_value(instance_map, "TimeWarp");
        var _TriggerMode = ds_map_find_value(instance_map, "TriggerMode");
        
        Instance = instance_create(_x, _y, objTriggerTimeWarp_Edit);
        Instance.TimeWarpDest = _TimeWarpDest;
        Instance.TriggerModeEdit = _TriggerMode;
    }
    
    for (var i = 0; i < ds_list_size(SongTrigger); i++) {
    
        var instance_map = ds_list_find_value(SongTrigger, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _TimeSong = ds_map_find_value(instance_map, "TimeSong");
        var _TimeLimitSong = ds_map_find_value(instance_map, "TimeSongLength");
        var _TriggerMode = ds_map_find_value(instance_map, "TriggerMode");
        
        Instance = instance_create(_x, _y, objTriggerSong_Edit);
        Instance.TimeLimitSong = _TimeLimitSong;
        Instance.TriggerModeEdit = _TriggerMode;
    }
    
    var LevelSettings = ds_map_find_value(map, "LevelSettings");
    
    for (var i = 0; i < ds_list_size(LevelSettings); i++) {
    
        var instance_map = ds_list_find_value(LevelSettings, i);
        var _BGIndex = ds_map_find_value(instance_map, "BGIndex");
        var _GIndex = ds_map_find_value(instance_map, "GIndex");
        var _FGIndex = ds_map_find_value(instance_map, "FGIndex");
        var _FGAlpha = ds_map_find_value(instance_map, "FGAlpha");
        var _SongList = ds_map_find_value(instance_map, "SongList");
        var _MusicID = ds_map_find_value(instance_map, "MusicID");
        
        with(obj_LevelEditorOrd) {
            BGIndex = _BGIndex;
            GIndex = _GIndex;
            FGIndex = _FGIndex;
            
            BGDrawIndex = _BGIndex;
            GDrawIndex = _GIndex;
            FGDrawIndex = _FGIndex;
            FGAlpha = _FGAlpha;
            PageSongs = _SongList;
            global.MusicID = _MusicID;
        }
    }
    
    //Free the map
    ds_map_destroy(map);
    ds_list_destroy(BlocksList);
    ds_list_destroy(OrbJump);
    ds_list_destroy(OrbMinJump);
    ds_list_destroy(OrbMaxJump);
    ds_list_destroy(OrbGravity01);
    ds_list_destroy(OrbBackJump);
    ds_list_destroy(OrbGravity02);
    ds_list_destroy(OrbTPList01);
    ds_list_destroy(OrbTPList02);
    ds_list_destroy(OrbSpider);
    
    ds_list_destroy(PushBlock);
    ds_list_destroy(ForceBlock);
    ds_list_destroy(FadeBlock);
    
    ds_list_destroy(PadJump);
    ds_list_destroy(PadMinJump);
    ds_list_destroy(PadMaxJump);
    ds_list_destroy(PadGravity);
    ds_list_destroy(PadSpider);
    
    ds_list_destroy(PortalCube);
    ds_list_destroy(PortalShip);
    ds_list_destroy(PortalBall);
    ds_list_destroy(PortalUFO);
    ds_list_destroy(PortalWave);
    ds_list_destroy(PortalRobot);
    ds_list_destroy(PortalSpider);
    ds_list_destroy(PortalSwing);
    ds_list_destroy(PortalArmadillo);
    
    ds_list_destroy(PortalTP01);
    ds_list_destroy(PortalTP02);
    ds_list_destroy(PortalMirror01);
    ds_list_destroy(PortalMirror02);
    ds_list_destroy(PortalGravity01);
    ds_list_destroy(PortalGravity02);
    
    ds_list_destroy(ZoomTrigger);
    ds_list_destroy(RotateTrigger);
    ds_list_destroy(ShakeTrigger);
    ds_list_destroy(TimeWarpTrigger);
    ds_list_destroy(EndTrigger);
    ds_list_destroy(SongTrigger);
    ds_list_destroy(ColorTrigger);
    
    ds_list_destroy(Speed01);
    ds_list_destroy(Speed02);
    ds_list_destroy(Speed03);
    ds_list_destroy(Speed04);
    ds_list_destroy(Speed05);
    
    ds_list_destroy(LevelSettings);
    
    file_text_close(file);
}

#define scr_load_level
var file = file_text_open_read("CCGameLevelManager.dat");
var json = "";

if (file_exists("CCGameLevelManager.dat")) {
    if (!file_text_eof(file)) {
        json += file_text_read_string(file);
        file_text_readln(file);
    }
    
    //Decode the JSON into a map
    var map = json_decode(json);
    
    //Get the object lists
    var BlocksList = ds_map_find_value(map, "Blocks");
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(BlocksList); i++) {
    
        var instance_map = ds_list_find_value(BlocksList, i);
        var instance = instance_create(0, 0, oBlock);
        instance.x = ds_map_find_value(instance_map, "x");
        instance.y = ds_map_find_value(instance_map, "y");
        instance.ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        instance.AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        instance.AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        instance.image_index = ds_map_find_value(instance_map, "image_index");
        instance.sprite_index = sprBlocks;
    }
    
    //Get the object lists
    var OrbJump      = ds_map_find_value(map, "OrbJump");
    var OrbMinJump   = ds_map_find_value(map, "OrbMinJump");
    var OrbMaxJump   = ds_map_find_value(map, "OrbMaxJump");
    var OrbGravity01 = ds_map_find_value(map, "OrbGravity01");
    var OrbBackJump  = ds_map_find_value(map, "OrbBackJump");
    var OrbGravity02 = ds_map_find_value(map, "OrbGravity02");
    var OrbTPList01  = ds_map_find_value(map, "OrbTeleport01");
    var OrbTPList02  = ds_map_find_value(map, "OrbTeleport02");
    var OrbSpider    = ds_map_find_value(map, "OrbSpider");
    var PushBlock    = ds_map_find_value(map, "PushBlock");
    var ForceBlock   = ds_map_find_value(map, "ForceBlock");
    var FadeBlock    = ds_map_find_value(map, "FadeBlock");
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(OrbJump); i++) {
    
        var instance_map = ds_list_find_value(OrbJump, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objOrbJump)
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(OrbMinJump); i++) {
    
        var instance_map = ds_list_find_value(OrbMinJump, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objOrbJumpMin)
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(OrbMaxJump); i++) {
    
        var instance_map = ds_list_find_value(OrbMaxJump, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objOrbJumpMax)
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(OrbGravity01); i++) {
    
        var instance_map = ds_list_find_value(OrbGravity01, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objOrbGravity_01)
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(OrbBackJump); i++) {
    
        var instance_map = ds_list_find_value(OrbBackJump, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objOrbJumpBack)
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(OrbGravity02); i++) {
    
        var instance_map = ds_list_find_value(OrbGravity02, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objOrbGravity_02)
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(OrbTPList01); i++) {
    
        var instance_map = ds_list_find_value(OrbTPList01, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objOrbTeleport_01)
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(OrbTPList02); i++) {
    
        var instance_map = ds_list_find_value(OrbTPList02, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objOrbTeleport_02)
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(OrbSpider); i++) {
    
        var instance_map = ds_list_find_value(OrbSpider, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objOrbSpider)
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(ForceBlock); i++) {
    
        var instance_map = ds_list_find_value(ForceBlock, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ForceGravDest = ds_map_find_value(instance_map, "ForceGravDest");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        
        Instance = instance_create(_x, _y, objForceBlock)
        Instance.ForceGrav = _ForceGravDest;
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AngleBlocks = _AngleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(PushBlock); i++) {
    
        var instance_map = ds_list_find_value(PushBlock, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, oPushBlock)
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(FadeBlock); i++) {
    
        var instance_map = ds_list_find_value(FadeBlock, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, oFadeBlock)
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    var PadJump    = ds_map_find_value(map, "PadJump");
    var PadMinJump = ds_map_find_value(map, "PadMinJump");
    var PadMaxJump = ds_map_find_value(map, "PadMaxJump");
    var PadGravity = ds_map_find_value(map, "PadGravity");
    var PadSpider  = ds_map_find_value(map, "PadSpider");
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(PadJump); i++) {
    
        var instance_map = ds_list_find_value(PadJump, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objPadJump)
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(PadMinJump); i++) {
    
        var instance_map = ds_list_find_value(PadMinJump, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objPadJumpMin)
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(PadMaxJump); i++) {
    
        var instance_map = ds_list_find_value(PadMaxJump, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objPadJumpMax)
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(PadGravity); i++) {
    
        var instance_map = ds_list_find_value(PadGravity, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objPadGravity)
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(PadSpider); i++) {
    
        var instance_map = ds_list_find_value(PadSpider, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objPadSpider)
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Get the object lists
    var PortalCube       = ds_map_find_value(map, "PortalCube");
    var PortalShip       = ds_map_find_value(map, "PortalShip");
    var PortalBall       = ds_map_find_value(map, "PortalBall");
    var PortalUFO        = ds_map_find_value(map, "PortalUFO");
    var PortalWave       = ds_map_find_value(map, "PortalWave");
    var PortalRobot      = ds_map_find_value(map, "PortalRobot");
    var PortalSpider     = ds_map_find_value(map, "PortalSpider");
    var PortalSwing      = ds_map_find_value(map, "PortalSwing");
    var PortalArmadillo  = ds_map_find_value(map, "PortalSwing");
    
    var PortalTP01       = ds_map_find_value(map, "PortalTP01");
    var PortalTP02       = ds_map_find_value(map, "PortalTP02");
    var PortalMirror01   = ds_map_find_value(map, "PortalMirror01");
    var PortalMirror02   = ds_map_find_value(map, "PortalMirror02");
    var PortalGravity01  = ds_map_find_value(map, "PortalGravity01");
    var PortalGravity02  = ds_map_find_value(map, "PortalGravity02");
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(PortalCube); i++) {
    
        var instance_map = ds_list_find_value(PortalCube, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objPortalCube_01)
        Instance2 = instance_create(_x, _y, objPortalCube_02)
        
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
        
        Instance2.ScaleBlocks = _ScaleBlocks;
        Instance2.AlphaBlocks = _AlphaBlocks;
        Instance2.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(PortalShip); i++) {
    
        var instance_map = ds_list_find_value(PortalShip, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objPortalShip_01)
        Instance2 = instance_create(_x, _y, objPortalShip_02)
        
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
        
        Instance2.ScaleBlocks = _ScaleBlocks;
        Instance2.AlphaBlocks = _AlphaBlocks;
        Instance2.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(PortalBall); i++) {
    
        var instance_map = ds_list_find_value(PortalBall, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objPortalBall_01)
        Instance2 = instance_create(_x, _y, objPortalBall_02)
        
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
        
        Instance2.ScaleBlocks = _ScaleBlocks;
        Instance2.AlphaBlocks = _AlphaBlocks;
        Instance2.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(PortalUFO); i++) {
    
        var instance_map = ds_list_find_value(PortalUFO, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objPortalUFO_01)
        Instance2 = instance_create(_x, _y, objPortalUFO_02)
        
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
        
        Instance2.ScaleBlocks = _ScaleBlocks;
        Instance2.AlphaBlocks = _AlphaBlocks;
        Instance2.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(PortalWave); i++) {
    
        var instance_map = ds_list_find_value(PortalWave, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objPortalWave_01)
        Instance2 = instance_create(_x, _y, objPortalWave_02)
        
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
        
        Instance2.ScaleBlocks = _ScaleBlocks;
        Instance2.AlphaBlocks = _AlphaBlocks;
        Instance2.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(PortalRobot); i++) {
    
        var instance_map = ds_list_find_value(PortalRobot, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objPortalRobot_01)
        Instance2 = instance_create(_x, _y, objPortalRobot_02)
        
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
        
        Instance2.ScaleBlocks = _ScaleBlocks;
        Instance2.AlphaBlocks = _AlphaBlocks;
        Instance2.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(PortalSpider); i++) {
    
        var instance_map = ds_list_find_value(PortalSpider, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objPortalSpider_01)
        Instance2 = instance_create(_x, _y, objPortalSpider_02)
        
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
        
        Instance2.ScaleBlocks = _ScaleBlocks;
        Instance2.AlphaBlocks = _AlphaBlocks;
        Instance2.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(PortalSwing); i++) {
    
        var instance_map = ds_list_find_value(PortalSwing, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objPortalSwing_01)
        Instance2 = instance_create(_x, _y, objPortalSwing_02)
        
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
        
        Instance2.ScaleBlocks = _ScaleBlocks;
        Instance2.AlphaBlocks = _AlphaBlocks;
        Instance2.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(PortalTP01); i++) {
    
        var instance_map = ds_list_find_value(PortalTP01, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objPortalTeleport01_01)
        Instance2 = instance_create(_x, _y, objPortalTeleport01_02)
        
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
        
        Instance2.ScaleBlocks = _ScaleBlocks;
        Instance2.AlphaBlocks = _AlphaBlocks;
        Instance2.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(PortalTP02); i++) {
    
        var instance_map = ds_list_find_value(PortalTP02, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objPortalTeleport02_01)
        Instance2 = instance_create(_x, _y, objPortalTeleport02_02)
        
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
        
        Instance2.ScaleBlocks = _ScaleBlocks;
        Instance2.AlphaBlocks = _AlphaBlocks;
        Instance2.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(PortalMirror01); i++) {
    
        var instance_map = ds_list_find_value(PortalMirror01, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objPortalMirror01_01)
        Instance2 = instance_create(_x, _y, objPortalMirror01_02)
        
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
        
        Instance2.ScaleBlocks = _ScaleBlocks;
        Instance2.AlphaBlocks = _AlphaBlocks;
        Instance2.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(PortalMirror02); i++) {
    
        var instance_map = ds_list_find_value(PortalMirror02, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objPortalMirror02_01)
        Instance2 = instance_create(_x, _y, objPortalMirror02_02)
        
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
        
        Instance2.ScaleBlocks = _ScaleBlocks;
        Instance2.AlphaBlocks = _AlphaBlocks;
        Instance2.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(PortalGravity01); i++) {
    
        var instance_map = ds_list_find_value(PortalGravity01, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objPortalGravity01_01)
        Instance2 = instance_create(_x, _y, objPortalGravity01_02)
        
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
        
        Instance2.ScaleBlocks = _ScaleBlocks;
        Instance2.AlphaBlocks = _AlphaBlocks;
        Instance2.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(PortalGravity02); i++) {
    
        var instance_map = ds_list_find_value(PortalGravity02, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objPortalGravity02_01)
        Instance2 = instance_create(_x, _y, objPortalGravity02_02)
        
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
        
        Instance2.ScaleBlocks = _ScaleBlocks;
        Instance2.AlphaBlocks = _AlphaBlocks;
        Instance2.AngleBlocks = _AngleBlocks;
    }
    
    var Speed01 = ds_map_find_value(map, "Speed01");
    var Speed02 = ds_map_find_value(map, "Speed02");
    var Speed03 = ds_map_find_value(map, "Speed03");
    var Speed04 = ds_map_find_value(map, "Speed04");
    var Speed05 = ds_map_find_value(map, "Speed05");
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(Speed01); i++) {
    
        var instance_map = ds_list_find_value(Speed01, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objSpeed01)
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(Speed02); i++) {
    
        var instance_map = ds_list_find_value(Speed02, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objSpeed02)
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(Speed03); i++) {
    
        var instance_map = ds_list_find_value(Speed03, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objSpeed03)
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(Speed04); i++) {
    
        var instance_map = ds_list_find_value(Speed04, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objSpeed04)
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    //Go through the lists creating the objects
    for (var i = 0; i < ds_list_size(Speed05); i++) {
    
        var instance_map = ds_list_find_value(Speed05, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ScaleBlocks = ds_map_find_value(instance_map, "ScaleBlocks");
        var _AlphaBlocks = ds_map_find_value(instance_map, "AlphaBlocks");
        var _AngleBlocks = ds_map_find_value(instance_map, "AngleBlocks");
        
        Instance = instance_create(_x, _y, objSpeed05)
        Instance.ScaleBlocks = _ScaleBlocks;
        Instance.AlphaBlocks = _AlphaBlocks;
        Instance.AngleBlocks = _AngleBlocks;
    }
    
    var ZoomTrigger     = ds_map_find_value(map, "ZoomTrigger");
    var RotateTrigger   = ds_map_find_value(map, "RotateTrigger");
    var ShakeTrigger    = ds_map_find_value(map, "ShakeTrigger");
    var TimeWarpTrigger = ds_map_find_value(map, "TimeWarpTrigger");
    var EndTrigger      = ds_map_find_value(map, "FadeBlock");
    var SongTrigger     = ds_map_find_value(map, "SongTrigger");
    var ColorTrigger    = ds_map_find_value(map, "ColorTrigger");
    
    for (var i = 0; i < ds_list_size(ColorTrigger); i++) {
    
        var instance_map = ds_list_find_value(ColorTrigger, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ColTime01 = ds_map_find_value(instance_map, "ColorTime01");
        var _ColTime02 = ds_map_find_value(instance_map, "ColorTime02");
        var _ColTime03 = ds_map_find_value(instance_map, "ColorTime03");
        var _ColRedBG = ds_map_find_value(instance_map, "RedBG");
        var _ColGreenBG = ds_map_find_value(instance_map, "GreenBG");
        var _ColBlueBG = ds_map_find_value(instance_map, "BlueBG");
        var _ColRedG = ds_map_find_value(instance_map, "RedG");
        var _ColGreenG = ds_map_find_value(instance_map, "GreenG");
        var _ColBlueG = ds_map_find_value(instance_map, "BlueG");
        var _ColorMode = ds_map_find_value(instance_map, "ColorMode");
        var _ColorTime = ds_map_find_value(instance_map, "TimeColor");
        var _TimeColor = ds_map_find_value(instance_map, "TimeNum01");
        var _TriggerMode = ds_map_find_value(instance_map, "TriggerMode");
        
        Instance = instance_create(_x, _y, objTriggerColor)
        Instance.TimeNum01 = _ColTime01;
        Instance.TimeNum02 = _ColTime02;
        Instance.TimeNum03 = _ColTime03;
        Instance.ColorRedBG = _ColRedBG;
        Instance.ColorGreenBG = _ColGreenBG;
        Instance.ColorBlueBG = _ColBlueBG;
        Instance.ColorRedG = _ColRedG;
        Instance.ColorGreenG = _ColGreenG;
        Instance.ColorBlueG = _ColBlueG;
        Instance.ColorModeTrigger = _ColorMode;
        Instance.TimeColorTrigger = _ColorTime;
        Instance.ColorTimeNum = _TimeColor;
        Instance.TriggerMode = _TriggerMode;
    }
    
    for (var i = 0; i < ds_list_size(ZoomTrigger); i++) {
    
        var instance_map = ds_list_find_value(ZoomTrigger, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _TimeNum01 = ds_map_find_value(instance_map, "TimeNum01");
        var _TimeNum02 = ds_map_find_value(instance_map, "TimeNum02");
        var _ZoomCam = ds_map_find_value(instance_map, "ZoomCam");
        var _TimeCam = ds_map_find_value(instance_map, "TimeCam");
        var _TriggerMode = ds_map_find_value(instance_map, "TriggerMode");
        
        Instance = instance_create(_x, _y, objTriggerCameraZoom);
        Instance.TimeNum01 = _TimeNum01;
        Instance.TimeNum02 = _TimeNum02;
        Instance.ZoomCam = _ZoomCam;
        Instance.Time = _TimeCam;
        Instance.TriggerMode = _TriggerMode;
    }
    
    for (var i = 0; i < ds_list_size(RotateTrigger); i++) {
    
        var instance_map = ds_list_find_value(RotateTrigger, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _TimeNum01 = ds_map_find_value(instance_map, "TimeNum01");
        var _TimeNum02 = ds_map_find_value(instance_map, "TimeNum02");
        var _RotateCam = ds_map_find_value(instance_map, "RotateCam");
        var _TimeCam = ds_map_find_value(instance_map, "TimeCam");
        var _TriggerMode = ds_map_find_value(instance_map, "TriggerMode");
        
        Instance = instance_create(_x, _y, objTriggerCameraRotate)
        Instance.TimeNum01 = _TimeNum01;
        Instance.TimeNum02 = _TimeNum02;
        Instance.RotateCam = _RotateCam;
        Instance.Time = _TimeCam;
        Instance.TriggerMode = _TriggerMode;
    }
    
    for (var i = 0; i < ds_list_size(ShakeTrigger); i++) {
    
        var instance_map = ds_list_find_value(ShakeTrigger, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _ShakeX = ds_map_find_value(instance_map, "ShakeX");
        var _ShakeY = ds_map_find_value(instance_map, "ShakeY");
        var _ShakeAngle = ds_map_find_value(instance_map, "ShakeAngle");
        var _ShakeTime = ds_map_find_value(instance_map, "ShakeTime");
        
        var _Time01 = ds_map_find_value(instance_map, "TimeNum01");
        var _Time02 = ds_map_find_value(instance_map, "TimeNum02");
        var _Time03 = ds_map_find_value(instance_map, "TimeNum03");
        var _Time04 = ds_map_find_value(instance_map, "TimeNum04");
        var _TriggerMode = ds_map_find_value(instance_map, "TriggerMode");
        
        Instance = instance_create(_x, _y, objTriggerShakeEffect)
        Instance.ShakeX = _ShakeX;
        Instance.ShakeY = _ShakeY;
        Instance.ShakeAngle = _ShakeAngle;
        Instance.ShakeTime = _ShakeTime;
        
        Instance.TimeShakeX = _Time01;
        Instance.TimeShakeY = _Time02;
        Instance.TimeShakeAngle = _Time03;
        Instance.TimeShake = _Time04;
        Instance.TriggerMode = _TriggerMode;
    }
    
    for (var i = 0; i < ds_list_size(TimeWarpTrigger); i++) {
    
        var instance_map = ds_list_find_value(TimeWarpTrigger, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _TimeWarpDest = ds_map_find_value(instance_map, "TimeWarp");
        var _TriggerMode = ds_map_find_value(instance_map, "TriggerMode");
        
        Instance = instance_create(_x, _y, objTriggerTimeWarp);
        Instance.TimeWarpTrigger = _TimeWarpDest;
        Instance.TriggerMode = _TriggerMode;
    }
    
    for (var i = 0; i < ds_list_size(SongTrigger); i++) {
    
        var instance_map = ds_list_find_value(SongTrigger, i);
        var _x = ds_map_find_value(instance_map, "x");
        var _y = ds_map_find_value(instance_map, "y");
        var _TimeLimitSong = ds_map_find_value(instance_map, "TimeSongLength");
        var _TriggerMode = ds_map_find_value(instance_map, "TriggerMode");
        
        Instance = instance_create(_x, _y, objTriggerSong);
        Instance.TimeSongLimit = _TimeLimitSong;
        Instance.TriggerMode = _TriggerMode;
    }
    
    var LevelSettings = ds_map_find_value(map, "LevelSettings");
    
    for (var i = 0; i < ds_list_size(LevelSettings); i++) {
    
        var instance_map = ds_list_find_value(LevelSettings, i);
        var _BGIndex = ds_map_find_value(instance_map, "BGIndex");
        var _GIndex = ds_map_find_value(instance_map, "GIndex");
        var _FGIndex = ds_map_find_value(instance_map, "FGIndex");
        var _FGAlpha = ds_map_find_value(instance_map, "FGAlpha");
        var _SongList = ds_map_find_value(instance_map, "SongList");
        var _MusicID = ds_map_find_value(instance_map, "MusicID");
        
        with(oCamera) {
            BGIndexLevel = _BGIndex;
            GIndexLevel = _GIndex;
            FGIndexLevel = _FGIndex;
            FGAlphaLevel = _FGAlpha;
            SongListLevel = _SongList;
            global.MusicPlayID = _MusicID;
        }
    }
    
    //Free the map
    ds_map_destroy(map);
    ds_list_destroy(BlocksList);
    ds_list_destroy(OrbJump);
    ds_list_destroy(OrbMinJump);
    ds_list_destroy(OrbMaxJump);
    ds_list_destroy(OrbGravity01);
    ds_list_destroy(OrbBackJump);
    ds_list_destroy(OrbGravity02);
    ds_list_destroy(OrbTPList01);
    ds_list_destroy(OrbTPList02);
    ds_list_destroy(OrbSpider);
    ds_list_destroy(PushBlock);
    ds_list_destroy(ForceBlock);
    ds_list_destroy(FadeBlock);
    
    ds_list_destroy(PadJump);
    ds_list_destroy(PadMinJump);
    ds_list_destroy(PadMaxJump);
    ds_list_destroy(PadGravity);
    
    ds_list_destroy(PortalCube);
    ds_list_destroy(PortalShip);
    ds_list_destroy(PortalBall);
    ds_list_destroy(PortalUFO);
    ds_list_destroy(PortalWave);
    ds_list_destroy(PortalRobot);
    ds_list_destroy(PortalSpider);
    ds_list_destroy(PortalSwing);
    ds_list_destroy(PortalArmadillo);
    
    ds_list_destroy(PortalTP01);
    ds_list_destroy(PortalTP02);
    ds_list_destroy(PortalMirror01);
    ds_list_destroy(PortalMirror02);
    ds_list_destroy(PortalGravity01);
    ds_list_destroy(PortalGravity02);
    
    ds_list_destroy(ZoomTrigger);
    ds_list_destroy(RotateTrigger);
    ds_list_destroy(ShakeTrigger);
    ds_list_destroy(TimeWarpTrigger);
    ds_list_destroy(EndTrigger);
    ds_list_destroy(SongTrigger);
    ds_list_destroy(ColorTrigger);
    
    ds_list_destroy(Speed01);
    ds_list_destroy(Speed02);
    ds_list_destroy(Speed03);
    ds_list_destroy(Speed04);
    ds_list_destroy(Speed05);
    
    ds_list_destroy(LevelSettings);
    
    file_text_close(file);
}

#define scr_savelAllObjects
scr_room_transitions(rmMenu02, TransitionGen);
scr_save_level()
audio_stop_sound(StereoMadness)
audio_stop_sound(BackOnTrack)
audio_stop_sound(Polargeist)
audio_stop_sound(DryOut)
audio_stop_sound(BaseAfterBase)

#define scr_pageObjects
switch(group_id){
    case 0:
    switch(global.ObjectSelect) {
        case 0:
        switch(PageObjects) {
            case 1:
            PageObjects = 2;
            break;
            
            case 2:
            PageObjects = 1;
            break;
        }
        break;
        
        case 1:
        switch(PagePortals) {
            case 1:
            PagePortals = 2;
            break;
            
            case 2:
            PagePortals = 1;
            break;
        }
        break;
        
        case 2:
        switch(PageOrbs) {
            case 1:
            PageOrbs = 2;
            break;
            
            case 2:
            PageOrbs = 1;
            break;
        }
        break;
        
        case 3:
        switch(PageTriggers) {
            case 1:
            PageTriggers = 2;
            break;
            
            case 2:
            PageTriggers = 1;
            break;
        }
        break;
    }
    break;
    
    case 1:
    switch(global.ObjectSelect) {
        case 0:
        switch(PageObjects) {
            case 2:
            PageObjects = 1;
            break;
            
            case 1:
            PageObjects = 2;
            break;
        }
        break;
        
        case 1:
        switch(PagePortals) {
            case 2:
            PagePortals = 1;
            break;
            
            case 1:
            PagePortals = 2;
            break;
        }
        break;
        
        case 2:
        switch(PageOrbs) {
            case 2:
            PageOrbs = 1;
            break;
            
            case 1:
            PageOrbs = 2;
            break;
        }
        
        case 3:
        switch(PageTriggers) {
            case 2:
            PageTriggers = 1;
            break;
            
            case 1:
            PageTriggers = 2;
            break;
        }
        break;
    }
    break;
}

#define scr_deactivateProperties
global.EditProperties = false;
global.EditTriggersProperties = false;
#define scr_IndexBackground
BGIndex = image_index;

#define scr_IndexGround
GIndex = image_index;

if (GIndex >= 7) {
    FGAlpha = 1;
    FGIndex = image_index + 4;
}
else {
    FGAlpha = 0;
    FGIndex = 0;
}

#define scr_songList
global.EditMusicPos = !global.EditMusicPos;
audio_sound_set_track_position(global.MusicID, 0)

if (image_index == 1) {
    audio_stop_sound(global.MusicID)
}
else {
    if (!audio_is_playing(global.MusicID)) {
        audio_play_sound(global.MusicID, 100, 0)
    }
}

#define scr_deleteObjects
instance_destroy(DestroyID);
global.EditProperties = false;
global.EditTriggersProperties = false;
#define scr_playSongTrigger
SongTriggerID.EditMusicPos = !SongTriggerID.EditMusicPos;
audio_sound_set_track_position(global.MusicID, SongTriggerID.TimeSong)

if (image_index == 1) {
    audio_stop_sound(global.MusicID)
}
else {
    if (!audio_is_playing(global.MusicID)) {
        audio_play_sound(global.MusicID, 100, 0)
    }
}