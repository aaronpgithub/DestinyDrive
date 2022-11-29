if dis = true exit;

if playerpos = -400 playerpos = point_direction(x, y, objPlayer_x, objPlayer_y)

if alarm[1] = -1 alarm[1] = 45

alarm[0] = 4

globalvar angl, plp, horror_acc;
plp = playerpos
horror_acc = 25

for(angl = 1; angl >= -1; angl--)
{
        var trip = instance_create(x, y, objHorrorBullet)
    
        with(trip)
        {
        damage = 1
        spd = 2 * global.enemy_spd
        angle = (horror_acc * angl) + plp
        image_angle = angle
        }
}

