	const_def 2 ; object constants
	const R18HOUSE_WOMAN

Rt18House_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

R18HouseWomanScript:
	faceplayer
	opentext
	writetext R18HouseHealText
	waitbutton
	closetext
	special FadeOutPalettes
	special StubbedTrainerRankings_Healings
	playsound SFX_FULL_HEAL
	special HealParty
	special FadeInPalettes
	opentext
	writetext R18HouseHealedText
	waitbutton
	closetext
	end

R18HouseBookshelf:
	jumpstd magazinebookshelf

R18HouseHealText:
	text "Oh, you must have"
	line "traveled a long"
	cont "way to get here."

	para "You should let"
	line "your #MON rest."
	done

R18HouseHealedText:
	text "Good luck with"
	line "your journey!"
	done

Rt18House_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, R_18, 1
	warp_event  3,  7, R_18, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, R18HouseBookshelf
	bg_event  1,  1, BGEVENT_READ, R18HouseBookshelf

	db 1 ; object events
	object_event  2,  4, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, R18HouseWomanScript, -1
	