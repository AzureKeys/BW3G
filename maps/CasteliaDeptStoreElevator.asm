CasteliaDeptStoreElevator_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CasteliaDeptStoreElevatorScript:
	opentext
	elevator CasteliaDeptStoreElevatorData
	closetext
	iffalse .Done
	pause 5
	playsound SFX_ELEVATOR
	earthquake 60
	waitsfx
.Done
	end

CasteliaDeptStoreElevatorData:
	db 4 ; floors
	elevfloor FLOOR_1F,  4, CASTELIA_DEPT_STORE_1F
	elevfloor FLOOR_2F,  3, CASTELIA_DEPT_STORE_2F
	elevfloor FLOOR_3F,  3, CASTELIA_DEPT_STORE_3F
	elevfloor FLOOR_4F,  2, CASTELIA_DEPT_STORE_4F
	db -1 ; end

CasteliaDeptStoreElevator_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  1,  3, CASTELIA_DEPT_STORE_1F, -1
	warp_event  2,  3, CASTELIA_DEPT_STORE_1F, -1

	db 0 ; coord events

	db 1 ; bg events
	bg_event  3,  0, BGEVENT_READ, CasteliaDeptStoreElevatorScript

	db 0 ; object events
