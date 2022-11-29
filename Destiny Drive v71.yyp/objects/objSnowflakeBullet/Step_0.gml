x = instance_find(objEnemySnowflake, follow).x + lengthdir_x(cur_len, instance_find(objEnemySnowflake, follow).angles + angler)
y = instance_find(objEnemySnowflake, follow).y + lengthdir_y(cur_len, instance_find(objEnemySnowflake, follow).angles + angler)

cur_len = lerp(cur_len, len, 0.1)

image_angle = instance_find(objEnemySnowflake, follow).angles + angler

