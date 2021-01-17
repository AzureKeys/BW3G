	const_def 2 ; object constants
	const ASPERTIAGYM_CHEREN
	const ASPERTIAGYM_GYMGUY
	const ASPERTIAGYM_SCHOOLBOY
	const ASPERTIAGYM_SCHOOLGIRL

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
	
AspertiaGymSchoolboyScript1:
	checkevent EVENT_BEAT_SCHOOLBOY_ASPERTIA_GYM
	iftrue .done
	applymovement PLAYER, AspertiaGymSchoolboyPlayerMovement1
	jump AspertiaGymSchoolboyScript
.done
	end
	
AspertiaGymSchoolboyScript2:
	checkevent EVENT_BEAT_SCHOOLBOY_ASPERTIA_GYM
	iftrue .done
	applymovement PLAYER, AspertiaGymSchoolboyPlayerMovement2
	jump AspertiaGymSchoolboyScript
.done
	end
	
AspertiaGymSchoolboyScript:
	opentext
	writetext SchoolboyAspertiaGymSeenText
	waitbutton
	closetext
	applymovement PLAYER, AspertiaGymSchoolboyPlayerMovement
	applymovement ASPERTIAGYM_SCHOOLBOY, AspertiaGymSchoolboyMovement
	winlosstext SchoolboyAspertiaGymBeatenText, 0
	loadtrainer SCHOOLBOY_D, SCHOOLBOY_ASPERTIA_GYM
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SCHOOLBOY_ASPERTIA_GYM
	end
	
AspertiaGymSchoolgirlScript1:
	checkevent EVENT_BEAT_SCHOOLGIRL_ASPERTIA_GYM
	iftrue .done
	applymovement PLAYER, AspertiaGymSchoolboyPlayerMovement1
	jump AspertiaGymSchoolgirlScript
.done
	end
	
AspertiaGymSchoolgirlScript2:
	checkevent EVENT_BEAT_SCHOOLGIRL_ASPERTIA_GYM
	iftrue .done
	applymovement PLAYER, AspertiaGymSchoolboyPlayerMovement2
	jump AspertiaGymSchoolgirlScript
.done
	end
	
AspertiaGymSchoolgirlScript:
	opentext
	writetext SchoolgirlAspertiaGymSeenText
	waitbutton
	closetext
	applymovement PLAYER, AspertiaGymSchoolboyPlayerMovement
	applymovement ASPERTIAGYM_SCHOOLGIRL, AspertiaGymSchoolboyMovement
	winlosstext SchoolgirlAspertiaGymBeatenText, 0
	loadtrainer SCHOOLGIRL, SCHOOLGIRL_ASPERTIA_GYM
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SCHOOLGIRL_ASPERTIA_GYM
	end

AspertiaGymSchoolboyBeatenScript:
	jumptextfaceplayer SchoolboyAspertiaGymAfterText
	
AspertiaGymSchoolgirlBeatenScript:
	jumptextfaceplayer SchoolgirlAspertiaGymAfterText
	
AspertiaGymSchoolboyPlayerMovement1:
	step UP
	step RIGHT
	turn_head UP
	step_end
	
AspertiaGymSchoolboyPlayerMovement2:
	step UP
	step_end
	
AspertiaGymSchoolboyPlayerMovement:
	step LEFT
	step UP
	turn_head RIGHT
	step_end
	
AspertiaGymSchoolboyMovement:
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
	line "BADGE, the SPEED"

	para "of your #MON"
	line "will increase."

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
	
SchoolboyAspertiaGymSeenText:
	text "My chance of"
	line "losing? Not even"
	cont "one percent!"
	done

SchoolboyAspertiaGymBeatenText:
	text "That's odd."
	done

SchoolboyAspertiaGymAfterText:
	text "I know my short-"
	line "comings now."

	para "Thanks for showing"
	line "me!"
	done
	
SchoolgirlAspertiaGymSeenText:
	text "I can't allow a"
	line "nameless trainer"
	cont "past me!"

	para "CHEREN would be"
	line "livid if I did!"
	done

SchoolgirlAspertiaGymBeatenText:
	text "Awww… I lost…"
	done

SchoolgirlAspertiaGymAfterText:
	text "Uh-oh… CHEREN is"
	line "going to be mad…"
	done
	
AspertiaGym_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4, 21, ASPERTIA_CITY, 7
	warp_event  5, 21, ASPERTIA_CITY, 7

	db 4 ; coord events
	coord_event  4, 17, SCENE_DEFAULT, AspertiaGymSchoolboyScript1
	coord_event  5, 17, SCENE_DEFAULT, AspertiaGymSchoolboyScript2
	coord_event  4, 11, SCENE_DEFAULT, AspertiaGymSchoolgirlScript1
	coord_event  5, 11, SCENE_DEFAULT, AspertiaGymSchoolgirlScript2

	db 2 ; bg events
	bg_event  3, 19, BGEVENT_READ, AspertiaGymStatue
	bg_event  6, 19, BGEVENT_READ, AspertiaGymStatue

	db 4 ; object events
	object_event  5,  1, SPRITE_CHEREN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AspertiaGymCherenScript, -1
	object_event  5, 19, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, AspertiaGymGuyScript, -1
	object_event  5, 15, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, AspertiaGymSchoolboyBeatenScript, -1
	object_event  5,  9, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, AspertiaGymSchoolgirlBeatenScript, -1
	