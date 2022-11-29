event_inherited()

hp_set(40)

unique_death = true
death_gib = false

if instance_number(objSwampyBoneBoy) > 1 {
	damage_item_test = false
	instance_destroy()
	
	var newenemy = instance_create(xstart, ystart, choose(objSwampyTurretCar, objBanditTruck, objSwampFrog))
	
	with(newenemy) {
	pos_x = x - 200
	pos_y = ystart
	}
}