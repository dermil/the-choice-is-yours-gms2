/// @description Insert description here
// You can write your code in this editor







// Inherit the parent event
event_inherited();

saved_deer = false;

scr_instruction_textbox(0,0, text_id);

//You pick east

scr_instruction_textbox(1, 0, "Event 7 - Facing Up - No Deer - East");

scr_instruction_change_face(1,1,obj_player,RIGHT,.1);

scr_instruction_move_character(1,2,obj_player,1,0,7);

//You pick west

scr_instruction_textbox(2, 0, "Event 7 - Facing Up - No Deer - West");

scr_instruction_change_face(2,1,obj_player,LEFT,.1);

scr_instruction_move_character(2,2,obj_player,-1,0,6);

//You pick west after saving the deer

scr_instruction_textbox(3, 0, "Event 7 - Facing Up - Deer - Part 2 - Choice: West");

scr_instruction_change_face(3,1,obj_deer,LEFT,.2);

scr_instruction_move_character(3,2,obj_deer,-1,0,1);

scr_instruction_destroy_obj(3, 3, obj_deer);

scr_instruction_add_item(3, 4,"Precious Orb");

scr_instruction_change_face(3, 5,obj_player,LEFT,.1);

scr_instruction_move_character(3, 6,obj_player,-1,0,6);

//You pick east after saving the deer

scr_instruction_textbox(4, 0, "Event 7 - Facing Up - Deer - Part 2 - Choice: East");

scr_instruction_change_face(4,1,obj_deer,LEFT,.1);

scr_instruction_move_character(4,2,obj_deer,-1,0,1);

scr_instruction_destroy_obj(4, 3, obj_deer);

scr_instruction_add_item(4, 4,"Precious Orb");

scr_instruction_change_face(4, 5, obj_player,RIGHT,.1);

scr_instruction_move_character(4, 6, obj_player,1,0,7);