/// @description Insert description here
// You can write your code in this editor

event_inherited();

left = "Event 3 - Facing Left";

scene_info[0][0][0] = scr_cutscene_create_textbox;
scene_info[0][0][1] = text_id;

scene_info[1][0][0] = scr_cutscene_create_textbox;
scene_info[1][0][1] = "Event 3 - Facing Left - Choice: West"

scr_instruction_change_face(1,1,obj_player,LEFT,.4);

scr_instruction_move_character(1,2,obj_player,-1,0,8);

scene_info[2][0][0] = scr_cutscene_create_textbox;
scene_info[2][0][1] = "Event 3 - Facing Left - Choice: North"

scene_info[2][1][0] = scr_cutscene_change_face;
scene_info[2][1][1] = obj_player;
scene_info[2][1][2] = UP;
scene_info[2][1][3] = .5;

scene_info[2][2][0] = scr_cutscene_move_character;
scene_info[2][2][1] = obj_player;
scene_info[2][2][2] = 0;
scene_info[2][2][3] = -1;
scene_info[2][2][4] = 7;
