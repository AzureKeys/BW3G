	const_def 2 ; object constants
	const SEASIDECAVE1F_FULL_RESTORE
	const SEASIDECAVE1F_MAX_REVIVE
	const SEASIDECAVE1F_RARE_CANDY
	const SEASIDECAVE1F_DIVE_BALL
	const SEASIDECAVE1F_HEART_SCALE
	const SEASIDECAVE1F_BLUE_SHARD
	const SEASIDECAVE1F_DOCTOR
	const SEASIDECAVE1F_VETERANF
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
	
TrainerDoctorSeasideCave1F:
	trainer DOCTOR, DOCTOR_SEASIDE_CAVE, EVENT_BEAT_DOCTOR_SEASIDE_CAVE, SeasideCaveDoctorIntroText, SeasideCaveDoctorWinText, 0, .Script

.Script:
	faceplayer
	opentext
	writetext SeasideCaveDoctorHealText
	waitbutton
	closetext
	special StubbedTrainerRankings_Healings
	playsound SFX_FULL_HEAL
	special HealParty
	end

TrainerVeteranFSeasideCave1F:
	trainer VETERANF, VETERANF_SEASIDE_CAVE, EVENT_BEAT_VETERANF_SEASIDE_CAVE, VeteranFSeasideCave1FSeenText, VeteranFSeasideCave1FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext VeteranFSeasideCave1FAfterText
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
	
SeasideCave1FDiveBall:
	itemball DIVE_BALL
	
SeasideCave1FHeartScale:
	itemball HEART_SCALE
	
SeasideCave1FBlueShard:
	itemball BLUE_SHARD
	
SeasideCave1FCalcium:
	hiddenitem CALCIUM, EVENT_SEASIDE_CAVE_CALCIUM
	
SeasideCaveDoctorIntroText:
	text "I'm a doctor, but"
	line "I'm also a #-"
	cont "MON trainer."

	para "If you can defeat"
	line "me in a battle,"
	cont "I'll heal your"
	cont "#MON."
	done
	
SeasideCaveDoctorWinText:
	text "Ah, I see."
	done
	
SeasideCaveDoctorHealText:
	text "I'll restore your"
	line "#MON back to"
	cont "full health."
	done
	
VeteranFSeasideCave1FSeenText:
	text "Let me show you"
	line "the #MON that I"
	cont "met by fate!"
	done

VeteranFSeasideCave1FBeatenText:
	text "The #MON that"
	line "you've met are"
	
	para "quite formidable,"
	line "aren't they?"
	done

VeteranFSeasideCave1FAfterText:
	text "Young kids sure"
	line "have it good. They"

	para "get to meet all"
	line "kinds of #MON!"
	done
	
BlackbeltSeasideCave1FSeenText:
	text "The path of karate"
	line "is the path of"

	para "humanity… and the"
	line "path of #MON!"
	done

BlackbeltSeasideCave1FBeatenText:
	text "Oof! It is not by"
	line "chance that you"
	cont "have won!"
	done

BlackbeltSeasideCave1FAfterText:
	text "Winners win"
	line "because they"
	cont "deserve to win!"
	done
	
BattleGirlSeasideCave1FSeenText:
	text "Greetings! So…"
	line "shall we do this?"
	done

BattleGirlSeasideCave1FBeatenText:
	text "What an upset!"
	done

BattleGirlSeasideCave1FAfterText:
	text "Hmm… I just can't"
	line "act naturally when"
	
	para "I'm focused on"
	line "winning!"
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

	db 10 ; object events
	object_event 17, 31, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeasideCave1FFullRestore, EVENT_SEASIDE_CAVE_FULL_RESTORE
	object_event  7, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeasideCave1FMaxRevive, EVENT_SEASIDE_CAVE_MAX_REVIVE
	object_event  8,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeasideCave1FRareCandy, EVENT_SEASIDE_CAVE_RARE_CANDY
	object_event 14, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeasideCave1FDiveBall, EVENT_SEASIDE_CAVE_DIVE_BALL
	object_event  6, 28, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeasideCave1FHeartScale, EVENT_SEASIDE_CAVE_HEART_SCALE
	object_event 14, 26, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeasideCave1FBlueShard, EVENT_SEASIDE_CAVE_BLUE_SHARD
	object_event  4,  6, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerDoctorSeasideCave1F, -1
	object_event  3, 15, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 1, TrainerVeteranFSeasideCave1F, -1
	object_event  3, 25, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBlackbeltSeasideCave1F, -1
	object_event  9, 11, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBattleGirlSeasideCave1F, -1
	