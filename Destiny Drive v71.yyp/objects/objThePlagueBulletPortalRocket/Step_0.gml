/// @description Insert description here
// You can write your code in this editor
#region circle stuff
circle_timer--

if circle_timer < 0 {
	circle_timer = 7
	
	var mult = 1
	
	if circle_num % 2 = 0 {
		mult = -1
	}
	
	ds_list_add(plague_circles, 0.01 * mult)
	
	circle_num++
}
#endregion

if image_alpha < 1 image_alpha -= 0.1
if image_alpha <= 0 instance_destroy()

if instance_exists(objThePlague) {
	if objThePlague.attack_choice != 4 and image_alpha >= 1 image_alpha = 0.9
}

if x <= -10 instance_destroy()