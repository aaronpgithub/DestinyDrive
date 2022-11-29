instant_bullets()

if ds_exists(bullet_list, ds_type_list) {
	if ds_list_find_index(bullet_list, "growth_ray") != -1
	{
	if image_xscale < xscale_cap image_xscale += 0.025
	image_yscale = image_xscale
	}
}

if instance_exists(objPlanetBullet) and check_bullet("planet_bullet") {
	if object_index != objPlanetBullet {
		image_xscale = lerp(image_xscale, xscale_cap, 0.5)
		image_yscale = image_xscale
	}
}

if ds_map_exists(global.item_map, "hungry_bullets") {
	var eaten_bullet = instance_place(x, y, objEnemyBulletParent)
	if instance_exists(eaten_bullet) {
		with(eaten_bullet) instance_destroy()
		
		xscale_cap += 0.1
		image_xscale = xscale_cap
		image_yscale = xscale_cap
		damage *= 1.1
	}
}

if ds_map_exists(global.item_map, "brick") {
	if height > 180 { instance_destroy(); exit; }
}

if spawn_bullet = true
{
bullet_attr()

spawn_bullet = false
}

	if ds_map_exists(global.item_map, "jet_bullets")
	{
		spd += ds_map_find_value(global.item_map, "jet_bullets") * sign(jet_speed)
		spd = clamp(abs(spd), 0, abs(jet_speed)) * sign(jet_speed);
		motion_set(angle, spd)
	}

if ds_list_find_index(bullet_list, "wave_bullet") != -1 {
	t += 15
	spd = spd2 * sin(degtorad(t)) + (spd2 / 2)
	if ds_map_exists(global.item_map, "jet_bullets") {
		spd2 += ds_map_find_value(global.item_map, "jet_bullets") * sign(jet_speed)
		spd2 = clamp(abs(spd2), 0, abs(jet_speed)) * sign(jet_speed);
	}
}

if glitch = true
	if random(1) < 0.05 y = random_range(70, 240)

if shock = true
{
    if instance_exists(objEnemyParent)
    {
        var shockspr = instance_nearest(x, y, objEnemyParent)
        
        if shockspr.image_alpha > 0 and shockspr.invincible = false
        {
            if point_distance(x, y, shockspr.x - (shockspr.sprite_width / 2), shockspr.y - (shockspr.sprite_height / 2)) <= 45
            {
            shockx = shockspr.x - (shockspr.sprite_width / 2)
            shocky = shockspr.y - (shockspr.sprite_height / 2)
            
                with(instance_nearest(x, y, objEnemyParent))
                {
                flash = true
                hp -= 0.05 * global.dmg
                }
            }
        }
    }
}

if wrap <= 0 and object_index != objBoomerang and object_index != objSnakeBullet
{
    if x < -35 or x > 345
    {
    instance_destroy()
    }
    else
    {
        if y > 270 or y < -25
        {
        instance_destroy()
        }
    }
}

if poison_smoke = true
{
instance_create(x, y, objThickSmoke)
}
	
    if x = xprevious
    {
        if !ds_map_exists(global.item_map, "whirl")
        {
        image_angle = angle
        }
        
    motion_set(angle, spd)
    }
    
    if homes = true
    {
    homing()
    }

if ds_map_exists(global.item_map, "whirl") and sprite_index != sprLaser
{
image_angle += 8
}

var bouncemin = road_y_min;
if instance_exists(objThePlague) {
	if objThePlague.transition_amount >= 1 bouncemin = 0
}

if bounce = true and bounce_amount > 0
{
    if y < bouncemin
    {
	y = bouncemin + 1
    angle = -angle
    image_angle = angle
    motion_set(angle, spd)
    bounce_amount -= 1
    }
    
    if y > road_y_max
    {
	y = road_y_max - 1
    angle = -angle
    image_angle = angle
    motion_set(angle, spd)
    bounce_amount -= 1
    }
}

if bullet_count = true and bullet_shoot_add = 1
{
global.bullets_shot += bullet_shoot_add
bullet_shoot_add -= 1
}

if no_flash = false
{
instance_create(objPlayer_x, objPlayer_y + 4, objGunFlash)
instance_create(objPlayer_x, objPlayer_y - 2, objBulletShell)
no_flash = true
}

