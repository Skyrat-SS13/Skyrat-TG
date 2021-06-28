/obj/item/organ/corticalstack
	name = "Cortical Stack"
	desc = "A strange, crystalline storage device containing 'DHF', digitised conciousness."
	icon = 'modular_skyrat/modules/neural-lacing/icons/Neuralstack.dmi'
	icon_state = "cortical-stack-on"
	base_icon_state = "cortical-stack"
	zone = BODY_ZONE_HEAD
	slot = ORGAN_SLOT_STACK

	var/active
	var/invasive = 1 //WILL THIS KILL THE HOST IF REMOVED?
	var/ownerckey
	var/datum/mind/backup
	var/prompting = FALSE // Are we waiting for a user prompt before backing them up to DHF?

/obj/item/organ/corticalstack/examine()
	. = ..()
	if(!backup && !ownerckey && active) //SHOULD NOT HAPPEN
		. += span_info("The integrity light upon the lace is dull, and black. The DHF is corrupted beyond repair.")
		return
	if((ownerckey && (backup || backup.get_ghost()))) //Incase something incredibly bad happens
		if(organ_flags & ORGAN_FAILING)
			. += span_info("The integrity light upon the neural lace is flashing a dull red, damaged. You may be able to restore it with some <b>cable coils</b>.")
		else
			. += span_info("The integrity light is showing a pale blue.")
	else
		. += span_info("This one is dark and dull, empty.")


/obj/item/organ/corticalstack/Insert(mob/living/carbon/MSTACK)
	if(!active)
		ownerckey = MSTACK.ckey
		backup = MSTACK.mind
		active = TRUE
		to_chat(MSTACK, span_danger("You feel a sharp sting, and then a cool, almost numbing sensation spread over your form; your cortical stack coming online..."))
	owner.visible_message(span_notice("[MSTACK] jerks violently as the cortical stack is inserted..."))
	if(active)
		if(MSTACK.mind)
			owner.visible_message(span_warning("..Before ceasing, the stack letting out an alarm; unable to override the conciousness within."))
		else
			owner.visible_message(span_notice("..Before ceasing, the stack letting out a ping; it has succeeded in integrating with their neural systems."))
			to_chat(MSTACK, span_notice("You feel a strange, ephermeal sensation come over you, as you re-awaken from your slumber..."))
			if(!backup)
				MSTACK.ckey = ownerckey
				MSTACK.SetSleeping(100)
			else
				MSTACK.ckey = ownerckey
				MSTACK.mind = backup
				MSTACK.SetSleeping(100)

/obj/item/organ/corticalstack/Remove(mob/living/carbon/MSTACK)
	if(invasive)
		MSTACK.death()
		owner.visible_message(span_danger("[MSTACK] violently siezes as their stack is removed!"))
	else
		owner.visible_message(span_danger("[MSTACK] twinges in discomfort; although remains concious."))
