	const_def 2 ; object constants
	const DRIFTVEILSTONEEMPORIUM_RECEPTIONIST
	const DRIFTVEILSTONEEMPORIUM_RED_SHARD_TUTOR
	const DRIFTVEILSTONEEMPORIUM_BLUE_SHARD_TUTOR
	const DRIFTVEILSTONEEMPORIUM_GREEN_SHARD_TUTOR
	const DRIFTVEILSTONEEMPORIUM_YELLOW_SHARD_TUTOR

DriftveilStoneEmporium_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
MoveTutorRedScript:
	faceplayer
	opentext
	writetext TutorAskTeachRedText
	yesorno
	iffalse MoveTutorRefusedScript
	writetext TutorWhichMoveText
	buttonsound
	loadmenu RedMoveMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .IronDefense
	ifequal 2, .SteelWing
	ifequal 3, .IronTail
	ifequal 4, .ZenHeadbutt
	ifequal 5, .FirePunch
	ifequal 6, .Outrage
	jump MoveTutorRefusedScript
	
.IronDefense:
	checkitem RED_SHARD
	iffalse MoveTutorNotEnoughScript
	writebyte IRON_DEFENSE
	scall MoveTutorStartTeachScript
	ifnotequal FALSE, .done
	takeitem RED_SHARD
	jump MoveTutorTaughtScript
	
.SteelWing:
	checkitem RED_SHARD, 2
	iffalse MoveTutorNotEnoughScript
	writebyte STEEL_WING
	scall MoveTutorStartTeachScript
	ifnotequal FALSE, .done
	takeitem RED_SHARD, 2
	jump MoveTutorTaughtScript
	
.IronTail:
	checkitem RED_SHARD, 3
	iffalse MoveTutorNotEnoughScript
	writebyte IRON_TAIL
	scall MoveTutorStartTeachScript
	ifnotequal FALSE, .done
	takeitem RED_SHARD, 3
	jump MoveTutorTaughtScript
	
.ZenHeadbutt:
	checkitem RED_SHARD, 4
	iffalse MoveTutorNotEnoughScript
	writebyte ZEN_HEADBUTT
	scall MoveTutorStartTeachScript
	ifnotequal FALSE, .done
	takeitem RED_SHARD, 4
	jump MoveTutorTaughtScript
	
.FirePunch:
	checkitem RED_SHARD, 5
	iffalse MoveTutorNotEnoughScript
	writebyte FIRE_PUNCH
	scall MoveTutorStartTeachScript
	ifnotequal FALSE, .done
	takeitem RED_SHARD, 5
	jump MoveTutorTaughtScript
	
.Outrage:
	checkitem RED_SHARD, 5
	iffalse MoveTutorNotEnoughScript
	writebyte OUTRAGE
	scall MoveTutorStartTeachScript
	ifnotequal FALSE, .done
	takeitem RED_SHARD, 5
	jump MoveTutorTaughtScript
	
.done
	end
	
MoveTutorBlueScript:
	faceplayer
	opentext
	writetext TutorAskTeachBlueText
	yesorno
	iffalse MoveTutorRefusedScript
	writetext TutorWhichMoveText
	buttonsound
	loadmenu BlueMoveMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .HoneClaws
	ifequal 2, .SignalBeam
	ifequal 3, .IcyWind
	ifequal 4, .AquaTail
	ifequal 5, .IcePunch
	ifequal 6, .DragonPulse
	jump MoveTutorRefusedScript
	
.HoneClaws:
	checkitem BLUE_SHARD
	iffalse MoveTutorNotEnoughScript
	writebyte HONE_CLAWS
	scall MoveTutorStartTeachScript
	ifnotequal FALSE, .done
	takeitem BLUE_SHARD
	jump MoveTutorTaughtScript
	
.SignalBeam:
	checkitem BLUE_SHARD, 2
	iffalse MoveTutorNotEnoughScript
	writebyte SIGNAL_BEAM
	scall MoveTutorStartTeachScript
	ifnotequal FALSE, .done
	takeitem BLUE_SHARD, 2
	jump MoveTutorTaughtScript
	
.IcyWind:
	checkitem BLUE_SHARD, 3
	iffalse MoveTutorNotEnoughScript
	writebyte ICY_WIND
	scall MoveTutorStartTeachScript
	ifnotequal FALSE, .done
	takeitem BLUE_SHARD, 3
	jump MoveTutorTaughtScript
	
.AquaTail:
	checkitem BLUE_SHARD, 4
	iffalse MoveTutorNotEnoughScript
	writebyte AQUA_TAIL
	scall MoveTutorStartTeachScript
	ifnotequal FALSE, .done
	takeitem BLUE_SHARD, 4
	jump MoveTutorTaughtScript
	
.IcePunch:
	checkitem BLUE_SHARD, 5
	iffalse MoveTutorNotEnoughScript
	writebyte ICE_PUNCH
	scall MoveTutorStartTeachScript
	ifnotequal FALSE, .done
	takeitem BLUE_SHARD, 5
	jump MoveTutorTaughtScript
	
.DragonPulse:
	checkitem BLUE_SHARD, 5
	iffalse MoveTutorNotEnoughScript
	writebyte DRAGON_PULSE
	scall MoveTutorStartTeachScript
	ifnotequal FALSE, .done
	takeitem BLUE_SHARD, 5
	jump MoveTutorTaughtScript
	
.done
	end
	
MoveTutorGreenScript:
	faceplayer
	opentext
	writetext TutorAskTeachGreenText
	yesorno
	iffalse MoveTutorRefusedScript
	writetext TutorWhichMoveText
	buttonsound
	loadmenu GreenMoveMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .BugBite
	ifequal 2, .Synthesis
	ifequal 3, .SeedBomb
	ifequal 4, .GunkShot
	ifequal 5, .GigaDrain
	ifequal 6, .DarkPulse
	jump MoveTutorRefusedScript
	
.BugBite:
	checkitem GREEN_SHARD
	iffalse MoveTutorNotEnoughScript
	writebyte BUG_BITE
	scall MoveTutorStartTeachScript
	ifnotequal FALSE, .done
	takeitem GREEN_SHARD
	jump MoveTutorTaughtScript
	
.Synthesis:
	checkitem GREEN_SHARD, 2
	iffalse MoveTutorNotEnoughScript
	writebyte SYNTHESIS
	scall MoveTutorStartTeachScript
	ifnotequal FALSE, .done
	takeitem GREEN_SHARD, 2
	jump MoveTutorTaughtScript
	
.SeedBomb:
	checkitem GREEN_SHARD, 3
	iffalse MoveTutorNotEnoughScript
	writebyte SEED_BOMB
	scall MoveTutorStartTeachScript
	ifnotequal FALSE, .done
	takeitem GREEN_SHARD, 3
	jump MoveTutorTaughtScript
	
.GunkShot:
	checkitem GREEN_SHARD, 4
	iffalse MoveTutorNotEnoughScript
	writebyte GUNK_SHOT
	scall MoveTutorStartTeachScript
	ifnotequal FALSE, .done
	takeitem GREEN_SHARD, 4
	jump MoveTutorTaughtScript
	
.GigaDrain:
	checkitem GREEN_SHARD, 5
	iffalse MoveTutorNotEnoughScript
	writebyte GIGA_DRAIN
	scall MoveTutorStartTeachScript
	ifnotequal FALSE, .done
	takeitem GREEN_SHARD, 5
	jump MoveTutorTaughtScript
	
.DarkPulse:
	checkitem GREEN_SHARD, 5
	iffalse MoveTutorNotEnoughScript
	writebyte DARK_PULSE
	scall MoveTutorStartTeachScript
	ifnotequal FALSE, .done
	takeitem GREEN_SHARD, 5
	jump MoveTutorTaughtScript
	
.done
	end
	
MoveTutorYellowScript:
	faceplayer
	opentext
	writetext TutorAskTeachYellowText
	yesorno
	iffalse MoveTutorRefusedScript
	writetext TutorWhichMoveText
	buttonsound
	loadmenu YellowMoveMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .LowKick
	ifequal 2, .SuperFang
	ifequal 3, .HyperVoice
	ifequal 4, .EarthPower
	ifequal 5, .ThunderPunch
	ifequal 6, .DrainPunch
	jump MoveTutorRefusedScript
	
.LowKick:
	checkitem YELLOW_SHARD
	iffalse MoveTutorNotEnoughScript
	writebyte LOW_KICK
	scall MoveTutorStartTeachScript
	ifnotequal FALSE, .done
	takeitem YELLOW_SHARD
	jump MoveTutorTaughtScript
	
.SuperFang:
	checkitem YELLOW_SHARD, 2
	iffalse MoveTutorNotEnoughScript
	writebyte SUPER_FANG
	scall MoveTutorStartTeachScript
	ifnotequal FALSE, .done
	takeitem YELLOW_SHARD, 2
	jump MoveTutorTaughtScript
	
.HyperVoice:
	checkitem YELLOW_SHARD, 3
	iffalse MoveTutorNotEnoughScript
	writebyte HYPER_VOICE
	scall MoveTutorStartTeachScript
	ifnotequal FALSE, .done
	takeitem YELLOW_SHARD, 3
	jump MoveTutorTaughtScript
	
.EarthPower:
	checkitem YELLOW_SHARD, 4
	iffalse MoveTutorNotEnoughScript
	writebyte EARTH_POWER
	scall MoveTutorStartTeachScript
	ifnotequal FALSE, .done
	takeitem YELLOW_SHARD, 4
	jump MoveTutorTaughtScript
	
.ThunderPunch:
	checkitem YELLOW_SHARD, 5
	iffalse MoveTutorNotEnoughScript
	writebyte THUNDERPUNCH
	scall MoveTutorStartTeachScript
	ifnotequal FALSE, .done
	takeitem YELLOW_SHARD, 5
	jump MoveTutorTaughtScript
	
.DrainPunch:
	checkitem YELLOW_SHARD, 5
	iffalse MoveTutorNotEnoughScript
	writebyte DRAIN_PUNCH
	scall MoveTutorStartTeachScript
	ifnotequal FALSE, .done
	takeitem YELLOW_SHARD, 5
	jump MoveTutorTaughtScript
	
.done
	end

RedMoveMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 16, TEXTBOX_Y + 4
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 7 ; items
	db "IRON DEFENSE 1@"
	db "STEEL WING   2@"
	db "IRON TAIL    3@"
	db "ZEN HEADBUTT 4@"
	db "FIRE PUNCH   5@"
	db "OUTRAGE      5@"
	db "CANCEL@"

BlueMoveMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 16, TEXTBOX_Y + 4
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 7 ; items
	db "HONE CLAWS   1@"
	db "SIGNAL BEAM  2@"
	db "ICY WIND     3@"
	db "AQUA TAIL    4@"
	db "ICE PUNCH    5@"
	db "DRAGON PULSE 5@"
	db "CANCEL@"

GreenMoveMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 16, TEXTBOX_Y + 4
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 7 ; items
	db "BUG BITE     1@"
	db "SYNTHESIS    2@"
	db "SEED BOMB    3@"
	db "GUNK SHOT    4@"
	db "GIGA DRAIN   5@"
	db "DARK PULSE   5@"
	db "CANCEL@"

YellowMoveMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 16, TEXTBOX_Y + 4
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 7 ; items
	db "LOW KICK     1@"
	db "SUPER FANG   2@"
	db "HYPER VOICE  3@"
	db "EARTH POWER  4@"
	db "THUNDERPUNCH 5@"
	db "DRAIN PUNCH  5@"
	db "CANCEL@"
	
MoveTutorStartTeachScript:
	writetext TutorMoveStartText
	special MoveTutor
	ifnotequal FALSE, MoveTutorRefusedScript
	end
	
MoveTutorRefusedScript:
	writetext MoveTutorRefusedText
	waitbutton
	closetext
	end
	
MoveTutorNotEnoughScript:
	writetext MoveTutorNotEnoughText
	waitbutton
	closetext
	end
	
MoveTutorTaughtScript:
	writetext MoveTutorTaughtText
	waitbutton
	closetext
	end
	
StoneEmporiumReceptionistScript:
	jumptextfaceplayer StoneEmporiumReceptionistText
	
StoneEmporiumSign:
	jumptext StoneEmporiumSignText
	
StoneEmporiumElevator:
	jumptext StoneEmporiumElevatorText
	
TutorAskTeachRedText:
	text "Hi, I'm looking"
	line "for RED SHARDS!"
	
	para "If you give me"
	line "some, I can teach"
	cont "your #MON some"
	cont "moves in return."
	
	para "How about it?"
	done
	
TutorAskTeachBlueText:
	text "Hi, I'm looking"
	line "for BLUE SHARDS!"
	
	para "If you give me"
	line "some, I can teach"
	cont "your #MON some"
	cont "moves in return."
	
	para "How about it?"
	done
	
TutorAskTeachGreenText:
	text "Hi, I'm looking"
	line "for GREEN SHARDS!"
	
	para "If you give me"
	line "some, I can teach"
	cont "your #MON some"
	cont "moves in return."
	
	para "How about it?"
	done
	
TutorAskTeachYellowText:
	text "Hi, I'm looking"
	line "for YELLOW SHARDS!"
	
	para "If you give me"
	line "some, I can teach"
	cont "your #MON some"
	cont "moves in return."
	
	para "How about it?"
	done
	
TutorWhichMoveText:
	text "Okay, which move"
	line "should I teach?"
	done
	
TutorMoveStartText:
	text_start
	done
	
MoveTutorNotEnoughText:
	text "Uh-oh, looks like"
	line "you don't have"
	cont "enough SHARDS."
	
	para "Come back if you"
	line "find some!"
	done
	
MoveTutorRefusedText:
	text "Ah, that's too"
	line "bad…"
	done
	
MoveTutorTaughtText:
	text "Thanks! Come back"
	line "if you find more"
	cont "SHARDS!"
	done
	
StoneEmporiumReceptionistText:
	text "Welcome to the"
	line "DRIFTVEIL STONE"
	cont "EMPORIUM!"
	
	para "People come from"
	line "all over to seek"
	cont "out rare stones."
	done

StoneEmporiumSignText:
	text "DRIFTVEIL STONE"
	line "EMPORIUM"
	
	para "Proprietor: CLAY"
	done

StoneEmporiumElevatorText:
	text "Entry to the mines"
	line "is restricted to"
	cont "staff. -CLAY"
	done

DriftveilStoneEmporium_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4, 11, DRIFTVEIL_CITY, 10
	warp_event  5, 11, DRIFTVEIL_CITY, 11

	db 0 ; coord events

	db 2 ; bg events
	bg_event  2,  7, BGEVENT_READ, StoneEmporiumSign
	bg_event  7,  7, BGEVENT_READ, StoneEmporiumElevator
	
	db 5 ; object events
	object_event  2, 10, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, StoneEmporiumReceptionistScript, -1
	object_event  8,  8, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, MoveTutorRedScript, -1
	object_event  2,  3, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, MoveTutorBlueScript, -1
	object_event  9,  4, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MoveTutorGreenScript, -1
	object_event  0,  8, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MoveTutorYellowScript, -1
	