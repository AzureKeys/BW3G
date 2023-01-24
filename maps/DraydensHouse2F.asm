	const_def 2 ; object constants
	const DRAYDENSHOUSE2F_IRIS

DraydensHouse2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
DraydensHouseIris:
	faceplayer
	opentext
	checkevent EVENT_BEAT_POKEMON_LEAGUE
	iffalse .CheckDrayden
	checkevent EVENT_BEAT_IRIS
	iffalse .FirstBattle
	checkcode VAR_WEEKDAY
	ifnotequal FRIDAY, .NotFriday
	checkflag ENGINE_IRIS
	iftrue .NotFriday
	writetext DraydensHouseIrisRematchText
	jump .StartBattle
	
.FirstBattle
	writetext DraydensHouseIrisFirstBattleText
.StartBattle
	waitbutton
	closetext
	winlosstext IrisWinLossText, 0
	loadtrainer IRIS, IRIS1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_IRIS
	setflag ENGINE_IRIS
	opentext
.NotFriday
	writetext DraydensHouseIrisAfterBattleText
	waitbutton
	closetext
	end

.CheckDrayden
	checkflag ENGINE_LEGENDBADGE
	iffalse .GoToGym
	writetext DraydensHouseIrisBeatGymText
	waitbutton
	closetext
	end
	
.GoToGym
	writetext DraydensHouseIrisGoGymText
	waitbutton
	closetext
	end
	
DraydensHouseIrisBeatGymText:
	text "Wow! You managed"
	line "to even beat my"
	cont "grandpa!"
	
	para "You must be a"
	line "really strong"
	cont "trainer, <PLAY_G>!"
	
	para "You may even have"
	line "what it takes to"
	
	para "beat the #MON"
	line "LEAGUE!"
	
	para "Who knows? Maybe"
	line "you'll even become"
	
	para "the champion, like"
	line "I did!"
	
	para "If you do ever"
	line "become champion,"
	
	para "you should come by"
	line "and battle me"
	cont "sometime!"
	done
	
DraydensHouseIrisGoGymText:
	text "Oh, <PLAY_G>!"
	line "Did you hear?"
	
	para "My grandpa is back"
	line "from the tower."
	
	para "You should go"
	line "challenge him at"
	
	para "the GYM if you"
	line "haven't yet!"
	
	para "Be careful though,"
	line "he's really strong!"
	done
	
DraydensHouseIrisFirstBattleText:
	text "Hi, <PLAY_G>!"
	
	para "So, you did end up"
	line "becoming Champion"
	cont "after all, huh?"
	
	para "I knew you had it"
	line "in you!"
	
	para "Say, why don't you"
	line "and I have a"
	
	para "battle, Champion"
	line "against Champion!"
	
	para "Show me the power"
	line "you used to beat"
	cont "the #MON"
	cont "LEAGUE!"
	done

DraydensHouseIrisAfterBattleText:
	text "You really are"
	line "something,"
	cont "<PLAY_G>!"
	
	para "I can definitely"
	line "see how you were"
	
	para "able to become"
	line "Champion."
	
	para "Stop by again"
	line "sometime, and"
	
	para "we'll have another"
	line "battle."
	
	para "I'll be ready!"
	done
	
DraydensHouseIrisRematchText:
	text "Oh, hi <PLAY_G>!"
	
	para "Are you back for a"
	line "rematch with me?"
	
	para "Ha! I like that!"
	line "You have to keep"
	
	para "up your skills if"
	line "you want to remain"
	cont "Champion!"
	
	para "Now, show me the"
	line "power you used to"
	
	para "defeat the #MON"
	line "LEAGUE!"
	done

IrisWinLossText:
	text "Wow, that was"
	line "incredible!"
	done

DraydensHouse2F_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  4,  0, DRAYDENS_HOUSE_1F, 3
	
	db 0 ; coord events

	db 0 ; bg events
	
	db 1 ; object events
	object_event  3,  4, SPRITE_IRIS, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DraydensHouseIris, EVENT_DRAYDENS_HOUSE_IRIS
	