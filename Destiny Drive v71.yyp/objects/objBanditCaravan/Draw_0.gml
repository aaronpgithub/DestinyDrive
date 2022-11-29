/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event

var future_flash = false

future_flash = flash

if future_flash = true shader_set(flash_shader)
draw_sprite_ext(sprMuttBossWheel, 0, x - 50, y, 1, 1, wheel_angle, c_white, 1)
shader_reset()

shadow(0, false, sprMuttBossWheel, 0, x - 50, y + 20, wheel_angle)
shadow(0, false, sprMuttBossWheel, 0, x - 10, y + 20, wheel_angle)
shadow(0, false, sprMuttBossTurret, 0, x, y + shadow_height)
shadow(0, false, sprMuttBossOpen, 0, x, y + shadow_height - mouth_position)
shadow(shadow_height)

event_inherited();


if future_flash = true shader_set(flash_shader)
draw_sprite_ext(sprMuttBossTurret, 0, x, y, 1, 1, 0, c_white, 1)
draw_sprite_ext(sprMuttBossOpen, 0, x, y + mouth_position, 1, 1, image_angle, c_white, 1)
draw_sprite_ext(sprMuttBossWheel, 0, x - 10, y, 1, 1, wheel_angle, c_white, 1)
shader_reset()