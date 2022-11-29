if spawn_bullet = true exit; //making it where you cant see the bullet when it spawns

if ds_map_exists(global.item_map, "unicorn_horn")
{
hue += 3

    if hue > 255
    {
    hue = 0
    }
    
    color = make_colour_hsv(hue, 255, 255)
}

if glitch = true
{
    hue = random(255)
    color = make_colour_hsv(hue, 255, 255)
}

var bullet_y = y;

	if ds_map_exists(global.item_map, "brick") {
		height += 3
		bullet_y = y - sin(degtorad(height)) * 27
		sprite_index = sprBrick
		surface_set_target(global.surface_shadow)
		draw_ellipse_color(x - 3, y - 1, x + 3, y + 2, c_black, c_black, 0)
		surface_reset_target()
	}

if !ds_map_exists(global.item_map, "silly_text")
{
    if sprite_exists(sprite_index) and insta = false
		draw_sprite_ext(sprite_index, image_index, x, bullet_y, image_xscale, image_yscale, image_angle, color, image_alpha)
    
    if object_index = objBoomerang draw_sprite_ext(sprite_index, image_index, x, bullet_y, image_xscale, image_yscale, image_angle, color, image_alpha)
}
else
{
    sprite_index = sprSillyBullet

    draw_set_font(fnSillyBullet)
    for(var oio = 0; oio < 3; oio++) //outline
    {
        for(var oioy = 0; oioy < 3; oioy++)
        {
        draw_text_ext_transformed_colour(x - (1 - oio), bullet_y - (1 - oioy), string_hash_to_newline(chr(comicletter)), 1000, 1000, image_xscale, image_yscale, image_angle, c_black, c_black, c_black, c_black, image_alpha)
        }
    }
    draw_text_ext_transformed_colour(x, bullet_y, string_hash_to_newline(chr(comicletter)), 1000, 1000, image_xscale, image_yscale, image_angle, color, color, color, color, image_alpha)
    draw_set_font(fnGameFont)
}

if instance_exists(objEnemyParent) and ds_map_exists(global.item_map, "emerald_ring")
{
    var shockspr = instance_nearest(x, y, objEnemyParent)
    
    if shockspr.image_alpha > 0
    {
        if point_distance(x, y, shockspr.x - (shockspr.sprite_width / 2), shockspr.y - (shockspr.sprite_height / 2)) <= 45
        {
            if shockx != 0 and shocky != 0
            {
            draw_line_width_colour(x, y, shockx, shocky, 3, c_lime, c_lime)
            }
        }
    }
}

