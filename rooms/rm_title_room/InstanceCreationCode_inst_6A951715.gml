text_id = "Event Intro";

scene_info[0][0][0] = scr_cutscene_create_textbox;
scene_info[0][0][1] = text_id;

scene_info[0][1][0] = scr_cutscene_change_face;
scene_info[0][1][1] = obj_player;
scene_info[0][1][2] = UP;
scene_info[0][1][3] = 1;

scene_info[0][2][0] = scr_cutscene_move_character;
scene_info[0][2][1] = obj_player;
scene_info[0][2][2] = 0;
scene_info[0][2][3] = -1;
scene_info[0][2][4] = 4;

