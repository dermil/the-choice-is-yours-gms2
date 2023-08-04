text_id = "Event Perish";

scene_info[0][0][0] = scr_cutscene_create_textbox;
scene_info[0][0][1] = text_id;

scene_info[0][1][0] = scr_cutscene_end_game;

scr_instruction_textbox(1,0,"Event Perish - Again");
scr_instruction_change_room(1,1,rm_title_room);

scr_instruction_textbox(2,0,"Event Perish - Done");
scene_info[2][1][0] = scr_cutscene_end_game;