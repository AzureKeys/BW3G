	const_def 2 ; object constants

StrangeHouse1F_MapScripts:
	db 8 ; scene scripts
	scene_script .FirstEnter ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_STRANGE_HOUSE_1
	scene_script .DummyScene2 ; SCENE_STRANGE_HOUSE_2
	scene_script .DummyScene3 ; SCENE_STRANGE_HOUSE_3
	scene_script .DummyScene4 ; SCENE_STRANGE_HOUSE_4
	scene_script .DummyScene5 ; SCENE_STRANGE_HOUSE_5
	scene_script .DummyScene6 ; SCENE_STRANGE_HOUSE_NOTHING
	scene_script .DummyScene7 ; SCENE_STRANGE_HOUSE_FINISHED

	db 1 ; callbacks
	callback MAPCALLBACK_TILES, .MoveFurniture
	
.FirstEnter:
	priorityjump .FirstEnterScene
	end

.DummyScene1:
	end

.DummyScene2:
	end

.DummyScene3:
	end

.DummyScene4:
	end
	
.DummyScene5:
	end

.DummyScene6:
	end

.DummyScene7:
	end
	
.MoveFurniture:
	checkscene
	ifequal SCENE_STRANGE_HOUSE_1, .MoveFurniture1
	ifequal SCENE_STRANGE_HOUSE_2, .MoveFurniture2
	ifequal SCENE_STRANGE_HOUSE_3, .MoveFurniture3
	ifequal SCENE_STRANGE_HOUSE_4, .MoveFurniture4
	ifequal SCENE_STRANGE_HOUSE_5, .MoveFurniture5
	return
	
.MoveFurniture1: ; entry layout
	changeblock  4, 10, $1c ; chair by left table
	changeblock  6,  8, $20 ; table by left table
	changeblock 16, 10, $44 ; chairs by right table
	changeblock 18, 12, $30 ; table by right table
	changeblock 14,  4, $11 ; table by upper staircase
	return
	
.MoveFurniture2: ; from lower left
	changeblock 10, 10, $30 ; table by front door
	changeblock 10, 12, $45 ; chairs by front door
	changeblock  8,  2, $47 ; chairs by upper left door
	changeblock  8,  0, $64 ; chairs by upper left door
	changeblock 18,  0, $65 ; table by upper right door
	changeblock 18,  2, $66 ; table by upper right door
	changeblock 16, 10, $44 ; chairs by right table
	changeblock 18, 12, $30 ; table by right table
	return
	
.MoveFurniture3: ; from upper left
	changeblock  6,  0, $67 ; chairs by upper left door
	changeblock  6,  2, $68 ; chairs by upper left door
	changeblock 12,  0, $69 ; chair by back door
	changeblock 10, 10, $30 ; table by front door
	changeblock 10, 12, $45 ; chairs by front door
	changeblock 20,  0, $64 ; chairs by upper right door
	changeblock 20,  2, $6a ; chairs by upper right door
	changeblock 20,  8, $20 ; table by right table
	changeblock 24, 10, $45 ; chairs by right table
	return

.MoveFurniture4: ; from lower right
	changeblock  4, 10, $1c ; chair by left table
	changeblock  6,  8, $20 ; table by left table
	changeblock 12,  0, $69 ; chair by back door
	changeblock 20,  0, $64 ; chairs by upper right door
	changeblock 20,  2, $6a ; chairs by upper right door
	changeblock 20,  8, $20 ; table by right table
	changeblock 24, 10, $45 ; chairs by right table
	changeblock  6,  0, $69 ; chairs by upper left door
	changeblock  6,  2, $68 ; chairs by upper left door
	return
	
.MoveFurniture5: ; from upper right
	changeblock 18,  0, $67 ; chairs by upper right door
	changeblock 18,  2, $44 ; chairs by upper right door
	changeblock 14,  4, $11 ; table by upper staircase
	changeblock 10, 10, $30 ; table by front door
	changeblock 10, 12, $45 ; chairs by front door
	return
	
.FirstEnterScene:
	changeblock  4, 10, $1c ; chair by left table
	changeblock  6,  8, $20 ; table by left table
	changeblock 16, 10, $44 ; chairs by right table
	changeblock 18, 12, $30 ; table by right table
	changeblock 14,  4, $11 ; table by upper staircase
	opentext
	writetext StrangeHouse1FEnterText
	waitbutton
	closetext
	setscene SCENE_STRANGE_HOUSE_1
	end
	
StrangeHouse1FEnterText:
	text "… … … …"
	
	para "Do you want to"
	line "play…?"
	
	para "With me… …?"
	done	
	
StrangeHouse1F_MapEvents:
	db 0, 0 ; filler

	db 9 ; warp events
	warp_event 13, 13, LENTIMAS_OUTSKIRTS, 2
	warp_event 14, 13, LENTIMAS_OUTSKIRTS, 2
	warp_event  4,  8, STRANGE_HOUSE_B1F, 1
	warp_event 23,  8, STRANGE_HOUSE_B1F, 2
	warp_event  7,  0, STRANGE_HOUSE_ROOMS, 1
	warp_event 13,  0, STRANGE_HOUSE_ROOMS, 3
	warp_event 19,  0, STRANGE_HOUSE_ROOMS, 5
	warp_event  9,  7, STRANGE_HOUSE_ROOMS, 7
	warp_event 19,  7, STRANGE_HOUSE_ROOMS, 9

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
	