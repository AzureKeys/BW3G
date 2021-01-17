	const_def 2 ; object constants

FerryRight_MapScripts:
	db 1 ; scene scripts
	scene_script .Enter ; SCENE_DEFAULT

	db 0 ; callbacks

.Enter:
	priorityjump .StartFerryRight
	end
	
.StartFerryRight:
	wait 15
	applymovement PLAYER, FerryRightMovement1
	wait 25
	applymovement PLAYER, FerryRightMovement2
	warpcheck
	end
	
FerryRightMovement1:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end
	
FerryRightMovement2:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

FerryRight_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  0,  1, CASTELIA_PORT, 3
	warp_event 17,  1, VIRBANK_PORT, 3

	db 0 ; coord events

	db 0 ; bg events
	
	db 0 ; object events
	