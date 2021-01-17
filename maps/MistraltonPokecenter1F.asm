	const_def 2 ; object constants
	const MISTRALTONPOKECENTER1F_NURSE
	const MISTRALTONPOKECENTER1F_COOLTRAINER_M
	const MISTRALTONPOKECENTER1F_COOLTRAINER_F
	const MISTRALTONPOKECENTER1F_BUG_CATCHER

MistraltonPokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

MistraltonPokecenter1FNurseScript:
	jumpstd pokecenternurse

MistraltonPokecenter1FCooltrainerMScript:
	faceplayer
	opentext
	checkevent EVENT_SKYLA_RETURNED
	iftrue .SkylaReturned
	writetext MistraltonPokecenter1FCooltrainerMText
	waitbutton
	closetext
	end

.SkylaReturned:
	writetext MistraltonPokecenter1FCooltrainerMText_SkylaReturned
	waitbutton
	closetext
	end

MistraltonPokecenter1FCooltrainerFScript:
	jumptextfaceplayer MistraltonPokecenter1FCooltrainerFText

MistraltonPokecenter1FBugCatcherScript:
	jumptextfaceplayer MistraltonPokecenter1FBugCatcherText

MistraltonPokecenter1FCooltrainerMText:
	text "Where in the world"
	line "is MISTRALTON's"

	para "GYM LEADER? I want"
	line "to challenge her."
	done

MistraltonPokecenter1FCooltrainerMText_SkylaReturned:
	text "The GYM here in"
	line "MISTRALTON CITY"
	cont "is wild!"

	para "You'll be flying"
	line "through the air!"
	done

MistraltonPokecenter1FCooltrainerFText:
	text "I heard that the"
	line "path to TWIST"
	cont "MOUNTAIN is gone."

	para "I wonder what"
	line "happened to it."
	done

MistraltonPokecenter1FBugCatcherText:
	text "My dream is to be-"
	line "come a GYM LEADER."
	done

MistraltonPokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  3,  7, MISTRALTON_CITY, 3
	warp_event  4,  7, MISTRALTON_CITY, 3
	warp_event  0,  7, POKECENTER_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MistraltonPokecenter1FNurseScript, -1
	object_event  8,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, MistraltonPokecenter1FCooltrainerMScript, -1
	object_event  5,  3, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, MistraltonPokecenter1FCooltrainerFScript, -1
	object_event  1,  6, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MistraltonPokecenter1FBugCatcherScript, -1
