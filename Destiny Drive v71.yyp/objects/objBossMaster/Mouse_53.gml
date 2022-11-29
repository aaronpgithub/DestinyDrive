if x <= 260
{
    if global.money >= price and global.hp > health_price
    {
        if saying != "Thanks, and good luck, guy!"
        {
        saying = "Thanks, and good luck, guy!"
        text_amount = 0
        alarm[0] = room_speed * 3
        
        global.money -= price
        player_take_damage(health_price)
        }
    }
    else
    {
        if saying != "Thanks, and good luck, guy!" and saying != "Hey pal... don't try to cheap me out. If you can't pay the price, beat it."
        {
        saying = "Hey pal... don't try to cheap me out. If you can't pay the price, beat it."
        text_amount = 0
        sprite_index = sprBossMasterAngry
        }
    }
}

