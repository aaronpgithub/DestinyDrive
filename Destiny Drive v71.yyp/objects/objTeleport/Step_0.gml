radius += 5

        if radius > 700 and ID != 0 {
        instance_destroy()
        }
		
	if objGameControl.level_complete_type = "transition" {
			if image_alpha = 1 level_transition()
			image_alpha -= 0.05
	}

	if image_alpha <= 0 instance_destroy()

if objGameControl.level_complete_type = "" and (global.wave > -1 and global.wave < global.wave_max) {
instance_destroy()
}