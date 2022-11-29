event_inherited()

var chance = random(1);

hp = round(80 * global.enemy_hp)
max_hp = hp

image_speed = 0.2

burst_time = random_range(140, 350)
burst = round(random_range(4, 10))

alarm[0] = random_range(20, 30)

instance_change(choose(objBanditTruck, objBuzzBuzz, objBuzzBuzz, objBuzzBuzz), true)

if chance < 0.1
{
instance_change(objThreateningBuzzy, true)
}




