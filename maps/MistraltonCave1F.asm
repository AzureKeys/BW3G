	const_def 2 ; object constants
	const MISTRALTONCAVE1F_BOULDER_1
	const MISTRALTONCAVE1F_BOULDER_2
	const MISTRALTONCAVE1F_BOULDER_3
	const MISTRALTONCAVE1F_NUGGET
	const MISTRALTONCAVE1F_SMOOTH_ROCK
	const MISTRALTONCAVE1F_HIKER_1
	const MISTRALTONCAVE1F_HIKER_2

MistraltonCave1F_MapScripts:
	db 0 ; scene scripts

	db 2 ; callbacks
	callback MAPCALLBACK_TILES, .SetTiles
	callback MAPCALLBACK_STONETABLE, .SetUpStoneTable
	
.SetTiles:
	checkevent EVENT_MISTRALTON_CAVE_1F_BOULDER_1
	iffalse .check2
	changeblock  6, 12, $6f ; boulder in pit
.check2
	checkevent EVENT_MISTRALTON_CAVE_1F_BOULDER_2
	iffalse .check3
	changeblock 16, 18, $6f ; boulder in pit
.check3
	checkevent EVENT_MISTRALTON_CAVE_1F_BOULDER_3
	iffalse .done
	changeblock  8,  4, $6f ; boulder in pit
.done
	return

.SetUpStoneTable:
	usestonetable .StoneTable
	return

.StoneTable:
	stonetable 3, MISTRALTONCAVE1F_BOULDER_1, .Boulder1
	stonetable 4, MISTRALTONCAVE1F_BOULDER_2, .Boulder2
	stonetable 5, MISTRALTONCAVE1F_BOULDER_3, .Boulder3
	db -1 ; end

.Boulder1:
	pause 30
	scall .FX
	opentext
	writetext MistraltonCave1FBoulderFellText
	waitbutton
	disappear MISTRALTONCAVE1F_BOULDER_1
	changeblock  6, 12, $6f ; boulder in pit
	reloadmappart
	closetext
	end

.Boulder2:
	pause 30
	scall .FX
	opentext
	writetext MistraltonCave1FBoulderFellText
	waitbutton
	disappear MISTRALTONCAVE1F_BOULDER_2
	changeblock 16, 18, $6f ; boulder in pit
	reloadmappart
	closetext
	end

.Boulder3:
	pause 30
	scall .FX
	opentext
	writetext MistraltonCave1FBoulderFellText
	waitbutton
	disappear MISTRALTONCAVE1F_BOULDER_3
	changeblock  8,  4, $6f ; boulder in pit
	reloadmappart
	closetext
	end

.FX:
	playsound SFX_STRENGTH
	;earthquake 80
	end

TrainerHiker1MistraltonCave:
	trainer HIKER, HIKER_MISTRALTON_CAVE_1, EVENT_BEAT_HIKER_MISTRALTON_CAVE_1, Hiker1MistraltonCaveSeenText, Hiker1MistraltonCaveBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Hiker1MistraltonCaveAfterText
	waitbutton
	closetext
	end

TrainerHiker2MistraltonCave:
	trainer HIKER_D, HIKER_MISTRALTON_CAVE_2, EVENT_BEAT_HIKER_MISTRALTON_CAVE_2, Hiker2MistraltonCaveSeenText, Hiker2MistraltonCaveBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Hiker2MistraltonCaveAfterText
	waitbutton
	closetext
	end
	
MistraltonCave1FBoulder:
	jumpstd strengthboulder
	
MistraltonCave1FNugget:
	itemball NUGGET
	
MistraltonCave1FSmoothRock:
	itemball SMOOTH_ROCK
	
MistraltonCave1FCarbos:
	hiddenitem CARBOS, EVENT_MISTRALTON_CAVE_CARBOS
	
Hiker1MistraltonCaveSeenText:
	text "Whooo! Mountain!!"
	done

Hiker1MistraltonCaveBeatenText:
	text "Let the scales"
	line "fall from your"
	cont "eyes!"
	done

Hiker1MistraltonCaveAfterText:
	text "Mountains are"
	line "sacred places. I"
	
	para "am here to purify"
	line "my heart and mind."
	done
	
Hiker2MistraltonCaveSeenText:
	text "I'll knock you"
	line "down with mountain"
	cont "power!"
	done

Hiker2MistraltonCaveBeatenText:
	text "Your power is off"
	line "the charts!"
	done

Hiker2MistraltonCaveAfterText:
	text "As great as a"
	line "mountain… That's"
	
	para "right! I'll become"
	line "a mountain man!"
	
	para "Oh wait, I suppose"
	line "I already am!"
	done
	
MistraltonCave1FBoulderFellText:
	text "The boulder fell"
	line "through!"
	done

MistraltonCave1F_MapEvents:
	db 0, 0 ; filler

	db 5 ; warp events
	warp_event  3,  3, R_6, 6
	warp_event 13,  9, MISTRALTON_CAVE_2F, 1
	warp_event  7, 12, MISTRALTON_CAVE_1F, 1
	warp_event 17, 18, MISTRALTON_CAVE_1F, 1
	warp_event  9,  4, MISTRALTON_CAVE_1F, 1

	db 0 ; coord events

	db 1 ; bg events
	bg_event  9,  2, BGEVENT_ITEM, MistraltonCave1FCarbos
	
	db 6 ; object events
	object_event  7,  8, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MistraltonCave1FBoulder, EVENT_MISTRALTON_CAVE_1F_BOULDER_1
	object_event 15, 18, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MistraltonCave1FBoulder, EVENT_MISTRALTON_CAVE_1F_BOULDER_2
	object_event 10,  4, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MistraltonCave1FBoulder, EVENT_MISTRALTON_CAVE_1F_BOULDER_3
	object_event 23,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MistraltonCave1FNugget, EVENT_MISTRALTON_CAVE_NUGGET
	object_event 12, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MistraltonCave1FSmoothRock, EVENT_MISTRALTON_CAVE_SMOOTH_ROCK
	object_event 12, 17, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerHiker1MistraltonCave, -1
	object_event 18,  4, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 2, TrainerHiker2MistraltonCave, -1
	