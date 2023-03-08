	const_def 2 ; object constants
	const CHAMPIONSROOM_JUNIPER
	const CHAMPIONSROOM_SHADOW_1
	const CHAMPIONSROOM_SHADOW_2
	const CHAMPIONSROOM_SHADOW_3
	const CHAMPIONSROOM_GENESECT_2
	const CHAMPIONSROOM_GENESECT_1
	const CHAMPIONSROOM_GENESIS
	
ChampionsRoom_MapScripts:
	db 4 ; scene scripts
	scene_script .EnterGenesisFight ; SCENE_START_GENESIS_BATTLE
	scene_script .EnterJuniperFight ; SCENE_START_JUNIPER_BATTLE
	scene_script .EnterChampionBattle ; SCENE_START_CHAMPION_BATTLE
	scene_script .StartPostCreditsScene ; SCENE_POST_CREDITS

	db 1 ; callbacks
	callback MAPCALLBACK_OBJECTS, .DisappearPlayer

.EnterGenesisFight:
	priorityjump .GenesisFightScript
	end

.EnterJuniperFight:
	priorityjump .JuniperFightScript
	end

.EnterChampionBattle:
	priorityjump .ChampionBattleScript
	end

.StartPostCreditsScene:
	priorityjump .PostCreditsSceneScript
	end
	
.DisappearPlayer:
	checkscene
	ifnotequal SCENE_POST_CREDITS, .finish
	disappear PLAYER
.finish
	return
	
.GenesisFightScript:
	pause 15
	applymovement PLAYER, ChampionsRoomPlayerApproachGenesisMovement
	pause 60
	cry GENESIS_MON
	waitsfx
	turnobject CHAMPIONSROOM_GENESIS, DOWN
	pause 30
	applymovement CHAMPIONSROOM_GENESIS, ChampionsRoomGenesisApproachMovement
	cry GENESIS_MON
	waitsfx
	winlosstext ChampionsRoomGenesisWinText, 0
	setlasttalked CHAMPIONSROOM_GENESIS
	loadtrainer GENESIS, GENESIS1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	opentext
	cry GENESIS_MON
	writetext ChampionsRoomGenesisRoarText
	waitbutton
	closetext
	cry GENESIS_MON
	waitsfx
	writecode VAR_BATTLETYPE, BATTLETYPE_SUICUNE
	loadwildmon GENESIS_MON, 70
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	setevent EVENT_BEAT_GENESIS_PROJECT
	cry GENESIS_MON
	opentext
	writetext ChampionsRoomGenesisRoarText
	buttonsound
	waitsfx
	writebyte GENESIS_MON
	special PlaySlowCry
	writetext ChampionsRoomGenesisRoarText
	waitbutton
	closetext
	waitsfx
	playsound SFX_SHUT_DOWN_PC
	waitsfx
	pause 60
	moveobject CHAMPIONSROOM_JUNIPER, 7, 18
	playsound SFX_ENTER_DOOR
	appear CHAMPIONSROOM_JUNIPER
	waitsfx
	playmusic MUSIC_CHEREN_THEME
	turnobject PLAYER, DOWN
	pause 15
	applymovement CHAMPIONSROOM_JUNIPER, ChampionsRoomJuniperApproachMovement
	opentext
	writetext ChampionsRoomJustBeatGenesisText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	waitsfx
	applymovement PLAYER, ChampionsRoomPlayerAfterGenesisMovement
	applymovement CHAMPIONSROOM_JUNIPER, ChampionsRoomJuniperAfterGenesisMovement
	appear CHAMPIONSROOM_SHADOW_1
	applymovement CHAMPIONSROOM_SHADOW_1, ChampionsRoomShadowLeftApproachMovement
	playsound SFX_ENTER_DOOR
	appear CHAMPIONSROOM_SHADOW_2
	waitsfx
	applymovement CHAMPIONSROOM_SHADOW_2, ChampionsRoomShadowRightApproachMovement
	playsound SFX_ENTER_DOOR
	appear CHAMPIONSROOM_SHADOW_3
	waitsfx
	applymovement CHAMPIONSROOM_SHADOW_3, ChampionsRoomShadowApproachMovement
	opentext
	writetext ChampionsRoomShadowsDefeatedText
	waitbutton
	closetext
	playsound SFX_BOOT_PC
	special FadeOutPalettes
	appear CHAMPIONSROOM_GENESECT_1
	turnobject PLAYER, DOWN
	pause 5
	disappear CHAMPIONSROOM_GENESIS
	waitsfx
	pause 15
	special FadeInPalettes
	opentext
	writetext ChampionsRoomShadowsLeaveText
	waitbutton
	closetext
	playsound SFX_WARP_FROM
	applymovement CHAMPIONSROOM_SHADOW_1, ChampionsRoomTeleportOutMovement
	disappear CHAMPIONSROOM_SHADOW_1
	waitsfx
	playsound SFX_WARP_FROM
	applymovement CHAMPIONSROOM_SHADOW_2, ChampionsRoomTeleportOutMovement
	disappear CHAMPIONSROOM_SHADOW_2
	waitsfx
	playsound SFX_WARP_FROM
	applymovement CHAMPIONSROOM_SHADOW_3, ChampionsRoomTeleportOutMovement
	disappear CHAMPIONSROOM_SHADOW_3
	waitsfx
	turnobject PLAYER, RIGHT
	turnobject CHAMPIONSROOM_JUNIPER, LEFT
	opentext
	writetext ChampionsRoomJuniperHealText
	waitbutton
	closetext
	applymovement CHAMPIONSROOM_JUNIPER, ChampionsRoomStepLeftMovement
	special StubbedTrainerRankings_Healings
	playsound SFX_FULL_HEAL
	special HealParty
	opentext
	writetext ChampionsRoomFirstJuniperBattleIntroText
	waitbutton
	closetext
	setscene SCENE_START_JUNIPER_BATTLE
	jump StartChampionBattleScript
	
.JuniperFightScript:
	appear CHAMPIONSROOM_JUNIPER
	pause 15
	applymovement PLAYER, ChampionsRoomGoAroundGenesectMovement
	applymovement CHAMPIONSROOM_JUNIPER, ChampionsRoomJuniperApproachPlayerMovement
	opentext
	writetext ChampionsRoomJuniperBattleIntroText
	waitbutton
	closetext
	jump StartChampionBattleScript
	
.PostCreditsSceneScript:
	pause 60
	playsound SFX_BOOT_PC
	appear CHAMPIONSROOM_GENESECT_2
	turnobject CHAMPIONSROOM_GENESECT_2, DOWN
	pause 5
	disappear CHAMPIONSROOM_GENESECT_1
	waitsfx
	pause 60
	cry GENESECT
	waitsfx
	pause 60
	playsound SFX_WARP_TO
	applymovement CHAMPIONSROOM_GENESECT_2, ChampionsRoomGenesectLeaveMovement
	disappear CHAMPIONSROOM_GENESECT_2
	waitsfx
	pause 60
	special FadeOutPalettes
	pause 30
	returnfromcredits
	end
	
.ChampionBattleScript:
	disappear CHAMPIONSROOM_GENESECT_1
	disappear CHAMPIONSROOM_GENESECT_2
	appear CHAMPIONSROOM_JUNIPER
	pause 15
	applymovement PLAYER, ChampionsRoomPlayerApproachGenesisMovement
	opentext
	writetext ChampionsRoomJuniperBattleIntroText
	waitbutton
	closetext
	applymovement CHAMPIONSROOM_JUNIPER, ChampionsRoomStepDownMovement
	applymovement PLAYER, ChampionsRoomStepUpMovement
; fallthrough

StartChampionBattleScript:
	winlosstext ChampionsRoomJuniperWinText, 0
	setlasttalked CHAMPIONSROOM_JUNIPER
	checkevent EVENT_GOT_SNIVY
	iftrue .oshawott
	checkevent EVENT_GOT_TEPIG
	iftrue .snivy
; tepig
	loadtrainer JUNIPER, JUNIPER_TEPIG
	jump .start_battle
.snivy
	loadtrainer JUNIPER, JUNIPER_SNIVY
	jump .start_battle
.oshawott
	loadtrainer JUNIPER, JUNIPER_OSHAWOTT
.start_battle
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	setscene SCENE_START_CHAMPION_BATTLE
	opentext
	writetext ChampionsRoomBeatChampionText
	waitbutton
	closetext
	follow CHAMPIONSROOM_JUNIPER, PLAYER
	applymovement CHAMPIONSROOM_JUNIPER, ChampionsRoomJuniperLeaveMovement
	stopfollow
	playsound SFX_WARP_FROM
	applymovement CHAMPIONSROOM_JUNIPER, ChampionsRoomTeleportOutMovement
	disappear CHAMPIONSROOM_JUNIPER
	waitsfx
	applymovement PLAYER, ChampionsRoomStepUpMovement
	setmapscene HALL_OF_FAME, SCENE_DEFAULT
	warpcheck
	end
	
ChampionsRoomPlayerApproachGenesisMovement:
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end
	
ChampionsRoomGenesisApproachMovement:
	slow_step DOWN
	slow_step DOWN
	step_end
	
ChampionsRoomJuniperApproachMovement:
	step UP
	step UP
	step UP
	step UP
	step_end
	
ChampionsRoomPlayerAfterGenesisMovement:
	step LEFT
	step UP
	step UP
	turn_head DOWN
	step_end
	
ChampionsRoomJuniperAfterGenesisMovement:
	step RIGHT
	step UP
	step UP
	step UP
	turn_head DOWN
	step_end
	
ChampionsRoomShadowLeftApproachMovement:
	step UP
	step UP
	step UP
	step LEFT
	turn_head UP
	step_end
	
ChampionsRoomShadowRightApproachMovement:
	step UP
	step UP
	step UP
	step RIGHT
	turn_head UP
	step_end
	
ChampionsRoomShadowApproachMovement:
	step UP
	step UP
	step UP
	step_end
	
ChampionsRoomTeleportOutMovement:
	teleport_from
	step_end
	
ChampionsRoomStepLeftMovement:
	step LEFT
	step_end
	
ChampionsRoomJuniperLeaveMovement:
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end
	
ChampionsRoomStepUpMovement:
	step UP
	step_end
	
ChampionsRoomStepDownMovement:
	step DOWN
	step_end
	
ChampionsRoomGoAroundGenesectMovement:
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step LEFT
	step UP
	step UP
	turn_head RIGHT
	step_end
	
ChampionsRoomJuniperApproachPlayerMovement:
	step DOWN
	turn_head LEFT
	step_end
	
ChampionsRoomGenesectLeaveMovement:
	fix_facing
	set_sliding
	step UP
	step UP
	step UP
	step UP
	remove_fixed_facing
	remove_sliding
	step_end
	
ChampionsRoomGenesisWinText:
	text "..."
	done
	
ChampionsRoomGenesisRoarText:
	text "Graaahhh!"
	done

ChampionsRoomJustBeatGenesisText:
	text "JUNIPER: <PLAY_G>,"
	line "you've done it!"
	done

ChampionsRoomShadowsDefeatedText:
	text "SHADOW: N-no!"
	line "This can't be!"
	
	para "SHADOW: Our king"
	line "has been…"
	
	para "JUNIPER: Your"
	line "monster has been"
	
	para "stopped, thanks"
	line "to <PLAY_G>."
	
	para "SHADOW: …"
	
	para "It wasn't supposed"
	line "to be this way…"
	
	para "Lord GHETSIS was"
	line "supposed to lead"
	
	para "us… Be our king"
	line "again…"
	
	para "He was supposed to"
	line "claim his rightful"
	
	para "throne and usher"
	line "in a new era for"
	cont "TEAM PLASMA…"
	
	para "So why…?"
	
	para "Why did it turn"
	line "out this way?!"
	
	para "JUNIPER: That"
	line "thing is not your"
	
	para "king. It's a #-"
	line "MON that you've"
	
	para "turned into a"
	line "mindless tool of"
	cont "destruction."
	
	para "SHADOW: …"
	
	para "Perhaps…"
	
	para "Perhaps you are"
	line "right…"
	
	para "Perhaps it is the"
	line "case that we"
	cont "cannot…"
	
	para "Bring him back…"
	
	para "… … … …"
	
	para "Come, brothers."
	line "Let us…"
	cont "take him back…"
	done

ChampionsRoomShadowsLeaveText:
	text "SHADOW: We will"
	line "leave the MIND"
	
	para "LINK here with"
	line "you. We…"
	
	para "We have no need"
	line "for it anymore…"
	
	para "He…"
	
	para "He really isn't"
	line "coming back…"
	
	para "TEAM PLASMA truly"
	line "is finished now."
	
	para "Without our king"
	line "by our side,"

	para "there is no point"
	line "in going on…"
	
	para "Let us make our"
	line "final departure"
	cont "now, brothers."
	done

ChampionsRoomJuniperHealText:
	text "JUNIPER: Wow,"
	line "<PLAY_G>! You"
	cont "were excellent!"
	
	para "You've not only"
	line "defeated the ELITE"
	
	para "FOUR, you've also"
	line "stopped that thing"
	
	para "from wreaking"
	line "havok across"
	cont "UNOVA!"
	
	para "I knew from the"
	line "look in your eyes"
	
	para "when we first met"
	line "in FLOCCESY TOWN"
	
	para "that you were"
	line "going to be a"
	cont "great trainer."
	
	para "And now, there is"
	line "just one challenge"
	cont "left for you."
	
	para "But first, allow"
	line "me to heal your"
	cont "#MON."
	done

ChampionsRoomFirstJuniperBattleIntroText:
	text "Now then, <PLAY_G>."
	
	para "As CHAMPION of the"
	line "UNOVA region, I"
	
	para "AUREA JUNIPER,"
	line "accept your"
	cont "challenge!"
	done
	
ChampionsRoomJuniperBattleIntroText:
	text "You've done well"
	line "to make it back"
	cont "here, <PLAY_G>."
	
	para "Now as CHAMPION of"
	line "the UNOVA region,"
	
	para "I, AUREA JUNIPER,"
	line "accept your"
	cont "challenge!"
	done

ChampionsRoomJuniperWinText:
	text "After this battle,"
	line "a fresh wind has"
	
	para "blown through my"
	line "heart…"
	
	para "Today, you and"
	line "your partners are"
	cont "CHAMPIONS!"
	done

ChampionsRoomBeatChampionText:
	text "Well done,"
	line "<PLAY_G>!"
	
	para "You certainly are"
	line "an unmatched"
	cont "talent!"
	
	para "Please, come with"
	line "me."
	done
	
ChampionsRoom_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  7, 19, CHAMPIONS_ROOM_ENTRANCE, 1
	warp_event  7,  4, HALL_OF_FAME, 1

	db 0 ; coord events

	db 0 ; bg events

	db 7 ; object events
	object_event  7, 10, SPRITE_JUNIPER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, 0, EVENT_CHAMPIONS_ROOM_JUNIPER
	object_event  7, 16, SPRITE_SHADOW, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, 0, EVENT_CHAMPIONS_ROOM_SHADOWS
	object_event  7, 16, SPRITE_SHADOW, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, 0, EVENT_CHAMPIONS_ROOM_SHADOWS
	object_event  7, 16, SPRITE_SHADOW, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, 0, EVENT_CHAMPIONS_ROOM_SHADOWS
	object_event  7, 12, SPRITE_GENESECT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_SCRIPT, 0, 0, EVENT_CHAMPIONS_ROOM_GENESECT_2
	object_event  7, 12, SPRITE_GENESECT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_SCRIPT, 0, 0, EVENT_CHAMPIONS_ROOM_GENESECT_1
	object_event  7, 10, SPRITE_GENESIS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, 0, EVENT_CHAMPIONS_ROOM_GENESIS
	