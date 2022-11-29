event_inherited()

if instance_exists(objQueenOfFliesStrongMiniboss)
{
    if objQueenOfFliesStrongMiniboss.attack_choice = 3
    {
        for(var i = instance_number(objTinyStrongFly) - 1; i > -1; i--)
        {
            if instance_find(objTinyStrongFly, i).id = ID
            {
            y = instance_find(objTinyStrongFly, i).y
            }
        }
    }
}

