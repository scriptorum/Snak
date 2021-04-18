/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 612AC73F
/// @DnDArgument : "var" "mama"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "noone"
if(!(mama == noone))
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 529D611C
	/// @DnDComment : Cause sprite segments to align with their parent segment
	/// @DnDBreak : 1

	/// @DnDParent : 612AC73F
	/// @DnDArgument : "var" "dist"
	/// @DnDArgument : "value" "distance_to_point(mama.x,mama.y)"
	var dist = distance_to_point(mama.x,mama.y);

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 529EEA65
	/// @DnDParent : 612AC73F
	/// @DnDArgument : "x" "mama.x"
	/// @DnDArgument : "y" "mama.y"
	direction = point_direction(x, y, mama.x, mama.y);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 37D18273
	/// @DnDParent : 612AC73F
	/// @DnDArgument : "var" "dist"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "sprite_width / 3"
	if(dist > sprite_width / 3)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 434DEAF8
		/// @DnDParent : 37D18273
		/// @DnDArgument : "speed" "dist "
		speed = dist ;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 1992589E
	/// @DnDParent : 612AC73F
	else
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 2B8A6EB5
		/// @DnDParent : 1992589E
		/// @DnDArgument : "speed" "dist * 0.55"
		speed = dist * 0.55;
	}
}