image_speed = 0
item_type = choose(objItem, objItem, objUseItem)
create = true
start = false //something for the shop to deal with idk
hover = false
set_to_zero = false //setting text_amount to 0
purchase = false

//
buy_type = -1
//0 = Item
//1 = Gun
//2 = Health
//3 = Machine

buy_id = 0

alarm[0] = 1

if buy_type = 3
{
    var chance = random(1)
    
    if chance <= 0.05
    {
    buy_type = 4
    }
}

//DO THE SCRIPT FOR ITEMS AND STUFF

/*
item_pool = ds_list_create()

for(var item_i = 0; item_i < sprite_get_number(sprItem) - 1; item_i++)
{
    for(var p = 0; p <= ds_list_size(global.items); p++)
    {
        if item_i = ds_list_find_value(global.items, p)
        {
        }
        else if p = ds_list_size(global.items)
        {
        ds_list_add(item_pool, item_i)
        }
    }
}
*/

/* */
/*  */
