
ini_open("stats.ini")
{
ini_write_real("stats", "tot_en_kl", global.total_enemy_kill)
ini_write_real("stats", "death", global.total_deaths)
ini_write_real("stats", "tot_bul_shot", global.total_bul_shot)
ini_write_real("stats", "tot_bul_hit", global.total_bul_hit)
ini_write_real("stats", "tot_flaw", global.total_flawless)
ini_write_real("stats", "seconds", seconds)
ini_write_real("stats", "minutes", minutes)
ini_write_real("stats", "hours", hours)
ini_write_real("stats", "days", days)

ini_write_real("stats", "loc_en_kl", global.total_enemy_kill)
ini_write_real("stats", "loc_death", global.total_deaths) //delete this
ini_write_real("stats", "loc_bul_shot", global.total_bul_shot)
ini_write_real("stats", "loc_bul_hit", global.total_bul_hit)
ini_write_real("stats", "loc_flaw", global.total_flawless)
ini_write_real("stats", "quick_play", global.total_time_play)

    for(var char_amt = sprite_get_number(sprPlayerSelect) - 1; char_amt >= 0; char_amt--)
    {
        for(var level_amt = sprite_get_number(sprCharAccomp) - 1; level_amt >= 0; level_amt--)
        {
            ini_write_real("stats", "char_" + string(char_amt) + string(level_amt), global.levels_beat[char_amt, level_amt])
        }
    }

}
ini_close()

ini_open("settings.ini")
{
ini_write_real("settings", "master_volume", global.vol_percent)
}

ini_close()
/*
ini_open("stats.ini")
{
ini_write_real("stats", "tot_en_kl", 0)////.total_enemy_kill)
ini_write_real("stats", "death", 0)////.total_deaths)
ini_write_real("stats", "tot_bul_shot", 0)////.total_bul_shot)
ini_write_real("stats", "tot_bul_hit", 0)////.total_bul_hit)
ini_write_real("stats", "tot_flaw", 0)////.total_flawless)
ini_write_real("stats", "total_play", 0)////.total_time_play)

ini_write_real("stats", "loc_en_kl", 0)////.total_enemy_kill)
ini_write_real("stats", "loc_death", 0)////.total_deaths) //delete this
ini_write_real("stats", "loc_bul_shot", 0)////.total_bul_shot)
ini_write_real("stats", "loc_bul_hit", 0)////.total_bul_hit)
ini_write_real("stats", "loc_flaw", 0)////.total_flawless)
ini_write_real("stats", "quick_play", 0)////.total_time_play)

}
ini_close()




/* */
/*  */
