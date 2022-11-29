sprite_index = noone //removing debug sprite

randomize()
instance_create(0, 0, objMenuHalfFade)
objGlobalControl.coop = false

for(var k = ds_list_size(global.character_trait); k > -1; k--)
{
ds_list_delete(global.character_trait, k)
}

if instance_exists(objFade)
{
////audio_play_sound(sndMenuMusic, 0, true)
}

