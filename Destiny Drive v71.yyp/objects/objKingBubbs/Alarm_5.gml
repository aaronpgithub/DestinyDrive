instance_create(x + 80, y - 170, objGrapeCarrier)

if !instance_exists(objKnight)
{
	var knight_inst, knight_inst2;

	knight_inst = instance_create(x + 200, y - 30, objKnight)
	knight_inst2 = instance_create(x + 200, y + 30, objKnight)

	with(knight_inst)
	{
	pos_x = objKingBubbs.x
	pos_y = objKingBubbs.y - 60
	leave = true
	}

	with(knight_inst2)
	{
	pos_x = objKingBubbs.x
	pos_y = objKingBubbs.y + 60
	leave = true
	}
}

