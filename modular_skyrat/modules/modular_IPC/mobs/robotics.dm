/datum/species/robotic
    inherent_traits = list(TRAIT_RESISTCOLD,TRAIT_RESISTLOWPRESSURE,TRAIT_ADVANCEDTOOLUSER, TRAIT_RADIMMUNE,TRAIT_VIRUSIMMUNE,TRAIT_NOBREATH, TRAIT_TOXIMMUNE, TRAIT_NOCLONELOSS, TRAIT_GENELESS, TRAIT_STABLEHEART,TRAIT_LIMBATTACHMENT, TRAIT_NO_HUSK, TRAIT_OXYIMMUNE)


/datum/species/robotic/spec_life(mob/living/carbon/human/H)
    . = ..()
    if(H.bodytemperature > BODYTEMP_HEAT_DAMAGE_LIMIT + 150)//IPCs dont burn as quickly as humans... but once they get going
        H.adjustFireLoss(HEAT_DAMAGE_LEVEL_2)//Oofie ouchie, get out


/datum/species/robotic/handle_environment_pressure(datum/gas_mixture/environment, mob/living/carbon/human/H) // I really didnt want to do this.
    . = ..()
    var/pressure = environment.return_pressure()
    var/adjusted_pressure = H.calculate_affecting_pressure(pressure) //FUCK
    switch(adjusted_pressure)
        if(WARNING_LOW_PRESSURE)
            H.adjust_bodytemperature(10) //Cooling isnt as effective here..
            if(prob(1))
                to_chat(H, "<span class='warning'>Alert: Low Pressure Enviroment, Cooling At Risk of Failure. Seek shelter. </span>")
        if(HAZARD_LOW_PRESSURE)
            H.adjust_bodytemperature(160) //We're overheating RAPIDLY.
            if(prob(10))
                to_chat(H, "<span class='warning'>Alert: Extreme Low Pressure Enviroment, Cooling offline. Seek Pressure or Cooling Source Immediately!</span>")
				
				
