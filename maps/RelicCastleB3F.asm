	const_def 2 ; object constants
	const RELICCASTLEB3F_COVER_FOSSIL
	const RELICCASTLEB3F_PLUME_FOSSIL

RelicCastleB3F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
CoverFossilScript:
	opentext
	writetext CoverFossilPromptText
	yesorno
	iffalse .refused
	disappear RELICCASTLEB3F_COVER_FOSSIL
	setevent EVENT_GOT_COVER_FOSSIL
	verbosegiveitem COVER_FOSSIL
	waitsfx
	closetext
	pause 15
	earthquake 30
	disappear RELICCASTLEB3F_PLUME_FOSSIL
	clearevent EVENT_RELIC_CASTLE_B4F_PLUME_FOSSIL
	playsound SFX_STRENGTH
	waitsfx
	pause 15
	opentext
	writetext FossilDisappearText
	waitbutton
.refused
	closetext
	end
	
PlumeFossilScript:
	opentext
	writetext PlumeFossilPromptText
	yesorno
	iffalse .refused
	disappear RELICCASTLEB3F_PLUME_FOSSIL
	setevent EVENT_GOT_PLUME_FOSSIL
	verbosegiveitem PLUME_FOSSIL
	waitsfx
	closetext
	pause 15
	earthquake 30
	disappear RELICCASTLEB3F_COVER_FOSSIL
	clearevent EVENT_RELIC_CASTLE_B4F_COVER_FOSSIL
	playsound SFX_STRENGTH
	waitsfx
	pause 15
	opentext
	writetext FossilDisappearText
	waitbutton
.refused
	closetext
	end
	
CoverFossilPromptText:
	text "Take the COVER"
	line "FOSSIL?"
	done
	
PlumeFossilPromptText:
	text "Take the PLUME"
	line "FOSSIL?"
	done
	
FossilDisappearText:
	text "The other fossil"
	line "disappeared into"
	cont "the sand…"
	done

RelicCastleB3F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  8,  2, RELIC_CASTLE_B2F, 2
	warp_event 16,  7, RELIC_CASTLE_B2F, 3
	warp_event  2,  2, RELIC_CASTLE_B4F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  8,  7, SPRITE_FOSSIL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CoverFossilScript, EVENT_RELIC_CASTLE_COVER_FOSSIL
	object_event  9,  7, SPRITE_FOSSIL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PlumeFossilScript, EVENT_RELIC_CASTLE_PLUME_FOSSIL
	