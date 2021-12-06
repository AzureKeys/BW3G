	const_def 2 ; object constants
	const DREAMYARD_BOULDER

Dreamyard_MapScripts:
	db 0 ; scene scripts

	db 2 ; callbacks
	callback MAPCALLBACK_TILES, .SetTiles
	callback MAPCALLBACK_STONETABLE, .SetUpStoneTable
	
.SetTiles:
	checkevent EVENT_DREAMYARD_BOULDER
	iffalse .done
	changeblock 10, 20, $55 ; boulder in pit
.done
	return

.SetUpStoneTable:
	usestonetable .StoneTable
	return

.StoneTable:
	stonetable 3, DREAMYARD_BOULDER, .Boulder
	db -1 ; end

.Boulder:
	pause 30
	scall .FX
	opentext
	writetext DreamyardBoulderFellText
	waitbutton
	disappear DREAMYARD_BOULDER
	changeblock 10, 20, $55 ; boulder in pit
	reloadmappart
	closetext
	end

.FX:
	playsound SFX_STRENGTH
	earthquake 80
	end
	
DreamyardBoulder:
	jumpstd strengthboulder
	
DreamyardBoulderFellText:
	text "The boulder fell"
	line "through!"
	done

Dreamyard_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  1, 16, STRIATON_CITY, 7
	warp_event  1, 17, STRIATON_CITY, 8
	warp_event 10, 21, DREAMYARD, 1

	db 0 ; coord events

	db 0 ; bg events
	
	db 1 ; object events
	object_event 10, 20, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DreamyardBoulder, EVENT_DREAMYARD_BOULDER
	