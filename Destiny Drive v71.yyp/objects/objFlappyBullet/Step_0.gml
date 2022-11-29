event_inherited()

image_angle = vert_dir * 3

if y < 75 or y > 233
{
instance_destroy()
}

if parent_object = instance_find(objPlayer, 0)
{
    if mouse_check_button_pressed(mb_left)
    {
    vert_dir = 6
    }
}

if parent_object = instance_find(objPlayer2, 0)
{
    if keyboard_check_pressed(vk_space) or gamepad_button_check_pressed(0, gp_shoulderrb)
    {
    vert_dir = 6
    }
}

y -= vert_dir

vert_dir -= 0.4

