	const_def 2 ; object constants
	const TWISTMOUNTAINHOUSE_MAN

TwistMountainHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TwistMountainHouseManScript:
	faceplayer
	opentext
	writetext TwistMountainHouseHealText
	waitbutton
	closetext
	special FadeOutPalettes
	special StubbedTrainerRankings_Healings
	playsound SFX_FULL_HEAL
	special HealParty
	special FadeInPalettes
	opentext
	writetext TwistMountainHouseHealedText
	waitbutton
	closetext
	end

TwistMountainHouseBookshelf:
	jumpstd magazinebookshelf

TwistMountainHouseHealText:
	text "Howdy traveler!"
	line "You must've come a"
	
	para "long way to get"
	line "here. How's about"

	para "a little rest for"
	line "your #MON, eh?"
	done

TwistMountainHouseHealedText:
	text "Be careful out"
	line "there now, hear?"
	done

TwistMountainHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, TWIST_MOUNTAIN_OUTSIDE, 17
	warp_event  3,  7, TWIST_MOUNTAIN_OUTSIDE, 17

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, TwistMountainHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, TwistMountainHouseBookshelf

	db 1 ; object events
	object_event  2,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, TwistMountainHouseManScript, -1
	