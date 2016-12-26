

/obj/item/weapon/r109radio
	icon = 'icons/obj/weapons.dmi'
	name = "R-109 radio kit"
	desc = "That's the bulky radio used by Soviet Infantry."
	slot_flags = SLOT_BACK
	icon_state = "r109d"
	w_class = 4.0
	action_button_name = "Toggle Radio"

	var/obj/item/device/radio/r109d/radio
	var/on = 0

/obj/item/weapon/r109radio/New()
	..()
	slowdown_per_slot[slot_back] = 1
	return

/obj/item/weapon/r109radio/ui_action_click()
	toggle_radio()


/obj/item/weapon/r109radio/verb/toggle_radio()
	set name = "Toggle radio"
	set category = "Object"
	on = !on

	var/mob/living/carbon/human/user = usr
	if(on)
		radio = new(src)
		var/list/L = list("left hand" = slot_l_hand,"right hand" = slot_r_hand)
		if(!user.equip_in_one_of_slots(radio, L))
			on = 0
			user << "<span class='notice'>You need a free hand to hold the radio!</span>"
	else
		//Remove from their hands and put back "into" the tank
		remove_radio(user)
	return

/obj/item/weapon/r109radio/equipped(mob/user, slot)
	if (slot != slot_back)
		remove_radio(user)

/obj/item/weapon/r109radio/proc/remove_radio(mob/user)
	if (radio != null)
		var/mob/living/carbon/human/M = user
		M.u_equip(radio)
	return

/obj/item/weapon/r109radio/Destroy()
	if (radio)
		var/M = get(radio, /mob)
		remove_radio(M)
	..()
	return

// This mister item is intended as an extension of the watertank and always attached to it.
// Therefore, it's designed to be "locked" to the player's hands or extended back onto
// the watertank backpack. Allowing it to be placed elsewhere or created without a parent
// watertank object will likely lead to weird behaviour or runtimes.
/obj/item/device/radio/r109d
	name = "R-109D radio"
	desc = "That's the radio attached to backpack"
	icon = 'icons/obj/radio.dmi'
	icon_state = "milradio"
	randpixel = 0
	anchored = 1
	canhear_range = 1
	flags = CONDUCT | NOBLOODY
	frequency = 1311

	var/obj/item/device/radio/r109d/rad

/obj/item/device/radio/r109d/New(parent_rad)
	..()
	if (!parent_rad || !istype(parent_rad, /obj/item/weapon/r109radio))	//To avoid weird issues from admin spawns
		var/mob/living/carbon/human/M = usr
		M.u_equip(src)
		qdel() //test this -GLLOYDTODO
	else
		rad = parent_rad
		return

/obj/item/device/radio/r109d/dropped(mob/user as mob)
	user << "<span class='notice'>The radio snaps back onto the back pack!</span>"
	rad.on = 0
	qdel(src)



/obj/item/weapon/anprc77
	icon = 'icons/obj/weapons.dmi'
	name = "AN/PRC-77 radio kit"
	desc = "That's the bulky radio used by US military."
	slot_flags = SLOT_BACK
	icon_state = "an/prc77"
	w_class = 4.0
	action_button_name = "Toggle Radio"

	var/obj/item/device/radio/anprc77/radio
	var/on = 0

/obj/item/weapon/anprc77/New()
	..()
	slowdown_per_slot[slot_back] = 1
	return

/obj/item/weapon/anprc77/ui_action_click()
	toggle_radio()


/obj/item/weapon/anprc77/verb/toggle_radio()
	set name = "Toggle radio"
	set category = "Object"
	on = !on

	var/mob/living/carbon/human/user = usr
	if(on)
		radio = new(src)
		var/list/L = list("left hand" = slot_l_hand,"right hand" = slot_r_hand)
		if(!user.equip_in_one_of_slots(radio, L))
			on = 0
			user << "<span class='notice'>You need a free hand to hold the radio!</span>"
	else
		//Remove from their hands and put back "into" the tank
		remove_radio(user)
		return

/obj/item/weapon/anprc77/equipped(mob/user, slot)
	if (slot != slot_back)
		remove_radio(user)

/obj/item/weapon/anprc77/proc/remove_radio(mob/user)
	if (radio != null)
		var/mob/living/carbon/human/M = user
		M.u_equip(radio)
	return

/obj/item/weapon/anprc77/Destroy()
	if (radio)
		var/M = get(radio, /mob)
		remove_radio(M)
	..()
	return

// This mister item is intended as an extension of the watertank and always attached to it.
// Therefore, it's designed to be "locked" to the player's hands or extended back onto
// the watertank backpack. Allowing it to be placed elsewhere or created without a parent
// watertank object will likely lead to weird behaviour or runtimes.
/obj/item/device/radio/anprc77
	name = "AN/PRC-77 radio"
	desc = "That's the radio attached to backpack"
	icon = 'icons/obj/radio.dmi'
	icon_state = "milradio"
	randpixel = 0
	anchored = 1
	canhear_range = 1
	flags = CONDUCT | NOBLOODY
	frequency = 1332

	var/obj/item/device/radio/anprc77/rad

/obj/item/device/radio/anprc77/New(parent_rad)
	..()
	if (!parent_rad || !istype(parent_rad, /obj/item/weapon/r109radio))	//To avoid weird issues from admin spawns
		var/mob/living/carbon/human/M = usr
		M.u_equip(src)
		qdel() //test this -GLLOYDTODO
	else
		rad = parent_rad
		return

/obj/item/device/radio/anprc77/dropped(mob/user as mob)
	user << "<span class='notice'>The radio snaps back onto the back pack!</span>"
	rad.on = 0
	qdel(src)

