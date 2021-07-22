/datum/job/janitor
	title = "Janitor"
	department_head = list("Corporate Liasion")
	faction = "Station"
	total_positions = 2
	spawn_positions = 1
	supervisors = "the corporate liasion"
	selection_color = "#bbe291"

	outfit = /datum/outfit/job/janitor
	plasmaman_outfit = /datum/outfit/plasmaman/janitor

	paycheck = PAYCHECK_EASY
	paycheck_department = ACCOUNT_SRV

	display_order = JOB_DISPLAY_ORDER_JANITOR
	departments = DEPARTMENT_SERVICE

	family_heirlooms = list(/obj/item/mop, /obj/item/clothing/suit/caution, /obj/item/reagent_containers/glass/bucket, /obj/item/paper/fluff/stations/soap)

	mail_goodies = list(
		/obj/item/grenade/chem_grenade/cleaner = 30,
		/obj/item/storage/box/lights/mixed = 20,
		/obj/item/lightreplacer = 10
	)

/datum/outfit/job/janitor
	name = "Janitor"
	jobtype = /datum/job/janitor

	belt = /obj/item/pda/janitor
	ears = /obj/item/radio/headset/headset_srv
	uniform = /obj/item/clothing/under/utility/syndicate
	backpack_contents = list(/obj/item/modular_computer/tablet/preset/advanced=1)

	id_trim = /datum/id_trim/job/janitor

/datum/outfit/job/janitor/pre_equip(mob/living/carbon/human/H, visualsOnly)
	. = ..()
	if(GARBAGEDAY in SSevents.holidays)
		backpack_contents += /obj/item/gun/ballistic/revolver
		r_pocket = /obj/item/ammo_box/a357
