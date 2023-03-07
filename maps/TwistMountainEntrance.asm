	const_def 2 ; object constants
	const TWISTMOUNTAINENTRANCE_BOULDER
	const TWISTMOUNTAINENTRANCE_CHOICE_BAND

TwistMountainEntrance_MapScripts:
	db 0 ; scene scripts

	db 2 ; callbacks
	callback MAPCALLBACK_TILES, .SetTiles
	callback MAPCALLBACK_STONETABLE, .SetUpStoneTable
	
.SetTiles:
	checkevent EVENT_TWIST_MOUNTAIN_3F_BOULDER
	iffalse .done
	changeblock  2,  4, $6f ; boulder in pit
.done
	return

.SetUpStoneTable:
	usestonetable .StoneTable
	return

.StoneTable:
	stonetable 2, TWISTMOUNTAINENTRANCE_BOULDER, .Boulder
	db -1 ; end

.Boulder:
	pause 30
	scall .FX
	opentext
	writetext TwistMountainEntranceBoulderFellText
	waitbutton
	disappear TWISTMOUNTAINENTRANCE_BOULDER
	changeblock  2,  4, $6f ; boulder in pit
	reloadmappart
	closetext
	end

.FX:
	playsound SFX_STRENGTH
	;earthquake 80
	end
	
TwistMountainEntranceBoulder:
	jumpstd strengthboulder
	
TwistMountainEntranceChoiceBand:
	itemball CHOICE_BAND
	
TwistMountainEntranceBoulderFellText:
	text "The boulder fell"
	line "through!"
	done

TwistMountainEntrance_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  3,  7, R_7_NORTH, 2
	warp_event  3,  4, TWIST_MOUNTAIN_ENTRANCE, 1
	warp_event  7,  1, TWIST_MOUNTAIN_OUTSIDE, 16

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  5,  3, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TwistMountainEntranceBoulder, EVENT_TWIST_MOUNTAIN_3F_BOULDER
	object_event  3,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TwistMountainEntranceChoiceBand, EVENT_TWIST_MOUNTAIN_CHOICE_BAND
	