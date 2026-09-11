/// @desc Draw spites

// Draw background
var colorShift = merge_colour(colors[colCurrent], colors[(colCurrent+1) % 3], (tick / (120*5)) % 1);
draw_sprite_ext(spr_pixel, 0, 0, 0, room_width, room_height, 0, merge_colour( c_black, colorShift, 0.1 ), 1);

// animCurve distance is end - start, realPosition is start + (distance * position) //

//// sprite size = 80 ////
//// 960 / 80 = 12, 540 / 80 = 6.75 ////

var position = animcurve_channel_evaluate(global.animCurves.EASEIN, percent[0]);
var position2 = animcurve_channel_evaluate(global.animCurves.FASTSLOW, percent[1]);
gpu_set_blendmode(bm_add);
draw_sprite_ext(
	spr_menuBox, 0, room_width/2, 
	(0-40) + ( ((room_height/2) - (0-40)) * position ), 
	1 + ( ((12*0.9) - 1) * position2 ), 
	1 + ( ((6.75*0.9) - 1) * position2 ), 
	0, merge_colour(c_white, colorShift, 0.02), 0.85
);
gpu_set_blendenable(bm_normal);
//draw_sprite_ext(
//	spr_menuBox, 0, room_width/2,
//	room_height/2,
//	12*0.9, 
//	6.75*0.9, 
//	0, merge_colour(c_white, colorShift, 0.02), 1
//);

