	const_def 2 ; object constants
	const STRANGEHOUSEROOMS_GUY
	const STRANGEHOUSEROOMS_GUY2
	const STRANGEHOUSEROOMS_GIRL
	const STRANGEHOUSEROOMS_TRADE
	const STRANGEHOUSEROOMS_GHOST
	const STRANGEHOUSEROOMS_HM_CUT
	const STRANGEHOUSEROOMS_RARE_CANDY
	const STRANGEHOUSEROOMS_FULL_HEAL

StrangeHouseRooms_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
StrangeHouseGuyScript:
	jumptextfaceplayer StrangeHouseGuyText
	
StrangeHouseGuy2Script:
	jumptextfaceplayer StrangeHouseGuy2Text
	
StrangeHouseGirlScript:
	jumptextfaceplayer StrangeHouseGirlText
	
StrangeHouseTradeScript:
	faceplayer
	opentext
	trade NPC_TRADE_STRANGE
	waitbutton
	closetext
	end
	
StrangeHouseRoom1Trigger:
	checkmapscene STRANGE_HOUSE_1F
	ifequal SCENE_STRANGE_HOUSE_3, .done
	checkmapscene STRANGE_HOUSE_1F
	ifequal SCENE_STRANGE_HOUSE_FINISHED, .done
	earthquake 30
	playsound SFX_STRENGTH
	waitsfx
	pause 15
	opentext
	writetext StrangeHouseRoomTriggerText
	waitbutton
	closetext
	setmapscene STRANGE_HOUSE_1F, SCENE_STRANGE_HOUSE_3
.done
	end
	
StrangeHouseRoom2Trigger:
	checkmapscene STRANGE_HOUSE_1F
	ifequal SCENE_STRANGE_HOUSE_5, .done
	checkmapscene STRANGE_HOUSE_1F
	ifequal SCENE_STRANGE_HOUSE_FINISHED, .done
	earthquake 30
	playsound SFX_STRENGTH
	waitsfx
	pause 15
	opentext
	writetext StrangeHouseRoomTriggerText
	waitbutton
	closetext
	setmapscene STRANGE_HOUSE_1F, SCENE_STRANGE_HOUSE_5
.done
	end
	
StrangeHouseRoom3Trigger:
	checkmapscene STRANGE_HOUSE_1F
	ifequal SCENE_STRANGE_HOUSE_2, .done
	checkmapscene STRANGE_HOUSE_1F
	ifequal SCENE_STRANGE_HOUSE_FINISHED, .done
	earthquake 30
	playsound SFX_STRENGTH
	waitsfx
	pause 15
	opentext
	writetext StrangeHouseRoomTriggerText
	waitbutton
	closetext
	setmapscene STRANGE_HOUSE_1F, SCENE_STRANGE_HOUSE_2
.done
	end
	
StrangeHouseRoom4Trigger:
	checkmapscene STRANGE_HOUSE_1F
	ifequal SCENE_STRANGE_HOUSE_4, .done
	checkmapscene STRANGE_HOUSE_1F
	ifequal SCENE_STRANGE_HOUSE_FINISHED, .done
	earthquake 30
	playsound SFX_STRENGTH
	waitsfx
	pause 15
	opentext
	writetext StrangeHouseRoomTriggerText
	waitbutton
	closetext
	setmapscene STRANGE_HOUSE_1F, SCENE_STRANGE_HOUSE_4
.done
	end
	
StrangeHouseHMCut:
	disappear STRANGEHOUSEROOMS_HM_CUT
	opentext
	verbosegiveitem HM_CUT
	waitbutton
	closetext
	setevent EVENT_GOT_HM01_CUT
	pause 30
	appear STRANGEHOUSEROOMS_GHOST
	opentext
	writetext StrangeHouseRoomGhostText
	waitbutton
	closetext
	disappear STRANGEHOUSEROOMS_GHOST
	setmapscene STRANGE_HOUSE_1F, SCENE_STRANGE_HOUSE_FINISHED
	end
	
StrangeHouseRareCandy:
	itemball RARE_CANDY
	
StrangeHouseFullHeal:
	itemball FULL_HEAL
	
StrangeHouseGuyText:
	text "Are you exploring"
	line "this haunted"
	cont "house too?"
	
	para "Get this! I was"
	line "checking out that"
	cont "desk, when"
	
	para "all of a sudden,"
	line "there was a sound!"
	
	para "When I left the"
	line "room, the furni-"
	cont "ture outside had"
	cont "moved!"
	
	para "I'm telling you,"
	line "this is the work"
	cont "of a ghost!"
	done
	
StrangeHouseGuy2Text:
	text "Hmm…"
	
	para "So it seems that"
	line "the furniture will"
	
	para "rearrange itself"
	line "when I investigate"
	cont "certain objects…"
	
	para "There must be"
	line "something in this"
	cont "room too."
	
	para "Maybe the bed? Or"
	line "a bookshelf…?"
	done
	
StrangeHouseGirlText:
	text "I think there must"
	line "be something"
	cont "hidden in the"
	cont "back room."
	
	para "But the furniture"
	line "always seems to"
	cont "block the way…"
	
	para "Maybe if I go"
	line "through the"
	cont "basement…"
	done
	
StrangeHouseRoomTriggerText:
	text "Something moved…"
	done
	
StrangeHouseRoomGhostText:
	text "… … … …"
	
	para "…That was fun…"
	
	para "I hope you come"
	line "to play again…"
	done
	
StrangeHouseRooms_MapEvents:
	db 0, 0 ; filler

	db 10 ; warp events
	warp_event  4,  7, STRANGE_HOUSE_1F, 5
	warp_event  5,  7, STRANGE_HOUSE_1F, 5
	warp_event 20,  7, STRANGE_HOUSE_1F, 6
	warp_event 21,  7, STRANGE_HOUSE_1F, 6
	warp_event 36,  7, STRANGE_HOUSE_1F, 7
	warp_event 37,  7, STRANGE_HOUSE_1F, 7
	warp_event  4, 19, STRANGE_HOUSE_1F, 8
	warp_event  5, 19, STRANGE_HOUSE_1F, 8
	warp_event 20, 19, STRANGE_HOUSE_1F, 9
	warp_event 21, 19, STRANGE_HOUSE_1F, 9

	db 0 ; coord events

	db 6 ; bg events
	bg_event  1,  5, BGEVENT_READ, StrangeHouseRoom1Trigger
	bg_event 41,  4, BGEVENT_READ, StrangeHouseRoom2Trigger
	bg_event 41,  5, BGEVENT_READ, StrangeHouseRoom2Trigger
	bg_event  4, 15, BGEVENT_READ, StrangeHouseRoom3Trigger
	bg_event  5, 15, BGEVENT_READ, StrangeHouseRoom3Trigger
	bg_event 18, 13, BGEVENT_READ, StrangeHouseRoom4Trigger

	db 8 ; object events
	object_event  6, 17, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, StrangeHouseGuyScript, -1
	object_event  7,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, StrangeHouseGuy2Script, -1
	object_event 20, 15, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, StrangeHouseGirlScript, -1
	object_event 36,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, StrangeHouseTradeScript, -1
	object_event 20,  2, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, -1, EVENT_STRANGE_HOUSE_GHOST
	object_event 20,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, StrangeHouseHMCut, EVENT_GOT_HM01_CUT
	object_event 25, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, StrangeHouseRareCandy, EVENT_STRANGE_HOUSE_RARE_CANDY
	object_event  5,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, StrangeHouseFullHeal, EVENT_STRANGE_HOUSE_FULL_HEAL
