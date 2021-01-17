	const_def 2 ; object constants
	const NIMBASAPARKOUTSIDE_X_ACCURACY
	const NIMBASAPARKOUTSIDE_ICE_HEAL
	const NIMBASAPARKOUTSIDE_DIRE_HIT
	const NIMBASAPARKOUTSIDE_BLOCKER
	const NIMBASAPARKOUTSIDE_CHEREN

NimbasaParkOutside_MapScripts:
	db 4 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .CherenScene ; SCENE_NIMBASA_PARK_OUTSIDE_CHEREN
	scene_script .AfterScene ; SCENE_NIMBASA_PARK_OUTSIDE_AFTER
	scene_script .DummyScene3 ; SCENE_NIMBASA_PARK_OUTSIDE_NOTHING

	db 0 ; callbacks

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
	
NimbasaParkOutsideBlocker:
	jumptextfaceplayer NimbasaParkOutsideBlockerText
	
NimbasaParkOutsideXAccuracy:
	itemball X_ACCURACY
	
NimbasaParkOutsideIceHeal:
	itemball ICE_HEAL
	
NimbasaParkOutsideDireHit:
	itemball DIRE_HIT
	
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
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
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

	db 5 ; object events
	object_event 47, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, NimbasaParkOutsideXAccuracy, EVENT_NIMBASA_PARK_OUTSIDE_X_ACCURACY
	object_event 10, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, NimbasaParkOutsideIceHeal, EVENT_NIMBASA_PARK_OUTSIDE_ICE_HEAL
	object_event 12,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, NimbasaParkOutsideDireHit, EVENT_NIMBASA_PARK_OUTSIDE_DIRE_HIT
	object_event  8,  8, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NimbasaParkOutsideBlocker, EVENT_NIMBASA_PARK_BLOCKER
	object_event  7,  8, SPRITE_CHEREN, SPRITEMOVEDATA_STANDING_RIGHT, 3, 3, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, -1, EVENT_NIMBASA_PARK_OUTSIDE_CHEREN
	