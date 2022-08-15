	const_def 2 ; object constants
	const FLOCCESYRANCHHOUSE_TWIN

FloccesyTownHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
FloccesyHouseTwinScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_PINK_BOW
	iftrue .gotbow
	writetext FloccesyHouseTwinIntroText
	buttonsound
	verbosegiveitem PINK_BOW
	iffalse .noroom
	setevent EVENT_GOT_PINK_BOW
.gotbow
	writetext FloccesyHouseGotBowText
	waitbutton
.noroom
	closetext
	end

FloccesyHouseBookshelf:
	jumpstd picturebookshelf

FloccesyHouseTwinIntroText:
	text "I love fairy type"
	line "#MON! They're"
	cont "so cute!"
	
	para "Do you like fairy"
	line "type #MON too?"
	
	para "You should give"
	line "them this!"
	done

FloccesyHouseGotBowText:
	text "This pretty bow"
	line "makes fairy moves"
	cont "stronger!"
	
	para "Give it to your"
	line "favorite fairy"
	cont "#MON!"
	done

FloccesyTownHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, FLOCCESY_TOWN, 2
	warp_event  3,  7, FLOCCESY_TOWN, 2

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, FloccesyHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, FloccesyHouseBookshelf

	db 1 ; object events
	object_event  2,  4, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, FloccesyHouseTwinScript, -1
	