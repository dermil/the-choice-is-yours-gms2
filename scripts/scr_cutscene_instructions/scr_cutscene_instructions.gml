// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_cutscene_instructions(){

}
///@description quickly adds character movement
function scr_instruction_move_character(_choice,_scene,_obj,_xdir,_ydir,_steps){
	scene_info[_choice][_scene][0] = scr_cutscene_move_character;
	scene_info[_choice][_scene][1] = _obj;
	scene_info[_choice][_scene][2] = _xdir;
	scene_info[_choice][_scene][3] = _ydir;
	scene_info[_choice][_scene][4] = _steps;
}
///@description quickly change char face
function scr_instruction_change_face(_choice,_scene,_obj,_FACE,_delay){
	scene_info[_choice][_scene][0] = scr_cutscene_change_face;
	scene_info[_choice][_scene][1] = _obj;
	scene_info[_choice][_scene][2] = _FACE;
	scene_info[_choice][_scene][3] = _delay;
}

function scr_instruction_textbox(_choice,_scene, _text_id) {
	scene_info[_choice][_scene][0] = scr_cutscene_create_textbox;
	scene_info[_choice][_scene][1] = _text_id;
}

function scr_instruction_add_item(_choice,_scene, _item_name) {
	scene_info[_choice][_scene][0] = scr_cutscene_add_item;
	scene_info[_choice][_scene][1] = _item_name;
}

function scr_instruction_destroy_obj(_choice,_scene, _obj_name) {
	scene_info[_choice][_scene][0] = scr_cutscene_destroy_obj;
	scene_info[_choice][_scene][1] = _obj_name;
}

function scr_instruction_change_obj(_choice,_scene,_var,_val){
	scene_info[_choice][_scene][0] = scr_cutscene_change_obj;
	scene_info[_choice][_scene][1] = god._var
	scene_info[_choice][_scene][2] = _val;
}

function scr_instruction_change_room(_choice,_scene, _room_name) {
	scene_info[_choice][_scene][0] = scr_cutscene_change_room;
	scene_info[_choice][_scene][1] = _room_name;
}

function scr_instruction_next_choice(_choice,_scene, _next) {
	scene_info[_choice][_scene][0] = scr_cutscene_next_choice;
	scene_info[_choice][_scene][1] = _next;
}



