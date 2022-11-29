alarm[7] = random_range(140, 240)

var drango = 5 - instance_number(objBubbleMaker)

if drango <= 0 drango = 1

if x < pos_x + 2
repeat(drango) {

var bbl_turret_inst;

		if objPlayer_y < 130 {
        bbl_turret_inst = instance_create(random_range(10, 130), random_range(270, 280), objBubble)
		} else bbl_turret_inst = instance_create(random_range(10, objPlayer_y), random_range(270, 280), objBubble)
        
        with(bbl_turret_inst)
        {
		angle = 90
        spd = 1 * global.enemy_spd
        damage = 1
		outside_special = true
        }
        
        champion_bullet(bbl_turret_inst)
}