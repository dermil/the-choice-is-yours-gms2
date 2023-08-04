/// @description Insert description here
// You can write your code in this editor
event_inherited();

up = "Event 4 - Facing Up"

scene_info[0][0][0] = scr_cutscene_create_textbox;
scene_info[0][0][1] = text_id;

//Choice 1 - Option 1
scene_info[1][0][0] = scr_cutscene_create_textbox;
scene_info[1][0][1] = "Event 4 - Facing Up - Choice: Save"
	//Move the deer
scene_info[1][1][0] = scr_cutscene_change_face;
scene_info[1][1][1] = obj_deer;
scene_info[1][1][2] = UP;
scene_info[1][1][3] = .1;

scene_info[1][2][0] = scr_cutscene_move_character;
scene_info[1][2][1] = obj_deer;
scene_info[1][2][2] = 0;
scene_info[1][2][3] = -1;
scene_info[1][2][4] = 8;

scene_info[1][3][0] = scr_cutscene_change_face;
scene_info[1][3][1] = obj_deer;
scene_info[1][3][2] = LEFT;
scene_info[1][3][3] = .1;

scene_info[1][4][0] = scr_cutscene_move_character;
scene_info[1][4][1] = obj_deer;
scene_info[1][4][2] = -1;
scene_info[1][4][3] = 0;
scene_info[1][4][4] = 7;

scene_info[1][5][0] = scr_cutscene_change_face;
scene_info[1][5][1] = obj_deer;
scene_info[1][5][2] = UP;
scene_info[1][5][3] = .1;

scene_info[1][6][0] = scr_cutscene_move_character;
scene_info[1][6][1] = obj_deer;
scene_info[1][6][2] = 0;
scene_info[1][6][3] = -1;
scene_info[1][6][4] = 11;

scene_info[1][7][0] = scr_cutscene_change_face;
scene_info[1][7][1] = obj_deer;
scene_info[1][7][2] = DOWN;
scene_info[1][7][3] = .1;

	
scene_info[1][8][0] = scr_cutscene_create_textbox;
scene_info[1][8][1] = "Event 4 - Facing Up - Choice: Save - Post-Battle"

scene_info[1][9][0] = scr_cutscene_destroy_obj;
scene_info[1][9][1] = obj_cockatrice;

scene_info[1][10][0] = scr_cutscene_change_face;
scene_info[1][10][1] = obj_player;
scene_info[1][10][2] = UP;
scene_info[1][10][3] = 1;

scene_info[1][11][0] = scr_cutscene_change_event;
scene_info[1][11][1] = god.saved_deer;
scene_info[1][11][2] = true;


scene_info[1][12][0] = scr_cutscene_move_character;
scene_info[1][12][1] = obj_player;
scene_info[1][12][2] = 0;
scene_info[1][12][3] = -1;
scene_info[1][12][4] = 11;


//Choice 1 - Option 2
scene_info[2][0][0] = scr_cutscene_create_textbox;
scene_info[2][0][1] = "Event 4 - Facing Up - Choice: Surprise";

scene_info[2][1][0] = scr_cutscene_change_face;
scene_info[2][1][1] = obj_cockatrice;
scene_info[2][1][2] = UP;
scene_info[2][1][3] = .5;

scene_info[2][2][0] = scr_cutscene_move_character;
scene_info[2][2][1] = obj_cockatrice;
scene_info[2][2][2] = 0;
scene_info[2][2][3] = -1;
scene_info[2][2][4] = 1;

scene_info[2][3][0] = scr_cutscene_destroy_obj;
scene_info[2][3][1] = obj_deer;

scene_info[2][4][0] = scr_cutscene_change_face;
scene_info[2][4][1] = obj_cockatrice;
scene_info[2][4][2] = DOWN;
scene_info[2][4][3] = .5;

scene_info[2][5][0] = scr_cutscene_move_character;
scene_info[2][5][1] = obj_cockatrice;
scene_info[2][5][2] = 0;
scene_info[2][5][3] = 1;
scene_info[2][5][4] = 1;

scene_info[2][6][0] = scr_cutscene_move_character;
scene_info[2][6][1] = obj_player;
scene_info[2][6][2] = 0;
scene_info[2][6][3] = -1;
scene_info[2][6][4] = 1;

scene_info[2][7][0] = scr_cutscene_change_face;
scene_info[2][7][1] = obj_player;
scene_info[2][7][2] = UP;
scene_info[2][7][3] = 1;

scene_info[2][8][0] = scr_cutscene_move_character;
scene_info[2][8][1] = obj_player;
scene_info[2][8][2] = 0;
scene_info[2][8][3] = 1;
scene_info[2][8][4] = 1;

scene_info[2][9][0] = scr_cutscene_change_face;
scene_info[2][9][1] = obj_player;
scene_info[2][9][2] = UP;
scene_info[2][9][3] = 1;

scene_info[2][10][0] = scr_cutscene_destroy_obj;
scene_info[2][10][1] = obj_cockatrice;

scene_info[2][11][0] = scr_cutscene_create_textbox;
scene_info[2][11][1] = "Event 4 - Facing Up - Choice: Surprise - Post-Battle";

//Choice 2 - Option 1
scene_info[3][0][0] = scr_cutscene_create_textbox;
scene_info[3][0][1] = "Event 4 - Facing Up - Choice: Surprise - Post-Battle - Take"

scene_info[3][1][0] = scr_cutscene_add_item;
scene_info[3][1][1] = "Deer Horn Blade"

scr_instruction_move_character(3,2,obj_player, 0, -1, 11);



//Choice 2 - Option 2
scene_info[4][0][0] = scr_cutscene_create_textbox;
scene_info[4][0][1] = "Event 4 - Facing Up - Choice: Surprise - Post-Battle - Leave"

scene_info[4][1][0] = scr_cutscene_move_character;
scene_info[4][1][1] = obj_player;
scene_info[4][1][2] = 0;
scene_info[4][1][3] = -1;
scene_info[4][1][4] = 11;
