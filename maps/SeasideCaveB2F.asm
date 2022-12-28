	const_def 2 ; object constants
	const SEASIDECAVEB2F_ICE_STONE
	const SEASIDECAVEB2F_NEVERMELTICE
	const SEASIDECAVEB2F_TM_PSYCHIC
	const SEASIDECAVEB2F_GRUNTM_1
	const SEASIDECAVEB2F_GRUNTM_2
	const SEASIDECAVEB2F_GRUNTM_3
	const SEASIDECAVEB2F_GRUNTF_1
	const SEASIDECAVEB2F_GRUNTF_2
	const SEASIDECAVEB2F_GRUNTF_3

SeasideCaveB2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerGruntM1SeasideCave:
	trainer GRUNTM, GRUNTM_SEASIDE_CAVE_1, EVENT_BEAT_GRUNTM_SEASIDE_CAVE_1, GruntM1SeasideCaveSeenText, GruntM1SeasideCaveBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM1SeasideCaveAfterText
	waitbutton
	closetext
	end

TrainerGruntM2SeasideCave:
	trainer GRUNTM, GRUNTM_SEASIDE_CAVE_2, EVENT_BEAT_GRUNTM_SEASIDE_CAVE_2, GruntM2SeasideCaveSeenText, GruntM2SeasideCaveBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM2SeasideCaveAfterText
	waitbutton
	closetext
	end

TrainerGruntM3SeasideCave:
	trainer GRUNTM, GRUNTM_SEASIDE_CAVE_3, EVENT_BEAT_GRUNTM_SEASIDE_CAVE_3, GruntM3SeasideCaveSeenText, GruntM3SeasideCaveBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM3SeasideCaveAfterText
	waitbutton
	closetext
	end

TrainerGruntF1SeasideCave:
	trainer GRUNTF, GRUNTF_SEASIDE_CAVE_1, EVENT_BEAT_GRUNTF_SEASIDE_CAVE_1, GruntF1SeasideCaveSeenText, GruntF1SeasideCaveBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntF1SeasideCaveAfterText
	waitbutton
	closetext
	end

TrainerGruntF2SeasideCave:
	trainer GRUNTF, GRUNTF_SEASIDE_CAVE_2, EVENT_BEAT_GRUNTF_SEASIDE_CAVE_2, GruntF2SeasideCaveSeenText, GruntF2SeasideCaveBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntF2SeasideCaveAfterText
	waitbutton
	closetext
	end

TrainerGruntF3SeasideCave:
	trainer GRUNTF, GRUNTF_SEASIDE_CAVE_3, EVENT_BEAT_GRUNTF_SEASIDE_CAVE_3, GruntF3SeasideCaveSeenText, GruntF3SeasideCaveBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntF3SeasideCaveAfterText
	waitbutton
	closetext
	end
	
SeasideCaveB2FIceStone:
	itemball ICE_STONE
	
SeasideCaveB2FNeverMeltIce:
	itemball NEVERMELTICE
	
SeasideCaveB2FTMPsychic:
	itemball TM_PSYCHIC_M
	
GruntM1SeasideCaveSeenText:
	text "Target acquired!"
	line "Termination will"
	cont "now begin!"
	done

GruntM1SeasideCaveBeatenText:
	text "I was terminated…?"
	line "What a trainer!"
	done

GruntM1SeasideCaveAfterText:
	text "We in TEAM PLASMA"
	line "are trying to keep"
	
	para "all the world's"
	line "#MON for our-"
	cont "selves!"
	done
	
GruntM2SeasideCaveSeenText:
	text "Aren't you pretty"
	line "confident, just"
	
	para "waltzing right"
	line "into the enemy!"
	done

GruntM2SeasideCaveBeatenText:
	text "Argh… No wonder"
	line "you're confident"
	
	para "with that kind of"
	line "strength."
	done

GruntM2SeasideCaveAfterText:
	text "The members of"
	line "TEAM PLASMA who"
	
	para "are left are the"
	line "real thugs who"
	
	para "want to take over"
	line "the world!"
	done
	
GruntM3SeasideCaveSeenText:
	text "Knave! I do ambush"
	line "thee!"
	done

GruntM3SeasideCaveBeatenText:
	text "Woe is me!"
	done

GruntM3SeasideCaveAfterText:
	text "If that be the"
	line "case then… Forgive"
	cont "me!"
	done
	
GruntF1SeasideCaveSeenText:
	text "How about we see"
	line "how well I can use"
	
	para "this #MON I"
	line "just got!"
	done

GruntF1SeasideCaveBeatenText:
	text "Hmph… No good,"
	line "huh?"
	done

GruntF1SeasideCaveAfterText:
	text "They said if I"
	line "joined TEAM PLASMA"
	
	para "that I could get"
	line "powerful #MON"
	
	para "and do whatever I"
	line "liked!"
	
	para "But this #MON"
	line "is useless!"
	done
	
GruntF2SeasideCaveSeenText:
	text "Even if we don't"
	line "have our king any-"
	
	para "more, we still"
	line "won't lose!"
	done

GruntF2SeasideCaveBeatenText:
	text "Plasmaaa! Glory to"
	line "TEAM PLASMA!"
	done

GruntF2SeasideCaveAfterText:
	text "Maybe if TEAM"
	line "PLASMA can take"
	
	para "over the UNOVA"
	line "region, our king"
	cont "will come back…"
	done
	
GruntF3SeasideCaveSeenText:
	text "Oh-ho-ho! You've"
	line "been ambushed!"
	done

GruntF3SeasideCaveBeatenText:
	text "I lost! No!"
	line "Plasmaaa!!"
	done

GruntF3SeasideCaveAfterText:
	text "Lose! J-just go"
	line "and lose already!"
	
	para "A kid like you"
	line "should definitely"
	cont "lose!"
	done

SeasideCaveB2F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 25,  2, SEASIDE_CAVE_B1F, 8
	warp_event  7, 15, SEASIDE_CAVE_CHAMBER, 1

	db 0 ; coord events

	db 0 ; bg events

	db 9 ; object events
	object_event 22,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeasideCaveB2FIceStone, EVENT_SEASIDE_CAVE_ICE_STONE
	object_event  2,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeasideCaveB2FNeverMeltIce, EVENT_SEASIDE_CAVE_NEVERMELTICE
	object_event 14, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, SeasideCaveB2FTMPsychic, EVENT_SEASIDE_CAVE_TM_PSYCHIC
	object_event 19,  6, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerGruntM1SeasideCave, EVENT_SEASIDE_CAVE_ZINZOLIN
	object_event  6,  7, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerGruntM2SeasideCave, EVENT_SEASIDE_CAVE_ZINZOLIN
	object_event  6, 11, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerGruntM3SeasideCave, EVENT_SEASIDE_CAVE_ZINZOLIN
	object_event 14,  4, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerGruntF1SeasideCave, EVENT_SEASIDE_CAVE_ZINZOLIN
	object_event  7,  9, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerGruntF2SeasideCave, EVENT_SEASIDE_CAVE_ZINZOLIN
	object_event  7, 13, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerGruntF3SeasideCave, EVENT_SEASIDE_CAVE_ZINZOLIN
	