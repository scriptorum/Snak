/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 6A882956
/// @DnDArgument : "xscale" "self.image_xscale * 1.1"
/// @DnDArgument : "yscale" "self.image_yscale * 1.1"
image_xscale = self.image_xscale * 1.1;
image_yscale = self.image_yscale * 1.1;

/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
/// @DnDVersion : 1
/// @DnDHash : 385F93E0
/// @DnDArgument : "alpha" "self.image_alpha * 0.9"
image_alpha = self.image_alpha * 0.9;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 768CDAEA
/// @DnDArgument : "speed" "self.image_xscale * 5"
speed = self.image_xscale * 5;