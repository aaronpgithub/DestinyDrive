if sprite_index = sprMutantGrenadeThrow
{
instance_create(x, y, objMutantGrenade)
sprite_index = sprTheMutantGrenadeThrowForward
}

if sprite_index = sprTheMutantGrenadeThrowForward
{
sprite_index = sprTheMutant
}

