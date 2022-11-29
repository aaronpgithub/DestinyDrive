if wall_type = "strt"
{
    if wall_dir = "up"
    {
    y = lerp(y, ystart - 65, 0.3)
    
        if y <= ystart - 64
        {
        instance_destroy()
        instance_create(xstart, ystart - 12, objNaturesBaneWall)
        instance_create(xstart, ystart - 28, objNaturesBaneWall)
        instance_create(xstart, ystart - 44, objNaturesBaneWall)
        instance_create(xstart, ystart - 60, objNaturesBaneWall)
        instance_create(xstart, ystart - 76, objNaturesBaneWall)
        instance_create(xstart, ystart - 92, objNaturesBaneWall)
        }
    }
    
    if wall_dir = "down"
    {
    y = lerp(y, ystart + 65, 0.3)
        if y >= ystart + 64
        {
        instance_destroy()
        instance_create(xstart, ystart, objNaturesBaneWall)
        instance_create(xstart, ystart + 16, objNaturesBaneWall)
        instance_create(xstart, ystart + 32, objNaturesBaneWall)
        instance_create(xstart, ystart + 48, objNaturesBaneWall)
        instance_create(xstart, ystart + 64, objNaturesBaneWall)
        }
    }
}

//DIAGGGG!!!!!!!!!!!!!!!
if wall_type = "diag"
{
    if wall_dir = "up"
    {
    y = lerp(y, ystart - 65, 0.3)
    x = lerp(x, xstart - 65, 0.3)
    
        if y <= ystart - 64
        {
        instance_destroy()
        instance_create(xstart, ystart - 12, objNaturesBaneWall)
        instance_create(xstart - 16, ystart - 28, objNaturesBaneWall)
        instance_create(xstart - 32, ystart - 44, objNaturesBaneWall)
        instance_create(xstart - 48, ystart - 60, objNaturesBaneWall)
        instance_create(xstart - 64, ystart - 76, objNaturesBaneWall)
        instance_create(xstart - 80, ystart - 92, objNaturesBaneWall)
        }
    }
    
    if wall_dir = "down"
    {
    y = lerp(y, ystart + 65, 0.3)
    x = lerp(x, xstart + 65, 0.3)
    
        if y >= ystart + 64
        {
        instance_destroy()
        instance_create(xstart, ystart, objNaturesBaneWall)
        instance_create(xstart + 16, ystart + 16, objNaturesBaneWall)
        instance_create(xstart + 32, ystart + 32, objNaturesBaneWall)
        instance_create(xstart + 48, ystart + 48, objNaturesBaneWall)
        instance_create(xstart + 64, ystart + 64, objNaturesBaneWall)
        }
    }
}

//DIAGGGG!!!!!!!!!!!!!!!
if wall_type = "spec_diag_1"
{
    if wall_dir = "up"
    {
    y = lerp(y, ystart - 65, 0.3)
    x = lerp(x, xstart + 65, 0.3)
    
        if y <= ystart - 64
        {
        instance_destroy()
        instance_create(xstart + 16, ystart - 28, objNaturesBaneWall)
        instance_create(xstart + 32, ystart - 44, objNaturesBaneWall)
        instance_create(xstart + 48, ystart - 60, objNaturesBaneWall)
        instance_create(xstart + 64, ystart - 76, objNaturesBaneWall)
        instance_create(xstart + 80, ystart - 92, objNaturesBaneWall)
        }
    }
    
    if wall_dir = "down"
    {
    y = lerp(y, ystart + 65, 0.3)
    x = lerp(x, xstart + 65, 0.3)
    
        if y >= ystart + 64
        {
        instance_destroy()
        instance_create(xstart + 16, ystart + 16, objNaturesBaneWall)
        instance_create(xstart + 32, ystart + 32, objNaturesBaneWall)
        instance_create(xstart + 48, ystart + 48, objNaturesBaneWall)
        instance_create(xstart + 64, ystart + 64, objNaturesBaneWall)
        }
    }
}

//DIAGGGG!!!!!!!!!!!!!!!
if wall_type = "spec_diag_2"
{
    if wall_dir = "up"
    {
    y = lerp(y, ystart - 65, 0.3)
    x = lerp(x, xstart - 65, 0.3)
    
        if y <= ystart - 64
        {
        instance_destroy()
        instance_create(xstart - 16, ystart - 28, objNaturesBaneWall)
        instance_create(xstart - 32, ystart - 44, objNaturesBaneWall)
        instance_create(xstart - 48, ystart - 60, objNaturesBaneWall)
        instance_create(xstart - 64, ystart - 76, objNaturesBaneWall)
        instance_create(xstart - 64, ystart - 92, objNaturesBaneWall)
        }
    }
    
    if wall_dir = "down"
    {
    y = lerp(y, ystart + 65, 0.3)
    x = lerp(x, xstart - 65, 0.3)
    
        if y >= ystart + 64
        {
        instance_destroy()
        instance_create(xstart - 16, ystart + 16, objNaturesBaneWall)
        instance_create(xstart - 32, ystart + 32, objNaturesBaneWall)
        instance_create(xstart - 48, ystart + 48, objNaturesBaneWall)
        instance_create(xstart - 64, ystart + 64, objNaturesBaneWall)
        }
    }
}

