	const_def 2 ; object constants
	const PKMNLEAGUEPOKECENTER_NURSE
	const PKMNLEAGUEPOKECENTER_CLERK
	const VICTORYROADPOKECENTER_RANGER_M
	const VICTORYROADPOKECENTER_COOLTRAINER_F

PkmnLeaguePokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

PkmnLeaguePokecenterNurseScript:
	jumpstd pokecenternurse

PkmnLeaguePokecenterClerkScript:
	jumpstd scalingmart
	
PkmnLeaguePokecenterRangerMScript:
	jumptextfaceplayer PkmnLeaguePokecenterRangerMText
	
PkmnLeaguePokecenterCooltrainerFScript:
	jumptextfaceplayer PkmnLeaguePokecenterCooltrainerFText
	
PkmnLeaguePokecenterRangerMText:
	text "No matter how many"
	line "times the ELITE"
	cont "FOUR defeat me…"
	
	para "I'll keep moving"
	line "forward with my"
	cont "#MON!"
	done
	
PkmnLeaguePokecenterCooltrainerFText:
	text "Understand what"
	line "type of #MON"
	
	para "each of the ELITE"
	line "FOUR uses. That is"
	
	para "a shortcut for"
	line "victory!"
	done

PkmnLeaguePokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4,  9, PKMN_LEAGUE_ENTRANCE, 4
	warp_event  5,  9, PKMN_LEAGUE_ENTRANCE, 4

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	object_event  4,  2, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PkmnLeaguePokecenterNurseScript, -1
	object_event  8,  7, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PkmnLeaguePokecenterClerkScript, -1
	object_event  1,  7, SPRITE_RANGER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, PkmnLeaguePokecenterRangerMScript, -1
	object_event  8,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, PkmnLeaguePokecenterCooltrainerFScript, -1
	