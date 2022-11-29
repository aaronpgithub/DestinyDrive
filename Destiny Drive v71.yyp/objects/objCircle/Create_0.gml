spd = 0
angle = 0
radius = 0

globalvar ID_follow, ty, clen;
ID_follow = id
clen = random_range(10, 20)

for(ty = 0; ty < 8; ty++) {
    var cynst = instance_create(x, y, objCircleBullet)
    
    with(cynst) {
        circ_id = ID_follow
        circ_ang = ty * (360 / 8)
        circ_len = clen
        damage = 40 * (global.dmg + global.alt_dmg)
    }
}

radius = clen

alarm[0] = 360

anomaly_x = 0
anomaly_y = 0