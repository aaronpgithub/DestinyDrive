event_inherited()

//audio_sound_pitch(sndExplosion, random_range(0.7, 1))
////audio_play_sound(sndExplosion, 0, false)

flash_alpha = 0.4

bullet_count = false
damaged = false
damage = 60
dont_dest = true
wave_expl_yes = false
wave_expl = 0 //Gunpowder Blood
does_pierce = true
pierce_constant = true
image_speed = 0.3
sprite_index = sprExplosion
instance_create(x, y, objAshFromExpl)
no_flash = true

alarm[8] = 2

repeat(5)
{
instance_create(x, y, objRocks)
}

repeat(8)
{
instance_create(x + random_range(-4, 4), y, objSmoke)
}

