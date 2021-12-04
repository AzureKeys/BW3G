CasteliaPlazaElevator_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CasteliaPlazaElevatorScript:
	opentext
	elevator CasteliaPlazaElevatorData
	closetext
	iffalse .Done
	pause 5
	playsound SFX_ELEVATOR
	earthquake 60
	waitsfx
.Done
	end

CasteliaPlazaElevatorData:
	db 4 ; floors
	elevfloor FLOOR_1F,  4, CASTELIA_PLAZA_LOBBY
	elevfloor FLOOR_2F,  3, CASTELIA_PLAZA_GAME_CORNER
	elevfloor FLOOR_3F,  3, CASTELIA_PLAZA_PRIZE_ROOM
	elevfloor FLOOR_4F,  2, CASTELIA_PLAZA_RESTAURANT
	db -1 ; end

CasteliaPlazaElevator_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  1,  3, CASTELIA_PLAZA_LOBBY, -1
	warp_event  2,  3, CASTELIA_PLAZA_LOBBY, -1

	db 0 ; coord events

	db 1 ; bg events
	bg_event  3,  0, BGEVENT_READ, CasteliaPlazaElevatorScript

	db 0 ; object events
