event_inherited()

if x < -200 or x > 600 or y > 400 or y < -200 instance_destroy()

if instance_exists(objTheFinalBoss) {
if objTheFinalBoss.attack_choice != 1 image_alpha -= 0.35

    if image_alpha < 0 instance_destroy()
}

