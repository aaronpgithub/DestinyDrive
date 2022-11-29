//used to spawn ghosts, but now needs something else

var ghostchosen = choose(objGhostTriple, objGhostSwampBuddy, objGhostSwampRat)

if transition_amount >= 1 ghostchosen = choose(objGhostTriple, objGhostSwampBuddy, objGhostSquid)

if prac_param(0) ghostchosen = objGhostTriple
if prac_param(1) ghostchosen = objGhostSwampBuddy
if prac_param(2) {
	if transition_amount >= 1 {
		ghostchosen = objGhostSquid
	} else ghostchosen = objGhostSwampRat
}

var ghostenemy = instance_create(room_width + 90, y, ghostchosen)

with(ghostenemy) {
	pos_x = 190
	pos_y = ystart
}