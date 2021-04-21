/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1833BE3F
/// @DnDArgument : "funcName" "growSnake"
function growSnake() 
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7FD2FD16
	/// @DnDParent : 1833BE3F
	/// @DnDArgument : "var" "child"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_snake_segment"
	/// @DnDSaveInfo : "objectid" "obj_snake_segment"
	var child = instance_create_layer(0, 0, "Instances", obj_snake_segment);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 29E18DDB
	/// @DnDParent : 1833BE3F
	/// @DnDArgument : "var" "tail"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "self"
	if(!(tail == self))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3926C125
		/// @DnDParent : 29E18DDB
		/// @DnDArgument : "expr" "spr_snake_body"
		/// @DnDArgument : "var" "tail.sprite_index"
		tail.sprite_index = spr_snake_body;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 382105E0
	/// @DnDInput : 7
	/// @DnDParent : 1833BE3F
	/// @DnDArgument : "expr" "tail"
	/// @DnDArgument : "expr_1" "tail.x"
	/// @DnDArgument : "expr_2" "tail.y"
	/// @DnDArgument : "expr_3" "spr_snake_tail"
	/// @DnDArgument : "expr_4" "child"
	/// @DnDArgument : "expr_5" "1"
	/// @DnDArgument : "expr_relative_5" "1"
	/// @DnDArgument : "expr_6" "global.controller.snake_size"
	/// @DnDArgument : "var" "child.mama"
	/// @DnDArgument : "var_1" "child.x"
	/// @DnDArgument : "var_2" "child.y"
	/// @DnDArgument : "var_3" "child.sprite_index"
	/// @DnDArgument : "var_4" "tail"
	/// @DnDArgument : "var_5" "global.controller.snake_size"
	/// @DnDArgument : "var_6" "child.counter"
	child.mama = tail;
	child.x = tail.x;
	child.y = tail.y;
	child.sprite_index = spr_snake_tail;
	tail = child;
	global.controller.snake_size += 1;
	child.counter = global.controller.snake_size;
}