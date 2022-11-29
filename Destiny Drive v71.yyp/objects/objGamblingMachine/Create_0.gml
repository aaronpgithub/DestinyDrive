event_inherited()

instance_create(x, y, objGamblingLights)
instance_create(x, y, objGamblingDispense)
instance_create(x, y, objGamblingRoll)
instance_create(x, y, objGamblingRoll)
instance_create(x, y, objGamblingRoll)

price = 1

gamble = false
img = 0 //what you win!
your_chance = 0 //Your chance to win!
chance = 0.60 - (0.05 * global.luck) //the lower the chance, the better chance you have of winning!

