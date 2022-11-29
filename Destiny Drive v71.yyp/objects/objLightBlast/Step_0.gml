if alpha_timer > 0 alpha_timer -= 1

if alpha_timer <= 0 image_alpha -= 0.1

if image_alpha <= 0 instance_destroy()

