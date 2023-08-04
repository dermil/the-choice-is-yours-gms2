/// @description Insert description here
// You can write your code in this editor







// Inherit the parent event
event_inherited();

up = "Event 5 - Facing up"

scene_info[0][0][0] = scr_cutscene_create_textbox;
scene_info[0][0][1] = text_id;


//Going West

scene_info[1][0][0] = scr_cutscene_create_textbox;
scene_info[1][0][1] = "Event 5 - Facing up - Choice: West";

scr_instruction_change_face(1,1,obj_player,LEFT,.1);

scr_instruction_move_character(1,2,obj_player,-1,0,7);

//Going East

scene_info[2][0][0] = scr_cutscene_create_textbox;
scene_info[2][0][1] = "Event 5 - Facing up - Choice: East";

scr_instruction_change_face(2,1,obj_player,RIGHT,.1);

scr_instruction_move_character(2,2,obj_player,1,0,10);

scr_instruction_change_face(2,3,obj_player,UP,.1);

scr_instruction_move_character(2,4,obj_player,0,-1,5);


