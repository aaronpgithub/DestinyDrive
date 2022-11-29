event_inherited()

hp_set(30)

unique_death = true
death_gib = false

if global.wave >= objGameControl.storm and global.level = "forest" and objGameControl.storm > 0
{
instance_change(choose(objJunker, objFireJunker), true)
}

