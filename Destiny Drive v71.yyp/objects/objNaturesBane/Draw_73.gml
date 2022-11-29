if flash = true
{
    with(objMuttBossOpen)
    {
    d3d_set_fog(true, c_white, 0, 0)
    draw_self();
    d3d_set_fog(false, c_black, 0, 0)
    }
    
    with(objMuttBossTurret)
    {
    d3d_set_fog(true, c_white, 0, 0)
    draw_self();
    d3d_set_fog(false, c_black, 0, 0)
    }
    
    with(objMuttBossWheel)
    {
    d3d_set_fog(true, c_white, 0, 0)
    draw_self();
    d3d_set_fog(false, c_black, 0, 0)
    }
    
    event_inherited()
}

