event_inherited()
if damage_item_test = true {

    var dodod = instance_create(x, y, objSwampyBoneBoyCorpse)
    
        with(dodod)
        {
        spd = 7
        }
    
    repeat(irandom_range(4, 5))
    {
    instance_create(x, y, objSmoke)
    }

}
