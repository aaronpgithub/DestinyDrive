/// @description Insert description here
// You can write your code in this editor
if instance_exists(objBanditCaravan) {
x = round(objBanditCaravan.x - 12)
y = round(objBanditCaravan.y - objBanditCaravan.sprite_height + 1)
} else instance_destroy()

