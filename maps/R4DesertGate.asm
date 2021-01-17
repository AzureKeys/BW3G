	const_def 2 ; object constants
	const R4DESERTGATE_OFFICER
	const R4DESERTGATE_GRAMPS

Rt4DesertGate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

R4DesertGateOfficerScript:
	jumptextfaceplayer R4DesertGateOfficerText

R4DesertGateGrampsScript:
	jumptextfaceplayer R4DesertGateGrampsText

R4DesertGateOfficerText:
	text "The DESERT RESORT"
	line "keeps growing"
	cont "every year."
	
	para "Make sure you're"
	line "prepared!"
	done

R4DesertGateGrampsText:
	text "I used to go and"
	line "visit the RELIC"
	cont "CASTLE in the"
	cont "desert."

	para "But the sand has"
	line "gotten so thick,"

	para "the castle is"
	line "nearly buried."
	done

Rt4DesertGate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  4,  0, DESERT_RESORT, 1
	warp_event  5,  0, DESERT_RESORT, 2
	warp_event  4,  7, R_4, 2
	warp_event  5,  7, R_4, 2

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, R4DesertGateOfficerScript, -1
	object_event  7,  5, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, R4DesertGateGrampsScript, -1
