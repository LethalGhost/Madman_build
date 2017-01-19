///////////////////////////////
/datum/job/warpac_commander
	title = "Komandir Vzvoda"
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	head_position = 1
	whitelist_only = 1
	selection_color = "#530909"
	outfit_type = /decl/hierarchy/outfit/job/sa_pltcom
//	access = list(access_ru_soldier, access_ru_medic, access_ru_surgerist, access_ru_engineer, access_ru_heavy_weapon, access_ru_squad_leader, access_ru_cook, access_ru_commander)
//	minimal_access = list(access_ru_soldier, access_ru_medic, access_ru_surgerist, access_ru_engineer, access_ru_heavy_weapon, access_ru_squad_leader, access_ru_cook, access_ru_commander)
	spawn_location = "JoinLateSA"

/datum/job/commander_russian/update_character(var/mob/living/carbon/human/H)
	H.add_language("Russian")
	H.default_language = all_languages["Russian"]
	if(prob(50))
		H.add_language("English")
		H << "<b>Yay! You know english language!</b>"


/datum/job/warpac_comdeputy
	title = "Zamestitel' comandira vzvoda"
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	head_position = 1
	whitelist_only = 1
	selection_color = "#530909"
	outfit_type = /decl/hierarchy/outfit/job/sa_pltcomdep
//	access = list(access_ru_soldier, access_ru_medic, access_ru_surgerist, access_ru_engineer, access_ru_heavy_weapon, access_ru_squad_leader, access_ru_cook, access_ru_commander)
//	minimal_access = list(access_ru_soldier, access_ru_medic, access_ru_surgerist, access_ru_engineer, access_ru_heavy_weapon, access_ru_squad_leader, access_ru_cook, access_ru_commander)
	spawn_location = "JoinLateSA"

/datum/job/commander_russian/update_character(var/mob/living/carbon/human/H)
	H.add_language("Russian")
	H.default_language = all_languages["Russian"]
	if(prob(80))
		H.add_language("English")
		H << "<b>Yay! You know english language!</b>"

///////////////////////////////
/datum/job/warpac_squadleader
	title = "Komandir Otdeleniya"
	faction = "Station"
	total_positions = 3
	spawn_positions = 3
	head_position = 1
	whitelist_only = 1
	selection_color = "#770e0e"
	outfit_type = /decl/hierarchy/outfit/job/sa_com
//	access = list(access_ru_soldier, access_ru_medic, access_ru_surgerist, access_ru_engineer, access_ru_heavy_weapon, access_ru_squad_leader, access_ru_cook)
//	minimal_access = list(access_ru_soldier, access_ru_medic, access_ru_surgerist, access_ru_engineer, access_ru_heavy_weapon, access_ru_squad_leader, access_ru_cook)
	spawn_location = "JoinLateSA"

/datum/job/warpac_squadleadern/update_character(var/mob/living/carbon/human/H)
	H.add_language("Russian")
	H.default_language = all_languages["Russian"]
	if(prob(15))
		H.add_language("English")
		H << "<b>Yay! You know english language!</b>"

////////////////////////
/datum/job/warpac_medic
	title = "Sanitar"
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	whitelist_only = 1
	selection_color = "#770e0e"
	outfit_type = /decl/hierarchy/outfit/job/sa_medic
	spawn_location = "JoinLateSA"

/datum/job/warpac_medic/update_character(var/mob/living/carbon/human/H)
	H.add_language("Russian")
	H.default_language = all_languages["Russian"]
	if(prob(10))
		H.add_language("English")
		H << "<b>Yay! You know english language!</b>"


/datum/job/warpac_surgeon
	title = "Polevoi Doktor"
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	whitelist_only = 1
	selection_color = "#770e0e"
	outfit_type = /decl/hierarchy/outfit/job/sa_doc
	spawn_location = "JoinLateSA"

/datum/job/warpac_surgeon/update_character(var/mob/living/carbon/human/H)
	H.add_language("Russian")
	H.default_language = all_languages["Russian"]
	if(prob(20))
		H.add_language("English")
		H << "<b>Yay! You know english language!</b>"

///////////////////////////////
/datum/job/warpac_lmg
	title = "Pulemetchik"
	faction = "Station"
	total_positions = 3
	whitelist_only = 1
	spawn_positions = 3
	selection_color = "#770e0e"
	outfit_type = /decl/hierarchy/outfit/job/sa_lmg
	spawn_location = "JoinLateSA"

/datum/job/warpac_lmg/update_character(var/mob/living/carbon/human/H)
	H.add_language("Russian")
	H.default_language = all_languages["Russian"]
	if(prob(3))
		H.add_language("English")
		H << "<b>Yay! You know english language!</b>"
//////////////////////////

/datum/job/warpac_private
	title = "Strelok"
	faction = "Station"
	total_positions = 9
	spawn_positions = 9
	whitelist_only = 1
	selection_color = "#770e0e"
	outfit_type = /decl/hierarchy/outfit/job/sa_rifleman
//	access = list(access_ru_soldier)
//	minimal_access = list(access_ru_soldier)
	spawn_location = "JoinLateSA"

/datum/job/warpac_private/update_character(var/mob/living/carbon/human/H)
	H.add_language("Russian")
	H.default_language = all_languages["Russian"]
	if(prob(3))
		H.add_language("English")
		H << "<b>Yay! You know english language!</b>"

/datum/job/warpac_corporal
	title = "Starshiy Strelok"
	faction = "Station"
	total_positions = 3
	spawn_positions = 3
	whitelist_only = 1
	selection_color = "#770e0e"
	outfit_type = /decl/hierarchy/outfit/job/sa_comdeputy
//	access = list(access_ru_soldier)
//	minimal_access = list(access_ru_soldier)
	spawn_location = "JoinLateSA"

/datum/job/warpac_corporal/update_character(var/mob/living/carbon/human/H)
	H.add_language("Russian")
	H.default_language = all_languages["Russian"]
	if(prob(3))
		H.add_language("English")
		H << "<b>Yay! You know english language!</b>"

/datum/job/warpac_radio
	title = "Radiotelefonist"
	faction = "Station"
	total_positions = 3
	spawn_positions = 3
	whitelist_only = 1
	selection_color = "#770e0e"
//	access = list(access_ru_soldier)
//	minimal_access = list(access_ru_soldier)
	spawn_location = "JoinLateSA"
	outfit_type = /decl/hierarchy/outfit/job/sa_radio

/datum/job/warpac_radio/update_character(var/mob/living/carbon/human/H)
	H.add_language("Russian")
	H.default_language = all_languages["Russian"]
	if(prob(3))
		H.add_language("English")
		H << "<b>Yay! You know english language!</b>"


/datum/job/warpac_rpg
	title = "Granatometchik"
	faction = "Station"
	total_positions = 3
	spawn_positions = 3
	whitelist_only = 1
	selection_color = "#770e0e"
//	access = list(access_ru_soldier)
//	minimal_access = list(access_ru_soldier)
	spawn_location = "JoinLateSA"
	outfit_type = /decl/hierarchy/outfit/job/sa_rpg

/datum/job/warpac_gren/update_character(var/mob/living/carbon/human/H)
	H.add_language("Russian")
	H.default_language = all_languages["Russian"]
	if(prob(3))
		H.add_language("English")
		H << "<b>Yay! You know english language!</b>"

/datum/job/warpac_rpgsup
	title = "Pomoshnik Granatometchika"
	faction = "Station"
	total_positions = 3
	spawn_positions = 3
	whitelist_only = 1
	selection_color = "#770e0e"
//	access = list(access_ru_soldier)
//	minimal_access = list(access_ru_soldier)
	spawn_location = "JoinLateSA"
	outfit_type = /decl/hierarchy/outfit/job/sa_rpgassist

/datum/job/warpac_rpgsup/update_character(var/mob/living/carbon/human/H)
	H.add_language("Russian")
	H.default_language = all_languages["Russian"]
	if(prob(3))
		H.add_language("English")
		H << "<b>Yay! You know english language!</b>"

/datum/job/warpac_prap
	title = "Praporshik"
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	whitelist_only = 1
	selection_color = "#770e0e"
//	access = list(access_ru_soldier)
//	minimal_access = list(access_ru_soldier)
	spawn_location = "JoinLateSA"
	outfit_type = /decl/hierarchy/outfit/job/sa_prap

/datum/job/warpac_prap/update_character(var/mob/living/carbon/human/H)
	H.add_language("Russian")
	H.default_language = all_languages["Russian"]
	if(prob(3))
		H.add_language("English")
		H << "<b>Yay! You know english language!</b>"

/datum/job/warpac_saper
	title = "Sapyor"
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	whitelist_only = 1
	selection_color = "#770e0e"
//	access = list(access_ru_soldier)
//	minimal_access = list(access_ru_soldier)
	spawn_location = "JoinLateSA"
	outfit_type = /decl/hierarchy/outfit/job/sa_saper

/datum/job/warpac_prap/update_character(var/mob/living/carbon/human/H)
	H.add_language("Russian")
	H.default_language = all_languages["Russian"]
	if(prob(10))
		H.add_language("English")
		H << "<b>Yay! You know english language!</b>"