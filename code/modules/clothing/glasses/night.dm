
// nightvision goggles

/obj/item/clothing/glasses/night
	name = "night vision goggles"
	desc = "You can totally see in the dark now!"
	icon_state = "night"
	item_state = "glasses"
	darkness_view = 7
	lighting_alpha = LIGHTING_PLANE_ALPHA_INVISIBLE


/obj/item/clothing/glasses/night/M4RA
	name = "\improper M4RA Battle sight"
	desc = "A headset and night vision goggles system for the M4RA Battle Rifle. Allows highlighted imaging of surroundings. Click it to toggle."
	icon = 'icons/obj/clothing/glasses.dmi'
	icon_state = "m56_goggles"
	deactive_state = "m56_goggles_0"
	vision_flags = SEE_TURFS
	darkness_view = 12
	toggleable = 1
	actions_types = list(/datum/action/item_action/toggle)


/obj/item/clothing/glasses/night/m42_night_goggles
	name = "\improper M42 scout sight"
	desc = "A headset and night vision goggles system for the M42 Scout Rifle. Allows highlighted imaging of surroundings. Click it to toggle."
	icon = 'icons/obj/clothing/glasses.dmi'
	icon_state = "m56_goggles"
	deactive_state = "m56_goggles_0"
	vision_flags = SEE_TURFS
	darkness_view = 24
	toggleable = 1
	actions_types = list(/datum/action/item_action/toggle)


/obj/item/clothing/glasses/night/m42_night_goggles/upp
	name = "\improper Type 9 commando goggles"
	desc = "A headset and night vision goggles system used by UPP forces. Allows highlighted imaging of surroundings. Click it to toggle."
	icon_state = "upp_goggles"
	deactive_state = "upp_goggles_0"


/obj/item/clothing/glasses/night/m56_goggles
	name = "\improper M56 head mounted sight"
	desc = "A headset and goggles system for the M56 Smartgun. Has a low-res short range imager, allowing for view of terrain."
	icon = 'icons/obj/clothing/glasses.dmi'
	icon_state = "m56_goggles"
	deactive_state = "m56_goggles_0"
	darkness_view = 8
	toggleable = 1
	actions_types = list(/datum/action/item_action/toggle)
	vision_flags = SEE_TURFS

/obj/item/clothing/glasses/night/m56_goggles/mob_can_equip(mob/user, slot)
	if(slot == SLOT_GLASSES)
		if(ishuman(user))
			var/mob/living/carbon/human/H = user
			if(!istype(H.back, /obj/item/smartgun_powerpack))
				to_chat(user, "You must be wearing an M56 Powerpack on your back to wear these.")
				return 0
	return ..()

/obj/item/clothing/glasses/night/sectoid
	name = "alien lens"
	desc = "A thick, black coating over an alien's eyes, allowing them to see in the dark."
	icon_state = "alien_lens"
	item_state = "alien_lens"
	darkness_view = 7
	lighting_alpha = LIGHTING_PLANE_ALPHA_INVISIBLE
	flags_item = NODROP|DELONDROP
