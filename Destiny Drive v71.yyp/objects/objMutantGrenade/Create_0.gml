alarm[11] = 1 //path alarm
path = path_add()
path_set_closed(path, false)
path_set_kind(path, 1)
path_delete_point(path, 0)

target_x = random_range(10, 70)
target_y = road_y_min + random_range(15, 165)

spawner = sprMutantTankFull
spawner_x = instance_nearest(x, y, objTheMutantTank).x
spawner_y = instance_nearest(x, y, objTheMutantTank).y

