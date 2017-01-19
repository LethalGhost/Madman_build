/obj/item/weapon/ore
	name = "small rock"
	icon = 'icons/obj/mining.dmi'
	icon_state = "ore2"
	randpixel = 8
	w_class = 2
	var/datum/geosample/geologic_data
	var/ore/ore = null // set to a type to find the right instance on init

	New()
		..()
		if(ispath(ore))
			ensure_ore_data_initialised()
			ore = ores_by_type[ore]
			if(ore.ore != type)
				world.log << "[src] ([src.type]) had ore type [ore.type] but that type does not have [src.type] set as its ore item!"
			update_ore()

	proc/update_ore()
		name = ore.display_name
		icon_state = "ore_[ore.icon_tag]"
		origin_tech = ore.origin_tech.Copy()

/obj/item/weapon/ore/slag
	name = "Slag"
	desc = "Someone screwed up..."
	icon_state = "slag"

/obj/item/weapon/ore/uranium
	ore = /ore/uranium

/obj/item/weapon/ore/iron
	ore = /ore/hematite

/obj/item/weapon/ore/coal
	ore = /ore/coal

/obj/item/weapon/ore/glass
	ore = /ore/glass
	slot_flags = SLOT_HOLSTER

/obj/item/weapon/ore/glass/attack_self(mob/living/user)
	user << "<span class='notice'>You use the sand to make sandstone.</span>"
	var/sandAmt = 1
	for(var/obj/item/weapon/ore/glass/G in user.loc) // The sand on the floor
		sandAmt += 1
		qdel(G)
	while(sandAmt > 0)
		var/obj/item/stack/material/sandstone/SS = new /obj/item/stack/material/sandstone(user.loc)
		if(sandAmt >= SS.max_amount)
			SS.amount = SS.max_amount
		else
			SS.amount = sandAmt
			for(var/obj/item/stack/material/sandstone/SA in user.loc)
				if(SA != SS && SA.amount < SA.max_amount)
					SA.attackby(SS, user) //we try to transfer all old unfinished stacks to the new stack we created.
		sandAmt -= SS.max_amount
	qdel(src)
	return

// POCKET SAND!
/obj/item/weapon/ore/glass/throw_impact(atom/hit_atom)
	..()
	var/mob/living/carbon/human/H = hit_atom
	if(istype(H) && H.has_eyes() && prob(85))
		H << "<span class='danger'>Some of \the [src] gets in your eyes!</span>"
		H.eye_blind += 5
		H.eye_blurry += 10
		spawn(1)
			if(istype(loc, /turf/)) qdel(src)


/obj/item/weapon/ore/phoron
	ore = /ore/phoron

/obj/item/weapon/ore/silver
	ore = /ore/silver

/obj/item/weapon/ore/gold
	ore = /ore/gold

/obj/item/weapon/ore/diamond
	ore = /ore/diamond

/obj/item/weapon/ore/osmium
	ore = /ore/platinum

/obj/item/weapon/ore/hydrogen
	ore = /ore/hydrogen

/obj/item/weapon/ore/attackby(obj/item/weapon/W as obj, mob/user as mob)
	if(istype(W,/obj/item/device/core_sampler))
		var/obj/item/device/core_sampler/C = W
		C.sample_item(src, user)
	else
		return ..()
