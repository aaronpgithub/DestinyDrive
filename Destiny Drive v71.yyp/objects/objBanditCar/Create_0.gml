/// @description Insert description here
// You can write your code in this editor
event_inherited()

hp_set(35)

bandit_1_hue = random(255)
bandit_2_hue = random(255)

bandit_1_burst = irandom_range(4, 12)
bandit_2_burst = irandom_range(4, 12)

alarm[0] = random_range(45, 90) //bandit 1
alarm[1] = random_range(45, 90) //bandit 2

image_speed = 0
image_index = 0

robot = true