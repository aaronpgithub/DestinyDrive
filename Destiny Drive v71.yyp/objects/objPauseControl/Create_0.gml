event_inherited()

sprite_index = noone //removing debug sprite

if instance_exists(objGameControl) {
	time_var = "Time: " + string(objGameControl.local_minutes_str) + ":" + string(objGameControl.local_seconds_str)
}

/*
object_index != objPauseMenuResume and object_index != objPauseMenuRestart and object_index != objPauseMenuQuit 
        and object_index != objPauseMenuOptions and object_index != objFade and object_index != objWindowControl
        and object_index != objPausedText and object_index != objPauseMenuMousePoint and object_index != objPauseControl 
        and object_index != objCheckBox and object_index != objPauseItem
*/

spsurf = noone;

pause = false
pause_surface = surface_create(room_width, room_height)
pause_screen = false
instance_create(500, 190, objPauseMenuRestart)
instance_create(-180, 190, objPauseMenuResume)
instance_create(500, 220, objPauseMenuOptions)
instance_create(-180, 220, objPauseMenuQuit)
max_player_hp = objPlayer.max_hp

if objPlayer.max_hp <= 0 max_player_hp = global.hp

globalvar pause_i;

for(pause_i = 0; pause_i < 20; pause_i += 1)
{
var inst;

inst = instance_create(x, y, objPauseItem)

    with(inst)
    {
    ID = instance_number(objPauseItem) - 1
        if pause_i <= 4
        {
        x = 12 + (15 * pause_i)
        }
        else
        {
        x = instance_find(objPauseItem, pause_i - (floor(pause_i / 5) * 5)).x
        }
    y = 92 + (15 * floor((pause_i + 0.1) / 5))
    pos = 92 + (15 * floor((pause_i + 0.1) / 5))
    }
}

for(var stetai = 2; stetai >= 0; stetai--)
{
    for(var stetai_x = 1; stetai_x >= 0; stetai_x--)
    {
    instance_create(((room_width / 2) + 32) + 65 * stetai_x, ((room_height / 2) + 20) - 14 * stetai, objStatBox)
    }
}

if window_get_cursor() = cr_none
{
cursor_sprite = sprCursor
}

if global.artifact[6, 0] = 0
{
global.player_x = objPlayer.x
global.player_y = objPlayer.y
}
else
{
global.player_x = 57.5 - (objPlayer.x - 57.5)
global.player_y = (objRoad.y + objRoad.sprite_height / 2) - (objPlayer.y - (objRoad.y + objRoad.sprite_height / 2))
}

/* */
/*  */
