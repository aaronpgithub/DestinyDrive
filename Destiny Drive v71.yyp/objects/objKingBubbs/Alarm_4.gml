if instance_exists(objKnight) exit;

var knight_inst, knight_inst2;

knight_inst = instance_create(x + 200, y - 30, objKnight)
knight_inst2 = instance_create(x + 200, y + 30, objKnight)

with(knight_inst)
{
pos_x = objKingBubbs.x
pos_y = objKingBubbs.y - 60
}

with(knight_inst2)
{
pos_x = objKingBubbs.x
pos_y = objKingBubbs.y + 60
}

wait = true
alarm[1] = room_speed * 2
attack_choice = 0