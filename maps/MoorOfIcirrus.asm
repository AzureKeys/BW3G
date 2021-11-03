	const_def 2 ; object constants
	const MOOROFICIRRUS_BOULDER

MoorOfIcirrus_MapScripts:
	db 0 ; scene scripts

	db 2 ; callbacks
	callback MAPCALLBACK_TILES, .SetTiles
	callback MAPCALLBACK_STONETABLE, .SetUpStoneTable
	
.SetTiles:
	checkevent EVENT_MOOR_OF_ICIRRUS_BOULDER
	iffalse .done
	changeblock  8, 24, $cc ; boulder in pit
.done
	return

.SetUpStoneTable:
	usestonetable .StoneTable
	return

.StoneTable:
	stonetable 3, MOOROFICIRRUS_BOULDER, .Boulder
	db -1 ; end

.Boulder:
	pause 30
	scall .FX
	opentext
	writetext MoorOfIcirrusBoulderFellText
	waitbutton
	disappear MOOROFICIRRUS_BOULDER
	changeblock  8, 24, $cc ; boulder in pit
	reloadmappart
	closetext
	end

.FX:
	playsound SFX_STRENGTH
	earthquake 80
	end
	
MoorOfIcirrusBoulder:
	jumpstd strengthboulder
	
MoorOfIcirrusBoulderFellText:
	text "The boulder fell"
	line "through!"
	done

MoorOfIcirrus_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event 22, 34, R_8, 3
	warp_event 23, 34, R_8, 4
	warp_event  9, 25, MOOR_OF_ICIRRUS, 1

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event 11, 25, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoorOfIcirrusBoulder, EVENT_MOOR_OF_ICIRRUS_BOULDER
	