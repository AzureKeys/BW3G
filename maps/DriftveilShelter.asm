	const_def 2 ; object constants
	const DRIFTVEILSHELTER_ROOD
	const DRIFTVEILSHELTER_BIANCA
	const DRIFTVEILSHELTER_CHEREN
	const DRIFTVEILSHELTER_GRANNY

DriftveilShelter_MapScripts:
	db 2 ; scene scripts
	scene_script .Arrive ; SCENE_DEFAULT
	scene_script .DummyScene ; SCENE_FINISHED

	db 0 ; callbacks

.DummyScene:
	end

.Arrive:
	priorityjump .RoodScene
	end
	
.RoodScene:
	turnobject PLAYER, UP
	opentext
	writetext DriftveilShelterRoodIntroText
	buttonsound
	verbosegiveitem HM_WATERFALL
	writetext DriftveilShelterRoodLeaveText
	waitbutton
	closetext
	applymovement DRIFTVEILSHELTER_BIANCA, DriftveilShelterBiancaMovement
	applymovement DRIFTVEILSHELTER_CHEREN, DriftveilShelterCherenMovement
	disappear DRIFTVEILSHELTER_BIANCA
	disappear DRIFTVEILSHELTER_CHEREN
	setevent EVENT_ASPERTIA_CITY_BLOCKER
	setevent EVENT_CASTELIA_SEWERS_GRUNTS
	clearevent EVENT_NUVEMA_LAB_BIANCA
	setscene SCENE_FINISHED
	end
	
DriftveilShelterGrannyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_A_POKEMON_FROM_SHELTER
	iftrue .GotMon
	writetext DriftveilShelterGrannyIntroText
	buttonsound
	yesorno
	iffalse .Declined
	checkcode VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	writetext DriftveilShelterGrannyThanksText
	buttonsound
	checkevent EVENT_GOT_OSHAWOTT
	iftrue .GiveSnivy
	checkevent EVENT_GOT_SNIVY
	iftrue .GiveTepig
; GiveOshawott
	pokenamemem OSHAWOTT, MEM_BUFFER_0
	writetext DriftveilShelterReceivedMonText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke OSHAWOTT, 15
	setevent EVENT_GOT_A_POKEMON_FROM_SHELTER
	jump .GotMon
.GiveTepig
	pokenamemem TEPIG, MEM_BUFFER_0
	writetext DriftveilShelterReceivedMonText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke TEPIG, 15
	setevent EVENT_GOT_A_POKEMON_FROM_SHELTER
	jump .GotMon
.GiveSnivy
	pokenamemem SNIVY, MEM_BUFFER_0
	writetext DriftveilShelterReceivedMonText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke SNIVY, 15
	setevent EVENT_GOT_A_POKEMON_FROM_SHELTER
; fallthrough
.GotMon
	writetext DriftveilShelterGrannyGotMonText
	waitbutton
	closetext
	end
	
.Declined
	writetext DriftveilShelterGrannyDeclinedText
	waitbutton
	closetext
	end
	
.NoRoom
	writetext DriftveilShelterGrannyNoRoomText
	waitbutton
	closetext
	end
	
DriftveilShelterRoodScript:
	jumptextfaceplayer DriftveilShelterRoodText

DriftveilShelterBookshelf:
	jumpstd magazinebookshelf
	
DriftveilShelterBiancaMovement:
	step DOWN
	step DOWN
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end
	
DriftveilShelterCherenMovement:
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end
	
DriftveilShelterRoodIntroText:
	text "???: My name is"
	line "ROOD. I run the"
	
	para "#MON shelter"
	line "here in DRIFTVEIL."
	
	para "…I'm also a former"
	line "member of TEAM"
	cont "PLASMA…"
	
	para "ROOD: You have to"
	line "understand, when"
	
	para "we started TEAM"
	line "PLASMA, we were"
	
	para "supposed to be"
	line "dedicated to"
	cont "helping #MON…"
	
	para "But we were"
	line "deceived…"
	
	para "Since I learned"
	line "our leaders' true"
	
	para "intentions, I've"
	line "dedicated my life"
	
	para "to helping"
	line "abandoned #MON."
	
	para "But it seems some"
	line "of the other SAGEs"
	
	para "are still loyal to"
	line "those deceivers."
	
	para "Some possibly not"
	line "of their own"
	cont "volition…"
	
	para "When I saw the"
	line "commotion in town,"
	
	para "I knew ZINZOLIN"
	line "was planning"
	cont "something…"
	
	para "But I never"
	line "thought I'd see"
	cont "her with them…"
	
	para "You see, that"
	line "girl, INFER, is"
	cont "my daughter…"
	
	para "She always loved"
	line "#MON, but I"
	
	para "never allowed her"
	line "to train them."
	
	para "I fear that may"
	line "have led to some"
	cont "resentment…"
	
	para "One day, she grew"
	line "so angry, she left"
	
	para "home, and never"
	line "returned."
	
	para "Today was the"
	line "first time I've"
	
	para "seen her face in"
	line "years…"
	
	para "But I fear she's"
	line "being deceived…"
	
	para "I fear she's going"
	line "to be used as a"
	
	para "pawn in some"
	line "nefarious scheme,"
	cont "just like I was…"
	
	para "So please, save"
	line "her from TEAM"
	cont "PLASMA, I beg you!"
	
	para "It's not much, but"
	line "I can offer you"
	cont "this to help you."
	done
	
DriftveilShelterRoodLeaveText:
	text "CHEREN: Certainly,"
	line "when we encounter"
	
	para "TEAM PLASMA, we'll"
	line "try to help."
	
	para "BIANCA: Of course!"
	
	para "ROOD: Oh, thank"
	line "you so much."
	
	para "CHEREN: I am sort"
	line "of concerned,"
	cont "though."
	
	para "I didn't see PROF."
	line "JUNIPER after the"
	cont "TOURNAMENT…"
	
	para "BIANCA: Oh yeah!"
	line "That is strange…"
	
	para "I wonder where she"
	line "could have gone?"
	
	para "CHEREN: Well, it's"
	line "been good seeing"
	cont "you, <PLAY_G>."
	
	para "But I need to get"
	line "back to my GYM."
	
	para "BIANCA: Oh! And I"
	line "need to return to"
	cont "the lab!"
	
	para "Good luck on your"
	line "journey, <PLAY_G>!"
	done
	
DriftveilShelterGrannyIntroText:
	text "Why hello there,"
	line "young trainer."
	
	para "Here at the #-"
	line "MON SHELTER, we"
	
	para "try to find homes"
	line "for abandoned"
	cont "#MON."
	
	para "I know you must be"
	line "a kind trainer if"
	cont "ROOD trusts you."
	
	para "There's a #MON"
	line "here that we've"
	
	para "had a hard time"
	line "finding a home"
	cont "for."
	
	para "How would you like"
	line "to take it with"
	cont "you?"
	done

DriftveilShelterGrannyThanksText:
	text "Oh, that's"
	line "wonderful!"
	
	para "Please take good"
	line "care of it!"
	done

DriftveilShelterGrannyNoRoomText:
	text "It looks like"
	line "you'll need to"
	
	para "make room for this"
	line "#MON."
	done

DriftveilShelterGrannyDeclinedText:
	text "Oh, I'm sorry to"
	line "hear that. Alright"
	cont "then…"
	done

DriftveilShelterGrannyGotMonText:
	text "Always remember to"
	line "care for your"
	cont "#MON!"
	done

DriftveilShelterReceivedMonText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done
	
DriftveilShelterRoodText:
	text "ROOD: Thank you"
	line "for your kindness,"
	cont "<PLAY_G>."
	done

DriftveilShelter_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4, 11, DRIFTVEIL_CITY, 7
	warp_event  5, 11, DRIFTVEIL_CITY, 7

	db 0 ; coord events

	db 4 ; bg events
	bg_event  6,  1, BGEVENT_READ, DriftveilShelterBookshelf
	bg_event  7,  1, BGEVENT_READ, DriftveilShelterBookshelf
	bg_event  8,  1, BGEVENT_READ, DriftveilShelterBookshelf
	bg_event  9,  1, BGEVENT_READ, DriftveilShelterBookshelf

	db 4 ; object events
	object_event  6,  3, SPRITE_ROOD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, DriftveilShelterRoodScript, -1
	object_event  5,  4, SPRITE_BIANCA, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, 0, EVENT_DRIFTVEIL_SHELTER_FRIENDS
	object_event  7,  4, SPRITE_CHEREN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, 0, EVENT_DRIFTVEIL_SHELTER_FRIENDS
	object_event  0,  8, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, DriftveilShelterGrannyScript, -1
	