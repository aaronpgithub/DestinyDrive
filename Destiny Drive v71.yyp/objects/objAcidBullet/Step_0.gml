event_inherited()

if sprite_index = sprHomingAcidShot
{
        angle = point_direction(x, y, x - sensitivity, objPlayer_y + random_range(-1, 1)) + angle_added
        image_angle = angle
        motion_set(angle, -(spd) )
}

