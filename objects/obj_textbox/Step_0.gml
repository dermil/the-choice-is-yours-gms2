/// @description Control textboxes
adv_timer --;
if (adv_timer <= 0){
	adv_timer = 0;	
}

//go through text
if (adv_timer == 0) {
if (god.accept_key) || (god.deny_key) {
	//if all text has been played
	if (draw_char == text_length[page]){
		if (page < page_number-1){
			page++;	
			draw_char = 0;
		} else { //destroy the textbox if theres no more dialogue. 
			
			if (making_choice == false) {
				instance_destroy();	
			}
		}
	} else { //completely fill out the page if it's not already done adding text
		draw_char = text_length[page];	
	}
	adv_timer = room_speed/3;
}


if (god.acceptHold >= acceptHoldDur) || (god.denyHold >= acceptHoldDur) && (making_choice == true) {
		create_textbox(option_link_id[option_pos][0]);
		adv_timer = room_speed/3;
		god.denyHold = 0;
		god.acceptHold = 0;
		instance_destroy();	
		
}

}




