/// @description Insert description here
// You can write your code in this editor
plague_circles = ds_list_create()
circle_timer = 30
circle_num = 0
circle_speed = 0.5

plague_radius = 12

circle_surface = surface_create(plague_radius * 2 + 10, plague_radius * 2 + 10)

spiral_burst = 720
sprial_portal_angle = random(360)

angle = -(random_range(20, 50))

if instance_number(objThePlagueBulletPortalBlast) <= 1 angle = random_range(20, 50)

spd = -2