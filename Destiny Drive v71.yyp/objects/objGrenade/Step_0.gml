event_inherited()

if slow = true
{
spd -= 0.25
}

if spd <= 0
{
instance_destroy()
}

if spd < 3 and slow = false
{
spd = 3
}

