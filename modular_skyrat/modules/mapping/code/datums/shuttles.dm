/datum/map_template/shuttle/shipstation
	port_id = "station"
	who_can_purchase = null
	suffix = "ship"
	name = "NTSS 'Companionship'"

/datum/map_template/shuttle/whiteship/ship
	suffix = "ship"
	name = "NTSS 'Friendship'"

/datum/map_template/shuttle/arrival/outpost
	suffix = "outpost"
	name = "arrival shuttle (Outpost)"

/datum/map_template/shuttle/emergency/outpost
	suffix = "outpost"
	name = "Outpoststation Emergency Shuttle"
	description = "The perfect shuttle for rectangle enthuasiasts, this long and slender shuttle has been known for it's incredible(Citation Needed) safety rating."
	admin_notes = "Has airlocks on both sides of the shuttle and will probably ram deltastation's maint wing below medical. Oh well?"
	credit_cost = CARGO_CRATE_VALUE * 4

/datum/map_template/shuttle/cybersun
	port_id = "cybersun"
	shuttle_id = "cybersun"
	who_can_purchase = null
	prefix = "_maps/skyrat/shuttles/"
	suffix = "cybersun"
	name = "SCSBC-12"

/obj/docking_port/stationary/picked/cybersun  //I wish whoever made shuttlecode this bad a severely bad day
	name = "Deep Space"
	id = "cybersun_home"
	dir = 2
	height = 17
	width = 33
	shuttlekeys = list("cybersun")

/obj/docking_port/mobile/cybersun
	name = "cybersun"
	id = "cybersun"
	dir = 2
	preferred_direction = 2
	height = 17
	width = 33
	rechargeTime = 100
