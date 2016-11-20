/obj/item/weapon/storage/belt
	name = "belt"
	desc = "Can hold various things."
	icon = 'icons/obj/clothing/belts.dmi'
	icon_state = "utilitybelt"
	item_state = "utility"
	storage_slots = 7
	max_w_class = 3
	slot_flags = SLOT_BELT
	attack_verb = list("whipped", "lashed", "disciplined")
	sprite_sheets = list("Resomi" = 'icons/mob/species/resomi/belt.dmi')
	var/show_above_suit = 0

/obj/item/weapon/storage/belt/verb/toggle_layer()
	set name = "Switch Belt Layer"
	set category = "Object"

	if(show_above_suit == -1)
		usr << "<span class='notice'>\The [src] cannot be worn above your suit!</span>"
		return
	show_above_suit = !show_above_suit
	update_icon()

/obj/item/weapon/storage/update_icon()
	if (ismob(src.loc))
		var/mob/M = src.loc
		M.update_inv_belt()


/obj/item/weapon/storage/belt/get_mob_overlay(mob/user_mob, slot)
	var/image/ret = ..()
	if(slot == slot_belt_str && contents.len)
		for(var/obj/item/I in contents)
			ret.overlays += image("icon" = 'icons/mob/belt.dmi', "icon_state" = "[I.item_state ? I.item_state : I.icon_state]")
	return ret

/obj/item/weapon/storage/belt/utility
	name = "tool-belt" //Carn: utility belt is nicer, but it bamboozles the text parsing.
	desc = "Can hold various tools."
	icon_state = "utilitybelt"
	item_state = "utility"
	can_hold = list(
		///obj/item/weapon/combitool,
		/obj/item/weapon/crowbar,
		/obj/item/weapon/screwdriver,
		/obj/item/weapon/weldingtool,
		/obj/item/weapon/wirecutters,
		/obj/item/weapon/wrench,
		/obj/item/device/multitool,
		/obj/item/device/flashlight,
		/obj/item/stack/cable_coil,
		/obj/item/device/t_scanner,
		/obj/item/device/analyzer,
		/obj/item/taperoll/engineering,
		/obj/item/device/robotanalyzer,
		/obj/item/weapon/material/minihoe,
		/obj/item/weapon/material/hatchet,
		/obj/item/device/analyzer/plant_analyzer,
		/obj/item/weapon/extinguisher/mini
		)


/obj/item/weapon/storage/belt/utility/full/New()
	..()
	new /obj/item/weapon/screwdriver(src)
	new /obj/item/weapon/wrench(src)
	new /obj/item/weapon/weldingtool(src)
	new /obj/item/weapon/crowbar(src)
	new /obj/item/weapon/wirecutters(src)
	new /obj/item/stack/cable_coil(src,30,pick("red","yellow","orange"))


/obj/item/weapon/storage/belt/utility/atmostech/New()
	..()
	new /obj/item/weapon/screwdriver(src)
	new /obj/item/weapon/wrench(src)
	new /obj/item/weapon/weldingtool(src)
	new /obj/item/weapon/crowbar(src)
	new /obj/item/weapon/wirecutters(src)
	new /obj/item/device/t_scanner(src)



/obj/item/weapon/storage/belt/medical
	name = "medical belt"
	desc = "Can hold various medical equipment."
	icon_state = "medicalbelt"
	item_state = "medical"
	can_hold = list(
		/obj/item/device/healthanalyzer,
		/obj/item/weapon/dnainjector,
		/obj/item/weapon/reagent_containers/dropper,
		/obj/item/weapon/reagent_containers/glass/beaker,
		/obj/item/weapon/reagent_containers/glass/bottle,
		/obj/item/weapon/reagent_containers/pill,
		/obj/item/weapon/reagent_containers/syringe,
		/obj/item/weapon/flame/lighter/zippo,
		/obj/item/weapon/storage/fancy/cigarettes,
		/obj/item/weapon/storage/pill_bottle,
		/obj/item/stack/medical,
		/obj/item/device/flashlight/pen,
		/obj/item/clothing/mask/surgical,
		/obj/item/clothing/head/surgery,
		/obj/item/clothing/gloves/latex,
		/obj/item/weapon/reagent_containers/hypospray,
		/obj/item/clothing/glasses/hud/health,
		/obj/item/weapon/crowbar,
		/obj/item/device/flashlight,
		/obj/item/weapon/extinguisher/mini
		)

/obj/item/weapon/storage/belt/medical/emt
	name = "EMT utility belt"
	desc = "A sturdy black webbing belt with attached pouches."
	icon_state = "emsbelt"
	item_state = "emsbelt"

/obj/item/weapon/storage/belt/security
	name = "security belt"
	desc = "Can hold security gear like handcuffs and flashes."
	icon_state = "securitybelt"
	item_state = "security"
	can_hold = list(
		/obj/item/weapon/grenade,
		/obj/item/weapon/reagent_containers/spray/pepper,
		/obj/item/weapon/handcuffs,
		/obj/item/device/flash,
		/obj/item/clothing/glasses,
		/obj/item/ammo_casing/shotgun,
		/obj/item/ammo_magazine,
		/obj/item/weapon/reagent_containers/food/snacks/donut/,
		/obj/item/weapon/melee/baton,
		/obj/item/weapon/gun/energy/taser,
		/obj/item/weapon/flame/lighter,
		/obj/item/clothing/glasses/hud/security,
		/obj/item/device/flashlight,
		/obj/item/device/pda,
		/obj/item/device/radio/headset,
		/obj/item/device/hailer,
		/obj/item/device/megaphone,
		/obj/item/weapon/melee,
		/obj/item/weapon/gun/projectile/sec,
		/obj/item/taperoll/police
		)

/obj/item/weapon/storage/belt/soulstone
	name = "soul stone belt"
	desc = "Designed for ease of access to the shards during a fight, as to not let a single enemy spirit slip away."
	icon_state = "soulstonebelt"
	item_state = "soulstonebelt"
	storage_slots = 6
	can_hold = list(
		/obj/item/device/soulstone
		)

/obj/item/weapon/storage/belt/soulstone/full/New()
	..()
	new /obj/item/device/soulstone(src)
	new /obj/item/device/soulstone(src)
	new /obj/item/device/soulstone(src)
	new /obj/item/device/soulstone(src)
	new /obj/item/device/soulstone(src)
	new /obj/item/device/soulstone(src)


/obj/item/weapon/storage/belt/champion
	name = "championship belt"
	desc = "Proves to the world that you are the strongest!"
	icon_state = "championbelt"
	item_state = "champion"
	storage_slots = 1
	can_hold = list(
		/obj/item/clothing/mask/luchador
		)

/obj/item/weapon/storage/belt/security/tactical
	name = "combat belt"
	desc = "Can hold security gear like handcuffs and flashes, with more pouches for more storage."
	icon_state = "swatbelt"
	item_state = "swatbelt"
	storage_slots = 9

/obj/item/weapon/storage/belt/lbeholster
	name = "officer's load bearing equipment"
	desc = "That thing should not be here"
	icon_state = null
	var/icon_closed = null //Empty for now.
	item_state = null
	use_sound = null
	w_class = 4
	storage_slots = 3
	var/holds_guns_now = 0 //Generic variable to determine if the holster already holds a gun.
	var/holds_guns_max = 1 //How many guns can it hold? I think this can be any thing from 1 to whatever. Should calculate properly.
	var/obj/item/weapon/gun/current_gun //The gun it holds, used for referencing later so we can update the icon.
	can_hold = list(
		"/obj/item/weapon/gun/pistol",
		"/obj/item/ammo_magazine/a9x18",
		"/obj/item/ammo_magazine/a9x19"
		)

	can_be_inserted(obj/item/W as obj, stop_messages = 0) //We don't need to stop messages, but it can be left in.
		if( ..() ) //If the parent did their thing, this should be fine. It pretty much handles all the checks.
			if(istype(W,/obj/item/weapon/gun)) //Is it a gun?
				if(holds_guns_now == holds_guns_max) //Are we at our gun capacity?
					if(!stop_messages) usr << "<span class='notice'>\The [src] already holds a gun.<span>"
					return //Nothing else to do.
				holds_guns_now++ //Slide it in.
				if(!current_gun) //If there's no active gun, we want to make this our icon.
					current_gun = W
			else //Must be ammo.
		//We have slots open for the gun, so in total we should have storage_slots - guns_max in slots, plus whatever is already in the belt.
				if(( (storage_slots - holds_guns_max) + holds_guns_now) <= contents.len) // We're over capacity, and the space is reserved for a gun.
					if(!stop_messages) usr << "<span class='notice'>\The [src] can't hold any more magazines.<span>"
					return
			return 1

	remove_from_storage(obj/item/W as obj)
		if(..() ) //Same deal, this will handle things.
			if(istype(W,/obj/item/weapon/gun)) //Is it a gun?
				holds_guns_now-- //Remove it.
				if(W == current_gun)
					current_gun = null
			return 1

/obj/item/weapon/storage/belt/lbeholster/soviet
	name = "LBE w/ holster"
	desc = "That's the load bearing equipment with a holster and a small satchel."
	icon_state = "lbe_soviet_officer"
	item_state = "lbe_soviet_officer"
	use_sound = null
	w_class = 4
	storage_slots = 8
	can_hold = list(
		/obj/item/weapon/gun/projectile/makarov,
		/obj/item/ammo_magazine/a9x18,
		/obj/item/ammo_magazine/a9x19,
		/obj/item/ammo_magazine/c556x45s,
		/obj/item/ammo_magazine/c545x39m,
		/obj/item/ammo_magazine/c556x45m,
		/obj/item/ammo_magazine/c762x54s,
		/obj/item/ammo_magazine/c762x39r,
		/obj/item/ammo_magazine/c762x39m,
		/obj/item/ammo_magazine/c762x39b,
		/obj/item/ammo_magazine/c762x51s,
		/obj/item/ammo_magazine/c762x51m,
		/obj/item/weapon/grenade/frag,
		/obj/item/weapon/pill_pack,
		/obj/item/weapon/gauze_pack,
		/obj/item/weapon/material/knife/bayonet
		)

/obj/item/weapon/storage/belt/lbeholster/soviet/New()
	..()
	new /obj/item/weapon/gun/projectile/makarov(src)
	new /obj/item/ammo_magazine/a9x18(src)
	new /obj/item/ammo_magazine/a9x18(src)


/obj/item/weapon/storage/belt/lbeholster/usmc
	name = "LBE w/ holster"
	desc = "That's the load bearing equipment with a holster and a small satchel."
	icon_state = "lbe_usmc_officer"
	item_state = "lbe_usmc_officer"
	use_sound = null
	w_class = 4
	storage_slots = 8
	can_hold = list(
		/obj/item/weapon/gun/projectile/berettam9,
		/obj/item/ammo_magazine/a9x18,
		/obj/item/ammo_magazine/a9x19,
		/obj/item/ammo_magazine/c556x45s,
		/obj/item/ammo_magazine/c545x39m,
		/obj/item/ammo_magazine/c556x45m,
		/obj/item/ammo_magazine/c762x54s,
		/obj/item/ammo_magazine/c762x39r,
		/obj/item/ammo_magazine/c762x39m,
		/obj/item/ammo_magazine/c762x39b,
		/obj/item/ammo_magazine/c762x51s,
		/obj/item/ammo_magazine/c762x51m,
		/obj/item/weapon/grenade/frag,
		/obj/item/weapon/pill_pack,
		/obj/item/weapon/gauze_pack,
		/obj/item/weapon/material/knife/bayonet
		)

/obj/item/weapon/storage/belt/lbeholster/usmc/New()
	..()
	new /obj/item/weapon/gun/projectile/berettam9(src)
	new /obj/item/ammo_magazine/a9x19(src)

/obj/item/weapon/storage/belt/lbe/soviet
	name = "load bearing equipment"
	desc = "That's the load bearing equipment."
	icon_state = "lbe_soviet"
	item_state = "lbe_soviet"
	use_sound = null
	w_class = 4
	storage_slots = 5
	can_hold = list(
		/obj/item/ammo_magazine/a9x18,
		/obj/item/ammo_magazine/a9x19,
		/obj/item/ammo_magazine/c556x45s,
		/obj/item/ammo_magazine/c545x39m,
		/obj/item/ammo_magazine/c556x45m,
		/obj/item/ammo_magazine/c762x54s,
		/obj/item/ammo_magazine/c762x39r,
		/obj/item/ammo_magazine/c762x39m,
		/obj/item/ammo_magazine/c762x39b,
		/obj/item/ammo_magazine/c762x51s,
		/obj/item/ammo_magazine/c762x51m,
		/obj/item/weapon/grenade/frag,
		/obj/item/weapon/pill_pack,
		/obj/item/weapon/gauze_pack,
		/obj/item/weapon/material/knife/bayonet
		)


/obj/item/weapon/storage/belt/lbe/usmc
	name = "load bearing equipment"
	desc = "That's the load bearing equipment"
	icon_state = "lbe_usmc"
	item_state = "lbe_usmc"
	use_sound = null
	w_class = 4
	storage_slots = 5
	can_hold = list(
		/obj/item/ammo_magazine/a9x18,
		/obj/item/ammo_magazine/a9x19,
		/obj/item/ammo_magazine/c556x45s,
		/obj/item/ammo_magazine/c545x39m,
		/obj/item/ammo_magazine/c556x45m,
		/obj/item/ammo_magazine/c762x54s,
		/obj/item/ammo_magazine/c762x39r,
		/obj/item/ammo_magazine/c762x39m,
		/obj/item/ammo_magazine/c762x39b,
		/obj/item/ammo_magazine/c762x51s,
		/obj/item/ammo_magazine/c762x51m,
		/obj/item/weapon/grenade/frag,
		/obj/item/weapon/pill_pack,
		/obj/item/weapon/gauze_pack,
		/obj/item/weapon/material/knife/bayonet
		)
