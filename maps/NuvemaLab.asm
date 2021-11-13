	const_def 2 ; object constants
	const NUVEMALAB_BIANCA
	const NUVEMALAB_SCIENTIST1
	const NUVEMALAB_SCIENTIST2
	const NUVEMALAB_JUNIPER

NuvemaLab_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	db 0 ; callbacks

.DummyScene0:
	end

.DummyScene1:
	end
	
NuvemaLabScript1:
	applymovement PLAYER, NuvemaLabPlayerMovement1
	jump NuvemaLabScript
	
NuvemaLabScript2:
	applymovement PLAYER, NuvemaLabPlayerMovement2

NuvemaLabScript:
	opentext
	writetext NuvemaLabBiancaIntroText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, NUVEMALAB_BIANCA, 15
	opentext
	writetext NuvemaLabBiancaGiftText
	buttonsound
	verbosegiveitem HM_SURF
	writetext NuvemaLabBiancaHMText
	buttonsound
	writetext NuvemaLabJuniperLeaveText
	waitbutton
	closetext
	applymovement NUVEMALAB_JUNIPER, NuvemaLabJuniperMovement
	playsound SFX_ENTER_DOOR
	waitsfx
	disappear NUVEMALAB_JUNIPER
	setscene SCENE_FINISHED
	end

Bianca:
	faceplayer
	opentext
	checkevent EVENT_BEAT_P2_LAB
	iftrue .CheckPokedex
	writetext BiancaLabP2LocationText
	buttonsound

.CheckPokedex:
	writetext BiancaLabDexCheckText
	waitbutton
	special ProfOaksPCBoot
	writetext BiancaLabGoodbyeText
	waitbutton
	closetext
	end

BiancasAssistant1Script:
	jumptextfaceplayer BiancasAssistant1Text

BiancasAssistant2Script:
	jumptextfaceplayer BiancasAssistant2Text

BiancasLabBookshelf:
	jumpstd difficultbookshelf

BiancasLabPoster1:
	jumptext BiancasLabPoster1Text

BiancasLabPoster2:
	jumptext BiancasLabPoster2Text

BiancasLabTrashcan:
	jumptext BiancasLabTrashcanText

BiancasLabPC:
	jumptext BiancasLabPCText
	
NuvemaLabPlayerMovement1:
	step UP
	step UP
	step_end
	
NuvemaLabPlayerMovement2:
	step UP
	step LEFT
	step UP
	step_end
	
NuvemaLabJuniperMovement:
	step DOWN
	step DOWN
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

NuvemaLabBiancaIntroText:
	text "BIANCA: Oh, hi"
	line "<PLAY_G>!"

	para "It's me, PROF."
	line "BIANCA! It's so"
	cont "good to finally"
	cont "meet you!"
	
	para "PROF.JUNIPER had"
	line "just stopped by"
	cont "for a visit."
	
	para "JUNIPER: Good to"
	line "see you, <PLAY_G>."
	
	para "It's fortunate"
	line "that you've come."

	para "The reason I came"
	line "out here is to"
	
	para "follow up on a tip"
	line "about TEAM PLASMA."
	
	para "I've learned that"
	line "TEAM PLASMA had a"
	
	para "secret lab on an"
	line "island nearby"
	cont "NUVEMA TOWN."
	
	para "I thought it may"
	line "give us some"
	
	para "answers to what"
	line "they're planning."
	
	para "If you'd like to"
	line "help, it would be"
	
	para "much appreciated,"
	line "<PLAY_G>."
	done

NuvemaLabBiancaGiftText:
	text "BIANCA: Oh, that"
	line "reminds me!"

	para "I have a gift for"
	line "you, <PLAY_G>!"
	done

NuvemaLabBiancaHMText:
	text "BIANCA: HM03 is"
	line "SURF."

	para "It's a powerful"
	line "water-type attack,"
	
	para "and a #MON that"
	line "knows SURF can be"
	
	para "used to cross the"
	line "water!"
	
	para "You'll need the"
	line "GYM BADGE from"
	
	para "STRIATON CITY to"
	line "use it though."
	done

NuvemaLabJuniperLeaveText:
	text "JUNIPER: Well"
	line "PROF, I'd better"
	cont "be off."
	
	para "The LAB is located"
	line "on ROUTE 17, just"
	cont "west of ROUTE 1."

	para "Feel free to join"
	line "me if you'd like,"
	cont "<PLAY_G>!"
	done

BiancaLabP2LocationText:
	text "BIANCA: Are you"
	line "going to join"
	
	para "PROF.JUNIPER at"
	line "that secret lab?"

	para "You can reach"
	line "ROUTE 17 if you"
	
	para "go north, then"
	line "cross the water"
	cont "to the west."
	done

BiancaLabDexCheckText:
	text "How is your #-"
	line "DEX coming?"

	para "Let's see…"
	done

BiancaLabGoodbyeText:
	text "If you're in the"
	line "area, I hope you"
	cont "come visit again."
	done

BiancasAssistant2Text:
	text "Thanks to your"
	line "work on the #-"
	cont "DEX, the PROF's"

	para "research is coming"
	line "along great."
	done

BiancasAssistant1Text:
	text "The PROF is young,"
	line "but she's done a"
	cont "great job so far!"
	done

BiancasLabPoster1Text:
	text "Press START to"
	line "open the MENU."
	done

BiancasLabPoster2Text:
	text "The SAVE option is"
	line "on the MENU."

	para "Use it in a timely"
	line "manner."
	done

BiancasLabTrashcanText:
	text "There's nothing in"
	line "here…"
	done

BiancasLabPCText:
	text "There's an e-mail"
	line "message on the PC."

	para "…"

	para "PROF.BIANCA, I"
	line "have news about"
	cont "that thing…"

	para "There was a break"
	line "in at my GYM. I"
	cont "think someone was"
	
	para "trying to get"
	line "their hands on"
	cont "that thing."

	para "I'm going to move"
	line "it to a more"
	cont "secure place."

	para "Only members of"
	line "the #MON league"
	cont "will be able to"
	cont "get to it."

	para "This thing is"
	line "turning out to be"
	cont "a load of trouble…"

	para "Thanks for the"
	line "#DEX, by the"
	cont "way. <PLAY_G>"
	cont "is a natural!"
	
	para "Good vibes,"
	line "-MARLON"
	done

NuvemaLab_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4, 11, NUVEMA_TOWN, 2
	warp_event  5, 11, NUVEMA_TOWN, 2

	db 2 ; coord events
	coord_event  4,  6, SCENE_DEFAULT, NuvemaLabScript1
	coord_event  5,  6, SCENE_DEFAULT, NuvemaLabScript2

	db 16 ; bg events
	bg_event  6,  1, BGEVENT_READ, BiancasLabBookshelf
	bg_event  7,  1, BGEVENT_READ, BiancasLabBookshelf
	bg_event  8,  1, BGEVENT_READ, BiancasLabBookshelf
	bg_event  9,  1, BGEVENT_READ, BiancasLabBookshelf
	bg_event  0,  7, BGEVENT_READ, BiancasLabBookshelf
	bg_event  1,  7, BGEVENT_READ, BiancasLabBookshelf
	bg_event  2,  7, BGEVENT_READ, BiancasLabBookshelf
	bg_event  3,  7, BGEVENT_READ, BiancasLabBookshelf
	bg_event  6,  7, BGEVENT_READ, BiancasLabBookshelf
	bg_event  7,  7, BGEVENT_READ, BiancasLabBookshelf
	bg_event  8,  7, BGEVENT_READ, BiancasLabBookshelf
	bg_event  9,  7, BGEVENT_READ, BiancasLabBookshelf
	bg_event  4,  0, BGEVENT_READ, BiancasLabPoster1
	bg_event  5,  0, BGEVENT_READ, BiancasLabPoster2
	bg_event  9,  3, BGEVENT_READ, BiancasLabTrashcan
	bg_event  0,  1, BGEVENT_READ, BiancasLabPC

	db 4 ; object events
	object_event  4,  2, SPRITE_BIANCA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Bianca, EVENT_NUVEMA_LAB_BIANCA
	object_event  1,  8, SPRITE_SCIENTIST, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BiancasAssistant1Script, -1
	object_event  8,  9, SPRITE_SCIENTIST_F, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BiancasAssistant2Script, -1
	object_event  3,  3, SPRITE_JUNIPER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, 0, EVENT_NUVEMA_LAB_JUNIPER
	