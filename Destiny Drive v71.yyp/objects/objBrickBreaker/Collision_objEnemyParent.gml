if other.invincible = false
{
	globalvar destroytime;
	destroytime = damage
	
	if damage > 0 {
	    with(other)
	    {
	    hp -= destroytime * global.dmg
	    flash = true
	    }
	}
	
	damage = 0
}

