/// @description Draw the text boxes

textbox_x = god.textbox_x;
textbox_y = god.textbox_y;


//setup

if (setup == false) {
	setup = true;
	draw_set_font(fnt_main_font);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	//loop through the pages
	for (var p = 0; p < page_number; p++) {
		//find how many characters are on each page and store that in the text length array
		text_length[p] = string_length(text[p]);
		
		//get x position for additional chars or whatever, probably won't need this
		text_x_offset[p] = 0;
	}
}
var pt = random_range(0,1.5)
//typing the text
if (draw_char < text_length[page]){
	draw_char += text_speed;
	audio_play_sound(snd_text_progress,2,false,1,0,pt);
	draw_char = clamp(draw_char, 0, text_length[page]);
}



//draw the textbox
var _textbox_x = textbox_x + text_x_offset[page];
var _textbox_y = textbox_y;

textbox_img += textbox_img_spd;
var textbox_spr_w = sprite_get_width(textbox_spr);
var textbox_spr_h = sprite_get_height(textbox_spr);

draw_sprite_ext(textbox_spr, 
textbox_img, 
_textbox_x, 
_textbox_y, 
textbox_width/textbox_spr_w, 
textbox_height/textbox_spr_h, 
0, c_white, 1);

//Dialogue choices
option_pos += god.deny_key - god.accept_key;
option_pos = clamp(option_pos, 0, option_number-1);

if (draw_char == text_length[page] && page == page_number - 1) {
		
		//draw the choices
		var _op_space = 15;
		var _op_border = 4;
		//draw the boxes
		for (var op = 0; op < option_number; op++) {
			if (op == 1){
				making_choice = true;	
			}
			var _op_width = string_width(option[op]) + _op_border*2;
			draw_sprite_ext(textbox_spr, textbox_img, 
			(_textbox_x ) + (option_number + _op_space ) + (op * 64), //draws more options horizontally 
			_textbox_y - _op_space,
			_op_width/textbox_spr_w, 
			_op_space/textbox_spr_h, 
			0, c_white, 1);
			
			
			
			//draw select option
			if (option_pos == op) {
				//Draw highlight
				draw_sprite_ext(spr_highlight_choice, textbox_img, 
				(_textbox_x ) + (option_number + _op_space ) + (op * 64), //draws more options horizontally 
				_textbox_y - _op_space,
				(_op_width/textbox_spr_w)*(god.acceptHold/acceptHoldDur), 
				_op_space/textbox_spr_h, 
				0, c_white, .5);
				
				//Draw highlight
				draw_sprite_ext(spr_highlight_choice, textbox_img, 
				(_textbox_x ) + (option_number + _op_space ) + (op * 64), //draws more options horizontally 
				_textbox_y - _op_space,
				(_op_width/textbox_spr_w)*(god.denyHold/acceptHoldDur), 
				_op_space/textbox_spr_h, 
				0, c_white, .5);
				
				draw_sprite(spr_selector, 0, (_textbox_x ) + (option_number + _op_space ) + (op * 64),
				_textbox_y - _op_space)	
			}
			
			//draw choices text
			draw_text(((_textbox_x ) + (option_number + _op_space + _op_border) + (op * 64) ),
			_textbox_y - _op_space, 
			option[op])
		}
}

//draw the text 
var _drawtext = string_copy(text[page], 1, draw_char);
draw_text_ext(textbox_x + text_x_offset[page] + border, textbox_y + border, _drawtext, line_sep, line_width)