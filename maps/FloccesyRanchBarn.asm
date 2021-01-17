	const_def 2 ; object constants
	const FLOCCESYRANCHBARN_TWIN1
	const FLOCCESYRANCHBARN_TWIN2
	const FLOCCESYRANCHBARN_MOOMOO

FloccesyRanchBarn_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

FloccesyRanchBarnTwin1Script:
	faceplayer
	opentext
	checkevent EVENT_HEALED_MOOMOO
	iftrue .FeedingMooMoo
	writetext FloccesyRanchBarnTwinMoomooIsSickText
	waitbutton
	closetext
	turnobject FLOCCESYRANCHBARN_TWIN1, RIGHT
	end

.FeedingMooMoo:
	checkevent EVENT_GOT_MAGIC_RIBBON
	iftrue .GotRibbon
	writetext FloccesyRanchBarnTwinGiveRibbonText
	buttonsound
	verbosegiveitem MAGIC_RIBBON
	iffalse .noroom
	setevent EVENT_GOT_MAGIC_RIBBON
	writetext FloccesyRanchBarnTwinWereFeedingMoomooText
.noroom
	waitbutton
	closetext
	end
	
.GotRibbon:
	writetext FloccesyRanchBarnTwinWereFeedingMoomooText
	waitbutton
	closetext
	turnobject FLOCCESYRANCHBARN_TWIN1, RIGHT
	end

FloccesyRanchBarnTwin2Script:
	faceplayer
	opentext
	checkevent EVENT_HEALED_MOOMOO
	iftrue .FeedingMooMoo
	writetext FloccesyRanchBarnTwinMoomooIsSickText
	waitbutton
	closetext
	turnobject FLOCCESYRANCHBARN_TWIN2, LEFT
	end

.FeedingMooMoo:
	checkevent EVENT_GOT_MAGIC_RIBBON
	iftrue .GotRibbon
	writetext FloccesyRanchBarnTwinGiveRibbonText
	buttonsound
	verbosegiveitem MAGIC_RIBBON
	iffalse .noroom
	setevent EVENT_GOT_MAGIC_RIBBON
	writetext FloccesyRanchBarnTwinWereFeedingMoomooText
.noroom
	waitbutton
	closetext
	end

.GotRibbon:
	writetext FloccesyRanchBarnTwinWereFeedingMoomooText
	waitbutton
	closetext
	turnobject FLOCCESYRANCHBARN_TWIN2, LEFT
	end

MoomooScript:
	opentext
	checkevent EVENT_HEALED_MOOMOO
	iftrue .HappyCow
	writetext MoomooWeakMooText
	writebyte FLAAFFY
	special PlaySlowCry
	buttonsound
	writetext FloccesyRanchBarnItsCryIsWeakText
	buttonsound
	writetext FloccesyRanchBarnAskGiveBerryText
	yesorno
	iffalse .Refused
	checkitem BERRY
	iffalse .NoBerriesInBag
	takeitem BERRY
	copybytetovar wMooMooBerries
	addvar 1
	copyvartobyte wMooMooBerries
	ifequal 2, .ThreeBerries
	ifequal 3, .ThreeBerries
	ifequal 4, .FiveBerries
	ifequal 5, .SevenBerries
	writetext FloccesyRanchBarnGaveBerryText
	waitbutton
	closetext
	end

.ThreeBerries:
	writetext FloccesyRanchBarnGaveBerryText
	buttonsound
	writetext FloccesyRanchBarnLittleHealthierText
	waitbutton
	closetext
	end

.FiveBerries:
	writetext FloccesyRanchBarnGaveBerryText
	buttonsound
	writetext FloccesyRanchBarnQuiteHealthyText
	waitbutton
	closetext
	end

.SevenBerries:
	playmusic MUSIC_HEAL
	writetext FloccesyRanchBarnGaveBerryText
	pause 60
	buttonsound
	special RestartMapMusic
	writetext FloccesyRanchBarnTotallyHealthyText
	waitbutton
	closetext
	setevent EVENT_HEALED_MOOMOO
	end

.NoBerriesInBag:
	writetext FloccesyRanchBarnNoBerriesText
	waitbutton
	closetext
	end

.Refused:
	writetext FloccesyRanchBarnRefusedBerryText
	waitbutton
	closetext
	end

.HappyCow:
	writetext MoomooHappyMooText
	cry FLAAFFY
	waitbutton
	closetext
	end

FloccesyRanchBarnTwinMoomooIsSickText:
	text "WOOLIE is sick…"

	para "She needs lots of"
	line "BERRIES."
	done

FloccesyRanchBarnTwinWereFeedingMoomooText:
	text "I want to put my"
	line "ribbon on one of"
	cont "the EEVEEs that"
	cont "play outside."
	
	para "It would look so"
	line "cute!"
	done

FloccesyRanchBarnTwinGiveRibbonText:
	text "Thanks for healing"
	line "WOOLIE!"
	
	para "You can have her"
	line "special ribbon as"
	cont "thanks!"
	done

MoomooWeakMooText:
	text "WOOLIE: …Moo…"
	done

FloccesyRanchBarnItsCryIsWeakText:
	text "Its cry is weak…"
	done

MoomooHappyMooText:
	text "WOOLIE: Mooo!"
	done

FloccesyRanchBarnAskGiveBerryText:
	text "Give a BERRY to"
	line "FLAAFFY?"
	done

FloccesyRanchBarnGaveBerryText:
	text "<PLAYER> gave a"
	line "BERRY to FLAAFFY."
	done

FloccesyRanchBarnLittleHealthierText:
	text "FLAAFFY became a"
	line "little healthier!"
	done

FloccesyRanchBarnQuiteHealthyText:
	text "FLAAFFY became"
	line "quite healthy!"
	done

FloccesyRanchBarnTotallyHealthyText:
	text "FLAAFFY became"
	line "totally healthy!"
	done

FloccesyRanchBarnNoBerriesText:
	text "<PLAYER> has no"
	line "BERRIES…"
	done

FloccesyRanchBarnRefusedBerryText:
	text "<PLAYER> wouldn't"
	line "give a BERRY."

	para "FLAAFFY looks sad."
	done

FloccesyRanchBarn_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  3,  7, FLOCCESY_RANCH, 2
	warp_event  4,  7, FLOCCESY_RANCH, 2

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  2,  3, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FloccesyRanchBarnTwin1Script, -1
	object_event  4,  3, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FloccesyRanchBarnTwin2Script, -1
	object_event  3,  3, SPRITE_TAUROS, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoomooScript, -1
