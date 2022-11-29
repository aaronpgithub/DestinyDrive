///@param instance
function destroy_if_exist(argument0) {

	if instance_exists(argument0) {
		with(argument0) instance_destroy()
	}


}
