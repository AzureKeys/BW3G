	const_def 2 ; object constants
	const VIRBANKPOKECENTER_NURSE
	const VIRBANKPOKECENTER_CLERK
	const VIRBANKPOKECENTER_LASS
	const VIRBANKPOKECENTER_GYM_GUY
	const VIRBANKPOKECENTER_SUPER_NERD

VirbankPokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

VirbankPokecenterNurseScript:
	jumpstd pokecenternurse

VirbankPokecenterClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_VIRBANK
	closetext
	end

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

VirbankPokecenterSuperNerdScript:
	jumptextfaceplayer VirbankPokecenterSuperNerdText

VirbankPokecenterLassText:
	text "Did you go to the"
	line "GAME CORNER?"

	para "You can win some"
	line "useful prizes!"
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

VirbankPokecenterSuperNerdText:
	text "I love showing off"
	line "the #MON that"

	para "I've raised."
	line "Don't you?"

	para "I'm going to get"
	line "into a bunch of"

	para "battles, and show"
	line "off my #MON!"
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
	object_event  8,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, VirbankPokecenterSuperNerdScript, -1
