/// @description Insert description here
// You can write your code in this editor
x = lerp(x, 30, 0.3)
y = lerp(y, 30, 0.3)

if emergency_x = 0 and emergency_y = 0 {
	if instance_exists(objEnemyParent) {
		var random_monster = irandom(instance_number(objEnemyParent) - 1)
		
		emergency_x = instance_find(objEnemyParent, random_monster).mid_x
		emergency_y = instance_find(objEnemyParent, random_monster).mid_y
	}
}