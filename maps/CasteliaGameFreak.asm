	const_def 2 ; object constants
	const CASTELIAGAMEFREAK_AZURE

CasteliaGameFreak_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

AzureScript:
	faceplayer
	opentext
	writetext AzureBusyText
	waitbutton
	closetext
	end

GameFreakSign:
	jumptext GameFreakSignText

AzureBusyText:
	text "Shh, GAME FREAK"
	line "isn't open right"
	cont "now."
	
	para "Come back later,"
	line "I'm busy trying to"
	
	para "figure out how to"
	line "get rid of those"
	
	para "graphical bugs in"
	line "KALOS CRYSTAL…"
	done

GameFreakSignText:
	text "GAME FREAK HQ."
	
	para "Office closed for"
	line "vacation."
	done

CasteliaGameFreak_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  9, CASTELIA_CITY_STREETS, 19
	warp_event  3,  9, CASTELIA_CITY_STREETS, 19

	db 0 ; coord events

	db 1 ; bg events
	bg_event  7,  0, BGEVENT_READ, GameFreakSign

	db 1 ; object events
	object_event  2,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, AzureScript, -1
	