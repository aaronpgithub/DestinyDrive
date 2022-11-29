if ds_map_exists(global.item_map, "hit_list")
{
    if instance_exists( instance_find( objEnemyParent, ds_map_find_value(global.item_map, "hit_list") ) )
    {
    var longinst = instance_find( objEnemyParent, ds_map_find_value(global.item_map, "hit_list") )
    
        if longinst.image_alpha > 0
        {
        draw_sprite(sprHitListCircle, 0, longinst.x - (longinst.sprite_width / 2), longinst.y - (longinst.sprite_height / 2))
        }
    }
}

/*
var testlength, testangle;
testlength = point_distance(x, y, xprevious, yprevious)
testlength = floor(testlength / 8)
testangle = point_direction(x, y, xprevious, yprevious)

if ds_map_exists(global.item_map, "bad_connection") testangle += 180

for(var dopd = 0; dopd <= testlength; dopd++) {
	var pdire = point_direction(xprevious, yprevious, x, y)
	var ctes1;
	draw_circle_colour(xprevious + lengthdir_x(dopd * 8, testangle), yprevious + lengthdir_y(dopd * 8, testangle), 4, c_black, c_black, 0)
}