/// @description Executes cutscene events
	switch (obj_player.face) { //Changes events based on player face (where they came from)
	    case RIGHT:
	        text_id = right;
	        break;
        
	    case LEFT:
	        text_id = left;
	        break;
    
	    case UP:
	        text_id = up;
	        break;
    
	    case DOWN:
	        text_id = down;
	        break;
	}

scene_info[0][0][0] = scr_cutscene_create_textbox;
scene_info[0][0][1] = text_id;

if active = true {
    //var current_scene = scene_info[scene]; //This controls which scene is happening
    // variable "scene" is the numbered entry of the "scene_info" array
		
        var len = array_length(scene_info[choice][scene])-1;
        
        switch(len){    
            case 0: script_execute(scene_info[choice][scene][0]); break; //This switch checks how many arguments or needed for a scene to play out
            case 1: script_execute(scene_info[choice][scene][0],scene_info[choice][scene][1]); break; //and changes the code according to the 2D length
            case 2: script_execute(scene_info[choice][scene][0],scene_info[choice][scene][1],scene_info[choice][scene][2]); break;
            case 3: script_execute(scene_info[choice][scene][0],scene_info[choice][scene][1],scene_info[choice][scene][2],scene_info[choice][scene][3]); break;
            case 4: script_execute(scene_info[choice][scene][0],scene_info[choice][scene][1],scene_info[choice][scene][2],scene_info[choice][scene][3],scene_info[choice][scene][4]) break;
        }
        
}         


