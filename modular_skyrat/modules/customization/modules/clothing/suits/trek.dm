//Trek Jacket(s?)
/obj/item/clothing/suit/storage/fluff/fedcoat
	name = "Federation Uniform Jacket"
	desc = "A uniform jacket from the United Federation. Set phasers to awesome."
	icon = 'modular_skyrat/master_files/icons/obj/clothing/suits/trek.dmi'
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/suits/trek.dmi'
	icon_state = "fedcoat"
	inhand_icon_state = "fedcoat"
	body_parts_covered = CHEST|GROIN|ARMS
	allowed = list(
				/obj/item/tank/internals/emergency_oxygen,
				/obj/item/flashlight,
				/obj/item/analyzer,
				/obj/item/radio,
				/obj/item/gun,
				/obj/item/melee/baton,
				/obj/item/restraints/handcuffs,
				/obj/item/reagent_containers/hypospray,
				/obj/item/hypospray,
				/obj/item/healthanalyzer,
				/obj/item/reagent_containers/syringe,
				/obj/item/reagent_containers/glass/bottle/vial,
				/obj/item/reagent_containers/glass/beaker,
				/obj/item/storage/pill_bottle,
				/obj/item/taperecorder)
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	var/unbuttoned = 0

	//this may or may not make it so that the jackets can be unbuttoned(?)
	verb/toggle()
		set name = "Toggle coat buttons"
		set category = "Object"
		set src in usr

		var/mob/living/I = usr
		if(!istype(I) || !CHECK_MOBILITY(I, MOBILITY_USE))
			return FALSE

		switch(unbuttoned)
			if(0)
				icon_state = "[initial(icon_state)]_open"
				inhand_icon_state = "[initial(inhand_icon_state)]_open"
				unbuttoned = 1
				to_chat(usr,"You unbutton the coat.")
			if(1)
				icon_state = "[initial(icon_state)]"
				inhand_icon_state = "[initial(inhand_icon_state)]"
				unbuttoned = 0
				to_chat(usr,"You button up the coat.")
		usr.update_inv_wear_suit()

/obj/item/clothing/suit/storage/fluff/fedcoat/medsci
	icon_state = "fedblue"
	inhand_icon_state = "fedblue"

/obj/item/clothing/suit/storage/fluff/fedcoat/eng
	icon_state = "fedeng"
	inhand_icon_state = "fedeng"

/obj/item/clothing/suit/storage/fluff/fedcoat/capt
	icon_state = "fedcapt"
	inhand_icon_state = "fedcapt"

//fedcoat but modern
/obj/item/clothing/suit/storage/fluff/fedcoat/modern
	name = "Modern Federation Uniform Jacket"
	desc = "A modern uniform jacket from the United Federation."
	icon_state = "fedmodern"
	inhand_icon_state = "fedmodern"

/obj/item/clothing/suit/storage/fluff/fedcoat/modern/medsci
	icon_state = "fedmodernblue"
	inhand_icon_state = "fedmodernblue"

/obj/item/clothing/suit/storage/fluff/fedcoat/modern/eng
	icon_state = "fedmoderneng"
	inhand_icon_state = "fedmoderneng"

/obj/item/clothing/suit/storage/fluff/fedcoat/modern/sec
	icon_state = "fedmodernsec"
	inhand_icon_state = "fedmodernsec"
