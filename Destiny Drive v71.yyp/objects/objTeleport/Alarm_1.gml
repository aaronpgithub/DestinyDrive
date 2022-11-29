if objGameControl.level_complete_type = "transition" exit;

alarm[1] = random_range(3, 20)

instance_create(x, y, objTeleportLine)

