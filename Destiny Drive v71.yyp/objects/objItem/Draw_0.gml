event_inherited()

draw_self()

#region
var drawitems = false;
	if drawitems = true {
		with(instance_find(objItem, 0)) {
			var item_draw = 0;
			var pushback = 0
			var pushamt = 0
			var fallamt = 0

			repeat(ds_list_size(boss_item_pool)) {
					draw_sprite_ext(sprItem, ds_list_find_value(boss_item_pool, item_draw), 12 + (12 * item_draw) - (132 * pushamt), 50 + (12 * fallamt), 0.5, 0.5, 0, c_white, 1)
					item_draw++
					pushback++
		
					if pushback > 10 {
						pushback = 0
						fallamt++
						pushamt++
					}
			}
	
			item_draw = 0;
			pushback = 0;
			pushamt = 0;
			fallamt = 0;
	
			repeat(ds_list_size(shop_item_pool)) {
					draw_sprite_ext(sprItem, ds_list_find_value(shop_item_pool, item_draw), 150 + (12 * item_draw) - (132 * pushamt), 50 + (12 * fallamt), 0.5, 0.5, 0, c_white, 1)
					item_draw++
					pushback++
		
					if pushback > 10 {
						pushback = 0
						fallamt++
						pushamt++
					}
			}
			draw_text(40, 70, string(ds_list_size(boss_item_pool)))
	}
}
#endregion

var drawhover = true;

my_playcol = collision_circle(collision_x, collision_y, collision_radius, objPlayer, true, true)

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

