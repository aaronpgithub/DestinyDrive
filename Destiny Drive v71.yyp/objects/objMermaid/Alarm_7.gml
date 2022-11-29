alarm[7] = random_range(140, 240)

globalvar oogle, randmspd;
oogle = random_range(90, 100)
randmspd = random_range(0.8, 1.1)

if x < 180 randmspd = random_range(0.3, 0.7)

if x < pos_x + 2
repeat(4) {

var mer_turret_inst;

        mer_turret_inst = instance_create(x - 7, y - 13, objTrident)
        
        with(mer_turret_inst)
        {
        angle = oogle
        spd = 5 * global.enemy_spd
        damage = 1
		rando_spd = randmspd
		
        image_angle = angle
        }
        
        champion_bullet(mer_turret_inst)
		
		oogle += random_range(2, 5)
}