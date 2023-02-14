	const_def 2 ; object constants
	const PLAYERSNEIGHBORSHOUSE_LASS
	const PLAYERSNEIGHBORSHOUSE_TEACHER

PlayersNeighborsHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

PlayersNeighborsDaughterScript:
	checkevent EVENT_HUMILAU_CITY_HEART_SCALE
	iffalse .GiveScale
	checkflag ENGINE_POKEDEX
	iffalse .NoDex
	jumptextfaceplayer PlayersNeighborsDaughter2Text
	
.NoDex
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

PlayersNeighborsDaughter2Text:
	text "Hey, <PLAY_G>!"
	line "Are you going on a"
	cont "#MON journey?"

	para "You're so lucky!"

	para "Hey, hey! If your"
	line "mom marries my"

	para "mom, then I'll be"
	line "your little"
	cont "sister!"
	
	para "Then you'll have"
	line "to teach me to be"
	cont "a #MON trainer!"
	done

PlayersNeighborText:
	text "Oh, hello"
	line "<PLAY_G>."

	para "It's been so nice"
	line "since you and your"

	para "mom moved out here"
	line "to HUMILAU CITY."

	para "She really is a"
	line "lovely woman!"
	
	para "I think I'll take"
	line "her out on a trip"
	
	para "to the beach for"
	line "our next date."
	
	para "You remember to"
	line "call your mother"
	cont "sometimes!"
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
	object_event  2,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PlayersNeighborsDaughterScript, -1
	object_event  5,  3, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PlayersNeighborScript, EVENT_PLAYERS_NEIGHBORS_HOUSE_NEIGHBOR
