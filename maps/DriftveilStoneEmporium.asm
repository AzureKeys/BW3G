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
	iffalse .NotEnough
	takeitem RED_SHARD
	copybytetovar wNumShards
	addvar 1
	copyvartobyte wNumShards
	ifnotequal 1, .IronDefense
	writebyte IRON_DEFENSE
	writetext TutorMoveStartText
	special MoveTutor
	ifequal FALSE, MoveTutorTeachMoveScript
	jump .Incompatible
	
.SteelWing:
	checkitem RED_SHARD
	iffalse .NotEnough
	takeitem RED_SHARD
	copybytetovar wNumShards
	addvar 1
	copyvartobyte wNumShards
	ifnotequal 2, .SteelWing
	writebyte STEEL_WING
	writetext TutorMoveStartText
	special MoveTutor
	ifequal FALSE, MoveTutorTeachMoveScript
	jump .Incompatible
	
.IronTail:
	checkitem RED_SHARD
	iffalse .NotEnough
	takeitem RED_SHARD
	copybytetovar wNumShards
	addvar 1
	copyvartobyte wNumShards
	ifnotequal 3, .IronTail
	writebyte IRON_TAIL
	writetext TutorMoveStartText
	special MoveTutor
	ifequal FALSE, MoveTutorTeachMoveScript
	jump .Incompatible
	
.ZenHeadbutt:
	checkitem RED_SHARD
	iffalse .NotEnough
	takeitem RED_SHARD
	copybytetovar wNumShards
	addvar 1
	copyvartobyte wNumShards
	ifnotequal 4, .ZenHeadbutt
	writebyte ZEN_HEADBUTT
	writetext TutorMoveStartText
	special MoveTutor
	ifequal FALSE, MoveTutorTeachMoveScript
	jump .Incompatible
	
.FirePunch:
	checkitem RED_SHARD
	iffalse .NotEnough
	takeitem RED_SHARD
	copybytetovar wNumShards
	addvar 1
	copyvartobyte wNumShards
	ifnotequal 5, .FirePunch
	writebyte FIRE_PUNCH
	writetext TutorMoveStartText
	special MoveTutor
	ifequal FALSE, MoveTutorTeachMoveScript
	jump .Incompatible
	
.Outrage:
	checkitem RED_SHARD
	iffalse .NotEnough
	takeitem RED_SHARD
	copybytetovar wNumShards
	addvar 1
	copyvartobyte wNumShards
	ifnotequal 5, .Outrage
	writebyte OUTRAGE
	writetext TutorMoveStartText
	special MoveTutor
	ifequal FALSE, MoveTutorTeachMoveScript
	jump .Incompatible
	
.NotEnough:
	copybytetovar wNumShards
	ifequal 0, .done1
.loop1
	giveitem RED_SHARD
	copybytetovar wNumShards
	addvar -1
	copyvartobyte wNumShards
	ifnotequal 0, .loop1
.done1
	writetext MoveTutorNotEnoughText
	waitbutton
	closetext
	end
	
.Incompatible:
	copybytetovar wNumShards
	ifequal 0, .done2
.loop2
	giveitem RED_SHARD
	copybytetovar wNumShards
	addvar -1
	copyvartobyte wNumShards
	ifnotequal 0, .loop2
.done2
	writetext MoveTutorRefusedText
	waitbutton
	closetext
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
	iffalse .NotEnough
	takeitem BLUE_SHARD
	copybytetovar wNumShards
	addvar 1
	copyvartobyte wNumShards
	ifnotequal 1, .HoneClaws
	writebyte HONE_CLAWS
	writetext TutorMoveStartText
	special MoveTutor
	ifequal FALSE, MoveTutorTeachMoveScript
	jump .Incompatible
	
.SignalBeam:
	checkitem BLUE_SHARD
	iffalse .NotEnough
	takeitem BLUE_SHARD
	copybytetovar wNumShards
	addvar 1
	copyvartobyte wNumShards
	ifnotequal 2, .SignalBeam
	writebyte SIGNAL_BEAM
	writetext TutorMoveStartText
	special MoveTutor
	ifequal FALSE, MoveTutorTeachMoveScript
	jump .Incompatible
	
.IcyWind:
	checkitem BLUE_SHARD
	iffalse .NotEnough
	takeitem BLUE_SHARD
	copybytetovar wNumShards
	addvar 1
	copyvartobyte wNumShards
	ifnotequal 3, .IcyWind
	writebyte ICY_WIND
	writetext TutorMoveStartText
	special MoveTutor
	ifequal FALSE, MoveTutorTeachMoveScript
	jump .Incompatible
	
.AquaTail:
	checkitem BLUE_SHARD
	iffalse .NotEnough
	takeitem BLUE_SHARD
	copybytetovar wNumShards
	addvar 1
	copyvartobyte wNumShards
	ifnotequal 4, .AquaTail
	writebyte AQUA_TAIL
	writetext TutorMoveStartText
	special MoveTutor
	ifequal FALSE, MoveTutorTeachMoveScript
	jump .Incompatible
	
.IcePunch:
	checkitem BLUE_SHARD
	iffalse .NotEnough
	takeitem BLUE_SHARD
	copybytetovar wNumShards
	addvar 1
	copyvartobyte wNumShards
	ifnotequal 5, .IcePunch
	writebyte ICE_PUNCH
	writetext TutorMoveStartText
	special MoveTutor
	ifequal FALSE, MoveTutorTeachMoveScript
	jump .Incompatible
	
.DragonPulse:
	checkitem BLUE_SHARD
	iffalse .NotEnough
	takeitem BLUE_SHARD
	copybytetovar wNumShards
	addvar 1
	copyvartobyte wNumShards
	ifnotequal 5, .DragonPulse
	writebyte DRAGON_PULSE
	writetext TutorMoveStartText
	special MoveTutor
	ifequal FALSE, MoveTutorTeachMoveScript
	jump .Incompatible
	
.NotEnough:
	copybytetovar wNumShards
	ifequal 0, .done1
.loop1
	giveitem BLUE_SHARD
	copybytetovar wNumShards
	addvar -1
	copyvartobyte wNumShards
	ifnotequal 0, .loop1
.done1
	writetext MoveTutorNotEnoughText
	waitbutton
	closetext
	end
	
.Incompatible:
	copybytetovar wNumShards
	ifequal 0, .done2
.loop2
	giveitem BLUE_SHARD
	copybytetovar wNumShards
	addvar -1
	copyvartobyte wNumShards
	ifnotequal 0, .loop2
.done2
	writetext MoveTutorRefusedText
	waitbutton
	closetext
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
	iffalse .NotEnough
	takeitem GREEN_SHARD
	copybytetovar wNumShards
	addvar 1
	copyvartobyte wNumShards
	ifnotequal 1, .BugBite
	writebyte BUG_BITE
	writetext TutorMoveStartText
	special MoveTutor
	ifequal FALSE, MoveTutorTeachMoveScript
	jump .Incompatible
	
.Synthesis:
	checkitem GREEN_SHARD
	iffalse .NotEnough
	takeitem GREEN_SHARD
	copybytetovar wNumShards
	addvar 1
	copyvartobyte wNumShards
	ifnotequal 2, .Synthesis
	writebyte SYNTHESIS
	writetext TutorMoveStartText
	special MoveTutor
	ifequal FALSE, MoveTutorTeachMoveScript
	jump .Incompatible
	
.SeedBomb:
	checkitem GREEN_SHARD
	iffalse .NotEnough
	takeitem GREEN_SHARD
	copybytetovar wNumShards
	addvar 1
	copyvartobyte wNumShards
	ifnotequal 3, .SeedBomb
	writebyte SEED_BOMB
	writetext TutorMoveStartText
	special MoveTutor
	ifequal FALSE, MoveTutorTeachMoveScript
	jump .Incompatible
	
.GunkShot:
	checkitem GREEN_SHARD
	iffalse .NotEnough
	takeitem GREEN_SHARD
	copybytetovar wNumShards
	addvar 1
	copyvartobyte wNumShards
	ifnotequal 4, .GunkShot
	writebyte GUNK_SHOT
	writetext TutorMoveStartText
	special MoveTutor
	ifequal FALSE, MoveTutorTeachMoveScript
	jump .Incompatible
	
.GigaDrain:
	checkitem GREEN_SHARD
	iffalse .NotEnough
	takeitem GREEN_SHARD
	copybytetovar wNumShards
	addvar 1
	copyvartobyte wNumShards
	ifnotequal 5, .GigaDrain
	writebyte GIGA_DRAIN
	writetext TutorMoveStartText
	special MoveTutor
	ifequal FALSE, MoveTutorTeachMoveScript
	jump .Incompatible
	
.DarkPulse:
	checkitem GREEN_SHARD
	iffalse .NotEnough
	takeitem GREEN_SHARD
	copybytetovar wNumShards
	addvar 1
	copyvartobyte wNumShards
	ifnotequal 5, .DarkPulse
	writebyte DARK_PULSE
	writetext TutorMoveStartText
	special MoveTutor
	ifequal FALSE, MoveTutorTeachMoveScript
	jump .Incompatible
	
.NotEnough:
	copybytetovar wNumShards
	ifequal 0, .done1
.loop1
	giveitem GREEN_SHARD
	copybytetovar wNumShards
	addvar -1
	copyvartobyte wNumShards
	ifnotequal 0, .loop1
.done1
	writetext MoveTutorNotEnoughText
	waitbutton
	closetext
	end
	
.Incompatible:
	copybytetovar wNumShards
	ifequal 0, .done2
.loop2
	giveitem GREEN_SHARD
	copybytetovar wNumShards
	addvar -1
	copyvartobyte wNumShards
	ifnotequal 0, .loop2
.done2
	writetext MoveTutorRefusedText
	waitbutton
	closetext
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
	iffalse .NotEnough
	takeitem YELLOW_SHARD
	copybytetovar wNumShards
	addvar 1
	copyvartobyte wNumShards
	ifnotequal 1, .LowKick
	writebyte LOW_KICK
	writetext TutorMoveStartText
	special MoveTutor
	ifequal FALSE, MoveTutorTeachMoveScript
	jump .Incompatible
	
.SuperFang:
	checkitem YELLOW_SHARD
	iffalse .NotEnough
	takeitem YELLOW_SHARD
	copybytetovar wNumShards
	addvar 1
	copyvartobyte wNumShards
	ifnotequal 2, .SuperFang
	writebyte SUPER_FANG
	writetext TutorMoveStartText
	special MoveTutor
	ifequal FALSE, MoveTutorTeachMoveScript
	jump .Incompatible
	
.HyperVoice:
	checkitem YELLOW_SHARD
	iffalse .NotEnough
	takeitem YELLOW_SHARD
	copybytetovar wNumShards
	addvar 1
	copyvartobyte wNumShards
	ifnotequal 3, .HyperVoice
	writebyte HYPER_VOICE
	writetext TutorMoveStartText
	special MoveTutor
	ifequal FALSE, MoveTutorTeachMoveScript
	jump .Incompatible
	
.EarthPower:
	checkitem YELLOW_SHARD
	iffalse .NotEnough
	takeitem YELLOW_SHARD
	copybytetovar wNumShards
	addvar 1
	copyvartobyte wNumShards
	ifnotequal 4, .EarthPower
	writebyte EARTH_POWER
	writetext TutorMoveStartText
	special MoveTutor
	ifequal FALSE, MoveTutorTeachMoveScript
	jump .Incompatible
	
.ThunderPunch:
	checkitem YELLOW_SHARD
	iffalse .NotEnough
	takeitem YELLOW_SHARD
	copybytetovar wNumShards
	addvar 1
	copyvartobyte wNumShards
	ifnotequal 5, .ThunderPunch
	writebyte THUNDERPUNCH
	writetext TutorMoveStartText
	special MoveTutor
	ifequal FALSE, MoveTutorTeachMoveScript
	jump .Incompatible
	
.DrainPunch:
	checkitem YELLOW_SHARD
	iffalse .NotEnough
	takeitem YELLOW_SHARD
	copybytetovar wNumShards
	addvar 1
	copyvartobyte wNumShards
	ifnotequal 5, .DrainPunch
	writebyte DRAIN_PUNCH
	writetext TutorMoveStartText
	special MoveTutor
	ifequal FALSE, MoveTutorTeachMoveScript
	jump .Incompatible
	
.NotEnough:
	copybytetovar wNumShards
	ifequal 0, .done1
.loop1
	giveitem YELLOW_SHARD
	copybytetovar wNumShards
	addvar -1
	copyvartobyte wNumShards
	ifnotequal 0, .loop1
.done1
	writetext MoveTutorNotEnoughText
	waitbutton
	closetext
	end
	
.Incompatible:
	copybytetovar wNumShards
	ifequal 0, .done2
.loop2
	giveitem YELLOW_SHARD
	copybytetovar wNumShards
	addvar -1
	copyvartobyte wNumShards
	ifnotequal 0, .loop2
.done2
	writetext MoveTutorRefusedText
	waitbutton
	closetext
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
	
MoveTutorRefusedScript:
	writetext MoveTutorRefusedText
	waitbutton
	closetext
	end
	
MoveTutorTeachMoveScript:
	writebyte 0
	copyvartobyte wNumShards
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

	db 3 ; bg events
	bg_event  2,  7, BGEVENT_READ, StoneEmporiumSign
	bg_event  2,  7, BGEVENT_READ, StoneEmporiumSign
	bg_event  6,  3, BGEVENT_READ, StoneEmporiumElevator
	
	db 5 ; object events
	object_event  2, 10, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, StoneEmporiumReceptionistScript, -1
	object_event  8,  8, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, MoveTutorRedScript, -1
	object_event  2,  3, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, MoveTutorBlueScript, -1
	object_event  9,  4, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MoveTutorGreenScript, -1
	object_event  0,  8, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MoveTutorYellowScript, -1
	