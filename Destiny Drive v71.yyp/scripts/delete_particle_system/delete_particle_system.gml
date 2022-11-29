///@param object
///@param particle_system
function delete_particle_system(argument0, argument1) {

	var object_activate = argument0, particle_system = argument1;

	instance_activate_object(object_activate)
		if instance_exists(object_activate) {
			with(object_activate) {
			part_system_clear(variable_instance_get(id, particle_system))
			part_system_destroy(variable_instance_get(id, particle_system))
			}
		}


}
