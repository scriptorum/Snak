/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Connected
/// @DnDVersion : 1
/// @DnDHash : 21C8A0EE
/// @DnDArgument : "var" "pad_active"
/// @DnDArgument : "var_temp" "1"
var pad_active = gamepad_is_connected(0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 44B42990
/// @DnDArgument : "var" "pad_active"
/// @DnDArgument : "value" "true"
if(pad_active == true)
{
	/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
	/// @DnDVersion : 1.1
	/// @DnDHash : 7A39F043
	/// @DnDParent : 44B42990
	/// @DnDArgument : "btn" "gp_face1"
	var l7A39F043_0 = 0;
	var l7A39F043_1 = gp_face1;
	if(gamepad_is_connected(l7A39F043_0) && gamepad_button_check_pressed(l7A39F043_0, l7A39F043_1))
	{
		/// @DnDAction : YoYo Games.Rooms.Next_Room
		/// @DnDVersion : 1
		/// @DnDHash : 7FB48BE9
		/// @DnDParent : 7A39F043
		room_goto_next();
	}
}