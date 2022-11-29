if spd != 0 spd -= 0.1 * sign(spd)

motion_set(angle, spd)

image_xscale = radius / 16
image_yscale = image_xscale

//broke
var circlet = collision_circle(x, y, radius * 2, objCircle, true, true);
if circlet != noone
    if circlet.spd > spd {
    angle = point_direction(x, y, circlet.x, circlet.y)
    spd = -(circlet.spd)
    }
