/mob/living/simple_animal/hostile/asteroid/ice_demon
	name = "demonic watcher"
	desc = "A creature formed entirely out of ice, bluespace energy emanates from inside of it."
	icon = 'icons/mob/icemoon/icemoon_monsters.dmi'
	icon_state = "ice_demon"
	icon_living = "ice_demon"
	icon_dead = "ice_demon_dead"
	icon_gib = "syndicate_gib"
	mob_biotypes = MOB_ORGANIC|MOB_BEAST
	mouse_opacity = MOUSE_OPACITY_ICON
	speak_emote = list("telepathically cries")
	speed = 2
	move_to_delay = 3 //SKYRAT EDIT: - Makes Ice watchers move normally. 
	projectiletype = /obj/projectile/temp/basilisk/ice
	projectilesound = 'sound/weapons/pierce.ogg'
	ranged = TRUE
	ranged_message = "manifests ice"
	ranged_cooldown_time = 5 SECONDS //SKYRAT EDIT: - Makes ice-watchers spam attacks less often
	minimum_distance = 3
	retreat_distance = 1 //SKYRAT EDIT: - Makes ice-watchers less deadly to everything
	maxHealth = 150
	health = 150
	obj_damage = 20 //SKYRAT EDIT: -Lowers their object damage
	melee_damage_lower = 15
	melee_damage_upper = 15
	attack_verb_continuous = "slices"
	attack_verb_simple = "slice"
	attack_sound = 'sound/weapons/bladeslice.ogg'
	vision_range = 7//SKYRAT EDIT: - Makes watchers no longer be able to aggro from off-screen or through walls.
	aggro_vision_range = 7//SKYRAT EDIT: - Makes watchers no longer be able to aggro from off-screen or through walls.    
	attack_vis_effect = ATTACK_EFFECT_SLASH
	move_force = MOVE_FORCE_VERY_STRONG
	move_resist = MOVE_FORCE_VERY_STRONG
	pull_force = MOVE_FORCE_VERY_STRONG
	del_on_death = TRUE
	loot = list()
	crusher_loot = /obj/item/crusher_trophy/watcher_wing/ice_wing
	deathmessage = "fades as the energies that tied it to this world dissipate."
	deathsound = 'sound/magic/demon_dies.ogg'
	stat_attack = HARD_CRIT
	is_flying_animal = TRUE
	robust_searching = TRUE
	footstep_type = FOOTSTEP_MOB_CLAW
	/// Distance the demon will teleport from the target
	var/teleport_distance = 1 //SKYRAT EDIT: -Ice watchers no longer teleport until 1 tile away from the player.

/obj/projectile/temp/basilisk/ice
	name = "ice blast"
	damage = 10 //SKYRAT EDIT: - Exchanges some cold into raw damage.
	speed = 4
	nodamage = FALSE
	temperature = -30 //SKYRAT EDIT: - Makes Demonic Ice Watchers less deadly to everyone

/mob/living/simple_animal/hostile/asteroid/ice_demon/OpenFire()
	ranged_cooldown = world.time + ranged_cooldown_time
	// Sentient ice demons teleporting has been linked to server crashes
	if(client)
		return ..()
	if(teleport_distance <= 0)
		return ..()
	var/list/possible_ends = view(teleport_distance, target.loc) - view(teleport_distance - 1, target.loc)
	for(var/turf/closed/turf_to_remove in possible_ends)
		possible_ends -= turf_to_remove
	if(!possible_ends.len)
		return ..()
	var/turf/end = pick(possible_ends)
	do_teleport(src, end, 0,  channel=TELEPORT_CHANNEL_BLUESPACE, forced = TRUE)
	SLEEP_CHECK_DEATH(8)
	return ..()

/mob/living/simple_animal/hostile/asteroid/ice_demon/Life(delta_time = SSMOBS_DT, times_fired)
	. = ..()
	if(!. || target)
		return
	//adjustHealth(-0.0125 * maxHealth * delta_time) SKYRAT EDIT: - Who thought this was acceptable? Disables regen.

/mob/living/simple_animal/hostile/asteroid/ice_demon/death(gibbed)
	move_force = MOVE_FORCE_DEFAULT
	move_resist = MOVE_RESIST_DEFAULT
	pull_force = PULL_FORCE_DEFAULT
	new /obj/item/stack/ore/bluespace_crystal(loc, 3)
	//if(prob(5))//SKYRAT EDIT - REMOVES CHANCE TO SPAWN BLUESPACE CORES
		//new /obj/item/raw_anomaly_core/bluespace(loc)//SKYRAT EDIT - REMOVES CHANCE TO SPAWN BLUESPACE CORES
	return ..()
