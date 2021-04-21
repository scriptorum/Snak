/// @DnDAction : YoYo Games.Data Structures.List_IndexOf
/// @DnDVersion : 1
/// @DnDHash : 752D8167
/// @DnDApplyTo : obj_GameController
/// @DnDArgument : "assignee" "index"
/// @DnDArgument : "assignee_temp" "1"
/// @DnDArgument : "var" "food_list"
/// @DnDArgument : "value" "self"
with(obj_GameController) {
var index = ds_list_find_index(food_list, self);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 23B6CF1A
/// @DnDArgument : "var" "index"
/// @DnDArgument : "op" "4"
if(index >= 0)
{
	/// @DnDAction : YoYo Games.Data Structures.List_Remove
	/// @DnDVersion : 1
	/// @DnDHash : 6EF37B04
	/// @DnDApplyTo : obj_GameController
	/// @DnDParent : 23B6CF1A
	/// @DnDArgument : "var" "food_list"
	/// @DnDArgument : "index" "index"
	with(obj_GameController) {
	if(ds_list_size(food_list) > index)
		ds_list_delete(food_list, index);
	}
}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 03193BD1
/// @DnDInput : 2
/// @DnDArgument : "script" "foodEffectEmit"
/// @DnDArgument : "arg" "x"
/// @DnDArgument : "arg_1" "y"
script_execute(foodEffectEmit, x, y);

/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
/// @DnDVersion : 1
/// @DnDHash : 78AA20D3
/// @DnDArgument : "sound" "klaxon1"
/// @DnDArgument : "pitch" "random(0.4) + 0.8"
/// @DnDSaveInfo : "sound" "klaxon1"
audio_sound_pitch(klaxon1, random(0.4) + 0.8);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 2166B90F
/// @DnDArgument : "target" "snd"
/// @DnDArgument : "target_temp" "1"
/// @DnDArgument : "soundid" "klaxon1"
/// @DnDSaveInfo : "soundid" "klaxon1"
var snd = audio_play_sound(klaxon1, 0, 0);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 5B099B6F
/// @DnDApplyTo : other
/// @DnDArgument : "function" "growSnake"
with(other) {
	growSnake();
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 79B93D08
instance_destroy();