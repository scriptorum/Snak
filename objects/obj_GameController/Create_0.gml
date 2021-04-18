/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 2E869834
/// @DnDApplyTo : all
/// @DnDArgument : "funcName" "explode"
/// @DnDArgument : "arg" "_obj"
function explode(_obj) 
{
	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
	/// @DnDVersion : 1
	/// @DnDHash : 73566AE6
	/// @DnDParent : 2E869834
	/// @DnDArgument : "soundid" "lose"
	/// @DnDArgument : "not" "1"
	var l73566AE6_0 = lose;
	if (!audio_is_playing(l73566AE6_0))
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 2ADE81A4
		/// @DnDParent : 73566AE6
		/// @DnDArgument : "soundid" "lose"
		audio_play_sound(lose, 0, 0);
	}

	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 42A18218
	/// @DnDParent : 2E869834
	/// @DnDArgument : "init" "i =  instance_number(obj_snake_segment) - 1"
	/// @DnDArgument : "init_temp" "1"
	/// @DnDArgument : "cond" "i >= 0"
	/// @DnDArgument : "expr" "i -= 1"
	for(var i =  instance_number(obj_snake_segment) - 1; i >= 0; i -= 1) {
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 378A70D1
		/// @DnDParent : 42A18218
		/// @DnDArgument : "var" "inst"
		/// @DnDArgument : "value" "instance_find(obj_snake_segment, i)"
		var inst = instance_find(obj_snake_segment, i);
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6614DBF2
		/// @DnDApplyTo : inst
		/// @DnDParent : 42A18218
		/// @DnDArgument : "var" "orig_sprite_index"
		/// @DnDArgument : "value" "sprite_index"
		with(inst) {
		var orig_sprite_index = sprite_index;
		
		}
	
		/// @DnDAction : YoYo Games.Instances.Change_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 2FB864EB
		/// @DnDApplyTo : inst
		/// @DnDParent : 42A18218
		/// @DnDArgument : "objind" "obj_snake_flesh"
		with(inst) instance_change(obj_snake_flesh, true);
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 7BB3AA62
		/// @DnDApplyTo : inst
		/// @DnDParent : 42A18218
		/// @DnDArgument : "spriteind" "orig_sprite_index"
		with(inst) {
		sprite_index = orig_sprite_index;
		image_index = 0;
		}
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 63086025
	/// @DnDParent : 2E869834
	/// @DnDArgument : "var" "global.controller.snake_size"
	global.controller.snake_size = 0;
}