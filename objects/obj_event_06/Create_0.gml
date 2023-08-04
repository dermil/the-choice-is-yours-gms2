/// @description Insert description here
// You can write your code in this editor







// Inherit the parent event
event_inherited();

left = "Event 6 - Facing Left"

scr_instruction_textbox(0,0,text_id);

//You press the button
scr_instruction_textbox(1,0,"Event 6 - Facing Left - Choice: Press");

scr_instruction_change_face(1,1,obj_player,RIGHT,.2);

scr_instruction_change_face(1,2,obj_player,LEFT,.2);

scr_instruction_change_face(1,3,obj_player,UP,.2);

scr_instruction_add_item(1,4,"Something");

scr_instruction_destroy_obj(1,5,obj_orc);

scr_instruction_move_character(1,6,obj_player,0,-1,9);


//You didnt press it
scr_instruction_textbox(2,0,"Event 6 - Facing Left - Choice: Nope");

scr_instruction_change_face(2,1,obj_player,UP,.2);

scr_instruction_move_character(2,2,obj_player,0,-1,9);

