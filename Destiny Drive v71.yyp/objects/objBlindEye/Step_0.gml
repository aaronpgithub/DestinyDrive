event_inherited()

prevangle = angle

if prevangle < 180 - angle_offset and point_direction(mid_x, mid_y, objPlayer_x, objPlayer_y) > 270 angle_offset += 360
if prevangle >= 180 - angle_offset and point_direction(mid_x, mid_y, objPlayer_x, objPlayer_y) < 90 angle_offset -= 360

angle = lerp(angle, point_direction(mid_x, mid_y, objPlayer_x, objPlayer_y) - angle_offset, 0.08)
prevangle -= angle_offset