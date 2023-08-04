/// @description Insert description here
// You can write your code in this editor







// Inherit the parent event
event_inherited();

scr_instruction_textbox(0,0, text_id);


scr_instruction_textbox(1, 0, "Event 12 - Facing North - West");

scr_instruction_change_face(1,1,obj_player, LEFT, .5);

scr_instruction_move_character(1,2,obj_player,-1,0,8);



scr_instruction_textbox(2, 0, "Event 12 - Facing North - North");

scr_instruction_change_face(2,1,obj_player, UP, .5);

scr_instruction_move_character(2,2,obj_player,0,-1,9);
