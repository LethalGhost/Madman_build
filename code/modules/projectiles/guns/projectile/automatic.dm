/obj/item/weapon/gun/projectile/automatic //Hopefully someone will find a way to make these fire in bursts or something. --Superxpdude
	name = "prototype SMG"
	desc = "A protoype lightweight, fast firing gun. Uses 9mm rounds."
	icon_state = "saber"	//ugly
	w_class = 3
	load_method = SPEEDLOADER //yup. until someone sprites a magazine for it.
	max_shells = 22
	caliber = "9mm"
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 2)
	slot_flags = SLOT_BELT
	ammo_type = /obj/item/ammo_casing/c9mm
	multi_aim = 1
	burst_delay = 2

	//machine pistol, easier to one-hand with
	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, requires_two_hands=0, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=4,    requires_two_hands=1, burst_accuracy=list(0,-1,-1),       dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="short bursts",   burst=5, fire_delay=null, move_delay=4,    requires_two_hands=2, burst_accuracy=list(0,-1,-1,-1,-2), dispersion=list(0.6, 0.6, 1.0, 1.0, 1.2)),
		)

/obj/item/weapon/gun/projectile/automatic/mini_uzi
	name = ".45 machine pistol"
	desc = "An uncommon machine pistol, sometimes refered to as an 'uzi' by the backwater spacers it is often associated with, though its origins have been lost to time. Uses .45 rounds."
	icon_state = "mini-uzi"
	item_state = "wt550"
	w_class = 3
	load_method = MAGAZINE
	caliber = ".45"
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2, TECH_ILLEGAL = 3)
	slot_flags = SLOT_BELT
	ammo_type = /obj/item/ammo_casing/c45
	allowed_magazines = /obj/item/ammo_magazine/c45uzi //more damage compared to the wt550, smaller mag size

	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, requires_two_hands=0, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=4,    requires_two_hands=1, burst_accuracy=list(0,-1,-1),       dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="short bursts",   burst=5, fire_delay=null, move_delay=4,    requires_two_hands=2, burst_accuracy=list(0,-1,-1,-1,-2), dispersion=list(0.6, 0.6, 1.0, 1.0, 1.2)),
		)

/obj/item/weapon/gun/projectile/automatic/mini_uzi/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "mini-uzi"
	else
		icon_state = "mini-uzi-empty"

/obj/item/weapon/gun/projectile/automatic/c20r
	name = "submachine gun"
	desc = "The C-20r is a lightweight and rapid firing SMG, for when you REALLY need someone dead. Uses 10mm rounds. Has a 'Scarborough Arms - Per falcis, per pravitas' buttstamp."
	icon_state = "c20r"
	item_state = "c20r"
	w_class = 4
	force = 10
	caliber = "10mm"
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2, TECH_ILLEGAL = 8)
	slot_flags = SLOT_BELT|SLOT_BACK
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/a10mm
	allowed_magazines = /obj/item/ammo_magazine/a10mm
	auto_eject = 1
	auto_eject_sound = 'sound/weapons/smg_empty_alarm.ogg'
	requires_two_hands = 1

	//SMG
	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, requires_two_hands=2, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=4,    requires_two_hands=3, burst_accuracy=list(0,-1,-1),       dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="short bursts",   burst=5, fire_delay=null, move_delay=4,    requires_two_hands=4, burst_accuracy=list(0,-1,-1,-1,-2), dispersion=list(0.6, 0.6, 1.0, 1.0, 1.2)),
		)

/obj/item/weapon/gun/projectile/automatic/c20r/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "c20r-[round(ammo_magazine.stored_ammo.len,4)]"
	else
		icon_state = "c20r"
	return

/obj/item/weapon/gun/projectile/automatic/sts35
	name = "assault rifle"
	desc = "The rugged STS-35 is a durable automatic weapon of a make popular on the frontier worlds. The serial number has been scratched off. Uses 7.62mm rounds."
	icon_state = "arifle"
	item_state = null
	w_class = 5
	force = 10
	caliber = "a762"
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 1, TECH_ILLEGAL = 5)
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/c762
	allowed_magazines = /obj/item/ammo_magazine/c762
	requires_two_hands = 3
	wielded_item_state = "arifle-wielded"

	//Assault rifle, burst fire degrades quicker than SMG, worse one-handing penalty, slightly increased move delay
	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, requires_two_hands=4, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=6,    requires_two_hands=5, burst_accuracy=list(0,-1,-1),       dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="short bursts",   burst=5, fire_delay=null, move_delay=6,    requires_two_hands=6, burst_accuracy=list(0,-1,-2,-3,-3), dispersion=list(0.6, 1.0, 1.2, 1.2, 1.5)),
		)

/obj/item/weapon/gun/projectile/automatic/sts35/update_icon()
	icon_state = (ammo_magazine)? "arifle" : "arifle-empty"
	wielded_item_state = (ammo_magazine)? "arifle-wielded" : "arifle-wielded-empty"
	..()

/obj/item/weapon/gun/projectile/automatic/wt550
	name = "9mm machine pistol"
	desc = "The W-T 550 Saber is a cheap self-defense weapon, mass-produced by Ward-Takahashi for paramilitary and private use. Uses 9mm rounds."
	icon_state = "wt550"
	item_state = "wt550"
	w_class = 3
	caliber = "9mm"
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2)
	slot_flags = SLOT_BELT
	ammo_type = /obj/item/ammo_casing/c9mm/rubber
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/mc9mmt/rubber
	allowed_magazines = /obj/item/ammo_magazine/mc9mmt

	//machine pistol, like SMG but easier to one-hand with
	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, requires_two_hands=0, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=4,    requires_two_hands=1, burst_accuracy=list(0,-1,-1),       dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="short bursts",   burst=5, fire_delay=null, move_delay=4,    requires_two_hands=2, burst_accuracy=list(0,-1,-1,-1,-2), dispersion=list(0.6, 0.6, 1.0, 1.0, 1.2)),
		)

/obj/item/weapon/gun/projectile/automatic/wt550/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "wt550-[round(ammo_magazine.stored_ammo.len,4)]"
	else
		icon_state = "wt550"
	return

/obj/item/weapon/gun/projectile/automatic/z8
	name = "bullpup assault rifle"
	desc = "The Z8 Bulldog is an older model bullpup carbine, made by the now defunct Zendai Foundries. Uses armor piercing 5.56mm rounds. Makes you feel like a space marine when you hold it."
	icon_state = "carbine"
	item_state = "z8carbine"
	w_class = 5
	force = 10
	caliber = "a556"
	origin_tech = list(TECH_COMBAT = 8, TECH_MATERIAL = 3)
	ammo_type = /obj/item/ammo_casing/a556
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/a556
	allowed_magazines = /obj/item/ammo_magazine/a556
	auto_eject = 1
	auto_eject_sound = 'sound/weapons/smg_empty_alarm.ogg'
	requires_two_hands = 5
	burst_delay = 4
	wielded_item_state = "z8carbine-wielded"
	//would have requires_two_hands=4,5 but the added weight of a grenade launcher makes one-handing even harder
	firemodes = list(
		list(mode_name="semiauto",       burst=1,    fire_delay=0,    move_delay=null, use_launcher=null, requires_two_hands=5, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3,    fire_delay=null, move_delay=6,    use_launcher=null, requires_two_hands=6, burst_accuracy=list(0,-1,-1), dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="fire grenades",  burst=null, fire_delay=null, move_delay=null, use_launcher=1,    requires_two_hands=5, burst_accuracy=null, dispersion=null)
		)

	var/use_launcher = 0
	var/obj/item/weapon/gun/launcher/grenade/underslung/launcher

/obj/item/weapon/gun/projectile/automatic/z8/New()
	..()
	launcher = new(src)

/obj/item/weapon/gun/projectile/automatic/z8/attackby(obj/item/I, mob/user)
	if((istype(I, /obj/item/weapon/grenade)))
		launcher.load(I, user)
	else
		..()

/obj/item/weapon/gun/projectile/automatic/z8/attack_hand(mob/user)
	if(user.get_inactive_hand() == src && use_launcher)
		launcher.unload(user)
	else
		..()

/obj/item/weapon/gun/projectile/automatic/z8/Fire(atom/target, mob/living/user, params, pointblank=0, reflex=0)
	if(use_launcher)
		launcher.Fire(target, user, params, pointblank, reflex)
		if(!launcher.chambered)
			switch_firemodes() //switch back automatically
	else
		..()

/obj/item/weapon/gun/projectile/automatic/z8/update_icon()
	..()
	if(ammo_magazine)
		if(ammo_magazine.stored_ammo.len)
			icon_state = "carbine-loaded"
		else
			icon_state = "carbine-empty"
	else
		icon_state = "carbine"
	return

/obj/item/weapon/gun/projectile/automatic/z8/examine(mob/user)
	..()
	if(launcher.chambered)
		user << "\The [launcher] has \a [launcher.chambered] loaded."
	else
		user << "\The [launcher] is empty."

/obj/item/weapon/gun/projectile/automatic/l6_saw
	name = "light machine gun"
	desc = "A rather traditionally made L6 SAW with a pleasantly lacquered wooden pistol grip. Has 'Aussec Armoury- 2531' engraved on the reciever." //probably should refluff this
	icon_state = "l6closed100"
	item_state = "l6closedmag"
	w_class = 5
	force = 10
	slot_flags = 0
	max_shells = 50
	caliber = "a762"
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 1, TECH_ILLEGAL = 2)
	slot_flags = 0 //need sprites for SLOT_BACK
	ammo_type = /obj/item/ammo_casing/a762
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/box/a762
	allowed_magazines = list(/obj/item/ammo_magazine/box/a762, /obj/item/ammo_magazine/c762)
	requires_two_hands = 6

	//LMG, better sustained fire accuracy than assault rifles (comparable to SMG), higer move delay and one-handing penalty
	//No single-shot or 3-round-burst modes since using this weapon should come at a cost to flexibility.
	firemodes = list(
		list(mode_name="short bursts",	burst=5, move_delay=12, requires_two_hands=8, burst_accuracy = list(0,-1,-1,-2,-2),          dispersion = list(0.6, 1.0, 1.0, 1.0, 1.2)),
		list(mode_name="long bursts",	burst=8, move_delay=15, requires_two_hands=9, burst_accuracy = list(0,-1,-1,-2,-2,-2,-3,-3), dispersion = list(1.0, 1.0, 1.0, 1.0, 1.2)),
		)

	var/cover_open = 0

/obj/item/weapon/gun/projectile/automatic/l6_saw/mag
	magazine_type = /obj/item/ammo_magazine/c762

/obj/item/weapon/gun/projectile/automatic/l6_saw/special_check(mob/user)
	if(cover_open)
		user << "<span class='warning'>[src]'s cover is open! Close it before firing!</span>"
		return 0
	return ..()

/obj/item/weapon/gun/projectile/automatic/l6_saw/proc/toggle_cover(mob/user)
	cover_open = !cover_open
	user << "<span class='notice'>You [cover_open ? "open" : "close"] [src]'s cover.</span>"
	update_icon()

/obj/item/weapon/gun/projectile/automatic/l6_saw/attack_self(mob/user as mob)
	if(cover_open)
		toggle_cover(user) //close the cover
	else
		return ..() //once closed, behave like normal

/obj/item/weapon/gun/projectile/automatic/l6_saw/attack_hand(mob/user as mob)
	if(!cover_open && user.get_inactive_hand() == src)
		toggle_cover(user) //open the cover
	else
		return ..() //once open, behave like normal

/obj/item/weapon/gun/projectile/automatic/l6_saw/update_icon()
	if(istype(ammo_magazine, /obj/item/ammo_magazine/box))
		icon_state = "l6[cover_open ? "open" : "closed"][round(ammo_magazine.stored_ammo.len, 25)]"
		item_state = "l6[cover_open ? "open" : "closed"]"
	else if(ammo_magazine)
		icon_state = "l6[cover_open ? "open" : "closed"]mag"
		item_state = "l6[cover_open ? "open" : "closed"]mag"
	else
		icon_state = "l6[cover_open ? "open" : "closed"]-empty"
		item_state = "l6[cover_open ? "open" : "closed"]-empty"
	..()

/obj/item/weapon/gun/projectile/automatic/l6_saw/load_ammo(var/obj/item/A, mob/user)
	if(!cover_open)
		user << "<span class='warning'>You need to open the cover to load that into [src].</span>"
		return
	..()

/obj/item/weapon/gun/projectile/automatic/l6_saw/unload_ammo(mob/user, var/allow_dump=1)
	if(!cover_open)
		user << "<span class='warning'>You need to open the cover to unload [src].</span>"
		return
	..()


/obj/item/weapon/gun/projectile/automatic/ak74
	name = "AK-74"
	desc = "That's the standard-issue weapon of the Soviet infantry."
	icon_state = "ak74"
	item_state = "ak"
	w_class = 5
	load_method = MAGAZINE
	caliber = "545x39"
	slot_flags = SLOT_BACK
	ammo_type = /obj/item/ammo_casing/a545x39
	allowed_magazines = /obj/item/ammo_magazine/c545x39m
	requires_two_hands = 3
	accuracy = 2
	fire_delay = 3
	wielded_item_state = "ak-wielded"
	fire_sound = 'sound/weapons/gunshot/ak74.wav'
	unload_sound = 'sound/weapons/gunporn/ak74_magout.wav'
	reload_sound = 'sound/weapons/gunporn/ak74_magin.wav'
	cocked_sound = 'sound/weapons/gunporn/ak74_cock.wav'

	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, requires_two_hands=4, burst_accuracy=null, dispersion=null),
		list(mode_name="short bursts", burst=3, fire_delay=null, move_delay=3,    requires_two_hands=5, burst_accuracy=list(1,1,0),       dispersion=list(0.0, 0.3, 0.6)),
		list(mode_name="long bursts",   burst=5, fire_delay=null, move_delay=4,    requires_two_hands=6, burst_accuracy=list(1,1,0,-1,-2), dispersion=list(0.3, 0.3, 0.6, 1.2, 1.5)),
		)


/obj/item/weapon/gun/projectile/automatic/ak74/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "ak74"
	else
		icon_state = "ak74-empty"

/obj/item/weapon/gun/projectile/automatic/aks74
	name = "AKS-74"
	desc = "That's the standard-issue weapon of the Soviet paratroopers."
	icon_state = "aks74"
	item_state = "ak"
	w_class = 4
	load_method = MAGAZINE
	caliber = "545x39"
	slot_flags = SLOT_BACK
	ammo_type = /obj/item/ammo_casing/a545x39
	allowed_magazines = /obj/item/ammo_magazine/c545x39m
	requires_two_hands = 2
	accuracy = 1
	fire_delay = 2
	wielded_item_state = "ak-wielded"
	fire_sound = 'sound/weapons/gunshot/ak74.wav'
	unload_sound = 'sound/weapons/gunporn/ak74_magout.wav'
	reload_sound = 'sound/weapons/gunporn/ak74_magin.wav'
	cocked_sound = 'sound/weapons/gunporn/ak74_cock.wav'

	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, requires_two_hands=2, burst_accuracy=null, dispersion=null),
		list(mode_name="short bursts", burst=3, fire_delay=null, move_delay=1,    requires_two_hands=3, burst_accuracy=list(1,0,-1),       dispersion=list(0.3, 0.6, 0.6)),
		list(mode_name="long bursts",   burst=5, fire_delay=null, move_delay=2,    requires_two_hands=4, burst_accuracy=list(1,0,0,-1,-2), dispersion=list(0.3, 0.6, 0.6, 1.2, 1.5)),
		)

/obj/item/weapon/gun/projectile/automatic/aks74/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "aks74"
	else
		icon_state = "aks74-empty"

/obj/item/weapon/gun/projectile/automatic/m16a2
	name = "M16A2"
	desc = "That's the standard-issue weapon of the USMC"
	icon_state = "m16a2"
	item_state = "m16"
	w_class = 5
	load_method = MAGAZINE
	caliber = "556x45"
	slot_flags = SLOT_BACK
	ammo_type = /obj/item/ammo_casing/a556x45
	allowed_magazines = /obj/item/ammo_magazine/c556x45m
	requires_two_hands = 4
	accuracy = 2
	fire_delay = 3
	wielded_item_state = "m16-wielded"
	fire_sound = 'sound/weapons/gunshot/m16.wav'
	unload_sound = 'sound/weapons/gunporn/m16_magout.wav'
	reload_sound = 'sound/weapons/gunporn/m16_magin.wav'
	cocked_sound = 'sound/weapons/gunporn/m16_chargeback.wav'

	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, requires_two_hands=4, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=3,    requires_two_hands=5, burst_accuracy=list(2,1,1),       dispersion=list(0.0, 0.3, 0.3)),
		)

/obj/item/weapon/gun/projectile/automatic/m16a2/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "m16a2"
	else
		icon_state = "m16a2-empty"

/obj/item/weapon/gun/projectile/automatic/coltmodel733
	name = "Colt Model 733"
	desc = "That's the standard-issue weapon of the USMC."
	icon_state = "coltmodel733"
	item_state = "m16"
	w_class = 4
	load_method = MAGAZINE
	caliber = "556x45"
	slot_flags = SLOT_BACK
	ammo_type = /obj/item/ammo_casing/a556x45
	allowed_magazines = /obj/item/ammo_magazine/c556x45m
	requires_two_hands = 2
	accuracy = 1
	fire_delay = 2
	wielded_item_state = "m16-wielded"
	fire_sound = 'sound/weapons/gunshot/m16.wav'
	unload_sound = 'sound/weapons/gunporn/m16_magout.wav'
	reload_sound = 'sound/weapons/gunporn/m16_magin.wav'
	cocked_sound = 'sound/weapons/gunporn/m16_chargeback.wav'

	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, requires_two_hands=2, burst_accuracy=null, dispersion=null),
		list(mode_name="short bursts", burst=3, fire_delay=null, move_delay=1,    requires_two_hands=3, burst_accuracy=list(1,0,-1),       dispersion=list(0.3, 0.6, 0.6)),
		list(mode_name="long bursts",   burst=5, fire_delay=null, move_delay=2,    requires_two_hands=4, burst_accuracy=list(1,0,0,-1,-2), dispersion=list(0.3, 0.6, 0.6, 1.2, 1.5)),
		)

/obj/item/weapon/gun/projectile/automatic/coltmodel733/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "coltmodel733"
	else
		icon_state = "coltmodel733-empty"

/obj/item/weapon/gun/projectile/automatic/rpk74
	name = "RPK-74"
	desc = "That's the Ruchnoi Pulemet Kalashnikova, a standard-issue squad assault weapon of the VDV."
	icon_state = "rpk74"
	item_state = "ak"
	slot_flags = SLOT_BACK
	w_class = 5
	force = 10
	max_shells = 45
	caliber = "762x39"
	ammo_type = /obj/item/ammo_casing/a762x39
	load_method = MAGAZINE
	allowed_magazines = /obj/item/ammo_magazine/c762x39r
	requires_two_hands = 6
	accuracy = 3
	wielded_item_state = "ak-wielded"
	fire_sound = 'sound/weapons/gunshot/rpk47.wav'
	unload_sound = 'sound/weapons/gunporn/ak74_magout.wav'
	reload_sound = 'sound/weapons/gunporn/ak74_magin.wav'
	cocked_sound = 'sound/weapons/gunporn/ak74_cock.wav'


	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, requires_two_hands=2, burst_accuracy=null, dispersion=null),
		list(mode_name="short bursts",	burst=5, move_delay=8, requires_two_hands=8, burst_accuracy = list(3,2,2,1,0),          dispersion = list(0.3, 0.3, 0.6, 1.0, 1.2)),
		list(mode_name="long bursts",	burst=8, move_delay=10, requires_two_hands=9, burst_accuracy = list(2,2,2,1,0,-1,-2,-3), dispersion = list(0.3, 0.3, 0.6, 1.0, 1.2)),
		)

/obj/item/weapon/gun/projectile/automatic/rpk74/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "rpk74"
	else
		icon_state = "rpk74-empty"

/obj/item/weapon/gun/projectile/automatic/pkm
	name = "PKM"
	desc = "That's the standard-issue HMG used by Soviet Army."
	icon_state = "pkm"
	item_state = "lmg"
	w_class = 5
	force = 15
	slot_flags = SLOT_BACK
	max_shells = 200
	caliber = "762x54"
	ammo_type = /obj/item/ammo_casing/a762x54
	load_method = MAGAZINE
	allowed_magazines = /obj/item/ammo_magazine/c762x54b
	requires_two_hands = 9
	wielded_item_state = "lmg-wielded"
	unload_sound = 'sound/weapons/gunporn/m249_boxremove.wav'
	reload_sound = 'sound/weapons/gunporn/m249_boxinsert.wav'
	cocked_sound = 'sound/weapons/gunporn/m249_charge.wav'

	firemodes = list(
		list(mode_name="short bursts",	burst=5, move_delay=12, requires_two_hands=8, burst_accuracy = list(0,-1,-1,-2,-2),          dispersion = list(0.6, 1.0, 1.0, 1.0, 1.2)),
		list(mode_name="long bursts",	burst=8, move_delay=15, requires_two_hands=9, burst_accuracy = list(0,-1,-1,-2,-2,-2,-3,-3), dispersion = list(1.0, 1.0, 1.0, 1.0, 1.2)),
		)

	var/cover_open = 0


/obj/item/weapon/gun/projectile/automatic/pkm/special_check(mob/user)
	if(cover_open)
		user << "<span class='warning'>[src]'s cover is open! Close it before firing!</span>"
		return 0
	return ..()

/obj/item/weapon/gun/projectile/automatic/pkm/proc/toggle_cover(mob/user)
	cover_open = !cover_open
	user << "<span class='notice'>You [cover_open ? "open" : "close"] [src]'s cover.</span>"
	update_icon()

/obj/item/weapon/gun/projectile/automatic/pkm/attack_self(mob/user as mob)
	if(cover_open)
		toggle_cover(user) //close the cover
		playsound(user, 'sound/weapons/gunporn/m249_close.wav', 100, 1)
	else
		return ..() //once closed, behave like normal

/obj/item/weapon/gun/projectile/automatic/pkm/attack_hand(mob/user as mob)
	if(!cover_open && user.get_inactive_hand() == src)
		toggle_cover(user) //open the cover
		playsound(user, 'sound/weapons/gunporn/m249_open.wav', 100, 1)
	else
		return ..() //once open, behave like normal

/obj/item/weapon/gun/projectile/automatic/pkm/load_ammo(var/obj/item/A, mob/user)
	if(!cover_open)
		user << "<span class='warning'>You need to open the cover to load that into [src].</span>"
		return
	..()

/obj/item/weapon/gun/projectile/automatic/pkm/unload_ammo(mob/user, var/allow_dump=1)
	if(!cover_open)
		user << "<span class='warning'>You need to open the cover to unload [src].</span>"
		return
	..()

/obj/item/weapon/gun/projectile/automatic/pkm/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "pkm"
	else
		icon_state = "pkm-empty"


/obj/item/weapon/gun/projectile/automatic/m240
	name = "M240"
	desc = "That's the standard-issue LMG used by USMC."
	icon_state = "m240"
	item_state = "lmg"
	w_class = 5
	force = 15
	slot_flags = SLOT_BACK
	max_shells = 100
	caliber = "556x45"
	ammo_type = /obj/item/ammo_casing/a556x45
	load_method = MAGAZINE
	allowed_magazines = /obj/item/ammo_magazine/c556x45b
	requires_two_hands = 8
	wielded_item_state = "lmg-wielded"
	unload_sound = 'sound/weapons/gunporn/m249_boxremove.wav'
	reload_sound = 'sound/weapons/gunporn/m249_boxinsert.wav'
	cocked_sound = 'sound/weapons/gunporn/m249_charge.wav'

	firemodes = list(
		list(mode_name="short bursts",	burst=5, move_delay=10, requires_two_hands=8, burst_accuracy = list(0,-1,-1,-2,-2),          dispersion = list(0.6, 1.0, 1.0, 1.0, 1.2)),
		list(mode_name="long bursts",	burst=8, move_delay=12, requires_two_hands=9, burst_accuracy = list(0,-1,-1,-2,-2,-2,-3,-3), dispersion = list(1.0, 1.0, 1.0, 1.0, 1.2)),
		)

	var/cover_open = 0


/obj/item/weapon/gun/projectile/automatic/m240/special_check(mob/user)
	if(cover_open)
		user << "<span class='warning'>[src]'s cover is open! Close it before firing!</span>"
		return 0
	return ..()

/obj/item/weapon/gun/projectile/automatic/m240/proc/toggle_cover(mob/user)
	cover_open = !cover_open
	user << "<span class='notice'>You [cover_open ? "open" : "close"] [src]'s cover.</span>"
	update_icon()

/obj/item/weapon/gun/projectile/automatic/m240/attack_self(mob/user as mob)
	if(cover_open)
		toggle_cover(user) //close the cover
		playsound(user, 'sound/weapons/gunporn/m249_close.wav', 100, 1)
	else
		return ..() //once closed, behave like normal

/obj/item/weapon/gun/projectile/automatic/m240/attack_hand(mob/user as mob)
	if(!cover_open && user.get_inactive_hand() == src)
		toggle_cover(user) //open the cover
		playsound(user, 'sound/weapons/gunporn/m249_open.wav', 100, 1)
	else
		return ..() //once open, behave like normal

/obj/item/weapon/gun/projectile/automatic/m240/load_ammo(var/obj/item/A, mob/user)
	if(!cover_open)
		user << "<span class='warning'>You need to open the cover to load that into [src].</span>"
		return
	..()

/obj/item/weapon/gun/projectile/automatic/m240/unload_ammo(mob/user, var/allow_dump=1)
	if(!cover_open)
		user << "<span class='warning'>You need to open the cover to unload [src].</span>"
		return
	..()

/obj/item/weapon/gun/projectile/automatic/m240/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "m240"
	else
		icon_state = "m240-empty"

/obj/item/weapon/gun/projectile/automatic/m14
	name = "M14"
	desc = "That's the M14, an outdated service rifle used by USMC."
	icon_state = "m14"
	item_state = "m14"
	slot_flags = SLOT_BACK
	w_class = 5
	force = 10
	max_shells = 20
	caliber = "762x51"
	ammo_type = /obj/item/ammo_casing/a762x51
	load_method = MAGAZINE
	allowed_magazines = /obj/item/ammo_magazine/c762x51s
	requires_two_hands = 4
	accuracy = 3
	fire_delay = 2
	fire_sound = 'sound/weapons/gunshot/m14.wav'
	wielded_item_state = "m14-wielded"
	unload_sound = 'sound/weapons/gunporn/m14_magout.wav'
	reload_sound = 'sound/weapons/gunporn/m14_magin.wav'
	cocked_sound = 'sound/weapons/gunporn/m14_charge.wav'

	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, requires_two_hands=3, burst_accuracy=null, dispersion=null),
		list(mode_name="short bursts",	burst=4, move_delay=8, requires_two_hands=8, burst_accuracy = list(0,-1,-3,-5,-7),          dispersion = list(1.0, 1.3, 1.6, 2.0, 2.2)),
		list(mode_name="long bursts",	burst=6, move_delay=10, requires_two_hands=9, burst_accuracy = list(0,-1,-3,-5,-7), dispersion = list(1.0, 1.3, 1.6, 2.0, 2.4)),
		)

/obj/item/weapon/gun/projectile/automatic/m14/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "m14"
	else
		icon_state = "m14-empty"


/obj/item/weapon/gun/projectile/automatic/m14/scoped
	name = "M21"
	desc = "That's the M21, an marksman rifle used by USMC."
	icon_state = "m14scoped"
	item_state = "m14"
	accuracy = 5
	fire_delay = 3
	wielded_item_state = "sniper_wielded"

	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, requires_two_hands=3, burst_accuracy=null, dispersion=null),
		)

/obj/item/weapon/gun/projectile/automatic/m14/scoped/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "m14scoped"
	else
		icon_state = "m14scoped-empty"

/obj/item/weapon/gun/projectile/automatic/m14/scoped/verb/scope()
	set category = "Object"
	set name = "Use Scope"
	set popup_menu = 1

	toggle_scope(usr, 2.0)

/obj/item/weapon/gun/projectile/automatic/m16a1
	name = "M16A1"
	desc = "That's the outdated weapon of the USMC"
	icon_state = "m16a1"
	item_state = "m16"
	w_class = 5
	load_method = MAGAZINE
	caliber = "556x45"
	slot_flags = SLOT_BACK
	ammo_type = /obj/item/ammo_casing/a556x45
	magazine_type = /obj/item/ammo_magazine/c556x45s
	requires_two_hands = 4
	accuracy = 3
	fire_delay = 3
	wielded_item_state = "m16-wielded"
	fire_sound = 'sound/weapons/gunshot/m16.wav'
	unload_sound = 'sound/weapons/gunporn/m16_magout.wav'
	reload_sound = 'sound/weapons/gunporn/m16_magin.wav'
	cocked_sound = 'sound/weapons/gunporn/m16_chargeback.wav'

	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, requires_two_hands=4, burst_accuracy=null, dispersion=null),
		list(mode_name="short bursts", burst=3, fire_delay=null, move_delay=1,    requires_two_hands=3, burst_accuracy=list(1,1,-1),       dispersion=list(0.3, 0.3, 0.6)),
		list(mode_name="long bursts",   burst=5, fire_delay=null, move_delay=2,    requires_two_hands=4, burst_accuracy=list(1,1,0,-1,-1), dispersion=list(0.3, 0.3, 0.6, 1.2, 1.5)),
		)

/obj/item/weapon/gun/projectile/automatic/m16a2/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "m16a2"
	else
		icon_state = "m16a2-empty"


/obj/item/weapon/gun/projectile/automatic/svd
	name = "SVD"
	desc = "That's the SVD, a standard-issue sniper rifle used by SA."
	icon_state = "svd"
	item_state = "m14"
	slot_flags = SLOT_BACK
	w_class = 5
	force = 10
	max_shells = 10
	caliber = "762x54"
	ammo_type = /obj/item/ammo_casing/a762x54
	load_method = MAGAZINE
	allowed_magazines = /obj/item/ammo_magazine/c762x54s
	requires_two_hands = 4
	accuracy = 5
	fire_delay = 1
	fire_sound = 'sound/weapons/gunshot/svd.wav'
	wielded_item_state = "sniper_wielded"
	unload_sound = 'sound/weapons/gunporn/svd_magout.wav'
	reload_sound = 'sound/weapons/gunporn/svd_magin.wav'
	cocked_sound = 'sound/weapons/gunporn/svd_boltback.wav'

	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, requires_two_hands=5, burst_accuracy=null, dispersion=null),
		)

/obj/item/weapon/gun/projectile/automatic/svd/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "svd"
	else
		icon_state = "svd-empty"
