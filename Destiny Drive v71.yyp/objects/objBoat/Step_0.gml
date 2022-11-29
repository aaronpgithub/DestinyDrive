if x < 5 * global.wave
{
x += 0.2
}

if global.wave > objGameControl.boat_wave + 7 or x < 20 or global.level != "swamp" or global.hp <= 0
{
x += 2
}



