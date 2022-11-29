event_inherited()

hp_set(40)

image_speed = 0.2

burst_time = random_range(140, 350)
burst = irandom_range(7, 13)

alarm[0] = random_range(20, 30)

willow = random(100)

if willow <= 0.1
{
sprite_index = sprLizzieBandit

image_xscale = 0.07
image_yscale = 0.07
}

if global.wave >= objGameControl.storm and global.level = "forest" and objGameControl.storm > 0
{
instance_change(choose(objBanditTruck, objBuzzyBastardFire), true)
}

