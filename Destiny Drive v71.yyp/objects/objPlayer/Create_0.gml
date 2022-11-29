/// @description stupid variable dump
wpnd = 0

switch(global.player) {
	case sprPlayer:
		weapon = "pistol"
	break;
	case sprPlayerTurf:
		weapon = "pistol"
	break;
	case sprPlayerSpiritOfDespair:
		weapon = "bolt"
	break;
}

instance_create(x, y, objPlayerFollow)

powershield_amount = 1
powershield_timer = 0
powershield_max_time = 4 * room_speed
powershield_time_add = room_speed
powershield_time_add_max = room_speed

t = 0

click_x = xstart
click_y = ystart
rest_x = xstart
rest_y = ystart
rest_jump = false

spirit_max_hp = 1
global.chisel_hp = 0

global.dmg = 1
global.fire_rate = 1
global.accuracy = 1
global.shot_speed = 1
global.luck = 1
fire_rate_chance_mod = 1 //the firerate of your gun changes the chance of items
global.real_luck = global.luck //this is what variables need to use, it adds luck and fire rate mod
global.use_time_multiplier = 1 //pretty self explanitory
global.use_charge_shrink = 0 //how much to shrink the charge of a use item
use_itm_used = 0
use_itm_used2 = 0
spiral_shoot = false
smoked_out = false //criminal

#region weapon variables
charge = 0
charge_max = 1
charge_speed = 0.05
charge_flash = 0
charge_has_flash = false
charge_weapon = false

powerhouse_charge = 1
powerhouse_timer = room_speed * 15

infinite_counter = 3

antsy_charge = 0
antsy_charge_max = 1
antsy_sweat = false

heavy_bolt_time = 0
heavy_bolt_time_max = 20
heavy_bolt_charged = false
heavy_bolt_charge_static = false

gatling = 1

sniper = false
heavy_bolt = false
antsy = false
scope = false
scope_timer = 0
scope_x = 0
scope_y = 0
semi_auto = false
combo = 0 //akimbo
combo_timer = 100 //timer goes down if you dont combo

tempo_timer = 0
tempo_timer_max = 30
tempo_flash = 0
tempo_damage = 100
tempo_wrong = 0
tempo = false

reload = 0 //reload for things like rail gun
semi_auto_fire_cap = 0
ang_offset = 0
angle_add_weapon = 0
#endregion

stat = global.luck
what_is_second = "nothing" //thing for rando obbles!

//alt is for temporary stat ups
global.alt_dmg = 0
global.alt_fir = 0
global.alt_acc = 0
global.alt_sho = 0
global.alt_luc = 0

weapon_initiate()

sprite_index = global.player //choose(sprPlayer, sprPlayerTurf, sprPlayerSpice, sprPlayerAlien, sprPlayerNoodle, sprPlayerCriminal, sprPlayerBoneBoy, sprPlayerDastardlyDevil)
image_speed = 0.2

wave = global.wave
gamepad_move_speed = 4

    player_attr()
    
    y_fall = 0 //cutscene
    x_fall = 0 //cutscene
    yfl_spd = 0
    yfl_frames = 90 //frames until falling
    
//global.use_itm[0] = 49
//global.use_itm[3] = 0
//ds_list_add(global.item_add, 29)
//ds_list_add(global.item_add, 193)

//ds_list_add(global.item_add, 41)
//weapon = "fury"
    
    if sprite_index = sprPlayerSpice
    {
    global.luck = 2
    }
    
    weapon2 = -1
    
global.bullet_amt = 1 //The amount of bullets shot in one bullet
global.bullets_shot = 0
global.bullets_hit = 0
bullet_scale = 1
player_scale = 1

max_hp = global.hp
burst = -1

alarm_2_max = 0 //The max of the 2nd alarm when doing an activated item
alarm_9_max = 0 //The max of the 9th alarm when doing an activated item with another activated item

angle_offset = 0 //A change to a bullet angle, mostly just for spiral gun
flawless = true //if you complete a wave flawlessly
ability_able = true //if you can do the character ability
death_avoid = false //for dyna mike
teleport = false //for devil
soul_count = 0 //devil as well

if object_index != objPlayer2 and objGlobalControl.coop = true instance_create(x, y, objPlayer2)

#region //ADDING THINGS TO THE ITEM LIST ON THE PAUSE MENU
//bone boy
if sprite_index = sprPlayerBoneBoy and object_index != objPlayer2
{
ds_list_add(global.items, ds_list_find_value(global.item_add, 0))
ds_list_add(global.items, ds_list_find_value(global.item_add, 1))

ds_list_delete(global.item_pool, ds_list_find_index(global.item_pool, ds_list_find_value(global.item_add, 0)))
ds_list_delete(global.item_pool, ds_list_find_index(global.item_pool, ds_list_find_value(global.item_add, 1)))
}
//

//adding items for spirit and pip
if sprite_index = sprPlayerSpiritOfDespair or sprite_index = sprPlayer and object_index != objPlayer2
{
ds_list_add(global.items, ds_list_find_value(global.item_add, 0))
ds_list_delete(global.item_pool, ds_list_find_index(global.item_pool, ds_list_find_value(global.item_add, 0)))
}
//

//rando
if sprite_index = sprPlayerRandoObbles and object_index != objPlayer2
{
ds_list_add(global.items, ds_list_find_value(global.item_add, 0))

ds_list_delete(global.item_pool, ds_list_find_index(global.item_pool, ds_list_find_value(global.item_add, 0)))

    if what_is_second = "passive"
    {
    ds_list_add(global.items, ds_list_find_value(global.item_add, 1))
    
    ds_list_delete(global.item_pool, ds_list_find_index(global.item_pool, ds_list_find_value(global.item_add, 1)))
    }
}
//
#endregion

gun_angle = 0
gun_x = 0
gun_y = 0

shoot = true

    use_item_check(0, 1, 2)
    
    if sprite_index = sprPlayerAlien use_item_check(3, 4, 5)

/* */
/*  */
