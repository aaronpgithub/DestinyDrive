if global.hp > 0
{
    globalvar spi;
    
    for(spi = 1; spi > -1; spi--)
    {
    var spir_inst = instance_create(x - (sprite_get_width(sprite_index) / 2), y - (sprite_get_width(sprite_index) / 2), objSpiralFlak)
    
        with(spir_inst)
        {
        ID = spi
        }
    }
}

