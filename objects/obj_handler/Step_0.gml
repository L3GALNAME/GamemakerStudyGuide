//if keyboard_check_pressed(vk_enter) {
//	var _filePath = get_save_filename("Peebis|*.txt", "");
//	ini_open(_filePath);
//	ini_write_string("Section 1", "word", "definition");
//	ini_close();
//	//if (_filePath != "") {
//	//	file_text_open_read(_filePath);
//	//}
//	//var _filePath = get_open_filename("Peebis|*.txt", "");
//	//if (_filePath != "") {
//	//	file_text_open_read(_filePath);
//	//}
	
//}

if mouse_check_button_pressed(mb_left) {
	if position_meeting(mouse_x, mouse_y, id) {
		if !focused {
			focused = true;
			keyboard_string = input_text;
		}
	} else {
		focused = false;
	}
}

if focused {
	// truncating
	//keyboard_string = string_copy(keyboard_string, 1, string_length(keyboard_string)+1);
	input_text = keyboard_string;
}