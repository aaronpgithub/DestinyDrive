function character_complete() {
	ini_open("stats.ini")

	    for(var char_amt = sprite_get_number(sprPlayerSelect) - 1; char_amt >= 0; char_amt--)
	    {
	        for(var level_amt = sprite_get_number(sprCharAccomp) - 1; level_amt >= 0; level_amt--)
	        {
	        global.levels_beat[char_amt, level_amt] = ini_read_real("stats", "char_" + string(char_amt) + string(level_amt), 0)
	        }
	    }
    
	ini_close()



}
