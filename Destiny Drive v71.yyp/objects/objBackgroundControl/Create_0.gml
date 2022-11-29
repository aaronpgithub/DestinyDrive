sprite_index = noone //removing debug sprite

var t = 0; 

repeat(15) {
bg[t, 0] = 0 //speed
bg[t, 1] = 0 //x
bg[t, 2] = 0 //y
bg[t, 3] = 0 //sprite
bg[t, 4] = 0 //sprite
bg[t, 5] = 0 //sprite
bg[t, 6] = 0 //default road
bg[t, 7] = 0 //index
bg[t, 8] = 0 //index
bg[t, 9] = 0 //index
bg[t, 10] = 0 //special
bg[t, 11] = 0 //special
bg[t, 12] = 0 //special
variable_instance_set(self, "decal_list_" + string(t), ds_list_create())
t++
}

spawn = true
skyalpha = 0

transition = false
draw_background = true