/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 73BBB656
/// @DnDArgument : "var" "other.counter"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "SAFE_SEGMENTS"
if(other.counter >= SAFE_SEGMENTS)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 2E5C5F84
	/// @DnDApplyTo : all
	/// @DnDParent : 73BBB656
	/// @DnDArgument : "function" "global.controller.explode"
	/// @DnDArgument : "arg" "self"
	with(all) {
		global.controller.explode(self);
	}
}