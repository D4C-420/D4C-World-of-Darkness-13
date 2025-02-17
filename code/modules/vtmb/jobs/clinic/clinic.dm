/datum/job/vamp/clinic
	supervisors = "Your Boss"
	total_positions = 1
	spawn_positions = 1

/datum/timelock/clinic
	name = "Clinic Roles"

/datum/timelock/clinic/New(name, time_required, list/roles)
	. = ..()
	src.roles = JOB_CLINIC_ROLES_LIST


/datum/timelock/living
	name = "Living Roles"

/datum/timelock/living/can_play(client/C)
	return C.get_time_living() >= time_required

/datum/timelock/living/get_role_requirement(client/C)
	return time_required - C.get_time_living()
