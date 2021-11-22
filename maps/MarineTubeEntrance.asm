	const_def 2 ; object constants
	const MARINETUBEENTRANCE_SILK_SCARF_GIVER
	const MARINETUBEENTRANCE_COOLTRAINER_F

MarineTubeEntrance_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
SilkScarfGiverScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_SILK_SCARF
	iftrue .GotSilkScarf
	writetext SilkScarfGiverText
	buttonsound
	verbosegiveitem SILK_SCARF
	iffalse .NoRoom
	setevent EVENT_GOT_SILK_SCARF
.GotSilkScarf:
	writetext SilkScarfGaveText
	waitbutton
.NoRoom:
	closetext
	end
	
MarineTubeEntranceCooltrainerFTextScript:
	jumptextfaceplayer MarineTubeEntranceCooltrainerFText
	
MarineTubeEntranceCooltrainerFText:
	text "The view in the"
	line "tube is so"
	cont "beautiful!"
	
	para "I wish I had"
	line "someone to take me"
	cont "on a date there…"
	done
	
SilkScarfGiverText:
	text "Oh, this town is"
	line "so lovely…"

	para "Oh, you're a #-"
	line "MON trainer?"

	para "Here, this may"
	line "help you!"
	done
	
SilkScarfGaveText:
	text "That scarf will"
	line "increase the power"

	para "of normal-type"
	line "attacks!"
	done

MarineTubeEntrance_MapEvents:
	db 0, 0 ; filler

	db 6 ; warp events
	warp_event  4,  9, UNDELLA_TOWN, 4
	warp_event  5,  9, UNDELLA_TOWN, 4
	warp_event  5,  5, MARINE_TUBE, 1
	warp_event 20,  9, HUMILAU_CITY, 5
	warp_event 21,  9, HUMILAU_CITY, 5
	warp_event 21,  5, MARINE_TUBE, 2

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event 20,  7, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SilkScarfGiverScript, -1
	object_event  2,  6, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MarineTubeEntranceCooltrainerFTextScript, -1
	