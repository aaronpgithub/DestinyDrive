var col;

col = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, objPlayer, false, true)

if col != noone and image_index = 0 and !instance_exists(objGamblingWin) and col != objPlayer2
{
objShop.bye = true
image_index = 1
}

