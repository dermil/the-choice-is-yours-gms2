/// @description Insert description here
// You can write your code in this editor


//store number of options in current menu
op_length = array_length(option[menu_level]);


//move through menu
menu_pos += god.down_key - god.up_key;

if (menu_pos >= op_length) {menu_pos = 0};
if (menu_pos < 0) {menu_pos = op_length - 1};

//using menu options

if god.accept_key {
	
	var _prev_menu = menu_level

	
	switch(menu_level) {
		//Initial Menu
		case 0:
			switch(menu_pos){
				//start game
				case 0: room_goto_next(); break; 
					
				case 1:	menu_level = 1;	break;
				//quit game
				case 2: game_end() break;
			}
		break;
		//Settings menu
		case 1: 
			switch(menu_pos) {
				case 0: break;
				
				case 1: break;
				
				case 2: menu_level = 0; break;
			}
		
			break;
	}
	if (_prev_menu != menu_level ) {menu_pos = 0};
	
	//store number of options in current menu
	op_length = array_length(option[menu_level]);

	
}

