	const_def 2 ; object constants
	const VIRBANKPOKECENTER_NURSE
	const VIRBANKPOKECENTER_CLERK
	const VIRBANKPOKECENTER_LASS
	const VIRBANKPOKECENTER_GYM_GUY
	const VIRBANKPOKECENTER_ROUGHNECK

VirbankPokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

VirbankPokecenterNurseScript:
	jumpstd pokecenternurse

VirbankPokecenterClerkScript:
	jumpstd scalingmart

VirbankPokecenterLassScript:
	jumptextfaceplayer VirbankPokecenterLassText

VirbankGymGuyScript:
	faceplayer
	checkevent EVENT_BEAT_ROXIE
	iftrue .VirbankGymGuyWinScript
	opentext
	writetext VirbankGymGuyText
	waitbutton
	closetext
	end

.VirbankGymGuyWinScript:
	opentext
	writetext VirbankGymGuyWinText
	waitbutton
	closetext
	end

VirbankPokecenterRoughneckScript:
	jumptextfaceplayer VirbankPokecenterRoughneckText

VirbankPokecenterLassText:
	text "Listen! Challenge"
	line "poison type #-"
	cont "MON with poison"
	cont "type #MON!"

	para "At least that's"
	line "what ROXIE told"
	
	para "me. She plays an"
	line "instrument! Pretty"
	cont "cool!"
	done

VirbankGymGuyText:
	text "The #MON GYM"
	line "trainers here"
	cont "kicked me out!"

	para "They said I was"
	line "ruining their"
	cont "vibe…"

	para "Here's some ad-"
	line "vice: the GYM"

	para "LEADER uses the"
	line "poison-type."

	para "So you should"
	line "confound her with"
	cont "psychic #MON."

	para "Earth shaking"
	line "ground-type moves"
	cont "work well too."
	done

VirbankGymGuyWinText:
	text "<PLAYER>! You won!"
	line "I could tell by"
	cont "looking at you!"
	done

VirbankPokecenterRoughneckText:
	text "ROXIE's band!"

	para "It's getting hard"
	line "to buy tickets to"

	para "their shows"
	line "lately! Maybe"

	para "they'll go on a"
	line "world tour soon!"
	done

VirbankPokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4,  9, VIRBANK_CITY, 1
	warp_event  5,  9, VIRBANK_CITY, 1

	db 0 ; coord events

	db 0 ; bg events

	db 5 ; object events
	object_event  4,  2, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VirbankPokecenterNurseScript, -1
	object_event  8,  7, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VirbankPokecenterClerkScript, -1
	object_event  1,  3, SPRITE_LASS, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, VirbankPokecenterLassScript, -1
	object_event  1,  7, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VirbankGymGuyScript, -1
	object_event  8,  4, SPRITE_ROUGHNECK, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, VirbankPokecenterRoughneckScript, -1
