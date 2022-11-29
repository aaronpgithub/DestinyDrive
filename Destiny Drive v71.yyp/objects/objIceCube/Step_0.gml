event_inherited()

var blast = false;

if move = true
{
x = pos_x
y = pos_y

pos_x += px_move * px_dir
pos_y += py_move * py_dir

    if pos_x - (sprite_width / 2) < 0 or pos_x - (sprite_width / 2) > room_width
    {
        pos_x -= (px_move + (1 * sign(px_move))) * (px_dir)
        px_dir = -(px_dir)
        blast = true
    }
    
    if pos_y - (sprite_height / 2) < road_y_min or pos_y - (sprite_height / 2) > road_y_max
    {
        pos_y -= (py_move + (1 * sign(py_move))) * (py_dir)
        py_dir = -(py_dir)
        blast = true
    }
}

if blast = true
{
    globalvar bftp, randangiel;
    randangiel = random(360)
    for(bftp = 0; bftp < 16; bftp++)
    {
        var vaor = instance_create(x - (sprite_width / 2), y - (sprite_height / 2), objEnemyBullet)
        
            with(vaor)
            {
                damage = 1
                spd = 1 * global.enemy_spd
                angle = (bftp * 22.5) + randangiel
                image_angle = angle
            }
        champion_bullet(vaor)
    }
}

