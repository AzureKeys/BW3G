	const_def 2 ; object constants
	const VIRBANKGYM_ROXIE
	const VIRBANKGYM_GUITARIST_1
	const VIRBANKGYM_GUITARIST_2
	const VIRBANKGYM_GUITARIST_3
	const VIRBANKGYM_GUITARIST_4

VirbankGym_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
VirbankGymRoxieScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_ROXIE
	iftrue .FightDone
	writetext RoxieGymIntroText
	waitbutton
	closetext
	winlosstext RoxieWinLossText, 0
	loadtrainer ROXIE, ROXIE1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ROXIE
	opentext
	writetext ReceivedToxicBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_FOGBADGE
.FightDone:
	checkevent EVENT_GOT_VENOSHOCK_TM
	iftrue .SpeechAfterTM
	setevent EVENT_BEAT_GUITARIST_VIRBANK_GYM_1
	setevent EVENT_BEAT_GUITARIST_VIRBANK_GYM_2
	setevent EVENT_BEAT_GUITARIST_VIRBANK_GYM_3
	setevent EVENT_BEAT_GUITARIST_VIRBANK_GYM_4
	writetext RoxieToxicBadgeText
	buttonsound
	verbosegiveitem TM_VENOSHOCK
	iffalse .SpeechAfterTM
	setevent EVENT_GOT_VENOSHOCK_TM
	writetext RoxieTMVenoshockText
	waitbutton
.SpeechAfterTM:
	writetext RoxieFightDoneText
	waitbutton
	closetext
	end

VirbankGymStatue:
	checkflag ENGINE_FOGBADGE
	iftrue .Beaten
	jumpstd gymstatue1
.Beaten:
	trainertotext ROXIE, ROXIE1, MEM_BUFFER_1
	jumpstd gymstatue2

TrainerGuitaristVirbankGym1:
	trainer GUITARIST, GUITARIST_VIRBANK_GYM_1, EVENT_BEAT_GUITARIST_VIRBANK_GYM_1, GuitaristVirbankGym1SeenText, GuitaristVirbankGym1BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GuitaristVirbankGym1AfterText
	waitbutton
	closetext
	end

TrainerGuitaristVirbankGym2:
	trainer GUITARIST, GUITARIST_VIRBANK_GYM_2, EVENT_BEAT_GUITARIST_VIRBANK_GYM_2, GuitaristVirbankGym2SeenText, GuitaristVirbankGym2BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GuitaristVirbankGym2AfterText
	waitbutton
	closetext
	end

TrainerGuitaristVirbankGym3:
	trainer GUITARIST, GUITARIST_VIRBANK_GYM_3, EVENT_BEAT_GUITARIST_VIRBANK_GYM_3, GuitaristVirbankGym3SeenText, GuitaristVirbankGym3BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GuitaristVirbankGym3AfterText
	waitbutton
	closetext
	end

TrainerGuitaristVirbankGym4:
	trainer GUITARIST, GUITARIST_VIRBANK_GYM_4, EVENT_BEAT_GUITARIST_VIRBANK_GYM_4, GuitaristVirbankGym4SeenText, GuitaristVirbankGym4BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GuitaristVirbankGym4AfterText
	waitbutton
	closetext
	end
	
RoxieGymIntroText:
	text "Get ready! I'm"
	line "gonna knock some"
	cont "sense outta ya!"
	done

RoxieWinLossText:
	text "Wait! I was right"
	line "in the middle of"
	cont "the chorus!"
	done

ReceivedToxicBadgeText:
	text "<PLAYER> received"
	line "TOXICBADGE."
	done

RoxieToxicBadgeText:
	text "That's the TOXIC"
	line "BADGE! Now #-"
	cont "MON up to level 50"

	para "will realize how"
	line "good you are and"

	para "won't ignore your"
	line "commands! You can"

	para "Also use FLY out-"
	line "side of battle!"

	para "Also here! Use"
	line "this TM!"
	done

RoxieTMVenoshockText:
	text "TM09 is VENOSHOCK!"

	para "If your target's"
	line "aready poisoned,"

	para "it does double"
	line "damage! Heh, it"

	para "Almost packs too"
	line "much of a punch!"
	done

RoxieFightDoneText:
	text "Your #MON"
	line "WANTED to win!"

	para "Keep on going like"
	line "this, and do all"
	cont "sorts of stuff!"
	done
	
GuitaristVirbankGym1SeenText:
	text "Hold it there,"
	line "kid. This is an"
	cont "exclusive club."
	done

GuitaristVirbankGym1BeatenText:
	text "Ah! Come right in!"
	done

GuitaristVirbankGym1AfterText:
	text "VIRBANK GYM is"
	line "known for our"

	para "skills in music"
	line "and #MON!"
	done
	
GuitaristVirbankGym2SeenText:
	text "You're here to"
	line "defeat ROXIE?"

	para "Not if I can help"
	line "it!"
	done

GuitaristVirbankGym2BeatenText:
	text "Sorry I failed"
	line "you, ROXIE!"
	done

GuitaristVirbankGym2AfterText:
	text "ROXIE was the"
	line "first to recognize"
	cont "my talent at the"
	cont "guitar!"
	done
	
GuitaristVirbankGym3SeenText:
	text "ROXIE recognized"
	line "my potential"

	para "with poison-"
	line "type #MON."

	para "Think you can beat"
	line "me?"
	done

GuitaristVirbankGym3BeatenText:
	text "Ooh, how shocking!"
	done

GuitaristVirbankGym3AfterText:
	text "Can you figure out"
	line "the GYM's floors?"
	done
	
GuitaristVirbankGym4SeenText:
	text "I'm going to take"
	line "you down! Prepare"
	cont "to be shocked!"
	done

GuitaristVirbankGym4BeatenText:
	text "Gwaaah!"
	line "I was overpowered…"
	done

GuitaristVirbankGym4AfterText:
	text "Don't get too com-"
	line "fortable about"

	para "beating me…"
	line "ROXIE is tough."
	done
	
VirbankGym_MapEvents:
	db 0, 0 ; filler

	db 6 ; warp events
	warp_event  0,  7, VIRBANK_CITY, 7
	warp_event  1,  7, VIRBANK_CITY, 7
	warp_event  9,  0, VIRBANK_GYM, 4
	warp_event  6, 31, VIRBANK_GYM, 3
	warp_event  7, 31, VIRBANK_GYM, 3
	warp_event  7, 15, VIRBANK_GYM, 4

	db 0 ; coord events

	db 1 ; bg events
	bg_event  8,  0, BGEVENT_READ, VirbankGymStatue

	db 5 ; object events
	object_event 10, 15, SPRITE_ROXIE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VirbankGymRoxieScript, -1
	object_event  8,  2, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerGuitaristVirbankGym1, -1
	object_event  0, 18, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerGuitaristVirbankGym2, -1
	object_event 13, 19, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerGuitaristVirbankGym3, -1
	object_event  5, 14, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerGuitaristVirbankGym4, -1
	