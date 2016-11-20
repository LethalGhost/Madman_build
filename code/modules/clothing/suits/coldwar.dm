/obj/item/clothing/suit/storage/vest/vest6b2
	name = "armor vest"
	icon_state = "6b2"
	desc = "That's the 6B2, an armor vest used by Soviet Army."
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	armor = list(melee = 25, bullet = 30, laser = 20, energy = 30, bomb = 40, bio = 0, rad = 0)

/obj/item/clothing/suit/storage/vest/vest6b2/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 1

/obj/item/clothing/suit/storage/vest/vest6b3
	name = "webbed armor vest"
	icon_state = "6b3"
	desc = "That's the 6B3, a modificated 6B2 armor vest used by Soviet Army."
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	armor = list(melee = 35, bullet = 50, laser = 20, energy = 30, bomb = 50, bio = 0, rad = 0)

/obj/item/clothing/suit/storage/vest/vest6b3/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 2

/obj/item/clothing/suit/storage/vest/vest6b2webbed
	name = "webbed armor vest"
	icon_state = "6b2_webbed"
	desc = "That's the 6B2, an armor vest used by Soviet Army. This one has a Chi-Com webbing vest"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	armor = list(melee = 30, bullet = 30, laser = 20, energy = 30, bomb = 40, bio = 0, rad = 0)

/obj/item/clothing/suit/storage/vest/vest6b2webbed/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 1

/obj/item/clothing/suit/storage/vest/chicom
	name = "webbing vest"
	icon_state = "chicom"
	desc = "That's the Chi-Com, a chinese webbing vest used by Soviet Army. Also known as 'Lifchik'"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	armor = list(melee = 20, bullet = 10, laser = 20, energy = 30, bomb = 20, bio = 0, rad = 0)

/obj/item/clothing/suit/storage/vest/uswebvest
	name = "webbing vest"
	icon_state = "usmc_webvest"
	desc = "That's the generic webbing vest used by USMC."
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	armor = list(melee = 25, bullet = 15, laser = 0, energy = 30, bomb = 15, bio = 0, rad = 0)

/obj/item/clothing/suit/storage/vest/uswebvestbig
	name = "heavywebbing vest"
	icon_state = "usmc_webvest-big"
	desc = "That's the generic webbing vest used by USMC."
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	armor = list(melee = 25, bullet = 15, laser = 0, energy = 30, bomb = 15, bio = 0, rad = 0)

/obj/item/clothing/suit/storage/vest/uswebvestbig/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 1

/obj/item/clothing/suit/storage/vest/usflak
	name = "M59 flak jacket"
	icon_state = "usmc_flakvest"
	desc = "That's the flak jacket used by USMC."
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	armor = list(melee = 25, bullet = 20, laser = 20, energy = 30, bomb = 40, bio = 0, rad = 0)

/obj/item/clothing/suit/storage/vest/pasgt
	name = "PASGT M81 vest"
	icon_state = "pasgt_olive"
	desc = "That's the armor vest used by USMC."
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	armor = list(melee = 25, bullet = 40, laser = 20, energy = 30, bomb = 40, bio = 0, rad = 0)

/obj/item/clothing/suit/storage/vest/pasgt/woodland
	icon_state = "pasgt_woodland"
