	const_def 2 ; object constants
	const HUMILAUGYM_MARLON
	const HUMILAUGYM_GYMGUY
	const HUMILAUGYM_SWIMMERM
	const HUMILAUGYM_SWIMMERF

HumilauGym_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerSwimmerMHumilauGym:
	trainer SWIMMERM, SWIMMER_M_HUMILAU_GYM, EVENT_BEAT_SWIMMERM_HUMILAU_GYM, SwimmerMHumilauGymSeenText, SwimmerMHumilauGymBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerMHumilauGymAfterText
	waitbutton
	closetext
	end

TrainerSwimmerFHumilauGym:
	trainer SWIMMERF_D, SWIMMER_F_HUMILAU_GYM, EVENT_BEAT_SWIMMERF_HUMILAU_GYM, SwimmerFHumilauGymSeenText, SwimmerFHumilauGymBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerFHumilauGymAfterText
	waitbutton
	closetext
	end
	
HumilauGymMarlonScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MARLON
	iftrue .FightDone
	writetext MarlonGymIntroText
	waitbutton
	closetext
	winlosstext MarlonWinLossText, 0
	loadtrainer MARLON, MARLON1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MARLON
	opentext
	writetext ReceivedWaveBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_WAVEBADGE
.FightDone:
	checkevent EVENT_GOT_RAIN_DANCE_TM
	iftrue .SpeechAfterTM
	setevent EVENT_BEAT_SWIMMERM_HUMILAU_GYM
	setevent EVENT_BEAT_SWIMMERF_HUMILAU_GYM
	writetext MarlonWaveBadgeText
	buttonsound
	verbosegiveitem TM_RAIN_DANCE
	iffalse .SpeechAfterTM
	setevent EVENT_GOT_RAIN_DANCE_TM
	writetext MarlonTMRainDanceText
	waitbutton
.SpeechAfterTM:
	writetext MarlonFightDoneText
	waitbutton
	closetext
	end
	
HumilauGymGuyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MARLON
	iftrue .HumilauGymGuyWinScript
	writetext HumilauGymGuyText
	waitbutton
	closetext
	end

.HumilauGymGuyWinScript:
	writetext HumilauGymGuyWinText
	waitbutton
	closetext
	end

HumilauGymStatue:
	checkflag ENGINE_WAVEBADGE
	iftrue .Beaten
	jumpstd gymstatue1
.Beaten:
	trainertotext MARLON, MARLON1, MEM_BUFFER_1
	jumpstd gymstatue2
	
SwimmerMHumilauGymSeenText:
	text "To be as clear as"
	line "water… That is the"
	cont "style that I seek!"
	done

SwimmerMHumilauGymBeatenText:
	text "When I lose, I"
	line "feel like I might"
	cont "just disappear…"
	done

SwimmerMHumilauGymAfterText:
	text "I may have been"
	line "the one to lose,"

	para "but I'm still"
	line "going to go ahead"
	
	para "and say it… You"
	line "should definitely"
	cont "seek a style!"
	done
	
SwimmerFHumilauGymSeenText:
	text "If you can beat"
	line "me, you'll get to"
	
	para "face MARLON. Don't"
	line "let your guard"
	cont "down yet!"
	done

SwimmerFHumilauGymBeatenText:
	text "How can this be?"
	line "I wasn't being"
	cont "careless at all!"
	done

SwimmerFHumilauGymAfterText:
	text "This is pathetic,"
	line "losing to some"
	cont "rookie trainer…"
	done
	
MarlonGymIntroText:
	text "MARLON: <PLAY_G>!"

	para "How's your"
	line "trainin' coming?"

	para "You're finally"
	line "ready to take"
	cont "on my GYM"
	cont "challenge?"

	para "Sweet! I won't"
	line "hold back,"
	cont "<PLAY_G>!"

	para "Come on!"
	done

MarlonWinLossText:
	text "Wow, sweet moves,"
	line "<PLAY_G>!"

	para "You've gotten"
	line "even better than"
	cont "I expected!"
	
	para "Go ahead, take"
	line "this. You've"
	cont "earned it!"
	done

ReceivedWaveBadgeText:
	text "<PLAYER> received"
	line "WAVEBADGE."
	done

MarlonWaveBadgeText:
	text "That's the"
	line "official #MON"
	cont "league WAVEBADGE."
	
	para "With that, traded"
	line "#MON up to Lv."
	cont "20 will obey you."

	para "Here--take this"
	line "too."
	done

MarlonTMRainDanceText:
	text "When ya use a TM,"
	line "a #MON will"
	cont "learn a new move!"

	para "And don't worry"
	line "about usin' it up!"
	
	para "You can use a TM"
	line "as many times as"
	cont "ya want!"

	para "TM18 teaches the"
	line "move RAIN DANCE."

	para "It causes a crazy"
	line "rain storm that"

	para "makes water type"
	line "attacks stronger!"
	done

MarlonFightDoneText:
	text "Ya know, <PLAY_G>,"
	line "there are #MON"
	
	para "GYMs in all kinds"
	line "of cities and"
	
	para "towns across"
	line "UNOVA."

	para "You should test"
	line "your skills at"
	cont "those GYMs too!"

	para "If you head back"
	line "to UNDELLA TOWN,"

	para "you can find the"
	line "entrance to"
	cont "REVERSAL MOUNTAIN."
	
	para "Head through there"
	line "to find the path"
	cont "forward."
	
	para "Good luck,"
	line "<PLAY_G>!"
	done
	
HumilauGymGuyText:
	text "Hey! I'm no train-"
	line "er but I can give"
	cont "some advice!"

	para "Believe me!"
	line "If you believe, a"

	para "championship dream"
	line "can come true."

	para "You believe?"
	line "Then listen."

	para "The fire-type is"
	line "weak against the"

	para "water-type. Keep"
	line "this in mind."
	done

HumilauGymGuyWinText:
	text "Nice battle! Keep"
	line "it up, and you'll"

	para "be the CHAMP in no"
	line "time at all!"
	done
	
HumilauGym_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4, 23, HUMILAU_CITY, 6
	warp_event  5, 23, HUMILAU_CITY, 6

	db 0 ; coord events

	db 2 ; bg events
	bg_event  2, 21, BGEVENT_READ, HumilauGymStatue
	bg_event  7, 21, BGEVENT_READ, HumilauGymStatue

	db 4 ; object events
	object_event  5,  4, SPRITE_MARLON, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HumilauGymMarlonScript, -1
	object_event  6, 21, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, HumilauGymGuyScript, -1
	object_event  4, 14, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerSwimmerMHumilauGym, -1
	object_event  3,  9, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 2, TrainerSwimmerFHumilauGym, -1
	