draw_self()

if weapon = "rotate" {
    draw_line_colour(x, y, x + lengthdir_x(20, ang_offset), y + lengthdir_y(20, ang_offset), c_black, c_black)
}

if tempo = true {
draw_set_alpha(0.4)
draw_rectangle_colour(x - 8, (y + 8) - (16 * (tempo_timer / tempo_timer_max)), x + 8, y + 8, c_black, c_black, c_black, c_black, 0)
draw_set_alpha(1)
}


if charge_weapon = true draw_charge(x, y, charge, charge_max, c_gray, 10, 1, 1)

//showing that you have to rechamber weapon
if heavy_bolt = true and heavy_bolt_time >= -1 and heavy_bolt_time < 20 {
    var xoff, yoff;
    xoff = -6
    yoff = 10
    draw_sprite(sprChargeBack, 0, x + xoff, y + yoff)
    draw_sprite_general(sprCharge, 0, 0, 0, sprite_get_width(sprCharge) * (clamp(heavy_bolt_time, 0, 20) / heavy_bolt_time_max), sprite_get_height(sprCharge), x + xoff, y + yoff, 1, 1, 0, c_white, c_white, c_white, c_white, 1)
}

//draw_text(x + 10, y, string(semi_auto))
//draw_text(10, 10, string(global.use_itm[0]) + ", " + string(global.use_itm[1]) + ", " + string(global.use_itm[2]))
//draw_text(10, 30, string(global.use_itm[3]) + ", " + string(global.use_itm[4]) + ", " + string(global.use_itm[5]))

if alarm[10] > 0 and smoked_out = true
{
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_gray, objPlayer.alarm[10] / (room_speed * 3) )
}

//draw_text(x + 15, y, string(global.level) + ", " + string(objGameControl.next_level))

//draw_text(10, 10, string(global.fire_rate) + ", " + string(alarm[0]) + ", " + string(shoot))
//draw_text(10, 10, string(global.real_luck))

if sniper = true
{
    var snipe_color = c_red;
        if scope = true and scope_timer >= 30 snipe_color = choose(c_orange, c_black, c_yellow)
    for(var goglene = x; goglene < room_width; goglene += 16)
    {
        var coll = collision_line(x, y, goglene, y, objEnemyParent, false, false)
    
        if coll != noone
        {
        draw_line_colour(x, y, coll.x - sprite_get_width(coll.sprite_index), y, snipe_color, snipe_color)
        draw_circle_colour(coll.x - sprite_get_width(coll.sprite_index), y, 2, snipe_color, snipe_color, false)
                break;
        }
        else
        {
        if goglene >= room_width - 16 draw_line_colour(x, y, 320, y, snipe_color, snipe_color)
        }
    }
}

if weapon = 38 and reload < 15
{
    draw_sprite(sprChargeBack, 0, x - (sprite_get_width(sprChargeBack) / 2), y - 14)
    draw_sprite_general(sprCharge, 0, 0, 0, reload * (sprite_get_width(sprCharge) / 15), 8, x - (sprite_get_width(sprChargeBack) / 2), y - 14, 1, 1, 0, c_white, c_white, c_white, c_white, 1)
}

if ds_map_exists(global.item_map, "rage_pot")
{
    repeat(ds_map_find_value(global.item_map, "rage_pot") * 10)
    {
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_red, 0.2)
	}
}

if ds_map_exists(global.item_map, "clover_shield") {
	if ds_map_find_value(global.item_map, "clover_shield") > 0 {
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_lime, (ds_map_find_value(global.item_map, "clover_shield") / 180) * 0.8)
		
		ds_map_replace(global.item_map, "clover_shield", ds_map_find_value(global.item_map, "clover_shield") - 1)
	}
	
	if ds_map_find_value(global.item_map, "clover_shield") = 1 global.alt_luc -= 5
}

//draw_text(x, y, string(ds_map_find_value(global.item_map, "gunpowder")))

if global.hp > 0
{
    if global.shields[0] > 0 
		draw_sprite(sprShield, 0, x, y)
	
	if powershield_timer > 0 {
		var powershield_color = c_white;
		if ds_map_exists(global.item_map, "blood_gemstone") powershield_color = c_red;
		
	if !ds_map_exists(global.item_map, "baby_gemstone") 
		draw_sprite_ext(sprPowerShield, powershield_timer / 2, x, y, image_xscale, image_yscale, 0, powershield_color, 1)
	
	var powsh_x = x - (sprite_get_width(sprPowershieldTimerOutside) / 2) + 1, powsh_y = y - 14,;
	draw_sprite(sprPowershieldTimerOutside, 0, powsh_x, powsh_y)
	draw_sprite_ext(sprPowershieldTimerInside, 0, powsh_x, powsh_y, powershield_timer / powershield_max_time, 1, 0, c_white, 1)
	}
}

if global.character != 3 and instance_exists(objGameControl) and instance_exists(objWeaponCircle)
{
    if gun_x < 0
    {
    gun_x += 0.1
    }
	var sprite_to_use = sprHeldGunPip
	
	if global.player != sprPlayerSpiritOfDespair {
		draw_sprite_ext(sprite_to_use, objGameControl.weapon_selected[objGameControl.current_weapon].weapon_index, x + gun_x, y + gun_y, 1, 1, 0 - (gun_x * 2), c_white, 1)
	}
}

if alarm[4] > 0
{
draw_text(3 + random_range(-1, 1), 224 + random_range(-1, 1), string_hash_to_newline("RELOADING!"))
draw_sprite(sprWaveBack, 0, 3, 236)
draw_sprite_general(sprWaveBar, 0, 0, 0, alarm[4] * (100 / 240), 8, 3, 234, 1, 1, 0, c_red, c_red, c_orange, c_orange, 1)
}

//invincibility
var change_alpha;

change_alpha = true

for(var i = string_length(string(alarm[5] / 2)); i > -1; i--)
{
    if string_char_at( string(alarm[5] / 2), i) = "."
    {
    change_alpha = false
    }
}

    if change_alpha = true
    {
        if image_alpha = 1
        {
        image_alpha = 0
        exit;
        }
        else
        {
        image_alpha = 1
        }
    }
    
    if alarm[5] <= 0
    {
    image_alpha = 1
    }
    
//

if charge_flash > 0 and charge_weapon = true {
    shader_set(flash_shader_universal)
    draw_self()
    shader_reset()
charge_flash--
}

if tempo = true {
    if tempo_wrong > 0 {
        shader_set(flash_shader_tempo_wrong)
        draw_self()
        shader_reset()
    tempo_wrong--
    }
    
    if tempo_flash > 0 {
        shader_set(flash_shader_universal)
        draw_self()
        shader_reset()
    tempo_flash--
    }
}

if ds_map_exists(global.item_map, "cursed_armor") {
	if ds_map_find_value(global.item_map, "cursed_armor") < 240 {
		draw_set_alpha( 1 - ds_map_find_value(global.item_map, "cursed_armor") / 240 )
		draw_sprite(sprShieldCounter, 0, x, y)
		draw_set_alpha(1)
	}
}