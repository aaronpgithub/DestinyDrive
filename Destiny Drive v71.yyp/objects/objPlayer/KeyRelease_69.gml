/// @description Active ability
for(var k = ds_list_size(global.character_trait); k > -1; k--)
{
    //Dastardly Devil
    if ds_list_find_value(global.character_trait, k) = "shadow manipulator" and teleport = true
    {
    x = objShadowManip.x
    y = objShadowManip.y
    
        with(objShadowManip)
        {
        instance_destroy()
        }
        
    teleport = false
    ability_able = false
    alarm[7] = room_speed * 4
    }
}

