alarm[2] = 45

globalvar circin;

var del = irandom_range(20, 170)

for(circin = 0; circin <= 180; circin++)
{
    if circin >= del or circin <= del - 20
    {
        var circing = instance_create((room_width / 2) + lengthdir_x(300, circin * 2), (room_height / 2) + lengthdir_y(300, circin * 2), objTheGodZoomInBullet)
        
        with(circing)
        {
        image_angle = circin * 2
        damage = 1
        }
    }
}

