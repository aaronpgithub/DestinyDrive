if radius = true
{
angle_start += angle_add

        if instance_exists(objTheFinalBoss) {
            if objTheFinalBoss.attack_choice = 1 {
                if radius_alpha < 1 radius_alpha += 0.1
            }
            else if alarm[8] <= 0 {
            if radius_alpha > 0 radius_alpha -= 0.05
            }
        }

    if extra != "circle" draw_sprite_ext(sprBlockingRadius, 0, x, y, 1, 1, image_angle + angle_start, c_white, radius_alpha)
    
    sprite_index = sprEnemyBulletMedium
    damage = 0
    image_alpha = 0
}

draw_self()

//warning
if spiral_warning = true and spiral = true {

    spiral_alarm -= 1
    
    if spiral_alarm < -10 spiral_alarm = 10
    if instance_exists(objTheFinalBoss) {
        for(var alrt = 1; alrt < 5; alrt++) {
            if spiral_alarm > 0 draw_sprite(sprWarning, 0, x + lengthdir_x(28, (72 + (alrt * 72)) + objTheFinalBoss.bullet_wave_angle + 180), y + lengthdir_y(28, (72 + (alrt * 72)) + objTheFinalBoss.bullet_wave_angle + 180))
        }
    }

}

