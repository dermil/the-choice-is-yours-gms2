/// @description Initial Camera Config
following = noone;
camID = view_camera[0];

//Camera zoom inits
cam_width = 640;
cam_height = 360;
origHeight = camera_get_view_height(camID);
origWidth = camera_get_view_width(camID)
zoomMultiplier = 1;
zoomTarget = 1;
zoomSpd = 0.1;


//Change the camera offset based on room
yViewOffset = 0;
xViewOffset = 0;
state = scr_camera_player_follow;

///Code for Parallax BGs
paraLayer0 = noone; //This layer is closest to the player
paraLayer1 = noone; //This layer is mid-distance
paraLayer2 = noone; //This layer is farthest from the player

//Check and set each layer ID to be controlled by the camera's movement
if (layer_exists("ParallaxBG0")){
		paraLayer0 = layer_get_id("ParallaxBG0");
}

if (layer_exists("ParallaxBG1")){
		paraLayer1 = layer_get_id("ParallaxBG1");
}

if (layer_exists("ParallaxBG2")){
		paraLayer2 = layer_get_id("ParallaxBG2");
}