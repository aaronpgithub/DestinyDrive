/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

    repeat(15)
    {
        var sloinst;
        sloinst = instance_create(x + random_range(-15, -10), y + random_range(-10, 10), objSlowSmoke)
    }