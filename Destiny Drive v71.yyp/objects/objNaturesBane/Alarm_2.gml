alarm[2] = 30

var wall_inst, wall_inst2, do_change;

//if the wall type hasn't been changed, this is true. This makes sure the wall type can only be changed once in a step.
do_change = true
//

//if the attack is ending, get the specials started.
if alarm[0] <= room_speed * 2
{
    //Special 2 is the wall being created in the middle. This code is above the special 1 because if it was under it the game would never do 'special 2', as the game would change from sp.2 straight to sp.3 in one step.
    if wall_type = "special2"
    {
    wall_type = "special3"
    do_change = false
    }
    
    //changing to special 2.
    if wall_type = "special"
    {
    wall_type = "special2"
    }
    
    //if the wall type is not a special wall type, change it to the first special!
    if string_length(string(wall_type)) <= 4 and wall_type != ""
    {
    wall_type = "special"
    }
    
    //This restarts the special wall move by setting it back to the first special type.
    if wall_type = "special3" and do_change = true
    {
    wall_type = "special"
    }
}
////////

//if wall direction is up, switch to down! If its down, switch to up! basically, this makes the wall creator go up or down.
if wall_dir = "up"
{
wall_dir = "down"
}
else
{
wall_dir = "up"
}
//

//CREATING WALL CREATORS IN CERTAIN SPOTS
if wall_type = ""
{
wall_type = choose("strt", "diag")
}

if wall_type = "diag"
{
wall_inst = instance_create(x - 60, y, objWallCreator)

    with(wall_inst)
    {
    wall_dir = objNaturesBane.wall_dir
    wall_type = objNaturesBane.wall_type
    }
}

if wall_type = "strt"
{
wall_inst = instance_create(x - 30, y, objWallCreator)

    with(wall_inst)
    {
    wall_dir = objNaturesBane.wall_dir
    wall_type = objNaturesBane.wall_type
    }
}

if wall_type = "special"
{

wall_inst = instance_create(x - 30, y, objWallCreator)
wall_inst2 = instance_create(x - 30, y, objWallCreator)

    with(wall_inst)
    {
    wall_dir = "up"
    wall_type = "spec_diag_1"
    }
    
    with(wall_inst2)
    {
    wall_dir = "down"
    wall_type = "spec_diag_1"
    }
}

if wall_type = "special2"
{

wall_inst = instance_create(x - 60, y - 32, objWallCreator)

    with(wall_inst)
    {
    wall_dir = "down"
    wall_type = "strt"
    }
}

if wall_type = "special"
{

wall_inst = instance_create(x - 60, y, objWallCreator)
wall_inst2 = instance_create(x - 60, y, objWallCreator)

    with(wall_inst)
    {
    wall_dir = "up"
    wall_type = "spec_diag_1"
    }
    
    with(wall_inst2)
    {
    wall_dir = "down"
    wall_type = "spec_diag_1"
    }
}

if wall_type = "special3"
{

wall_inst = instance_create(x - 60, y, objWallCreator)
wall_inst2 = instance_create(x - 60, y, objWallCreator)

    with(wall_inst)
    {
    wall_dir = "up"
    wall_type = "spec_diag_2"
    }
    
    with(wall_inst2)
    {
    wall_dir = "down"
    wall_type = "spec_diag_2"
    }
}


