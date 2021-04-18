/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 544266DE
/// @DnDArgument : "speed" "5"
speed = 5;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 7436BDD0
/// @DnDArgument : "key" "vk_left"
var l7436BDD0_0;
l7436BDD0_0 = keyboard_check(vk_left);
if (l7436BDD0_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 63AC732B
	/// @DnDParent : 7436BDD0
	/// @DnDArgument : "direction" "180"
	direction = 180;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2B660EB4
else
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 57800F50
	/// @DnDParent : 2B660EB4
	/// @DnDArgument : "key" "vk_right"
	var l57800F50_0;
	l57800F50_0 = keyboard_check(vk_right);
	if (l57800F50_0)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
		/// @DnDVersion : 1.1
		/// @DnDHash : 37D453CD
		/// @DnDParent : 57800F50
		/// @DnDArgument : "direction" "0"
		direction = 0;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 7F4E3555
	/// @DnDParent : 2B660EB4
	else
	{
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 2C2010CC
		/// @DnDParent : 7F4E3555
		/// @DnDArgument : "key" "vk_up"
		var l2C2010CC_0;
		l2C2010CC_0 = keyboard_check(vk_up);
		if (l2C2010CC_0)
		{
			/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
			/// @DnDVersion : 1.1
			/// @DnDHash : 14AA536F
			/// @DnDParent : 2C2010CC
			/// @DnDArgument : "direction" "90"
			direction = 90;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 6BFAA0AD
		/// @DnDParent : 7F4E3555
		else
		{
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 5580989D
			/// @DnDParent : 6BFAA0AD
			/// @DnDArgument : "key" "vk_down"
			var l5580989D_0;
			l5580989D_0 = keyboard_check(vk_down);
			if (l5580989D_0)
			{
				/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
				/// @DnDVersion : 1.1
				/// @DnDHash : 0D85AFFB
				/// @DnDParent : 5580989D
				/// @DnDArgument : "direction" "270"
				direction = 270;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 08D942BD
			/// @DnDParent : 6BFAA0AD
			else
			{
				/// @DnDAction : YoYo Games.Movement.Set_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 6E97F6EE
				/// @DnDParent : 08D942BD
				speed = 0;
			}
		}
	}
}