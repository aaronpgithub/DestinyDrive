///@param x
///@param y
///@param object
function create_if_exist(argument0, argument1, argument2) {

	///create object if none of it exists
	var cie_x, cie_y, cie_instance;

	cie_x = argument0;
	cie_y = argument1;
	cie_instance = argument2;

	if !instance_exists(cie_instance) {
		return instance_create(cie_x, cie_y, cie_instance);
	}


}
