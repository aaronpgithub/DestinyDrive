///@desc destroy if exists
///@param instance
function dest_ex(argument0) {

	if instance_exists(argument0) {
		with(argument0) instance_destroy()
	}


}
