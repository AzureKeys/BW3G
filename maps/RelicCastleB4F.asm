	const_def 2 ; object constants
	const RELICCASTLEB4F_COVER_FOSSIL
	const RELICCASTLEB4F_PLUME_FOSSIL
	const RELICCASTLEB4F_LARVESTA

RelicCastleB4F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

LarvestaScript:
	faceplayer
	opentext
	writetext LarvestaText
	cry LARVESTA
	pause 15
	closetext
	writecode VAR_BATTLETYPE, BATTLETYPE_NORMAL
	loadwildmon LARVESTA, 30
	startbattle
	disappear RELICCASTLEB4F_LARVESTA
	reloadmapafterbattle
	end
	
CoverFossilB4FScript:
	opentext
	disappear RELICCASTLEB4F_COVER_FOSSIL
	verbosegiveitem COVER_FOSSIL
	waitsfx
	closetext
	end
	
PlumeFossilB4FScript:
	opentext
	disappear RELICCASTLEB4F_PLUME_FOSSIL
	verbosegiveitem PLUME_FOSSIL
	waitsfx
	closetext
	end

LarvestaText:
	text "Screee!"
	done

RelicCastleB4F_MapEvents:
	db 0, 0 ; filler

	db 6 ; warp events
	warp_event  2,  2, RELIC_CASTLE_B3F, 3
	warp_event  8,  5, RELIC_CASTLE_B4F, 6
	warp_event 19,  9, RELIC_CASTLE_B4F, 5
	warp_event  3, 21, RELIC_PASSAGE_BACK, 8
	warp_event 12, 15, RELIC_CASTLE_B4F, 3
	warp_event 23, 21, RELIC_CASTLE_B4F, 2

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  8,  8, SPRITE_FOSSIL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CoverFossilB4FScript, EVENT_RELIC_CASTLE_B4F_COVER_FOSSIL
	object_event  9,  8, SPRITE_FOSSIL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PlumeFossilB4FScript, EVENT_RELIC_CASTLE_B4F_PLUME_FOSSIL
	object_event 18,  3, SPRITE_LARVESTA, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LarvestaScript, EVENT_RELIC_CASTLE_B4F_LARVESTA
	