/obj/item/weapon/reagent_containers/food/drinks/cans
	volume = 40 //just over one and a half cups
	amount_per_transfer_from_this = 5
	flags = 0 //starts closed

//DRINKS

/obj/item/weapon/reagent_containers/food/drinks/cans/cola
	name = "\improper Space Cola"
	desc = "Cola. in space."
	icon_state = "cola"
	center_of_mass = "x=16;y=10"
	New()
		..()
		reagents.add_reagent("cola", 30)

/obj/item/weapon/reagent_containers/food/drinks/cans/waterbottle
	name = "bottled water"
	desc = "Introduced to the vending machines by Skrellian request, this water comes straight from the Martian poles."
	icon_state = "waterbottle"
	center_of_mass = "x=15;y=8"
	New()
		..()
		reagents.add_reagent("water", 30)

/obj/item/weapon/reagent_containers/food/drinks/cans/space_mountain_wind
	name = "\improper Space Mountain Wind"
	desc = "Blows right through you like a space wind."
	icon_state = "space_mountain_wind"
	center_of_mass = "x=16;y=10"
	New()
		..()
		reagents.add_reagent("spacemountainwind", 30)

/obj/item/weapon/reagent_containers/food/drinks/cans/thirteenloko
	name = "\improper Thirteen Loko"
	desc = "The CMO has advised crew members that consumption of Thirteen Loko may result in seizures, blindness, drunkeness, or even death. Please Drink Responsibly."
	icon_state = "thirteen_loko"
	center_of_mass = "x=16;y=8"
	New()
		..()
		reagents.add_reagent("thirteenloko", 30)

/obj/item/weapon/reagent_containers/food/drinks/cans/dr_gibb
	name = "\improper Dr. Gibb"
	desc = "A delicious mixture of 42 different flavors."
	icon_state = "dr_gibb"
	center_of_mass = "x=16;y=10"
	New()
		..()
		reagents.add_reagent("dr_gibb", 30)

/obj/item/weapon/reagent_containers/food/drinks/cans/starkist
	name = "\improper Star-kist"
	desc = "The taste of a star in liquid form. And, a bit of tuna...?"
	icon_state = "starkist"
	center_of_mass = "x=16;y=10"
	New()
		..()
		reagents.add_reagent("brownstar", 30)

/obj/item/weapon/reagent_containers/food/drinks/cans/space_up
	name = "\improper Space-Up"
	desc = "Tastes like a hull breach in your mouth."
	icon_state = "space-up"
	center_of_mass = "x=16;y=10"
	New()
		..()
		reagents.add_reagent("space_up", 30)

/obj/item/weapon/reagent_containers/food/drinks/cans/lemon_lime
	name = "\improper Lemon-Lime"
	desc = "You wanted ORANGE. It gave you Lemon Lime."
	icon_state = "lemon-lime"
	center_of_mass = "x=16;y=10"
	New()
		..()
		reagents.add_reagent("lemon_lime", 30)

/obj/item/weapon/reagent_containers/food/drinks/cans/iced_tea
	name = "\improper Vrisk Serket Iced Tea"
	desc = "That sweet, refreshing southern earthy flavor. That's where it's from, right? South Earth?"
	icon_state = "ice_tea_can"
	center_of_mass = "x=16;y=10"
	New()
		..()
		reagents.add_reagent("icetea", 30)

/obj/item/weapon/reagent_containers/food/drinks/cans/grape_juice
	name = "\improper Grapel Juice"
	desc = "500 pages of rules of how to appropriately enter into a combat with this juice!"
	icon_state = "purple_can"
	center_of_mass = "x=16;y=10"
	New()
		..()
		reagents.add_reagent("grapejuice", 30)

/obj/item/weapon/reagent_containers/food/drinks/cans/tonic
	name = "\improper T-Borg's Tonic Water"
	desc = "Quinine tastes funny, but at least it'll keep that Space Malaria away."
	icon_state = "tonic"
	center_of_mass = "x=16;y=10"
	New()
		..()
		reagents.add_reagent("tonic", 50)

/obj/item/weapon/reagent_containers/food/drinks/cans/sodawater
	name = "soda water"
	desc = "A can of soda water. Still water's more refreshing cousin."
	icon_state = "sodawater"
	center_of_mass = "x=16;y=10"
	New()
		..()
		reagents.add_reagent("sodawater", 50)

/obj/item/weapon/reagent_containers/food/drinks/cans/stew
	name = "stew tin can"
	desc = "That's the can with the picture of the cow on it."
	icon_state = "stew_closed"
	icon = 'icons/obj/food.dmi'
	New()
		..()
		reagents.add_reagent("nutriment", 25)
		reagents.add_reagent("protein", 15)

/obj/item/weapon/reagent_containers/food/drinks/cans/stew/update_icon()
	..()
	if(flags == OPENCONTAINER)
		icon_state = "stew_open"
	else
		icon_state = "stew_closed"

/obj/item/weapon/reagent_containers/food/drinks/cans/stewpearlbarley
	name = "stew with pearl barley tin can"
	desc = "That's the can with the picture of the cow on it."
	icon_state = "pearlbarleystew_closed"
	icon = 'icons/obj/food.dmi'
	New()
		..()
		reagents.add_reagent("pearlbarley", 30)
		reagents.add_reagent("protein", 10)

/obj/item/weapon/reagent_containers/food/drinks/cans/stewpearlbarley/update_icon()
	..()
	if(flags == OPENCONTAINER)
		icon_state = "pearlbarleystew_open"
	else
		icon_state = "pearlbarleystew_closed"

/obj/item/weapon/reagent_containers/food/drinks/cans/condensedmilk
	name = "condensed milk tin can"
	desc = "That's the condensed milk ."
	icon_state = "condensedmilk_closed"
	icon = 'icons/obj/food.dmi'
	New()
		..()
		reagents.add_reagent("milk", 30)
		reagents.add_reagent("sugar", 10)

/obj/item/weapon/reagent_containers/food/drinks/cans/condensedmilk/update_icon()
	..()
	if(flags == OPENCONTAINER)
		icon_state = "condensedmilk_open"
	else
		icon_state = "condensedmilk_closed"

/obj/item/weapon/reagent_containers/food/drinks/cans/stewbuckwheat
	name = "stew with the buckwheat tin can"
	desc = "That's the buckwheat."
	icon_state = "stewbuckwheat_closed"
	icon = 'icons/obj/food.dmi'
	New()
		..()
		reagents.add_reagent("buckwheat", 30)
		reagents.add_reagent("protein", 10)

/obj/item/weapon/reagent_containers/food/drinks/cans/stewbuckwheat/update_icon()
	..()
	if(flags == OPENCONTAINER)
		icon_state = "stewbuckwheat_open"
	else
		icon_state = "stewbuckwheat_closed"

/obj/item/weapon/reagent_containers/food/drinks/cans/buckwheat
	name = "buckwheat tin can"
	desc = "That's the buckwheat."
	icon_state = "buckwheat_closed"
	icon = 'icons/obj/food.dmi'
	New()
		..()
		reagents.add_reagent("buckwheat", 40)

/obj/item/weapon/reagent_containers/food/drinks/cans/buckwheat/update_icon()
	..()
	if(flags == OPENCONTAINER)
		icon_state = "buckwheat_open"
	else
		icon_state = "buckwheat_closed"


