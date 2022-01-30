	const_def 2 ; object constants
	const ICIRRUSFANCLUB_BAND_GIVER
	const ICIRRUSFANCLUB_SPECS_GIVER
	const ICIRRUSFANCLUB_SCARF_GIVER
	const ICIRRUSFANCLUB_ELECTRIZER_GIVER
	const ICIRRUSFANCLUB_MAGMARIZER_GIVER

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

IcirrusFanClubBandGiver:
	faceplayer
	opentext
	checkevent EVENT_GOT_CHOICE_BAND
	iftrue .got_band
	writetext IcirrusFanClubBandGiver_AskMonText
	buttonsound
	callasm LoadBuffers
	writebyte $1
	special CheckStatExp
	ifnotequal FALSE, .no_band
	writetext IcirrusFanClubBandGiver_GoodMonText
	buttonsound
	verbosegiveitem CHOICE_BAND
	iffalse .no_band
	setevent EVENT_GOT_CHOICE_BAND
.got_band
	writetext IcirrusFanClubBandGiver_GotBandText
.no_band
	waitbutton
	closetext
	end

IcirrusFanClubSpecsGiver:
	faceplayer
	opentext
	checkevent EVENT_GOT_CHOICE_SPECS
	iftrue .got_specs
	writetext IcirrusFanClubSpecsGiver_AskMonText
	buttonsound
	callasm LoadBuffers
	writebyte $4
	special CheckStatExp
	ifnotequal FALSE, .no_specs
	writetext IcirrusFanClubSpecsGiver_GoodMonText
	buttonsound
	verbosegiveitem CHOICE_SPECS
	iffalse .no_specs
	setevent EVENT_GOT_CHOICE_SPECS
.got_specs
	writetext IcirrusFanClubSpecsGiver_GotSpecsText
.no_specs
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
	
IcirrusFanClubElectrizerGiver_AskScaleText:
	text "I want to teach my"
	line "#MON one of its"
	
	para "old moves at the"
	line "tutor in OPELUCID"
	
	para "CITY, but I don't"
	line "have any HEART"
	cont "SCALES."
	
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
	
IcirrusFanClubBandGiver_AskMonText:
	text "We only want to"
	line "see the strongest"
	cont "#MON here!"
	
	para "If your #MON"
	line "has trained its"
	
	para "ATTACK enough,"
	line "show it to me!"
	done
	
IcirrusFanClubBandGiver_GoodMonText:
	text "Yes! That is one"
	line "strong #MON!"
	
	para "Here, take this as"
	line "a reminder of your"
	cont "determination!"
	done
	
IcirrusFanClubBandGiver_GotBandText:
	text "By choosing only"
	line "one move, your"
	
	para "#MON's ATTACK"
	line "will become even"
	cont "stronger!"
	done
	
IcirrusFanClubSpecsGiver_AskMonText:
	text "The SPECIAL power"
	line "of #MON is"
	cont "incredible!"
	
	para "I come here to see"
	line "#MON that have"
	
	para "honed their"
	line "SPECIAL powers!"
	
	para "Has one of your"
	line "#MON mastered"
	cont "its SPCL.ATK?"
	done
	
IcirrusFanClubSpecsGiver_GoodMonText:
	text "I see, its SPECIAL"
	line "powers are"
	cont "magnificent!"
	
	para "You should give"
	line "your #MON these"
	cont "to hone its power."
	done
	
IcirrusFanClubSpecsGiver_GotSpecsText:
	text "By choosing only"
	line "one move, your"
	
	para "#MON's SP.ATK"
	line "will become even"
	cont "stronger!"
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

	db 5 ; object events
	object_event  4,  1, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IcirrusFanClubBandGiver, -1
	object_event  2,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, IcirrusFanClubSpecsGiver, -1
	object_event  7,  2, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, IcirrusFanClubScarfGiver, -1
	object_event  2,  8, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, IcirrusFanClubElectrizerGiver, -1
	object_event  6,  9, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, IcirrusFanClubMagmarizerGiver, -1
