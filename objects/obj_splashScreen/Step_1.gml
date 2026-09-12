tick++;
if (tick > 120*60) { tick -= tick; }

colCurrent = floor(tick / (120*5)) % colorLen;

// Animation progress
percent[0] += (1/20) / 2;
percent[1] += (1/50) / 2;
if (percent[0] > 0.9) { percent[2] += (1/35) / 2; }
if (percent[0] > 1) { percent[0] = 1; }
if (percent[1] > 1) { percent[1] = 1; }
if (percent[2] > 1) { percent[2] = 1; }

// Mouse things here
if (percent[2] >= 1) {
	// Scaling
	buttons[0][1] = lerp(buttons[0][1], 1, 0.1);
	buttons[1][1] = lerp(buttons[1][1], 1, 0.1);
	
	// Bounce Anim
	buttons[0][2] += buttons[0][3];
	buttons[0][3] += 0.05;
	if (buttons[0][2] > 0) {
		buttons[0][2] = 0;
		buttons[0][3] = 0;
	}
	
	buttons[1][2] += buttons[1][3];
	buttons[1][3] += 0.05;
	if (buttons[1][2] > 0) {
		buttons[1][2] = 0;
		buttons[1][3] = 0;
	}
	
	// Upload
	if point_in_rectangle(mouse_x, mouse_y, 140, room_height-94-162, 172+162, room_height-62) {
		if !buttons[0][0] {
			buttons[0][1] = 1.5;
			buttons[0][4] = tick;
		}
		if (buttons[0][2] >= 0) { buttons[0][3] = -1.5; }
		buttons[0][0] = true;
	} else {
		buttons[0][0] = false;
	}
	
	// Create
	if point_in_rectangle(mouse_x, mouse_y, room_width-172-162, room_height-94-162, room_width-140, room_height-62) {
		if !buttons[1][0] {
			buttons[1][1] = 1.5;
			buttons[1][4] = tick;
		}
		if (buttons[1][2] >= 0) { buttons[1][3] = -1.5; }
		buttons[1][0] = true;
	} else {
		buttons[1][0] = false;
	}
	
	
}