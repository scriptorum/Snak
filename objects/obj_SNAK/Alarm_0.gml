image_angle = random(180)-90;

image_xscale = random(2)+0.5;
image_yscale = random(2)+0.5;

image_blend = $FF000000+random($FFFFFF) & $ffffff;
image_alpha = ($FF000000+random($FFFFFF) >> 24) / $ff;

_col = random(32);
layer_background_blend(layer_background_get_id("Background"), make_colour_rgb(_col, _col, _col));

alarm_set(0, random(150));