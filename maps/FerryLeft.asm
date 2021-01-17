	const_def 2 ; object constants

FerryLeft_MapScripts:
	db 1 ; scene scripts
	scene_script .Enter ; SCENE_DEFAULT

	db 0 ; callbacks

.Enter:
	priorityjump .StartFerryLeft
	end
	
.StartFerryLeft:
	wait 15
	applymovement PLAYER, FerryLeftMovement1
	wait 25
	applymovement PLAYER, FerryLeftMovement2
	warpcheck
	end
	
FerryLeftMovement1:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end
	
FerryLeftMovement2:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

FerryLeft_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  0,  1, CASTELIA_PORT, 3
	warp_event 17,  1, VIRBANK_PORT, 3

	db 0 ; coord events

	db 0 ; bg events
	
	db 0 ; object events
	