/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Connected
/// @DnDVersion : 1
/// @DnDHash : 2471AF0D
/// @DnDArgument : "var" "gamepad"
/// @DnDArgument : "var_temp" "1"
var gamepad = gamepad_is_connected(0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2CC66F29
/// @DnDArgument : "var" "gamepad"
/// @DnDArgument : "value" "true"
if(gamepad == true)
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

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 1BAC5BAB
/// @DnDArgument : "key" "vk_left"
var l1BAC5BAB_0;
l1BAC5BAB_0 = keyboard_check_pressed(vk_left);
if (l1BAC5BAB_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 56613540
	/// @DnDParent : 1BAC5BAB
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "xx"
	xx = -1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 30390D9F
else
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 7F5EAF0A
	/// @DnDParent : 30390D9F
	/// @DnDArgument : "key" "vk_left"
	var l7F5EAF0A_0;
	l7F5EAF0A_0 = keyboard_check_pressed(vk_left);
	if (l7F5EAF0A_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 56D6B3C0
		/// @DnDParent : 7F5EAF0A
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "xx"
		xx = 1;
	}
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 219D3870
/// @DnDArgument : "key" "vk_up"
var l219D3870_0;
l219D3870_0 = keyboard_check_pressed(vk_up);
if (l219D3870_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 37ECACFC
	/// @DnDParent : 219D3870
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "yy"
	yy = -1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6E0D7658
else
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 737B700B
	/// @DnDParent : 6E0D7658
	/// @DnDArgument : "key" "vk_down"
	var l737B700B_0;
	l737B700B_0 = keyboard_check_pressed(vk_down);
	if (l737B700B_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 366C09F2
		/// @DnDParent : 737B700B
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "yy"
		yy = 1;
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 725B566F
/// @DnDArgument : "expr" "xx == 0 && yy == 0"
/// @DnDArgument : "not" "1"
if(!(xx == 0 && yy == 0))
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 07B808ED
	/// @DnDParent : 725B566F
	/// @DnDArgument : "x" "xx"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "yy"
	/// @DnDArgument : "y_relative" "1"
	direction = point_direction(x, y, x + xx, y + yy);
}

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 544266DE
/// @DnDArgument : "speed" "5"
speed = 5;