function particle_delete_superscript() {
	part_system_clear(global.part_sys)

	delete_particle_system(objPoSkullLaser, "laser_s")
	delete_particle_type(objPoSkullLaser, "laser_part")
	
	delete_particle_system(objNewsLaser, "laser_s_news")
	delete_particle_type(objNewsLaser, "laser_part_news")

	delete_particle_system(objBanditCaravan, "part_s_bck")
	delete_particle_system(objBanditCaravan, "part_s_bck_2")
	delete_particle_type(objBanditCaravan, "sec_bot")
	delete_particle_type(objBanditCaravan, "sec_bot_bck")
	delete_particle_type(objBanditCaravan, "sec_bot_bck_opp")


}
