if global.menu = "char_select"
{
    if objArtifactsPullDown.pulled_down = true
    {
    y = lerp(y, 0, 0.1)
    }
    else
    {
    y = lerp(y, -96, 0.1)
    }
}
else
{
y = lerp(y, -96, 0.1)
}

