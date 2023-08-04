 ///@description Cutscene information for generic scene object
scene = 0; //the active scene in
choice = 0; //choice affected by player decisions
active = false;
timer = 0;
steps = 0;
step_count = 0;

mood = 0;
eventList= noone; //An array which contains scripts for each cutscene/event
eventInfo = 0; //Decides which event is played based on creator's mood
state = noone;//Needed to destroy the cutscene earlier for branching
endScene = false;
names = false;
text_id = "";
//This object is for cutscenes that need to be played with
//a collision interaction from the player

//Cutscenes work by feeding scripts which are executed in the step event
//in the order they're placed in the array

//The script to be called along with the arguments needed
//Change the player state to watch the scene
//scene_info[choice][scene][directions]
//choice indicates when a scene diverges based on an action made by the player
/*
scene_info[0][0][0] = scr_cutscene_player_state;
scene_info[0][0][1] = scr_cutscene_player_watch; //Use this array to store each cutscene action
*/






