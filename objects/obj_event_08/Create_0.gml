/// @description Insert description here
// You can write your code in this editor







// Inherit the parent event
event_inherited();
right = "Event 8 - Facing Right";

scr_instruction_textbox(0,0,text_id);

//You picked greed

scr_instruction_textbox(1, 0, "Event 8 - Facing Right - Greed");

scr_instruction_add_item(1, 1, "Greed Scroll");

scr_instruction_destroy_obj(1,2,obj_mirror);

scr_instruction_change_face(1,3,obj_player,DOWN,.2);

scr_instruction_move_character(1,4,obj_player, 0, 1, 2);

scr_instruction_change_face(1,5,obj_player,RIGHT,.2);

scr_instruction_move_character(1,6,obj_player, 1, 0, 8);

//You left it alone

scr_instruction_textbox(2, 0, "Event 8 - Facing Right - Leave it");

scr_instruction_change_face(2,1,obj_player,DOWN,.2);

scr_instruction_move_character(2,2,obj_player, 0, 1, 2);

scr_instruction_change_face(2,3,obj_player,RIGHT,.2);

scr_instruction_move_character(2,4,obj_player, 1, 0, 8);


