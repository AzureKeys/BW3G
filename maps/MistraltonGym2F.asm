	const_def 2 ; object constants
	const MISTRALTONGYM2F_FAN_1
	const MISTRALTONGYM2F_FAN_2
	const MISTRALTONGYM2F_PILOT_1
	const MISTRALTONGYM2F_PILOT_2

MistraltonGym2F_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_STONETABLE, .SetUpStoneTable

.SetUpStoneTable:
	usestonetable .StoneTable
	return

.StoneTable:
	stonetable 5, MISTRALTONGYM2F_FAN_1, .Fan1
	stonetable 9, MISTRALTONGYM2F_FAN_2, .Fan2
	db -1 ; end

.Fan1:
	disappear MISTRALTONGYM2F_FAN_1
	clearevent EVENT_MISTRALTON_GYM_1F_FAN_2
	jump .Fall

.Fan2:
	disappear MISTRALTONGYM2F_FAN_2
	clearevent EVENT_MISTRALTON_GYM_1F_FAN_4
	jump .Fall

.Fall:
	pause 30
	scall .FX
	opentext
	writetext MistraltonGym2FFanFellText
	waitbutton
	closetext
	end

.FX:
	playsound SFX_STRENGTH
	earthquake 80
	end
	
MistraltonGym2FFan:
	jumpstd strengthboulder

TrainerPilot1MistraltonGym2F:
	trainer PILOT, PILOT_MISTRALTON_GYM_4, EVENT_BEAT_PILOT_MISTRALTON_GYM_4, Pilot1MistraltonGym2FSeenText, Pilot1MistraltonGym2FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Pilot1MistraltonGym2FAfterText
	waitbutton
	closetext
	end

TrainerPilot2MistraltonGym2F:
	trainer PILOT, PILOT_MISTRALTON_GYM_5, EVENT_BEAT_PILOT_MISTRALTON_GYM_5, Pilot2MistraltonGym2FSeenText, Pilot2MistraltonGym2FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Pilot2MistraltonGym2FAfterText
	waitbutton
	closetext
	end
	
Pilot1MistraltonGym2FSeenText:
	text "Can you figure out"
	line "how to get through"
	cont "our GYM?"
	done

Pilot1MistraltonGym2FBeatenText:
	text "I was beaten!"
	done

Pilot1MistraltonGym2FAfterText:
	text "You need to push"
	line "the fans into the"
	
	para "slots in the floor"
	line "to cross the gym."
	done
	
Pilot2MistraltonGym2FSeenText:
	text "We've trained hard"
	line "to become masters"
	cont "of the air!"
	done

Pilot2MistraltonGym2FBeatenText:
	text "What?"
	done

Pilot2MistraltonGym2FAfterText:
	text "I guess we need"
	line "more training…"
	done
	
MistraltonGym2FFanFellText:
	text "The fan fell"
	line "through!"
	done
	
MistraltonGym2F_MapEvents:
	db 0, 0 ; filler

	db 16 ; warp events
	warp_event  8, 15, MISTRALTON_GYM_1F, 3
	warp_event  3, 11, MISTRALTON_GYM_1F, 8
	warp_event  7, 11, MISTRALTON_GYM_1F, 4
	warp_event 11, 11, MISTRALTON_GYM_1F, 10
	warp_event 13, 15, MISTRALTON_GYM_1F, 9
	warp_event 14,  7, MISTRALTON_GYM_1F, 5
	warp_event 15,  3, MISTRALTON_GYM_1F, 11
	warp_event  6,  2, MISTRALTON_GYM_1F, 6
	warp_event  5,  7, MISTRALTON_GYM_1F, 12
	warp_event  9,  1, MISTRALTON_GYM_1F, 7
	warp_event  8,  7, MISTRALTON_GYM_1F, 13
	warp_event  9, 15, MISTRALTON_GYM_2F, 12
	warp_event  6, 11, MISTRALTON_GYM_2F, 13
	warp_event 15,  7, MISTRALTON_GYM_2F, 14
	warp_event  6,  3, MISTRALTON_GYM_2F, 15
	warp_event  8,  1, MISTRALTON_GYM_2F, 16

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	object_event 14, 11, SPRITE_FAN, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MistraltonGym2FFan, EVENT_MISTRALTON_GYM_2F_FAN_1
	object_event  5,  2, SPRITE_FAN, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MistraltonGym2FFan, EVENT_MISTRALTON_GYM_2F_FAN_2
	object_event 15, 14, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerPilot1MistraltonGym2F, -1
	object_event  2,  5, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerPilot2MistraltonGym2F, -1
	