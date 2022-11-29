if global.menu != "char_select"
{
instance_destroy()
}

if x < 290
{
image_xscale = -1
}

if global.character2 = 0 and image_xscale = -1
{
image_alpha = 0
}
else if image_xscale = -1
{
image_alpha = 1
}

if global.character2 = 10 and image_xscale = 1
{
image_alpha = 0
}
else if image_xscale = 1
{
image_alpha = 1
}

switch(global.character2)
{
case 0:
coop_char = "Pip"
break;
case 1:
coop_char = "Turf"
break;
case 2:
coop_char = "Spice"
break;
case 3:
coop_char = "Alien"
break;
case 4:
coop_char = "Noodle"
break;
case 5:
coop_char = "Criminal"
break;
case 6:
coop_char = "Bone Boy"
break;
case 7:
coop_char = "Dastardly Devil"
break;
case 8:
coop_char = "Dyna-Mike"
break;
case 9:
coop_char = "Disease"
break;
case 10:
coop_char = "Sp. of Despair"
break;
case 11:
coop_char = "Rando Obbles"
break;
}

