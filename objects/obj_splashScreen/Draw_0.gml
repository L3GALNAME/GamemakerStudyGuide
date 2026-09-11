/// @desc Draw spites

// Draw background
draw_sprite_ext(spr_pixel, 0, 0, 0, room_width, room_height, 0, merge_colour( c_black, merge_colour(colors[colCurrent], colors[(colCurrent+1) % 3], (tick / (120*5)) % 1), 0.1 ), 1);

