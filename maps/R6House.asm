	const_def 2 ; object constants
	const R6HOUSE_WOMAN

Rt6House_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

R6HouseWomanScript:
	faceplayer
	opentext
	writetext R6HouseHealText
	waitbutton
	closetext
	special FadeOutPalettes
	special StubbedTrainerRankings_Healings
	playsound SFX_FULL_HEAL
	special HealParty
	special FadeInPalettes
	opentext
	writetext R6HouseHealedText
	waitbutton
	closetext
	end

R6HouseBookshelf:
	jumpstd magazinebookshelf

R6HouseHealText:
	text "Oh, your #MON"
	line "look tired. You"

	para "should let them"
	line "rest for a bit."
	done

R6HouseHealedText:
	text "Your #MON are"
	line "all refreshed!"
	done

Rt6House_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, R_6, 1
	warp_event  3,  7, R_6, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, R6HouseBookshelf
	bg_event  1,  1, BGEVENT_READ, R6HouseBookshelf

	db 1 ; object events
	object_event  2,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, R6HouseWomanScript, -1
	