/**********************Mining Equipment Vendor Items**************************/
//misc stuff you can buy from the vendor that has special code but doesn't really need its own file

/**********************Facehugger toy**********************/
/obj/item/clothing/mask/facehugger/toy
	inhand_icon_state = "facehugger_inactive"
	desc = "A toy often used to play pranks on other miners by putting it in their beds. It takes a bit to recharge after latching onto something."
	throwforce = 0
	real = 0
	sterile = 1
	tint = 3 //Makes it feel more authentic when it latches on
	special_desc_requirement = EXAMINE_CHECK_ROLE //SKYRAT EDIT
	special_desc_roles = list("ROLE_ALIEN") //SKYRAT EDIT
	special_desc = "This appears to be a mechanical mockery of our young." //SKYRAT EDIT

/obj/item/clothing/mask/facehugger/toy/Die()
	return
