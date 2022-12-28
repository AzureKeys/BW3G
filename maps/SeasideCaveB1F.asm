	const_def 2 ; object constants
	const SEASIDECAVEB1F_BOULDER_1
	const SEASIDECAVEB1F_BOULDER_2
	const SEASIDECAVEB1F_BOULDER_3
	const SEASIDECAVEB1F_BOULDER_4
	const SEASIDECAVEB1F_BOULDER_5
	const SEASIDECAVEB1F_BLACKBELT
	const SEASIDECAVEB1F_BATTLE_GIRL
	const SEASIDECAVEB1F_ICY_ROCK

SeasideCaveB1F_MapScripts:
	db 0 ; scene scripts

	db 2 ; callbacks
	callback MAPCALLBACK_TILES, .Boulders
	callback MAPCALLBACK_STONETABLE, .SetUpStoneTable

.Boulders:
	checkevent EVENT_SEASIDE_CAVE_BOULDER_1
	iffalse .check2
	changeblock  8, 20, $62 ; boulder in pit
.check2
	checkevent EVENT_SEASIDE_CAVE_BOULDER_2
	iffalse .check3
	changeblock 16, 18, $62 ; boulder in pit
.check3
	checkevent EVENT_SEASIDE_CAVE_BOULDER_3
	iffalse .check4
	changeblock 16, 12, $6B ; boulder in pit
.check4
	checkevent EVENT_SEASIDE_CAVE_BOULDER_4
	iffalse .check5
	changeblock 16, 16, $66 ; boulder in pit
.check5
	checkevent EVENT_SEASIDE_CAVE_BOULDER_5
	iffalse .done
	changeblock 18, 12, $66 ; boulder in pit
.done
	return

.SetUpStoneTable:
	usestonetable .StoneTable
	return

.StoneTable:
	stonetable 3, SEASIDECAVEB1F_BOULDER_1, .Boulder1
	stonetable 4, SEASIDECAVEB1F_BOULDER_2, .Boulder2
	stonetable 5, SEASIDECAVEB1F_BOULDER_3, .Boulder3
	stonetable 6, SEASIDECAVEB1F_BOULDER_4, .Boulder4
	stonetable 7, SEASIDECAVEB1F_BOULDER_5, .Boulder5
	db -1 ; end

.Boulder1:
	pause 30
	scall .FX
	opentext
	writetext SeasideCaveB1FBoulderFellText
	waitbutton
	disappear SEASIDECAVEB1F_BOULDER_1
	changeblock  8, 20, $62 ; boulder in pit
	reloadmappart
	closetext
	end

.Boulder2:
	pause 30
	scall .FX
	opentext
	writetext SeasideCaveB1FBoulderFellText
	waitbutton
	disappear SEASIDECAVEB1F_BOULDER_2
	changeblock 16, 18, $62 ; boulder in pit
	reloadmappart
	closetext
	end

.Boulder3:
	pause 30
	scall .FX
	opentext
	writetext SeasideCaveB1FBoulderFellText
	waitbutton
	disappear SEASIDECAVEB1F_BOULDER_3
	changeblock 16, 12, $6B ; boulder in pit
	reloadmappart
	closetext
	end

.Boulder4:
	pause 30
	scall .FX
	opentext
	writetext SeasideCaveB1FBoulderFellText
	waitbutton
	disappear SEASIDECAVEB1F_BOULDER_4
	changeblock 16, 16, $66 ; boulder in pit
	reloadmappart
	closetext
	end

.Boulder5:
	pause 30
	scall .FX
	opentext
	writetext SeasideCaveB1FBoulderFellText
	waitbutton
	disappear SEASIDECAVEB1F_BOULDER_5
	changeblock 18, 12, $66 ; boulder in pit
	reloadmappart
	closetext
	end

.FX:
	playsound SFX_STRENGTH
	earthquake 80
	end
	
SeasideCaveBoulder:
	jumpstd strengthboulder

TrainerBlackbeltSeasideCaveB1F:
	trainer BLACKBELT_T, BLACKBELT_SEASIDE_CAVE_2, EVENT_BEAT_BLACKBELT_SEASIDE_CAVE_2, BlackbeltSeasideCaveB1FSeenText, BlackbeltSeasideCaveB1FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BlackbeltSeasideCaveB1FAfterText
	waitbutton
	closetext
	end

TrainerBattleGirlSeasideCaveB1F:
	trainer BATTLE_GIRL, BATTLE_GIRL_SEASIDE_CAVE_2, EVENT_BEAT_BATTLE_GIRL_SEASIDE_CAVE_2, BattleGirlSeasideCaveB1FSeenText, BattleGirlSeasideCaveB1FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BattleGirlSeasideCaveB1FAfterText
	waitbutton
	closetext
	end
	
SeasideCaveB1FIcyRock:
	itemball ICY_ROCK
	
BlackbeltSeasideCaveB1FSeenText:
	text "I will never turn"
	line "my back and run!"
	done

BlackbeltSeasideCaveB1FBeatenText:
	text "Ugh… Sometimes you"
	line "must retreat to"
	cont "win."
	done

BlackbeltSeasideCaveB1FAfterText:
	text "I will reexamine"
	line "my own weaknesses."

	para "At times I may"
	line "hate myself for"
	
	para "doing so, but I"
	line "cannot run from"
	cont "myself!"
	done
	
BattleGirlSeasideCaveB1FSeenText:
	text "My training will"
	line "never betray me."

	para "After training"
	line "this much, I am"
	cont "certain to win!"
	done

BattleGirlSeasideCaveB1FBeatenText:
	text "…how can that be?"
	line "even after I"
	cont "trained so much?"
	done

BattleGirlSeasideCaveB1FAfterText:
	text "Defeat leads to"
	line "enlightenment. I"

	para "realize now my own"
	line "deficiency… But I"
	
	para "will not make"
	line "excuses! I will"
	
	para "use this knowledge"
	line "as fuel for"
	cont "tomorrow!"
	done
	
SeasideCaveB1FBoulderFellText:
	text "The boulder fell"
	line "through!"
	done

SeasideCaveB1F_MapEvents:
	db 0, 0 ; filler

	db 8 ; warp events
	warp_event  5, 13, SEASIDE_CAVE_1F, 3
	warp_event 13, 11, SEASIDE_CAVE_1F, 4
	warp_event  8, 20, SEASIDE_CAVE_B1F, 1
	warp_event 16, 18, SEASIDE_CAVE_B1F, 1
	warp_event 16, 13, SEASIDE_CAVE_B1F, 1
	warp_event 17, 16, SEASIDE_CAVE_B1F, 1
	warp_event 19, 12, SEASIDE_CAVE_B1F, 1
	warp_event 15,  3, SEASIDE_CAVE_B2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 8 ; object events
	object_event  6, 20, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeasideCaveBoulder, EVENT_SEASIDE_CAVE_BOULDER_1
	object_event 18, 18, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeasideCaveBoulder, EVENT_SEASIDE_CAVE_BOULDER_2
	object_event 15, 16, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeasideCaveBoulder, EVENT_SEASIDE_CAVE_BOULDER_3
	object_event 17, 13, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeasideCaveBoulder, EVENT_SEASIDE_CAVE_BOULDER_4
	object_event 19, 14, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeasideCaveBoulder, EVENT_SEASIDE_CAVE_BOULDER_5
	object_event 16, 10, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerBlackbeltSeasideCaveB1F, -1
	object_event 15, 20, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBattleGirlSeasideCaveB1F, -1
	object_event 20, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeasideCaveB1FIcyRock, EVENT_SEASIDE_CAVE_ICY_ROCK
	