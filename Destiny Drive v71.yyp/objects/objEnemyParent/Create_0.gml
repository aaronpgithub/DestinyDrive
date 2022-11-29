damage_item_test = true

hp = 1
max_hp = 1

shadow_height = 0.56
draw_shadow = true

t = random(360)

alarm[0] = random_range(30, 150)
image_index = round(random(image_number))

pos_x = 0
pos_y = 0

mid_x = 0
mid_y = 0

if sprite_exists(sprite_index) {
	mid_x = x + sprite_get_width(sprite_index)
	mid_y = y + sprite_get_height(sprite_index)
}

spawn = true

stat_change = true //a thing for the item relic disease

flash = false //getting damaged

outside_special = false

robot = false //explosion or blood?

unique_death = false //Does something after death, like junker's wiggle

rotate = false //basically just for natures bane

nat_angle = 0

dest_alrm = -1

death_gib = true //death thing

champ_alarm = 1

freeze = false
freeze_time = room_speed * 4
freeze_done = false
freeze_speed = 0 //old image_speed

champion = random(1)
champion_chance = 0.1
champ = c_white

if ds_map_exists(global.item_map, "shris_treasure") champion_chance += 0.2

c_turq = make_colour_rgb(22, 231, 254)

if !ds_map_exists(global.item_map, "champ_repel") //doesnt let champions spawn
{
    if champion <= champion_chance and object_get_parent(self.object_index) != objBossParent
    {
        if global.shields[0] <= 0
        {
        champ = choose(c_orange, c_yellow, c_turq, c_fuchsia, c_ltgray, c_black)
        }
        else
        {
        champ = choose(c_orange, c_yellow, c_blue, c_turq, c_fuchsia, c_ltgray, c_black)
        }
    }
}

if champ = c_lime
{
champ_alarm = 45
}

enemy_type = -1

enemy_type_checker()

if instance_exists(objBossParent) and object_index != objMiniCaravan and global.challenge = 7
{
dest_alrm = room_speed * 9
}

freeze = false
poisoned = -2

invincible = false

damage_multiplier = 1

