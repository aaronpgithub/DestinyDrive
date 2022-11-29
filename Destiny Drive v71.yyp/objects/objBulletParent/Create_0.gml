damage = 0 //bullet damage
angle = 0 //bullet accuracy
spd = 0 //bullet speed

bullet_path = path_add()

anomaly_x = 0
anomaly_y = 0
anomaly_x_prev = 0
anomaly_y_prev = 0

if ds_map_exists(global.item_map, "anti_anomaly") {
	y = road_y_mid - (objPlayer_y - road_y_mid)
}

bullet_list = ds_list_create()
bullet_blacklist = ds_list_create()

t = 0 //wave

spd2 = 0
jet_speed = 0

can_connect = false
len = 0

infinite = false

pierce_constant = false //constant pierce, like laser
pierce_enemy = -100 //enemy id
pierce = false

amp = random_range(2, 30) //wave amplitude
alarm[0] = random_range(10, 20) //shotgun range

slow = false //start slowing down the shotgun shot
shotgun = false
flak_bullet = false

height = 0
height_multiplier = 1

color = c_white //for changing color of the bullet
dont_dest = false //if you can destroy the bullet when it hits an enemy
golden = false //gold shot or not
explosive = false
spawn_bullet = true

risk = false
bullet_hit_enemy = false

spirit_id = 0

image_xscale = 0
image_yscale = 0

sprite_index = sprBullet

is_player_bullet = false
bullet_count = true //if you count the bullet or not
bullet_shoot_add = 1
no_flash = false //if the bullet creates a flash
bounce = false //bounce stuff
poison_smoke = false //for cigar
homes = false //if the bullet homes in on stuff
bounce_amount = 5
freeze = false

//shock item array
shock = false
shockx = 0
shocky = 0

glitch = false

hue = irandom(255) //color between 0 - 255
len = 0

parent_object = instance_find(objPlayer, 0)
if instance_nearest(x, y, objPlayer).object_index = objPlayer2
{
parent_object = instance_find(objPlayer2, 0)
}

if instance_exists(objEnemyParent)
{
nearest_x = instance_nearest(x, y, objEnemyParent).x
nearest_y = instance_nearest(x, y, objEnemyParent).y
}

if instance_exists(objBulletPortal) and object_index != objFriendlyJunkerCorpse and object_index != objViolentExplosion
{
x = objBulletPortal.x
y = objBulletPortal.y
}

if object_index != objSlingshot and object_index != objArrow
{
image_xscale = 1
image_yscale = 1
}


if ds_map_exists(global.item_map, "wrap") or ds_map_exists(global.item_map, "rev_warp")
	wrap = 1 //How many wraps 
else
	wrap = 0 //How many wraps 

if ds_map_exists(global.item_map, "cigar")
{
    if ds_map_find_value(global.item_map, "cigar") = 1
    {
    poison_smoke = true
    ds_map_replace(global.item_map, "cigar", 0)
    }
}

xscale_cap = 1 //the cap, used for growth ray

if instance_exists(objPlayer) xscale_cap = objPlayer.bullet_scale

///special item vars
is_parent = true

insta = false
i_wrap_done = false
charge_insta_x = 0
charge_insta_y = 0
first_i_bounce = true //this is bad code, bad
insta_spawn_outside = false
life_steal = false
poison = false
    
    if x > 320 insta_spawn_outside = true
    
    comicletter = irandom_range(65, 90)