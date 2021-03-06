/obj/structure/sandbag
	name = "sandbag"
	icon = 'icons/obj/sandbags.dmi'
	icon_state = "sandbag_empty"
	anchored = 1
	climbable = 1
	density = 1

/obj/structure/sandbag/New()
	flags |= ON_BORDER
	set_dir(dir)
	..()

/obj/structure/sandbag/set_dir(direction)
	dir = direction
	if(dir == NORTH)
		layer = OBJ_LAYER
	else
		layer = FLY_LAYER

/obj/structure/sandbag/CanPass(atom/movable/mover, turf/target, height=0, air_group=0)
	if(istype(mover, /obj/item/projectile))
		return check_cover(mover, target)
	if (get_dir(loc, target) == dir)
		return !density
	else
		return 1

/obj/structure/sandbag/proc/check_cover(obj/item/projectile/P, turf/from)
	var/turf/cover
	cover = get_turf(src)
	if(!cover)
		return 1
	if (get_dist(P.starting, loc) <= 1) //Tables won't help you if people are THIS close
		return 1

	var/chance = 40
	if(ismob(P.original) && get_turf(P.original) == cover)
		var/mob/M = P.original
		if (M.lying)
			chance += 20				//Lying down lets you catch less bullets
		if(get_dir(loc, from) == dir)	//Flipped tables catch mroe bullets
			chance += 40
		else
			return 1					//But only from one side

	if(prob(chance))
		return 0 //blocked
	return 1


/obj/structure/sandbag/ex_act(severity)
	switch(severity)
		if(1.0) qdel(src)
		if(2.0)
			if (prob(50))
				qdel(src)
			else
				return


/obj/item/weapon/sandbag
	name = "sandbags"
	icon_state = "sandbag"
	w_class = 1
	var/sand_amount = 0

/obj/item/weapon/sandbag/attack_self(mob/user as mob)
	if(sand_amount < 4)
		user << "\red You need more sand to make wall."
		return
	for(var/obj/structure/sandbag/baggy in src.loc)
		if(baggy.dir == user.dir)
			user << "\red There is no more space."
			return

	var/obj/structure/sandbag/bag = new(src.loc)
	bag.set_dir(user.dir)
	user.drop_item()
	qdel(src)

/obj/item/weapon/sandbag/attackby(obj/O as obj, mob/user as mob)
	if(istype(O, /obj/item/weapon/ore/glass))
		if(sand_amount >= 4)
			user << "\red [name] is full!"
			return
		user.drop_item()
		qdel(O)
		sand_amount++
		w_class++
		update_icon()
		user << "You need [4 - sand_amount] more units."

/obj/item/weapon/sandbag/update_icon()
	if(sand_amount >= 4)
		icon_state = "sandbag"
	else
		icon_state = "sandbag_empty"

//obj/item/weapon/ore/glass


/obj/structure/foxhole
	name = "foxhole"
	icon = 'icons/obj/sandbags.dmi'
	icon_state = "foxhole"
	anchored = 1
	climbable = 1
	density = 1

/obj/structure/foxhole
	name = "foxhole"
	icon = 'icons/obj/sandbags.dmi'
	icon_state = "foxhole"
	anchored = 1
	climbable = 1
	density = 1

/obj/structure/foxhole/New()
	flags |= ON_BORDER
	update_icon()
	..()

/obj/structure/foxhole/update_icon()
	..()
	overlays += image('icons/obj/sandbags.dmi', src, "foxhole-over", FLY_LAYER)

/obj/structure/foxhole/CanPass(atom/movable/mover, turf/target, height=0, air_group=0)
	if(istype(mover, /obj/item/))
		return check_cover(mover, target)
	else
		return 0

/obj/structure/foxhole/proc/check_cover(obj/item/projectile/P, turf/from)
	var/turf/cover
	cover = get_turf(src)
	if(!cover)
		return 1
	if (get_dist(P.starting, loc) <= 1) //Tables won't help you if people are THIS close
		return 1

	var/chance = 20
	if(ismob(P.original) && get_turf(P.original) == cover)
		var/mob/M = P.original
		if (M.lying)
			chance += 60				//Lying down lets you catch less bullets
		if(get_dir(loc, from) == dir)	//Flipped tables catch mroe bullets
			chance += 40
		else
			return 1					//But only from one side

	if(prob(chance))
		return 0 //blocked
	return 1


/obj/structure/foxhole/ex_act(severity)
	switch(severity)
		if(1.0) qdel(src)
		if(2.0)
			if (prob(50))
				qdel(src)
			else
				return

/obj/structure/brustwehr
	name = "brustwehr"
	icon = 'icons/obj/sandbags.dmi'
	icon_state = "brustwehr"
	anchored = 1
	climbable = 1
	density = 1

/obj/structure/brustwehr/New()
	flags |= ON_BORDER
	set_dir(dir)
	..()

/obj/structure/brustwehr/set_dir(direction)
	dir = direction
	if(dir == NORTH)
		layer = OBJ_LAYER
	else
		layer = FLY_LAYER

/obj/structure/brustwehr/CanPass(atom/movable/mover, turf/target, height=0, air_group=0)
	if(istype(mover, /obj/item/projectile))
		return check_cover(mover, target)
	if (get_dir(loc, target) == dir)
		return !density
	else
		return 1

/obj/structure/brustwehr/proc/check_cover(obj/item/projectile/P, turf/from)
	var/turf/cover
	cover = get_turf(src)
	if(!cover)
		return 1
	if (get_dist(P.starting, loc) <= 1) //Tables won't help you if people are THIS close
		return 1

	var/chance = 20
	if(ismob(P.original) && get_turf(P.original) == cover)
		var/mob/M = P.original
		if (M.lying)
			chance += 35				//Lying down lets you catch less bullets
		if(get_dir(loc, from) == dir)	//Flipped tables catch mroe bullets
			chance += 40
		else
			return 1					//But only from one side

	if(prob(chance))
		return 0 //blocked
	return 1


/obj/structure/brustwehr/ex_act(severity)
	switch(severity)
		if(1.0) qdel(src)
		if(2.0)
			if (prob(50))
				qdel(src)
			else
				return


