// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_camera_player_follow(){
		var xTo = 0, yTo = 0;
	
	if (following != noone){
		xTo = following.x;
		yTo = following.y;
	}
	switch(room){
		case rm_title_room:
			following = obj_player;
		break;

	}



	//Makes the camera move with the followed object
	x += (xTo-x)/3;
	y += (yTo-y)/3;

	//Forces the camera to follow this object
	camera_set_view_pos(view_camera[0], x-(cam_width*0.5), y-(cam_height*0.5));

	/*//Code and control layers when moving
	if (layer_exists(paraLayer0)){ //Close
		layer_x(paraLayer0,x/6);
	}

	if (layer_exists(paraLayer1)){ //Mid
		layer_x(paraLayer1,x/10);
	}
	
	if (layer_exists(paraLayer2)){ //far
		layer_x(paraLayer2,x/14);
	}
*/
	//Zoom controls
	camera_set_view_size(camID,origWidth*zoomMultiplier,origHeight*zoomMultiplier);
	zoomMultiplier += (zoomTarget - zoomMultiplier) * zoomSpd;
}