/// @description Insert description here
// You can write your code in this editor
draw_self()

var lerp_mult = 1

var max_p_col3 = c_gray
draw_sprite_general(sprTokenBarInsideMax, 0, 0, 0, sprite_get_width(sprTokenBarInside) * (clamp(max_percent, 0, 100) / 100), sprite_get_height(sprTokenBarInside), x + 3, y - (sprite_get_height(sprTokenBarInside) / 2), 1, 1, 0, max_p_col3, max_p_col3, max_p_col3, max_p_col3, 1)

var max_p_col2 = make_color_rgb(0, 255, 0)
draw_sprite_general(sprTokenBarInside, 0, 0, 0, sprite_get_width(sprTokenBarInside) * (clamp(bln_percent + percent_tokens, 0, 100) / 100), sprite_get_height(sprTokenBarInside), x + 3, y - (sprite_get_height(sprTokenBarInside) / 2), 1, 1, 0, max_p_col2, max_p_col2, max_p_col2, max_p_col2, 1)

if bln_percent + percent_tokens > 100 {
	var max_p_col = make_color_rgb(255, 255, 0)
draw_sprite_general(sprTokenBarInside, 0, 0, 0, sprite_get_width(sprTokenBarInside) * ((clamp(bln_percent + percent_tokens - 100, 0, 100) / 100)), sprite_get_height(sprTokenBarInside), x + 3, y - (sprite_get_height(sprTokenBarInside) / 2), 1, 1, 0, max_p_col, max_p_col, max_p_col, max_p_col, 1)
}

if y > ylerp + 2 {
	alarm[1] = room_speed * 2
} else {
	if health_generated <= 0 percent_tokens = clamp(floor(100 * (money_lerp / objGameControl.tokens_max)), 0, 100)
	
	draw_text_outline_ext("TOKENS COLLECTED:" + string(floor(money_lerp)) + "/" + string(objGameControl.tokens_max), x, ylerp - (sprite_height / 2) - 9, c_black, c_white)
	
	draw_set_halign(fa_center)
	draw_text_outline_ext(string(percent_tokens + bln_percent) + "%", room_width / 2, y, c_black, c_white)
	draw_set_halign(fa_left)
}

if global.money > 0 {
	if money_lerp < global.money and health_generated <= 0 alarm[2] = room_speed * 2
} else {
	finished = true
}

if alarm[1] <= 0 {
	
	if mouse_check_button(mb_left) lerp_mult = 30
	
	if money_lerp <= global.money and health_generated <= 0 {
		money_lerp += lerp_speed * lerp_mult
		if max_lerp < money_lerp max_lerp = money_lerp
		if max_percent < percent_tokens max_percent = percent_tokens
		
		money_lerp = clamp(money_lerp, 0, global.money)
		max_lerp = clamp(max_lerp, 0, global.money)
	}
	
	#region //health
	if health_generated > 0 and instance_exists(objPlayer) {
		var shield_xoff, xoffst, yoffst;
		hearts_gen = health_generated
		shields_gen = 0
		shield_xoff = 0
		yoffst = 10
		xoffst = sprite_width / 2
		
		if global.hp + hearts_gen > objPlayer.max_hp and objPlayer.max_hp > 0 {
			do {
				hearts_gen--
				shields_gen += 0.5
			} until global.hp + hearts_gen <= objPlayer.max_hp
		}
		
		if hearts_gen > 0 {
			draw_sprite(sprPickup, 0, x + xoffst, y + (sprite_height / 2) + yoffst)
			draw_text_outline_ext(string(hearts_gen), x + 8 + xoffst, y + (sprite_height / 2) + yoffst, c_black, c_white)
		}
		
		if shields_gen > 0 {
			if hearts_gen > 0 shield_xoff = 32
			
			if frac(shields_gen) != 0 draw_sprite_ext(sprPickup, 1, x + shield_xoff + xoffst, y + (sprite_height / 2) + yoffst + 14, 1, 1, 0, c_white, 0.3)
			
			draw_sprite(sprPickup, 1, x + shield_xoff + xoffst, y + (sprite_height / 2) + yoffst)
			
			draw_text_outline_ext(string(shields_gen - frac(shields_gen)), x + 8 + shield_xoff + xoffst, y + (sprite_height / 2) + yoffst, c_black, c_white)
		}
	}
	#endregion
}

