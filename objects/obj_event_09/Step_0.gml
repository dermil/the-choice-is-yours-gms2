/// @description Insert description here
// You can write your code in this editor







// Inherit the parent event
event_inherited();

if (demon_check = true){
	scr_instruction_textbox(3,0,"Event 9 - Facing Right - Choice: Return - Passed");

	scr_instruction_change_face(3,1,obj_player,UP, .5);
	scr_instruction_move_character(3, 2, obj_player,0,-1, 2);

	scr_instruction_change_face(3,3,obj_player,RIGHT, .5);
	scr_instruction_move_character(3, 4, obj_player,1,0, 2);

	scr_instruction_change_face(3,5,obj_player,UP, .5);
	scr_instruction_move_character(3, 6, obj_player,0,-1, 12);	
	
	//EARLY 
	scr_instruction_textbox(6,0,"Event 9 - Facing Right - Choice: Return - Passed");
	
	scr_instruction_change_face(6,1,obj_player,RIGHT, .5);
	scr_instruction_move_character(6, 1, obj_player,1,0, 2);
	
	scr_instruction_change_face(6,2,obj_player,UP, .5);
	scr_instruction_move_character(6,2, obj_player,0,-1, 4);

	scr_instruction_change_face(6,3,obj_player,LEFT, .5);
	scr_instruction_move_character(6,3, obj_player,-1,0, 2);

	scr_instruction_change_face(6,3,obj_player,UP, .5);
	scr_instruction_move_character(6,3, obj_player,0,-1, 12);	
	
} else {
	scr_instruction_textbox(3,0,"Event 9 - Facing Right - Choice: Return - Failed");

	scr_instruction_move_character(3,1,obj_demonoid,1,0,1);

	scr_instruction_change_face(3,2,obj_demonoid,LEFT,.2);

	scr_instruction_move_character(3,3,obj_demonoid,-1,0,1);

	scr_instruction_change_room(3,4,room_failed);	
	
	//EARLY
	scr_instruction_textbox(6,0,"Event 9 - Facing Right - Choice: Return - Failed");

	scr_instruction_move_character(6,1,obj_demonoid,0,1,1);

	scr_instruction_change_face(6,2,obj_demonoid,DOWN,.2);

	scr_instruction_move_character(6,3,obj_demonoid,0,1,1);

	scr_instruction_change_room(6,4,room_failed);	
}