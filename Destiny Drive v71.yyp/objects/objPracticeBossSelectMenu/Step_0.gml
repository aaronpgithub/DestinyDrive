/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

real_scroll = clamp(real_scroll, -(total_scroll), 0)

scroll_amt = lerp(scroll_amt, real_scroll, 0.8)