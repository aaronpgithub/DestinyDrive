/// @description Insert description here
// You can write your code in this editor
alarm[0] = 70

repeat(5) {
	var sfr_inst;

	sfr_inst = instance_create(x - 8, y - 10, objEnemyBullet)

    with(sfr_inst)
    {
    spd = random_range(2, 3) * global.enemy_spd
    angle = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-6, 6)
    image_angle = angle
    }
    
    champion_bullet(sfr_inst)
}