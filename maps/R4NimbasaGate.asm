	const_def 2 ; object constants
	const R4NIMBASAGATE_POKEFAN_M
	const R4NIMBASAGATE_YOUNGSTER
	const R4NIMBASAGATE_MERCHANT

Rt4NimbasaGate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

R4NimbasaGateMerchantScript:
	opentext
	pokemart MARTTYPE_BITTER, MART_R4_NIMBASA_GATE
	closetext
	end
	
R4NimbasaGatePokefanMTextScript:
	jumptextfaceplayer R4NimbasaGatePokefanMText
	
R4NimbasaGateYoungsterTextScript:
	jumptextfaceplayer R4NimbasaGateYoungsterText
	
R4NimbasaGateRareCandy:
	hiddenitem RARE_CANDY, EVENT_R_4_NIMBASA_GATE_RARE_CANDY
	
R4NimbasaGatePokefanMText:
	text "This place used to"
	line "be a shopping"
	
	para "center called JOIN"
	line "AVENUE."
	
	para "But after a few"
	line "years, vendors"
	cont "started to leave."
	
	para "Now the place is"
	line "abandoned."
	done
	
R4NimbasaGateYoungsterText:
	text "I'm searching to"
	line "see if any of the"
	
	para "vendors left any"
	line "of their stuff"
	cont "behind!"
	done

Rt4NimbasaGate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  4,  0, NIMBASA_CITY, 9
	warp_event  5,  0, NIMBASA_CITY, 10
	warp_event  4, 21, R_4, 1
	warp_event  5, 21, R_4, 1

	db 0 ; coord events

	db 1 ; bg events
	bg_event 0, 15, BGEVENT_ITEM, R4NimbasaGateRareCandy

	db 3 ; object events
	object_event  5,  5, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, R4NimbasaGatePokefanMTextScript, -1
	object_event  6, 16, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, R4NimbasaGateYoungsterTextScript, -1
	object_event  9, 11, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, R4NimbasaGateMerchantScript, -1
	