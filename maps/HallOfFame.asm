	const_def 2 ; object constants
	const HALLOFFAME_JUNIPER

HallOfFame_MapScripts:
	db 2 ; scene scripts
	scene_script .EnterHallOfFame ; SCENE_DEFAULT
	scene_script .DummyScene ; SCENE_FINISHED

	db 0 ; callbacks

.EnterHallOfFame:
	priorityjump .EnterHallOfFameScript
	end

.DummyScene:
	end

.EnterHallOfFameScript:
	follow HALLOFFAME_JUNIPER, PLAYER
	applymovement HALLOFFAME_JUNIPER, HallOfFame_WalkUpWithJuniper
	stopfollow
	turnobject PLAYER, RIGHT
	opentext
	writetext HallOfFame_JuniperText
	waitbutton
	closetext
	turnobject HALLOFFAME_JUNIPER, UP
	applymovement PLAYER, HallOfFame_SlowlyApproachMachine
	setscene SCENE_FINISHED
	pause 15
	writebyte HEALMACHINE_HALL_OF_FAME
	special HealMachineAnim
	special HealParty
	checkevent EVENT_BEAT_POKEMON_LEAGUE
	iftrue .done
	setevent EVENT_BEAT_POKEMON_LEAGUE
	clearevent EVENT_NS_ROOM_N
	clearevent EVENT_ASPERTIA_CITY_BLOCKER
	specialphonecall SPECIALCALL_BIANCA_MEMBERS_CARD
	halloffame
	setmapscene CHAMPIONS_ROOM, SCENE_POST_CREDITS
	disappear PLAYER
	warp CHAMPIONS_ROOM,  7, 13
	end
	
.done
	halloffame
	returnfromcredits
	end

HallOfFame_WalkUpWithJuniper:
	slow_step UP
	slow_step UP
	slow_step UP
	slow_step UP
	slow_step UP
	slow_step UP
	slow_step UP
	slow_step UP
	step RIGHT
	turn_head LEFT
	step_end

HallOfFame_SlowlyApproachMachine:
	slow_step UP
	step_end

HallOfFame_JuniperText:
	text "JUNIPER: This room"
	line "is the HALL OF"
	cont "FAME."

	para "It exists to"
	line "commemorate the"

	para "trainers and #-"
	line "MON who have"

	para "demonstrated their"
	line "stellar strength"

	para "and kindness of"
	line "heart."

	para "<PLAY_G>, with your"
	line "skill and persis-"
	cont "tence, you have"

	para "earned your place"
	line "in this HALL OF"
	cont "FAME."

	para "Your name, the"
	line "account of your"

	para "journey, and the"
	line "history of your"

	para "battles will all"
	line "be recorded here."

	para "I hope all of this"
	line "becomes a support"

	para "to you and helps"
	line "you grow stronger."

	para "Now, <PLAY_G>, you"
	line "and the #MON"

	para "who fought by your"
	line "side will be"
	
	para "recorded in this"
	line "machine, as"
	cont "CHAMPIONS!"
	done

HallOfFame_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  4, 13, CHAMPIONS_ROOM, 2

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  4, 12, SPRITE_JUNIPER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, 0, -1
