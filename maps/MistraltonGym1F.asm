	const_def 2 ; object constants
	const MISTRALTONGYM1F_FAN_1
	const MISTRALTONGYM1F_FAN_2
	const MISTRALTONGYM1F_FAN_3
	const MISTRALTONGYM1F_FAN_4
	const MISTRALTONGYM1F_PILOT_1
	const MISTRALTONGYM1F_PILOT_2
	const MISTRALTONGYM1F_PILOT_3
	const MISTRALTONGYM1F_SKYLA
	const MISTRALTONGYM1F_GYM_GUY

MistraltonGym1F_MapScripts:
	db 0 ; scene scripts

	db 2 ; callbacks
	callback MAPCALLBACK_TILES, .Fans
	callback MAPCALLBACK_STONETABLE, .SetUpStoneTable
	
.Fans:
	checkevent EVENT_MISTRALTON_GYM_1F_FAN_1
	iffalse .check2
	changeblock  4, 10, $47 ; fan in pit
.check2
	checkevent EVENT_MISTRALTON_GYM_1F_FAN_2_IN_PIT
	iffalse .check3
	changeblock 12,  6, $47 ; fan in pit
.check3
	checkevent EVENT_MISTRALTON_GYM_1F_FAN_3
	iffalse .check4
	changeblock  2,  2, $79 ; fan in pit
.check4
	checkevent EVENT_MISTRALTON_GYM_1F_FAN_4_IN_PIT
	iffalse .done
	changeblock  6,  2, $7a ; fan in pit
.done
	return

.SetUpStoneTable:
	usestonetable .StoneTable
	return

.StoneTable:
	stonetable 4, MISTRALTONGYM1F_FAN_1, .Fan1
	stonetable 5, MISTRALTONGYM1F_FAN_2, .Fan2
	stonetable 6, MISTRALTONGYM1F_FAN_3, .Fan3
	stonetable 7, MISTRALTONGYM1F_FAN_4, .Fan4
	db -1 ; end

.Fan1:
	pause 30
	scall .FX
	opentext
	writetext MistraltonGym1FFanFellText
	waitbutton
	disappear MISTRALTONGYM1F_FAN_1
	changeblock  4, 10, $47 ; fan in pit
	reloadmappart
	closetext
	end

.Fan2:
	pause 30
	scall .FX
	opentext
	writetext MistraltonGym1FFanFellText
	waitbutton
	setevent EVENT_MISTRALTON_GYM_1F_FAN_2_IN_PIT
	disappear MISTRALTONGYM1F_FAN_2
	changeblock 12,  6, $47 ; fan in pit
	reloadmappart
	closetext
	end

.Fan3:
	pause 30
	scall .FX
	opentext
	writetext MistraltonGym1FFanFellText
	waitbutton
	disappear MISTRALTONGYM1F_FAN_3
	changeblock  2,  2, $79 ; fan in pit
	reloadmappart
	closetext
	end

.Fan4:
	pause 30
	scall .FX
	opentext
	writetext MistraltonGym1FFanFellText
	waitbutton
	setevent EVENT_MISTRALTON_GYM_1F_FAN_4_IN_PIT
	disappear MISTRALTONGYM1F_FAN_4
	changeblock  6,  2, $7a ; fan in pit
	reloadmappart
	closetext
	end

.FX:
	playsound SFX_STRENGTH
	earthquake 80
	end
	
MistraltonGymSkylaScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_SKYLA
	iftrue .FightDone
	writetext SkylaGymIntroText
	waitbutton
	closetext
	winlosstext SkylaWinLossText, 0
	loadtrainer SKYLA, SKYLA1
	startbattle
	reloadmapafterbattle
	specialphonecall SPECIALCALL_CHEREN_MISTRALTON
	setevent EVENT_BEAT_SKYLA
	setevent EVENT_BEAT_PILOT_MISTRALTON_GYM_1
	setevent EVENT_BEAT_PILOT_MISTRALTON_GYM_2
	setevent EVENT_BEAT_PILOT_MISTRALTON_GYM_3
	setevent EVENT_BEAT_PILOT_MISTRALTON_GYM_4
	setevent EVENT_BEAT_PILOT_MISTRALTON_GYM_5
	opentext
	writetext ReceivedJetBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_GLACIERBADGE
.FightDone:
	checkevent EVENT_GOT_ACROBATICS_TM
	iftrue .SpeechAfterTM
	writetext SkylaJetBadgeText
	buttonsound
	verbosegiveitem TM_ACROBATICS
	iffalse .SpeechAfterTM
	setevent EVENT_GOT_ACROBATICS_TM
	writetext SkylaTMAcrobaticsText
	waitbutton
.SpeechAfterTM:
	writetext SkylaFightDoneText
	waitbutton
	closetext
	end
	
MistraltonGymGuyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_SKYLA
	iftrue .MistraltonGymGuyWinScript
	writetext MistraltonGymGuyText
	waitbutton
	closetext
	end

.MistraltonGymGuyWinScript:
	writetext MistraltonGymGuyWinText
	waitbutton
	closetext
	end

MistraltonGymStatue:
	checkflag ENGINE_GLACIERBADGE
	iftrue .Beaten
	jumpstd gymstatue1
.Beaten:
	trainertotext SKYLA, SKYLA1, MEM_BUFFER_1
	jumpstd gymstatue2
	
MistraltonGym1FFan:
	jumpstd strengthboulder

TrainerPilot1MistraltonGym1F:
	trainer PILOT, PILOT_MISTRALTON_GYM_1, EVENT_BEAT_PILOT_MISTRALTON_GYM_1, Pilot1MistraltonGym1FSeenText, Pilot1MistraltonGym1FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Pilot1MistraltonGym1FAfterText
	waitbutton
	closetext
	end

TrainerPilot2MistraltonGym1F:
	trainer PILOT, PILOT_MISTRALTON_GYM_2, EVENT_BEAT_PILOT_MISTRALTON_GYM_2, Pilot2MistraltonGym1FSeenText, Pilot2MistraltonGym1FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Pilot2MistraltonGym1FAfterText
	waitbutton
	closetext
	end

TrainerPilot3MistraltonGym1F:
	trainer PILOT, PILOT_MISTRALTON_GYM_3, EVENT_BEAT_PILOT_MISTRALTON_GYM_3, Pilot3MistraltonGym1FSeenText, Pilot3MistraltonGym1FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Pilot3MistraltonGym1FAfterText
	waitbutton
	closetext
	end
	
SkylaGymIntroText:
	text "Hee-hee! I've been"
	line "waiting for you!"
	
	para "Did you enjoy"
	line "flying with the"
	cont "help of the fans?"

	para "They're my pride"
	line "and joy!"

	para "Now let's try a"
	line "battle!"
	done

SkylaWinLossText:
	text "I'm walking on"
	line "air!"
	done

ReceivedJetBadgeText:
	text "<PLAYER> received"
	line "JETBADGE."
	done

SkylaJetBadgeText:
	text "This is an"
	line "official #MON"
	cont "LEAGUE GYM BADGE."

	para "The JETBADGE will"
	line "increase the SP."
	cont "ATK and SP.DEF of"

	para "your #MON a"
	line "little. It will"
	
	para "also allow you to"
	line "use the move"
	cont "WATERFALL outside"
	cont "of battle."
	
	para "Also, as thanks"
	line "for a good battle,"

	para "I want you to have"
	line "this TM!"
	done

SkylaTMAcrobaticsText:
	text "It's ACROBATICS!"

	para "If the user isn't"
	line "holding an item,"
	cont "the power doubles!"
	
	para "It's a pretty"
	line "technical move."
	done

SkylaFightDoneText:
	text "You're an amazing"
	line "trainer! My #-"
	cont "MON and I are"

	para "happy, because for"
	line "the first time in"

	para "a while, we could"
	line "fight with our"
	cont "full strength!"
	
	para "Thank you,"
	line "<PLAY_G>!"
	done
	
MistraltonGymGuyText:
	text "Yo, challenger!"

	para "SKYLA is the"
	line "leader of this"
	cont "GYM. If you want"

	para "to reach her,"
	line "you'll need to use"
	cont "the fans to reach"
	cont "the upper floor."

	para "They're heavy, so"
	line "bring a strong"
	cont "#MON!"

	para "Let's see…"
	line "SKYLA's #MON"

	para "are all flying"
	line "type. Use ELECTRIC"
	
	para "moves to knock"
	line "them out of the"
	cont "sky!"
	
	para "Rocks and ice"
	line "will work too."
	done

MistraltonGymGuyWinText:
	text "Well done! That"
	line "was a great clash"

	para "of talented"
	line "trainers."

	para "With people like"
	line "you, the future of"
	cont "#MON is bright!"
	done
	
Pilot1MistraltonGym1FSeenText:
	text "The strong winds"
	line "represent the"
	
	para "strength of us and"
	line "our GYM LEADER!"
	done

Pilot1MistraltonGym1FBeatenText:
	text "I felt some"
	line "intense pressure"
	
	para "coming from you"
	line "and your #MON!"
	done

Pilot1MistraltonGym1FAfterText:
	text "I'll give you some"
	line "advice. There are"
	
	para "fans hidden in the"
	line "ceiling that can"
	cont "be pushed down."
	done
	
Pilot2MistraltonGym1FSeenText:
	text "Right side clear!"
	line "Left side clear!"
	
	para "Battle flight is"
	line "ready for takeout!"
	
	para "Err… I mean"
	line "takeoff!"
	done

Pilot2MistraltonGym1FBeatenText:
	text "Unfortunately… we"
	line "are forced to"
	cont "land."
	done

Pilot2MistraltonGym1FAfterText:
	text "High performance"
	line "is important for"
	
	para "planes, but maybe"
	line "feelings are what"
	
	para "is important for"
	line "#MON."
	done
	
Pilot3MistraltonGym1FSeenText:
	text "Sometimes you need"
	line "to be bold, while"
	
	para "other times you"
	line "need to be"
	
	para "careful. React"
	line "accordingly!"
	done

Pilot3MistraltonGym1FBeatenText:
	text "I couldn't block"
	line "your path!"
	done

Pilot3MistraltonGym1FAfterText:
	text "Landing is the"
	line "hardest part about"
	
	para "piloting a plane."
	line "You'd better stay"
	
	para "alert until the"
	line "very end!"
	done
	
MistraltonGym1FFanFellText:
	text "The fan fit into"
	line "the floor."
	done
	
MistraltonGym1F_MapEvents:
	db 0, 0 ; filler

	db 13 ; warp events
	warp_event  6, 19, MISTRALTON_CITY, 5
	warp_event  7, 19, MISTRALTON_CITY, 6
	warp_event  6, 15, MISTRALTON_GYM_2F, 12
	warp_event  4, 11, MISTRALTON_GYM_2F, 13
	warp_event 12,  7, MISTRALTON_GYM_2F, 14
	warp_event  3,  3, MISTRALTON_GYM_2F, 15
	warp_event  6,  2, MISTRALTON_GYM_2F, 16
	warp_event  1, 11, MISTRALTON_GYM_1F, 8
	warp_event 11, 14, MISTRALTON_GYM_1F, 9
	warp_event  9, 11, MISTRALTON_GYM_1F, 10
	warp_event 13,  3, MISTRALTON_GYM_1F, 11
	warp_event  3,  7, MISTRALTON_GYM_1F, 12
	warp_event  5,  7, MISTRALTON_GYM_1F, 13

	db 0 ; coord events

	db 2 ; bg events
	bg_event  5, 17, BGEVENT_READ, MistraltonGymStatue
	bg_event  8, 17, BGEVENT_READ, MistraltonGymStatue

	db 9 ; object events
	object_event  1, 13, SPRITE_FAN, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MistraltonGym1FFan, EVENT_MISTRALTON_GYM_1F_FAN_1
	object_event 12, 14, SPRITE_FAN, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MistraltonGym1FFan, EVENT_MISTRALTON_GYM_1F_FAN_2
	object_event  9,  1, SPRITE_FAN, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MistraltonGym1FFan, EVENT_MISTRALTON_GYM_1F_FAN_3
	object_event  2,  7, SPRITE_FAN, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MistraltonGym1FFan, EVENT_MISTRALTON_GYM_1F_FAN_4
	object_event  3, 10, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerPilot1MistraltonGym1F, -1
	object_event 12, 10, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerPilot2MistraltonGym1F, -1
	object_event  4,  0, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerPilot3MistraltonGym1F, -1
	object_event  6,  5, SPRITE_SKYLA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MistraltonGymSkylaScript, -1
	object_event  7, 17, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MistraltonGymGuyScript, -1
	