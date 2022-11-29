//audio_setup() ////audio tweaks

//creating the enemy type array
    for(en_arr = 0; en_arr < 100; en_arr += 1)
    {
    global.enemy_type_arr[en_arr] = 0
    }
//

//creating the item type array
    for(it_arr = 0; it_arr < sprite_get_number(sprItem); it_arr += 1)
    {
    global.item_type_arr[it_arr] = 0
    }
//

//creating the use item type array
    for(us_arr = 0; us_arr < sprite_get_number(sprUseItem) - 1; us_arr += 1)
    {
    global.use_type_arr[us_arr] = 0
    }
//

    global.total_enemy_kill = 0
    global.total_deaths = 0
    global.total_bul_shot = 0
    global.total_bul_hit = 0
    global.total_flawless = 0
    global.total_time_play = 0
    
    global.fave_char = ds_list_create()
    
    global.local_enemy_kill = 0
    global.local_deaths = 0
    global.local_bul_shot = 0
    global.local_bul_hit = 0
    global.local_flawless = 0
    global.local_time_play = 0
    
    //opening the stats file
ini_open("stats.ini")
//if it exists, read the shit and cram it in the correct variable!!
if ini_key_exists("stats", "start")
{
    global.total_enemy_kill = ini_read_real("stats", "tot_en_kl", 0)
    global.total_deaths = ini_read_real("stats", "death", 0)
    global.total_bul_shot = ini_read_real("stats", "tot_bul_shot", 0)
    global.total_bul_hit = ini_read_real("stats", "tot_bul_hit", 0)
    global.total_flawless = ini_read_real("stats", "tot_flaw", 0)
    seconds = ini_read_real("stats", "seconds", 0)
    minutes = ini_read_real("stats", "minutes", 0)
    hours = ini_read_real("stats", "hours", 0)
    days = ini_read_real("stats", "days", 0)
    
        character_complete() //levels complete
    
    //need to add stuff
}
else //this is for starting the ini file for the very first time
{
ini_write_real("stats", "start", 0)
ini_write_real("stats", "tot_en_kl", 0)
ini_write_real("stats", "death", 0)
ini_write_real("stats", "tot_bul_shot", 0)
ini_write_real("stats", "tot_bul_hit", 0)
ini_write_real("stats", "tot_flaw", 0)
ini_write_real("stats", "seconds", 0)
ini_write_real("stats", "minutes", 0)
ini_write_real("stats", "hours", 0)
ini_write_real("stats", "days", 0)

    for(var char_amt = sprite_get_number(sprPlayerSelect) - 1; char_amt >= 0; char_amt--)
    {
        for(var level_amt = sprite_get_number(sprCharAccomp) - 1; level_amt >= 0; level_amt--)
        {
            ini_write_real("stats", "char_" + string(char_amt) + string(level_amt), 0)
            global.levels_beat[char_amt, level_amt] = 0
        }
    }
}
ini_close()

//SETTINGS INI FILE
ini_open("settings.ini")

if ini_key_exists("settings", "options")
{
global.vol_percent = ini_read_real("settings", "master_volume", 1)
}
else //this is for starting the ini file for the very first time
{
ini_write_real("settings", "options", 0)
ini_write_real("settings", "master_volume", 1)
}
ini_close()
//////////

//audio_set_master_gain(0, global.vol_percent)


