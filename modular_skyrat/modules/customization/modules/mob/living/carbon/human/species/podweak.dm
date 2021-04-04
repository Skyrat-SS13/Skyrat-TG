/datum/species/pod
	inherent_traits = list(TRAIT_ADVANCEDTOOLUSER)
	cultures = list(/datum/cultural_info/culture/lavaland)
	locations = list(/datum/cultural_info/location/stateless)
	factions = list(/datum/cultural_info/faction/none)

/datum/species/pod/podweak
	name = "Podperson"
	id = "podweak"
	limbs_id = "pod"
	species_traits = list(MUTCOLORS,EYECOLOR, HAS_FLESH, HAS_BONE, HAIR, FACEHAIR)
	mutant_bodyparts = list()
	default_mutant_bodyparts = list()

	cultures = list(CULTURES_EXOTIC, CULTURES_HUMAN)
	locations = list(LOCATIONS_GENERIC, LOCATIONS_HUMAN)
	factions = list(FACTIONS_GENERIC, FACTIONS_HUMAN)
