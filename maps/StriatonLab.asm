	const_def 2 ; object constants
	const STRIATONLAB_FENNEL
	const STRIATONLAB_BLOCKER

StriatonLab_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

StriatonLabFennelScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM_LIGHT_SCREEN
	iftrue .GotTM
	writetext StriatonLabGiveTMText
	buttonsound
	verbosegiveitem TM_LIGHT_SCREEN
	setevent EVENT_GOT_TM_LIGHT_SCREEN
.GotTM
	writetext StriatonLabGaveTMText
	waitbutton
	closetext
	end

StriatonLabBlockerScript:
	jumptextfaceplayer StriatonLabBlockerText

StriatonLabMachine:
	jumptext StriatonLabMachineText

StriatonLabGiveTMText:
	text "Hi, are you a"
	line "#MON trainer?"

	para "I'm DR.FENNEL!"
	line "I do research to"
	
	para "develop products"
	line "for #MON"
	cont "trainers."
	
	para "Because of our"
	line "research the DREAM"
	cont "YARD outside of"
	
	para "town has been shut"
	line "off to the public."
	
	para "Here, take this"
	line "instead."
	done

StriatonLabGaveTMText:
	text "That TM will"
	line "increase the SP."
	cont "DEF of all of your"
	cont "#MON."
	
	para "I'm sure you'll"
	line "find it useful!"
	done

StriatonLabBlockerText:
	text "Sorry, there are"
	line "important experi-"
	cont "ments taking place"
	cont "upstairs."
	done

StriatonLabMachineText:
	text "It's a complex"
	line "machine. Better"
	cont "not touch it!"
	done

StriatonLab_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  0,  6, STRIATON_CITY, 3
	warp_event  0,  7, STRIATON_CITY, 4

	db 0 ; coord events

	db 4 ; bg events
	bg_event  4,  3, BGEVENT_READ, StriatonLabMachine
	bg_event  5,  3, BGEVENT_READ, StriatonLabMachine
	bg_event  6,  3, BGEVENT_READ, StriatonLabMachine
	bg_event  7,  3, BGEVENT_READ, StriatonLabMachine

	db 2 ; object events
	object_event  5,  5, SPRITE_SCIENTIST_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, StriatonLabFennelScript, -1
	object_event  1,  1, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, StriatonLabBlockerScript, -1
	