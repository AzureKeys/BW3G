	const_def 2 ; object constants
	const DRIFTVEILPOKECENTER_NURSE
	const DRIFTVEILPOKECENTER_CLERK
	const DRIFTVEILPOKECENTER_FISHER
	const DRIFTVEILPOKECENTER_YOUNGSTER
	const DRIFTVEILPOKECENTER_COOLTRAINER_F

DriftveilPokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

DriftveilPokecenterNurseScript:
	jumpstd pokecenternurse

DriftveilPokecenterClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_DRIFTVEIL
	closetext
	end

DriftveilPokecenterFisherScript:
	faceplayer
	opentext
	checkevent EVENT_FINISHED_PWT
	iftrue .PoliceLeft
	writetext DriftveilPokecenterFisherText
	waitbutton
	closetext
	end

.PoliceLeft:
	writetext DriftveilPokecenterFisher2Text
	waitbutton
	closetext
	end

DriftveilPokecenterYoungsterScript:
	jumptextfaceplayer DriftveilPokecenterYoungsterText

DriftveilPokecenterCooltrainerFScript:
	jumptextfaceplayer DriftveilPokecenterCooltrainerFText

DriftveilPokecenterCooltrainerFText:
	text "There's a shelter"
	line "for #MON here"
	
	para "in town, run by"
	line "former members of"
	cont "TEAM PLASMA."
	done

DriftveilPokecenterFisherText:
	text "I just happened to"
	line "come through RELIC"
	cont "PASSAGE. Seems"
	
	para "there's some kind"
	line "of commotion with"
	cont "the police here."
	done

DriftveilPokecenterFisher2Text:
	text "Caves collapse"
	line "easily."

	para "Several caves have"
	line "disappeared in the"

	para "past few years,"
	line "like the one here"
	cont "north of town."

	para "As a pro HIKER,"
	line "that's common"
	cont "knowledge."
	done

DriftveilPokecenterYoungsterText:
	text "The marketplace,"
	line "the #MON WORLD"

	para "TOURNAMENT, the"
	line "STONE EMPOREUM,"
	
	para "they're the places"
	line "to see in"
	cont "DRIFTVEIL CITY."
	done

DriftveilPokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4,  9, DRIFTVEIL_CITY, 4
	warp_event  5,  9, DRIFTVEIL_CITY, 4

	db 0 ; coord events

	db 0 ; bg events

	db 5 ; object events
	object_event  4,  2, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DriftveilPokecenterNurseScript, -1
	object_event  8,  7, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DriftveilPokecenterClerkScript, -1
	object_event  1,  9, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, DriftveilPokecenterFisherScript, -1
	object_event  1,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, DriftveilPokecenterYoungsterScript, -1
	object_event  8,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, DriftveilPokecenterCooltrainerFScript, -1
