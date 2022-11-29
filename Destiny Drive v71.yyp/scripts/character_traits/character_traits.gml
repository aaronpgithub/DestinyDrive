function character_traits() {
	if global.challenge = 0
	{
	    switch(global.character)
	    {
	        case 0:
	        ds_list_add(global.character_trait, "pity", "shuffler")
	        break;
        
	        case 1:
	        ds_list_add(global.character_trait, "loaded", "quickdraw")
	        break;
        
	        case 2:
	        ds_list_add(global.character_trait, "luck of the gun", "vip customer")
	        break;
        
	        case 3:
	        ds_list_add(global.character_trait, "storage compartment", "interchange")
	        break;
        
	        case 4:
	        ds_list_add(global.character_trait, "hide in the shell", "fear")
	        break;
        
	        case 5:
	        ds_list_add(global.character_trait, "intimidation", "escape plan")
	        break;
        
	        case 6:
	        ds_list_add(global.character_trait, "protect the young", "parental instinct")
	        break;
        
	        case 7:
	        ds_list_add(global.character_trait, "soul collector", "shadow manipulator")
	        break;
        
	        case 8:
	        ds_list_add(global.character_trait, "gunpowder blood", "memories")
	        break;
        
	        case 9:
	        ds_list_add(global.character_trait, "toxicity", "sludge")
	        break;
        
	        case 10:
	        ds_list_add(global.character_trait, "spirit heart", "despair")
	        break;
        
	        case 11:
	        ds_list_add(global.character_trait, "rando", "rando again")
	        break;
	    }
	}



}
