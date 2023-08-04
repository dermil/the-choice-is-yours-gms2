/// Text Box Init

//Parametes
textbox_width = 200;
textbox_height = 96;
text_x_offset[0] = 0;
border = 8;
line_sep = 12;
line_width = textbox_width - border*2;
//In case you wanna manually animate the textbox
textbox_spr = spr_text_box;
textbox_img = 0;
textbox_img_spd = 0;

//The text
page = 0;
page_number = 0;
text[0] = "The time has come for your trial below the depths.";
text_length[0] = string_length(text[0]);
draw_char = 0;
text_speed = 1;

//Options for dialogue
option[0] = ""; //player dialogue response
option_link_id[0]= -1; //directs to the choice made in the game script file
option_pos = 0;
option_number = 0;

//Inits for controls and making choices
adv_timer = 10;
setup = false;
making_choice = false;
acceptHoldDur = 50;