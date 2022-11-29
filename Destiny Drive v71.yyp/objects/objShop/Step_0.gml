
if bye = true
{
x -= 2

if instance_exists(objGamblingLights) {
with(objGamblingLights) instance_destroy()
}
    
    if global.level = "wasteland"
    {
    //audio_sound_gain(sndWastelandMusicShop, 0, 1000)
    //audio_sound_gain(sndWastelandMusic, 1, 1000)
    }
    
    if global.level = "swamp"
    {
    //audio_sound_gain(sndSwampShopMusic, 0, 1000)
    //audio_sound_gain(sndSwampMusic, 1, 1000)
    }
    
    if global.level = "forest"
    {
    //audio_sound_gain(sndForestMusicShop, 0, 1000)
        if global.wave < objGameControl.storm
        {
        //audio_sound_gain(sndForestMusic, 1, 1000)
        }
        else
        {
        //audio_sound_gain(sndForestMusicFire, 1, 1000)
        }
    }
}

