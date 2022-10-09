	const_def 2 ; object constants
	const PKMNLEAGUEPOKECENTER_NURSE
	const PKMNLEAGUEPOKECENTER_CLERK

PkmnLeaguePokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

PkmnLeaguePokecenterNurseScript:
	jumpstd pokecenternurse

PkmnLeaguePokecenterClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_PKMN_LEAGUE
	closetext
	end

PkmnLeaguePokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4,  9, PKMN_LEAGUE_ENTRANCE, 4
	warp_event  5,  9, PKMN_LEAGUE_ENTRANCE, 4

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  4,  2, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PkmnLeaguePokecenterNurseScript, -1
	object_event  8,  7, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PkmnLeaguePokecenterClerkScript, -1
	