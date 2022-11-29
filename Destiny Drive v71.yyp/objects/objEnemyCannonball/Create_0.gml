event_inherited()

target_x = random_range(10, 70)
target_y = road_y_min + random_range(15, 165)
alarm[0] = room_speed * 4.2

image_xscale = 0.2
image_yscale = 0.2

draw_size = 1.3
size_dec = 0.05

if instance_exists(objBoat)
{
spawner = instance_nearest(x, y, objBoat).sprite_index
spawner_x = instance_nearest(x, y, objBoat).x
spawner_y = instance_nearest(x, y, objBoat).y
}

