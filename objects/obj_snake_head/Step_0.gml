/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 43B1C4C7
/// @DnDInput : 2
/// @DnDArgument : "var" "xx"
/// @DnDArgument : "value" "0"
/// @DnDArgument : "var_1" "yy"
/// @DnDArgument : "value_1" "0"
var xx = 0;
var yy = 0;

/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Connected
/// @DnDVersion : 1
/// @DnDHash : 2471AF0D
/// @DnDArgument : "var" "pad_active"
/// @DnDArgument : "var_temp" "1"
var pad_active = gamepad_is_connected(0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2CC66F29
/// @DnDArgument : "var" "pad_active"
/// @DnDArgument : "value" "true"
if(pad_active == true)
{
	/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
	/// @DnDVersion : 1.1
	/// @DnDHash : 1461F21B
	/// @DnDParent : 2CC66F29
	/// @DnDArgument : "var" "xx"
	xx = gamepad_is_connected(0) ? gamepad_axis_value(0, gp_axislh) : 0;

	/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
	/// @DnDVersion : 1.1
	/// @DnDHash : 6FA0812C
	/// @DnDParent : 2CC66F29
	/// @DnDArgument : "var" "yy"
	/// @DnDArgument : "axis" "gp_axislv"
	yy = gamepad_is_connected(0) ? gamepad_axis_value(0, gp_axislv) : 0;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 04EB9947
/// @DnDArgument : "key" "vk_left"
var l04EB9947_0;
l04EB9947_0 = keyboard_check(vk_left);
if (l04EB9947_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 56613540
	/// @DnDParent : 04EB9947
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "xx"
	xx = -1;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 4B048D91
/// @DnDArgument : "key" "vk_right"
var l4B048D91_0;
l4B048D91_0 = keyboard_check(vk_right);
if (l4B048D91_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 56D6B3C0
	/// @DnDParent : 4B048D91
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "xx"
	xx = 1;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 44D1AEF1
/// @DnDArgument : "key" "vk_up"
var l44D1AEF1_0;
l44D1AEF1_0 = keyboard_check(vk_up);
if (l44D1AEF1_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 37ECACFC
	/// @DnDParent : 44D1AEF1
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "yy"
	yy = -1;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 66CB8E54
/// @DnDArgument : "key" "vk_down"
var l66CB8E54_0;
l66CB8E54_0 = keyboard_check(vk_down);
if (l66CB8E54_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 366C09F2
	/// @DnDParent : 66CB8E54
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "yy"
	yy = 1;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 725B566F
/// @DnDArgument : "expr" "abs(xx) > 0.5 || abs(yy) > 0.5 "
if(abs(xx) > 0.5 || abs(yy) > 0.5 )
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5E9BE63D
	/// @DnDInput : 2
	/// @DnDParent : 725B566F
	/// @DnDArgument : "expr" "xx"
	/// @DnDArgument : "expr_1" "yy"
	/// @DnDArgument : "var" "dirx"
	/// @DnDArgument : "var_1" "diry"
	dirx = xx;
	diry = yy;
}

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 07B808ED
/// @DnDArgument : "x" "dirx"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "diry"
/// @DnDArgument : "y_relative" "1"
direction = point_direction(x, y, x + dirx, y + diry);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 544266DE
/// @DnDArgument : "speed" "5"
speed = 5;