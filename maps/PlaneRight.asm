	const_def 2 ; object constants

PlaneRight_MapScripts:
	db 1 ; scene scripts
	scene_script .Enter ; SCENE_DEFAULT

	db 0 ; callbacks

.Enter:
	priorityjump .StartPlaneRight
	end
	
.StartPlaneRight:
	wait 10
	applymovement PLAYER, PlaneRightMovement
	wait 25
	applymovement PLAYER, PlaneRightMovement
	warpcheck
	end
	
PlaneRightMovement:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

PlaneRight_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 20,  5, MISTRALTON_AIRPORT, 3
	warp_event  4,  5, LENTIMAS_AIRPORT, 3

	db 0 ; coord events

	db 0 ; bg events
	
	db 0 ; object events
	