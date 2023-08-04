/// @description Insert description here
// You can write your code in this editor







// Inherit the parent event
event_inherited();

if (instance_exists(obj_deer)) && (god.saved_deer == true) {
	up = "Event 7 - Facing Up - Deer - Part 1";	
	scr_instruction_textbox(0,1, "Event 7 - Facing Up - Deer - Part 2");
	
} else {
	up = "Event 7 - Facing Up - No Deer";
};