/obj/structure/sandbag
	name = "sandbag"
	icon = 'icons/obj/sandbags.dmi'
	icon_state = "sandbag"
	anchored = 1
	climbable = 1
	density = 1
	throwpass = 1
	var/cover = 80

/obj/structure/girder/bullet_act(var/obj/item/projectile/Proj)
	//Sandbags only provide partial cover. There's a chance that the projectiles will just pass through.
	if(Proj.original != src && !prob(cover))
		return PROJECTILE_CONTINUE //pass through

/obj/structure/sandbag/ex_act(severity)
	switch(severity)
		if(1.0)
			PoolOrNew(/obj/structure/sandbag, src.loc)
			PoolOrNew(/obj/structure/sandbag, src.loc)
			PoolOrNew(/obj/structure/sandbag, src.loc)
			qdel(src)
			return
		if(2.0)
			PoolOrNew(/obj/structure/sandbag, src.loc)
			PoolOrNew(/obj/structure/sandbag, src.loc)
			qdel(src)
			return
		else
	return