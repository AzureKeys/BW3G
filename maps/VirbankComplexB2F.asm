	const_def 2 ; object constants
	const VIRBANKCOMPLEXB2F_GRUNTM
	const VIRBANKCOMPLEXB2F_GRUNTF
	const VIRBANKCOMPLEXB2F_SCIENTISTM
	const VIRBANKCOMPLEXB2F_SCIENTISTF
	const VIRBANKCOMPLEXB2F_REVIVE
	const VIRBANKCOMPLEXB2F_CALCIUM

VirbankComplexB2F_MapScripts:
	db 1 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT

	db 1 ; callbacks
	callback MAPCALLBACK_TILES, .SetTiles

.DummyScene0:
	end

.SetTiles:
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH1
	iffalse .AfterSw1
	changeblock  4,  8, $5A ; grey top wall
	changeblock  4, 12, $5D ; contained grey top wall
	changeblock  8, 10, $1B ; blue floor
	changeblock  8, 12, $1B ; blue floor
	changeblock  4, 10, $4D ; top wall switch platform
	changeblock  0, 10, $64 ; top wall w missing top left
	changeblock  2, 10, $45 ; top wall pipe going left
	changeblock  2, 12, $60 ; pipe wall going left
	changeblock 10,  8, $41 ; left + right wall pipe going up
	changeblock  6, 10, $47 ; top + right wall pipe
	changeblock  6, 12, $61 ; pipe wall going right
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH2
	iftrue .Sw1PressedSw2
	changeblock  4, 14, $42 ; top + left + right wall pipe
	jump .Sw1AfterSw2
.Sw1PressedSw2
	changeblock  4, 14, $1B ; blue floor
.Sw1AfterSw2
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH3
	iftrue .Sw1PressedSw3
	changeblock 10, 10, $44 ; left wall
	jump .AfterSw1
.Sw1PressedSw3
	changeblock 10, 10, $4B ; left + right wall
	
.AfterSw1
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH4
	iffalse .AfterSw4
	changeblock 16, 18, $5D ; contained grey top wall
	changeblock 12, 16, $1B ; blue floor
	changeblock 12, 18, $1B ; blue floor
	changeblock 16, 16, $4D ; top wall switch platform
	changeblock 16, 20, $50 ; top wall
	changeblock 10, 20, $07 ; floor
	changeblock 20, 16, $50 ; top wall
	changeblock 18, 16, $63 ; top wall pipe going right
	changeblock 18, 18, $61 ; pipe wall going right
	changeblock 10, 18, $62 ; left + right wall pipe going down
	changeblock 14, 16, $46 ; top + left wall pipe
	changeblock 14, 18, $60 ; pipe wall going left
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH3
	iftrue .Sw4PressedSw3
	changeblock 16, 14, $43 ; front pipe wall
	jump .Sw4AfterSw3
.Sw4PressedSw3
	changeblock 16, 14, $1B ; blue floor
.Sw4AfterSw3
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH2
	iftrue .Sw4PressedSw2
	changeblock 10, 16, $4A ; top + right wall
	jump .AfterSw4
.Sw4PressedSw2
	changeblock 10, 16, $4B ; left + right wall
	
.AfterSw4
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH2
	iffalse .AfterSw2
	changeblock  4, 18, $5D ; contained grey top wall
	changeblock  8, 16, $1B ; blue floor
	changeblock  8, 18, $1B ; blue floor
	changeblock  4, 16, $4D ; top wall switch platform
	changeblock  4, 20, $50 ; top wall
	changeblock  0, 16, $50 ; top wall
	changeblock  2, 16, $45 ; top wall pipe going left
	changeblock  2, 18, $60 ; pipe wall going left
	changeblock  6, 16, $47 ; top + right wall pipe
	changeblock  6, 18, $61 ; pipe wall going right
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH1
	iftrue .Sw2PressedSw1
	changeblock  4, 14, $43 ; front pipe wall
	jump .Sw2AfterSw1
.Sw2PressedSw1
	changeblock  4, 14, $1B ; blue floor
.Sw2AfterSw1
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH4
	iftrue .Sw2PressedSw4
	changeblock 10, 16, $44 ; left wall
	jump .Sw2CheckSw3
.Sw2PressedSw4
	changeblock 10, 16, $4B ; left + right wall
.Sw2CheckSw3
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH3
	iftrue .Sw2PressedSw3
	changeblock 10, 14, $42 ; top + left + right wall pipe
	jump .AfterSw2
.Sw2PressedSw3
	changeblock 10, 14, $41 ; left + right wall pipe going up
	
.AfterSw2
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH3
	iffalse .Done
	changeblock 16,  8, $5A ; grey top wall
	changeblock 16, 12, $5D ; contained grey top wall
	changeblock 12, 10, $1B ; blue floor
	changeblock 12, 12, $1B ; blue floor
	changeblock 16, 10, $4D ; top wall switch platform
	changeblock 20, 10, $48 ; top wall w missing top right
	changeblock 18, 10, $63 ; top wall pipe going right
	changeblock 18, 12, $61 ; pipe wall going right
	changeblock 14, 10, $46 ; top + left wall pipe
	changeblock 14, 12, $60 ; pipe wall going left
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH4
	iftrue .Sw3PressedSw4
	changeblock 16, 14, $42 ; top + left + right wall pipe
	jump .Sw3AfterSw4
.Sw3PressedSw4
	changeblock 16, 14, $1B ; blue floor
.Sw3AfterSw4
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH1
	iftrue .Sw3PressedSw1
	changeblock 10, 10, $4A ; top + right wall
	jump .Sw3CheckSw2
.Sw3PressedSw1
	changeblock 10, 10, $4B ; left + right wall
.Sw3CheckSw2
	changeblock 10, 12, $62 ; left + right wall pipe going down
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH2
	iftrue .Sw3PressedSw2
	changeblock 10, 14, $43 ; front pipe wall
	jump .Done
.Sw3PressedSw2
	changeblock 10, 14, $41 ; left + right wall pipe going up
	
.Done
	return
	
VirbankComplexB2FSwitch1Script:
	opentext
	playsound SFX_TALLY
	writetext VirbankComplexSwitchText
	waitbutton
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH1
	iftrue .SetPosition1
; Set to Position 2
	setevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH1
	; remove walkways
	changeblock  4,  8, $5A ; grey top wall
	changeblock  4, 12, $5D ; contained grey top wall
	changeblock  8, 10, $1B ; blue floor
	changeblock  8, 12, $1B ; blue floor
	; platform change
	changeblock  4, 10, $4D ; top wall switch platform
	; left side stairs opened
	changeblock  0, 10, $64 ; top wall
	playsound SFX_ENTER_DOOR
	reloadmappart
	waitsfx
	; appear walkways
	changeblock  2, 10, $45 ; top wall pipe going left
	changeblock  2, 12, $60 ; pipe wall going left
	changeblock 10,  8, $41 ; left + right wall pipe going up
	changeblock  6, 10, $47 ; top + right wall pipe
	changeblock  6, 12, $61 ; pipe wall going right
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH2
	iftrue .Sw2PressedPos2 
; Platform 2 walkway
	changeblock  4, 14, $42 ; top + left + right wall pipe
	jump .contPos2
.Sw2PressedPos2
; remove front pipe wall
	changeblock  4, 14, $1B ; blue floor
.contPos2
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH3
	iftrue .Sw3PressedPos2
; Middle platform w right walkway
	changeblock 10, 10, $44 ; left wall
	jump .done
.Sw3PressedPos2
; Middle platform w bottom walkway
	changeblock 10, 10, $4B ; left + right wall
	jump .done
	
.SetPosition1
; Set to Position 1
	clearevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH1
	; remove walkways
	changeblock  2, 10, $1B ; blue floor
	changeblock  2, 12, $1B ; blue floor
	changeblock  6, 10, $1B ; blue floor
	changeblock  6, 12, $1B ; blue floor
	changeblock 10,  8, $5A ; grey top wall
	; platform change
	changeblock  4, 10, $4C ; left + right wall switch platform
	; left side stairs cutoff
	changeblock  0, 10, $5B ; top + right wall
	playsound SFX_ENTER_DOOR
	reloadmappart
	waitsfx
	; appear walkways
	changeblock  8, 10, $46 ; top + left wall pipe
	changeblock  8, 12, $60 ; pipe wall going left
	changeblock  4,  8, $41 ; left + right wall pipe going up
	changeblock  4, 12, $62 ; left + right wall pipe going down
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH2
	iftrue .Sw2Pressed
; Platform 2 walkway
	changeblock  4, 14, $41 ; left + right wall pipe going up
	jump .contPos1
.Sw2Pressed
	changeblock  4, 14, $43 ; front pipe wall
.contPos1
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH3
	iftrue .Sw3PressedPos1
; Middle platform w right walkway
	changeblock 10, 10, $50 ; top wall
	jump .done
.Sw3PressedPos1
; Middle platform w bottom walkway
	changeblock 10, 10, $4A ; top + right wall
	
.done
	playsound SFX_ENTER_DOOR
	reloadmappart
	waitsfx
	closetext
	end
	
VirbankComplexB2FSwitch2Script:
	opentext
	playsound SFX_TALLY
	writetext VirbankComplexSwitchText
	waitbutton
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH2
	iftrue .SetPosition1
; Set to Position 2
	setevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH2
	; remove walkways
	changeblock  4, 18, $5D ; contained grey top wall
	changeblock  8, 16, $1B ; blue floor
	changeblock  8, 18, $1B ; blue floor
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH1
	iftrue .Sw1PressedPos2 
; Platform 1 walkway
	changeblock  4, 14, $43 ; front pipe wall
	jump .contPos2
.Sw1PressedPos2
	changeblock  4, 14, $1B ; blue floor
.contPos2
	; platform change
	changeblock  4, 16, $4D ; top wall switch platform
	; bottom side cutoff
	changeblock  4, 20, $50 ; top wall
	; left side stairs opened
	changeblock  0, 16, $50 ; top wall
	playsound SFX_ENTER_DOOR
	reloadmappart
	waitsfx
	; appear walkways
	changeblock  2, 16, $45 ; top wall pipe going left
	changeblock  2, 18, $60 ; pipe wall going left
	changeblock  6, 16, $47 ; top + right wall pipe
	changeblock  6, 18, $61 ; pipe wall going right
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH4
	iftrue .Sw4PressedPos2
; Middle platform w right walkway
	changeblock 10, 16, $44 ; left wall
	jump .CheckSw3Pos2
.Sw4PressedPos2
; Middle platform w bottom walkway
	changeblock 10, 16, $4B ; left + right wall
.CheckSw3Pos2
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH3
	iftrue .Sw3PressedPos2
; Middle platform upper walkway
	changeblock 10, 14, $42 ; top + left + right wall pipe
	jump .done
.Sw3PressedPos2
; Middle platform upper walkway
	changeblock 10, 14, $41 ; left + right wall pipe going up
	jump .done
	
.SetPosition1
; Set to Position 1
	clearevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH2
	; remove walkways
	changeblock  2, 16, $1B ; blue floor
	changeblock  2, 18, $1B ; blue floor
	changeblock  6, 16, $1B ; blue floor
	changeblock  6, 18, $1B ; blue floor
	; platform change
	changeblock  4, 16, $4C ; left + right wall switch platform
	; bottom side opened
	changeblock  4, 20, $07 ; floor
	; left side stairs cutoff
	changeblock  0, 16, $4A ; top + right wall
	
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH3
	iftrue .Sw3PressedPos1
; Middle platform upper walkway
	changeblock 10, 14, $1B ; blue floor
	jump .doneSw3Pos1
.Sw3PressedPos1
	changeblock 10, 14, $43 ; front pipe wall
.doneSw3Pos1	
	playsound SFX_ENTER_DOOR
	reloadmappart
	waitsfx
	; appear walkways
	changeblock  8, 16, $46 ; top + left wall pipe
	changeblock  8, 18, $60 ; pipe wall going left
	changeblock  4, 18, $62 ; left + right wall pipe going down
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH1
	iftrue .Sw1Pressed
; Platform 1 walkway
	changeblock  4, 14, $41 ; left + right wall pipe going up
	jump .contPos1
.Sw1Pressed
	changeblock  4, 14, $42 ; left + right + top wall pipe
.contPos1
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH4
	iftrue .Sw4PressedPos1
; Middle platform w right walkway
	changeblock 10, 16, $50 ; top wall
	jump .done
.Sw4PressedPos1
; Middle platform w bottom walkway
	changeblock 10, 16, $4A ; top + right wall
	
.done
	playsound SFX_ENTER_DOOR
	reloadmappart
	closetext
	waitsfx
	end
	
VirbankComplexB2FSwitch3Script:
	opentext
	playsound SFX_TALLY
	writetext VirbankComplexSwitchText
	waitbutton
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH3
	iftrue .SetPosition1
; Set to Position 2
	setevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH3
	; remove walkways
	changeblock 16,  8, $5A ; grey top wall
	changeblock 16, 12, $5D ; contained grey top wall
	changeblock 12, 10, $1B ; blue floor
	changeblock 12, 12, $1B ; blue floor
	; platform change
	changeblock 16, 10, $4D ; top wall switch platform
	; right side stairs opened
	changeblock 20, 10, $48 ; top wall
	playsound SFX_ENTER_DOOR
	reloadmappart
	waitsfx
	; appear walkways
	changeblock 18, 10, $63 ; top wall pipe going right
	changeblock 18, 12, $61 ; pipe wall going right
	changeblock 14, 10, $46 ; top + left wall pipe
	changeblock 14, 12, $60 ; pipe wall going left
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH4
	iftrue .Sw4PressedPos2 
; Platform 4 walkway
	changeblock 16, 14, $42 ; top + left + right wall pipe
	jump .contPos2
.Sw4PressedPos2
	changeblock 16, 14, $1B ; blue floor
.contPos2
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH1
	iftrue .Sw1PressedPos2
; Middle platform w left walkway
	changeblock 10, 10, $4A ; top + right wall
	jump .CheckSw2Pos2
.Sw1PressedPos2
; Middle platform w top walkway
	changeblock 10, 10, $4B ; left + right wall
.CheckSw2Pos2
	changeblock 10, 12, $62 ; left + right wall pipe going down
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH2
	iftrue .Sw2PressedPos2
; Middle platform upper walkway
	changeblock 10, 14, $43 ; front pipe wall
	jump .done
.Sw2PressedPos2
; Middle platform upper walkway
	changeblock 10, 14, $41 ; left + right wall pipe going up
	jump .done
	
.SetPosition1
; Set to Position 1
	clearevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH3
	; remove walkways
	changeblock 14, 10, $1B ; blue floor
	changeblock 14, 12, $1B ; blue floor
	changeblock 18, 10, $1B ; blue floor
	changeblock 18, 12, $1B ; blue floor
	changeblock 10, 12, $5D ; contained grey top wall
; check Sw2
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH2
	iftrue .Sw2PressedPos1
; Middle platform upper walkway
	changeblock 10, 14, $1B ; blue floor
	jump .SwitchPlatformPos1
.Sw2PressedPos1
	changeblock 10, 14, $42 ; top + left + right wall pipe
.SwitchPlatformPos1
	; platform change
	changeblock 16, 10, $4C ; left + right wall switch platform
	; right side stairs cutoff
	changeblock 20, 10, $5C ; left + top wall
	playsound SFX_ENTER_DOOR
	reloadmappart
	waitsfx
	; appear walkways
	changeblock 12, 10, $47 ; top + right wall pipe
	changeblock 12, 12, $61 ; pipe wall going right
	changeblock 16,  8, $41 ; left + right wall pipe going up
	changeblock 16, 12, $62 ; left + right wall pipe going down
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH4
	iftrue .Sw4Pressed
; Platform 4 walkway
	changeblock 16, 14, $41 ; left + right wall pipe going up
	jump .contPos1
.Sw4Pressed
	changeblock 16, 14, $43 ; front pipe wall
.contPos1
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH1
	iftrue .Sw1PressedPos1
; Middle platform w left walkway
	changeblock 10, 10, $50 ; top wall
	jump .done
.Sw1PressedPos1
; Middle platform w bottom walkway
	changeblock 10, 10, $44 ; left wall
	
.done
	playsound SFX_ENTER_DOOR
	reloadmappart
	closetext
	waitsfx
	end
	
VirbankComplexB2FSwitch4Script:
	opentext
	playsound SFX_TALLY
	writetext VirbankComplexSwitchText
	waitbutton
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH4
	iftrue .SetPosition1
; Set to Position 2
	setevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH4
	; remove walkways
	changeblock 16, 18, $5D ; contained grey top wall
	changeblock 12, 16, $1B ; blue floor
	changeblock 12, 18, $1B ; blue floor
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH3
	iftrue .Sw3PressedPos2
; Platform 3 walkway
	changeblock 16, 14, $43 ; front pipe wall
	jump .contPos2
.Sw3PressedPos2
	changeblock 16, 14, $1B ; blue floor
.contPos2
	; platform change
	changeblock 16, 16, $4D ; top wall switch platform
	; bottom side cutoff
	changeblock 16, 20, $50 ; top wall
	; middle platforms opened
	changeblock 10, 20, $07 ; floor
	; right side stairs opened
	changeblock 20, 16, $50 ; top wall
	playsound SFX_ENTER_DOOR
	reloadmappart
	waitsfx
	; appear walkways
	changeblock 18, 16, $63 ; top wall pipe going right
	changeblock 18, 18, $61 ; pipe wall going right
	changeblock 10, 18, $62 ; left + right wall pipe going down
	changeblock 14, 16, $46 ; top + left wall pipe
	changeblock 14, 18, $60 ; pipe wall going left
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH2
	iftrue .Sw2PressedPos2
; Middle platform w left walkway
	changeblock 10, 16, $4A ; top + right wall
	jump .done
.Sw2PressedPos2
; Middle platform w top walkway
	changeblock 10, 16, $4B ; left + right wall
	jump .done
	
.SetPosition1
; Set to Position 1
	clearevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH4
	; remove walkways
	changeblock 14, 16, $1B ; blue floor
	changeblock 14, 18, $1B ; blue floor
	changeblock 18, 16, $1B ; blue floor
	changeblock 18, 18, $1B ; blue floor
	changeblock 10, 18, $5D ; contained grey top wall
	; platform change
	changeblock 16, 16, $4C ; left + right wall switch platform
	; bottom side opened
	changeblock 16, 20, $07 ; floor
	; middle platforms cutoff
	changeblock 10, 20, $50 ; top wall
	; right side stairs cutoff
	changeblock 20, 16, $49 ; top + left wall
	playsound SFX_ENTER_DOOR
	reloadmappart
	waitsfx
	; appear walkways
	changeblock 12, 16, $47 ; top + right wall pipe
	changeblock 12, 18, $61 ; pipe wall going right
	changeblock 16, 18, $62 ; left + right wall pipe going down
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH3
	iftrue .Sw3Pressed
; Platform 3 walkway
	changeblock 16, 14, $41 ; left + right wall pipe going up
	jump .contPos1
.Sw3Pressed
	changeblock 16, 14, $42 ; left + right + top wall pipe
.contPos1
	checkevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH2
	iftrue .Sw2PressedPos1
; Middle platform w left walkway
	changeblock 10, 16, $50 ; top wall
	jump .done
.Sw2PressedPos1
; Middle platform w top walkway
	changeblock 10, 16, $44 ; left wall
	
.done
	playsound SFX_ENTER_DOOR
	reloadmappart
	closetext
	waitsfx
	end

TrainerGruntMVirbankComplexB2F:
	trainer GRUNTM, GRUNTM_VIRBANK_COMPLEX_3, EVENT_BEAT_GRUNTM_VIRBANK_COMPLEX_3, GruntMVirbankComplexB2FSeenText, GruntMVirbankComplexB2FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntMVirbankComplexB2FAfterText
	waitbutton
	closetext
	end

TrainerGruntFVirbankComplexB2F:
	trainer GRUNTF, GRUNTF_VIRBANK_COMPLEX_2, EVENT_BEAT_GRUNTF_VIRBANK_COMPLEX_2, GruntFVirbankComplexB2FSeenText, GruntFVirbankComplexB2FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntFVirbankComplexB2FAfterText
	waitbutton
	closetext
	end

TrainerScientistMVirbankComplexB2F:
	trainer SCIENTIST_M, SCIENTISTM_VIRBANK_COMPLEX, EVENT_BEAT_SCIENTISTM_VIRBANK_COMPLEX, ScientistMVirbankComplexB2FSeenText, ScientistMVirbankComplexB2FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ScientistMVirbankComplexB2FAfterText
	waitbutton
	closetext
	end

TrainerScientistFVirbankComplexB2F:
	trainer SCIENTIST_F, SCIENTISTF_VIRBANK_COMPLEX_2, EVENT_BEAT_SCIENTISTF_VIRBANK_COMPLEX_2, ScientistFVirbankComplexB2FSeenText, ScientistFVirbankComplexB2FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ScientistFVirbankComplexB2FAfterText
	waitbutton
	closetext
	end
	
VirbankComplexB2FRevive:
	itemball REVIVE
	
VirbankComplexB2FCalcium:
	itemball CALCIUM
	
VirbankComplexSwitchText:
	text "Click!"
	done
	
GruntMVirbankComplexB2FSeenText:
	text "Fork over your"
	line "goodies!"
	done

GruntMVirbankComplexB2FBeatenText:
	text "Mercy!"
	done

GruntMVirbankComplexB2FAfterText:
	text "Steal and sell!"
	line "That's basic in"
	cont "crime, kid!"
	done
	
GruntFVirbankComplexB2FSeenText:
	text "I don't care if"
	line "you're lost."

	para "You show up here,"
	line "you're nothing but"
	cont "a victim!"
	done

GruntFVirbankComplexB2FBeatenText:
	text "Urk! Yeah, think"
	line "you're cool, huh?"
	done

GruntFVirbankComplexB2FAfterText:
	text "You must have ice"
	line "in your veins to"
	cont "diss TEAM PLASMA."
	done
	
ScientistMVirbankComplexB2FSeenText:
	text "I used to work in"
	line "the COMPLEX, but"

	para "now I run research"
	line "for TEAM PLASMA."

	para "A meddlesome child"
	line "like you needs to"
	cont "be punished."
	done

ScientistMVirbankComplexB2FBeatenText:
	text "A mere tactical"
	line "error cost me…"
	done

ScientistMVirbankComplexB2FAfterText:
	text "My promotion is"
	line "assured. This loss"

	para "means absolutely"
	line "nothing."
	done
	
ScientistFVirbankComplexB2FSeenText:
	text "I don't care that"
	line "#MON are hurt"
	cont "by our experiment."
	done

ScientistFVirbankComplexB2FBeatenText:
	text "Thinking is my"
	line "strong suit, not"
	cont "battling."
	done

ScientistFVirbankComplexB2FAfterText:
	text "When we finish"
	line "extracting the"
	cont "power from the"
	cont "COMPLEX…"

	para "The very thought"
	line "excites me!"
	done
	
VirbankComplexB2F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 11,  0, VIRBANK_COMPLEX_ELEVATOR, 1
	warp_event 11,  4, VIRBANK_COMPLEX_B1F, 2

	db 4 ; coord events
	coord_event  4, 11, SCENE_DEFAULT, VirbankComplexB2FSwitch1Script
	coord_event  4, 17, SCENE_DEFAULT, VirbankComplexB2FSwitch2Script
	coord_event 16, 11, SCENE_DEFAULT, VirbankComplexB2FSwitch3Script
	coord_event 16, 17, SCENE_DEFAULT, VirbankComplexB2FSwitch4Script

	db 0 ; bg events

	db 6 ; object events
	object_event 14, 13, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerGruntMVirbankComplexB2F, EVENT_VIRBANK_COMPLEX_GRUNTS
	object_event  2, 13, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerGruntFVirbankComplexB2F, EVENT_VIRBANK_COMPLEX_GRUNTS
	object_event 19, 14, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerScientistMVirbankComplexB2F, EVENT_VIRBANK_COMPLEX_GRUNTS
	object_event  9, 20, SPRITE_SCIENTIST_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerScientistFVirbankComplexB2F, EVENT_VIRBANK_COMPLEX_GRUNTS
	object_event  0,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VirbankComplexB2FRevive, EVENT_VIRBANK_COMPLEX_B2F_REVIVE
	object_event 21,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VirbankComplexB2FCalcium, EVENT_VIRBANK_COMPLEX_B2F_CALCIUM
	