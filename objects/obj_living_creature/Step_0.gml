/// @description Control Depth
depth = -y

//Death
if (current_hp <= 0) {
    instance_destroy();
}

///Don't leave the screen
x = min(x, room_width-12)
x = max(x,12)
y = min(y, room_height-12)
y = max(y,12)


script_execute(state);