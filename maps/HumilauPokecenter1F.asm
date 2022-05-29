	const_def 2 ; object constants
	const HUMILAUPOKECENTER_NURSE
	const HUMILAUPOKECENTER_CLERK
	const HUMILAUPOKECENTER_FISHER
	const HUMILAUPOKECENTER_GENTLEMAN
	const HUMILAUPOKECENTER_TEACHER

HumilauPokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

HumilauPokecenterNurseScript:
	jumpstd pokecenternurse

HumilauPokecenterClerkScript:
	opentext
	checkflag ENGINE_POKEDEX
	iftrue .PokeBallsInStock
	pokemart MARTTYPE_STANDARD, MART_HUMILAU
	closetext
	end

.PokeBallsInStock:
	pokemart MARTTYPE_STANDARD, MART_HUMILAU_DEX
	closetext
	end

HumilauPokecenterFisherScript:
	jumptextfaceplayer HumilauPokecenterFisherText

HumilauPokecenterGentlemanScript:
	jumptextfaceplayer HumilauPokecenterGentlemanText

HumilauPokecenterTeacherScript:
	jumptextfaceplayer HumilauPokecenterTeacherText

HumilauPokecenterFisherText:
	text "Alright! Here's"
	line "some advice from a"

	para "guy who spends all"
	line "of his time in"
	cont "#MON CENTERs!"
	
	para "When your #MON"
	line "have low HP, make"
	cont "sure to heal them!"
	done

HumilauPokecenterGentlemanText:
	text "That PC is free"
	line "for any trainer"
	cont "to use."
	done

HumilauPokecenterTeacherText:
	text "It's so convenient"
	line "having the MART"

	para "built into the"
	line "#MON CENTER."
	
	para "It's your one-stop"
	line "shop for all"
	cont "things #MON!"
	done

HumilauPokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4,  9, HUMILAU_CITY, 3
	warp_event  5,  9, HUMILAU_CITY, 3

	db 0 ; coord events

	db 0 ; bg events

	db 5 ; object events
	object_event  4,  2, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HumilauPokecenterNurseScript, -1
	object_event  8,  7, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, HumilauPokecenterClerkScript, -1
	object_event  1,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, HumilauPokecenterFisherScript, -1
	object_event  8,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HumilauPokecenterGentlemanScript, -1
	object_event  1,  7, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, HumilauPokecenterTeacherScript, -1
