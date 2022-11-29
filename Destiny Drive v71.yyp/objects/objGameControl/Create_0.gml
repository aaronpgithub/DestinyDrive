/// @description Setting maps and items and weapons

sprite_index = noone //removing debug sprite

global.item_add = ds_list_create()
/*Item add list checks if it has any data values in it
    if it does, it goes through a switch statement to see what number it is
    the number is an ID of an item, and it activates that items effect
    deletes the data in the list
*/

//for weapon tree
global.mouse_pos_x = mouse_x
global.mouse_pos_y = mouse_y
mouse_offset_x = 0
mouse_offset_y = 0
pre_m_off_x = 0
pre_m_off_y = 0
true_mouse_x = 0
true_mouse_y = 0

//tokens
tokens_max = 0

//the data in this list shows what items you have and puts it in the Items box in the pause menu
global.items = ds_list_create()

//The shop gives you a random item from this weapon pool
global.weapon_pool = ds_list_create()

//see item_add
global.scroll_add = ds_list_create()

item_map_create()
use_item()
shield()
scroll_map()

weapon_tree_init()
weapon_tree_create() //for creating the actual circles

/* */
global.surface_shadow = surface_create(room_width, room_height)

level_complete_type = ""
for(var selw = 0; selw <= 8; selw++) {
	weapon_selected[selw] = 0 //id of the circle
}
current_weapon = 0 //current array index

alarm[5] = 5 //alarm 5 is used for the wave events
boss_fought = false //boss_fought tells if the boss is fought

temple_list = ds_list_create()
ds_list_add(temple_list, "psychic", "sacrifice", "ruin")
ds_list_shuffle(temple_list)

//NAAAAAAAAAAAAAAMEMMME NAME
global.level = "wasteland"
global.current_level = "wasteland"
global.temple_level = ds_list_find_value(temple_list, 0)
		ds_list_delete(temple_list, 0)
global.level_number = 0 //based on zero
level_transition()
level_names()
////////////////////////////////////

global.wave = -1
global.wave_multiplier = 1
global.wave_max = 9
mini_wave = -5

var tyu = 0
repeat(100) {
wave_array[tyu, 0] = 0
wave_array[tyu, 1] = 0
wave_array[tyu, 2] = 0
tyu++
}
level_wave_creation()

global.money = 0

global.enemy_hp = 1 //the amount of hp an enemy has, based on multiplier
global.items_got = 0 //amount of items given at the end
global.no_more_items = false //stops more items from spawning

tele_id = 0 //teleport id test
trns = true //transition from level to level

charge_item = 0 //charge bar lerp for drawing the charge bar

alarm[0] = room_speed //adding one second

vip_shop = -5 
second_shop = false //tests if it should have the same items
next_level = "wasteland" //special level, what should come after

quick_trans = false

hellgoto = false

pickup_parameter = 0.70 //chance for pickups

beast_wave = -3 //choose(-3, -3, -3, -3, irandom_range(2, 4)) //the mini shop wave

    if !ds_map_exists(global.item_map, "magma_rock") //make sure people get a lava wave with magma rock
    {
    lava_wave = irandom_range(-7, 7) //if lava is possible
    }
    else
    {
    lava_wave = irandom_range(3, 7) //if lava is possible
    }

bridge_pos = 150 //where the bridge starts
brid_t = 0 //the bridge sine

itm = 0

global.wave_max = round(global.wave_max * global.wave_multiplier)

global.item_pool = ds_list_create()

for(var i = sprite_get_number(sprItem) - 1; i > -1; i--)
{
ds_list_add(global.item_pool, i)
ds_list_shuffle(global.item_pool)
}

health_leak = 20

global.shop_wave_add = false //for adding a wave after the shop wave

local_seconds = 0
local_minutes = 0
local_seconds_str = ""
local_minutes_str = ""

forest_enemy = choose(objBlindEye, objPsychicSpitter, objFollower)

//audio_stop_all()
//audio_sound_gain(sndWastelandMusicShop, 0, 0)
//audio_sound_gain(sndWastelandMusic, 1, 0)
////audio_play_sound(sndWastelandMusic, 0, true)
////audio_play_sound(sndWastelandMusicShop, 0, true)

global.shop_string = "BUY SOMETHING, WILL YA?"

if global.artifact[4, 0] = 0
{
global.enemy_spd = 1 //enemy bullet speed multiplier
}
else
{
global.enemy_spd = 1.20
}

global.item_maps = 0 //how many enemies you've killed
global.flawless_waves = 0
do_junk = false
junk_waves = round(random_range(-2, 5)) //If there is some junk waves, used for flies, wisps, etc.

boat_wave = irandom_range(4, 9) //when does the boat come in on the swamp level?
storm = 4 //when does the storm come in?

if beast_wave = mini_wave {
beast_wave = -10
}

instance_create_depth(x, y, 100, objBackgroundControl)

instance_create(50, 180, objPlayer)

//vip customer thing
//x = button (0, 1, 2, 3)
//y0 = buy_type
//y1 = buy_id
//y2 = for item and use item
//y3 = if it has been bought yet

global.butt_arr[0, 0] = 0
global.butt_arr[0, 1] = 0
global.butt_arr[0, 2] = objItem
global.butt_arr[0, 3] = 0

global.butt_arr[1, 0] = 0
global.butt_arr[1, 1] = 0
global.butt_arr[1, 2] = objItem
global.butt_arr[1, 3] = 0

global.butt_arr[2, 0] = 0
global.butt_arr[2, 1] = 0
global.butt_arr[2, 2] = objItem
global.butt_arr[2, 3] = 0

global.butt_arr[3, 0] = 0
global.butt_arr[3, 1] = 0
global.butt_arr[3, 2] = objItem
global.butt_arr[4, 3] = 0

/* */
//Create particle system 
global.part_sys = part_system_create()

emit_1 = part_emitter_create(global.part_sys)

global.part_1 = part_type_create()

part_type_sprite(global.part_1, sprDust, false, false, false)
part_type_scale(global.part_1, 0.2, 0.2)
part_type_size(global.part_1, 0.3, 1, 0.5, 0)
part_type_speed(global.part_1, 3, 8, 0, 0);
part_type_gravity(global.part_1, 0.05, 90)
part_type_direction(global.part_1, 170, 180, 0, 0);
part_type_orientation(global.part_1, 0, 359, -0.5, 0, 0);
part_type_life(global.part_1, 20, 25);
part_type_alpha1(global.part_1, 0.1)



/* */
///draw coordinates

// player healthbar
hbar_back_x = 0
hbar_back_y = 240
hbar_x = 1
hbar_y = 241
hbar_text_x = 6
hbar_text_y = 243

//wave bar
wave_back_x = 120
wave_back_y = 244
wave_x = 120
wave_y = 244
wave_f_x = 119
wave_f_y = 243

/* */
/*  */

show_item_pool = false