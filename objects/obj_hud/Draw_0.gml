/// @DnDAction : YoYo Games.Data Structures.List_Count
/// @DnDVersion : 1
/// @DnDHash : 6D068191
/// @DnDArgument : "assignee" "size"
/// @DnDArgument : "assignee_temp" "1"
/// @DnDArgument : "var" "global.controller.food_list"
var size = ds_list_size(global.controller.food_list);

/// @DnDAction : YoYo Games.Drawing.Get_Color
/// @DnDVersion : 1
/// @DnDHash : 0B2D2179
/// @DnDArgument : "var" "color"
/// @DnDArgument : "var_temp" "1"
var color = draw_get_colour();

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 2BFA7929
draw_set_colour($FFFFFFFF & $ffffff);
var l2BFA7929_0=($FFFFFFFF >> 24);
draw_set_alpha(l2BFA7929_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 5B7C581D
/// @DnDArgument : "caption" ""Food:""
/// @DnDArgument : "var" "size"
draw_text(0, 0, string("Food:") + string(size));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 24B45C3D
/// @DnDArgument : "y" "15"
/// @DnDArgument : "caption" ""Size:""
/// @DnDArgument : "var" "global.controller.snake_size"
draw_text(0, 15, string("Size:") + string(global.controller.snake_size));

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 6877C6CB
/// @DnDArgument : "color" "color"
/// @DnDArgument : "alpha" "false"
draw_set_colour(color & $ffffff);draw_set_alpha(1);