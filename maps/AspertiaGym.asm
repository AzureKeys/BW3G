	const_def 2 ; object constants
	const ASPERTIAGYM_CHEREN
	const ASPERTIAGYM_GYMGUY
	const ASPERTIAGYM_YOUNGSTER
	const ASPERTIAGYM_LASS

AspertiaGym_MapScripts:
	db 1 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT

	db 0 ; callbacks

.DummyScene0:
	end
	
AspertiaGymCherenScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_CHEREN
	iftrue .FightDone
	writetext CherenGymIntroText
	waitbutton
	closetext
	winlosstext CherenWinLossText, 0
	loadtrainer CHEREN, CHEREN1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_CHEREN
	opentext
	writetext ReceivedBasicBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_STORMBADGE
.FightDone:
	checkevent EVENT_GOT_GIGA_IMPACT_TM
	iftrue .SpeechAfterTM
	writetext CherenBasicBadgeText
	buttonsound
	verbosegiveitem TM_GIGA_IMPACT
	iffalse .SpeechAfterTM
	setevent EVENT_GOT_GIGA_IMPACT_TM
	writetext CherenTMGigaImpactText
	waitbutton
.SpeechAfterTM:
	writetext CherenFightDoneText
	waitbutton
	closetext
	end
	
AspertiaGymGuyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_CHEREN
	iftrue .AspertiaGymGuyWinScript
	writetext AspertiaGymGuyText
	waitbutton
	closetext
	end

.AspertiaGymGuyWinScript:
	writetext AspertiaGymGuyWinText
	waitbutton
	closetext
	end

AspertiaGymStatue:
	checkflag ENGINE_STORMBADGE
	iftrue .Beaten
	jumpstd gymstatue1
.Beaten:
	trainertotext CHEREN, CHEREN1, MEM_BUFFER_1
	jumpstd gymstatue2
	
AspertiaGymYoungsterScript1:
	checkevent EVENT_BEAT_YOUNGSTER_ASPERTIA_GYM
	iftrue .done
	applymovement PLAYER, AspertiaGymYoungsterPlayerMovement1
	jump AspertiaGymYoungsterScript
.done
	end
	
AspertiaGymYoungsterScript2:
	checkevent EVENT_BEAT_YOUNGSTER_ASPERTIA_GYM
	iftrue .done
	applymovement PLAYER, AspertiaGymYoungsterPlayerMovement2
	jump AspertiaGymYoungsterScript
.done
	end
	
AspertiaGymYoungsterScript:
	opentext
	writetext YoungsterAspertiaGymSeenText
	waitbutton
	closetext
	applymovement PLAYER, AspertiaGymYoungsterPlayerMovement
	applymovement ASPERTIAGYM_YOUNGSTER, AspertiaGymYoungsterMovement
	winlosstext YoungsterAspertiaGymBeatenText, 0
	loadtrainer YOUNGSTER, YOUNGSTER_ASPERTIA_GYM
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_YOUNGSTER_ASPERTIA_GYM
	end
	
AspertiaGymLassScript1:
	checkevent EVENT_BEAT_LASS_ASPERTIA_GYM
	iftrue .done
	applymovement PLAYER, AspertiaGymYoungsterPlayerMovement1
	jump AspertiaGymLassScript
.done
	end
	
AspertiaGymLassScript2:
	checkevent EVENT_BEAT_LASS_ASPERTIA_GYM
	iftrue .done
	applymovement PLAYER, AspertiaGymYoungsterPlayerMovement2
	jump AspertiaGymLassScript
.done
	end
	
AspertiaGymLassScript:
	opentext
	writetext LassAspertiaGymSeenText
	waitbutton
	closetext
	applymovement PLAYER, AspertiaGymYoungsterPlayerMovement
	applymovement ASPERTIAGYM_LASS, AspertiaGymYoungsterMovement
	winlosstext LassAspertiaGymBeatenText, 0
	loadtrainer LASS_D, LASS_ASPERTIA_GYM
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_LASS_ASPERTIA_GYM
	end

AspertiaGymYoungsterBeatenScript:
	jumptextfaceplayer YoungsterAspertiaGymAfterText
	
AspertiaGymLassBeatenScript:
	jumptextfaceplayer LassAspertiaGymAfterText
	
AspertiaGymYoungsterPlayerMovement1:
	step UP
	step RIGHT
	turn_head UP
	step_end
	
AspertiaGymYoungsterPlayerMovement2:
	step UP
	step_end
	
AspertiaGymYoungsterPlayerMovement:
	step LEFT
	step UP
	turn_head RIGHT
	step_end
	
AspertiaGymYoungsterMovement:
	turn_head LEFT
	step_end
	
CherenGymIntroText:
	text "<PLAY_G>! Welcome"
	line "to ASPERTIA CITY"
	cont "#MON GYM."
	
	para "I'm grateful for"
	line "your help before,"

	para "but this is"
	line "different."

	para "Here, I accept"
	line "your challenge as"

	para "the ASPERTIA CITY"
	line "GYM LEADER."
	
	para "Let's both do our"
	line "best and have a"

	para "battle we can be"
	line "proud of."
	done

CherenWinLossText:
	text "This! This is what"
	line "a real #MON"
	cont "battle is!"
	done

ReceivedBasicBadgeText:
	text "<PLAYER> received"
	line "BASICBADGE."
	done

CherenBasicBadgeText:
	text "Congratulations,"
	line "<PLAY_G>."

	para "I give you this"
	line "in honor of the"

	para "strength you and"
	line "your #MON"
	cont "showed."

	para "With the BASIC"
	line "BADGE, you'll be"

	para "able to command"
	line "all #MON up to"
	cont "level 60."

	para "You will also be"
	line "able to use the"
	cont "move STRENGTH"
	cont "outside of battle."
	
	para "And, I want you"
	line "to take this!"
	done

CherenTMGigaImpactText:
	text "TM01 can teach"
	line "your #MON the"
	cont "move GIGA IMPACT."

	para "It is incredibly"
	line "powerful. So much"
	cont "so, that your"
	cont "#MON will be"

	para "unable to move the"
	line "turn after use."
	done

CherenFightDoneText:
	text "Years ago, I too"
	line "set out on a"

	para "#MON journey"
	line "with my friends,"
	cont "#DEX in hand."

	para "Keep collecting"
	line "badges and getting"
	cont "stronger!"
	done
	
AspertiaGymGuyText:
	text "Yo, challenger!"

	para "CHEREN is the"
	line "leader of this"
	cont "GYM. He teaches"

	para "students how to"
	line "train #MON."

	para "He's going to be"
	line "tough without my"
	cont "advice."

	para "Let's see…"
	line "CHEREN's #MON"

	para "are all normal"
	line "type. Their only"
	
	para "weakness is the"
	line "fighting type."
	done

AspertiaGymGuyWinText:
	text "Well done! That"
	line "was a great clash"

	para "of talented"
	line "trainers."

	para "With people like"
	line "you, the future of"
	cont "#MON is bright!"
	done
	
YoungsterAspertiaGymSeenText:
	text "CHEREN saw"
	line "potential in me"
	
	para "and made me a"
	line "trainer in this"
	cont "GYM!"
	done

YoungsterAspertiaGymBeatenText:
	text "You're strong. Or"
	line "should I say your"
	
	para "#MON are"
	line "strong?"
	done

YoungsterAspertiaGymAfterText:
	text "The reason he saw"
	line "potential in me"

	para "was that there was"
	line "no one else?"
	
	para "No way! Even if"
	line "that's true, I"
	
	para "just have to get"
	line "stronger!"
	done
	
LassAspertiaGymSeenText:
	text "Now I'll show you"
	line "all of the things"

	para "I learned from"
	line "CHEREN!"
	done

LassAspertiaGymBeatenText:
	text "For knowledge to"
	line "become your own,"
	
	para "you need to test"
	line "it out yourself."
	done

LassAspertiaGymAfterText:
	text "I have to learn"
	line "even more about"
	cont "my #MON!"
	done
	
AspertiaGym_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4, 21, ASPERTIA_CITY, 7
	warp_event  5, 21, ASPERTIA_CITY, 7

	db 4 ; coord events
	coord_event  4, 17, SCENE_DEFAULT, AspertiaGymYoungsterScript1
	coord_event  5, 17, SCENE_DEFAULT, AspertiaGymYoungsterScript2
	coord_event  4, 11, SCENE_DEFAULT, AspertiaGymLassScript1
	coord_event  5, 11, SCENE_DEFAULT, AspertiaGymLassScript2

	db 2 ; bg events
	bg_event  3, 19, BGEVENT_READ, AspertiaGymStatue
	bg_event  6, 19, BGEVENT_READ, AspertiaGymStatue

	db 4 ; object events
	object_event  5,  1, SPRITE_CHEREN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AspertiaGymCherenScript, -1
	object_event  5, 19, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, AspertiaGymGuyScript, -1
	object_event  5, 15, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, AspertiaGymYoungsterBeatenScript, -1
	object_event  5,  9, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, AspertiaGymLassBeatenScript, -1
	