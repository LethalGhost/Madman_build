/obj/item/weapon/key
	name = "key"
	desc = "Used to unlock things."
	icon = 'icons/obj/items.dmi'
	icon_state = "keys"
	var/key_data = ""

/obj/item/weapon/key/New(var/newloc,var/data)
	if(data)
		key_data = data
	..(newloc)

/obj/item/weapon/key/proc/get_data(var/mob/user)
	return key_data

/obj/item/weapon/key/soap
	name = "soap key"
	desc = "a fragile key made using a bar of soap."
	var/uses = 0

/obj/item/weapon/key/soap/get_data(var/mob/user)
	uses--
	if(uses == 1)
		user << "<span class='warning'>\The [src] is going to break soon!</span>"
	else if(uses <= 0)
		user.drop_item(src)
		user << "<span class='warning'>\The [src] crumbles in your hands.</span>"
		qdel(src)
	return ..()

/obj/item/weapon/key/soviet/sgt
	key_data = "sovsgt"

/obj/item/weapon/key/soviet/lt
	key_data = "sovlt"

/obj/item/weapon/key/soviet/snp
	key_data = "sovsnp"

/obj/item/weapon/key/soviet/gr
	key_data = "sovgr"

/obj/item/weapon/key/soviet/med
	key_data = "sovmed"

/obj/item/weapon/key/soviet/rad
	key_data = "sovrad"

/obj/item/weapon/key/soviet/cpl
	key_data = "sovcpk"

/obj/item/weapon/key/usmc/sgt
	key_data = "ussgt"

/obj/item/weapon/key/usmc/lt
	key_data = "uslt"

/obj/item/weapon/key/usmc/snp
	key_data = "ussnp"

/obj/item/weapon/key/usmc/gr
	key_data = "usgr"

/obj/item/weapon/key/usmc/med
	key_data = "usmed"

/obj/item/weapon/key/usmc/rad
	key_data = "usrad"

/obj/item/weapon/key/usmc/cpl
	key_data = "uscpl"