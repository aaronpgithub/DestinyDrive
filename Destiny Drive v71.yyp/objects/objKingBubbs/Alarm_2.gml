var flak_amount = choose(2, 3)
if transition_amount >= angry_transition flak_amount = 4

repeat(flak_amount)
{
instance_create(x, y, objFlakShot)
}