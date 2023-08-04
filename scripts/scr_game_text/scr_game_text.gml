// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_game_text(_text_id){
	switch(_text_id) {
		case "Event 1":
			scr_text("test test test tes tes");
			scr_text("testestes testest");
				scr_option("Yeah", "Event 1 - Yes", 0);
				scr_option("Mmmm", "Event 1 - No", 0);
		break;
		
			case "Event 1 - Yes":
				scr_text("wahawhawhah");
				break;
			
			case "Event 1 - No":
				scr_text("nahnahnahnahn");
				break;
				
		case "Event 2":
			scr_text("You come to a pedestal and a split in the paths");
			scr_text("There's a door to the right and an open path on your left");
			scr_text("Where will you go first?")
				scr_option("Left", "Event 2 - Left", 1);
				scr_option("Right", "Event 2 - Right", 2);				
		break;
			
			case "Event 2 - Left":
				scr_text("You pick the obvious choice and decide to go left.");
			break;
			
			case "Event 2 - Right":
				scr_text("You look at the door and it doesn't seem like you can get through.");
				scr_text("That part of the dungeon seems...");
				scr_text("Well, maybe in the future?");
			break;
			
		//OBJ_EVENT_03	
		case "Event 3 - Facing Left":
				scr_text("You've found yourself at your first cross-road.");
				scr_text("Your journey has official begun, but you fear for your safety");
				scr_text("Your next choice could lead to an early end...");
				scr_text("One way or another.");
					scr_option("West", "Event 3 - Facing Left - Choice: West", 1);
					scr_option("Head North", "Event 3 - Facing Left - Choice: North", 2);
		break;
			case "Event 3 - Facing Left - Choice: North":
				scr_text("You've chosen your path.");
				scr_text("A path of turmoil lies ahead.");
			break;
			
			case "Event 3 - Facing Left - Choice: West":
				scr_text("You've chosen your path.");
				scr_text("But there's no way to bridge that hole.");
				scr_text("You decide that heading north is the best option.")
			break;
		
		//EVENT 4	
		case "Event 4 - Facing Up":
			scr_text("You find yourself face-to-face with an absurd foe.");
			scr_text("However, it seems to have other prey in mind.");
			scr_text("Another, more fragile creature is one errant attack from being food.");
			scr_text("Regardless, your only way out of this room is through that monster.");
			scr_text("You could save the small one by playing the distractor.");
			scr_text("Or... use this moment to get the upper hand on the large one.");
			scr_text("The choice is yours.");
				scr_option("Save it", "Event 4 - Facing Up - Choice: Save", 1);
				scr_option("Surprise Attack", "Event 4 - Facing Up - Choice: Surprise", 2);
		break;
		
			case "Event 4 - Facing Up - Choice: Save":
				scr_text("You decide to save the small creature, yelling at the top of your lungs.");
				scr_text("The larger one is distracted and the small monster slips out of the room.");
				scr_text("You prepare for battle.")
			break;
			
			case "Event 4 - Facing Up - Choice: Surprise":
				scr_text("You leave the creature to its fate and enjoy the opening it creates.");
				scr_text("Wasting no time, you take a quick swing at the monster and prepare for battle");
			break;
			
				case "Event 4 - Facing Up - Choice: Save - Post-Battle":
					scr_text("You manage to best the monster");
					scr_text("Maybe you can find that other one somewhere?");
				break;
			
				case "Event 4 - Facing Up - Choice: Surprise - Post-Battle":
					scr_text("You manage to best the monster.");
					scr_text("And at your feet, the remains of another.");
						scr_option("Take it", "Event 4 - Facing Up - Choice: Surprise - Post-Battle - Take", 3);
						scr_option("Leave it", "Event 4 - Facing Up - Choice: Surprise - Post-Battle - Leave", 4);
				break;
					
					case "Event 4 - Facing Up - Choice: Surprise - Post-Battle - Take":
						scr_text("You equip the Deer Horn Blade and move on.");
					break;
					
					case "Event 4 - Facing Up - Choice: Surprise - Post-Battle - Leave":
						scr_text("You feel a tinge of... something and leave the item behind while moving on.");
					break;
		
		//EVENT 5
		case "Event 5 - Facing up":
			scr_text("You find yourself at another intersection.")
			scr_text("Perhaps the dungeon's end is near, but are you prepared for what's ahead?")
			scr_text("Where will you go from here?")
				scr_option("Go West", "Event 5 - Facing up - Choice: West", 1);
				scr_option("Go East", "Event 5 - Facing up - Choice: East", 2);
		break;
		
			case "Event 5 - Facing up - Choice: West":
				scr_text("You head west, hoping to explore more of this labyrinth.");
				scr_text("Steeling your resolve, you walk.");
			break;
		
			case "Event 5 - Facing up - Choice: East":
				scr_text("East. You hope to reach the end of your journey soon.");
				scr_text("You press on.");
			break;
		
		//EVENT 6
		case "Event 6 - Facing Left":
			scr_text("You find yourself staring at a large, green button.");
			scr_text("Your instincts tell you not to press it, however...");
				scr_option("Press!","Event 5 - Facing Left - Choice: Press", 1);
				scr_option("Nahhh", "Event 5 - Facing Left - Choice: Nope", 2);
		break;
		
			case "Event 6 - Facing Left - Choice: Press":
				scr_text("Though your instincts fought against it...");
				scr_text("You might have been a cat in another life.");
				scr_text("You press the button, look around and...");
				scr_text("Something may have slipped into your pocket.");
				scr_text("You press on.");
			break;
			
			case "Event 6 - Facing Left - Choice: Nope":
				scr_text("You think this may be a bad idea.");
				scr_text("You continue north, ignoring the button's allure.");
			break;
		//EVENT 7 - NO DEER
		case "Event 7 - Facing Up - No Deer":
			scr_text("Another empty cross road but you feel like something's missing here.");
			scr_text("Regardless, where will you go?");
				scr_option("East", "Event 7 - Facing Up - No Deer - East", 1);
				scr_option("West", "Event 7 - Facing Up - No Deer - West", 2);
		break;
		
			case "Event 7 - Facing Up - No Deer - East":
				scr_text("Eastern winds beckon you.");
			break;
		
			case "Event 7 - Facing Up - No Deer - West":
				scr_text("You hear a waterfall in the next room over");
				scr_text("and decide to investigate that.")
			break;
		//EVENT 7 WITH DEER
		case "Event 7 - Facing Up - Deer - Part 1":
			scr_text("The monster from before approaches you.");
			scr_text("It leaves a glowing orb at your feet.");
			scr_text("For a brief moment, your eyes meet and you feel its thanks.");
			scr_text("The moment passes and the monster skitters to somewhere safe.")
		break;
		
		case "Event 7 - Facing Up - Deer - Part 2":
			scr_text("Now, where will you go?");
				scr_option("West", "Event 7 - Facing Up - Deer - Part 2 - Choice: West", 3);
				scr_option("East", "Event 7 - Facing Up - Deer - Part 2 - Choice: East", 4);
		break;
		
			case "Event 7 - Facing Up - Deer - Part 2 - Choice: West":
				scr_text("You head towards the sound of running water.");
			break;
			
			case "Event 7 - Facing Up - Deer - Part 2 - Choice: East":
				scr_text("You move east towards the unknown.");
			break;
		
		//EVENT 8
		case "Event 8 - Facing Right":
			scr_text("You approach a pedestal with a mysterious item placed on it.");
			scr_text("There doesn't seem to be any traps attached to it but you can't be too sure.");
			scr_text("Do you pick up the item?");
				scr_option("Take it","Event 8 - Facing Right - Greed", 1);
				scr_option("Leave it","Event 8 - Facing Right - Leave it", 2);
		break;
		
			case "Event 8 - Facing Right - Greed":
				scr_text("You take the item, knowing nothing about it");
				scr_text("Your pockets feel a little heavier and that makes you a little happier");
				scr_text("You leave the room with a little pep in your step!")
			break;
		
			case "Event 8 - Facing Right - Leave it":
				scr_text("You decide to leave the item, not knowing what it's for");
				scr_text("You feel a little safer having left it behind.");
			break;
		
		//EVENT 9, BOSS CHECK
		case "Event 9 - Facing Right":
			scr_text("You enter a chamber adorned in gold, its master lies at the center.");
			scr_text("They stare at you knowingly.");
			scr_text("'You've come at last, creature. Another ant rummages through my domain.'");
			scr_text("'I know what you've so done far, every decision you've made.'");
			scr_text("'Yet, this is your most pressing.'");
			scr_text("'Give up that which you've laid claim to, or fight.'");
			scr_text("'The choice is yours.'")
			
				scr_option("Fight!", "Event 9 - Facing Right - Choice: Fight!", 1);
				scr_option("Return", "Event 9 - Facing Right - Choice: Return", 2);
		break;
		
		case "Event 9 - Facing Right - Choice: Fight!":
			scr_text("In a flash, the sounds of torn flesh surrounds you before becoming your reality.");
			scr_text("You never stood a chance.");
		break;
		
		case "Event 9 - Facing Right - Choice: Return":
			scr_text("'Good, I shall now judge your worth'");
		break;
		
		case "Event 9 - Facing Right - Choice: Return - Passed":
			scr_text("'This...'");
			scr_text("'will suffice.'");
			scr_text("'Now go, before I claim your being as well'");
		break;
		
		case "Event 9 - Facing Right - Choice: Return - Failed":
			scr_text("'This...'");
			scr_text("'is pitiful.'");
			scr_text("'I demand more.'");
			scr_text("Before you could react, the demon claims your being.");
		break;
		
		//Early Boss check
		case "Event 9 - Facing Up":
			scr_text("You enter a chamber adorned in gold, its master lies at the center.");
			scr_text("They stare at you knowingly.");
			scr_text("'You've come at last, creature. Another ant rummages through my domain.'");
			scr_text("'I know what you've done so far, every decision you've made.'");
			scr_text("'Yet, this is your most pressing.'");
			scr_text("'Give up that which you've laid claim to, or fight.'");
			scr_text("'The choice is yours.'")
			
				scr_option("Fight!", "Event 9 - Facing Up - Choice: Fight!", 4);
				scr_option("Return", "Event 9 - Facing Up - Choice: Return", 5);
		break;
		
		case "Event 9 - Facing Up - Choice: Fight!":
			scr_text("In a flash, the sounds of torn flesh surrounds you before becoming your eternity.");
			scr_text("You never stood a chance.");
		break;
		
		case "Event 9 - Facing Up - Choice: Return":
			scr_text("'Good, I shall now judge your worth'");
		break;
		
		case "Event 9 - Facing Up - Choice: Return - Passed":
			scr_text("'This...'");
			scr_text("'will suffice.'");
			scr_text("'Now go, before I claim your being as well'");
		break;
		
		case "Event 9 - Facing Up - Choice: Return - Failed":
			scr_text("'This...'");
			scr_text("'is pitiful.'");
			scr_text("'I demand more.'");
		break;
		
		case "Event 10": 
			scr_text("It was a long trial, but by some means you've made it to the end.");
		break;
		
		case "Event 11 - Deer Saved":
			scr_text("As you enter the room you slip and tumble into the pool of water");
			scr_text("To your surprise, the orb you received from the deer glows brilliantly.");
			scr_text("The light illuminates the pool and before you know it...");
			scr_text("You're teleported out of the dungeon, unharmed.");
		break;
		
		case "Event 11 - No Deer":
			scr_text("As you enter the room you slip and tumble into the pool of water");
			scr_text("Before you know it, the pool forces down, deeper and deeper into its depths.")
		break;
		// EVENT 12 DIALOGUE
		case "Event 12 - Facing North":
			scr_text("Another cross-road with lies ahead and your next choice weighs on your mind.");
			scr_text("There's an item clearly visible in the room to the west.");
			scr_text("But the room up ahead, its mystery intrigues you.");
			scr_text("Where will you go?");
				scr_option("Go West","Event 12 - Facing North - West", 1);
				scr_option("Go North","Event 12 - Facing North - North", 2);
		break;
		
			case "Event 12 - Facing North - West":
				scr_text("Your feet march westward towards whatever item you managed to spot through the halls of this dungeon");
			break;
		
			case "Event 12 - Facing North - North":
				scr_text("You continue north, towards the unknown.")
			break;
		//Debug stuff
		case "Event Intro":
			scr_text("Your ordeal begins now, within this harrowing chamber.");
			scr_text("Trial upon trial will test your worth, yet your options are few.")
			scr_text("Regardless...");
			scr_text("The choice is yours to make.");
		break;
		
		case "Event Winner":
			scr_text("Somehow you made it through this game and won!");
			scr_text("Congrats!");
			scr_text("Though you may wanna keep an eye out for other paths.");
				scr_option("Try Again", "Event Winner - Again",1 );
				scr_option("I'll Leave", "Event Perish - Done", 2);
		break;
		
		case "Event Perish":
			scr_text("Though you embraced the trials, they proved too much for you");
			scr_text("Your remains were never found amongst the rubble of this dungeon.");
				scr_option("Try Again","Event Perish - Again", 1);
				scr_option("I'm Done", "Event Perish - Done", 2);
		break;
		
		case "Event Winner - Again":
			scr_text("You've won but wanna go again? Okay!");;
		break;
		
		case "Event Perish - Again":
			scr_text("Aright, let's do this one more time!")
		break;
		
		case "Event Perish - Done":
			scr_text("Thanks for playing!")
		break;
		
		case "Event Debug":
			scr_text("If you're seeing this it means something broke and now the game's closing.");
			scr_text("Good job.")
			
		break;
	}

}