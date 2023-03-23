	const_def 2 ; object constants
	const DRAGONSPIRALTOWERROOF_DRAYDEN
	const DRAGONSPIRALTOWERROOF_ZINZOLIN
	const DRAGONSPIRALTOWERROOF_JUNIPER
	const DRAGONSPIRALTOWERROOF_SHADOW_1
	const DRAGONSPIRALTOWERROOF_SHADOW_2
	const DRAGONSPIRALTOWERROOF_SHADOW_3
	const DRAGONSPIRALTOWERROOF_GENESECT_1
	const DRAGONSPIRALTOWERROOF_GENESECT_2

DragonspiralTowerRoof_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	db 0 ; callbacks

.DummyScene0:
	end

.DummyScene1:
	end
	
DragonspiralTowerRoofScript1:
	applymovement PLAYER, DragonspiralTowerRoofArriveMovement1
	jump DragonspiralTowerRoofScript
	
DragonspiralTowerRoofScript2:
	applymovement PLAYER, DragonspiralTowerRoofArriveMovement2
	; fallthrough
	
DragonspiralTowerRoofScript:
	special FadeOutMusic
	pause 15
	playmusic MUSIC_ROCKET_ENCOUNTER
	opentext 
	writetext DragonspiralTowerRoofIntroText
	waitbutton
	closetext
	applymovement DRAGONSPIRALTOWERROOF_ZINZOLIN, DragonspiralTowerRoofStepUpMovement
	special FadeOutMusic
	pause 15
	playsound SFX_SHINE
	waitsfx
	pause 15
	playsound SFX_SHINE
	waitsfx
	pause 30
	playsound SFX_BOOT_PC
	special FadeOutPalettes
	appear DRAGONSPIRALTOWERROOF_GENESECT_2
	turnobject PLAYER, UP
	pause 5
	disappear DRAGONSPIRALTOWERROOF_GENESECT_1
	waitsfx
	special LoadMapPalettes
	special FadeInQuickly
	pause 30
	opentext
	writetext DragonspiralTowerRoofCryText
	cry GENESECT
	waitbutton
	closetext
	pause 15
	playmusic MUSIC_ROCKET_ENCOUNTER
	turnobject DRAGONSPIRALTOWERROOF_ZINZOLIN, DOWN
	opentext
	writetext DragonspiralTowerRoofPoweredOnText
	waitbutton
	closetext
	playsound SFX_WARP_TO
	appear DRAGONSPIRALTOWERROOF_SHADOW_2
	applymovement DRAGONSPIRALTOWERROOF_SHADOW_2, DragonspiralTowerRoofTeleportInMovement
	playsound SFX_WARP_TO
	appear DRAGONSPIRALTOWERROOF_SHADOW_3
	applymovement DRAGONSPIRALTOWERROOF_SHADOW_3, DragonspiralTowerRoofTeleportInMovement
	playsound SFX_WARP_TO
	appear DRAGONSPIRALTOWERROOF_JUNIPER
	applymovement DRAGONSPIRALTOWERROOF_JUNIPER, DragonspiralTowerRoofTeleportInMovement
	pause 30
	showemote EMOTE_SHOCK, DRAGONSPIRALTOWERROOF_DRAYDEN, 10
	opentext
	writetext DragonspiralTowerRoofJuniperRevealText
	waitbutton
	closetext
	applymovement DRAGONSPIRALTOWERROOF_DRAYDEN, DragonspiralTowerRoofDraydenApproachMovement
	pause 30
	follow DRAGONSPIRALTOWERROOF_DRAYDEN, DRAGONSPIRALTOWERROOF_JUNIPER
	applymovement DRAGONSPIRALTOWERROOF_DRAYDEN, DragonspiralTowerRoofDraydenRetreatMovement
	stopfollow
	turnobject DRAGONSPIRALTOWERROOF_DRAYDEN, UP
	turnobject DRAGONSPIRALTOWERROOF_JUNIPER, UP
	opentext
	writetext DragonspiralTowerRoofTimeForBattleText
	waitbutton
	closetext
	applymovement DRAGONSPIRALTOWERROOF_ZINZOLIN, DragonspiralTowerRoofStepDownMovement
	opentext
	writetext DragonspiralTowerRoofStartBattleText
	waitbutton
	closetext
	winlosstext DragonspiralTowerRoofBattleWinText, 0
	setlasttalked DRAGONSPIRALTOWERROOF_ZINZOLIN
	loadtrainer ZINZOLIN, ZINZOLIN2
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_ROCKET_ENCOUNTER
	pause 15
	opentext
	writetext DragonspiralTowerRoofAfterBattleText
	waitbutton
	turnobject DRAGONSPIRALTOWERROOF_SHADOW_1, RIGHT
	turnobject DRAGONSPIRALTOWERROOF_SHADOW_2, RIGHT
	turnobject DRAGONSPIRALTOWERROOF_SHADOW_3, RIGHT
	turnobject DRAGONSPIRALTOWERROOF_ZINZOLIN, LEFT
	writetext DragonspiralTowerRoofBetrayalRevealText
	waitbutton
	closetext
	applymovement DRAGONSPIRALTOWERROOF_SHADOW_3, DragonspiralTowerRoofShadow3Movement
	turnobject DRAGONSPIRALTOWERROOF_ZINZOLIN, UP
	applymovement DRAGONSPIRALTOWERROOF_SHADOW_2, DragonspiralTowerRoofShadow2Movement
	applymovement DRAGONSPIRALTOWERROOF_SHADOW_1, DragonspiralTowerRoofShadow1Movement
	opentext
	writetext DragonspiralTowerRoofShadowBetrayalText
	waitbutton
	closetext
	special FadeOutMusic
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	pause 15
	playsound SFX_ESCAPE_ROPE
	waitsfx
	disappear DRAGONSPIRALTOWERROOF_SHADOW_1
	disappear DRAGONSPIRALTOWERROOF_SHADOW_2
	disappear DRAGONSPIRALTOWERROOF_SHADOW_3
	disappear DRAGONSPIRALTOWERROOF_GENESECT_2
	pause 15
	special FadeInQuickly
	playmapmusic
	pause 15
	opentext
	writetext DragonspiralTowerRoofZinzolinFreakoutText
	waitbutton
	closetext
	applymovement DRAGONSPIRALTOWERROOF_ZINZOLIN, DragonspiralTowerRoofZinzolinLeaveMovement
	disappear DRAGONSPIRALTOWERROOF_ZINZOLIN
	pause 30
	applymovement PLAYER, DragonspiralTowerRoofStepDown2Movement
	turnobject DRAGONSPIRALTOWERROOF_JUNIPER, RIGHT
	turnobject DRAGONSPIRALTOWERROOF_DRAYDEN, RIGHT
	opentext
	writetext DragonspiralTowerRoofJuniperThanksText
	waitbutton
	closetext
	playsound SFX_WARP_TO
	applymovement DRAGONSPIRALTOWERROOF_JUNIPER, DragonspiralTowerRoofTeleportOutMovement
	disappear DRAGONSPIRALTOWERROOF_JUNIPER
	turnobject PLAYER, LEFT
	opentext
	writetext DragonspiralTowerRoofDraydenThanksText
	buttonsound
	verbosegiveitem DRAGON_FANG
	iffalse .no_room
	setevent EVENT_GOT_DRAGON_FANG
	jump .got_item
.no_room
	writetext DragonspiralTowerRoofDraydenNoRoomText
	buttonsound
	clearevent EVENT_DRAYDENS_HOUSE_DRAGON_FANG
.got_item
	writetext DragonspiralTowerRoofDraydenLeaveText
	waitbutton
	closetext
	playsound SFX_WARP_TO
	applymovement DRAGONSPIRALTOWERROOF_DRAYDEN, DragonspiralTowerRoofTeleportOutMovement
	disappear DRAGONSPIRALTOWERROOF_DRAYDEN
	setevent EVENT_DRAGONSPIRAL_TOWER_SAGES
	setevent EVENT_FINISHED_DRAGONSPIRAL_TOWER
	setevent EVENT_OPELUCID_CITY_IRIS
	clearevent EVENT_DRAYDENS_HOUSE_IRIS
	setscene SCENE_FINISHED
	end
	
DragonspiralTowerRoofArriveMovement1:
	step UP
	step RIGHT
	step UP
	step UP
	step_end
	
DragonspiralTowerRoofArriveMovement2:
	step UP
	step UP
	step UP
	step_end
	
DragonspiralTowerRoofDraydenApproachMovement:
	big_step LEFT
	big_step UP
	big_step UP
	big_step UP
	step_end
	
DragonspiralTowerRoofDraydenRetreatMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step_end
	
DragonspiralTowerRoofShadow1Movement:
	step UP
	step UP
	step UP
	turn_head DOWN
	step_end
	
DragonspiralTowerRoofShadow2Movement:
	step UP
	step RIGHT
	step RIGHT
	step UP
	step RIGHT
	turn_head DOWN
	step_end
	
DragonspiralTowerRoofShadow3Movement:
	step UP
	step UP
	step RIGHT
	step RIGHT
	step DOWN
	step_end
	
DragonspiralTowerRoofZinzolinLeaveMovement:
	big_step RIGHT
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step LEFT
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
	step_end
	
DragonspiralTowerRoofDraydenAfterMovement:
	step UP
	turn_head RIGHT
	step_end
	
DragonspiralTowerRoofStepUpMovement:
	step UP
	step_end
	
DragonspiralTowerRoofStepDownMovement:
	step DOWN
	step_end
	
DragonspiralTowerRoofTeleportInMovement:
	teleport_to
	step_end
	
DragonspiralTowerRoofTeleportOutMovement:
	teleport_from
	step_end
	
DragonspiralTowerRoofStepDown2Movement:
	step DOWN
	step DOWN
	turn_head LEFT
	step_end
	
DragonspiralTowerRoofIntroText:
	text "ZINZOLIN: So,"
	line "you've come to"
	cont "try to stop me?"
	
	para "Ha! Once again,"
	line "you're too late!"
	
	para "While you were"
	line "busy dealing with"
	
	para "my SAGEs, I've"
	line "extracted the ICE"
	
	para "ELEMENT from atop"
	line "this tower. Now,"
	
	para "with the ELEMENTS"
	line "of FIRE, WATER,"
	
	para "THUNDER, and ICE,"
	line "TEAM PLASMA's"
	
	para "ultimate weapon"
	line "will be unstopp-"
	cont "able!"
	done
	
DragonspiralTowerRoofPoweredOnText:
	text "ZINZOLIN: That's"
	line "right! What you're"
	
	para "looking at is the"
	line "end result of TEAM"
	
	para "PLASMA's efforts"
	line "to create the"
	cont "ultimate #MON!"
	
	para "Behold, the"
	line "GENESIS PROJECT!"
	
	para "The foolish boy"
	line "king tried to have"
	
	para "the project shut"
	line "down, but it was"
	
	para "continued in"
	line "secret. And now,"
	
	para "we will use its"
	line "power to conquer"
	cont "UNOVA!"
	
	para "It just needs one"
	line "more final touch."
	
	para "SHADOWs! To me!"
	done
	
DragonspiralTowerRoofJuniperRevealText:
	text "DRAYDEN: PROF."
	line "JUNIPER!"
	
	para "JUNIPER: …huh?"
	line "Wha… What's"
	cont "happening…?"
	
	para "What am I doing"
	line "here?"
	
	para "ZINZOLIN: Mwa ha"
	line "ha! Thanks to the"
	
	para "PROF here, I was"
	line "finally able to"
	
	para "get my hands on"
	line "the one piece"
	
	para "missing for my"
	line "plan: the MIND"
	cont "LINK!"
	
	para "JUNIPER: Wha…?"
	
	para "ZINZOLIN: It"
	line "may have taken the"
	
	para "power of two of my"
	line "SHADOWs to influ-"
	cont "ence her mind, but"
	
	para "with our dear"
	line "PROF. under my"
	
	para "control, taking"
	line "the MIND LINK from"
	
	para "the #MON LEAGUE"
	line "was no problem at"
	cont "all!"
	
	para "DRAYDEN: You- You"
	line "villains!"
	done
	
DragonspiralTowerRoofTimeForBattleText:
	text "JUNIPER: Ah… I'm"
	line "sorry. I wasn't"
	cont "myself…"
	
	para "ZINZOLIN: A-ha-ha!"
	line "It's too late!"
	
	para "You've already"
	line "given me every-"
	cont "thing I need!"
	
	para "Now, before I put"
	line "the finishing"
	
	para "touches on my"
	line "plan, there's just"
	
	para "one more thing to"
	line "take care of."
	done
	
DragonspiralTowerRoofStartBattleText:
	text "You will not stand"
	line "in my way any"
	
	para "longer! Prepare to"
	line "feel the freezing"
	
	para "vengeance of TEAM"
	line "PLASMA!"
	done
	
DragonspiralTowerRoofBattleWinText:
	text "I- Impossible!"
	done
	
DragonspiralTowerRoofAfterBattleText:
	text "ZINZOLIN: …It"
	line "matters not. With"
	
	para "the GENESIS"
	line "PROJECT under my"
	
	para "control, I am"
	line "unstoppable!"
	done
	
DragonspiralTowerRoofBetrayalRevealText:
	text "Come SHADOWs! Let"
	line "us prepare the"
	
	para "final stages of"
	line "my plan!"
	
	para "I will use the"
	line "GENESIS PROJECT to"
	
	para "become the ruler"
	line "of UNOVA!"
	
	para "SHADOW: …How"
	line "amusing."
	
	para "ZINZOLIN: Wha…?"
	
	para "SHADOW: You truly"
	line "believe you were"
	
	para "to become a ruler?"
	
	para "SHADOW: How sad…"
	done
	
DragonspiralTowerRoofShadowBetrayalText:
	text "ZINZOLIN: Wha-"
	line "What are you"
	
	para "doing?! Stop this"
	line "at once! Your"
	cont "king demands it!"
	
	para "SHADOW: You fool…"
	
	para "SHADOW: We only"
	line "serve one king."
	
	para "SHADOW: The one"
	line "true king of TEAM"
	cont "PLASMA."
	
	para "SHADOW: The great"
	line "and mighty"
	cont "GHETSIS!"
	
	para "ZINZOLIN: What?!"
	line "GHETSIS?! GHETSIS"
	cont "is gone! He's lost"
	
	para "his mind! That's"
	line "why I'm the king"
	cont "now!"
	
	para "SHADOW: You're"
	line "wrong! GHETSIS"
	
	para "will return to"
	line "take his rightful"
	
	para "place as the ruler"
	line "of TEAM PLASMA."
	
	para "SHADOW: And you"
	line "were but a pawn in"
	cont "our plan."
	
	para "SHADOW: We must"
	line "thank you for"
	
	para "finding the"
	line "GENESIS PROJECT,"
	
	para "and collecting the"
	line "ELEMENTs needed to"
	cont "restore its power."
	
	para "SHADOW: Thanks to"
	line "you and the other"
	
	para "SAGEs, we were"
	line "able to override"
	
	para "the security lock"
	line "to activate the"
	cont "MIND LINK."
	
	para "SHADOW: How"
	line "convenient that"
	
	para "ROOD had a grand-"
	line "daughter who could"
	
	para "unlock his part of"
	line "the seal…"
	
	para "SHADOW: But though"
	line "you've been of"
	
	para "use, now that we"
	line "have the MIND LINK"
	
	para "and the GENESIS"
	line "PROJECT, you are"
	
	para "no longer of use"
	line "to us…"
	
	para "SHADOW: Farewell…"
	
	para "ZINZOLIN: No! You"
	line "can't do this to"
	
	para "me! I am your"
	line "king!"
	done
	
DragonspiralTowerRoofZinzolinFreakoutText:
	text "ZINZOLIN: This…"
	line "This is not"
	cont "possible!"
	
	para "I am the king of"
	line "TEAM PLASMA!!"
	
	para "… … … …"
	
	para "I… I think I'd"
	line "better get out of"
	cont "here…"
	done
	
DragonspiralTowerRoofJuniperThanksText:
	text "JUNIPER: <PLAY_G>!"
	
	para "That was quite a"
	line "battle! I'm"
	cont "impressed!"
	
	para "Thank you for your"
	line "help. I… I'm not"
	
	para "truly sure what"
	line "happened to me…"
	
	para "My memories have"
	line "been hazy ever"
	
	para "since the WORLD"
	line "TOURNAMENT."
	
	para "But if I've been"
	line "used for those"
	cont "SHADOWs' plan…"
	
	para "Then I'm going to"
	line "put a stop to it!"
	
	para "Safe travels,"
	line "<PLAY_G>."
	done
	
DragonspiralTowerRoofDraydenThanksText:
	text "DRAYDEN: Thank you"
	line "for your help,"
	cont "<PLAY_G>."
	
	para "You handled your-"
	line "self quite well."
	
	para "I look forward to"
	line "challenging you in"
	cont "my GYM."
	
	para "But before I go,"
	line "I'd like you to"
	cont "have this."
	done
	
DragonspiralTowerRoofDraydenNoRoomText:
	text "Oh, it seems you"
	line "don't have room"
	cont "for it."
	
	para "I will leave it"
	line "for you in my"
	
	para "house in OPELUCID"
	line "CITY. Stop by and"
	
	para "pick it up at your"
	line "convenience."
	done
	
DragonspiralTowerRoofDraydenLeaveText:
	text "I'm going back to"
	line "my GYM in OPELUCID"
	cont "CITY now."
	
	para "Stop by if you'd"
	line "like to challenge"
	
	para "me. I'll be"
	line "I'll be looking"
	cont "forward to it."
	done
	
DragonspiralTowerRoofCryText:
	text "SEEEEEECT!"
	done

DragonspiralTowerRoof_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  6, 16, DRAGONSPIRAL_TOWER_6F, 3
	warp_event  6, 17, DRAGONSPIRAL_TOWER_6F, 4

	db 2 ; coord events
	coord_event  8, 14, SCENE_DEFAULT, DragonspiralTowerRoofScript1
	coord_event  9, 14, SCENE_DEFAULT, DragonspiralTowerRoofScript2

	db 0 ; bg events
	
	db 8 ; object events
	object_event  8, 12, SPRITE_DRAYDEN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, 0, EVENT_DRAGONSPIRAL_TOWER_ROOF_DRAYDEN
	object_event  9, 10, SPRITE_PZMA_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, 0, EVENT_DRAGONSPIRAL_TOWER_ROOF_ZINZOLIN
	object_event  7,  8, SPRITE_JUNIPER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, 0, EVENT_DRAGONSPIRAL_TOWER_ROOF_JUNIPER
	object_event  8, 11, SPRITE_SHADOW, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, 0, EVENT_DRAGONSPIRAL_TOWER_ROOF_SHADOW_1
	object_event  6,  9, SPRITE_SHADOW, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, 0, EVENT_DRAGONSPIRAL_TOWER_ROOF_SHADOW_2
	object_event  8,  9, SPRITE_SHADOW, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, 0, EVENT_DRAGONSPIRAL_TOWER_ROOF_SHADOW_2
	object_event  9,  8, SPRITE_GENESECT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_SCRIPT, 0, 0, EVENT_DRAGONSPIRAL_TOWER_ROOF_GENESECT_1
	object_event  9,  8, SPRITE_GENESECT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_SCRIPT, 0, 0, EVENT_DRAGONSPIRAL_TOWER_ROOF_GENESECT_2
	