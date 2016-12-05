/////////////////////////////
/datum/job/nato_commander
	title = "Platoon Commander"
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	head_position = 1
	selection_color = "#2d2d63"
	outfit_type = /decl/hierarchy/outfit/job/us_plleader
//	access = list(access_nato_soldier, access_nato_medic, access_nato_surgerist, access_nato_engineer, access_nato_heavy_weapon, access_nato_cook, access_nato_squad_leader, access_nato_commander)
//	minimal_access = list(access_nato_soldier, access_nato_medic, access_nato_surgerist, access_nato_engineer, access_nato_heavy_weapon, access_nato_cook, access_nato_squad_leader, access_nato_commander)
	spawn_location = "JoinLateNATO"

/datum/job/nato_commander/update_character(var/mob/living/carbon/human/H)
	H.add_language("English")
	H.default_language = all_languages["English"]
	if(prob(10))
		H.add_language("Russian")
		H << "<b>So you know russian language.</b>"

/datum/job/nato_comdeputy
	title = "Platoon Sergeant"
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	head_position = 1
	selection_color = "#2d2d63"
	outfit_type = /decl/hierarchy/outfit/job/us_depplleader
	spawn_location = "JoinLateNATO"

/datum/job/nato_commander/update_character(var/mob/living/carbon/human/H)
	H.add_language("English")
	H.default_language = all_languages["English"]
	if(prob(20))
		H.add_language("Russian")
		H << "<b>So you know russian language.</b>"

/datum/job/nato_messenger
	title = "Messenger"
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	head_position = 1
	selection_color = "#2d2d63"
	outfit_type = /decl/hierarchy/outfit/job/us_messenger
	spawn_location = "JoinLateNATO"

/datum/job/nato_messenger/update_character(var/mob/living/carbon/human/H)
	H.add_language("English")
	H.default_language = all_languages["English"]
	if(prob(50))
		H.add_language("Russian")
		H << "<b>So you know russian language.</b>"

/datum/job/nato_squadleader
	title = "Squad Leader"
	faction = "Station"
	total_positions = 3
	spawn_positions = 3
	head_position = 1
	selection_color = "#4c4ca5"
	outfit_type = /decl/hierarchy/outfit/job/us_sqleader
	spawn_location = "JoinLateNATO"

/datum/job/nato_squadleader/update_character(var/mob/living/carbon/human/H)
	H.add_language("English")
	H.default_language = all_languages["English"]
	if(prob(50))
		H.add_language("Russian")
		H << "<b>So you know russian language.</b>"

/datum/job/nato_fireteamleader
	title = "Fireteam Leader"
	faction = "Station"
	total_positions = 6
	spawn_positions = 6
	head_position = 1
	selection_color = "#4c4ca5"
	outfit_type = /decl/hierarchy/outfit/job/us_ftleader
//	access = list(access_nato_soldier, access_nato_medic, access_nato_surgerist, access_nato_engineer, access_nato_heavy_weapon, access_nato_cook, access_nato_squad_leader, access_nato_commander)
//	minimal_access = list(access_nato_soldier, access_nato_medic, access_nato_surgerist, access_nato_engineer, access_nato_heavy_weapon, access_nato_cook, access_nato_squad_leader, access_nato_commander)
	spawn_location = "JoinLateNATO"

/datum/job/nato_fireteamleader/update_character(var/mob/living/carbon/human/H)
	H.add_language("English")
	H.default_language = all_languages["English"]
	if(prob(6))
		H.add_language("Russian")
		H << "<b>So you know russian language.</b>"

/datum/job/nato_fireteamlmg
	title = "Fireteam Designated Machinegunner"
	faction = "Station"
	total_positions = 6
	spawn_positions = 6
	head_position = 1
	selection_color = "#4c4ca5"
	outfit_type = /decl/hierarchy/outfit/job/us_ftlmg
//	access = list(access_nato_soldier, access_nato_medic, access_nato_surgerist, access_nato_engineer, access_nato_heavy_weapon, access_nato_cook, access_nato_squad_leader, access_nato_commander)
//	minimal_access = list(access_nato_soldier, access_nato_medic, access_nato_surgerist, access_nato_engineer, access_nato_heavy_weapon, access_nato_cook, access_nato_squad_leader, access_nato_commander)
	spawn_location = "JoinLateNATO"

/datum/job/nato_fireteamlmg/update_character(var/mob/living/carbon/human/H)
	H.add_language("English")
	H.default_language = all_languages["English"]
	if(prob(3))
		H.add_language("Russian")
		H << "<b>So you know russian language.</b>"

/datum/job/nato_fireteamammo
	title = "Fireteam Designated Machinegunner Assistant"
	faction = "Station"
	total_positions = 6
	spawn_positions = 6
	head_position = 1
	selection_color = "#4c4ca5"
	outfit_type = /decl/hierarchy/outfit/job/us_ftlmgsup
//	access = list(access_nato_soldier, access_nato_medic, access_nato_surgerist, access_nato_engineer, access_nato_heavy_weapon, access_nato_cook, access_nato_squad_leader, access_nato_commander)
//	minimal_access = list(access_nato_soldier, access_nato_medic, access_nato_surgerist, access_nato_engineer, access_nato_heavy_weapon, access_nato_cook, access_nato_squad_leader, access_nato_commander)
	spawn_location = "JoinLateNATO"

/datum/job/nato_fireteamammo/update_character(var/mob/living/carbon/human/H)
	H.add_language("English")
	H.default_language = all_languages["English"]
	if(prob(3))
		H.add_language("Russian")
		H << "<b>So you know russian language.</b>"

/datum/job/nato_fireteamscout
	title = "Fireteam Rifleman"
	faction = "Station"
	total_positions = 6
	spawn_positions = 6
	head_position = 1
	outfit_type = /decl/hierarchy/outfit/job/us_ftrifleman
	selection_color = "#4c4ca5"
//	access = list(access_nato_soldier, access_nato_medic, access_nato_surgerist, access_nato_engineer, access_nato_heavy_weapon, access_nato_cook, access_nato_squad_leader, access_nato_commander)
//	minimal_access = list(access_nato_soldier, access_nato_medic, access_nato_surgerist, access_nato_engineer, access_nato_heavy_weapon, access_nato_cook, access_nato_squad_leader, access_nato_commander)
	spawn_location = "JoinLateNATO"

/datum/job/nato_fireteamscout/update_character(var/mob/living/carbon/human/H)
	H.add_language("English")
	H.default_language = all_languages["English"]
	if(prob(6))
		H.add_language("Russian")
		H << "<b>So you know russian language.</b>"

/datum/job/nato_combatmedic
	title = "Field Medic"
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	head_position = 1
	selection_color = "#4c4ca5"
	outfit_type = /decl/hierarchy/outfit/job/us_commedic
//	access = list(access_nato_soldier, access_nato_medic, access_nato_surgerist, access_nato_engineer, access_nato_heavy_weapon, access_nato_cook, access_nato_squad_leader, access_nato_commander)
//	minimal_access = list(access_nato_soldier, access_nato_medic, access_nato_surgerist, access_nato_engineer, access_nato_heavy_weapon, access_nato_cook, access_nato_squad_leader, access_nato_commander)
	spawn_location = "JoinLateNATO"


/datum/job/nato_combatmedic/update_character(var/mob/living/carbon/human/H)
	H.add_language("English")
	H.default_language = all_languages["English"]
	if(prob(10))
		H.add_language("Russian")
		H << "<b>So you know russian language.</b>"

/datum/job/nato_corpsman
	title = "Hospital Corpsman"
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	head_position = 1
	selection_color = "#4c4ca5"
	outfit_type = /decl/hierarchy/outfit/job/us_doc
//	access = list(access_nato_soldier, access_nato_medic, access_nato_surgerist, access_nato_engineer, access_nato_heavy_weapon, access_nato_cook, access_nato_squad_leader, access_nato_commander)
//	minimal_access = list(access_nato_soldier, access_nato_medic, access_nato_surgerist, access_nato_engineer, access_nato_heavy_weapon, access_nato_cook, access_nato_squad_leader, access_nato_commander)
	spawn_location = "JoinLateNATO"


/datum/job/nato_corpsman/update_character(var/mob/living/carbon/human/H)
	H.add_language("English")
	H.default_language = all_languages["English"]
	if(prob(10))
		H.add_language("Russian")
		H << "<b>So you know russian language.</b>"

/datum/job/nato_marksman
	title = "Designated Marksman"
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	head_position = 1
	selection_color = "#4c4ca5"
	outfit_type = /decl/hierarchy/outfit/job/us_dm
//	access = list(access_nato_soldier, access_nato_medic, access_nato_surgerist, access_nato_engineer, access_nato_heavy_weapon, access_nato_cook, access_nato_squad_leader, access_nato_commander)
//	minimal_access = list(access_nato_soldier, access_nato_medic, access_nato_surgerist, access_nato_engineer, access_nato_heavy_weapon, access_nato_cook, access_nato_squad_leader, access_nato_commander)
	spawn_location = "JoinLateNATO"

/datum/job/nato_marksman/update_character(var/mob/living/carbon/human/H)
	H.add_language("English")
	H.default_language = all_languages["English"]
	if(prob(10))
		H.add_language("Russian")
		H << "<b>So you know russian language.</b>"