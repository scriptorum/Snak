// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function foodEffectCreate() 
{
	//food Particle System
	global.ps = part_system_create();
	part_system_depth(global.ps, -1);

	//food Particle Types
	//Effect1
	global.pt_Effect1 = part_type_create();
	part_type_shape(global.pt_Effect1, pt_shape_ring);
	part_type_size(global.pt_Effect1, 1, 1, 0, 0);
	part_type_scale(global.pt_Effect1, 0.10, 0.10);
	part_type_orientation(global.pt_Effect1, 0, 0, 0, 0, 0);
	part_type_color3(global.pt_Effect1, 65535, 4235519, 15929356);
	part_type_alpha3(global.pt_Effect1, 1, 1, 0.61);
	part_type_blend(global.pt_Effect1, 1);
	part_type_life(global.pt_Effect1, 20, 50);
	part_type_speed(global.pt_Effect1, 0.10, 0.50, 0, 2);
	part_type_direction(global.pt_Effect1, 0, 360, 0, 0);
	part_type_gravity(global.pt_Effect1, 0, 0);

	//Effect2
	global.pt_Effect2 = part_type_create();
	part_type_shape(global.pt_Effect2, pt_shape_spark);
	part_type_size(global.pt_Effect2, 1, 1, 0.10, 0);
	part_type_scale(global.pt_Effect2, 0.10, 0.10);
	part_type_orientation(global.pt_Effect2, 0, 0, 0, 0, 0);
	part_type_color3(global.pt_Effect2, 16717093, 16172800, 14019295);
	part_type_alpha3(global.pt_Effect2, 1, 1, 0);
	part_type_blend(global.pt_Effect2, 1);
	part_type_life(global.pt_Effect2, 10, 40);
	part_type_speed(global.pt_Effect2, 0.22, 0.22, 0, 0);
	part_type_direction(global.pt_Effect2, 0, 360, 0, 0);
	part_type_gravity(global.pt_Effect2, 0, 0);

	//Linking Particle Types together (Death and Step)
	part_type_death(global.pt_Effect1, 1, global.pt_Effect2);

	//food Emitters
	global.pe_Effect1 = part_emitter_create(global.ps);

	//Destroying Emitters
	//part_emitter_destroy(global.ps, global.pe_Effect1);
}

function foodEffectEmit(xp, yp) 
{
	part_emitter_region(global.ps, global.pe_Effect1, xp-8, xp+8, yp-8, yp+8, ps_shape_rectangle, ps_distr_linear);
	part_emitter_burst(global.ps, global.pe_Effect1, global.pt_Effect1, 50);
}


