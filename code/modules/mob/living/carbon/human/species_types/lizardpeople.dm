/datum/species/lizard
	// Reptilian humanoids with scaled skin and tails.
	name = "Lizardperson"
	id = "lizard"
	say_mod = "hisses"
	default_color = "00FF00"
	species_traits = list(MUTCOLORS,EYECOLOR,LIPS,HAS_FLESH,HAS_BONE)
	inherent_biotypes = MOB_ORGANIC|MOB_HUMANOID|MOB_REPTILE
	mutant_bodyparts = list("tail_lizard", "snout", "spines", "horns", "frills", "body_markings", "legs")
	mutanttongue = /obj/item/organ/tongue/lizard
	//mutant_organs = list(/obj/item/organ/tail/lizard) //SKYRAT EDIT REMOVAL - CUSTOMIZATION
	coldmod = 1.5
	heatmod = 0.67
	payday_modifier = 0.75
	default_features = list("mcolor" = "0F0", "tail_lizard" = "Smooth", "snout" = "Round", "horns" = "None", "frills" = "None", "spines" = "None", "body_markings" = "None", "legs" = "Normal Legs")
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_PRIDE | MIRROR_MAGIC | RACE_SWAP | ERT_SPAWN | SLIME_EXTRACT
	attack_verb = "slash"
	attack_sound = 'sound/weapons/slash.ogg'
	miss_sound = 'sound/weapons/slashmiss.ogg'
	meat = /obj/item/reagent_containers/food/snacks/meat/slab/human/mutant/lizard
	skinned_type = /obj/item/stack/sheet/animalhide/lizard
	exotic_bloodtype = "L"
	disliked_food = GRAIN | DAIRY
	liked_food = GROSS | MEAT
	inert_mutation = FIREBREATH
	deathsound = 'sound/voice/lizard/deathsound.ogg'
	wings_icon = "Dragon"
	species_language_holder = /datum/language_holder/lizard
	// Lizards are coldblooded and can stand a greater temperature range than humans
	bodytemp_heat_damage_limit = (BODYTEMP_HEAT_DAMAGE_LIMIT + 20) // This puts lizards 10 above lavaland max heat for ash lizards.
	bodytemp_cold_damage_limit = (BODYTEMP_COLD_DAMAGE_LIMIT - 10)

/// Lizards are cold blooded and do not stabilize body temperature naturally
/datum/species/lizard/natural_bodytemperature_stabilization(datum/gas_mixture/environment, mob/living/carbon/human/H)
	return

/datum/species/lizard/random_name(gender,unique,lastname)
	if(unique)
		return random_unique_lizard_name(gender)

	var/randname = lizard_name(gender)

	if(lastname)
		randname += " [lastname]"

	return randname

//SKYRAT EDIT REMOVAL BEGIN - CUSTOMIZATION (moved to modular)
/*
//I wag in death SKYRAT EDIT - customization
/datum/species/lizard/spec_death(gibbed, mob/living/carbon/human/H)
	if(H)
		stop_wagging_tail(H)

/datum/species/lizard/spec_stun(mob/living/carbon/human/H,amount)
	if(H)
		stop_wagging_tail(H)
	. = ..()

/datum/species/lizard/can_wag_tail(mob/living/carbon/human/H)
	return ("tail_lizard" in mutant_bodyparts) || ("waggingtail_lizard" in mutant_bodyparts)

/datum/species/lizard/is_wagging_tail(mob/living/carbon/human/H)
	return ("waggingtail_lizard" in mutant_bodyparts)

/datum/species/lizard/start_wagging_tail(mob/living/carbon/human/H)
	if("tail_lizard" in mutant_bodyparts)
		mutant_bodyparts -= "tail_lizard"
		mutant_bodyparts -= "spines"
		mutant_bodyparts |= "waggingtail_lizard"
		mutant_bodyparts |= "waggingspines"
	H.update_body()

/datum/species/lizard/stop_wagging_tail(mob/living/carbon/human/H)
	if("waggingtail_lizard" in mutant_bodyparts)
		mutant_bodyparts -= "waggingtail_lizard"
		mutant_bodyparts -= "waggingspines"
		mutant_bodyparts |= "tail_lizard"
		mutant_bodyparts |= "spines"
	H.update_body()

/datum/species/lizard/on_species_gain(mob/living/carbon/C, datum/species/old_species, pref_load)
	var/real_tail_type = C.dna.features["tail_lizard"]
	var/real_spines = C.dna.features["spines"]

	. = ..()

	// Special handler for loading preferences. If we're doing it from a preference load, we'll want
	// to make sure we give the appropriate lizard tail AFTER we call the parent proc, as the parent
	// proc will overwrite the lizard tail. Species code at its finest.
	if(pref_load)
		C.dna.features["tail_lizard"] = real_tail_type
		C.dna.features["spines"] = real_spines

		var/obj/item/organ/tail/lizard/new_tail = new /obj/item/organ/tail/lizard()

		new_tail.tail_type = C.dna.features["tail_lizard"]
		C.dna.species.mutant_bodyparts |= "tail_lizard"

		new_tail.spines = C.dna.features["spines"]
		C.dna.species.mutant_bodyparts |= "spines"

		// organ.Insert will qdel any existing organs in the same slot, so
		// we don't need to manage that.
		new_tail.Insert(C, TRUE, FALSE)
*/
//SKYRAT EDIT REMOVAL END

/*
 Lizard subspecies: ASHWALKERS
*/
/datum/species/lizard/ashwalker
	name = "Ash Walker"
	id = "ashlizard"
	limbs_id = "lizard"
	species_traits = list(MUTCOLORS,EYECOLOR,LIPS,DIGITIGRADE,HAS_FLESH,HAS_BONE)
	inherent_traits = list(TRAIT_CHUNKYFINGERS,TRAIT_NOBREATH)
	species_language_holder = /datum/language_holder/lizard/ash
