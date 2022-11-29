function macros() {
#macro objPlayer_x instance_nearest(x, y, objPlayer).x
#macro objPlayer_y instance_nearest(x, y, objPlayer).y
#macro player_damage global.dmg + global.alt_dmg
#macro player_accuracy global.accuracy + global.alt_acc
#macro player_shot_speed global.shot_speed + global.alt_sho
#macro player_firerate global.fire_rate + global.alt_fir
#macro player_luck global.luck + global.alt_luc
#macro road_y_min 64
#macro road_y_mid 154
#macro road_y_max 240
#macro player_dir point_direction(x, y, objPlayer_x, objPlayer_y)
#macro BOSS_ATTACK_SURFACE_Y 88


}
