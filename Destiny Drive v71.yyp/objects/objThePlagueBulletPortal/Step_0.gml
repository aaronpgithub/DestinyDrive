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

x -= 1

y = lerp(y, plague_ypos, 0.05)

if x <= -10 instance_destroy()