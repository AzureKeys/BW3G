	const_def 2 ; object constants
	const R16_RARE_CANDY
	const R16_TINYMUSHROOM
	const R16_FRIEND_BALL
	const R16_TM_SUNNY_DAY
	const R16_LASS
	const R16_SCHOOLBOY
	const R16_SCHOOLGIRL
	const R16_BIRD_KEEPER
	const R16_BIKER

Rt16_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerLassR16:
	trainer LASS_D, LASS_R16, EVENT_BEAT_LASS_R16, LassR16SeenText, LassR16BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassR16AfterText
	waitbutton
	closetext
	end

TrainerSchoolboyR16:
	trainer SCHOOLBOY, SCHOOLBOY_R16, EVENT_BEAT_SCHOOLBOY_R16, SchoolboyR16SeenText, SchoolboyR16BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyR16AfterText
	waitbutton
	closetext
	end

TrainerSchoolgirlR16:
	trainer SCHOOLGIRL, SCHOOLGIRL_R16, EVENT_BEAT_SCHOOLGIRL_R16, SchoolgirlR16SeenText, SchoolgirlR16BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolgirlR16AfterText
	waitbutton
	closetext
	end

TrainerBirdKeeperR16:
	trainer BIRD_KEEPER, BIRD_KEEPER_R16, EVENT_BEAT_BIRD_KEEPER_R16, BirdKeeperR16SeenText, BirdKeeperR16BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperR16AfterText
	waitbutton
	closetext
	end

TrainerBikerR16:
	trainer BIKER, BIKER_R16, EVENT_BEAT_BIKER_R16, BikerR16SeenText, BikerR16BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerR16AfterText
	waitbutton
	closetext
	end
	
R16Sign:
	jumptext R16SignText
	
R16RareCandy:
	itemball RARE_CANDY
	
R16Tinymushroom:
	itemball TINYMUSHROOM
	
R16FriendBall:
	itemball FRIEND_BALL
	
R16TMSunnyDay:
	itemball TM_SUNNY_DAY
	
LassR16SeenText:
	text "I like cute #-"
	line "MON better than"
	cont "strong #MON."

	para "But I have strong"
	line "and cute #MON!"
	done

LassR16BeatenText:
	text "Oh, no, no, no!"
	done

LassR16AfterText:
	text "I'm okay! If I"
	line "lose, I'll just"

	para "try harder next"
	line "time!"
	done
	
SchoolboyR16SeenText:
	text "Let me try some-"
	line "thing I learned"
	cont "today."
	done

SchoolboyR16BeatenText:
	text "I didn't study"
	line "enough, I guess."
	done

SchoolboyR16AfterText:
	text "I have to take so"
	line "many tests, I"

	para "don't have much"
	line "time for #MON."

	para "So when I do get"
	line "to play, I really"
	cont "concentrate."
	done
	
SchoolgirlR16SeenText:
	text "Give it your best"
	line "shot, or I'll take"
	cont "you down!"
	done

SchoolgirlR16BeatenText:
	text "No! Oh, my #-"
	line "MON, I'm so sorry!"
	done

SchoolgirlR16AfterText:
	text "I taught my #-"
	line "MON moves for"
	cont "taking on any"
	cont "type…"
	done
	
BirdKeeperR16SeenText:
	text "Fly high into the"
	line "sky, my beloved"
	cont "bird #MON!"
	done

BirdKeeperR16BeatenText:
	text "I feel like just"
	line "flying away now."
	done

BirdKeeperR16AfterText:
	text "I plan to train"
	line "around NIMBASA"
	cont "CITY."
	done
	
BikerR16SeenText:
	text "I'm a fearless"
	line "highway star!"
	done

BikerR16BeatenText:
	text "Arrrgh! Crash and"
	line "burn!"
	done

BikerR16AfterText:
	text "Reckless driving"
	line "causes accidents!"
	cont "Take it easy!"
	done
	
R16SignText:
	text "NIMBASA CITY"
	line "ahead."
	done

Rt16_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 20,  4, R_16_LOSTLORN_GATE, 3
	warp_event 20,  5, R_16_LOSTLORN_GATE, 4
	warp_event  4, 22, R_16_NIMBASA_GATE, 3
	warp_event  4, 23, R_16_NIMBASA_GATE, 4

	db 0 ; coord events

	db 1 ; bg events
	bg_event  5, 20, BGEVENT_READ, R16Sign

	db 9 ; object events
	object_event 29, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R16RareCandy, EVENT_R_16_RARE_CANDY
	object_event 17,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R16Tinymushroom, EVENT_R_16_TINYMUSHROOM
	object_event  8, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R16FriendBall, EVENT_R_16_FRIEND_BALL
	object_event 33, 24, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, R16TMSunnyDay, EVENT_R_16_TM_SUNNY_DAY
	object_event 22,  8, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 4, TrainerLassR16, -1
	object_event 18, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSchoolboyR16, -1
	object_event 14, 22, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerSchoolgirlR16, -1
	object_event 13, 18, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperR16, -1
	object_event 30, 22, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerBikerR16, -1
	