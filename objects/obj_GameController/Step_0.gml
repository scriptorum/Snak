/// @DnDAction : YoYo Games.Data Structures.List_Count
/// @DnDVersion : 1
/// @DnDHash : 1DD4093C
/// @DnDArgument : "assignee" "size"
/// @DnDArgument : "assignee_temp" "1"
/// @DnDArgument : "var" "food_list"
var size = ds_list_size(food_list);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 0EC3B61D
/// @DnDArgument : "var" "r"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "size * 10"
var r = floor(random_range(0, size * 10 + 1));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3593A6F6
/// @DnDArgument : "var" "r"
if(r == 0)
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 451B69C5
	/// @DnDParent : 3593A6F6
	/// @DnDArgument : "var" "yy"
	/// @DnDArgument : "value" "random(room_height)"
	var yy = random(room_height);

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5B42982B
	/// @DnDParent : 3593A6F6
	/// @DnDArgument : "var" "xx"
	/// @DnDArgument : "value" "random(room_width)"
	var xx = random(room_width);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1C3AA573
	/// @DnDParent : 3593A6F6
	/// @DnDArgument : "xpos" "xx"
	/// @DnDArgument : "ypos" "yy"
	/// @DnDArgument : "objectid" "obj_food"
	instance_create_layer(xx, yy, "Instances", obj_food);
}