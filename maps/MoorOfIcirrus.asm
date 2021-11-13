	const_def 2 ; object constants
	const MOOROFICIRRUS_BOULDER
	const MOOROFICIRRUS_MAX_POTION
	const MOOROFICIRRUS_MAX_REVIVE
	const MOOROFICIRRUS_MAX_ELIXER
	const MOOROFICIRRUS_CARBOS
	const MOOROFICIRRUS_TM_FOCUS_BLAST
	const MOOROFICIRRUS_FISHER_1
	const MOOROFICIRRUS_FISHER_2
	const MOOROFICIRRUS_PICNICKER
	const MOOROFICIRRUS_CAMPER

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

TrainerFisher1MoorOfIcirrus:
	trainer FISHER, FISHER_MOOR_OF_ICIRRUS_1, EVENT_BEAT_FISHER_MOOR_OF_ICIRRUS_1, Fisher1MoorOfIcirrusSeenText, Fisher1MoorOfIcirrusBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Fisher1MoorOfIcirrusAfterText
	waitbutton
	closetext
	end

TrainerFisher2MoorOfIcirrus:
	trainer FISHER_D, FISHER_MOOR_OF_ICIRRUS_2, EVENT_BEAT_FISHER_MOOR_OF_ICIRRUS_2, Fisher2MoorOfIcirrusSeenText, Fisher2MoorOfIcirrusBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Fisher2MoorOfIcirrusAfterText
	waitbutton
	closetext
	end

TrainerPicnickerMoorOfIcirrus:
	trainer PICNICKER, PICNICKER_MOOR_OF_ICIRRUS, EVENT_BEAT_PICNICKER_MOOR_OF_ICIRRUS, PicnickerMoorOfIcirrusSeenText, PicnickerMoorOfIcirrusBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerMoorOfIcirrusAfterText
	waitbutton
	closetext
	end

TrainerCamperMoorOfIcirrus:
	trainer CAMPER, CAMPER_MOOR_OF_ICIRRUS, EVENT_BEAT_CAMPER_MOOR_OF_ICIRRUS, CamperMoorOfIcirrusSeenText, CamperMoorOfIcirrusBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperMoorOfIcirrusAfterText
	waitbutton
	closetext
	end
	
MoorOfIcirrusBoulder:
	jumpstd strengthboulder
	
MoorOfIcirrusMaxPotion:
	itemball MAX_POTION
	
MoorOfIcirrusMaxRevive:
	itemball MAX_REVIVE
	
MoorOfIcirrusMaxElixer:
	itemball MAX_ELIXER
	
MoorOfIcirrusCarbos:
	itemball CARBOS
	
MoorOfIcirrusTMFocusBlast:
	itemball TM_FOCUS_BLAST
	
MoorOfIcirrusMaxEther:
	hiddenitem MAX_ETHER, EVENT_MOOR_OF_ICIRRUS_MAX_ETHER
	
MoorOfIcirrusNugget:
	hiddenitem NUGGET, EVENT_MOOR_OF_ICIRRUS_NUGGET
	
MoorOfIcirrusBigMushroom:
	hiddenitem BIG_MUSHROOM, EVENT_MOOR_OF_ICIRRUS_BIG_MUSHROOM
	
MoorOfIcirrusRevive:
	hiddenitem REVIVE, EVENT_MOOR_OF_ICIRRUS_REVIVE
	
Fisher1MoorOfIcirrusSeenText:
	text "..."
	done

Fisher1MoorOfIcirrusBeatenText:
	text "..."
	done

Fisher1MoorOfIcirrusAfterText:
	text "..."
	done
	
Fisher2MoorOfIcirrusSeenText:
	text "..."
	done

Fisher2MoorOfIcirrusBeatenText:
	text "..."
	done

Fisher2MoorOfIcirrusAfterText:
	text "..."
	done
	
PicnickerMoorOfIcirrusSeenText:
	text "..."
	done

PicnickerMoorOfIcirrusBeatenText:
	text "..."
	done

PicnickerMoorOfIcirrusAfterText:
	text "..."
	done
	
CamperMoorOfIcirrusSeenText:
	text "..."
	done

CamperMoorOfIcirrusBeatenText:
	text "..."
	done

CamperMoorOfIcirrusAfterText:
	text "..."
	done
	
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

	db 4 ; bg events
	bg_event 45, 26, BGEVENT_ITEM, MoorOfIcirrusMaxEther
	bg_event 13, 36, BGEVENT_ITEM, MoorOfIcirrusNugget
	bg_event 26, 24, BGEVENT_ITEM, MoorOfIcirrusBigMushroom
	bg_event 12, 20, BGEVENT_ITEM, MoorOfIcirrusRevive

	db 10 ; object events
	object_event 11, 25, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoorOfIcirrusBoulder, EVENT_MOOR_OF_ICIRRUS_BOULDER
	object_event 37, 36, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MoorOfIcirrusMaxPotion, EVENT_MOOR_OF_ICIRRUS_MAX_POTION
	object_event 23,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MoorOfIcirrusMaxRevive, EVENT_MOOR_OF_ICIRRUS_MAX_REVIVE
	object_event 30,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MoorOfIcirrusMaxElixer, EVENT_MOOR_OF_ICIRRUS_MAX_ELIXER
	object_event 36, 30, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MoorOfIcirrusCarbos, EVENT_MOOR_OF_ICIRRUS_CARBOS
	object_event  7, 37, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, MoorOfIcirrusTMFocusBlast, EVENT_MOOR_OF_ICIRRUS_TM_FOCUS_BLAST
	object_event 16,  8, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerFisher1MoorOfIcirrus, -1
	object_event 40, 25, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 1, TrainerFisher2MoorOfIcirrus, -1
	object_event  9, 27, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerPicnickerMoorOfIcirrus, -1
	object_event 18, 26, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerCamperMoorOfIcirrus, -1
	