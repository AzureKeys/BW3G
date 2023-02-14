	const_def 2 ; object constants
	const ICIRRUSFANCLUB_SCARF_GIVER
	const ICIRRUSFANCLUB_ELECTRIZER_GIVER
	const ICIRRUSFANCLUB_MAGMARIZER_GIVER
	const ICIRRUSFANCLUB_COOLTRAINER_F
	const ICIRRUSFANCLUB_MUNNA
	const ICIRRUSFANCLUB_GENTLEMAN
	const ICIRRUSFANCLUB_DUCKLETT

IcirrusFanClub_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

IcirrusFanClubElectrizerGiver:
	faceplayer
	opentext
	checkevent EVENT_GOT_ELECTRIZER
	iftrue .got_electrizer
	writetext IcirrusFanClubElectrizerGiver_AskScaleText
	yesorno
	iffalse IcirrusFanClubDeclined
	checkitem HEART_SCALE
	iffalse IcirrusFanClubNoScale
	writetext IcirrusFanClubElectrizerGiver_ThanksText
	buttonsound
	verbosegiveitem ELECTRIZER
	iffalse .no_room
	takeitem HEART_SCALE
	setevent EVENT_GOT_ELECTRIZER
.got_electrizer
	writetext IcirrusFanClubElectrizerGiver_GaveItemText
.no_room
	waitbutton
	closetext
	end

IcirrusFanClubMagmarizerGiver:
	faceplayer
	opentext
	checkevent EVENT_GOT_MAGMARIZER
	iftrue .got_magmarizer
	writetext IcirrusFanClubElectrizerGiver_AskScaleText
	yesorno
	iffalse IcirrusFanClubDeclined
	checkitem HEART_SCALE
	iffalse IcirrusFanClubNoScale
	writetext IcirrusFanClubElectrizerGiver_ThanksText
	buttonsound
	verbosegiveitem MAGMARIZER
	iffalse .no_room
	takeitem HEART_SCALE
	setevent EVENT_GOT_MAGMARIZER
.got_magmarizer
	writetext IcirrusFanClubElectrizerGiver_GaveItemText
.no_room
	waitbutton
	closetext
	end
	
IcirrusFanClubDeclined:
	writetext IcirrusFanClubElectrizerGiver_DeclinedText
	waitbutton
	closetext
	end
	
IcirrusFanClubNoScale:
	writetext IcirrusFanClubElectrizerGiver_NoScaleText
	waitbutton
	closetext
	end

IcirrusFanClubScarfGiver:
	faceplayer
	opentext
	checkevent EVENT_GOT_CHOICE_SCARF
	iftrue .got_scarf
	writetext IcirrusFanClubScarfGiver_AskMonText
	buttonsound
	callasm LoadBuffers
	writebyte $3
	special CheckStatExp
	ifnotequal FALSE, .no_scarf
	writetext IcirrusFanClubScarfGiver_GoodMonText
	buttonsound
	verbosegiveitem CHOICE_SCARF
	iffalse .no_scarf
	setevent EVENT_GOT_CHOICE_SCARF
.got_scarf
	writetext IcirrusFanClubScarfGiver_GotScarfText
.no_scarf
	waitbutton
	closetext
	end
	
LoadBuffers:
; Threshold = 25600 Stat Exp = $6400
	ld a, $64
	ld [wBuffer1], a
	xor a
	ld [wBuffer2], a
	ret
	
IcirrusFanClubCooltrainerFScript:
	jumptextfaceplayer IcirrusFanClubCooltrainerFText
	
IcirrusFanClubGentlemanScript:
	jumptextfaceplayer IcirrusFanClubGentlemanText
	
IcirrusFanClubMunnaScript:
	opentext
	writetext IcirrusFanClubMunnaText
	cry MUNNA
	waitbutton
	closetext
	end
	
IcirrusFanClubDucklettScript:
	opentext
	writetext IcirrusFanClubDucklettText
	cry DUCKLETT
	waitbutton
	closetext
	end
	
IcirrusFanClubElectrizerGiver_AskScaleText:
	text "I want to make my"
	line "#MON remember"
	
	para "one of its old"
	line "moves at the tutor"
	
	para "in MISTRALTON"
	line "CITY, but I don't"
	
	para "have any HEART"
	line "SCALES."
	
	para "Could I have one"
	line "of yours?"
	done
	
IcirrusFanClubElectrizerGiver_ThanksText:
	text "Hey, thanks!"
	line "Here, you can have"
	cont "this in return!"
	done
	
IcirrusFanClubElectrizerGiver_GaveItemText:
	text "That's a rare item"
	line "that can make"
	
	para "certain #MON"
	line "evolve when its"
	cont "held!"
	done
	
IcirrusFanClubElectrizerGiver_DeclinedText:
	text "Ah, really? That's"
	line "too bad."
	done
	
IcirrusFanClubElectrizerGiver_NoScaleText:
	text "Hey! You don't"
	line "have any HEART"
	cont "SCALES either!"
	done
	
IcirrusFanClubScarfGiver_AskMonText:
	text "If you want to be"
	line "the best, there's"
	
	para "one thing that"
	line "matters above all"
	cont "else: SPEED!"
	
	para "If you have a"
	line "#MON that has"
	
	para "mastered its SPEED"
	line "training, show it"
	cont "to me!"
	done
	
IcirrusFanClubScarfGiver_GoodMonText:
	text "Yes, that #MON"
	line "has incredible"
	cont "SPEED!"
	
	para "Take this for your"
	line "efforts."
	done
	
IcirrusFanClubScarfGiver_GotScarfText:
	text "By choosing only"
	line "one move, your"
	
	para "#MON will move"
	line "with even greater"
	cont "SPEED!"
	done
	
IcirrusFanClubCooltrainerFText:
	text "Welcome to the"
	line "#MON FAN CLUB!"
	
	para "We love all #-"
	line "MON, strong and"
	cont "cute!"
	done
	
IcirrusFanClubGentlemanText:
	text "Ah, I see you're a"
	line "fan of #MON as"
	cont "well!"
	
	para "The regulars here"
	line "really get into"
	
	para "their #MON"
	line "training!"
	done
	
IcirrusFanClubMunnaText:
	text "Muuuu!"
	done
	
IcirrusFanClubDucklettText:
	text "Dak! Dak!"
	done

IcirrusFanClubBookshelf:
	jumpstd difficultbookshelf

IcirrusFanClub_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4, 11, ICIRRUS_CITY_NORTH, 4
	warp_event  5, 11, ICIRRUS_CITY_NORTH, 4

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, IcirrusFanClubBookshelf
	bg_event  1,  1, BGEVENT_READ, IcirrusFanClubBookshelf

	db 7 ; object events
	object_event  6,  9, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, IcirrusFanClubScarfGiver, -1
	object_event  2,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, IcirrusFanClubElectrizerGiver, -1
	object_event  7,  4, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, IcirrusFanClubMagmarizerGiver, -1
	object_event  4,  9, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, IcirrusFanClubCooltrainerFScript, -1
	object_event  3,  9, SPRITE_MUNNA, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_SCRIPT, 0, IcirrusFanClubMunnaScript, -1
	object_event  7,  2, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, IcirrusFanClubGentlemanScript, -1
	object_event  6,  6, SPRITE_DUCKLETT, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, IcirrusFanClubDucklettScript, -1
