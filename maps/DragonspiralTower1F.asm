	const_def 2 ; object constants
	const DRAGONSPIRALTOWER1F_DRAYDEN

DragonspiralTower1F_MapScripts:
	db 2 ; scene scripts
	scene_script .MeetDrayden ; SCENE_DEFAULT
	scene_script .DummyScene ; SCENE_FINISHED

	db 0 ; callbacks

.MeetDrayden:
	priorityjump .DraydenScript
	end

.DummyScene:
	end
	
.DraydenScript:
	showemote EMOTE_SHOCK, DRAGONSPIRALTOWER1F_DRAYDEN, 15
	applymovement DRAGONSPIRALTOWER1F_DRAYDEN, DragonspiralTower1FApproachMovement
	opentext
	writetext DragonspiralTower1FDraydenText
	waitbutton
	closetext
	applymovement DRAGONSPIRALTOWER1F_DRAYDEN, DragonspiralTower1FLeaveMovement
	disappear DRAGONSPIRALTOWER1F_DRAYDEN
	setscene SCENE_FINISHED
	end
	
DragonspiralTower1FApproachMovement:
	big_step LEFT
	big_step LEFT
	big_step DOWN
	step_end
	
DragonspiralTower1FLeaveMovement:
	step UP
	step RIGHT
	step RIGHT
	step UP
	step UP
	step_end
	
DragonspiralTower1FDraydenText:
	text "Oh! You…"
	
	para "You don't look"
	line "like you're with"
	cont "TEAM PLASMA."
	
	para "You're a trainer,"
	line "right? Are you"
	
	para "looking to take on"
	line "my GYM?"
	
	para "Sorry, but you'll"
	line "have to wait."
	
	para "There's something"
	line "I need to take"
	cont "care of first."
	
	para "You'd better go,"
	line "it could be"
	cont "dangerous."
	
	para "Oh? You say you've"
	line "battled with TEAM"
	cont "PLASMA before?"
	
	para "Well, then I won't"
	line "stop you."
	
	para "This tower is a"
	line "mystical place."
	
	para "It's been the site"
	line "of many rituals."
	
	para "I was informed"
	line "of suspicious"
	
	para "activity going on"
	line "around the tower,"
	
	para "and I fear TEAM"
	line "PLAMSA may be"
	
	para "planning something"
	line "dangerous."
	
	para "I'm going on ahead"
	line "up the tower. What"
	
	para "you do now is up"
	line "to you."
	done

DragonspiralTower1F_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  2, 17, DRAGONSPIRAL_TOWER_OUTSIDE, 3
	warp_event  3, 17, DRAGONSPIRAL_TOWER_OUTSIDE, 4
	warp_event  8,  0, DRAGONSPIRAL_TOWER_2F, 1
	warp_event  9,  0, DRAGONSPIRAL_TOWER_2F, 2

	db 0 ; coord events

	db 0 ; bg events
	
	db 1 ; object events
	object_event  5, 14, SPRITE_DRAYDEN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, -1, EVENT_DRAGONSPIRAL_TOWER_1F_DRAYDEN
	