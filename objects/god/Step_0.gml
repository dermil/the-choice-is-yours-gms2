/// @description Insert description here
// You can write your code in this editor


up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_space) || keyboard_check(ord("Z")) || mouse_check_button(mb_left) ;
deny_key = keyboard_check(ord("X")) || mouse_check_button(mb_right);


if !(accept_key){
acceptHold = 0;
}
if (accept_key) {
	acceptHold++	
}

if !(deny_key){
denyHold = 0;
}

if (deny_key) {
	denyHold++	
}

if (acceptHold >= 50) {
	acceptHold = 50;	
}

if (denyHold >= 50) {
	denyHold = 50;	
}
if (room == rm_title_room){
	
	if (obj_event_04.choice = 1){
		saved_deer = true;	
	}

	if (obj_event_08.choice = 1) {
		greed = true;
		item_check = 4;
	}

	if (array_length(obj_player.item_inventory) >= item_check){
	obj_event_09.demon_check = true;
	}

}

//Track the player's location and change the textbox
if (instance_exists(obj_player)){
if (obj_player.y > 500) {
	textbox_x = 50;
	textbox_y = 550;
} else if (obj_player.y > 250) {
	textbox_x = 50;
	textbox_y = 400;
} else if (obj_player.y > 230){ 
	textbox_x = 100;
	textbox_y = 270;
	}
else{
textbox_x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/3;
textbox_y = camera_get_view_y(view_camera[0]) + 500;
}
}