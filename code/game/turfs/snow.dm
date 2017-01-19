/turf/snow
    name = "snow"
    icon = 'icons/turf/snow_new.dmi'
    icon_state = "snow"
    stepsound = "snow"
    interior = 0
    blend_with_neighbors = 1


    oxygen = MOLES_O2STANDARD * 1.15
    nitrogen = MOLES_N2STANDARD * 1.15

    temperature = T0C - 20
    var/list/crossed_dirs = list()

#define FOOTSTEP_SPRITE_AMT 2

/turf/snow/Entered(atom/A)
    if(ismob(A))
        var/mdir = "[A.dir]"
        if(crossed_dirs[mdir])
            crossed_dirs[mdir] = min(crossed_dirs[mdir] + 1, FOOTSTEP_SPRITE_AMT)
        else
            crossed_dirs[mdir] = 1

        update_icon()

    . = ..()

/turf/snow/attackby(obj/item/C as obj, mob/user as mob)

	if (istype(C, /obj/item/stack/rods))
		var/obj/structure/lattice/L = locate(/obj/structure/lattice, src)
		if(L)
			return
		var/obj/item/stack/rods/R = C
		if (R.use(1))
			user << "<span class='notice'>Constructing support lattice ...</span>"
			playsound(src, 'sound/weapons/Genhit.ogg', 50, 1)
			ReplaceWithLattice()
		return

	if (istype(C, /obj/item/stack/tile/floor))
		var/obj/structure/lattice/L = locate(/obj/structure/lattice, src)
		if(L)
			var/obj/item/stack/tile/floor/S = C
			if (S.get_amount() < 1)
				return
			qdel(L)
			playsound(src, 'sound/weapons/Genhit.ogg', 50, 1)
			S.use(1)
			return
		else
			user << "<span class='warning'>The plating is going to need some support.</span>"
	return


/turf/snow/update_icon()
	overlays.Cut()
	for(var/d in crossed_dirs)
		var/amt = crossed_dirs[d]

		for(var/i in 1 to amt)
			var/mob/M = usr
			if(istype(M, /mob/observer)) return
			else overlays += icon(icon, "footprint[i]", text2num(d))
//			overlays += icon(icon, "footprint[i]", text2num(d))

/turf/snow/attackby(obj/item/weapon/W as obj, mob/user as mob)

	if(!W || !user)
		return 0

	if ((istype(W, /obj/item/weapon/shovel)))
		var/turf/T = user.loc
		if (!( istype(T, /turf) ))
			return

		user << "\red You start digging."
		playsound(src.loc, 'sound/effects/rustle1.ogg', 50, 1) //russle sounds sounded better

		sleep(40)
		if ((user.loc == T && user.get_active_hand() == W))
			user << "\blue You removed some snow."
			src.ChangeTurf(/turf/frozenground)
	else
		..(W,user)
	return



/turf/snow/snow2
	name = "snow"
	icon = 'icons/turf/snow.dmi'
	icon_state = "snow"

/turf/ice
	name = "thin ice"

	icon = 'icons/turf/snow_new.dmi'
	icon_state = "ice1"

	density = 1
	dynamic_lighting = 1
	blend_with_neighbors = -1

	oxygen = MOLES_O2STANDARD * 1.15
	nitrogen = MOLES_N2STANDARD * 1.15
	temperature = T0C - 20
	var/bridge = 0 //has there been a bridge built?

/turf/ice/New()
	icon_state = "ice[rand(1,6)]"
	..()

/turf/ice/attackby(var/obj/item/I, mob/user as mob)
	if(istype(I, /obj/item/stack/material/wood))
		if(!bridge)

			var/obj/item/stack/material/wood/R = I

			if(R.amount >= 3)
				user << "<span class='notice'>You build a makeshift platform to cross the river safely.</span>"
				desc = "A thick ice. There's a makeshift platform over it."
				R.use(3)
				bridge = 1
				density = 0
				src.overlays += image('icons/turf/snow_new.dmi', "bridge", layer=2.1)
			else
				user << "<span class='notice'>You do not have enough wood to build a bridge.</span>"

	else if(istype(I, /obj/item/stack/material/r_wood))
		if(!bridge)
			var/obj/item/stack/material/r_wood/R = I

			if(R.amount >= 3)
				user << "<span class='notice'>You build a makeshift platform to cross the river safely.</span>"
				desc = "A thick ice. There's a makeshift platform over it."
				R.use(3)

				src.overlays += image('icons/turf/snow_new.dmi', "bridge2", layer=2.1)
				bridge = 2
				density = 0
			else
				user << "<span class='notice'>You do not have enough wood to build a bridge.</span>"

	else if(istype(I, /obj/item/weapon/crowbar))
		if(bridge)
			user << "<span class='notice'>You begin to disassemble the bridge.</span>"
			spawn(rand(15,30))
				if(get_dist(user,src) < 2)
					playsound(src, 'sound/items/Deconstruct.ogg', 50, 1)

					user << "<span class='notice'>You disassemble the bridge.</span>"

					src.overlays = null

					if(bridge == 1)
						var/obj/item/stack/material/wood/S =  new /obj/item/stack/material/wood(get_turf(src))
						S.amount = 3

					else if(bridge == 2)
						var/obj/item/stack/material/r_wood/S =  new /obj/item/stack/material/r_wood/(get_turf(src))
						S.amount = 3

					bridge = 0
					density = 0

/turf/snow/gravsnow
	name = "frozen ground"
	icon_state = "ground_frozen"
	blend_with_neighbors = 3


/turf/frozenground
	name = "frozen ground"
	dynamic_lighting = 1
	icon = 'icons/turf/snow_new.dmi'
	icon_state = "wground1"
	blend_with_neighbors = 3
	var/dug = 0       //0 = has not yet been dug, 1 = has already been dug

	oxygen = MOLES_O2STANDARD * 1.15
	nitrogen = MOLES_N2STANDARD * 1.15
	temperature = T0C - 20

/turf/frozenground/New()
	icon_state = "wground[rand(1,3)]"
	..()


/turf/frozenground/ex_act(severity)
	switch(severity)
		if(3.0)
			return
		if(2.0)
			if (prob(70))
				gets_dug()
		if(1.0)
			gets_dug()
	return


/turf/frozenground/attackby(obj/item/weapon/W as obj, mob/user as mob)
	if(!W || !user)
		return 0

	var/list/usable_tools = list(
		/obj/item/weapon/shovel,
		/obj/item/weapon/pickaxe/diamonddrill,
		/obj/item/weapon/pickaxe/drill,
		/obj/item/weapon/pickaxe/borgdrill
		)

	var/valid_tool
	for(var/valid_type in usable_tools)
		if(istype(W,valid_type))
			valid_tool = 1
			break

	if(valid_tool)
		if (dug)
			user << "\red This area has already been dug"
			return

		var/turf/T = user.loc
		if (!(istype(T)))
			return

		user << "\red You start digging."
		playsound(user.loc, 'sound/effects/rustle1.ogg', 50, 1)

		if(!do_after(user,40, src)) return

		user << "<span class='notice'>You dug a hole.</span>"
		gets_dug()

	else if(istype(W,/obj/item/weapon/storage/ore))
		var/obj/item/weapon/storage/ore/S = W
		if(S.collection_mode)
			for(var/obj/item/weapon/ore/O in contents)
				O.attackby(W,user)
				return
	else if(istype(W,/obj/item/weapon/storage/bag/fossils))
		var/obj/item/weapon/storage/bag/fossils/S = W
		if(S.collection_mode)
			for(var/obj/item/weapon/fossil/F in contents)
				F.attackby(W,user)
				return

	else
		..(W,user)
	return

/turf/frozenground/proc/gets_dug()

	if(dug)
		return

	for(var/i=0;i<(rand(3)+2);i++)
		new/obj/item/weapon/ore/glass(src)

	dug = 1
	icon_state = "wground_dug"
	return


/turf/snow/plating
	name = "snowy plating"
	icon_state = "plating"

/turf/snowtransit
	name = "snow"
	icon = 'icons/turf/snow_new.dmi'
	icon_state = "transit"
	blend_with_neighbors = -1

