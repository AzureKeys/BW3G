	const_def 2 ; object constants
	const NIMBASAPARKOUTSIDE_X_ACCURACY
	const NIMBASAPARKOUTSIDE_ICE_HEAL
	const NIMBASAPARKOUTSIDE_QUICK_BALL
	const NIMBASAPARKOUTSIDE_BLOCKER
	const NIMBASAPARKOUTSIDE_CHEREN
	const NIMBASAPARKOUTSIDE_NATE
	const NIMBASAPARKOUTSIDE_ROSA

NimbasaParkOutside_MapScripts:
	db 4 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .CherenScene ; SCENE_NIMBASA_PARK_OUTSIDE_CHEREN
	scene_script .AfterScene ; SCENE_NIMBASA_PARK_OUTSIDE_AFTER
	scene_script .DummyScene3 ; SCENE_NIMBASA_PARK_OUTSIDE_NOTHING

	db 1 ; callbacks
	callback MAPCALLBACK_OBJECTS, .NateRosa

.DummyScene0:
	end

.CherenScene:
	priorityjump .CherenConfrontation
	end

.AfterScene:
	priorityjump .BeatenNimbasaParkScene
	end

.DummyScene3:
	end
	
.NateRosa:
	checkevent EVENT_NATE_ROSA_READY_FOR_BATTLE
	iffalse .Disappear
	checkevent EVENT_BEAT_NATE_ROSA
	iffalse .AppearNateRosa
	checkcode VAR_WEEKDAY
	ifnotequal SATURDAY, .Disappear
	checkflag ENGINE_NATE_ROSA
	iftrue .Disappear
	
.AppearNateRosa
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Rosa
	disappear NIMBASAPARKOUTSIDE_ROSA
	appear NIMBASAPARKOUTSIDE_NATE
	jump .Done
.Rosa
	disappear NIMBASAPARKOUTSIDE_NATE
	appear NIMBASAPARKOUTSIDE_ROSA
	jump .Done
	
.Disappear
	disappear NIMBASAPARKOUTSIDE_NATE
	disappear NIMBASAPARKOUTSIDE_ROSA
.Done
	return
	
.CherenConfrontation:
	playmusic MUSIC_ROCKET_ENCOUNTER
	applymovement PLAYER, NimbasaParkConfrontationPlayerMovement
	opentext
	writetext NimbasaParkOutsideGruntText
	waitbutton
	closetext
	applymovement NIMBASAPARKOUTSIDE_BLOCKER, NimbasaParkConfrontationGruntMovement
	disappear NIMBASAPARKOUTSIDE_BLOCKER
	special FadeOutMusic
	pause 15
	playmusic MUSIC_NIMBASA_CITY
	turnobject NIMBASAPARKOUTSIDE_CHEREN, LEFT
	opentext
	writetext NimbasaParkOutsideCherenText
	waitbutton
	closetext
	applymovement NIMBASAPARKOUTSIDE_CHEREN, NimbasaParkConfrontationGruntMovement
	disappear NIMBASAPARKOUTSIDE_CHEREN
	setscene SCENE_NIMBASA_PARK_OUTSIDE_NOTHING
	end
	
.BeatenNimbasaParkScene:
	special FadeOutMusic
	pause 15
	playmusic MUSIC_CHEREN_THEME
	turnobject PLAYER, LEFT
	moveobject NIMBASAPARKOUTSIDE_CHEREN, 40, 8
	appear NIMBASAPARKOUTSIDE_CHEREN
	opentext
	writetext NimbasaParkAfterCherenText1
	buttonsound
	verbosegiveitem PASS
	writetext NimbasaParkAfterCherenText2
	waitbutton
	closetext
	applymovement NIMBASAPARKOUTSIDE_CHEREN, NimbasaParkAfterCherenMovement2
	disappear NIMBASAPARKOUTSIDE_CHEREN
	setscene SCENE_NIMBASA_PARK_OUTSIDE_NOTHING
	special FadeOutMusic
	pause 15
	playmusic MUSIC_NIMBASA_CITY
	playmapmusic
	end
	
NimbasaParkBlockerScript:
	applymovement NIMBASAPARKOUTSIDE_BLOCKER, NimbasaParkBlockerMovement1
	turnobject NIMBASAPARKOUTSIDE_BLOCKER, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext NimbasaParkOutsideBlockerText
	waitbutton
	closetext
	applymovement NIMBASAPARKOUTSIDE_BLOCKER, NimbasaParkBlockerMovement2
	turnobject NIMBASAPARKOUTSIDE_BLOCKER, LEFT
	applymovement PLAYER, NimbasaParkBlockedMovement
	end
	
NimbasaParkOutsideNateRosaScript:
	faceplayer
	opentext
	writetext NimbasaParkOutsideNateRosaText
	waitbutton
	closetext
	winlosstext NateRosaWinText, 0
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Rosa
; Nate
	checkevent EVENT_GOT_SNIVY
	iftrue .NateOshawott
	checkevent EVENT_GOT_TEPIG
	iftrue .NateSnivy
; NateTepig
	loadtrainer NATE, NATE_TEPIG
	jump .BattleStart
.NateOshawott
	loadtrainer NATE, NATE_OSHAWOTT
	jump .BattleStart
.NateSnivy
	loadtrainer NATE, NATE_SNIVY
	jump .BattleStart
	
.Rosa
	checkevent EVENT_GOT_SNIVY
	iftrue .RosaOshawott
	checkevent EVENT_GOT_TEPIG
	iftrue .RosaSnivy
; RosaTepig
	loadtrainer ROSA, ROSA_TEPIG
	jump .BattleStart
.RosaOshawott
	loadtrainer ROSA, ROSA_OSHAWOTT
	jump .BattleStart
.RosaSnivy
	loadtrainer ROSA, ROSA_SNIVY
; fallthrough
.BattleStart
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_NATE_ROSA
	setflag ENGINE_NATE_ROSA
	opentext
	writetext NimbasaParkOutsideNateRosaText
	waitbutton
	closetext
	special FadeOutMusic
	special FadeBlackQuickly
	pause 15
	playsound SFX_ESCAPE_ROPE
	waitsfx
	disappear NIMBASAPARKOUTSIDE_NATE
	disappear NIMBASAPARKOUTSIDE_ROSA
	pause 15
	special FadeInQuickly
	playmusic MUSIC_NIMBASA_CITY
	end
	
NimbasaParkOutsideBlocker:
	jumptextfaceplayer NimbasaParkOutsideBlockerText
	
NimbasaParkOutsideXAccuracy:
	itemball X_ACCURACY
	
NimbasaParkOutsideIceHeal:
	itemball ICE_HEAL
	
NimbasaParkOutsideQuickBall:
	itemball QUICK_BALL
	
NimbasaParkOutsideFullHeal:
	hiddenitem FULL_HEAL, EVENT_NIMBASA_PARK_OUTSIDE_FULL_HEAL
	
NimbasaParkBlockerMovement1:
	big_step DOWN
	step_end
	
NimbasaParkBlockerMovement2:
	step UP
	step_end
	
NimbasaParkBlockedMovement:
	step LEFT
	step_end
	
NimbasaParkConfrontationPlayerMovement:
	step RIGHT
	step RIGHT
	step_end
	
NimbasaParkConfrontationGruntMovement:
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	step_end
	
NimbasaParkAfterCherenMovement1:
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step DOWN
	big_step DOWN
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step UP
	big_step UP
	turn_head RIGHT
	step_end
	
NimbasaParkAfterCherenMovement2:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end
	
NimbasaParkOutsideBlockerText:
	text "Hey! Don't you"
	line "know the PARK's"
	cont "dangerous?"
	
	para "Go on, get out"
	line "of here!"
	done
	
NimbasaParkOutsideGruntText:
	text "Shoot! I can't"
	line "beat you. I'd"
	
	para "better go warn"
	line "the others!"
	done
	
NimbasaParkOutsideCherenText:
	text "CHEREN: Just as I"
	line "thought, TEAM"
	
	para "PLASMA's been"
	line "hiding out here."
	
	para "I'll go check out"
	line "the runway on the"
	cont "right side, you"
	
	para "can investigate"
	line "the coaster room."
	
	para "Good luck,"
	line "<PLAY_G>."
	done
	
NimbasaParkAfterCherenText1:
	text "CHEREN: Thanks"
	line "for your help,"
	cont "<PLAY_G>."
	
	para "TEAM PLASMA are"
	line "definitely up to"
	cont "something big…"
	
	para "I'm going to take"
	line "the SUBWAY back"
	cont "home, to ASPERTIA"
	cont "CITY."
	
	para "Here, take this"
	line "and you can take"
	cont "the SUBWAY in"
	cont "NIMBASA CITY too."
	done
	
NimbasaParkAfterCherenText2:
	text "I'll let you know"
	line "if I discover any"
	cont "more TEAM PLASMA"
	cont "activity."
	
	para "Thanks again,"
	line "<PLAY_G>."
	done
	
NimbasaParkOutsideNateRosaText:
	text "..."
	done
	
NateRosaWinText:
	text "...!"
	done

NimbasaParkOutside_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 20,  5, NIMBASA_PARK_COASTER_ROOM, 1
	warp_event 41,  7, NIMBASA_PARK_RUNWAY, 1
	warp_event  4,  8, NIMBASA_CITY, 15
	warp_event  4,  9, NIMBASA_CITY, 16

	db 1 ; coord events
	coord_event  7,  9, SCENE_DEFAULT, NimbasaParkBlockerScript

	db 1 ; bg events
	bg_event 35,  6, BGEVENT_ITEM, NimbasaParkOutsideFullHeal

	db 7 ; object events
	object_event 47, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, NimbasaParkOutsideXAccuracy, EVENT_NIMBASA_PARK_OUTSIDE_X_ACCURACY
	object_event 10, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, NimbasaParkOutsideIceHeal, EVENT_NIMBASA_PARK_OUTSIDE_ICE_HEAL
	object_event 12,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, NimbasaParkOutsideQuickBall, EVENT_NIMBASA_PARK_OUTSIDE_QUICK_BALL
	object_event  8,  8, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NimbasaParkOutsideBlocker, EVENT_NIMBASA_PARK_BLOCKER
	object_event  7,  8, SPRITE_CHEREN, SPRITEMOVEDATA_STANDING_RIGHT, 3, 3, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, -1, EVENT_NIMBASA_PARK_OUTSIDE_CHEREN
	object_event 29,  8, SPRITE_NATE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NimbasaParkOutsideNateRosaScript, EVENT_NIMBASA_PARK_NATE
	object_event 29,  8, SPRITE_ROSA, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NimbasaParkOutsideNateRosaScript, EVENT_NIMBASA_PARK_ROSA
	