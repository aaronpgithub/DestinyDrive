if global.hp <= 0 exit;

if parent_object = instance_find(objPlayer, 0) and mouse_check_button(mb_left)
{
x += 3
y = parent_object.y
}

if parent_object = instance_find(objPlayer2, 0) and keyboard_check(vk_space)
{
x += 3
y = parent_object.y
}



