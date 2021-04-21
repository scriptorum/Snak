/// @DnDAction : YoYo Games.Drawing.Get_Color
/// @DnDVersion : 1
/// @DnDHash : 5C209059
/// @DnDArgument : "var" "_color"
/// @DnDArgument : "var_temp" "1"
var _color = draw_get_colour();

/// @DnDAction : YoYo Games.Drawing.Get_Alignment
/// @DnDVersion : 1
/// @DnDHash : 00A48CFE
/// @DnDArgument : "var" "_oldHAlign"
/// @DnDArgument : "var_temp" "1"
var _oldHAlign = draw_get_halign();

/// @DnDAction : YoYo Games.Drawing.Get_Alignment
/// @DnDVersion : 1
/// @DnDHash : 671AA0BF
/// @DnDArgument : "var" "_oldVAlign"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "align" "1"
var _oldVAlign = draw_get_valign();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3EE81C04
/// @DnDArgument : "var" "text_font"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "noone"
if(!(text_font == noone))
{
	/// @DnDAction : YoYo Games.Drawing.Get_Font
	/// @DnDVersion : 1
	/// @DnDHash : 21E21E60
	/// @DnDParent : 3EE81C04
	/// @DnDArgument : "var" "_oldFont"
	/// @DnDArgument : "var_temp" "1"
	var _oldFont = draw_get_font();

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 6BCE9F7D
	/// @DnDParent : 3EE81C04
	/// @DnDArgument : "font" "text_font"
	draw_set_font(text_font);
}

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 77B4F706
/// @DnDArgument : "halign" "text_halign"
/// @DnDArgument : "valign" "text_valign"
draw_set_halign(text_halign);
draw_set_valign(text_valign);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0602D625
/// @DnDArgument : "var" "drop_shadow_depth"
/// @DnDArgument : "not" "1"
if(!(drop_shadow_depth == 0))
{
	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 28456BF3
	/// @DnDParent : 0602D625
	/// @DnDArgument : "color" "drop_shadow_color"
	draw_set_colour(drop_shadow_color & $ffffff);
	var l28456BF3_0=(drop_shadow_color >> 24);
	draw_set_alpha(l28456BF3_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 2059C4EC
	/// @DnDParent : 0602D625
	/// @DnDArgument : "x" "xPos + drop_shadow_depth"
	/// @DnDArgument : "y" "yPos + drop_shadow_depth"
	/// @DnDArgument : "caption" "text_string"
	draw_text(xPos + drop_shadow_depth, yPos + drop_shadow_depth, string(text_string) + "");
}

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 677C8136
/// @DnDArgument : "color" "text_color"
draw_set_colour(text_color & $ffffff);
var l677C8136_0=(text_color >> 24);
draw_set_alpha(l677C8136_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 6CC2E762
/// @DnDArgument : "x" "xPos"
/// @DnDArgument : "y" "yPos"
/// @DnDArgument : "caption" "text_string"
draw_text(xPos, yPos, string(text_string) + "");

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0E7E9C3D
/// @DnDComment : Restore Font
/// @DnDArgument : "var" "text_font"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "noone"
if(!(text_font == noone))
{
	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 357E8380
	/// @DnDParent : 0E7E9C3D
	/// @DnDArgument : "font" "_oldFont"
	draw_set_font(_oldFont);
}

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 1AACEC77
/// @DnDComment : Restore Alignment
/// @DnDArgument : "halign" "_oldHAlign"
/// @DnDArgument : "valign" "_oldVAlign"
draw_set_halign(_oldHAlign);
draw_set_valign(_oldVAlign);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 3412BB2E
/// @DnDComment : Restore Color
/// @DnDArgument : "color" "_color"
draw_set_colour(_color & $ffffff);
var l3412BB2E_0=(_color >> 24);
draw_set_alpha(l3412BB2E_0 / $ff);