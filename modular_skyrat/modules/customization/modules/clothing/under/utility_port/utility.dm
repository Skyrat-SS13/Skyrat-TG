/obj/item/clothing/under/utility
	icon = 'modular_skyrat/modules/customization/icons/obj/clothing/uniforms.dmi'
	worn_icon = 'modular_skyrat/modules/customization/icons/mob/clothing/uniform.dmi'
	name = "general utility uniform"
	desc = "A utility uniform worn by civilian-ranked crew."
	icon_state = "util_gen"
	body_parts_covered = CHEST|ARMS|GROIN|LEGS
	can_adjust = FALSE

/obj/item/clothing/under/utility/eng
	name = "engineering utility uniform"
	desc = "A utility uniform worn by Engineering personnel."
	icon_state = "util_eng"
	armor = list(MELEE = 0, BULLET = 0, LASER = 0, ENERGY = 0, BOMB = 0, BIO = 0, RAD = 10, FIRE = 60, ACID = 20) //Same stats as default engineering jumpsuit

/obj/item/clothing/under/utility/med
	name = "medical utility uniform"
	desc = "A utility uniform worn by Medical doctors."
	icon_state = "util_med"
	permeability_coefficient = 0.5
	armor = list(MELEE = 0, BULLET = 0, LASER = 0, ENERGY = 0, BOMB = 0, BIO = 10, RAD = 0, FIRE = 0, ACID = 0) //Same stats as default medical jumpsuit

/obj/item/clothing/under/utility/sci
	name = "science utility uniform"
	desc = "A utility uniform worn by NT-certified Science staff."
	icon_state = "util_sci"
	permeability_coefficient = 0.5
	armor = list(MELEE = 0, BULLET = 0, LASER = 0,ENERGY = 0, BOMB = 10, BIO = 0, RAD = 0, FIRE = 0, ACID = 0) //Same stats as default science jumpsuit

/obj/item/clothing/under/utility/cargo
	name = "supply utility uniform"
	desc = "A utility uniform worn by Supply and Delivery services."
	icon_state = "util_cargo"

/obj/item/clothing/under/utility/sec
	name = "security utility uniform"
	desc = "A utility uniform worn by Security officers."
	icon_state = "util_sec"
	armor = list(MELEE = 10, BULLET = 0, LASER = 0,ENERGY = 0, BOMB = 0, BIO = 0, RAD = 0, FIRE = 30, ACID = 30, WOUND = 10) //Same stats as default security jumpsuit

/obj/item/clothing/under/utility/com
	name = "command utility uniform"
	desc = "A utility uniform worn by Station Command."
	icon_state = "util_com"
	armor = list(MELEE = 0, BULLET = 0, LASER = 0,ENERGY = 0, BOMB = 0, BIO = 0, RAD = 0, FIRE = 0, ACID = 0, WOUND = 15) //Same stats as default captain uniform

/obj/item/clothing/under/utility/robo_sleek
	name = "sleek roboticst jumpsuit"
	desc = "A sleek version of the roboticist uniform, complete with sci-fi stripes."
	icon_state = "robosleek"

/obj/item/clothing/under/utility/para_red
	name = "red paramedic jumpsuit"
	desc = "It's made of a special fiber that provides minor protection against biohazards. It's detailed with red stripes and medical symbols, denoting the wearer as a first-responder."
	icon_state = "pmedred"
	mutant_variants = NONE
	permeability_coefficient = 0.5
	armor = list(MELEE = 0, BULLET = 0, LASER = 0,ENERGY = 0, BOMB = 0, BIO = 10, RAD = 0, FIRE = 0, ACID = 0) //Same stats as the paramedic uniform

/obj/item/clothing/under/utility/haz_green
	name = "gas hazard uniform"
	desc = "A hazard uniform with additional protection from gas and chemical hazards, at the cost of less fire- and radiation-proofing."
	icon_state = "hazard_green"
	can_adjust = TRUE
	armor = list(MELEE = 0, BULLET = 0, LASER = 0, ENERGY = 0, BOMB = 0, BIO = 10, RAD = 0, FIRE = 20, ACID = 60)

/obj/item/clothing/under/utility/haz_white
	name = "hazard EMT uniform"
	desc = "An EMT uniform used for first responders in situations involving gas and/or chemical hazards. The label reads, \"Not designed for prolonged exposure\"."
	icon_state = "hazard_white"
	can_adjust = TRUE
	armor = list(MELEE = 0, BULLET = 0, LASER = 0, ENERGY = 0, BOMB = 0, BIO = 10, RAD = 0, FIRE = 10, ACID = 50) //Worse stats than the proper hazard uniform
