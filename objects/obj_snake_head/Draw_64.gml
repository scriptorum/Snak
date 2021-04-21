/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
/// @DnDVersion : 1.1
/// @DnDHash : 6D3596D8
/// @DnDArgument : "var" "axis1"
/// @DnDArgument : "var_temp" "1"
var axis1 = gamepad_is_connected(0) ? gamepad_axis_value(0, gp_axislh) : 0;

/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
/// @DnDVersion : 1.1
/// @DnDHash : 3CD8CCA4
/// @DnDArgument : "var" "axis2"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "axis" "gp_axislv"
var axis2 = gamepad_is_connected(0) ? gamepad_axis_value(0, gp_axislv) : 0;

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 30B666D4
/// @DnDArgument : "y" "30"
/// @DnDArgument : "caption" ""Axis:""
/// @DnDArgument : "var" "string(axis1) + "," +  string(axis2)"
draw_text(0, 30, string("Axis:") + string(string(axis1) + "," +  string(axis2)));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 7B9B7B1C
/// @DnDArgument : "y" "45"
/// @DnDArgument : "caption" ""Epsilon:""
/// @DnDArgument : "var" "math_get_epsilon()"
draw_text(0, 45, string("Epsilon:") + string(math_get_epsilon()));