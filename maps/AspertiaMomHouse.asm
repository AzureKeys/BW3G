	const_def 2 ; object constants
	const ASPERTIAMOMHOUSE_MOM

AspertiaMomHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

AspertiaMomScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM_RETURN
	iftrue .GotTM
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .female
	writetext AspertiaMomIntroTextM
	jump .check
.female
	writetext AspertiaMomIntroTextF
.check
	buttonsound
	special GetFirstPokemonHappiness
	ifgreater 150 - 1, .VeryHappy
	ifgreater 50 - 1, .SomewhatHappy
	jump .NotVeryHappy

.VeryHappy:
	writetext AspertiaMomVeryHappyText
	buttonsound
	verbosegiveitem TM_RETURN
	setevent EVENT_GOT_TM_RETURN
	closetext
	end

.SomewhatHappy:
	writetext AspertiaMomSomewhatHappyText
	waitbutton
	closetext
	end

.NotVeryHappy:
	writetext AspertiaMomNotVeryHappyText
	waitbutton
	closetext
	end
	
.GotTM:
	writetext AspertiaMomGaveTMText
	waitbutton
	closetext
	end

AspertiaMomHouseBookshelf:
	jumpstd magazinebookshelf

AspertiaMomHouseFridge:
	jumptext AspertiaMomHouseFridgeText

AspertiaMomIntroTextM:
	text "You're a #MON"
	line "trainer, right?"

	para "My son is a #-"
	line "MON trainer too."
	
	para "He always treated"
	line "his #MON with"
	cont "care."
	done

AspertiaMomIntroTextF:
	text "You're a #MON"
	line "trainer, right?"

	para "My daughter is a"
	line "#MON trainer"
	cont "too."
	
	para "She always treated"
	line "her #MON with"
	cont "care."
	done

AspertiaMomVeryHappyText:
	text "Oh! Your #MON"
	line "is very happy!"

	para "Here, you should"
	line "give it this TM!"
	done

AspertiaMomSomewhatHappyText:
	text "Oh, your #MON"
	line "is pretty happy."

	para "You should come"
	line "show it to me when"
	cont "it's even happier!"
	done

AspertiaMomNotVeryHappyText:
	text "Oh, your #MON"
	line "is not happy at"
	cont "all…"

	para "You should really"
	line "treat it better…"
	done

AspertiaMomGaveTMText:
	text "The move RETURN"
	line "becomes stronger"

	para "the friendlier"
	line "your #MON is"
	cont "toward you."
	
	para "Give it to your"
	line "favorite #MON!"
	done
	
AspertiaMomHouseFridgeText:
	text "Better not mess"
	line "around in their"
	cont "fridge."
	done

AspertiaMomHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4,  7, ASPERTIA_CITY, 4
	warp_event  5,  7, ASPERTIA_CITY, 4

	db 0 ; coord events

	db 2 ; bg events
	bg_event  3,  1, BGEVENT_READ, AspertiaMomHouseFridge
	bg_event  9,  1, BGEVENT_READ, AspertiaMomHouseBookshelf

	db 1 ; object events
	object_event  5,  4, SPRITE_MOM, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, AspertiaMomScript, -1
	