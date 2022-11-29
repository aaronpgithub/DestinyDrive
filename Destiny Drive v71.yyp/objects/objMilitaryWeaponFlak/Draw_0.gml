event_inherited()

draw_self()

if alarm[5] < 60
{
    xt += 10
    image_xscale = 0.2 * sin(degtorad(xt)) + 1
    image_yscale = 0.2 * cos(degtorad(xt)) + 1
    draw_sprite_ext(sprMilitaryWeaponFlakFlash, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 1 * cos(degtorad(xt)))
}

angle = 0

