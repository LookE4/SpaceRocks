if keyboard_check(ord("W")) {
	motion_add(image_angle, 0.1);
}

if keyboard_check(ord("A")) {
	image_angle += 4;
}

if keyboard_check(ord("D")) {
	image_angle -= 4;
}

move_wrap(true, true, 0);

if powerup == 3 {
	if keyboard_check(ord("J")) {
		instance_create_layer(x, y, "Instances", obj_bullet);
	}
	exit;
}

if keyboard_check_pressed(ord("J")) {
	instance_create_layer(x, y, "Instances", obj_bullet);
	effect_create_above(ef_smoke, x , y, .5, c_white);
	
	audio_play_sound(snd_shoot, 0, false, 1, 0, random_range(0.8, 1.2));
	
	if powerup == 1 {
		var _bullet = instance_create_layer(x, y, "Instances", obj_bullet);
		_bullet.direction += 10;
		_bullet = instance_create_layer(x, y, "Instances", obj_bullet);
		_bullet.direction -= 10;
	}
}