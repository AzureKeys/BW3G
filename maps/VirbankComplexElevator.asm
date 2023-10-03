VirbankComplexElevator_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .SetPipes
	
.SetPipes:
	clearevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH1
	clearevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH2
	clearevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH3
	clearevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH4
	return

VirbankComplexElevatorScript:
	opentext
	checkitem LIFT_KEY
	iffalse .nokey
	elevator VirbankComplexElevatorData
	closetext
	iffalse .Done
	pause 5
	playsound SFX_ELEVATOR
	earthquake 60
	waitsfx
.Done
	end
	
.nokey
	writetext VirbankComplexElevatorNoKeyText
	waitbutton
	closetext
	end

VirbankComplexElevatorData:
	db 3 ; floors
	elevfloor FLOOR_1F,  1, VIRBANK_COMPLEX_OUTSIDE
	elevfloor FLOOR_B1F,  1, VIRBANK_COMPLEX_B1F
	elevfloor FLOOR_B2F,  1, VIRBANK_COMPLEX_B2F
	db -1 ; end

VirbankComplexElevatorNoKeyText:
	text "A LIFT KEY is"
	line "required…"
	done

VirbankComplexElevator_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  1,  3, VIRBANK_COMPLEX_OUTSIDE, -1
	warp_event  2,  3, VIRBANK_COMPLEX_OUTSIDE, -1

	db 0 ; coord events

	db 1 ; bg events
	bg_event  3,  0, BGEVENT_READ, VirbankComplexElevatorScript

	db 0 ; object events
