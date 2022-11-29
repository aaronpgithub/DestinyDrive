event_inherited()

if !instance_exists(objFinalBossBlockingBullet) exit;

        var near = instance_nearest(x, y, objFinalBossBlockingBullet);
        if near.radius = false exit;
        
        if point_distance(near.x, near.y, x, y) <= 40 {
        shrink = true
        } else {
            shrink = false
            if instance_exists(objRadiusWall) {
                if collision_circle(x, y, sprite_width / 2, objRadiusWall, true, true) != noone {
                    shrink = true
                }
            }
        }
    
    if shrink = true {
    image_xscale = 0
    damage = 0
    }
    else {
    image_xscale = 1
    damage = 1
    }
    
    image_yscale = image_xscale

