/// @description Insert description here
// You can write your code in this editor
alarm[2] = 30

percent_tokens += bln_percent
max_percent += bln_percent
bln_percent = 0

if mouse_check_button(mb_left) alarm[2] = 2

if !instance_exists(objGameControl) exit;

if percent_tokens >= 10 {
	health_generated += 1
	percent_tokens -= 10
	money_lerp -= objGameControl.tokens_max * 0.1
	
	if money_lerp < 0 money_lerp = 0
} else {
	finished = true
}