if sprite_index = sprShielderBreak
{
sprite_index = sprShielderCharge
image_index = 0
exit;
}

if sprite_index = sprShielderCharge
{
alarm[0] = 1
image_speed = 0
image_index = 4
}

