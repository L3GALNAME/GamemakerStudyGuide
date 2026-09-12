/// @desc Draw spites

#region Background

// Draw background
var colorShift = merge_colour(colors[colCurrent], colors[(colCurrent+1) % colorLen], (tick / (120*5)) % 1);
var colorShift2 = merge_colour(colors[(colCurrent+2) % colorLen], colors[(colCurrent+3) % colorLen], (tick / (120*5)) % 1);
draw_sprite_ext(spr_pixel, 0, 0, 0, room_width, room_height, 0, merge_colour( c_black, colorShift, 0.1 ), 1);

// animCurve distance is end - start, realPosition is start + (distance * position) //

//// sprite size = 80 ////
//// 960 / 80 = 12, 540 / 80 = 6.75 ////

var position = animcurve_channel_evaluate(global.animCurves.EASEIN, percent[0]);
var position2 = animcurve_channel_evaluate(global.animCurves.FASTSLOW, percent[1]);

gpu_set_blendmode(bm_add);

draw_sprite_tiled_ext(spr_colorFlare, 0, tick/30, tick/60, 3, 3, colorShift2, 0.02);
draw_sprite_tiled_ext(spr_colorFlare, 0, tick/20, tick/45, -4, -4, colorShift, 0.02);

draw_sprite_ext(
	spr_menuBox, 0, room_width/2, 
	(0-40) + ( ((room_height/2) - (0-40)) * position ), 
	1 + ( ((12*0.9) - 1) * position2 ), 
	1 + ( ((6.75*0.9) - 1) * position2 ), 
	0, merge_colour(c_white, colorShift, 0.02), 0.6
);

gpu_set_blendmode(bm_normal);

#endregion

// Intro text
draw_set_alpha(percent[2]);

draw_set_halign(fa_center)
draw_text_transformed_colour((room_width/2) - 2, 48 + 2, "Let's get started!", 1.25, 1.25, 0, c_black, c_black, c_black, c_black, percent[2]);
draw_text_transformed(room_width/2, 48, "Let's get started!", 1.25, 1.25, 0);

draw_set_alpha(1);

// Buttons
//// Upload
draw_sprite_ext(spr_splashGlyphs, 0, 156 + 81, 
	room_height-78 + (sin(tick/120) * 12)+ buttons[0][2], 
	buttons[0][1], buttons[0][1], 
	buttons[0][0] ? (sin((tick-buttons[0][4])/25) * 8) : 0, 
	c_white, buttons[0][0] ? 1 : 0.4 * percent[2]
);
draw_sprite_ext(spr_splashGlyphs, 1, 156 + 81, 
	room_height-78 + (sin(tick/120) * 8) + buttons[0][2], 
	buttons[0][1], buttons[0][1], 
	buttons[0][0] ? (sin((tick-buttons[0][4])/25) * 2) : 0, 
	buttons[0][0] ? c_black : c_white, percent[2]
);

//// Create
draw_sprite_ext(spr_splashGlyphs, 0, room_width-156-81, 
	room_height-78 + (sin(tick/120) * 12) + buttons[1][2], 
	buttons[1][1], buttons[1][1], 
	buttons[1][0] ? (sin((tick-buttons[1][4])/25) * 8) : 0, 
	c_white, buttons[1][0] ? 1 : 0.4 * percent[2]
);
draw_sprite_ext(spr_splashGlyphs, 2, room_width-156-81, 
	room_height-78 + (sin(tick/120) * 12) + buttons[1][2], 
	buttons[1][1], buttons[1][1], 
	buttons[1][0] ? (sin((tick-buttons[1][4])/25) * 2) : 0, 
	buttons[1][0] ? c_black : c_white, percent[2]
);
//draw_sprite_ext(spr_splashGlyphs, 2, room_width-156-81, room_height-78 + (sin(tick/120) * 8), 1, 1, 0, buttons[1][0] ? c_black : c_white, percent[2]);