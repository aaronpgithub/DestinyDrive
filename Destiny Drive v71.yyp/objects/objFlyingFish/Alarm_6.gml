/// @description wavy!

alarm[6] = 90

globalvar has_to_negate, fish_ypos;
fish_ypos = 0
has_to_negate = irandom_range(1, 9)

repeat(11)
{
var wavbul = instance_create(x, road_y_min + fish_ypos, objWavyFishBullet)

    with(wavbul)
    {
	if fish_ypos / 18 = has_to_negate amp = 9
	if fish_ypos / 18 = has_to_negate amp = -9
    spd = -1 * global.enemy_spd
    damage = 1
    angle = 0
    }
fish_ypos += 18
}
