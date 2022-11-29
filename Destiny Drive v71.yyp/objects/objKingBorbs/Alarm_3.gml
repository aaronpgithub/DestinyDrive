/// @description clam create

var inst, inst2;

inst = instance_create(x + 200, y - 30, objKingBorbsClam)
inst2 = instance_create(x + 200, y + 30, objKingBorbsClam)

with(inst)
{
pos_x = objKingBorbs.x
pos_y = objKingBorbs.y - 60
}

with(inst2)
{
pos_x = objKingBorbs.x
pos_y = objKingBorbs.y + 60
}

wait = true
attack_choice = 0
alarm[1] = 60

