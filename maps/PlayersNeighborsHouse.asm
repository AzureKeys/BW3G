	const_def 2 ; object constants
	const PLAYERSNEIGHBORSHOUSE_COOLTRAINER_F
	const PLAYERSNEIGHBORSHOUSE_POKEFAN_F

PlayersNeighborsHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

PlayersNeighborsDaughterScript:
	checkevent EVENT_HUMILAU_CITY_HEART_SCALE
	iffalse .GiveScale
	jumptextfaceplayer PlayersNeighborsDaughterText
	
.GiveScale
	faceplayer
	opentext
	writetext PlayersNeighborGiveScaleText
	buttonsound
	verbosegiveitem HEART_SCALE
	iffalse .no_room
	setevent EVENT_HUMILAU_CITY_HEART_SCALE
.no_room
	closetext
	end

PlayersNeighborScript:
	jumptextfaceplayer PlayersNeighborText

PlayersNeighborsHouseBookshelfScript:
	jumpstd magazinebookshelf

PlayersNeighborsDaughterText:
	text "MARLON is so"
	line "cool!"

	para "I heard he can"
	line "catch fish #-"
	cont "MON with his"
	cont "bare hands!"

	para "…sigh…"

	para "I wish I could be"
	line "a GYM LEADER like"
	cont "him…"
	done

PlayersNeighborText:
	text "My daughter is"
	line "adamant about"

	para "becoming MARLON's"
	line "assistant."

	para "She really loves"
	line "#MON!"

	para "But then, so do I!"
	done

PlayersNeighborGiveScaleText:
	text "Oh, <PLAY_G>!"
	line "I found this"

	para "pretty scale by"
	line "the beach today!"

	para "You should take"
	line "it, maybe it's"
	cont "good luck!"
	done

PlayersNeighborsHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, HUMILAU_CITY, 2
	warp_event  3,  7, HUMILAU_CITY, 2

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, PlayersNeighborsHouseBookshelfScript
	bg_event  1,  1, BGEVENT_READ, PlayersNeighborsHouseBookshelfScript
	
	db 2 ; object events
	object_event  2,  3, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PlayersNeighborsDaughterScript, -1
	object_event  5,  3, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PlayersNeighborScript, EVENT_PLAYERS_NEIGHBORS_HOUSE_NEIGHBOR
