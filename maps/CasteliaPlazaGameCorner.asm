	const_def 2 ; object constants
	const CASTELIAPLAZAGAMECORNER_CLERK
	const CASTELIAPLAZAGAMECORNER_RECEPTIONIST
	const CASTELIAPLAZAGAMECORNER_TEACHER
	const CASTELIAPLAZAGAMECORNER_POKEFAN_M
	const CASTELIAPLAZAGAMECORNER_SUPER_NERD
	const CASTELIAPLAZAGAMECORNER_FISHER

CasteliaPlazaGameCorner_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CasteliaPlazaGameCornerCoinVendorScript:
	jumpstd gamecornercoinvendor
	
CasteliaPlazaGameCornerReceptionistScript:
	jumptextfaceplayer CasteliaPlazaGameCornerReceptionistText
	
CasteliaPlazaGameCornerSignScript:
	jumptext CasteliaPlazaGameCornerSignText

CasteliaPlazaGameCornerElevatorButton:
	jumpstd elevatorbutton

CasteliaPlazaGameCornerTeacherScript:
	faceplayer
	opentext
	writetext CasteliaPlazaGameCornerTeacherText
	waitbutton
	closetext
	turnobject CASTELIAPLAZAGAMECORNER_TEACHER, LEFT
	end

CasteliaPlazaGameCornerPokefanMScript:
	faceplayer
	opentext
	writetext CasteliaPlazaGameCornerPokefanMText
	waitbutton
	closetext
	turnobject CASTELIAPLAZAGAMECORNER_POKEFAN_M, RIGHT
	end

CasteliaPlazaGameCornerSuperNerdScript:
	faceplayer
	opentext
	writetext CasteliaPlazaGameCornerSuperNerdText
	waitbutton
	closetext
	turnobject CASTELIAPLAZAGAMECORNER_SUPER_NERD, LEFT
	end

CasteliaPlazaGameCornerFisherScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_COINS_FROM_CASTELIA_PLAZA_FISHER
	iftrue .GotCoins
	writetext CasteliaPlazaGameCornerFisherText1
	buttonsound
	checkitem COIN_CASE
	iffalse .NoCoinCase
	checkcoins MAX_COINS - 1
	ifequal HAVE_MORE, .FullCoinCase
	stringtotext .coinname, MEM_BUFFER_1
	scall .GiveCoins
	givecoins 200
	setevent EVENT_GOT_COINS_FROM_CASTELIA_PLAZA_FISHER
.GotCoins:
	writetext CasteliaPlazaGameCornerFisherText2
	waitbutton
	closetext
	turnobject LAST_TALKED, RIGHT
	end

.GiveCoins:
	jumpstd receiveitem
	end

.coinname
	db "COIN@"

.NoCoinCase:
	writetext CasteliaPlazaGameCornerFisherNoCoinCaseText
	waitbutton
	closetext
	turnobject LAST_TALKED, RIGHT
	end

.FullCoinCase:
	writetext CasteliaPlazaGameCornerFisherFullCoinCaseText
	waitbutton
	closetext
	turnobject LAST_TALKED, RIGHT
	end

CasteliaPlazaGameCornerSlotsMachineScript:
	random 6
	ifequal 0, CasteliaPlazaGameCornerLuckySlotsMachineScript
	refreshscreen
	writebyte FALSE
	special SlotMachine
	closetext
	end

CasteliaPlazaGameCornerLuckySlotsMachineScript:
	refreshscreen
	writebyte TRUE
	special SlotMachine
	closetext
	end

CasteliaPlazaGameCornerCardFlipMachineScript:
	refreshscreen
	special CardFlip
	closetext
	end
	
CasteliaPlazaGameCornerSignText:
	text "CASTELIA PLAZA"
	line "GAME CORNER."

	para "Earn coins to win"
	line "fabulous prizes!"
	done
	
CasteliaPlazaGameCornerReceptionistText:
	text "Welcome!"

	para "You may exchange"
	line "your coins for"

	para "fabulous prizes"
	line "upstairs."
	done

CasteliaPlazaGameCornerTeacherText:
	text "It's this machine"
	line "I want."

	para "It cleaned me out"
	line "yesterday, so it"

	para "should pay out"
	line "today."
	done

CasteliaPlazaGameCornerPokefanMText:
	text "Hmmm… The odds are"
	line "surely better for"

	para "PIKACHU's line,"
	line "but… What to do?"
	done

CasteliaPlazaGameCornerSuperNerdText:
	text "I think this slot"
	line "machine will pay"
	cont "out…"

	para "The odds vary"
	line "among machines."
	done

CasteliaPlazaGameCornerFisherText1:
	text "Gahahaha!"

	para "The coins just"
	line "keep popping out!"

	para "Hm? What, kid? You"
	line "want to play?"

	para "I'll share my luck"
	line "with you!"
	done

CasteliaPlazaGameCornerFisherText2:
	text "Gahahaha!"

	para "It makes me feel"
	line "good to do nice"

	para "things for other"
	line "people!"
	done

CasteliaPlazaGameCornerFisherNoCoinCaseText:
	text "Hey, you don't"
	line "have a COIN CASE."

	para "How am I supposed"
	line "to give you any"
	cont "coins, kid?"
	done

CasteliaPlazaGameCornerFisherFullCoinCaseText:
	text "Hey, your COIN"
	line "CASE is full, kid."

	para "You must be riding"
	line "a winning streak"
	cont "too."
	done

CasteliaPlazaGameCorner_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  7,  0, CASTELIA_PLAZA_PRIZE_ROOM, 1
	warp_event 10,  0, CASTELIA_PLAZA_LOBBY, 3
	warp_event 16,  0, CASTELIA_PLAZA_ELEVATOR, 1

	db 0 ; coord events

	db 26 ; bg events
	bg_event  2,  6, BGEVENT_READ, CasteliaPlazaGameCornerSlotsMachineScript
	bg_event  2,  7, BGEVENT_READ, CasteliaPlazaGameCornerLuckySlotsMachineScript
	bg_event  2,  8, BGEVENT_READ, CasteliaPlazaGameCornerSlotsMachineScript
	bg_event  2,  9, BGEVENT_READ, CasteliaPlazaGameCornerSlotsMachineScript
	bg_event  3,  6, BGEVENT_READ, CasteliaPlazaGameCornerSlotsMachineScript
	bg_event  3,  7, BGEVENT_READ, CasteliaPlazaGameCornerSlotsMachineScript
	bg_event  3,  8, BGEVENT_READ, CasteliaPlazaGameCornerLuckySlotsMachineScript
	bg_event  3,  9, BGEVENT_READ, CasteliaPlazaGameCornerSlotsMachineScript
	bg_event 14,  6, BGEVENT_READ, CasteliaPlazaGameCornerLuckySlotsMachineScript
	bg_event 14,  7, BGEVENT_READ, CasteliaPlazaGameCornerSlotsMachineScript
	bg_event 14,  8, BGEVENT_READ, CasteliaPlazaGameCornerSlotsMachineScript
	bg_event 14,  9, BGEVENT_READ, CasteliaPlazaGameCornerLuckySlotsMachineScript
	bg_event 15,  6, BGEVENT_READ, CasteliaPlazaGameCornerLuckySlotsMachineScript
	bg_event 15,  7, BGEVENT_READ, CasteliaPlazaGameCornerSlotsMachineScript
	bg_event 15,  8, BGEVENT_READ, CasteliaPlazaGameCornerSlotsMachineScript
	bg_event 15,  9, BGEVENT_READ, CasteliaPlazaGameCornerSlotsMachineScript
	bg_event  8,  6, BGEVENT_READ, CasteliaPlazaGameCornerCardFlipMachineScript
	bg_event  8,  7, BGEVENT_READ, CasteliaPlazaGameCornerCardFlipMachineScript
	bg_event  8,  8, BGEVENT_READ, CasteliaPlazaGameCornerCardFlipMachineScript
	bg_event  8,  9, BGEVENT_READ, CasteliaPlazaGameCornerCardFlipMachineScript
	bg_event  9,  6, BGEVENT_READ, CasteliaPlazaGameCornerCardFlipMachineScript
	bg_event  9,  7, BGEVENT_READ, CasteliaPlazaGameCornerCardFlipMachineScript
	bg_event  9,  8, BGEVENT_READ, CasteliaPlazaGameCornerCardFlipMachineScript
	bg_event  9,  9, BGEVENT_READ, CasteliaPlazaGameCornerCardFlipMachineScript
	bg_event 13,  0, BGEVENT_READ, CasteliaPlazaGameCornerSignScript
	bg_event 17,  0, BGEVENT_READ, CasteliaPlazaGameCornerElevatorButton

	db 6 ; object events
	object_event  1,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CasteliaPlazaGameCornerCoinVendorScript, -1
	object_event  3,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CasteliaPlazaGameCornerReceptionistScript, -1
	object_event  4,  7, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CasteliaPlazaGameCornerTeacherScript, -1
	object_event  7,  9, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CasteliaPlazaGameCornerPokefanMScript, -1
	object_event 10,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, CasteliaPlazaGameCornerSuperNerdScript, -1
	object_event 13,  7, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, CasteliaPlazaGameCornerFisherScript, -1
	