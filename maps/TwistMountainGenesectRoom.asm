	const_def 2 ; object constants
	const TWISTMOUNTAINGENESECTROOM_GENESECT

TwistMountainGenesectRoom_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TwistMountainGenesectScript:
	faceplayer
	opentext
	writetext TwistMountainGenesectText
	cry GENESECT
	pause 15
	closetext
	writecode VAR_BATTLETYPE, BATTLETYPE_GENESECT
	loadwildmon GENESECT, 60
	startbattle
	disappear TWISTMOUNTAINGENESECTROOM_GENESECT
	reloadmapafterbattle
	end
	
TwistMountainGenesectText:
	text "SEEEEEECT!"
	done

TwistMountainGenesectRoom_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  7, 19, TWIST_MOUNTAIN_2F, 11

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  7,  3, SPRITE_GENESECT, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_SCRIPT, 0, TwistMountainGenesectScript, EVENT_TWIST_MOUNTAIN_GENESECT
	