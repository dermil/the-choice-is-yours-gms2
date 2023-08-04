/// @description Insert description here
// You can write your code in this editor

//Base Stats
max_hp = 20;
current_hp = 20;
attack = 5;
defense = 1;
crit = 1 ;
crit_chance = crit * .05;

hspd = 0;
vspd = 0;
spd = 5;
len = 0;
dir = 0;
moving = false; 

face = DOWN;

yaxis = 0;
xaxis = 0;

//Walking animations
player_animations[0][0] = spr_player_m_walk_r; 
player_animations[0][1] = spr_player_m_walk_L;
player_animations[0][2] = spr_player_m_walk_u;
player_animations[0][3] = spr_player_m_walk_d;

//Variables to be used in-game
player_walking_r = player_animations[god.p_choice][0];
player_walking_L = player_animations[god.p_choice][1];
player_walking_u = player_animations[god.p_choice][2]; 
player_walking_d = player_animations[god.p_choice][3];

state = scr_player_movement;

