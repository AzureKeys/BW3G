	const_def 2 ; object constants
	const DRAGONSPIRALTOWER6F_MAX_ELIXER
	const DRAGONSPIRALTOWER6F_INFER

DragonspiralTower6F_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	db 1 ; callbacks
	callback MAPCALLBACK_OBJECTS, .AppearRoofObjects

.DummyScene0:
	end

.DummyScene1:
	end
	
.AppearRoofObjects: ; Reset the objects on the Roof if we lost to Zinzolin
	checkmapscene DRAGONSPIRAL_TOWER_ROOF
	ifequal SCENE_FINISHED, .done
	setevent EVENT_DRAGONSPIRAL_TOWER_ROOF_JUNIPER
	setevent EVENT_DRAGONSPIRAL_TOWER_ROOF_SHADOW_2
	setevent EVENT_DRAGONSPIRAL_TOWER_ROOF_GENESECT_2
	clearevent EVENT_DRAGONSPIRAL_TOWER_ROOF_GENESECT_1
.done
	return
	
DragonspiralTowerInferScript1:
	moveobject DRAGONSPIRALTOWER6F_INFER, 2, 8
	; fallthrough
DragonspiralTowerInferScript2:
	special FadeOutMusic
	pause 15
	opentext
	writetext DragonspiralTower6FInferIntroText
	waitbutton
	closetext
	turnobject PLAYER, UP
	appear DRAGONSPIRALTOWER6F_INFER
	playmusic MUSIC_RIVAL_ENCOUNTER
	applymovement DRAGONSPIRALTOWER6F_INFER, DragonspiralTower6FInferApproachMovement
	opentext
	writetext DragonspiralTower6FInferSpeechText
	waitbutton
	closetext
	setevent EVENT_DRAGONSPIRAL_TOWER_6F_INFER
	checkevent EVENT_GOT_OSHAWOTT
	iftrue .Oshawott
	checkevent EVENT_GOT_SNIVY
	iftrue .Snivy
; Tepig
	winlosstext DragonspiralTower6FInferWinText, 0
	setlasttalked DRAGONSPIRALTOWER6F_INFER
	loadtrainer INFER_SAGE, INFER_SAGE_OSHAWOTT
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	jump .AfterBattle
	
.Oshawott:
	winlosstext DragonspiralTower6FInferWinText, 0
	setlasttalked DRAGONSPIRALTOWER6F_INFER
	loadtrainer INFER_SAGE, INFER_SAGE_SNIVY
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	jump .AfterBattle
	
.Snivy:
	winlosstext DragonspiralTower6FInferWinText, 0
	setlasttalked DRAGONSPIRALTOWER6F_INFER
	loadtrainer INFER_SAGE, INFER_SAGE_TEPIG
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	; fallthrough
	
.AfterBattle:
	playmusic MUSIC_RIVAL_ENCOUNTER
	pause 15
	applymovement DRAGONSPIRALTOWER6F_INFER, DragonspiralTower6FInferBackUpMovement
	opentext
	writetext DragonspiralTower6FInferAfterBattleText
	waitbutton
	closetext
	applymovement DRAGONSPIRALTOWER6F_INFER, DragonspiralTower6FInferLeaveMovement
	disappear DRAGONSPIRALTOWER6F_INFER
	special FadeOutMusic
	pause 30
	playmapmusic
	setscene SCENE_FINISHED
	end
	
DragonspiralMaxElixer:
	itemball MAX_ELIXER
	
DragonspiralRedShard:
	hiddenitem RED_SHARD, EVENT_DRAGONSPIRAL_RED_SHARD
	
DragonspiralBlueShard:
	hiddenitem BLUE_SHARD, EVENT_DRAGONSPIRAL_BLUE_SHARD
	
DragonspiralYellowShard:
	hiddenitem YELLOW_SHARD, EVENT_DRAGONSPIRAL_YELLOW_SHARD
	
DragonspiralGreenShard:
	hiddenitem GREEN_SHARD, EVENT_DRAGONSPIRAL_GREEN_SHARD
	
DragonspiralTower6FInferApproachMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end
	
DragonspiralTower6FInferBackUpMovement:
	fix_facing
	slow_step UP
	remove_fixed_facing
	step_end
	
DragonspiralTower6FInferLeaveMovement:
	big_step UP
	big_step UP
	big_step UP
	step_end
	
DragonspiralTower6FInferIntroText:
	text "Hey!!!"
	line "Hold it right"
	cont "there!"
	done
	
DragonspiralTower6FInferSpeechText:
	text "Don't you take"
	line "another step! You"
	
	para "may have beaten"
	line "the other sages,"
	
	para "but I'm not"
	line "letting you past"
	cont "here."
	
	para "What? Are you"
	line "surprised to see"
	cont "me here?"
	
	para "Huh? My Grandpa?"
	line "He told you to"
	
	para "save me from TEAM"
	line "PLASMA? Ha!"
	
	para "I don't need"
	line "saving from"
	cont "anyone!"
	
	para "My Grandpa's an"
	line "idiot. He always"
	
	para "treated me like"
	line "some helpless kid."
	
	para "He refused to even"
	line "acknowledge my"
	
	para "skill. He wouldn't"
	line "even let me try…"
	
	para "But TEAM PLASMA"
	line "recognized my"
	
	para "potential. They"
	line "said they would"
	
	para "train me to be a"
	line "powerful #MON"
	
	para "trainer. And now,"
	line "thanks to that"
	
	para "training, I've"
	line "become strong"
	
	para "enough to become a"
	line "SAGE of TEAM"
	cont "PLASMA!"
	
	para "…you say he's"
	line "worried that TEAM"
	
	para "PLASMA's just"
	line "using me?"
	
	para "…sorry, but I"
	line "don't really care"
	cont "if they are."
	
	para "Because I'm just"
	line "using them."
	
	para "I don't care what"
	line "ZINZOLIN's big"
	
	para "scheme is, I only"
	line "joined TEAM PLASMA"
	cont "to become strong."
	
	para "I'm going to"
	line "become the most"
	
	para "powerful trainer"
	line "in all of UNOVA!"
	
	para "I'll be the"
	line "greatest #MON"
	
	para "trainer in all"
	line "the world!"
	
	para "And now, there's"
	line "just one obstacle"
	cont "left in my way…"
	
	para "Right here, right"
	line "now, I'm finally"
	cont "going to beat you!"
	
	para "Come on!!!"
	done
	
DragonspiralTower6FInferWinText:
	text "N-no! This is"
	line "impossible!"
	done
	
DragonspiralTower6FInferAfterBattleText:
	text "H-how…?"
	line "I did everything"
	
	para "right. I trained"
	line "up a great team…"
	
	para "I became a SAGE of"
	line "TEAM PLASMA…"
	
	para "Why, then…"
	
	para "Why can't I beat"
	line "you?!"
	
	para "What do you have"
	line "that I don't?!"
	
	para "…I-"
	
	para "Aaaargh!!!"
	done

DragonspiralTower6F_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  9, 17, DRAGONSPIRAL_TOWER_5F, 3
	warp_event  9, 16, DRAGONSPIRAL_TOWER_5F, 4
	warp_event  3, 16, DRAGONSPIRAL_TOWER_ROOF, 1
	warp_event  3, 17, DRAGONSPIRAL_TOWER_ROOF, 2

	db 2 ; coord events
	coord_event  2, 13, SCENE_DEFAULT, DragonspiralTowerInferScript1
	coord_event  3, 13, SCENE_DEFAULT, DragonspiralTowerInferScript2

	db 4 ; bg events
	bg_event 10, 12, BGEVENT_ITEM, DragonspiralRedShard
	bg_event 15, 10, BGEVENT_ITEM, DragonspiralBlueShard
	bg_event 10,  8, BGEVENT_ITEM, DragonspiralYellowShard
	bg_event 15,  6, BGEVENT_ITEM, DragonspiralGreenShard
	
	db 2 ; object events
	object_event 12,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DragonspiralMaxElixer, EVENT_DRAGONSPIRAL_MAX_ELIXER
	object_event  3,  8, SPRITE_INFER_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, 0, EVENT_DRAGONSPIRAL_TOWER_6F_INFER
	