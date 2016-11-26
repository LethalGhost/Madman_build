//////////////////////////Pistols//////////////////////////

//Beretta M9

/obj/item/weapon/gun/projectile/berettam9
	name = "Beretta M9"
	desc = "That's the Italian-made pistol. Uses 9x19 ammo."
	icon_state = "berettam9"
	item_state = "gun"
	w_class = 2
	caliber = "9x19"
	fire_delay = 1
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/a9x19
	allowed_magazines = /obj/item/ammo_magazine/a9x19
	fire_sound = 'sound/weapons/gunshot/m9.wav'
	unload_sound = 'sound/weapons/gunporn/pistol_magout.wav'
	reload_sound = 'sound/weapons/gunporn/pistol_magin.wav'
	cocked_sound = 'sound/weapons/gunporn/pistol_sliderelease.wav'

/obj/item/weapon/gun/projectile/berettam9/update_icon()
	..()
	if(ammo_magazine && ammo_magazine.stored_ammo.len)
		icon_state = "berettam9"
	else
		icon_state = "berettam9-empty"

//Makarov Pistol

/obj/item/weapon/gun/projectile/makarov
	name = "Makarov PM"
	desc = "That's Pistolet Makarova. Uses 9x18 ammo."
	icon_state = "makarov"
	item_state = "gun"
	w_class = 2
	caliber = "9x18"
	fire_delay = 1
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/a9x18
	allowed_magazines = /obj/item/ammo_magazine/a9x18
	fire_sound = 'sound/weapons/gunshot/makarov.wav'
	unload_sound = 'sound/weapons/gunporn/pistol_magout.wav'
	reload_sound = 'sound/weapons/gunporn/pistol_magin.wav'
	cocked_sound = 'sound/weapons/gunporn/pistol_sliderelease.wav'


/obj/item/weapon/gun/projectile/makarov/update_icon()
	..()
	if(ammo_magazine && ammo_magazine.stored_ammo.len)
		icon_state = "makarov"
	else
		icon_state = "makarov-empty"

//////////////////////////SMG's and carbines//////////////////////////

//AKS-74

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

//Colt Model 733

/obj/item/weapon/gun/projectile/automatic/coltmodel733
	name = "Colt Model 733"
	desc = "That's the standard-issue weapon of the USMC."
	icon_state = "coltmodel733-m"
	item_state = "m16"
	w_class = 4
	load_method = MAGAZINE
	caliber = "556x45"
	slot_flags = SLOT_BACK
	ammo_type = /obj/item/ammo_casing/a556x45
	allowed_magazines = list(/obj/item/ammo_magazine/c556x45m, /obj/item/ammo_magazine/c556x45s)
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

/obj/item/weapon/gun/projectile/automatic/coltmodel733/update_icon(var/ignore_inhands)
	..()
	if(istype(ammo_magazine,/obj/item/ammo_magazine/c556x45m))
		icon_state = "coltmodel733-m"
	else
		icon_state = (ammo_magazine)? "coltmodel733-s" : "coltmodel733-empty"
	if(!ignore_inhands) update_held_icon()

//////////////////////////Rifles//////////////////////////

//M14

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


//////////////////////////Sniper Rifles//////////////////////////

//M21

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

//SVD

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


//////////////////////////Assault Rifles//////////////////////////

//M16A1

/obj/item/weapon/gun/projectile/automatic/m16a1
	name = "M16A1"
	desc = "That's the outdated weapon of the USMC"
	icon_state = "m16a1-m"
	item_state = "m16"
	w_class = 5
	load_method = MAGAZINE
	caliber = "556x45"
	slot_flags = SLOT_BACK
	ammo_type = /obj/item/ammo_casing/a556x45
	allowed_magazines = list(/obj/item/ammo_magazine/c556x45m, /obj/item/ammo_magazine/c556x45s)
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

/obj/item/weapon/gun/projectile/automatic/m16a1/update_icon(var/ignore_inhands)
	..()
	if(istype(ammo_magazine,/obj/item/ammo_magazine/c556x45m))
		icon_state = "m16a1-m"
	else
		icon_state = (ammo_magazine)? "m16a1-s" : "m16a2-empty"
	if(!ignore_inhands) update_held_icon()


//AK-74

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

//M16A2

/obj/item/weapon/gun/projectile/automatic/m16a2
	name = "M16A2"
	desc = "That's the standard-issue weapon of the USMC"
	icon_state = "m16a2-m"
	item_state = "m16"
	w_class = 5
	load_method = MAGAZINE
	caliber = "556x45"
	slot_flags = SLOT_BACK
	ammo_type = /obj/item/ammo_casing/a556x45
	allowed_magazines = list(/obj/item/ammo_magazine/c556x45m, /obj/item/ammo_magazine/c556x45s)
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

/obj/item/weapon/gun/projectile/automatic/m16a2/update_icon(var/ignore_inhands)
	..()
	if(istype(ammo_magazine,/obj/item/ammo_magazine/c556x45m))
		icon_state = "m16a2-m"
	else
		icon_state = (ammo_magazine)? "m16a2-s" : "m16a2-empty"
	if(!ignore_inhands) update_held_icon()


//////////////////////////Squad Assault Weapons//////////////////////////


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

//////////////////////////AR's with grenade launchers//////////////////////////

/obj/item/weapon/gun/projectile/automatic/m16a1gl
	name = "M16A1 w/ M203"
	desc = "That's the M16A1, a standard-issue weapon used by US army. Has a M203 grenade launcher attached to it"
	icon_state = "m16a2-gl-m"
	item_state = "m16"
	w_class = 5
	force = 10
	caliber = "556x45"
	ammo_type = /obj/item/ammo_casing/a556x45
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	allowed_magazines = list(/obj/item/ammo_magazine/c556x45m, /obj/item/ammo_magazine/c556x45s)
	requires_two_hands = 5
	burst_delay = 0.5
	fire_sound = 'sound/weapons/gunshot/m16.wav'
	unload_sound = 'sound/weapons/gunporn/m16_magout.wav'
	reload_sound = 'sound/weapons/gunporn/m16_magin.wav'
	cocked_sound = 'sound/weapons/gunporn/m16_chargeback.wav'
	wielded_item_state = "m16-wielded"
	firemodes = list(
		list(mode_name="semiauto",       burst=1,    fire_delay=0,    move_delay=null, use_launcher=null, requires_two_hands=5, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3,    fire_delay=null, move_delay=6,    use_launcher=null, requires_two_hands=6, burst_accuracy=list(0,-1,-1), dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="fire grenades",  burst=null, fire_delay=null, move_delay=null, use_launcher=1,    requires_two_hands=5, burst_accuracy=null, dispersion=null)
		)

	var/use_launcher = 0
	var/obj/item/weapon/gun/launcher/grenade/underslung/m203/launcher

/obj/item/weapon/gun/projectile/automatic/m16a1gl/New()
	..()
	launcher = new(src)

/obj/item/weapon/gun/projectile/automatic/m16a1gl/attackby(obj/item/I, mob/user)
	if((istype(I, /obj/item/weapon/grenade)))
		launcher.load(I, user)
	else
		..()

/obj/item/weapon/gun/projectile/automatic/m16a1gl/attack_hand(mob/user)
	if(user.get_inactive_hand() == src && use_launcher)
		launcher.unload(user)
	else
		..()

/obj/item/weapon/gun/projectile/automatic/m16a1gl/Fire(atom/target, mob/living/user, params, pointblank=0, reflex=0)
	if(use_launcher)
		launcher.Fire(target, user, params, pointblank, reflex)
		if(!launcher.chambered)
			switch_firemodes() //switch back automatically
	else
		..()

/obj/item/weapon/gun/projectile/automatic/m16a1gl/update_icon(var/ignore_inhands)
	..()
	if(istype(ammo_magazine,/obj/item/ammo_magazine/c556x45m))
		icon_state = "m16a2-gl-m"
	else
		icon_state = (ammo_magazine)? "m16a2-gl-s" : "m16a2-gl-empty"
	if(!ignore_inhands) update_held_icon()

/obj/item/weapon/gun/projectile/automatic/m16a1gl/examine(mob/user)
	..()
	if(launcher.chambered)
		user << "\The [launcher] has \a [launcher.chambered] loaded."
	else
		user << "\The [launcher] is empty."


/obj/item/weapon/gun/projectile/automatic/ak74gl
	name = "AK-74 w/ GP-25"
	desc = "That's the AK-74, a standard-issue weapon used by Soviet army. Has a GP-25 'Kostyor' grenade launcher attached to it"
	icon_state = "ak74-gl"
	item_state = "ak"
	w_class = 5
	force = 10
	caliber = "545x39"
	ammo_type = /obj/item/ammo_casing/a545x39
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	allowed_magazines = /obj/item/ammo_magazine/c545x39m
	requires_two_hands = 5
	burst_delay = 0.5
	wielded_item_state = "ak-wielded"
	fire_sound = 'sound/weapons/gunshot/ak74.wav'
	unload_sound = 'sound/weapons/gunporn/ak74_magout.wav'
	reload_sound = 'sound/weapons/gunporn/ak74_magin.wav'
	cocked_sound = 'sound/weapons/gunporn/ak74_cock.wav'
	firemodes = list(
		list(mode_name="semiauto",       burst=1,    fire_delay=0,    move_delay=null, use_launcher=null, requires_two_hands=5, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3,    fire_delay=null, move_delay=6,    use_launcher=null, requires_two_hands=6, burst_accuracy=list(0,-1,-1), dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="fire grenades",  burst=null, fire_delay=null, move_delay=null, use_launcher=1,    requires_two_hands=5, burst_accuracy=null, dispersion=null)
		)

	var/use_launcher = 0
	var/obj/item/weapon/gun/launcher/grenade/underslung/gp25/launcher

/obj/item/weapon/gun/projectile/automatic/ak74gl/New()
	..()
	launcher = new(src)

/obj/item/weapon/gun/projectile/automatic/ak74gl/attackby(obj/item/I, mob/user)
	if((istype(I, /obj/item/weapon/grenade)))
		launcher.load(I, user)
	else
		..()

/obj/item/weapon/gun/projectile/automatic/ak74gl/attack_hand(mob/user)
	if(user.get_inactive_hand() == src && use_launcher)
		launcher.unload(user)
	else
		..()

/obj/item/weapon/gun/projectile/automatic/ak74gl/Fire(atom/target, mob/living/user, params, pointblank=0, reflex=0)
	if(use_launcher)
		launcher.Fire(target, user, params, pointblank, reflex)
		if(!launcher.chambered)
			switch_firemodes() //switch back automatically
	else
		..()

/obj/item/weapon/gun/projectile/automatic/ak74gl/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "ak74-gl"
	else
		icon_state = "ak74-gl-empty"

/obj/item/weapon/gun/projectile/automatic/m16a1gl/examine(mob/user)
	..()
	if(launcher.chambered)
		user << "\The [launcher] has \a [launcher.chambered] loaded."
	else
		user << "\The [launcher] is empty."
