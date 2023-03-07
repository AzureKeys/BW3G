	const_def 2 ; object constants
	const MOOROFICIRRUS_BOULDER
	const MOOROFICIRRUS_MAX_POTION
	const MOOROFICIRRUS_MAX_REVIVE
	const MOOROFICIRRUS_MAX_ELIXER
	const MOOROFICIRRUS_CARBOS
	const MOOROFICIRRUS_HEART_SCALE
	const MOOROFICIRRUS_GREEN_SHARD
	const MOOROFICIRRUS_TM_FOCUS_BLAST
	const MOOROFICIRRUS_FISHER_1
	const MOOROFICIRRUS_FISHER_2
	const MOOROFICIRRUS_PKMN_RANGERF
	const MOOROFICIRRUS_PKMN_RANGERM

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
	;earthquake 80
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

TrainerPkmnRangerFMoorOfIcirrus:
	trainer PKMN_RANGERF, PKMN_RANGERF_MOOR_OF_ICIRRUS, EVENT_BEAT_PKMN_RANGERF_MOOR_OF_ICIRRUS, PkmnRangerFMoorOfIcirrusSeenText, PkmnRangerFMoorOfIcirrusBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PkmnRangerFMoorOfIcirrusAfterText
	waitbutton
	closetext
	end

TrainerPkmnRangerMMoorOfIcirrus:
	trainer PKMN_RANGERM, PKMN_RANGERM_MOOR_OF_ICIRRUS, EVENT_BEAT_PKMN_RANGERM_MOOR_OF_ICIRRUS, PkmnRangerMMoorOfIcirrusSeenText, PkmnRangerMMoorOfIcirrusBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PkmnRangerMMoorOfIcirrusAfterText
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
	
MoorOfIcirrusHeartScale:
	itemball HEART_SCALE
	
MoorOfIcirrusTMFocusBlast:
	itemball TM_FOCUS_BLAST
	
MoorOfIcirrusGreenShard:
	itemball GREEN_SHARD
	
MoorOfIcirrusMaxEther:
	hiddenitem MAX_ETHER, EVENT_MOOR_OF_ICIRRUS_MAX_ETHER
	
MoorOfIcirrusNugget:
	hiddenitem NUGGET, EVENT_MOOR_OF_ICIRRUS_NUGGET
	
MoorOfIcirrusBigMushroom:
	hiddenitem BIG_MUSHROOM, EVENT_MOOR_OF_ICIRRUS_BIG_MUSHROOM
	
MoorOfIcirrusRevive:
	hiddenitem REVIVE, EVENT_MOOR_OF_ICIRRUS_REVIVE
	
Fisher1MoorOfIcirrusSeenText:
	text "Check out my #-"
	line "MON! It took me"
	
	para "100 # BALLs to"
	line "catch it!"
	done

Fisher1MoorOfIcirrusBeatenText:
	text "It doesn't mean"
	line "much if it can't"
	cont "win in battle…"
	done

Fisher1MoorOfIcirrusAfterText:
	text "There are other"
	line "#MON of the"
	
	para "same kind, but I"
	line "feel like I was"
	
	para "destined to be"
	line "with these!"
	done
	
Fisher2MoorOfIcirrusSeenText:
	text "I'll have a battle"
	line "with you using my"
	
	para "freshly caught"
	line "#MON!"
	done

Fisher2MoorOfIcirrusBeatenText:
	text "I had no idea how"
	line "my #MON would"
	cont "fight…"
	done

Fisher2MoorOfIcirrusAfterText:
	text "I may have just"
	line "caught them, but"
	
	para "I'll raise them to"
	line "be strong!"
	done
	
PkmnRangerFMoorOfIcirrusSeenText:
	text "#MON trainers"
	line "nurture friendship"
	cont "with battles!"
	done

PkmnRangerFMoorOfIcirrusBeatenText:
	text "This feeling of"
	line "defeat… It's like a"
	cont "bottomless swamp…"
	done

PkmnRangerFMoorOfIcirrusAfterText:
	text "Stay still and"
	line "listen carefully!"
	
	para "Hear the sounds of"
	line "nearby #MON…"
	
	para "The breath of"
	line "trees and swamps."
	done
	
PkmnRangerMMoorOfIcirrusSeenText:
	text "Knowing oneself,"
	line "knowing the other,"
	
	para "and knowing the"
	line "surroundings…"
	
	para "That's a RANGER!"
	done

PkmnRangerMMoorOfIcirrusBeatenText:
	text "Knowing your "
	line "opponent is a"
	cont "difficult feat!"
	done

PkmnRangerMMoorOfIcirrusAfterText:
	text "If you know what"
	line "kind of wild #-"
	cont "MON inhabit an"
	
	para "area, you can"
	line "bring along #-"
	cont "MON who are strong"
	
	para "against them and"
	line "will have no prob-"
	cont "lem moving ahead."
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

	db 12 ; object events
	object_event 11, 25, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoorOfIcirrusBoulder, EVENT_MOOR_OF_ICIRRUS_BOULDER
	object_event 37, 36, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MoorOfIcirrusMaxPotion, EVENT_MOOR_OF_ICIRRUS_MAX_POTION
	object_event 23,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MoorOfIcirrusMaxRevive, EVENT_MOOR_OF_ICIRRUS_MAX_REVIVE
	object_event 30,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MoorOfIcirrusMaxElixer, EVENT_MOOR_OF_ICIRRUS_MAX_ELIXER
	object_event 36, 30, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MoorOfIcirrusCarbos, EVENT_MOOR_OF_ICIRRUS_CARBOS
	object_event 29, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MoorOfIcirrusHeartScale, EVENT_MOOR_OF_ICIRRUS_HEART_SCALE
	object_event  6, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MoorOfIcirrusGreenShard, EVENT_MOOR_OF_ICIRRUS_GREEN_SHARD
	object_event  7, 37, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, MoorOfIcirrusTMFocusBlast, EVENT_MOOR_OF_ICIRRUS_TM_FOCUS_BLAST
	object_event 16,  8, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerFisher1MoorOfIcirrus, -1
	object_event 40, 25, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 1, TrainerFisher2MoorOfIcirrus, -1
	object_event  9, 27, SPRITE_RANGER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerPkmnRangerFMoorOfIcirrus, -1
	object_event 18, 26, SPRITE_RANGER_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 3, TrainerPkmnRangerMMoorOfIcirrus, -1
	