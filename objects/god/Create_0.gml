///Initialize basic info

up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("z"));
deny_key = keyboard_check_pressed(ord("x")) || mouse_check_button_pressed(mb_right);

acceptHold = 0;
denyHold = 0;


//Player character choice
p_choice = 0; //m = 0, f = 1, dog = 2

globalvar room_w, room_h;

room_w = display_get_width()/720;
room_h = display_get_height()/540;

//Events

saved_deer = false;
greed = false;

item_check = 3

textbox_x = 0;
textbox_y = 0;

window_set_caption("The Choice is Yours");