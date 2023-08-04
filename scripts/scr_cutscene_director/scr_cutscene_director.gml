// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_cutscene_director(){

}

/// @description Cutscene end
function scr_cutscene_end_action() {

	scene++;
	if (scene > array_length(scene_info[choice])-1){
	    endScene = true;
	}

}
///@description jump to a specific scene of current choice
function scr_cutscene_jumpto(_scene){
	scene = _scene;
}

/// @description delay actions in cutscene
/// @param seconds
function scr_cutscene_wait(argument0) {
	//@arg = seconds

	timer++;

	if (timer > (argument0 * room_speed)){
	    timer = 0;
	    scr_cutscene_end_action();
	}



}

	//Changes which direction a character is facing
	///@param obj
	///@param face_direction
	///@param seconds_to_wait
function scr_cutscene_change_face(argument0, argument1, argument2) {
	with(argument0){
	    face = argument1;
	}
	scr_cutscene_wait(argument2);

}

function scr_cutscene_player_state(argument0) {
	//@arg choose player state
	with(obj_player) {
	    state = argument0;
	}
	scr_cutscene_end_action();

}

///@param text_id
//creates a textbox that can be interacted with by the player that links to player options
function scr_cutscene_create_textbox(_text_id) {
	var dialogue = obj_cutscene_textbox;
	var border = -1;
	
	if (!instance_exists(dialogue)){
		dialogue = instance_create_depth(0, 0, -9999, obj_cutscene_textbox);
		with (dialogue) {
			scr_game_text(_text_id);	
		}
		
	} else {
			dialogue.adv_timer --;
			if (dialogue.adv_timer <= 0){
				dialogue.adv_timer = 0;	
			}

			//go through text
			if (dialogue.adv_timer == 0) {
			if (god.accept_key) || (god.deny_key) {
				//if all text has been played
				if (dialogue.draw_char == dialogue.text_length[dialogue.page]){
					if (dialogue.page < dialogue.page_number-1){
						dialogue.page++;
						audio_play_sound(snd_menu_confirm,1, false,1,0,1);
						dialogue.draw_char = 0;
					} else { //destroy the textbox if theres no more dialogue. 
			
						if (dialogue.making_choice == false) {
							scene++;
							with (dialogue) {
								instance_destroy();
							}
						}
					}
				} else { //completely fill out the page if it's not already done adding text
					dialogue.draw_char = dialogue.text_length[dialogue.page];	
				}
				if (instance_exists(dialogue)){
					dialogue.adv_timer = room_speed/3;
				}
			}

			if (instance_exists(dialogue)){
				
				if (god.acceptHold >= dialogue.acceptHoldDur) && 
				(dialogue.making_choice == true) || 
				(god.denyHold >= dialogue.acceptHoldDur) && 
				(dialogue.making_choice == true) {
						audio_play_sound(snd_choice_select, -1, false);
						dialogue.adv_timer = room_speed/3;
						//resets the scene and changes the dialogue tree based on the player's choices
						scene = 0;
						choice = dialogue.option_link_id[dialogue.option_pos][1]; 
						god.denyHold = 0;
						god.acceptHold = 0;
						with (dialogue) {
							instance_destroy();	
						}
				}
		
			}

		}
	}
}
	
/// @param char
/// @param xdir
/// @param ydir
/// @param steps
function scr_cutscene_move_character(_obj, _xdir, _ydir, _steps) {
	//this script will also be used for NPC tracking an object with the face
	//by changing the x and y axis to the targeted object
	steps = _steps; //Controls how long the char walks for
	timer--;
	_obj.moving = true;
	if (timer <= 0){
		timer = 0;	
	}
	//_obj.xaxis = _xdir; // use -1 to go left/ 1 to go right
	//_obj.yaxis = _ydir; // use -1 to go up/ 1 to go down
	if (timer <= 0){
		if (step_count <= _steps) {
			_obj.x += 16*_xdir;
			_obj.y += 16*_ydir;
			step_count++;
			timer = room_speed/4;
		}
	}

	if (step_count == _steps){
	    timer = 0;
		step_count = 0;
		_obj.moving = false;
	    with(_obj){
	        xaxis = 0;
	        yaxis = 0;
	    }
	    scr_cutscene_end_action();
	}

}
	
function scr_cutscene_destroy_obj(_obj){
	if (instance_exists(_obj)){
		var pt = random_range(.9,1.2);
		
		switch (_obj){
			case obj_deer:
				audio_play_sound(snd_death_effect_0,2,false,1,0,pt);
			break;
			
			case obj_cockatrice:
				audio_play_sound(snd_death_effect_1,2,false,1,0,pt);
			break;
			
			case obj_player:
				audio_play_sound(snd_death_effect_0,2,false,1,0,1);
			break;
			
			case obj_orc:
				audio_play_sound(snd_death_effect_1,2,false,1,0,.5);
			break;
		}
		
		with(_obj){
			instance_destroy();	
		}
	}
	scr_cutscene_end_action();
}
///@description changes the value of a specified var on obj
function scr_cutscene_change_event(_variable,_value){
	if (instance_exists(god)){
		with(god){
			_variable = _value;
		}
	}
	scr_cutscene_end_action();
}

function scr_cutscene_next_choice(_choice){
	choice = _choice;
	scene = 0;
}

function scr_cutscene_change_room(_room) {
	room_goto(_room);	
}

function scr_cutscene_deal_damage_to(_attacker, _defender){
	var _ad = _attacker.attack;
	var _def = 1 - (_defender.defense * .05);
	var _adRed = round(_ad * _def); //damage after defense reduction
	
	if (scr_chance(_attacker.crit_chance)){
		_defender.current_hp -= _adRed * 1.25;
	} else {
		_defender.current_hp -= _adRed;	
	}
	
	scr_cutscene_end_action();
}

///@param Percent
function scr_chance(_percent) {
	var percent = _percent; //Between 0 - 1
	percent = clamp(percent, 0, 1);
	return (random(1) < percent); 

	//This script returns a value of true or false
	//If, when called, the random number returns a value less than that of 
	//the percent put into the function, the script returns true.

}


function scr_cutscene_add_item(_item_name){
	with(obj_player){
		array_push(item_inventory, _item_name);
	}
	scr_cutscene_end_action()
}

function scr_cutscene_end_game(){
		game_end();
}