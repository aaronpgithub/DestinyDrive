/// @description Insert description here
// You can write your code in this editor

alarm[0] = 4

globalvar randsquidang, blast_circle, blast_at;

randsquidang = random(360)

blast_circle = 360 / blastamt
blast_at = 0

repeat(blastamt) {
	
	var forget = instance_create(x, y, objFadeBullet)
	
	with(forget) {
		damage = 1
		angle = blast_circle * blast_at + randsquidang
		spd = -2.2
		
		sprite_index = sprGhostBullet
		
		image_angle = angle
		
		alarm[0] = -1
	}
	
	blast_at++
	
}

blastamt += 2

if blastamt = 34 instance_destroy()