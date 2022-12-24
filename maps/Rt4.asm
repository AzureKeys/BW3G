	const_def 2 ; object constants
	const R4_HEAVY_BALL
	const R4_X_ACCURACY
	const R4_ETHER
	const R4_SUPER_POTION
	const R4_RICH_BOY
	const R4_ROUGHNECK
	const R4_FISHER1
	const R4_FISHER2
	const R4_LADY
	const R4_POLICEMAN1
	const R4_POLICEMAN2
	const R4_POKEFANM
	const R4_POKEFANF
	const R4_BIKER

Rt4_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerLadyR4:
	trainer LADY, LADY_R4, EVENT_BEAT_LADY_R4, LadyR4SeenText, LadyR4BeatenText, 0, .Script

.Script:
	writecode VAR_CALLERID, PHONE_LADY_LACEY
	opentext
	checkflag ENGINE_LACEY_READY_FOR_REMATCH
	iftrue .ChooseRematch
	checkcellnum PHONE_LADY_LACEY
	iftrue .NumberAccepted
	checkevent EVENT_LACEY_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgainForPhoneNumber
	writetext LadyR4AfterText
	buttonsound
	setevent EVENT_LACEY_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	jump .ContinueAskForPhoneNumber
	
.AskAgainForPhoneNumber:
	scall .AskNumber2
.ContinueAskForPhoneNumber:
	askforphonenumber PHONE_LADY_LACEY
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	setflag ENGINE_LACEY
	trainertotext LADY, LADY_R4, MEM_BUFFER_0
	scall .RegisteredNumber
	jump .NumberAccepted
	
.ChooseRematch:
	scall .Rematch
	winlosstext LadyR4BeatenText, 0
	checkevent EVENT_BEAT_POKEMON_LEAGUE
	iftrue .LoadFight4
	checkmapscene SEASIDE_CAVE_CHAMBER
	ifequal SCENE_FINISHED, .LoadFight3
	checkevent EVENT_FINISHED_PWT
	iftrue .LoadFight2
	checkevent EVENT_BEAT_VIRBANK_COMPLEX_BRONIUS
	iftrue .LoadFight1
; Fight0
	loadtrainer LADY, LADY_R4
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_LACEY_READY_FOR_REMATCH
	jump .Gift
	
.LoadFight1
	loadtrainer LADY, LACEY_REMATCH_1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_LACEY_READY_FOR_REMATCH
	jump .Gift
	
.LoadFight2
	loadtrainer LADY, LACEY_REMATCH_2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_LACEY_READY_FOR_REMATCH
	jump .Gift
	
.LoadFight3
	loadtrainer LADY, LACEY_REMATCH_3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_LACEY_READY_FOR_REMATCH
	jump .Gift
	
.LoadFight4
	loadtrainer LADY, LACEY_REMATCH_4
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_LACEY_READY_FOR_REMATCH
	; fallthrough
	
.Gift:
	opentext
	scall .GiftText
	scall .GiveGift
	ifequal FALSE, .PackIsFull
	end
	
.AskNumber1:
	jumpstd asknumber1f
	end
	
.AskNumber2:
	jumpstd asknumber2f
	end

.RegisteredNumber:
	jumpstd registerednumberf
	end

.NumberAccepted:
	jumpstd numberacceptedf
	end

.NumberDeclined:
	jumpstd numberdeclinedf
	end

.PhoneFull:
	jumpstd phonefullf
	end

.Rematch:
	jumpstd rematchf
	end

.GiftText:
	jumpstd giftf
	end

.PackIsFull:
	jumpstd packfullf
	end
	
.GiveGift:
	rematchgift HIDDENGROTTO_TIER_1

TrainerRichBoyR4:
	trainer RICH_BOY, RICH_BOY_R4, EVENT_BEAT_RICH_BOY_R4, RichBoyR4SeenText, RichBoyR4BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext RichBoyR4AfterText
	waitbutton
	closetext
	end

TrainerRoughneckR4:
	trainer ROUGHNECK, ROUGHNECK_R4, EVENT_BEAT_ROUGHNECK_R4, RoughneckR4SeenText, RoughneckR4BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext RoughneckR4AfterText
	waitbutton
	closetext
	end

TrainerFisher1R4:
	trainer FISHER, FISHER_R4_1, EVENT_BEAT_FISHER_R4_1, Fisher1R4SeenText, Fisher1R4BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Fisher1R4AfterText
	waitbutton
	closetext
	end

TrainerFisher2R4:
	trainer FISHER_D, FISHER_R4_2, EVENT_BEAT_FISHER_R4_2, Fisher2R4SeenText, Fisher2R4BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Fisher2R4AfterText
	waitbutton
	closetext
	end

TrainerPoliceman1R4:
	trainer POLICEMAN, POLICEMAN_R4_1, EVENT_BEAT_POLICEMAN_R4_1, Policeman1R4SeenText, Policeman1R4BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Policeman1R4AfterText
	waitbutton
	closetext
	end

TrainerPoliceman2R4:
	trainer POLICEMAN, POLICEMAN_R4_2, EVENT_BEAT_POLICEMAN_R4_2, Policeman2R4SeenText, Policeman2R4BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Policeman2R4AfterText
	waitbutton
	closetext
	end

TrainerPokefanMR4:
	trainer POKEFANM, POKEFANM_R4, EVENT_BEAT_POKEFANM_R4, PokefanMR4SeenText, PokefanMR4BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanMR4AfterText
	waitbutton
	closetext
	end

TrainerPokefanFR4:
	trainer POKEFANF, POKEFANF_R4, EVENT_BEAT_POKEFANF_R4, PokefanFR4SeenText, PokefanFR4BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanFR4AfterText
	waitbutton
	closetext
	end

TrainerBikerR4:
	trainer BIKER, BIKER_R4, EVENT_BEAT_BIKER_R4, BikerR4SeenText, BikerR4BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerR4AfterText
	waitbutton
	closetext
	end
	
R4HeavyBall:
	itemball HEAVY_BALL
	
R4XAccuracy:
	itemball X_ACCURACY
	
R4Ether:
	itemball ETHER
	
R4SuperPotion:
	itemball SUPER_POTION
	
R4UltraBall:
	hiddenitem ULTRA_BALL, EVENT_R_4_ULTRA_BALL
	
R4Pearl:
	hiddenitem PEARL, EVENT_R_4_PEARL
	
R4BurnHeal:
	hiddenitem BURN_HEAL, EVENT_R_4_BURN_HEAL
	
R4Ether2:
	hiddenitem ETHER, EVENT_R_4_ETHER_2
	
R4DesertSign:
	jumptext R4DesertSignText
	
R4CasteliaSign:
	jumptext R4CasteliaSignText
	
RichBoyR4SeenText:
	text "I'll see if you're"
	line "worthy to stand on"
	
	para "the same stage as"
	line "me!"
	done

RichBoyR4BeatenText:
	text "You've got what"
	line "it takes!"
	done

RichBoyR4AfterText:
	text "A match with a"
	line "worthy challenger…"
	
	para "It makes me gleam"
	line "with joy!"
	done
	
RoughneckR4SeenText:
	text "This ain't no"
	line "place for kids"
	cont "like you!"
	done

RoughneckR4BeatenText:
	text "Just who are you?"
	line "You looked pretty"
	cont "timid."
	done

RoughneckR4AfterText:
	text "All I know is if"
	line "you're a trainer,"
	
	para "you're gonna get"
	line "challenged!"
	done
	
Fisher1R4SeenText:
	text "You've been caught"
	line "by a powerful"
	cont "hook, which is me!"
	done

Fisher1R4BeatenText:
	text "That one got away!"
	done

Fisher1R4AfterText:
	text "I like to think"
	line "#MON cling to"

	para "my hook because"
	line "they want to"
	cont "battle me!"
	done
	
Fisher2R4SeenText:
	text "Check out my"
	line "lively #MON,"

	para "which I've"
	line "gathered from all"
	cont "around UNOVA!"
	done

Fisher2R4BeatenText:
	text "Mm hm… Looks like"
	line "you're even more"
	cont "lively and fresh!"
	done

Fisher2R4AfterText:
	text "As long as you've"
	line "got momentum, you"

	para "don't need"
	line "experience or"
	cont "knowledge!"
	done
	
LadyR4SeenText:
	text "A stylish #MON"
	line "battle is starting"
	cont "now!"
	done

LadyR4BeatenText:
	text "…What? It's over"
	line "already?"
	done

LadyR4AfterText:
	text "You're both strong"
	line "and beautiful,"
	cont "I'm impressed!"
	done
	
BikerR4SeenText:
	text "A motorcycle in"
	line "the desert! It"
	
	para "doesn't get much"
	line "more wild than"
	cont "this, eh?"
	done

BikerR4BeatenText:
	text "Motorcycles aren't"
	line "comptible with"
	
	para "sand, and I'm not"
	line "compatible with"
	cont "you!"
	done

BikerR4AfterText:
	text "Both bicycles and"
	line "motorcycles get"
	
	para "their tires stuck"
	line "in the sand!"
	done
	
Policeman1R4SeenText:
	text "What's a kid like"
	line "you doing around"
	cont "these parts?"
	done

Policeman1R4BeatenText:
	text "To have bested an"
	line "officer like me…"
	
	para "What kind of a kid"
	line "are you?"
	done

Policeman1R4AfterText:
	text "An officer's job"
	line "is to keep on"
	
	para "patrolling even"
	line "when nothing's"
	cont "going on!"
	done
	
Policeman2R4SeenText:
	text "Ah, that smell?"
	
	para "My #MON here"
	line "seems to say that"
	
	para "you've got a"
	line "dangerous smell"
	cont "about you!"
	done

Policeman2R4BeatenText:
	text "I see…"
	line "Your strength is"
	
	para "certainly quite"
	line "dangerous…"
	done

Policeman2R4AfterText:
	text "Just because"
	line "you're strong"

	para "doesn't mean you"
	line "can look down on"
	cont "those who aren't!"
	done
	
PokefanMR4SeenText:
	text "This is a good"
	line "time to brag about"
	cont "my SEWADDLE!"
	done

PokefanMR4BeatenText:
	text "I had no time to"
	line "show off SEWADDLE…"
	done

PokefanMR4AfterText:
	text "I'm not listening"
	line "to your bragging!"

	para "We # FANS have"
	line "a policy of not"

	para "listening to other"
	line "people brag!"
	done
	
PokefanFR4SeenText:
	text "Hi! Aren't you a"
	line "cute trainer!"

	para "May I see your"
	line "#MON?"
	done

PokefanFR4BeatenText:
	text "I'm glad I got to"
	line "see your #MON!"
	done

PokefanFR4AfterText:
	text "When I see #-"
	line "MON, it seems to"
	cont "soothe my nerves."
	done
	
R4DesertSignText:
	text "DESERT RESORT"
	line "ahead."
	done
	
R4CasteliaSignText:
	text "Access to"
	line "CASTELIA CITY."
	done

Rt4_MapEvents:
	db 0, 0 ; filler

	db 5 ; warp events
	warp_event 34,  3, R_4_NIMBASA_GATE, 3
	warp_event  3,  5, R_4_DESERT_GATE, 3
	warp_event 41, 29, R_4_HOUSE, 1
	warp_event 33, 55, R_4_CASTELIA_GATE, 1
	warp_event 34, 55, R_4_CASTELIA_GATE, 2

	db 0 ; coord events

	db 6 ; bg events
	bg_event  4,  6, BGEVENT_READ, R4DesertSign
	bg_event 36, 50, BGEVENT_READ, R4CasteliaSign
	bg_event 30, 52, BGEVENT_ITEM, R4UltraBall
	bg_event 12, 26, BGEVENT_ITEM, R4Pearl
	bg_event 23, 28, BGEVENT_ITEM, R4BurnHeal
	bg_event 10, 34, BGEVENT_ITEM, R4Ether2

	db 14 ; object events
	object_event 10, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R4HeavyBall, EVENT_R_4_HEAVY_BALL
	object_event 17, 55, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R4XAccuracy, EVENT_R_4_X_ACCURACY
	object_event 36, 36, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R4Ether, EVENT_R_4_ETHER_1
	object_event 25, 37, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R4SuperPotion, EVENT_R_4_SUPER_POTION
	object_event 31, 39, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerRichBoyR4, -1
	object_event 14, 30, SPRITE_ROUGHNECK, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerRoughneckR4, -1
	object_event 12, 49, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerFisher1R4, -1
	object_event 12, 53, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 0, TrainerFisher2R4, -1
	object_event 20, 35, SPRITE_BUENA, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerLadyR4, -1
	object_event 17, 12, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerPoliceman1R4, -1
	object_event 32, 50, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerPoliceman2R4, -1
	object_event 34,  9, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerPokefanMR4, -1
	object_event 22, 20, SPRITE_POKEFAN_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerPokefanFR4, -1
	object_event 24, 46, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerBikerR4, -1
	