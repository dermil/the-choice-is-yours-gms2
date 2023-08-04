/// @description Insert description here
// You can write your code in this editor

event_inherited();

up = "Event 2"


scene_info[0][0][0] = scr_cutscene_create_textbox;
scene_info[0][0][1] = text_id;

scene_info[1][0][0] = scr_cutscene_create_textbox;
scene_info[1][0][1] = "Event 2 - Left"

scene_info[1][1][0] = scr_cutscene_change_face;
scene_info[1][1][1] = obj_player;
scene_info[1][1][2] = LEFT;
scene_info[1][1][3] = .1;

scene_info[1][2][0] = scr_cutscene_move_character;
scene_info[1][2][1] = obj_player;
scene_info[1][2][2] = -1;
scene_info[1][2][3] = 0;
scene_info[1][2][4] = 8;


//The MC looks right, sees a dead end then goes to the left
scene_info[2][0][0] = scr_cutscene_create_textbox;
scene_info[2][0][1] = "Event 2 - Right"

scene_info[2][1][0] = scr_cutscene_change_face;
scene_info[2][1][1] = obj_player;
scene_info[2][1][2] = RIGHT;
scene_info[2][1][3] = 1;

scene_info[2][2][0] = scr_cutscene_change_face;
scene_info[2][2][1] = obj_player;
scene_info[2][2][2] = RIGHT;
scene_info[2][2][3] = .1;

scene_info[2][3][0] = scr_cutscene_move_character;
scene_info[2][3][1] = obj_player;
scene_info[2][3][2] = 1;
scene_info[2][3][3] = 0;
scene_info[2][3][4] = 7;

