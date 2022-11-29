/// @description Insert description here
// You can write your code in this editor
event_inherited()

if instance_exists(objSacrificeGod) {
	globalvar sqx, sqy;
	sqx = square_x
	sqy = square_y

	var sapib = instance_create(xstart, ystart, objSacrificeSquareBullet)

	with(sapib) {
		square_x = sqx
		square_y = sqy
		path_length = -1
	}
}