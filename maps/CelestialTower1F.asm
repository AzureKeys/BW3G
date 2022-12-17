	const_def 2 ; object constants
	const CELESTIALTOWER1F_SKYLA
	const CELESTIALTOWER1F_NURSE

CelestialTower1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
CelestialTowerSkylaScript:
	faceplayer
	opentext
	writetext CelestialTowerSkylaText
	waitbutton
	closetext
	checkcode VAR_FACING
	ifequal UP, .goaround
	applymovement CELESTIALTOWER1F_SKYLA, CelestialTowerSkylaMovement
	jump .donemoving
.goaround
	applymovement CELESTIALTOWER1F_SKYLA, CelestialTowerSkylaGoAroundMovement
.donemoving
	playsound SFX_ENTER_DOOR
	waitsfx
	disappear CELESTIALTOWER1F_SKYLA
	setmapscene MISTRALTON_CITY, SCENE_FINISHED
	end
	
TrainerNurseCelestialTower:
	trainer NURSE, NURSE_CELESTIAL_TOWER, EVENT_BEAT_NURSE_CELESTIAL_TOWER, CelestialTowerNurseIntroText, CelestialTowerNurseWinText, 0, .Script

.Script:
	faceplayer
	opentext
	writetext CelestialTowerNurseHealText
	waitbutton
	closetext
	special StubbedTrainerRankings_Healings
	playsound SFX_FULL_HEAL
	special HealParty
	end

CelestialTowerSkylaMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

CelestialTowerSkylaGoAroundMovement:
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end
	
CelestialTowerSkylaText:
	text "Hi, I'm SKYLA!"
	line "I'm the MISTRALTON"
	cont "CITY GYM LEADER."

	para "Did you come to"
	line "honor the spirits?"
	
	para "Whenever I'm here,"
	line "I always feel so"
	cont "zen."
	
	para "You know what I"
	line "mean?"
	
	para "What?"
	
	para "Oh! You wanted to"
	line "battle me at the"
	cont "GYM?"
	
	para "Hee hee, I guess I"
	line "lost track of"
	cont "time. Whoops!"
	
	para "I'd better get"
	line "back to town."
	
	para "Come by if you"
	line "want to challenge"
	cont "me!"
	done
	
CelestialTowerNurseIntroText:
	text "I'm a nurse, but"
	line "I'm also a #-"
	cont "MON trainer."

	para "If you can defeat"
	line "me in a battle,"
	cont "I'll heal your"
	cont "#MON."
	done
	
CelestialTowerNurseWinText:
	text "Ah, I see."
	done
	
CelestialTowerNurseHealText:
	text "I'll restore your"
	line "#MON back to"
	cont "full health."
	done

CelestialTower1F_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  4, 11, R_7, 2
	warp_event  5, 11, R_7, 2
	warp_event  2,  9, CELESTIAL_TOWER, 1
	warp_event  2, 10, CELESTIAL_TOWER, 2

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  5,  6, SPRITE_SKYLA, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CelestialTowerSkylaScript, EVENT_SKYLA_RETURNED
	object_event  3,  9, SPRITE_BUENA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerNurseCelestialTower, -1
	