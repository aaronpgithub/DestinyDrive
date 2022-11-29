event_inherited()

var hand, hand2;
image_speed = 0.2

hp_set(2600)
spawn = true
attack_choice = 0

burst = round(random_range(3, 8))
burst_choice = 0

//the angle for the spiral attack
angle = 0
invert = false

move_dir_t = 0

hand = instance_create(x, y, objIllusionHand)
hand2 = instance_create(x, y, objIllusionHand)
instance_create(x, y, objIllusionBCKDraw)
	with(hand)
	{
	ID = 0
	}
	with(hand2)
	{
	ID = 1
	}

half_y = road_y_mid

mini_spiral_sign = 1
evil_count = 0

illusion_val = 0
illusion_val_sin = 0
illusion_surface = surface_create(room_width, room_height)
ill_speed = 2
ill_angle = 225
ill_bullet_speed = 0