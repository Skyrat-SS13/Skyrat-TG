/datum/dispatch_ticket
	var/creator
	var/creator_spoofed
	var/priority
	var/ticket_type
	var/location
	var/location_spoofed
	var/title
	var/extra
	var/status
	var/key
	var/created
	var/mob/handler
	var/list/mob/handler_past = list()

/datum/dispatch_ticket/New(mob/user, list/tdata)
	if(tdata["creator-spoofed"])
		creator = tdata["creator"]
	else creator = "[user]"
	if(tdata["location-spoofed"])
		location = tdata["location"]
	else location = "[get_area(user)]"
	priority = tdata["priority"]
	ticket_type = tdata["type"]
	title = tdata["title"]
	extra = tdata["extra"]
	status = SSDISPATCH_TICKET_STATUS_OPEN

/datum/dispatch_ticket/proc/handle(mob/user)
	status = SSDISPATCH_TICKET_STATUS_ACTIVE
	if(handler)
		handler_past += handler
	handler = user
