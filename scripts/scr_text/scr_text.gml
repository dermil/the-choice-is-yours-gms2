/// @param text
function scr_text(_text){
	text[page_number] = _text;
	page_number++;
}

/// @param option
/// @param link_id
/// @param scene_choice
function scr_option(_option, _link_id, _scene_choice) {
		option[option_number] = _option;
		option_link_id[option_number][0] = _link_id; //id of set dialogue option
		option_link_id[option_number][1] = _scene_choice; //changes dialogue branches
		option_number++
}


///@param text_id
//creates a textbox linking to the text and switch case in text_id, set in the creation code of whatever calls
//this function.
function create_textbox(_text_id) {
	with (instance_create_depth(0, 0, -9999, obj_textbox)){
		scr_game_text(_text_id)
	}
}