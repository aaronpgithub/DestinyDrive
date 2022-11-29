global.menu = "start"
global.character = 0
global.character2 = 0
global.player = sprPlayer
global.player2 = sprPlayer
splash_list = ds_list_create()

changelog()

    randomize()

level_decal = choose("wasteland", "swamp", "forest")//choose("wasteland", "swamp", "forest", "volcano", "snow", "city", "ocean", "temple_inside", "temple_outside", "edge", "killroom", "hell", "tv")

//make it where it unlocks more splashes the more you play, some splashes are offputting.

ds_list_add(splash_list, "VERSION " + string(global.changelog_arr[0]) + ", WOO!", "THE LIFE OF THE PARTY!", "MAD CUZ BAD?", "CREATED BY A MONKEY!", "EXTREME DODGING AND SHOOT GAME!", "ENJOY!", "SPICE TOO OP!", "NOT BUG FREE!", "I HOPE YOU HAVE FUN!", "DO YOUR HOMEWORK!", "TRY OUT THE CHICKEN!", "HAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHA", "...MAYBE TOO HARD?", "EASY WAVE!", "DESTINY DRIVE!")
ds_list_add(splash_list, "KILL 'EM ALL OR DIE TRYING!", "FUN FOR THE WHOLE FAMILY!", "SHOOT, SHOOT, SHOOT!!!", "lowercase and no punctuation", "OOO!", "ETHAN MADE IT TO THE FOREST FIRST!", "IT'S KINDA LIKE REAL LIFE!", "VIRTUAL REALITY COMING SOON!", "UNIDAD DE DESTINO!", "COOL BEANS!", "DESTIN EN VOITURE!", "ONE MORE TRY?", "!EVIRD YNITSED", "NOT BALANCED AND PROUD!", "WHAT?")
ds_list_add(splash_list, "THIS IS A GLITCH", "I WUZ HERE!", "THE PLOT THICKENS!", "OKAY MAN, THIS IS CRAZY!", "YOU SO FLY!", "[SYNTAX ERROR]", "ERROR: CANNOT FIND objMenuControl.splash", "POOL PARTY AT MY HOUSE!", "COUNT THE BULLETS ON THE SCREEN!", "TELL YOUR FRIENDS!", "IF YER DUMB, LEAVE!", "I MADE A PROMISE!", "I HAVE NO IDEA IF THIS IS GOOD OR NOT", "UP, DOWN... UP, DOWN...!", "PLAY CHALLENGES STATS QUIT!", "IT IS 11:38 AM AS I WRITE THIS.", 
"DESTINY!!!!! DRIVE!!!!!!", "ANXIETY!", "NOT GOOD!", "FLUCTUATION!", "WILLIAM SHAKESPEARE!", "*SNIP SNAP*", "hey! HEY!", "                                              SUP!", "TEXAS REPRESENT!", "country", "MY NAME IS DESTINY DRIVE! WHAT'S YOURS?", "I SHOULD FOCUS ON SCHOOL!", "YOU MISS 100% OF THE SHOTS YOU DON'T TAKE!", "BAD RUN? I FEEL YA.")

splash = ds_list_find_value(splash_list, irandom(ds_list_size(splash_list) - 1))

if splash = "country" country_splash() //every country in the world

//audio_stop_all()

globalvar i, en_arr;

for(i = 0; i < 15; i += 1)
{
var playinst = instance_create_layer(room_width / 2, 500, "Universal_Obj", objPlayerSelect)

    with(playinst)
    {
    image_index = i
    }
}

if window_get_cursor() = cr_none
{
cursor_sprite = sprCursor
}
else
{
cursor_sprite = cr_none
}



