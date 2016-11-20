/obj/item/weapon/anprc
	name = "AN/PRC-77"
	desc = "That's the military shortwave portable radiostation"
	w_class = 5
	randpixel = 0
	icon = 'icons/obj/weapons.dmi'
	slot_flags = SLOT_BACK
	icon_state = "an/prc77"
	force = 10

/obj/item/weapon/anprc/attack_self(mob/user as mob)
	user << "<span class='notice'>[src] You begin to set up the radio.</span>"
	sleep(10)
	qdel(src)
	user << "<span class='notice'>[src] You've setted up the radio!</span>"
	new /obj/item/device/radio/anprc(usr.loc)

/obj/item/device/radio/anprc
	name = "AN/PRC-77"
	desc = "That's the military shortwave portable radiostation"
	icon = 'icons/obj/weapons.dmi'
	icon_state = "an/prc77-armed"
	randpixel = 0
	anchored = 1
	w_class = 5
	canhear_range = 1
	flags = CONDUCT | NOBLOODY
	frequency = 1691

/obj/item/device/radio/anprc/verb/foldup()
	set name = "Fold up the radio"
	set category = "Object"
	set src in usr
	if(usr.stat || usr.restrained()) return
	qdel(src)
	new /obj/item/weapon/anprc(usr.loc)


/obj/item/weapon/r109d
	name = "R-109D"
	desc = "That's the military shortwave portable radiostation"
	w_class = 5
	randpixel = 0
	icon = 'icons/obj/weapons.dmi'
	slot_flags = SLOT_BACK
	icon_state = "r109d"
	force = 10

/obj/item/weapon/r109d/attack_self(mob/user as mob)
	user << "<span class='notice'>[src] You begin to set up the radio.</span>"
	sleep(10)
	qdel(src)
	new /obj/item/device/radio/r109d(usr.loc)
	user << "<span class='notice'>[src] You've setted up the radio!</span>"


/obj/item/device/radio/r109d
	name = "R-109D"
	desc = "That's the military shortwave portable radiostation"
	icon = 'icons/obj/weapons.dmi'
	icon_state = "r109d-armed"
	randpixel = 0
	anchored = 1
	w_class = 5
	canhear_range = 1
	flags = CONDUCT | NOBLOODY
	frequency = 1343

/obj/item/device/radio/r109d/verb/foldup()
	set name = "Fold up the radio"
	set category = "Object"
	set src in usr
	if(usr.stat || usr.restrained()) return
	qdel(src)
	new /obj/item/weapon/r109d(usr.loc)


