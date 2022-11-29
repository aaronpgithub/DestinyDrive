event_inherited()
true_x = x //where the bullet follows if it is a special block_type
true_y = y
twave = 0
t_spd = 0
amp = 0
block_type = choose("normal", "sine", "saw", "square")
movement = "up" //up, down, still (for saw and square)
still_timer = 0 //for square
radius = false
angle_add = 0
angle_start = 0
outside_special = true
extra = objTheFinalBoss.bullet_block_extra

ID = 0
if instance_exists(objTheFinalBoss) ID = objTheFinalBoss.block_id

created_radius_line = false

spiral = false
spiral_alarm = 10
spiral_warning = true

spd_add = 5

radius_alpha = 0

    globalvar abyb;
    abyb = angle
    var boommm = instance_create(x, y, objLightBlast)
    
    with(boommm)
    {
        angle = -(abyb)
    }
    
    if block_type != "normal" and abs(angle) >= 2 and amp > 4
    {
    angle = random_range(-2, 2)
    }
    
    if radius = true sprite_index = sprEnemyBullet
    
    

///extra stuff
if instance_exists(objTheFinalBoss)
{
    if objTheFinalBoss.bullet_block_type = 2
    {
        extra_walls = choose(1, 1, 1, 2, 2, 2, 3);
        extra_angle_dest = irandom(320);
        first = false
        
        if first = true extra_wall_dest = 90
        
        globalvar IDbul;
        IDbul = id;
        
        found_inst = false
        
        if extra = "wall"
        {
        extwal_arr[0] = 1
        extwal_arr[1] = 1
        extwal_arr[2] = 1
        extwal_arr[3] = 1
        
            repeat(extra_walls) {
                var deleted = false;
                
                do {
                var randnum = irandom(3);
                    if extwal_arr[randnum] = 1
                    {
                    extwal_arr[randnum] = 0
                    deleted = true
                    }
                } until (deleted = true)
            }
            
                for(var wallamt = 0; wallamt < 3; wallamt++)
                {
                    if extwal_arr[wallamt] = 1
                    {
                        for(var wall_len = 0; wall_len < 8; wall_len++)
                        {
                        var wallext = instance_create(x, y, objFinalBossBlockingBulletExtra)
                        
                        globalvar wallam, wallle;
                        wallam = wallamt
                        wallle = wall_len * 4
                
                            with(wallext)
                            {
                            length = wallle
                            angle = wallamt * 90
                            damage = 1
                            spd = 0
                            ID = IDbul
                            no_move_destroy = false
                            outside_special = true
                            }
                        }
                    }
                }
        }
        
        
        
        if extra = "circle"
        {
            globalvar circle_ang;
            circle_ang = 0;
            repeat(30)
            {
                circle_ang += 12
                if circle_ang < extra_angle_dest - 40 or circle_ang > extra_angle_dest + 40
                {
                    var wallext = instance_create(x, y, objFinalBossBlockingBulletExtra)
                
                            with(wallext)
                            {
                            length = 32
                            angle = circle_ang
                            damage = 1
                            spd = 0
                            ID = IDbul
                            no_move_destroy = false
                            outside_special = true
                            }
                }
            }
        }
    }
}

