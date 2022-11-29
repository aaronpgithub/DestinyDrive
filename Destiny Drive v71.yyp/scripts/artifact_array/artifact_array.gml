function artifact_array() {
	//x position in array is the artifact and the first y (0) is if its selected or not
	//y positions are characters if the number stored in spot is 0, that means you havent won with the artifact.

	for(var i = 0; i <= 7; i++)
	{
	global.artifact[i, 0] = 0
	global.artifact[i, 1] = 0
	global.artifact[i, 2] = 0
	global.artifact[i, 3] = 0
	global.artifact[i, 4] = 0
	global.artifact[i, 5] = 0
	global.artifact[i, 6] = 0
	global.artifact[i, 7] = 0
	global.artifact[i, 8] = 0
	global.artifact[i, 9] = 0
	}



}
