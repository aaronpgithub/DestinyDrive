/// @description 
image_speed = 0

if img = 4 //chance to reroll stat downs just a wee bit!
{
var chancee, your_chance;
chancee = 0.1 * global.luck
your_chance = random(1)

    if your_chance <= chancee
    {
    img = irandom(3)
    }
}

