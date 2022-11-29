alarm[4] = 90

globalvar posy_y;
posy_y = random_range(road_y_min + 25, road_y_max - 25)
var okle = instance_create(350, posy_y, objKingBorbsFish)

    with(okle)
    {
        pos_y = posy_y
        pos_x = random_range(170, 220)
        hp = 250 * global.enemy_hp
        max_hp = hp
    }

