image_speed = 0.3
instance_create(x, y, objAshFromExpl)
spd = 9

flash_alpha = 0.4

//audio_sound_pitch(sndExplosion, random_range(0.7, 1))
////audio_play_sound(sndExplosion, 0, false)

repeat(5) instance_create(x, y, objRocks)
repeat(9) instance_create(x + random_range(-4, 4), y, objSmoke)

