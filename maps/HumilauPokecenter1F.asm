	const_def 2 ; object constants
	const HUMILAUPOKECENTER1F_NURSE
	const HUMILAUPOKECENTER1F_FISHER
	const HUMILAUPOKECENTER1F_GENTLEMAN
	const HUMILAUPOKECENTER1F_TEACHER

HumilauPokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

HumilauPokecenter1FNurseScript:
	jumpstd pokecenternurse

HumilauPokecenter1FFisherScript:
	jumptextfaceplayer HumilauPokecenter1FFisherText

HumilauPokecenter1FGentlemanScript:
	jumptextfaceplayer HumilauPokecenter1FGentlemanText

HumilauPokecenter1FTeacherScript:
	faceplayer
	opentext
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue .CommCenterOpen
	writetext HumilauPokecenter1FTeacherText
	waitbutton
	closetext
	end

.CommCenterOpen:
	writetext HumilauPokecenter1FTeacherText_CommCenterOpen
	waitbutton
	closetext
	end

HumilauPokecenter1FFisherText:
	text "It's great. I can"
	line "store any number"

	para "of #MON, and"
	line "it's all free."
	done

HumilauPokecenter1FGentlemanText:
	text "That PC is free"
	line "for any trainer"
	cont "to use."
	done

HumilauPokecenter1FTeacherText:
	text "The COMMUNICATION"
	line "CENTER upstairs"
	cont "was just built."

	para "But they're still"
	line "finishing it up."
	done

HumilauPokecenter1FTeacherText_CommCenterOpen:
	text "The COMMUNICATION"
	line "CENTER upstairs"
	cont "was just built."

	para "I traded #MON"
	line "there already!"
	done

HumilauPokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  3,  7, HUMILAU_CITY, 3
	warp_event  4,  7, HUMILAU_CITY, 3
	warp_event  0,  7, POKECENTER_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HumilauPokecenter1FNurseScript, -1
	object_event  2,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, HumilauPokecenter1FFisherScript, -1
	object_event  8,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HumilauPokecenter1FGentlemanScript, -1
	object_event  1,  6, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, HumilauPokecenter1FTeacherScript, -1
