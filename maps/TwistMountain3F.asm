	const_def 2 ; object constants
	const TWISTMOUNTAIN3F_BOULDER
	const TWISTMOUNTAIN3F_CHOICE_BAND

TwistMountain3F_MapScripts:
	db 0 ; scene scripts

	db 2 ; callbacks
	callback MAPCALLBACK_TILES, .SetTiles
	callback MAPCALLBACK_STONETABLE, .SetUpStoneTable
	
.SetTiles:
	checkevent EVENT_TWIST_MOUNTAIN_3F_BOULDER
	iffalse .done
	changeblock  2, 26, $6f ; boulder in pit
.done
	return

.SetUpStoneTable:
	usestonetable .StoneTable
	return

.StoneTable:
	stonetable 2, TWISTMOUNTAIN3F_BOULDER, .Boulder
	db -1 ; end

.Boulder:
	pause 30
	scall .FX
	opentext
	writetext TwistMountain3FBoulderFellText
	waitbutton
	disappear TWISTMOUNTAIN3F_BOULDER
	changeblock  2, 26, $6f ; boulder in pit
	reloadmappart
	closetext
	end

.FX:
	playsound SFX_STRENGTH
	earthquake 80
	end
	
TwistMountain3FBoulder:
	jumpstd strengthboulder
	
TwistMountain3FChoiceBand:
	itemball CHOICE_BAND
	
TwistMountain3FBoulderFellText:
	text "The boulder fell"
	line "through!"
	done

TwistMountain3F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  3, 29, R_7_NORTH, 2
	warp_event  3, 26, TWIST_MOUNTAIN_3F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  5, 25, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TwistMountain3FBoulder, EVENT_TWIST_MOUNTAIN_3F_BOULDER
	object_event  3, 27, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TwistMountain3FChoiceBand, EVENT_TWIST_MOUNTAIN_CHOICE_BAND
	