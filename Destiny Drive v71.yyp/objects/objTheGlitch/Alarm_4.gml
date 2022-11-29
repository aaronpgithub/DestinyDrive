/// @description zig
alarm[4] = 1

if zig_zag_pos < -40 zig_zag_add = true
if zig_zag_pos > 40 zig_zag_add = false

if zig_zag_add = true zig_zag_pos += 10
if zig_zag_add = false zig_zag_pos -= 10

var go1 = instance_create(room_width, road_y_min + 40 + zig_zag_pos, objEnemyBullet)
    
    with(go1)
    {
    damage = 1
    spd = -3 * global.enemy_spd
    angle = 0
    }
    
var go2 = instance_create(0, road_y_min + 130 - zig_zag_pos, objTheGlitchZigBullet)
    
    with(go2)
    {
    damage = 1
    spd = 3 * global.enemy_spd
    angle = 0
    }

