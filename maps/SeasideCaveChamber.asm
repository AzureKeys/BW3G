	const_def 2 ; object constants
	const SEASIDECAVECHAMBER_ZINZOLIN
	const SEASIDECAVECHAMBER_SHADOW_1
	const SEASIDECAVECHAMBER_SHADOW_2
	const SEASIDECAVECHAMBER_CHEREN
	const SEASIDECAVECHAMBER_MARLON

SeasideCaveChamber_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	db 0 ; callbacks

.DummyScene0:
	end

.DummyScene1:
	end
	
SeasideCaveZinzolinScript1:
	special FadeOutMusic
	pause 15
	playmusic MUSIC_ROCKET_ENCOUNTER
	applymovement PLAYER, SeasideCaveChamberPlayerMovement1
	jump SeasideCaveZinzolinScript

SeasideCaveZinzolinScript2:
	special FadeOutMusic
	pause 15
	playmusic MUSIC_ROCKET_ENCOUNTER
	applymovement PLAYER, SeasideCaveChamberPlayerMovement2
	; fallthrough
	
SeasideCaveZinzolinScript:
	turnobject SEASIDECAVECHAMBER_ZINZOLIN, DOWN
	opentext
	writetext SeasideCaveZinzolinIntroText
	waitbutton
	closetext
	winlosstext SeasideCaveZinzolinBeatenText, 0
	setlasttalked SEASIDECAVECHAMBER_ZINZOLIN
	loadtrainer ZINZOLIN, ZINZOLIN1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_ROCKET_ENCOUNTER
	opentext
	writetext SeasideCaveZinzolinAfterText
	waitbutton
	closetext
	applymovement SEASIDECAVECHAMBER_SHADOW_1, SeasideCaveChamberShadowMovement1
	applymovement SEASIDECAVECHAMBER_SHADOW_2, SeasideCaveChamberShadowMovement2
	special FadeOutMusic
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	pause 15
	playsound SFX_ESCAPE_ROPE
	waitsfx
	disappear SEASIDECAVECHAMBER_ZINZOLIN
	disappear SEASIDECAVECHAMBER_SHADOW_1
	disappear SEASIDECAVECHAMBER_SHADOW_2
	pause 15
	special FadeInQuickly
	playmusic MUSIC_CHEREN_THEME
	pause 15
	turnobject PLAYER, DOWN
	applymovement SEASIDECAVECHAMBER_MARLON, SeasideCaveChamberMarlonMovement
	applymovement SEASIDECAVECHAMBER_CHEREN, SeasideCaveChamberCherenMovement
	opentext
	writetext SeasideCaveMarlonAfterText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, SEASIDECAVECHAMBER_CHEREN, 15
	playsound SFX_CALL
	waitsfx
	opentext
	writetext SeasideCaveCherenPhoneText
	waitbutton
	closetext
	playsound SFX_HANG_UP
	waitsfx
	turnobject SEASIDECAVECHAMBER_CHEREN, LEFT
	turnobject SEASIDECAVECHAMBER_MARLON, RIGHT
	opentext
	writetext SeasideCaveCherenLeaveText
	waitbutton
	closetext
	applymovement SEASIDECAVECHAMBER_CHEREN, SeasideCaveChamberCherenLeaveMovement
	playsound SFX_ENTER_DOOR
	waitsfx
	disappear SEASIDECAVECHAMBER_CHEREN
	special FadeOutMusic
	pause 30
	playmusic MUSIC_UNOVA_CAVE
	turnobject SEASIDECAVECHAMBER_MARLON, UP
	opentext
	writetext SeasideCaveMarlonExplanationText
	waitbutton
	closetext
	applymovement SEASIDECAVECHAMBER_MARLON, SeasideCaveChamberMarlonLeaveMovement
	playsound SFX_ENTER_DOOR
	waitsfx
	disappear SEASIDECAVECHAMBER_MARLON
	setscene SCENE_FINISHED
	setmapscene R_12_VILLAGE_BRIDGE_GATE, SCENE_FINISHED
	end
	
SeasideCaveChamberPlayerMovement1:
	step UP
	step UP
	step LEFT
	step UP
	step UP
	step_end
	
SeasideCaveChamberPlayerMovement2:
	step UP
	step UP
	step LEFT
	step LEFT
	step UP
	step UP
	step_end
	
SeasideCaveChamberShadowMovement1:
	big_step RIGHT
	big_step UP
	big_step UP
	turn_head RIGHT
	step_end
	
SeasideCaveChamberShadowMovement2:
	big_step LEFT
	big_step UP
	big_step UP
	turn_head LEFT
	step_end
	
SeasideCaveChamberMarlonMovement:
	step RIGHT
	step RIGHT
	step UP
	step_end
	
SeasideCaveChamberCherenMovement:
	step LEFT
	step LEFT
	turn_head UP
	step_end
	
SeasideCaveChamberCherenLeaveMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end
	
SeasideCaveChamberMarlonLeaveMovement:
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step DOWN
	step DOWN
	step_end

SeasideCaveZinzolinBeatenText:
	text "Impossible!"
	done
	
SeasideCaveZinzolinIntroText:
	text "ZINZOLIN: Ah,"
	line "<PLAY_G>. I was"
	cont "expecting you."
	
	para "You've come to"
	line "stop my plans?"
	
	para "Ha! I'm afraid"
	line "you're too late,"
	cont "child!"
	
	para "While my SHADOWs"
	line "were keeping those"
	cont "GYM LEADERs busy,"
	
	para "I've already"
	line "extracted the"
	
	para "WATER ELEMENT from"
	line "this pool!"
	
	para "Now only one"
	line "ELEMENT remains"
	
	para "before my master"
	line "plan is complete!"
	
	para "But don't think"
	line "I'm just going to"
	
	para "let you leave"
	line "that easily."
	
	para "Consider this"
	line "punishment for"
	
	para "your arrogance at"
	line "the #MON WORLD"
	cont "TOURNAMENT!"
	done
	
SeasideCaveZinzolinAfterText:
	text "ZINZOLIN: What?"
	line "Again?!"
	
	para "…not that it"
	line "matters. I have"
	cont "what I came for."
	
	para "And by now, I've"
	line "kept you all busy"
	cont "for long enough,"
	
	para "my other plan"
	line "should be finished"
	cont "as well!"
	
	para "Farewell, you"
	line "fools!"
	
	para "SHADOWs! To me!"
	done
	
SeasideCaveMarlonAfterText:
	text "MARLON: Hey, that"
	line "was some nice"
	cont "battlin', <PLAY_G>!"
	
	para "Sorry we couldn't"
	line "be much help."
	
	para "We had our hands"
	line "full with those"
	cont "ninja fellas."
	
	para "CHEREN: I'm more"
	line "concerned with"
	
	para "what he said"
	line "afterward…"
	
	para "His other plan…?"
	done
	
SeasideCaveCherenPhoneText:
	text "Hello? You've"
	line "reached CHEREN."
	
	para "Oh, BIANCA? Wha-"
	
	para "Wait! Slow down!"
	
	para "… … … …"
	
	para "I see, I see…"
	
	para "… … … …"
	
	para "But how did-"
	line "Nevermind. This"
	cont "is a problem…"
	
	para "I'll meet you"
	line "there soon."
	done
	
SeasideCaveCherenLeaveText:
	text "CHEREN: This is"
	line "bad…"
	
	para "MARLON, you remem-"
	line "ber we moved that"
	cont "thing out of"
	cont "your GYM?"
	
	para "The PROF just"
	line "called, she says"
	cont "it's been taken."
	
	para "MARLON: What? But"
	line "we moved that"
	
	para "thing to the #-"
	line "MON LEAGUE!"
	
	para "No one other than"
	line "LEAGUE members"
	
	para "shoulda been able"
	line "to get in there."
	
	para "CHEREN: That's the"
	line "thing. According"
	cont "to the PROF…"
	
	para "The only person"
	line "seen entering that"
	cont "area…"
	
	para "was PROF.JUNIPER…"
	
	para "…I don't know what"
	line "this means. I'm"
	cont "going to meet with"
	
	para "PROF.BIANCA and"
	line "we'll figure out"
	cont "what to do from"
	cont "there."
	
	para "Sorry guys… Take"
	line "care."
	done
	
SeasideCaveMarlonExplanationText:
	text "MARLON: Well now,"
	line "that thing's been"
	cont "nothing but"
	cont "trouble…"
	
	para "I guess I'd better"
	line "explain…"
	
	para "Back when TEAM"
	line "PLASMA first broke"
	cont "up, the #MON"
	
	para "LEAGUE took a"
	line "bunch of stuff"
	cont "from their labs."
	
	para "One of the devices"
	line "they found got a"
	
	para "lot of the folks"
	line "in the LEAGUE"
	cont "real worried."
	
	para "It was this thing"
	line "that could be used"
	
	para "to combine a"
	line "person's mind with"
	cont "a machine."
	
	para "They called it"
	line "the MIND LINK."
	
	para "Supposedly, if the"
	line "wrong folks got"
	cont "ahold of it…"
	
	para "They could use it"
	line "to make some kind"
	cont "of super weapon."
	
	para "So, the LEAGUE"
	line "decided to hide"
	cont "it away."
	
	para "I was keeping it"
	line "in my GYM for a"
	cont "while."
	
	para "Guess they figured"
	line "no one would"
	
	para "suspect a powerful"
	line "thing like that"
	
	para "would be kept in"
	line "our little town."
	
	para "But then that girl"
	line "broke into the GYM"
	
	para "and stole your"
	line "#DEX…"
	
	para "I didn't think too"
	line "much of it at the"
	cont "time, but I think"
	
	para "she may have been"
	line "trying to take the"
	cont "MIND LINK, and"
	
	para "grabbed the #-"
	line "DEX by mistake."
	
	para "We moved it to the"
	line "#MON LEAGUE"
	cont "after that."
	
	para "But it looks like"
	line "TEAM PLASMA"
	
	para "managed to snag it"
	line "anyway…"
	
	para "Well, the PROF's a"
	line "bright girl, I'm"
	
	para "sure she'll figure"
	line "something out."
	
	para "Anyway, you've"
	line "gotten a lot"
	
	para "stronger since I"
	line "saw you last!"
	
	para "I'm impressed!"
	line "You've almost"
	
	para "collected all"
	line "eight GYM BADGES"
	cont "already!"
	
	para "Looks like the"
	line "last one you're"
	
	para "missing is the"
	line "GYM BADGE from"
	cont "OPELUCID CITY."
	
	para "It's not too far"
	line "from here. Just"
	
	para "head WEST past"
	line "LACUNOSA TOWN, and"
	
	para "cross the VILLAGE"
	line "BRIDGE."
	
	para "Good luck,"
	line "<PLAY_G>, I'm"
	cont "rooting for ya!"
	done

SeasideCaveChamber_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  7, 13, SEASIDE_CAVE_B2F, 2

	db 2 ; coord events
	coord_event  6,  9, SCENE_DEFAULT, SeasideCaveZinzolinScript1
	coord_event  7,  9, SCENE_DEFAULT, SeasideCaveZinzolinScript2

	db 0 ; bg events

	db 5 ; object events
	object_event  5,  4, SPRITE_PZMA_SAGE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, 0, EVENT_SEASIDE_CAVE_ZINZOLIN
	object_event  3,  6, SPRITE_SHADOW, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, 0, EVENT_SEASIDE_CAVE_ZINZOLIN
	object_event  7,  6, SPRITE_SHADOW, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, 0, EVENT_SEASIDE_CAVE_ZINZOLIN
	object_event  8,  6, SPRITE_CHEREN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, 0, EVENT_SEASIDE_CAVE_CHEREN
	object_event  3,  7, SPRITE_MARLON, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, 0, EVENT_SEASIDE_CAVE_MARLON
	