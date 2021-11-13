	const_def 2 ; object constants
	const OPELUCIDGYM_DRAYDEN
	const OPELUCIDGYM_COOLTRAINERM_1
	const OPELUCIDGYM_COOLTRAINERM_2
	const OPELUCIDGYM_COOLTRAINERM_3
	const OPELUCIDGYM_COOLTRAINERF_1
	const OPELUCIDGYM_COOLTRAINERF_2
	const OPELUCIDGYM_COOLTRAINERF_3
	const OPELUCIDGYM_GYM_GUY

OpelucidGym_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
OpelucidGymDraydenScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_DRAYDEN
	iftrue .FightDone
	writetext DraydenGymIntroText
	waitbutton
	closetext
	winlosstext DraydenWinLossText, 0
	loadtrainer DRAYDEN, DRAYDEN1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_DRAYDEN
	setevent EVENT_BEAT_COOLTRAINERM_OPELUCID_GYM_1
	setevent EVENT_BEAT_COOLTRAINERM_OPELUCID_GYM_2
	setevent EVENT_BEAT_COOLTRAINERM_OPELUCID_GYM_3
	setevent EVENT_BEAT_COOLTRAINERF_OPELUCID_GYM_1
	setevent EVENT_BEAT_COOLTRAINERF_OPELUCID_GYM_2
	setevent EVENT_BEAT_COOLTRAINERF_OPELUCID_GYM_3
	opentext
	writetext ReceivedLegendBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_RISINGBADGE
.FightDone:
	checkevent EVENT_GOT_DRAGON_CLAW_TM
	iftrue .SpeechAfterTM
	writetext DraydenLegendBadgeText
	buttonsound
	verbosegiveitem TM_DRAGON_CLAW
	iffalse .SpeechAfterTM
	setevent EVENT_GOT_DRAGON_CLAW_TM
	writetext DraydenTMDragonClawText
	waitbutton
.SpeechAfterTM:
	writetext DraydenFightDoneText
	waitbutton
	closetext
	end
	
OpelucidGymGuyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_DRAYDEN
	iftrue .OpelucidGymGuyWinScript
	writetext OpelucidGymGuyText
	waitbutton
	closetext
	end

.OpelucidGymGuyWinScript:
	writetext OpelucidGymGuyWinText
	waitbutton
	closetext
	end

TrainerCooltrainerM1OpelucidGym:
	trainer COOLTRAINERM, COOLTRAINERM_OPELUCID_GYM_1, EVENT_BEAT_COOLTRAINERM_OPELUCID_GYM_1, CooltrainerM1OpelucidGymSeenText, CooltrainerM1OpelucidGymBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerM1OpelucidGymAfterText
	waitbutton
	closetext
	end

TrainerCooltrainerM2OpelucidGym:
	trainer COOLTRAINERM_D, COOLTRAINERM_OPELUCID_GYM_2, EVENT_BEAT_COOLTRAINERM_OPELUCID_GYM_2, CooltrainerM2OpelucidGymSeenText, CooltrainerM2OpelucidGymBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerM2OpelucidGymAfterText
	waitbutton
	closetext
	end

TrainerCooltrainerM3OpelucidGym:
	trainer COOLTRAINERM_D, COOLTRAINERM_OPELUCID_GYM_3, EVENT_BEAT_COOLTRAINERM_OPELUCID_GYM_3, CooltrainerM3OpelucidGymSeenText, CooltrainerM3OpelucidGymBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerM3OpelucidGymAfterText
	waitbutton
	closetext
	end

TrainerCooltrainerF1OpelucidGym:
	trainer COOLTRAINERF, COOLTRAINERF_OPELUCID_GYM_1, EVENT_BEAT_COOLTRAINERF_OPELUCID_GYM_1, CooltrainerF1OpelucidGymSeenText, CooltrainerF1OpelucidGymBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerF1OpelucidGymAfterText
	waitbutton
	closetext
	end

TrainerCooltrainerF2OpelucidGym:
	trainer COOLTRAINERF, COOLTRAINERF_OPELUCID_GYM_2, EVENT_BEAT_COOLTRAINERF_OPELUCID_GYM_2, CooltrainerF2OpelucidGymSeenText, CooltrainerF2OpelucidGymBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerF2OpelucidGymAfterText
	waitbutton
	closetext
	end

TrainerCooltrainerF3OpelucidGym:
	trainer COOLTRAINERF_D, COOLTRAINERF_OPELUCID_GYM_3, EVENT_BEAT_COOLTRAINERF_OPELUCID_GYM_3, CooltrainerF3OpelucidGymSeenText, CooltrainerF3OpelucidGymBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerF3OpelucidGymAfterText
	waitbutton
	closetext
	end

OpelucidGymStatue:
	checkflag ENGINE_RISINGBADGE
	iftrue .Beaten
	jumpstd gymstatue1
.Beaten:
	trainertotext DRAYDEN, DRAYDEN1, MEM_BUFFER_1
	jumpstd gymstatue2
	
DraydenGymIntroText:
	text "Welcome. Thank you"
	line "for coming. I am"
	
	para "the OPELUCID GYM"
	line "LEADER, DRAYDEN."

	para "As mayor, I've"
	line "given everything"

	para "to developing the"
	line "city. As a"
	
	para "trainer, I've been"
	line "pursuing greater"
	cont "strength."
	
	para "What I'm searching"
	line "for now is a young"
	
	para "trainer who can"
	line "show me a bright"
	
	para "future. Perhaps"
	line "you can show me"
	
	para "that future, the"
	line "way IRIS has?"
	done

DraydenWinLossText:
	text "This bitterness"
	line "that floods me"
	cont "after a defeat…"
	
	para "The heart that"
	line "does not succumb"
	
	para "to such a feeling"
	line "is filled with"
	cont "energy and life!"
	done

ReceivedLegendBadgeText:
	text "<PLAYER> received"
	line "LEGENDBADGE."
	done

DraydenLegendBadgeText:
	text "This is the"
	line "OPELUCID CITY"
	cont "#MON GYM BADGE."

	para "With the LEGEND"
	line "BADGE, all #-"

	para "MON will follow"
	line "your commands."
	
	para "I also want you to"
	line "have this. It's a"
	
	para "TM I'm rather"
	line "fond of."
	done

DraydenTMDragonClawText:
	text "This teaches the"
	line "move DRAGON CLAW."

	para "It is a wild and"
	line "powerful attack,"
	
	para "befitting of the"
	line "dragon-type."
	done

DraydenFightDoneText:
	text "It is not the"
	line "passage of time"

	para "that causes #-"
	line "MON and people to"

	para "age. When the"
	line "energy that flows"
	
	para "in their heart"
	line "dries up, that's"
	cont "when they get old."
	
	para "The heart's energy"
	line "is powered by"
	
	para "truth, ideals, or"
	line "maybe dreams…"
	
	para "No doubt it"
	line "changes depending"
	
	para "on what you most"
	line "hope for in life."
	done
	
OpelucidGymGuyText:
	text "Yo, challenger!"

	para "This GYM's LEADER"
	line "is DRAYDEN, the"
	cont "master of dragons."

	para "All of his pupils"
	line "train with dragon-"
	cont "type #MON too."

	para "They're wild and"
	line "unpredictable!"

	para "Your best bet"
	line "would be to bring"
	cont "a fairy-type #-"
	cont "MON."

	para "Dragons also don't"
	line "like the cold, so"
	
	para "try using ice-type"
	line "moves too!"
	done

OpelucidGymGuyWinText:
	text "Well done! That"
	line "was a great clash"

	para "of talented"
	line "trainers."

	para "With people like"
	line "you, the future of"
	cont "#MON is bright!"
	done
	
CooltrainerM1OpelucidGymSeenText:
	text "..."
	done

CooltrainerM1OpelucidGymBeatenText:
	text "..."
	done

CooltrainerM1OpelucidGymAfterText:
	text "..."
	done
	
CooltrainerM2OpelucidGymSeenText:
	text "..."
	done

CooltrainerM2OpelucidGymBeatenText:
	text "..."
	done

CooltrainerM2OpelucidGymAfterText:
	text "..."
	done
	
CooltrainerM3OpelucidGymSeenText:
	text "..."
	done

CooltrainerM3OpelucidGymBeatenText:
	text "..."
	done

CooltrainerM3OpelucidGymAfterText:
	text "..."
	done
	
CooltrainerF1OpelucidGymSeenText:
	text "..."
	done

CooltrainerF1OpelucidGymBeatenText:
	text "..."
	done

CooltrainerF1OpelucidGymAfterText:
	text "..."
	done
	
CooltrainerF2OpelucidGymSeenText:
	text "..."
	done

CooltrainerF2OpelucidGymBeatenText:
	text "..."
	done

CooltrainerF2OpelucidGymAfterText:
	text "..."
	done
	
CooltrainerF3OpelucidGymSeenText:
	text "..."
	done

CooltrainerF3OpelucidGymBeatenText:
	text "..."
	done

CooltrainerF3OpelucidGymAfterText:
	text "..."
	done
	
OpelucidGym_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 10, 31, OPELUCID_CITY, 8
	warp_event 11, 31, OPELUCID_CITY, 8

	db 0 ; coord events

	db 2 ; bg events
	bg_event  9, 31, BGEVENT_READ, OpelucidGymStatue
	bg_event 12, 31, BGEVENT_READ, OpelucidGymStatue

	db 8 ; object events
	object_event 24,  2, SPRITE_DRAYDEN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OpelucidGymDraydenScript, -1
	object_event  3, 26, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerCooltrainerM1OpelucidGym, -1
	object_event 24, 19, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 1, TrainerCooltrainerM2OpelucidGym, -1
	object_event 11,  5, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 1, TrainerCooltrainerM3OpelucidGym, -1
	object_event 14, 10, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerCooltrainerF1OpelucidGym, -1
	object_event 11,  0, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerCooltrainerF2OpelucidGym, -1
	object_event 25,  8, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 2, TrainerCooltrainerF3OpelucidGym, -1
	object_event  9, 26, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OpelucidGymGuyScript, -1
	