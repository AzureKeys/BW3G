	const_def 2 ; object constants
	const CASTELIAGYM_BURGH
	const CASTELIAGYM_GYMGUY
	const CASTELIAGYM_HARLEQUIN_1
	const CASTELIAGYM_HARLEQUIN_2
	const CASTELIAGYM_HARLEQUIN_3
	const CASTELIAGYM_HARLEQUIN_4
	const CASTELIAGYM_HARLEQUIN_5

CasteliaGym_MapScripts:
	db 1 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT

	db 1 ; callbacks
	callback MAPCALLBACK_TILES, .AppearStairs
	
.DummyScene0:
	end

.DummyScene1:
	end

.AppearStairs:
	checkevent EVENT_CASTELIA_GYM_OPEN_1
	iffalse .check2
	changeblock  6, 38, $74 ; front & side holes
	changeblock  8, 38, $75 ; warp carpet for side
.check2
	checkevent EVENT_CASTELIA_GYM_OPEN_2
	iffalse .done
	changeblock 10, 36, $6F ; cocoon top w side hole
	changeblock 10, 38, $73 ; cocoon bottom w side hole
	changeblock 12, 38, $76 ; floor w warp carpet
	changeblock  2, 38, $72 ; front hole cocoon
.done
	return
	
CasteliaGymOpenScript1:
	setevent EVENT_CASTELIA_GYM_OPEN_1
	end
	
CasteliaGymOpenScript2:
	setevent EVENT_CASTELIA_GYM_OPEN_2
	end
	
CasteliaGymBurghScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_BURGH
	iftrue .FightDone
	writetext BurghGymIntroText
	waitbutton
	closetext
	winlosstext BurghWinLossText, 0
	loadtrainer BURGH, BURGH1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BURGH
	opentext
	writetext ReceivedInsectBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_PLAINBADGE
	setmapscene CASTELIA_CITY_STREETS, SCENE_CASTELIA_CHEREN
.FightDone:
	checkevent EVENT_GOT_STRUGGLE_BUG_TM
	iftrue .SpeechAfterTM
	setevent EVENT_BEAT_HARLEQUIN_CASTELIA_GYM_1
	setevent EVENT_BEAT_HARLEQUIN_CASTELIA_GYM_2
	setevent EVENT_BEAT_HARLEQUIN_CASTELIA_GYM_3
	setevent EVENT_BEAT_HARLEQUIN_CASTELIA_GYM_4
	setevent EVENT_BEAT_HARLEQUIN_CASTELIA_GYM_5
	writetext BurghInsectBadgeText
	buttonsound
	verbosegiveitem TM_STRUGGLE_BUG
	iffalse .SpeechAfterTM
	setevent EVENT_GOT_STRUGGLE_BUG_TM
	writetext BurghTMStruggleBugText
	waitbutton
.SpeechAfterTM:
	writetext BurghFightDoneText
	waitbutton
	closetext
	end
	
CasteliaGymGuyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_BURGH
	iftrue .CasteliaGymGuyWinScript
	writetext CasteliaGymGuyText
	waitbutton
	closetext
	end

.CasteliaGymGuyWinScript:
	writetext CasteliaGymGuyWinText
	waitbutton
	closetext
	end

CasteliaGymStatue:
	checkflag ENGINE_PLAINBADGE
	iftrue .Beaten
	jumpstd gymstatue1
.Beaten:
	trainertotext BURGH, BURGH1, MEM_BUFFER_1
	jumpstd gymstatue2

TrainerHarlequinCasteliaGym1:
	trainer HARLEQUIN, HARLEQUIN_CASTELIA_GYM_1, EVENT_BEAT_HARLEQUIN_CASTELIA_GYM_1, HarlequinCasteliaGym1SeenText, HarlequinCasteliaGym1BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HarlequinCasteliaGym1AfterText
	waitbutton
	closetext
	end

TrainerHarlequinCasteliaGym2:
	trainer HARLEQUIN, HARLEQUIN_CASTELIA_GYM_2, EVENT_BEAT_HARLEQUIN_CASTELIA_GYM_2, HarlequinCasteliaGym2SeenText, HarlequinCasteliaGym2BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HarlequinCasteliaGym2AfterText
	waitbutton
	closetext
	end

TrainerHarlequinCasteliaGym3:
	trainer HARLEQUIN, HARLEQUIN_CASTELIA_GYM_3, EVENT_BEAT_HARLEQUIN_CASTELIA_GYM_3, HarlequinCasteliaGym3SeenText, HarlequinCasteliaGym3BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HarlequinCasteliaGym3AfterText
	waitbutton
	closetext
	end

TrainerHarlequinCasteliaGym4:
	trainer HARLEQUIN, HARLEQUIN_CASTELIA_GYM_4, EVENT_BEAT_HARLEQUIN_CASTELIA_GYM_4, HarlequinCasteliaGym4SeenText, HarlequinCasteliaGym4BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HarlequinCasteliaGym4AfterText
	waitbutton
	closetext
	end

TrainerHarlequinCasteliaGym5:
	trainer HARLEQUIN, HARLEQUIN_CASTELIA_GYM_5, EVENT_BEAT_HARLEQUIN_CASTELIA_GYM_5, HarlequinCasteliaGym5SeenText, HarlequinCasteliaGym5BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HarlequinCasteliaGym5AfterText
	waitbutton
	closetext
	end
	
BurghGymIntroText:
	text "Hm, my BUG #-"
	line "MON have been"
	
	para "getting all worked"
	line "up, and what do I"
	
	para "spy with my little"
	line "eye? A trainer"

	para "who's got me"
	line "scurrying around"
	cont "with excitement!"

	para "I, BURGH, the GYM"
	line "LEADER of CASTELIA"
	cont "CITY, accept your"
	cont "challenge!"

	para "Let's get right"
	line "to it!"
	done

BurghWinLossText:
	text "Is it over, has"
	line "my muse abandoned"
	cont "me?"
	
	para "Here, take this"
	line "badge, I think"
	cont "it'll suit you!"
	done

ReceivedInsectBadgeText:
	text "<PLAYER> received"
	line "INSECTBADGE."
	done

BurghInsectBadgeText:
	text "It's the INSECT-"
	line "BADGE! It's"
	cont "insectible--"

	para "I mean incredible!"

	para "It will allow you"
	line "to command all"
	
	para "#MON up to Lv."
	line "40, even ones from"
	cont "a trade!"

	para "And, since I'm"
	line "such a generous"
	cont "guy, I'll also"
	cont "give you this!"
	done

BurghTMStruggleBugText:
	text "TM49 contains"
	line "STRUGGLE BUG."

	para "In addition to"
	line "dealing damage,"

	para "it also lowers the"
	line "opponent's SPECIAL"
	cont "ATTACK."

	para "So in that way,"
	line "it is both"
	cont "defensive and"
	cont "offensive."
	done

BurghFightDoneText:
	text "I'm working on a"
	line "piece with a #-"
	cont "MON motif."

	para "When I look at my"
	line "#MON, I get the"

	para "urge to create,"
	line "and I just can't"
	cont "stop!"
	done
	
CasteliaGymGuyText:
	text "Yo, challenger!"

	para "CASTELIA CITY's"
	line "GYM LEADER is"
	cont "called BURGH."

	para "He's a bit of an"
	line "oddball, but you'd"

	para "better not under-"
	line "estimate his BUG"
	cont "type #MON!"

	para "Bugs are most"
	line "afraid of FIRE."

	para "They can also be"
	line "crushed by ROCKs,"
	
	para "and FLYING attacks"
	line "work well too."
	done

CasteliaGymGuyWinText:
	text "Well done! That"
	line "was a great clash"

	para "of talented"
	line "trainers."

	para "With people like"
	line "you, the future of"
	cont "#MON is bright!"
	done
	
HarlequinCasteliaGym1SeenText:
	text "What do you think?"
	line "This GYM… How"
	cont "should I say?"

	para "Isn't it full of…"
	line "mysterious charms?"
	done

HarlequinCasteliaGym1BeatenText:
	text "You've got quite a"
	line "bit of charm your-"
	cont "self, don't you?"
	done

HarlequinCasteliaGym1AfterText:
	text "The cocoons some-"
	line "times have secret"

	para "paths. Try going"
	line "through them all!"
	done
	
HarlequinCasteliaGym2SeenText:
	text "You thought you"
	line "could get through"
	cont "here? Think again!"
	done

HarlequinCasteliaGym2BeatenText:
	text "My, my! Aren't you"
	line "a bit too strong?"
	done

HarlequinCasteliaGym2AfterText:
	text "Here's a secret:"
	line "If you enter this"
	
	para "cocoon, a secret"
	line "path will open on"
	cont "the first floor!"
	done
	
HarlequinCasteliaGym3SeenText:
	text "When the cocoon"
	line "opens, the one who"
	cont "pops out is moi!"
	
	para "On that note, have"
	line "a battle with moi!"
	done

HarlequinCasteliaGym3BeatenText:
	text "I was taking a"
	line "nap!"
	done

HarlequinCasteliaGym3AfterText:
	text "Hiding and waiting"
	line "makes instincts"
	cont "dull, you know?"
	done
	
HarlequinCasteliaGym4SeenText:
	text "The one you meet"
	line "at this cocoon is"

	para "none other than"
	line "me!"
	done

HarlequinCasteliaGym4BeatenText:
	text "Looks like the"
	line "cocoons brought"
	cont "you to me!"
	done

HarlequinCasteliaGym4AfterText:
	text "Try going up the"
	line "right side of the"
	
	para "gym to open up"
	line "this cocoon!"
	done
	
HarlequinCasteliaGym5SeenText:
	text "You're just one"
	line "step away from"

	para "being able to"
	line "challenge BURGH!"
	done

HarlequinCasteliaGym5BeatenText:
	text "Your battle style"
	line "is almost as"
	cont "artistic as BURGH!"
	done

HarlequinCasteliaGym5AfterText:
	text "BURGH remodeled"
	line "the GYM in order"
	
	para "to understand the"
	line "feelings of #-"
	
	para "MON that wrap"
	line "themselves in"
	cont "cocoons."
	
	para "Unfortunately, we"
	line "can never seem to"
	
	para "find our way"
	line "around!"
	done
	
CasteliaGym_MapEvents:
	db 0, 0 ; filler

	db 14 ; warp events
	warp_event  6, 43, CASTELIA_CITY_STREETS, 20
	warp_event  7, 43, CASTELIA_CITY_STREETS, 20
	warp_event  6, 39, CASTELIA_GYM, 4
	warp_event  7, 29, CASTELIA_GYM, 3
	warp_event  2, 26, CASTELIA_GYM, 14
	warp_event 12, 26, CASTELIA_GYM, 7
	warp_event 12, 18, CASTELIA_GYM, 6
	warp_event 10, 14, CASTELIA_GYM, 9
	warp_event 12, 38, CASTELIA_GYM, 8
	warp_event  2, 38, CASTELIA_GYM, 11
	warp_event  3, 18, CASTELIA_GYM, 10
	warp_event  4, 14, CASTELIA_GYM, 13
	warp_event  6,  6, CASTELIA_GYM, 12
	warp_event  8, 39, CASTELIA_GYM, 5

	db 2 ; coord events
	coord_event  2, 27, SCENE_DEFAULT, CasteliaGymOpenScript1
	coord_event 10, 15, SCENE_DEFAULT, CasteliaGymOpenScript2
	
	db 2 ; bg events
	bg_event  4, 41, BGEVENT_READ, CasteliaGymStatue
	bg_event  8, 41, BGEVENT_READ, CasteliaGymStatue

	db 7 ; object events
	object_event  6,  2, SPRITE_BURGH, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CasteliaGymBurghScript, -1
	object_event  7, 40, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CasteliaGymGuyScript, -1
	object_event  9, 29, SPRITE_HARLEQUIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerHarlequinCasteliaGym1, -1
	object_event 11, 16, SPRITE_HARLEQUIN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerHarlequinCasteliaGym2, -1
	object_event 13, 38, SPRITE_HARLEQUIN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerHarlequinCasteliaGym3, -1
	object_event  0, 39, SPRITE_HARLEQUIN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerHarlequinCasteliaGym4, -1
	object_event  3, 16, SPRITE_HARLEQUIN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerHarlequinCasteliaGym5, -1
	