	const_def 2 ; object constants
	const R16LOSTLORNGATE_OFFICER
	const R16LOSTLORNGATE_COOLTRAINER_M
	const R16LOSTLORNGATE_BLOCKER1
	const R16LOSTLORNGATE_BLOCKER2

Rt16LostlornGate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Rt16LostlornGateOfficerScript:
	jumptextfaceplayer Rt16LostlornGateOfficerText

Rt16LostlornGateCooltrainerMScript:
	jumptextfaceplayer Rt16LostlornGateCooltrainerMText

Rt16LostlornBlockerScript:
	jumptextfaceplayer Rt16LostlornBlockerText

Rt16LostlornBlockerText:
	text "Woah there, bucko!"
	line "The rest of the"
	cont "game isn't done"
	cont "yet."
	
	para "This is as far"
	line "as you can go."
	done

Rt16LostlornGateOfficerText:
	text "LOSTLORN FOREST"
	line "is big! Don't get"
	cont "lost."
	done

Rt16LostlornGateCooltrainerMText:
	text "There are trainers"
	line "out on the road."

	para "It's a good place"
	line "to train."
	done

Rt16LostlornGate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  0,  4, LOSTLORN_FOREST, 2
	warp_event  0,  5, LOSTLORN_FOREST, 3
	warp_event  9,  4, R_16, 1
	warp_event  9,  5, R_16, 2

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Rt16LostlornGateOfficerScript, -1
	object_event  1,  3, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Rt16LostlornGateCooltrainerMScript, -1
	object_event  9,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Rt16LostlornBlockerScript, -1
	object_event  9,  5, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Rt16LostlornBlockerScript, -1
	