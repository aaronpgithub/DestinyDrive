/// @description Insert description here
// You can write your code in this editor
global.hp += hearts_gen
global.shields[0] += shields_gen - frac(shields_gen)

global.money = 0

if instance_exists(objGameControl) {
	objGameControl.tokens_max = 0
}