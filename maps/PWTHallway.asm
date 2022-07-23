	const_def 2 ; object constants

PWTHallway_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .Enter ; SCENE_FINISHED

	db 0 ; callbacks

.DummyScene0:
	end

.Enter:
	priorityjump .PwtHallwayEnterFromFront
	end
	
.PwtHallwayEnterFromFront:
	setscene SCENE_DEFAULT
	checkevent EVENT_FINISHED_PWT_QUALIFIER
	iftrue .gomainroom
	setevent EVENT_PWT_QUALIFIER_ROOM_ACE_TRAINER_M
	setevent EVENT_PWT_QUALIFIER_ROOM_ACE_TRAINER_F
	applymovement PLAYER, PwtHallwayEnterLeftMovement
	warpcheck
	end

.gomainroom
	setmapscene PWT_BATTLE_ROOM, SCENE_DEFAULT
	applymovement PLAYER, PwtHallwayEnterRightMovement
	warpcheck
	end
	
PwtEnterFromLeftScript:
	applymovement PLAYER, PwtHallwayLeftToRightMovement
	warpcheck
	end
	
PwtEnterFromRightScript:
	applymovement PLAYER, PwtHallwayExitRightMovement
	warpcheck
	end
	
PwtHallwayEnterLeftMovement:
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step UP
	step_end
	
PwtHallwayEnterRightMovement:
	step UP
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step UP
	step UP
	step_end
	
PwtHallwayExitRightMovement:
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step_end
	
PwtHallwayLeftToRightMovement:
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step UP
	step_end

PWTHallway_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  7,  5, PWT_INSIDE, 3
	warp_event  8,  5, PWT_INSIDE, 3
	warp_event  2,  0, PWT_QUALIFIER_ROOM, 1
	warp_event 12,  0, PWT_BACK_ROOM, 1

	db 2 ; coord events
	coord_event  2,  1, SCENE_DEFAULT, PwtEnterFromLeftScript
	coord_event 12,  1, SCENE_DEFAULT, PwtEnterFromRightScript

	db 0 ; bg events
	
	db 0 ; object events
	