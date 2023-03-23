	const_def 2 ; object constants
	const LENTIMASGYM_MARLON
	const LENTIMASGYM_GYMGUY
	const LENTIMASGYM_HEX_MANIAC_1
	const LENTIMASGYM_HEX_MANIAC_2
	const LENTIMASGYM_HEX_MANIAC_3
	const LENTIMASGYM_HEX_MANIAC_4

LentimasGym_MapScripts:
	db 1 ; scene scripts
	scene_script .DummyScene ; SCENE_DEFAULT

	db 1 ; callbacks
	callback MAPCALLBACK_OBJECTS, .Trainers

.DummyScene:
	end
	
.Trainers:
	checkevent EVENT_BEAT_HEX_MANIAC_LENTIMAS_GYM_1
	iftrue .next
	disappear LENTIMASGYM_HEX_MANIAC_1
.next
	checkevent EVENT_BEAT_HEX_MANIAC_LENTIMAS_GYM_2
	iftrue .next2
	disappear LENTIMASGYM_HEX_MANIAC_2
.next2
	checkevent EVENT_BEAT_HEX_MANIAC_LENTIMAS_GYM_3
	iftrue .next3
	disappear LENTIMASGYM_HEX_MANIAC_3
.next3
	checkevent EVENT_BEAT_HEX_MANIAC_LENTIMAS_GYM_4
	iftrue .done
	disappear LENTIMASGYM_HEX_MANIAC_4
.done
	return
	
LentimasGymShauntalScript:
	checkevent EVENT_BEAT_SHAUNTAL
	iftrue .FightDone
	opentext
	writetext ShauntalGymIntroText
	buttonsound
	faceplayer
	writetext ShauntalGymIntroText2
	waitbutton
	closetext
	winlosstext ShauntalWinLossText, 0
	loadtrainer SHAUNTAL, SHAUNTAL1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SHAUNTAL
	opentext
	writetext ReceivedSpookyBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_SPOOKYBADGE
	jump .FightDone2
.FightDone:
	faceplayer
	opentext
.FightDone2
	checkevent EVENT_GOT_HEX_TM
	iftrue .SpeechAfterTM
	setevent EVENT_BEAT_HEX_MANIAC_LENTIMAS_GYM_1
	setevent EVENT_BEAT_HEX_MANIAC_LENTIMAS_GYM_2
	setevent EVENT_BEAT_HEX_MANIAC_LENTIMAS_GYM_3
	setevent EVENT_BEAT_HEX_MANIAC_LENTIMAS_GYM_4
	clearevent EVENT_LENTIMAS_GYM_TRAINER_1
	clearevent EVENT_LENTIMAS_GYM_TRAINER_2
	clearevent EVENT_LENTIMAS_GYM_TRAINER_3
	clearevent EVENT_LENTIMAS_GYM_TRAINER_4
	writetext ShauntalSpookyBadgeText
	buttonsound
	verbosegiveitem TM_HEX
	iffalse .SpeechAfterTM
	setevent EVENT_GOT_HEX_TM
	writetext ShauntalTMHexText
	waitbutton
.SpeechAfterTM:
	writetext ShauntalFightDoneText
	waitbutton
	closetext
	end
	
LentimasGymGuyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_SHAUNTAL
	iftrue .LentimasGymGuyWinScript
	writetext LentimasGymGuyText
	waitbutton
	closetext
	end

.LentimasGymGuyWinScript:
	writetext LentimasGymGuyWinText
	waitbutton
	closetext
	end

LentimasGymStatue:
	checkflag ENGINE_SPOOKYBADGE
	iftrue .Beaten
	jumpstd gymstatue1
.Beaten:
	trainertotext SHAUNTAL, SHAUNTAL1, MEM_BUFFER_1
	jumpstd gymstatue2
	
LentimasGymTrainer1Script1:
	checkevent EVENT_BEAT_HEX_MANIAC_LENTIMAS_GYM_1
	iftrue .done
	playmusic MUSIC_SCIENTIST_ENCOUNTER
	appear LENTIMASGYM_HEX_MANIAC_1
	showemote EMOTE_SHOCK, LENTIMASGYM_HEX_MANIAC_1, 15
	turnobject PLAYER, UP
	jump LentimasGymTrainer1Script
.done
	end
	
LentimasGymTrainer1Script2:
	checkevent EVENT_BEAT_HEX_MANIAC_LENTIMAS_GYM_1
	iftrue .done
	playmusic MUSIC_SCIENTIST_ENCOUNTER
	appear LENTIMASGYM_HEX_MANIAC_1
	showemote EMOTE_SHOCK, LENTIMASGYM_HEX_MANIAC_1, 15
	turnobject PLAYER, UP
	applymovement LENTIMASGYM_HEX_MANIAC_1, LentimasGymDown1Movement
	jump LentimasGymTrainer1Script
.done
	end
	
LentimasGymTrainer1Script3:
	checkevent EVENT_BEAT_HEX_MANIAC_LENTIMAS_GYM_1
	iftrue .done
	playmusic MUSIC_SCIENTIST_ENCOUNTER
	appear LENTIMASGYM_HEX_MANIAC_1
	showemote EMOTE_SHOCK, LENTIMASGYM_HEX_MANIAC_1, 15
	turnobject PLAYER, UP
	applymovement LENTIMASGYM_HEX_MANIAC_1, LentimasGymDown2Movement
	jump LentimasGymTrainer1Script
.done
	end
	
LentimasGymTrainer1Script:
	opentext
	writetext HexManiacLentimasGym1SeenText
	waitbutton
	closetext
	winlosstext HexManiacLentimasGym1BeatenText, 0
	setlasttalked LENTIMASGYM_HEX_MANIAC_1
	loadtrainer HEX_MANIAC, HEX_MANIAC_LENTIMAS_GYM_1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_HEX_MANIAC_LENTIMAS_GYM_1
	end

TrainerHexManiacLentimasGym1:
	jumptextfaceplayer HexManiacLentimasGym1AfterText
	
LentimasGymTrainer2Script1:
	checkevent EVENT_BEAT_HEX_MANIAC_LENTIMAS_GYM_2
	iftrue .done
	playmusic MUSIC_SCIENTIST_ENCOUNTER
	appear LENTIMASGYM_HEX_MANIAC_2
	showemote EMOTE_SHOCK, LENTIMASGYM_HEX_MANIAC_2, 15
	turnobject PLAYER, LEFT
	jump LentimasGymTrainer2Script
.done
	end
	
LentimasGymTrainer2Script2:
	checkevent EVENT_BEAT_HEX_MANIAC_LENTIMAS_GYM_2
	iftrue .done
	playmusic MUSIC_SCIENTIST_ENCOUNTER
	appear LENTIMASGYM_HEX_MANIAC_2
	showemote EMOTE_SHOCK, LENTIMASGYM_HEX_MANIAC_2, 15
	turnobject PLAYER, LEFT
	applymovement LENTIMASGYM_HEX_MANIAC_2, LentimasGymRight1Movement
	jump LentimasGymTrainer2Script
.done
	end
	
LentimasGymTrainer2Script3:
	checkevent EVENT_BEAT_HEX_MANIAC_LENTIMAS_GYM_2
	iftrue .done
	playmusic MUSIC_SCIENTIST_ENCOUNTER
	appear LENTIMASGYM_HEX_MANIAC_2
	showemote EMOTE_SHOCK, LENTIMASGYM_HEX_MANIAC_2, 15
	turnobject PLAYER, LEFT
	applymovement LENTIMASGYM_HEX_MANIAC_2, LentimasGymRight2Movement
	jump LentimasGymTrainer2Script
.done
	end
	
LentimasGymTrainer2Script:
	opentext
	writetext HexManiacLentimasGym2SeenText
	waitbutton
	closetext
	winlosstext HexManiacLentimasGym2BeatenText, 0
	setlasttalked LENTIMASGYM_HEX_MANIAC_2
	loadtrainer HEX_MANIAC, HEX_MANIAC_LENTIMAS_GYM_2
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_HEX_MANIAC_LENTIMAS_GYM_2
	end

TrainerHexManiacLentimasGym2:
	jumptextfaceplayer HexManiacLentimasGym2AfterText
	
LentimasGymTrainer3Script1:
	checkevent EVENT_BEAT_HEX_MANIAC_LENTIMAS_GYM_3
	iftrue .done
	playmusic MUSIC_SCIENTIST_ENCOUNTER
	appear LENTIMASGYM_HEX_MANIAC_3
	showemote EMOTE_SHOCK, LENTIMASGYM_HEX_MANIAC_3, 15
	turnobject PLAYER, LEFT
	jump LentimasGymTrainer3Script
.done
	end
	
LentimasGymTrainer3Script2:
	checkevent EVENT_BEAT_HEX_MANIAC_LENTIMAS_GYM_3
	iftrue .done
	playmusic MUSIC_SCIENTIST_ENCOUNTER
	appear LENTIMASGYM_HEX_MANIAC_3
	showemote EMOTE_SHOCK, LENTIMASGYM_HEX_MANIAC_3, 15
	turnobject PLAYER, LEFT
	applymovement LENTIMASGYM_HEX_MANIAC_3, LentimasGymRight1Movement
	jump LentimasGymTrainer3Script
.done
	end
	
LentimasGymTrainer3Script:
	opentext
	writetext HexManiacLentimasGym3SeenText
	waitbutton
	closetext
	winlosstext HexManiacLentimasGym3BeatenText, 0
	setlasttalked LENTIMASGYM_HEX_MANIAC_3
	loadtrainer HEX_MANIAC, HEX_MANIAC_LENTIMAS_GYM_3
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_HEX_MANIAC_LENTIMAS_GYM_3
	end

TrainerHexManiacLentimasGym3:
	jumptextfaceplayer HexManiacLentimasGym3AfterText
	
LentimasGymTrainer4Script:
	checkevent EVENT_BEAT_HEX_MANIAC_LENTIMAS_GYM_4
	iftrue .done
	playmusic MUSIC_SCIENTIST_ENCOUNTER
	appear LENTIMASGYM_HEX_MANIAC_4
	showemote EMOTE_SHOCK, LENTIMASGYM_HEX_MANIAC_4, 15
	turnobject PLAYER, RIGHT
	opentext
	writetext HexManiacLentimasGym4SeenText
	waitbutton
	closetext
	winlosstext HexManiacLentimasGym4BeatenText, 0
	setlasttalked LENTIMASGYM_HEX_MANIAC_4
	loadtrainer HEX_MANIAC, HEX_MANIAC_LENTIMAS_GYM_4
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_HEX_MANIAC_LENTIMAS_GYM_4
.done
	end

TrainerHexManiacLentimasGym4:
	jumptextfaceplayer HexManiacLentimasGym4AfterText
	
LentimasGymDown1Movement:
	step DOWN
	step_end
	
LentimasGymDown2Movement:
	step DOWN
	step DOWN
	step_end
	
LentimasGymRight1Movement:
	step RIGHT
	step_end
	
LentimasGymRight2Movement:
	step RIGHT
	step RIGHT
	step_end
	
ShauntalGymIntroText:
	text "Hmm…"
	
	para "… … … …"
	done

ShauntalGymIntroText2:
	text "…Oh, sorry. I"
	line "didn't see you"
	cont "there."

	para "I'm working on a"
	line "draft of my new"
	cont "novel."

	para "My name is"
	line "SHAUNTAL."
	
	para "I used to be a"
	line "member of the"
	cont "ELITE FOUR."

	para "I moved to this"
	line "sleepy little town"
	
	para "to work on my"
	line "writing, but I"
	
	para "still run this"
	line "GYM in my spare"
	cont "time."
	
	para "Would you like to"
	line "challenge me? I"
	cont "won't hold back."
	done

ShauntalWinLossText:
	text "Impressive…"

	para "Your skills will"
	line "make a great"
	cont "story."
	done

ReceivedSpookyBadgeText:
	text "<PLAYER> received"
	line "SPOOKYBADGE."
	done

ShauntalSpookyBadgeText:
	text "Do you know the"
	line "benefits of the"
	cont "SPOOKYBADGE?"

	para "If you have it,"
	line "#MON up to L30"

	para "will obey you,"
	line "even traded ones."

	para "#MON that know"
	line "CUT will be able"

	para "to use it outside"
	line "of battle too."

	para "Here, I also want"
	line "you to have this."
	done

ShauntalTMHexText:
	text "TM41 contains"
	line "HEX."

	para "It uses powerful"
	line "ghostly magic to"
	cont "attack, and it"

	para "doubles in power"
	line "if the target is"
	cont "afflicted by a"
	cont "status condition."

	para "It rewards smart"
	line "strategy with"
	cont "your attacks."
	done

ShauntalFightDoneText:
	text "My next story is"
	line "about a young"

	para "#MON trainer,"
	line "taking on the"
	cont "#MON LEAGUE."

	para "I wonder… How"
	line "far will you go?"
	done
	
LentimasGymGuyText:
	text "Yo, challenger!"

	para "SHAUNTAL may look"
	line "like a bookworm,"

	para "but she's got"
	line "serious knowledge"
	cont "of ghosts!"

	para "It's going to be"
	line "tough without my"
	cont "advice."

	para "Let's see… Ghost"
	line "#MON don't like"
	cont "being hit by"
	cont "other ghosts."

	para "Dark-type moves"
	line "are super-effec-"
	cont "tive too."
	done

LentimasGymGuyWinText:
	text "Well done! That"
	line "was a great clash"

	para "of talented"
	line "trainers."

	para "With people like"
	line "you, the future of"
	cont "#MON is bright!"
	done
	
HexManiacLentimasGym1SeenText:
	text "Eh he he… We have"
	line "trained with the"
	cont "spirits."
	
	para "Can you even"
	line "damage our #-"
	cont "MON?"
	done

HexManiacLentimasGym1BeatenText:
	text "Ack! I've been"
	line "beaten!"
	done

HexManiacLentimasGym1AfterText:
	text "Ghost type #MON"
	line "cannot be harmed"

	para "by normal type"
	line "attacks!"
	done
	
HexManiacLentimasGym2SeenText:
	text "Aha! How can you"
	line "defeat that which"
	
	para "you cannot even"
	line "see?"
	done

HexManiacLentimasGym2BeatenText:
	text "You've found my"
	line "weakness!"
	done

HexManiacLentimasGym2AfterText:
	text "We hide in the"
	line "shadows and wait"
	
	para "to scare passers-"
	line "by. Just like a"
	cont "ghost!"
	done
	
HexManiacLentimasGym3SeenText:
	text "I have been a"
	line "disciple of"
	
	para "SHAUNTAL since I"
	line "was young. There's"
	
	para "no way you can"
	line "beat me!"
	done

HexManiacLentimasGym3BeatenText:
	text "Okay, I admit it!"
	line "I'm just a fan of"
	cont "her books!"
	done

HexManiacLentimasGym3AfterText:
	text "I need more guid-"
	line "ance from SHAUNTAL"

	para "if I want to get"
	line "stronger…"

	para "She should hurry"
	line "up and put out the"
	cont "next book already!"
	done
	
HexManiacLentimasGym4SeenText:
	text "A spooky mountain"
	line "town with a spooky"
	cont "ghost type GYM?"
	
	para "That's just perfect"
	line "for a spooky girl"
	cont "like me!"
	done

HexManiacLentimasGym4BeatenText:
	text "Ah! You're scary!"
	done

HexManiacLentimasGym4AfterText:
	text "I came to this"
	line "town to search for"
	
	para "ghosts. It's great"
	line "if you're into the"
	cont "supernatural!"
	done
	
LentimasGym_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  7, 19, LENTIMAS_TOWN, 4
	warp_event  8, 19, LENTIMAS_TOWN, 4

	db 9 ; coord events
	coord_event  1,  6, SCENE_DEFAULT, LentimasGymTrainer1Script1
	coord_event  1,  7, SCENE_DEFAULT, LentimasGymTrainer1Script2
	coord_event  1,  8, SCENE_DEFAULT, LentimasGymTrainer1Script3
	coord_event  8,  7, SCENE_DEFAULT, LentimasGymTrainer2Script1
	coord_event  9,  7, SCENE_DEFAULT, LentimasGymTrainer2Script2
	coord_event 10,  7, SCENE_DEFAULT, LentimasGymTrainer2Script3
	coord_event  4, 10, SCENE_DEFAULT, LentimasGymTrainer3Script1
	coord_event  5, 10, SCENE_DEFAULT, LentimasGymTrainer3Script2
	coord_event 11, 11, SCENE_DEFAULT, LentimasGymTrainer4Script

	db 2 ; bg events
	bg_event  6, 17, BGEVENT_READ, LentimasGymStatue
	bg_event  9, 17, BGEVENT_READ, LentimasGymStatue

	db 6 ; object events
	object_event  7,  9, SPRITE_SHAUNTAL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LentimasGymShauntalScript, -1
	object_event  8, 17, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, LentimasGymGuyScript, -1
	object_event  1,  5, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TrainerHexManiacLentimasGym1, EVENT_LENTIMAS_GYM_TRAINER_1
	object_event  7,  7, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TrainerHexManiacLentimasGym2, EVENT_LENTIMAS_GYM_TRAINER_2
	object_event  3, 10, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TrainerHexManiacLentimasGym3, EVENT_LENTIMAS_GYM_TRAINER_3
	object_event 12, 11, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TrainerHexManiacLentimasGym4, EVENT_LENTIMAS_GYM_TRAINER_4
	