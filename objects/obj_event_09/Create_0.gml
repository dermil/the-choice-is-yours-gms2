/// @description Insert description here
// You can write your code in this editor







// Inherit the parent event
event_inherited();

demon_check = false;

right = "Event 9 - Facing Right";
up = "Event 9 - Facing Up";

scr_instruction_textbox(0,0,text_id);

scr_instruction_change_face(0,1,obj_demonoid,LEFT,.5);

//You chose to fight and fail
scr_instruction_textbox(1,0,"Event 9 - Facing Right - Choice: Fight!");

scr_instruction_move_character(1,1,obj_demonoid,1,0,1);

scr_instruction_change_face(1,2,obj_demonoid,LEFT,.2);

scr_instruction_move_character(1,3,obj_demonoid,-1,0,1);

scr_instruction_change_room(1,4,room_failed);

//You give up your items

scr_instruction_textbox(2,0,"Event 9 - Facing Right - Choice: Return");

scr_instruction_next_choice(2,1,3);

//BOSS BUT YOU COME IN EARLY

scr_instruction_textbox(4,0,"Event 9 - Facing Up - Choice: Fight!");

scr_instruction_move_character(4,1,obj_demonoid,0,-1,1);

scr_instruction_change_face(4,2,obj_demonoid,DOWN,.2);

scr_instruction_move_character(4,3,obj_demonoid,0,1,1);

scr_instruction_change_room(4,4,room_failed);

//------Items early

scr_instruction_textbox(5,0,"Event 9 - Facing Up - Choice: Return");

scr_instruction_next_choice(5,1,6);