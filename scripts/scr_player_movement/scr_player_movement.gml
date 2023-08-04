// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_movement(){
	//Get direction
	dir = point_direction( 0, 0, xaxis, yaxis);
	
	//get the legnth 
	if (xaxis == 0 && yaxis = 0) {
	   len = 0;
	} else {
	   len = spd;
	   scr_get_face();
	}

	//Get the hspd and vspd
	hspd = lengthdir_x(len, dir);
	vspd = lengthdir_y(len, dir);
	
	// Move
	x = x + hspd;
	y = y + vspd;
	
	//Sprite Animations
	image_speed = 1.5;

	if (moving == false) { 
		image_index = 0;
		image_speed = 0;
	}


	switch (face) {
	    case RIGHT:
	        sprite_index = player_walking_r;
	        break;
        
	    case LEFT:
	        sprite_index = player_walking_L;
	        break;
    
	    case UP:
	        sprite_index = player_walking_u;
	        break;
    
	    case DOWN:
	        sprite_index = player_walking_d;
	        break;
	}
}

function scr_get_face(){
	//this lets you get the direction the player should be facing
	//based on the current rounded direction divided by 90.
	//this leads to 4 outcomes, 0, 1, 2, 3, 4
	//0 = right, 1 = up, 2 = left, 3 = down
	face = round(dir/90);
	if (face == 4){
	    face = RIGHT;
	}

	
}


