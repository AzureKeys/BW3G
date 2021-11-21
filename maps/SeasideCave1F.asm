	const_def 2 ; object constants
	const SEASIDECAVE1F_FULL_RESTORE
	const SEASIDECAVE1F_MAX_REVIVE
	const SEASIDECAVE1F_RARE_CANDY
	const SEASIDECAVE1F_NURSE
	const SEASIDECAVE1F_VETERAN
	const SEASIDECAVE1F_BLACKBELT
	const SEASIDECAVE1F_BATTLE_GIRL

SeasideCave1F_MapScripts:
	db 1 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT

	db 1 ; callbacks
	callback MAPCALLBACK_TILES, .SetTiles

.DummyScene0:
	end
	
.SetTiles:
	checkevent EVENT_SEASIDE_CAVE_LOWER_FLOOR
	iffalse .done
	changeblock  8, 24, $5C ; left wall bridge
	changeblock 10, 24, $5E ; under bridge
	changeblock 12, 24, $5D ; right wall bridge
.done
	return
	
SeasideCaveLowerFloorScript:
	checkevent EVENT_SEASIDE_CAVE_LOWER_FLOOR
	iftrue .done
	changeblock  8, 24, $5C ; left wall bridge
	changeblock 10, 24, $5E ; under bridge
	changeblock 12, 24, $5D ; right wall bridge
	setevent EVENT_SEASIDE_CAVE_LOWER_FLOOR
.done
	end
	
SeasideCaveUpperFloorScript:
	checkevent EVENT_SEASIDE_CAVE_LOWER_FLOOR
	iffalse .done
	changeblock  8, 24, $5F ; over bridge
	changeblock 10, 24, $5F ; over bridge
	changeblock 12, 24, $5F ; over bridge
	clearevent EVENT_SEASIDE_CAVE_LOWER_FLOOR
.done
	end
	
TrainerNurseSeasideCave1F:
	faceplayer
	opentext
	checkevent EVENT_BEAT_NURSE_SEASIDE_CAVE
	iftrue .beaten
	writetext SeasideCaveNurseIntroText
	waitbutton
	closetext
	winlosstext SeasideCaveNurseWinText, 0
	setlasttalked SEASIDECAVE1F_NURSE
	loadtrainer NURSE, NURSE_SEASIDE_CAVE
	writecode VAR_BATTLETYPE, BATTLETYPE_NORMAL
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_NURSE_SEASIDE_CAVE
	opentext
.beaten
	writetext SeasideCaveNurseHealText
	waitbutton
	closetext
	special StubbedTrainerRankings_Healings
	playsound SFX_FULL_HEAL
	special HealParty
	end

TrainerVeteranSeasideCave1F:
	trainer VETERAN, VETERAN_SEASIDE_CAVE, EVENT_BEAT_VETERAN_SEASIDE_CAVE, VeteranSeasideCave1FSeenText, VeteranSeasideCave1FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext VeteranSeasideCave1FAfterText
	waitbutton
	closetext
	end

TrainerBlackbeltSeasideCave1F:
	trainer BLACKBELT_T, BLACKBELT_SEASIDE_CAVE_1, EVENT_BEAT_BLACKBELT_SEASIDE_CAVE_1, BlackbeltSeasideCave1FSeenText, BlackbeltSeasideCave1FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BlackbeltSeasideCave1FAfterText
	waitbutton
	closetext
	end

TrainerBattleGirlSeasideCave1F:
	trainer BATTLE_GIRL, BATTLE_GIRL_SEASIDE_CAVE_1, EVENT_BEAT_BATTLE_GIRL_SEASIDE_CAVE_1, BattleGirlSeasideCave1FSeenText, BattleGirlSeasideCave1FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BattleGirlSeasideCave1FAfterText
	waitbutton
	closetext
	end
	
SeasideCave1FFullRestore:
	itemball FULL_RESTORE
	
SeasideCave1FMaxRevive:
	itemball MAX_REVIVE
	
SeasideCave1FRareCandy:
	itemball RARE_CANDY
	
SeasideCave1FCalcium:
	hiddenitem CALCIUM, EVENT_SEASIDE_CAVE_CALCIUM
	
SeasideCaveNurseIntroText:
	text "I'm a nurse, but"
	line "I'm also a #-"
	cont "MON trainer."

	para "If you can defeat"
	line "me in a battle,"
	cont "I'll heal your"
	cont "#MON."
	done
	
SeasideCaveNurseWinText:
	text "Ah, I see."
	done
	
SeasideCaveNurseHealText:
	text "I'll restore your"
	line "#MON back to"
	cont "full health."
	done
	
VeteranSeasideCave1FSeenText:
	text "You look strong."

	para "Good trainers seek"
	line "tough opponents"
	cont "instinctively."
	done

VeteranSeasideCave1FBeatenText:
	text "Nope! This won't"
	line "do at all."
	done

VeteranSeasideCave1FAfterText:
	text "We all get better"
	line "by experiencing"
	cont "many battles."

	para "I battled a lot to"
	line "become what I am"
	cont "today--an elite."
	done
	
BlackbeltSeasideCave1FSeenText:
	text "Yo! You're spunky!"
	line "But you know what?"

	para "When it comes to"
	line "sheer spunkiness,"
	cont "I'm the man!"
	done

BlackbeltSeasideCave1FBeatenText:
	text "My #MON weren't"
	line "spunky enough!"
	done

BlackbeltSeasideCave1FAfterText:
	text "Boy, do I love"
	line "HP UP! Mmmm, yum!"

	para "I keep drinking my"
	line "#MON's!"

	para "I can't help it!"
	done
	
BattleGirlSeasideCave1FSeenText:
	text "My #MON and I"
	line "are bound togeth-"
	cont "er by friendship."

	para "Our bond will"
	line "never be broken!"
	done

BattleGirlSeasideCave1FBeatenText:
	text "This isn't real!"
	done

BattleGirlSeasideCave1FAfterText:
	text "You seem to have a"
	line "strong bond with"
	cont "your #MON too!"
	done

SeasideCave1F_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  5,  5, R_21, 1
	warp_event  5, 33, UNDELLA_TOWN, 6
	warp_event 13,  9, SEASIDE_CAVE_B1F, 1
	warp_event 19,  3, SEASIDE_CAVE_B1F, 2

	db 6 ; coord events
	coord_event  5,  6, SCENE_DEFAULT, SeasideCaveUpperFloorScript
	coord_event  5, 33, SCENE_DEFAULT, SeasideCaveUpperFloorScript
	coord_event  8, 17, SCENE_DEFAULT, SeasideCaveUpperFloorScript
	coord_event  9,  2, SCENE_DEFAULT, SeasideCaveUpperFloorScript
	coord_event 11,  3, SCENE_DEFAULT, SeasideCaveLowerFloorScript
	coord_event  8, 19, SCENE_DEFAULT, SeasideCaveLowerFloorScript

	db 1 ; bg events
	bg_event  2, 22, BGEVENT_ITEM, SeasideCave1FCalcium

	db 7 ; object events
	object_event 17, 31, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeasideCave1FFullRestore, EVENT_SEASIDE_CAVE_FULL_RESTORE
	object_event  7, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeasideCave1FMaxRevive, EVENT_SEASIDE_CAVE_MAX_REVIVE
	object_event  8,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeasideCave1FRareCandy, EVENT_SEASIDE_CAVE_RARE_CANDY
	object_event  4,  6, SPRITE_BUENA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TrainerNurseSeasideCave1F, -1
	object_event  3, 15, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 1, TrainerVeteranSeasideCave1F, -1
	object_event  3, 25, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBlackbeltSeasideCave1F, -1
	object_event  9, 11, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBattleGirlSeasideCave1F, -1
	