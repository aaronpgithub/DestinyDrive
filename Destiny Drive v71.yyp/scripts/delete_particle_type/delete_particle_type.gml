///@param object
///@param particle_type
function delete_particle_type(argument0, argument1) {

	var object_activate = argument0, particle_type = argument1;

	instance_activate_object(object_activate)
		if instance_exists(object_activate) {
			with(object_activate) {
			part_type_destroy(variable_instance_get(id, particle_type))
			}
		}


}
