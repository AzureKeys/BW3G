	const_def 2 ; object constants
	const CASTELIAGAMEFREAK_AZURE

CasteliaGameFreak_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

AzureScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_HILBERT_HILDA
	iftrue .beat_hilbert_hilda
	writetext AzureBusyText
	waitbutton
	closetext
	end
	
.beat_hilbert_hilda
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .hilda
	writetext AzureBeatHilbertText
	jump .next
.hilda
	writetext AzureBeatHildaText
.next
	buttonsound
	writetext AzureThanksText
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
	line "I'm working on"
	
	para "porting this game"
	line "to the POLISHED"
	cont "CRYSTAL engine…"
	done
	
AzureBeatHilbertText:
	text "Oh hey, you beat"
	line "HILBERT!"
	done
	
AzureBeatHildaText:
	text "Oh hey, you beat"
	line "HILDA!"
	done
	
AzureThanksText:
	text "Congrats!"
	
	para "Thanks for playing"
	line "my game! I've"
	
	para "worked really hard"
	line "on it, and I've"
	
	para "had help from a"
	line "lot of very"
	
	para "talented"
	line "individuals."
	
	para "I'm currently"
	line "working on porting"
	
	para "the game to the"
	line "POLISHED CRYSTAL"
	cont "engine."
	
	para "It'll add a ton of"
	line "new features, and"
	
	para "general improve-"
	line "ments to the game!"
	
	para "Keep an eye out"
	line "for news about the"
	
	para "next release, and"
	line "once again,"
	
	para "Thank you for"
	line "playing!"
	done

GameFreakSignText:
	text "GAME FREAK HQ."
	
	para "Office closed for"
	line "vacation."
	
	para "Inquire at the"
	line "KALOS office for"
	cont "information."
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
	object_event  2,  2, SPRITE_SCIENTIST_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, AzureScript, -1
	