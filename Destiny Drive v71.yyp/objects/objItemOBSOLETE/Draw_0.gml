event_inherited()

draw_self()

//draw_text(x, y, string(image_index))

var drawhover = true;

my_playcol = collision_circle(x, y + 40, 16, objPlayer, true, true)

	for(var pcl = 0; pcl < instance_number(objItem); pcl++) {
			if instance_find(objItem, pcl).my_playcol != noone drawhover = false
	}

if x <= stopping_point and !instance_exists(objShop) and x = xprevious
{ 
draw_sprite(sprItemSelectZone, 0, x, y + 40)
}

if !instance_exists(objShop) and my_playcol = noone and x <= stopping_point and drawhover = true
{ 
draw_rectangle_colour(0, 0, 320, 30, c_white, c_white, c_white, c_white, 0)
draw_set_colour(c_black)
draw_text_ext(5, 3, string_hash_to_newline("Hover over a circle to choose an item!"), 12, 315)
draw_set_colour(c_white)
}

if !instance_exists(objShop) and my_playcol != noone and x <= stopping_point
{
draw_rectangle_colour(0, 0, 320, 30, c_white, c_white, c_white, c_white, 0)
draw_set_colour(c_black)
draw_text_ext(5, 3, string_hash_to_newline(string(global.shop_string)), 12, 315)
draw_set_colour(c_white)
}


if mimic = true and !instance_exists(objShop)
{
    if mimic_frame > -1
    {
    draw_sprite(sprMimicLick, floor(mimic_frame), x, y)
    }
}

//draw_text(x, y, string(buy_id))

