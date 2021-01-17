	const_def 2 ; object constants
	const MARLONS_WIFE
	const MARLONS_HOUSE_POKE_BALL1
	const MARLONS_HOUSE_POKE_BALL2
	const MARLONS_HOUSE_POKE_BALL3

MarlonsHouse_MapScripts:
	db 3 ; scene scripts
	scene_script .MeetWife ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_MARLONS_HOUSE_CANT_LEAVE
	scene_script .DummyScene2 ; SCENE_MARLONS_HOUSE_NOTHING

	db 0 ; callbacks

.MeetWife:
	priorityjump .WalkUpToWife
	end

.DummyScene1:
	end

.DummyScene2:
	end
	
.WalkUpToWife:
	applymovement PLAYER, MarlonsHouse_WalkUpToWifeMovement
	opentext
	writetext WifeText_Intro
	waitbutton
	closetext
	showemote EMOTE_SHOCK, MARLONS_WIFE, 15
	opentext
	writetext WifeText_TakePokemon
	waitbutton
	setscene SCENE_MARLONS_HOUSE_CANT_LEAVE
	closetext
	end
	
WifeScript:
	faceplayer
	opentext
	checkevent EVENT_MET_MARLON_IN_UNDELLA
	iftrue WifeMarlonInGymScript
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue WifeFindMarlonScript
	writetext WifeText_GetMon
	waitbutton
	closetext
	end
	
WifeMarlonInGymScript
	writetext WifeText_MarlonInGym
	waitbutton
	closetext
	end
	
WifeFindMarlonScript
	writetext WifeText_FindMarlon
	waitbutton
	closetext
	end
	
SnivyPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtPokeBallScript
	turnobject MARLONS_WIFE, UP
	refreshscreen
	pokepic SNIVY
	cry SNIVY
	waitbutton
	closepokepic
	opentext
	writetext TakeSnivyText
	yesorno
	iffalse DidntChooseStarterScript1
	disappear MARLONS_HOUSE_POKE_BALL1
	setevent EVENT_GOT_SNIVY
	writetext ChoseStarterText1
	buttonsound
	waitsfx
	pokenamemem SNIVY, MEM_BUFFER_0
	writetext ReceivedStarterText1
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke SNIVY, 5, BERRY
	closetext
	checkcode VAR_FACING
	ifequal RIGHT, .SnivyMovementRight
	applymovement PLAYER, AfterSnivyMovementBelow
	jump WifeDirectionsScript
.SnivyMovementRight
	applymovement PLAYER, AfterSnivyMovementRight
	jump WifeDirectionsScript
	
TepigPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtPokeBallScript
	turnobject MARLONS_WIFE, RIGHT
	refreshscreen
	pokepic TEPIG
	cry TEPIG
	waitbutton
	closepokepic
	opentext
	writetext TakeTepigText
	yesorno
	iffalse DidntChooseStarterScript1
	disappear MARLONS_HOUSE_POKE_BALL2
	setevent EVENT_GOT_TEPIG
	writetext ChoseStarterText1
	buttonsound
	waitsfx
	pokenamemem TEPIG, MEM_BUFFER_0
	writetext ReceivedStarterText1
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke TEPIG, 5, BERRY
	closetext
	applymovement PLAYER, AfterTepigMovement
	jump WifeDirectionsScript
	
OshawottPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtPokeBallScript
	turnobject MARLONS_WIFE, RIGHT
	refreshscreen
	pokepic OSHAWOTT
	cry OSHAWOTT
	waitbutton
	closepokepic
	opentext
	writetext TakeOshawottText
	yesorno
	iffalse DidntChooseStarterScript1
	disappear MARLONS_HOUSE_POKE_BALL3
	setevent EVENT_GOT_OSHAWOTT
	writetext ChoseStarterText1
	buttonsound
	waitsfx
	pokenamemem OSHAWOTT, MEM_BUFFER_0
	writetext ReceivedStarterText1
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke OSHAWOTT, 5, BERRY
	closetext
	checkcode VAR_FACING
	ifequal LEFT, .OshawottMovementLeft
	applymovement PLAYER, AfterOshawottMovementBelow
	jump WifeDirectionsScript
.OshawottMovementLeft
	applymovement PLAYER, AfterOshawottMovementLeft
	
WifeDirectionsScript:
	opentext
	writetext WifeText_Directions
	buttonsound
	verbosegiveitem TOWN_MAP
	writetext WifeText_Done
	waitbutton
	closetext
	setevent EVENT_GOT_A_POKEMON_FROM_ELM
	setscene SCENE_MARLONS_HOUSE_NOTHING
	setmapscene HUMILAU_CITY, SCENE_FINISHED
	end
	
LookAtPokeBallScript:
	opentext
	writetext LookPokeBallText
	waitbutton
	closetext
	end	

DidntChooseStarterScript1:
	writetext DidntChooseStarterText1
	waitbutton
	closetext
	end
	
MarlonsHouseTryToLeaveScript:
	turnobject MARLONS_WIFE, DOWN
	opentext
	writetext WifeText_WhereGoing
	waitbutton
	closetext
	applymovement PLAYER, MarlonsHouse_CantLeaveMovement
	end	
	
MarlonsHouseBookshelfScript:
	jumpstd magazinebookshelf
	
MarlonsHouseFridgeScript:
	jumptext MarlonsHouseFridgeText
	
MarlonsHouse_WalkUpToWifeMovement:
	step UP
	step UP
	step UP
	step LEFT
	step_end
	
MarlonsHouse_CantLeaveMovement:
	step UP
	step_end
	
AfterSnivyMovementRight:
	step DOWN
	step_end
	
AfterSnivyMovementBelow:
	step LEFT
	turn_head DOWN
	step_end
	
AfterTepigMovement:
	step DOWN
	step LEFT
	step_end
	
AfterOshawottMovementBelow:
	step DOWN
	step LEFT
	step LEFT
	step_end
	
AfterOshawottMovementLeft:
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step_end
	
WifeText_Intro:
	text "Oh, <PLAY_G>!"
	
	para "MARLON was waiting"
	line "for you until just"
	cont "a few minutes ago."
	
	para "He got a phone"
	line "call and just left"
	cont "all of a sudden."
	
	para "Of course, he"
	line "didn't mention"
	cont "where he was"
	cont "going…"
	
	para "I think he was"
	line "headed to"
	cont "ROUTE 22…"
	
	para "But it's dangerous"
	line "outside of town."
	
	para "There are wild"
	line "#MON out there,"
	
	para "You better not go"
	line "after him alone."
	done
	
WifeText_TakePokemon:
	text "Oh, wait!"
	
	para "MARLON brought"
	line "some #MON home"
	cont "with him today!"
	
	para "He left them in"
	line "those #BALLs"
	cont "on the table."
	
	para "I'm sure he"
	line "wouldn't mind if"
	cont "you took one with"
	cont "you for safety."
	
	para "There are three"
	line "#MON here."
	
	para "Go ahead, pick"
	line "your favorite!"
	done
	
WifeText_GetMon:
	text "Go ahead, pick"
	line "your favorite!"
	done
	
WifeText_WhereGoing:
	text "Wait, where are"
	line "you going?"
	
	para "You should really"
	line "take a #MON"
	cont "with you!"
	done
	
WifeText_Directions:
	text "ROUTE 22 is west"
	line "of town, across"
	cont "the bridge."
	
	para "Here, take this so"
	line "you don't get"
	cont "lost!"
	done
	
WifeText_Done:
	text "Good luck,"
	line "<PLAY_G>!"
	done
	
WifeText_MarlonInGym:
	text "Oh, <PLAY_G>,"
	line "MARLON came back"
	cont "into town."
	
	para "You can find him"
	line "at the GYM."
	done
	
WifeText_FindMarlon:
	text "Did you find"
	line "MARLON?"
	
	para "Make sure he stays"
	line "out of trouble!"
	done
	
TakeSnivyText:
	text "You'll take"
	line "SNIVY, the"
	cont "grass #MON?"
	done

TakeTepigText:
	text "Do you want"
	line "TEPIG, the"
	cont "fire #MON?"
	done

TakeOshawottText:
	text "So, you like"
	line "OSHAWOTT, the"
	cont "water #MON?"
	done

DidntChooseStarterText1:
	text "Think it over"
	line "carefully."

	para "Your partner is"
	line "important."
	done

ChoseStarterText1:
	text "I think that's a"
	line "great #MON too!"
	done

ReceivedStarterText1:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

LookPokeBallText:
	text "It contains one of"
	line "MARLON's #MON!"
	done

MarlonsHouseFridgeText:
	text "Better not mess"
	line "around in MARLON's"
	cont "fridge!"
	done

MarlonsHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4,  7, HUMILAU_CITY, 4
	warp_event  5,  7, HUMILAU_CITY, 4

	db 2 ; coord events
	coord_event  4,  7, SCENE_MARLONS_HOUSE_CANT_LEAVE, MarlonsHouseTryToLeaveScript
	coord_event  5,  7, SCENE_MARLONS_HOUSE_CANT_LEAVE, MarlonsHouseTryToLeaveScript
	
	db 2 ; bg events
	bg_event  1,  1, BGEVENT_READ, MarlonsHouseBookshelfScript
	bg_event  8,  1, BGEVENT_READ, MarlonsHouseFridgeScript

	db 4 ; object events
	object_event  2,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, WifeScript, -1
	object_event  3,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SnivyPokeBallScript, EVENT_SNIVY_POKEBALL_IN_HOUSE
	object_event  4,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TepigPokeBallScript, EVENT_TEPIG_POKEBALL_IN_HOUSE
	object_event  5,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OshawottPokeBallScript, EVENT_OSHAWOTT_POKEBALL_IN_HOUSE
	