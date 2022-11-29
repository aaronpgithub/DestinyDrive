/// @description Insert description here
// You can write your code in this editor
if instance_exists(objSpookyScott) {

	if objSpookyScott.attack_choice != 2 instance_destroy()

globalvar ang_or, ang_shot_at, ang_inacc;
ang_or = angle_orientation
ang_shot_at = angle_shoot_at
ang_inacc = angle_inacc

burst -= 1
    
    if burst > 0
    {
    alarm[0] = 3
        var inturret_car_inst = instance_create(x - 7, y - 13, objEnemyBullet)
        
        with(inturret_car_inst)
        {
        angle = ang_shot_at + (ang_inacc * ang_or)
        spd = 2.5 * global.enemy_spd
        damage = 1                   
		
		sprite_index = sprGhostBullet
                
        image_angle = angle
        }
        
		angle_orientation *= -1
		angle_inacc += 3
    } else instance_destroy()

} else instance_destroy()