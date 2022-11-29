function bullet_attr() {
	if !ds_exists(bullet_blacklist, ds_type_list) exit;

	if instance_exists(objPlanetBullet) and check_bullet("planet_bullet") {
		can_connect = true
		image_xscale = 0
		image_yscale = 0
		x = objPlanetBullet.x
		y = objPlanetBullet.y
	}

	if check_bullet("angry_bullet") {
		risk = true
	}

	if check_bullet("ghost_bullet") {
		pierce = true
		image_alpha *= 0.8
	}

	if check_bullet("growth_ray") {
		ds_list_add(bullet_list, "growth_ray")
	}

	if check_bullet("spirit") 
	{
	    if global.hp = objPlayer.max_hp
	    {
	    damage *= 1.1
	    color = c_orange
	    }
	}

	if check_bullet("duplishot") 
	{
	    var dpchn; //your chance to get a dupli bullet
	    dpchn = random(1)

	    if dpchn <= 0.1 * global.real_luck
	    {
	    alarm[6] = random_range(10, 100)
	    }
	}

	if check_bullet("glitch") 
	{
	var glchn; //your chance to get a glitch bullet
	glchn = random(1)

	    if glchn <= 0.20 * global.real_luck
	    {
	    glitch = true
	    }
	}

	if check_bullet("brave_spirit") 
	{
	    if global.hp <= ceil(objPlayer.max_hp * 0.2)
	    {
	    damage *= 1.1
	    color = make_colour_rgb(80, 101, 184)
	    }
	}

	if check_bullet("aimbot") or check_bullet("homing")
	{
	homes = true
	}

	if check_bullet("war")
	{
	color = c_red
	}

	if check_bullet("spice_relic")
	{
	var spchn; //your chance to get explode stuff
	spchn = random(1)

	    if spchn <= 0.20 * global.real_luck
	    {
	    damage += 6
	    color = c_green
	    }
	}

	if check_bullet("wonky_bullets")
	{
	var random_scale = random_range(0.1, 2.3)

	xscale_cap += random_scale - 1

	//BUG MAYBE
	image_xscale = xscale_cap
	image_yscale = image_xscale 
	}

	if check_bullet("dyna_relic")
	{
	var exchn; //your chance to get explode stuff
	exchn = random(1)

	    if exchn <= 0.04 * global.real_luck
	    {
	    explosive = true
	    color = c_black
	    }
	}

	if check_bullet("sapphire_ring")
	{
	var frezcha = random(1)

	    if frezcha <= 0.225 * global.real_luck
	    {
	    freeze = true
	    color = make_colour_hsv(127, 225, 190)
	    }
	}

	if check_bullet("emerald_ring") 
	{
	    shock = true
	    color = make_colour_hsv(60, 245, 230)
	}

	if check_bullet("train_bul")
	{
	image_xscale += 0.3 
	image_yscale += 0.3 
	}

	if check_bullet("skill_bul")
	{
	image_xscale -= 0.5
	image_yscale -= 0.5 
	}

	if ds_map_exists(global.item_map, "rev_warp") and spd > 0
	{
	spd = -(spd)
	}

	if check_bullet("wave_bullet") {
		ds_list_add(bullet_list, "wave_bullet")
		spd2 = spd
	}

	if ds_map_exists(global.item_map, "jet_bullets") {
		jet_speed = spd
		spd = 0
		spd2 = 0
	}

	if check_bullet("silv_bul")
	{
	    if ds_map_exists(global.item_map, "nightinggale_lightning") damage += 500

	    damage += 500
	    color = c_silver
    
	    ds_map_delete(global.item_map, "silv_bul")
	}

	if check_bullet("rubber_bul")
	{
	bounce = true
	}

	if check_bullet("insta_bullets")
	{
	    insta = true
	}

	if check_bullet("tech_bullets")
	{
	    var tchchn; //your chance to get a tech bullet
	    tchchn = random(1)

	    if tchchn <= 0.40 * global.real_luck
	    {
	    ds_list_add(bullet_list, "tech")
	    }
	}

	if check_bullet("robot_bullet") {
		if !instance_exists(objRobotBullet) {
			instance_change(objRobotBullet, false)
			sprite_index = sprRobotBullet
			spd *= 0.1
			height_multiplier = 0
			height = 10
		}
	}

	if check_bullet("planet_bullet") {
		if !instance_exists(objPlanetBullet) {
			var prev_sprite = sprite_index
			instance_change(objPlanetBullet, false)
			sprite_index = prev_sprite
			spd *= 0.25
			height_multiplier = 0
			height = 10
		}
	}

	if ds_map_exists(global.item_map, "virus") {
		if random(1) < 0.2 {
			poison = true
			color = make_color_rgb(50, 125, 50)
		}
	}


}
