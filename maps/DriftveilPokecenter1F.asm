	const_def 2 ; object constants
	const DRIFTVEILPOKECENTER1F_NURSE
	const DRIFTVEILPOKECENTER1F_FISHER
	const DRIFTVEILPOKECENTER1F_YOUNGSTER

DriftveilPokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

DriftveilPokecenter1FNurseScript:
	jumpstd pokecenternurse

DriftveilPokecenter1FFisherScript:
	faceplayer
	opentext
	checkevent EVENT_FINISHED_PWT
	iftrue .PoliceLeft
	writetext DriftveilPokecenter1FFisherText
	waitbutton
	closetext
	end

.PoliceLeft:
	writetext DriftveilPokecenter1FFisher2Text
	waitbutton
	closetext
	end

DriftveilPokecenter1FYoungsterScript:
	jumptextfaceplayer DriftveilPokecenter1FYoungsterText

DriftveilPokecenter1FFisherText:
	text "I just happened to"
	line "come through RELIC"
	cont "PASSAGE. Seems"
	
	para "there's some kind"
	line "of commotion with"
	cont "the police here."
	done

DriftveilPokecenter1FFisher2Text:
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

DriftveilPokecenter1FYoungsterText:
	text "The marketplace"
	line "and the #MON"

	para "shelter, they're"
	line "the places to see"
	cont "in DRIFTVEIL."
	done

DriftveilPokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  3,  7, DRIFTVEIL_CITY, 4
	warp_event  4,  7, DRIFTVEIL_CITY, 4
	warp_event  0,  7, POKECENTER_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DriftveilPokecenter1FNurseScript, -1
	object_event  8,  6, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, DriftveilPokecenter1FFisherScript, -1
	object_event  1,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, DriftveilPokecenter1FYoungsterScript, -1
