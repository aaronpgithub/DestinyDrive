/// @description Insert description here
// You can write your code in this editor
if instance_exists(objEyeOfTheStorm) {
	alarm[1] = 6

	if cloud_burst > 0 {
		var followme = instance_create(x, y, objCloudCreatureLightning)
	
		globalvar imthecloud;
		imthecloud = id
	
		with(followme) {
			damage = 1
			angle = 65
			image_angle = angle
			spd = -2
			cloud_to_follow = imthecloud
			outside_special = true
		}
	
		cloud_burst--
	}
}