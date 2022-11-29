if leave = false
{
    x = lerp(x, xpos, 0.03)
    y = lerp(y, 50, 0.03)
    
    if x < xpos - 2
    {
    alarm[0] = 60
    }
}
else
{
xpos = -100
y -= 6
}

