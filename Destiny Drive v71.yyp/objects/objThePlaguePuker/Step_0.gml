/// @description Insert description here
// You can write your code in this editor
var xmount = random_range(-6, -3), ymount = random_range(-1, 3);

if image_angle < 0 {
	xmount = random_range(-10, -7)
} else ymount = random_range(-4, -1)

var pukey = instance_create(x + xmount, y + ymount, objEnemyBullet)
globalvar mypukean, myimpu;
mypukean = image_angle
myimpu = image_index

with(pukey) {
	damage = 1
	angle = mypukean * 1.2
	spd = 4
	sprite_index = sprThePlaguePukeBullet
	image_index = myimpu
}

x -= 4

if x < -10 instance_destroy()