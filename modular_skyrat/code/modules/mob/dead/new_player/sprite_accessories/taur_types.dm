/datum/sprite_accessory/taur
	icon = 'modular_skyrat/icons/mob/sprite_accessory/taur.dmi'
	key = "taur"
	generic = "Taur Type"
	skip_type = /datum/sprite_accessory/taur
	color_src = USE_MATRIXED_COLORS
	dimension_x = 64
	center = TRUE
	var/taur_mode = NONE //Must be a single specific tauric suit variation bitflag. Don't do FLAG_1|FLAG_2
	var/alt_taur_mode = NONE //Same as above.
	var/hide_legs = USE_QUADRUPED_CLIP_MASK

/datum/sprite_accessory/taur/none
	name = "None"
	dimension_x = 32
	center = FALSE
	recommended_species = null
	hide_legs = FALSE

/datum/sprite_accessory/taur/cow
	name = "Cow"
	icon_state = "cow"
	taur_mode = STYLE_HOOF_TAURIC
	alt_taur_mode = STYLE_PAW_TAURIC
	color_src = USE_ONE_COLOR

/datum/sprite_accessory/taur/cow/spotted
	name = "Cow (Spotted)"
	icon_state = "cow_spotted"
	color_src = USE_MATRIXED_COLORS

/datum/sprite_accessory/taur/deer
	name = "Deer"
	icon_state = "deer"
	taur_mode = STYLE_HOOF_TAURIC
	alt_taur_mode = STYLE_PAW_TAURIC
	color_src = USE_ONE_COLOR
	extra = TRUE

/datum/sprite_accessory/taur/drake
	name = "Drake"
	icon_state = "drake"
	taur_mode = STYLE_PAW_TAURIC
	color_src = USE_ONE_COLOR
	extra = TRUE

/datum/sprite_accessory/taur/drake/old
	name = "Drake (Old)"
	icon_state = "drake_old"
	color_src = USE_MATRIXED_COLORS
	extra = FALSE

/datum/sprite_accessory/taur/drider
	name = "Drider"
	icon_state = "drider"
	color_src = USE_ONE_COLOR
	extra = TRUE

/datum/sprite_accessory/taur/eevee
	name = "Eevee"
	icon_state = "eevee"
	taur_mode = STYLE_PAW_TAURIC
	color_src = USE_ONE_COLOR
	extra = TRUE

/datum/sprite_accessory/taur/horse
	name = "Horse"
	icon_state = "horse"
	taur_mode = STYLE_HOOF_TAURIC
	alt_taur_mode = STYLE_PAW_TAURIC

/datum/sprite_accessory/taur/naga
	name = "Naga"
	icon_state = "naga"
	taur_mode = STYLE_SNEK_TAURIC
	hide_legs = USE_SNEK_CLIP_MASK

/datum/sprite_accessory/taur/otie
	name = "Otie"
	icon_state = "otie"
	taur_mode = STYLE_PAW_TAURIC

/datum/sprite_accessory/taur/pede
	name = "Scolipede"
	icon_state = "pede"
	taur_mode = STYLE_PAW_TAURIC
	color_src = USE_ONE_COLOR
	extra = TRUE
	extra2 = TRUE

/datum/sprite_accessory/taur/tentacle
	name = "Tentacle"
	icon_state = "tentacle"
	taur_mode = STYLE_SNEK_TAURIC
	color_src = USE_ONE_COLOR
	hide_legs = USE_SNEK_CLIP_MASK

/datum/sprite_accessory/taur/canine
	name = "Canine"
	icon_state = "canine"
	taur_mode = STYLE_PAW_TAURIC
	color_src = USE_ONE_COLOR
	extra = TRUE

/datum/sprite_accessory/taur/feline
	name = "Feline"
	icon_state = "feline"
	taur_mode = STYLE_PAW_TAURIC
	color_src = USE_ONE_COLOR
	extra = TRUE
