/// @description Insert description here
// You can write your code in this editor

if hover = false exit;

switch(menu_button_type) {
	case "levels":
		if instance_exists(objPracticeLevelSelectMenu) {
			with(objPracticeLevelSelectMenu) {
				select_practice_menu()
			}
		}
	break;
	case "bosses":
		if instance_exists(objPracticeBossSelectMenu) {
			with(objPracticeBossSelectMenu) {
				select_practice_menu()
				scroll_amt = 0
			}
		}
	break;
	case "enemies":
		if instance_exists(objPracticeEnemySelectMenu) {
			with(objPracticeEnemySelectMenu) {
				select_practice_menu()
				scroll_amt = 0
			}
		}
	break;
	case "invincibility":
		if instance_exists(objPracticeControl) {
			with(objPracticeControl) {
				player_invincible = !(player_invincible)
			}
		}
	break;
	case "play level":
		global.practice = !(global.practice)
	break;
}