text_id = "Event Winner";

scene_info[0][0][0] = scr_cutscene_create_textbox;
scene_info[0][0][1] = text_id;

scr_instruction_textbox(1,0,"Event Winner - Again");
scr_instruction_change_room(1,1,rm_title_room);

scr_instruction_textbox(2,0,"Event Perish - Done");
scene_info[2][1][0] = scr_cutscene_end_game;
