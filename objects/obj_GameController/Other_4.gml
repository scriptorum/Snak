/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 58E8BC98
/// @DnDComment : So you can find this room's controller$(13_10)Gotta be a better way to do this
/// @DnDArgument : "expr" "self"
/// @DnDArgument : "var" "global.controller"
global.controller = self;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3B2116FB
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "snake_size"
snake_size = 1;

/// @DnDAction : YoYo Games.Data Structures.Create_List
/// @DnDVersion : 1
/// @DnDHash : 5DD30B65
/// @DnDArgument : "var" "food_list"
food_list = ds_list_create();

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 077FFFA6
/// @DnDApplyTo : all
/// @DnDArgument : "script" "foodEffectCreate"
/// @DnDArgument : "arg" "self"
with(all) {
	script_execute(foodEffectCreate, self);
}