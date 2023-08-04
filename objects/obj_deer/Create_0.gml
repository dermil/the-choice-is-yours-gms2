/// @description Insert description here
// You can write your code in this editor





// Inherit the parent event
event_inherited();

//Walking animations
player_animations[0][0] = spr_deer_walking_R; 
player_animations[0][1] = spr_deer_walking_L;
player_animations[0][2] = spr_deer_walking_up;
player_animations[0][3] = spr_deer_walking_down;

//Variables to be used in-game
player_walking_r = player_animations[god.p_choice][0];
player_walking_L = player_animations[god.p_choice][1];
player_walking_u = player_animations[god.p_choice][2]; 
player_walking_d = player_animations[god.p_choice][3];

state = scr_player_movement;

moving = true;