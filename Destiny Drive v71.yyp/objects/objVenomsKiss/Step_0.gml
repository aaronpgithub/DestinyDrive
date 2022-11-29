x = lerp(x, x_pos, 0.5)

if x_pos < 0
{
if instance_exists(objEnemyParent) x_pos += 0.1
}

