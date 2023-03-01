	const_def 2 ; object constants
	const OPELUCIDGYM_DRAYDEN
	const OPELUCIDGYM_VETERANM_1
	const OPELUCIDGYM_VETERANM_2
	const OPELUCIDGYM_VETERANM_3
	const OPELUCIDGYM_VETERANF_1
	const OPELUCIDGYM_VETERANF_2
	const OPELUCIDGYM_VETERANF_3
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
	setevent EVENT_BEAT_VETERANM_OPELUCID_GYM_1
	setevent EVENT_BEAT_VETERANM_OPELUCID_GYM_2
	setevent EVENT_BEAT_VETERANM_OPELUCID_GYM_3
	setevent EVENT_BEAT_VETERANF_OPELUCID_GYM_1
	setevent EVENT_BEAT_VETERANF_OPELUCID_GYM_2
	setevent EVENT_BEAT_VETERANF_OPELUCID_GYM_3
	opentext
	writetext ReceivedLegendBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_LEGENDBADGE
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

TrainerVeteranM1OpelucidGym:
	trainer VETERANM, VETERANM_OPELUCID_GYM_1, EVENT_BEAT_VETERANM_OPELUCID_GYM_1, VeteranM1OpelucidGymSeenText, VeteranM1OpelucidGymBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext VeteranM1OpelucidGymAfterText
	waitbutton
	closetext
	end

TrainerVeteranM2OpelucidGym:
	trainer VETERANM, VETERANM_OPELUCID_GYM_2, EVENT_BEAT_VETERANM_OPELUCID_GYM_2, VeteranM2OpelucidGymSeenText, VeteranM2OpelucidGymBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext VeteranM2OpelucidGymAfterText
	waitbutton
	closetext
	end

TrainerVeteranM3OpelucidGym:
	trainer VETERANM, VETERANM_OPELUCID_GYM_3, EVENT_BEAT_VETERANM_OPELUCID_GYM_3, VeteranM3OpelucidGymSeenText, VeteranM3OpelucidGymBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext VeteranM3OpelucidGymAfterText
	waitbutton
	closetext
	end

TrainerVeteranF1OpelucidGym:
	trainer VETERANF, VETERANF_OPELUCID_GYM_1, EVENT_BEAT_VETERANF_OPELUCID_GYM_1, VeteranF1OpelucidGymSeenText, VeteranF1OpelucidGymBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext VeteranF1OpelucidGymAfterText
	waitbutton
	closetext
	end

TrainerVeteranF2OpelucidGym:
	trainer VETERANF, VETERANF_OPELUCID_GYM_2, EVENT_BEAT_VETERANF_OPELUCID_GYM_2, VeteranF2OpelucidGymSeenText, VeteranF2OpelucidGymBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext VeteranF2OpelucidGymAfterText
	waitbutton
	closetext
	end

TrainerVeteranF3OpelucidGym:
	trainer VETERANF, VETERANF_OPELUCID_GYM_3, EVENT_BEAT_VETERANF_OPELUCID_GYM_3, VeteranF3OpelucidGymSeenText, VeteranF3OpelucidGymBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext VeteranF3OpelucidGymAfterText
	waitbutton
	closetext
	end

OpelucidGymStatue:
	checkflag ENGINE_LEGENDBADGE
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
	
VeteranM1OpelucidGymSeenText:
	text "Always aim for the"
	line "top, like a dragon"
	cont "taking flight!"
	done

VeteranM1OpelucidGymBeatenText:
	text "The energy I feel"
	line "from you… It's just"
	cont "like a dragon!"
	done

VeteranM1OpelucidGymAfterText:
	text "Trainers far"
	line "stronger than I"
	cont "wait for you!"
	done
	
VeteranM2OpelucidGymSeenText:
	text "A strong defense"
	line "is everything!"
	done

VeteranM2OpelucidGymBeatenText:
	text "Your defense is"
	line "beyond comparison!"
	done

VeteranM2OpelucidGymAfterText:
	text "The trainers that"
	line "wait beyond all"
	
	para "have different"
	line "fighting styles."
	done
	
VeteranM3OpelucidGymSeenText:
	text "Use your #MON"
	line "in combination to"
	
	para "raise their"
	line "destructive power!"
	done

VeteranM3OpelucidGymBeatenText:
	text "The #MON you"
	line "picked gave me a"
	cont "run for my money!"
	done

VeteranM3OpelucidGymAfterText:
	text "You are certainly"
	line "strong enough to"
	
	para "challenge mayor"
	line "DRAYDEN!"
	done
	
VeteranF1OpelucidGymSeenText:
	text "I believe the best"
	line "defense is a"
	cont "strong offense!"
	done

VeteranF1OpelucidGymBeatenText:
	text "Such energy… You"
	line "are truly without"
	cont "equal!"
	done

VeteranF1OpelucidGymAfterText:
	text "You must choose"
	line "the style of"
	
	para "battle that suits"
	line "you best!"
	done
	
VeteranF2OpelucidGymSeenText:
	text "In battles, how"
	line "your #MON"
	
	para "follow each other"
	line "is key."
	done

VeteranF2OpelucidGymBeatenText:
	text "Your #MON all"
	line "supported each"
	cont "other well."
	done

VeteranF2OpelucidGymAfterText:
	text "A battle between"
	line "you and mayor"
	
	para "DRAYDEN will be"
	line "stirring! Now go!"
	done
	
VeteranF3OpelucidGymSeenText:
	text "I just felt a"
	line "great wind… Are"
	
	para "you the one who"
	line "kicked it up?"
	done

VeteranF3OpelucidGymBeatenText:
	text "This defeat will"
	line "also be blown far"
	cont "away…"
	done

VeteranF3OpelucidGymAfterText:
	text "You are the wind."
	
	para "A supple and"
	line "comforting wind"
	
	para "blowing through to"
	line "the #MON"
	cont "LEAGUE!"
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
	object_event  3, 26, SPRITE_RANGER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerVeteranM1OpelucidGym, -1
	object_event 24, 19, SPRITE_RANGER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerVeteranM2OpelucidGym, -1
	object_event 11,  5, SPRITE_RANGER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerVeteranM3OpelucidGym, -1
	object_event 14, 10, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 1, TrainerVeteranF1OpelucidGym, -1
	object_event 11,  0, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 1, TrainerVeteranF2OpelucidGym, -1
	object_event 25,  8, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 2, TrainerVeteranF3OpelucidGym, -1
	object_event  9, 26, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OpelucidGymGuyScript, -1
	