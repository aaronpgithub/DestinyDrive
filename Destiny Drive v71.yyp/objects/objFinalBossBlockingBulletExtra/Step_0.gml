event_inherited()

if instance_exists(objTheFinalBoss)
{
    if instance_exists(ID) {
            x = ID.x + lengthdir_x(length, angle + ID.angle_start)
            y = ID.y + lengthdir_y(length, angle + ID.angle_start)
            
        if ID.alarm[8] <= 0
        {
            if objTheFinalBoss.attack_choice != 1 {
                if image_xscale > 0 image_xscale -= 0.1
                image_yscale = image_xscale
                damage = 0
                
                if image_xscale <= 0 instance_destroy()
                image_angle += 5
            }
        }
    }
    else instance_destroy()
}

