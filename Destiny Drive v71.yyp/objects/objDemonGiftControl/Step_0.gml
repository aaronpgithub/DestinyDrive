/// @description Insert description here
//

if demon_wave != global.wave {
	switch(demon_visual) {
		case "invert":
		visual_lerp = lerp(visual_lerp, 0, 0.3)
		if visual_lerp = 0 instance_destroy()
		break;
		case "fade":
		if sin(degtorad(visual_lerp)) <= 0 instance_destroy()
		break;
		case "zoomglitch":
		visual_lerp = lerp(visual_lerp, 10, 0.1)
		if visual_lerp = 10 instance_destroy()
		break;
		case "lines":
		visual_lerp = lerp(visual_lerp, 0, 0.1)
		if visual_lerp = 0 instance_destroy()
		break;
	}
}