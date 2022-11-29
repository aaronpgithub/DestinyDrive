event_inherited()

if !instance_exists(objNeighborhoodGangKid1) and !instance_exists(objNeighborhoodGangKid2) and !instance_exists(objNeighborhoodGangKid3)
{
instance_destroy()
}

if hp <= 0
{
hp = 1
}

if player_too_close(warning_x, 120) {
	var neighbor_bullet = instance_create(320, random_range(68, 245), objEnemyBullet)

    with(neighbor_bullet)
    {
    spd = -5 * global.enemy_spd
    damage = 1
    angle = random_range(-4, 4)
    }
}

if instance_exists(objPracticeControl) {
	//NO NEED FOR ACTIVATION CODE, PRACTICE CONTROL ACTIVATES OBJECTS ONCE MENU IS CLOSED!
	with(objPracticeControl) {
	if string_char_at(boss_attacks[| 0], string_length(boss_attacks[| 0])) = "D" instance_deactivate_object(objNeighborhoodGangKid1)
	if string_char_at(boss_attacks[| 1], string_length(boss_attacks[| 1])) = "D" instance_deactivate_object(objNeighborhoodGangKid2)
	if string_char_at(boss_attacks[| 2], string_length(boss_attacks[| 2])) = "D" instance_deactivate_object(objNeighborhoodGangKid3)
	}
}