	const_def 2 ; object constants
	const PWTBACKROOM_CLAY
	const PWTBACKROOM_CHEREN
	const PWTBACKROOM_BIANCA
	const PWTBACKROOM_JUNIPER
	const PWTBACKROOM_IRIS
	const PWTBACKROOM_MARLON
	const PWTBACKROOM_INFER
	const PWTBACKROOM_VIO
	const PWTBACKROOM_ROOD

PWTBackRoom_MapScripts:
	db 5 ; scene scripts
	scene_script .Enter ; SCENE_PWT_BACK_ROOM_ARRIVE
	scene_script .Win1 ; SCENE_PWT_BACK_ROOM_WIN_1
	scene_script .Win2 ; SCENE_PWT_BACK_ROOM_WIN_2
	scene_script .Win3 ; SCENE_PWT_BACK_ROOM_WIN_3
	scene_script .DummyScene ; SCENE_PWT_BACK_ROOM_NOTHING

	db 0 ; callbacks

.Enter:
	priorityjump .PwtBackRoomEnter
	end

.Win1:
	priorityjump .PwtBackAfterWin1
	end

.Win2:
	priorityjump .PwtBackAfterWin2
	end

.Win3:
	priorityjump .PwtBackAfterWin3
	end

.DummyScene:
	end
	
.PwtBackRoomEnter:
	applymovement PLAYER, PwtBackRoomEnterMovement
	opentext
	writetext PwtBackRoomArriveText
	waitbutton
	turnobject PWTBACKROOM_MARLON, RIGHT
	turnobject PWTBACKROOM_INFER, LEFT
	writetext PwtBackRoomMarlonInferText
	waitbutton
	closetext
	applymovement PWTBACKROOM_MARLON, PwtBackRoomMarlonMovement
	disappear PWTBACKROOM_MARLON
	playsound SFX_ENTER_DOOR
	pause 15
	applymovement PWTBACKROOM_INFER, PwtBackRoomInferLeaveMovement
	disappear PWTBACKROOM_INFER
	playsound SFX_ENTER_DOOR
	pause 15
	special FadeOutMusic
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	pause 15
	playsound SFX_TACKLE
	pause 20
	playsound SFX_TACKLE
	pause 20
	playsound SFX_STRENGTH
	pause 5
	playsound SFX_STRENGTH
	pause 5
	playsound SFX_STRENGTH
	waitsfx
	playsound SFX_TACKLE
	waitsfx
	pause 30
	special FadeInQuickly
	playmusic MUSIC_R_4
	pause 15
	moveobject PWTBACKROOM_INFER, 3, 1
	appear PWTBACKROOM_INFER
	turnobject PWTBACKROOM_INFER, DOWN
	playsound SFX_ENTER_DOOR
	pause 15
	opentext
	writetext PwtBackRoomInferWinText
	waitbutton
	closetext
	applymovement PWTBACKROOM_INFER, PwtBackRoomInferReturnMovement
	opentext
	writetext PwtBackRoomClay2ndDrawText
	buttonsound
	turnobject PWTBACKROOM_BIANCA, LEFT
	turnobject PLAYER, RIGHT
	showemote EMOTE_SHOCK, PWTBACKROOM_BIANCA, 15
	writetext PwtBackRoomBiancaText
	waitbutton
	closetext
	applymovement PWTBACKROOM_BIANCA, PwtBackRoomBiancaMovement
	disappear PWTBACKROOM_BIANCA
	playsound SFX_ENTER_DOOR
	setscene SCENE_PWT_BACK_ROOM_NOTHING
	moveobject PWTBACKROOM_INFER, 7, 4
	end
	
.PwtBackAfterWin1:
	applymovement PLAYER, PwtBackRoomReturnMovement
	opentext
	writetext PwtBackRoomClay3rdDrawText
	waitbutton
	turnobject PWTBACKROOM_JUNIPER, DOWN
	writetext PwtBackRoomJuniperIrisText
	waitbutton
	closetext
	applymovement PWTBACKROOM_JUNIPER, PwtBackRoomJuniperLeaveMovement
	disappear PWTBACKROOM_JUNIPER
	playsound SFX_ENTER_DOOR
	pause 15
	applymovement PWTBACKROOM_IRIS, PwtBackRoomIrisMovement
	disappear PWTBACKROOM_IRIS
	playsound SFX_ENTER_DOOR
	pause 15
	special FadeOutMusic
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	pause 15
	playsound SFX_TACKLE
	pause 20
	playsound SFX_TACKLE
	pause 20
	playsound SFX_STRENGTH
	pause 5
	playsound SFX_STRENGTH
	pause 5
	playsound SFX_STRENGTH
	waitsfx
	playsound SFX_TACKLE
	waitsfx
	pause 30
	special FadeInQuickly
	playmusic MUSIC_R_4
	pause 15
	moveobject PWTBACKROOM_JUNIPER, 3, 1
	appear PWTBACKROOM_JUNIPER
	turnobject PWTBACKROOM_JUNIPER, DOWN
	playsound SFX_ENTER_DOOR
	pause 15
	opentext
	writetext PwtBackRoomJuniperWinText
	waitbutton
	closetext
	applymovement PWTBACKROOM_JUNIPER, PwtBackRoomJuniperReturnMovement
	opentext
	writetext PwtBackRoomClay4thDrawText
	waitbutton
	turnobject PWTBACKROOM_CHEREN, RIGHT
	turnobject PWTBACKROOM_VIO, LEFT
	writetext PwtBackRoomCherenVioText
	waitbutton
	closetext
	applymovement PWTBACKROOM_CHEREN, PwtBackRoomCherenMovement
	disappear PWTBACKROOM_CHEREN
	playsound SFX_ENTER_DOOR
	pause 15
	applymovement PWTBACKROOM_VIO, PwtBackRoomVioLeaveMovement
	disappear PWTBACKROOM_VIO
	playsound SFX_ENTER_DOOR
	pause 15
	special FadeOutMusic
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	pause 15
	playsound SFX_TACKLE
	pause 20
	playsound SFX_TACKLE
	pause 20
	playsound SFX_STRENGTH
	pause 5
	playsound SFX_STRENGTH
	pause 5
	playsound SFX_STRENGTH
	waitsfx
	playsound SFX_TACKLE
	waitsfx
	pause 30
	special FadeInQuickly
	playmusic MUSIC_R_4
	pause 15
	moveobject PWTBACKROOM_VIO, 3, 1
	appear PWTBACKROOM_VIO
	turnobject PWTBACKROOM_VIO, DOWN
	playsound SFX_ENTER_DOOR
	pause 15
	opentext
	writetext PwtBackRoomVioWinText
	waitbutton
	closetext
	applymovement PWTBACKROOM_VIO, PwtBackRoomVioReturnMovement
	opentext
	writetext PwtBackRoomClay2ndRoundText
	buttonsound
	turnobject PWTBACKROOM_INFER, LEFT
	turnobject PLAYER, RIGHT
	writetext PwtBackRoomInfer2ndRoundText
	waitbutton
	closetext
	applymovement PWTBACKROOM_INFER, PwtBackRoomInferLeaveMovement
	disappear PWTBACKROOM_INFER
	playsound SFX_ENTER_DOOR
	setevent EVENT_PWT_BATTLE_ROOM_BIANCA
	clearevent EVENT_PWT_BATTLE_ROOM_INFER
	setmapscene PWT_BATTLE_ROOM, SCENE_DEFAULT
	setscene SCENE_PWT_BACK_ROOM_NOTHING
	moveobject PWTBACKROOM_JUNIPER, 0, 4
	moveobject PWTBACKROOM_VIO, 7, 5
	end
	
.PwtBackAfterWin2:
	applymovement PLAYER, PwtBackRoomReturnMovement
	opentext
	writetext PwtBackRoomClay2ndSemiText
	waitbutton
	closetext
	applymovement PWTBACKROOM_JUNIPER, PwtBackRoomJuniperLeaveMovement
	disappear PWTBACKROOM_JUNIPER
	playsound SFX_ENTER_DOOR
	pause 15
	applymovement PWTBACKROOM_VIO, PwtBackRoomVioLeaveMovement
	disappear PWTBACKROOM_VIO
	playsound SFX_ENTER_DOOR
	pause 15
	special FadeOutMusic
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	pause 15
	playsound SFX_TACKLE
	pause 20
	playsound SFX_TACKLE
	pause 20
	playsound SFX_STRENGTH
	pause 5
	playsound SFX_STRENGTH
	pause 5
	playsound SFX_STRENGTH
	waitsfx
	playsound SFX_TACKLE
	waitsfx
	pause 30
	special FadeInQuickly
	playmusic MUSIC_R_4
	pause 15
	moveobject PWTBACKROOM_VIO, 3, 1
	appear PWTBACKROOM_VIO
	turnobject PWTBACKROOM_VIO, DOWN
	playsound SFX_ENTER_DOOR
	pause 15
	opentext
	writetext PwtBackRoomVioWinText
	waitbutton
	closetext
	applymovement PWTBACKROOM_VIO, PwtBackRoomVioReturnMovement
	opentext
	writetext PwtBackRoomClayFinalRoundText
	waitbutton
	closetext
	applymovement PWTBACKROOM_VIO, PwtBackRoomVioLeaveMovement
	disappear PWTBACKROOM_VIO
	playsound SFX_ENTER_DOOR
	setevent EVENT_PWT_BATTLE_ROOM_INFER
	clearevent EVENT_PWT_BATTLE_ROOM_VIO
	setmapscene PWT_BATTLE_ROOM, SCENE_DEFAULT
	setscene SCENE_PWT_BACK_ROOM_NOTHING
	end

.PwtBackAfterWin3:
	applymovement PLAYER, PwtBackRoomFinalReturnMovement
	opentext
	writetext PwtBackRoomClayGivePrizeText
	buttonsound
	applymovement PWTBACKROOM_CLAY, PwtBackRoomClayMovement
	verbosegiveitem MASTER_BALL
	writetext PwtBackRoomClayFinishText
	waitbutton
	closetext
	special FadeOutMusic
	pause 15
	moveobject PWTBACKROOM_VIO, 3, 1
	appear PWTBACKROOM_VIO
	turnobject PWTBACKROOM_VIO, DOWN
	playsound SFX_ENTER_DOOR
	pause 15
	turnobject PWTBACKROOM_CLAY, UP
	opentext
	writetext PwtBackRoomVioArriveText
	waitbutton
	closetext
	applymovement PWTBACKROOM_VIO, PwtBackRoomSpinMovement
	variablesprite SPRITE_VIO, SPRITE_PZMA_SAGE
	special LoadUsedSpritesGFX
	playmusic MUSIC_ROCKET_ENCOUNTER
	applymovement PWTBACKROOM_VIO, PwtBackRoomVioFinalMovement
	moveobject PWTBACKROOM_INFER, 3, 1
	appear PWTBACKROOM_INFER
	turnobject PWTBACKROOM_INFER, DOWN
	playsound SFX_ENTER_DOOR
	pause 15
	applymovement PWTBACKROOM_INFER, PwtBackRoomClayMovement
	opentext
	writetext PwtBackRoomZinzolinIntroText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	pause 15
	moveobject PWTBACKROOM_CHEREN, 3, 9
	moveobject PWTBACKROOM_BIANCA, 4, 9
	appear PWTBACKROOM_CHEREN
	appear PWTBACKROOM_BIANCA
	applymovement PWTBACKROOM_CHEREN, PwtBackRoomCherenBiancaMovement
	applymovement PWTBACKROOM_BIANCA, PwtBackRoomCherenBiancaMovement
	opentext
	writetext PwtBackRoomZinzolinConfrontationText
	waitbutton
	closetext
	turnobject PWTBACKROOM_VIO, LEFT
	turnobject PWTBACKROOM_INFER, RIGHT
	special FadeOutMusic
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	pause 15
	playsound SFX_ESCAPE_ROPE
	waitsfx
	disappear PWTBACKROOM_VIO
	disappear PWTBACKROOM_INFER
	pause 15
	special FadeInQuickly
	playsound SFX_ENTER_DOOR
	pause 15
	appear PWTBACKROOM_ROOD
	applymovement PWTBACKROOM_ROOD, PwtBackRoomRoodMovement
	turnobject PLAYER, LEFT
	turnobject PWTBACKROOM_CLAY, LEFT
	opentext
	writetext PwtBackRoomRoodText
	waitbutton
	closetext
	setevent EVENT_FINISHED_PWT
	setevent EVENT_DRIFTVEIL_BLOCKER
	setscene SCENE_PWT_BACK_ROOM_NOTHING
	special FadeOutPalettes
	playsound SFX_ENTER_DOOR
	waitsfx
	warp DRIFTVEIL_SHELTER, 6, 4
	end
	
PwtBackRoomClayScript:
	jumptextfaceplayer PwtBackRoomClayText
	
PwtBackRoomIrisScript:
	jumptextfaceplayer PwtBackRoomIrisText
	
PwtBackRoomCherenScript:
	jumptextfaceplayer PwtBackRoomCherenText
	
PwtBackRoomInferScript:
	jumptextfaceplayer PwtBackRoomInferText
	
PwtBackRoomVioScript:
	jumptextfaceplayer PwtBackRoomVioText
	
PwtBackRoomJuniperScript:
	checkevent EVENT_PWT_BEAT_BIANCA
	iftrue .Juniper2
	jumptextfaceplayer PwtBackRoomJuniper1Text
.Juniper2
	jumptextfaceplayer PwtBackRoomJuniper2Text
	
PwtBackRoomEnterMovement:
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step LEFT
	turn_head UP
	step_end
	
PwtBackRoomBiancaMovement:
	step UP
	step LEFT
	step LEFT
	step UP
	step UP
	step_end
	
PwtBackRoomInferLeaveMovement:
	step UP
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step_end
	
PwtBackRoomInferReturnMovement:
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	turn_head UP
	step_end
	
PwtBackRoomMarlonMovement:
	step UP
	step RIGHT
	step UP
	step UP
	step_end
	
PwtBackRoomReturnMovement:
	step DOWN
	step DOWN
	step LEFT
	step DOWN
	step DOWN
	turn_head UP
	step_end
	
PwtBackRoomFinalReturnMovement:
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	turn_head UP
	step_end
	
PwtBackRoomJuniperLeaveMovement:
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step UP
	step_end
	
PwtBackRoomIrisMovement:
	step UP
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step UP
	step_end
	
PwtBackRoomJuniperReturnMovement:
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	turn_head UP
	step_end
	
PwtBackRoomCherenMovement:
	step LEFT
	step UP
	step UP
	step LEFT
	step UP
	step UP
	step_end
	
PwtBackRoomVioLeaveMovement:
	step LEFT
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step_end
	
PwtBackRoomVioReturnMovement:
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step RIGHT
	turn_head UP
	step_end
	
PwtBackRoomClayMovement:
	step DOWN
	step_end
	
PwtBackRoomVioFinalMovement:
	step DOWN
	step RIGHT
	turn_head DOWN
	step_end
	
PwtBackRoomCherenBiancaMovement:
	step UP
	step UP
	step UP
	step UP
	step_end
	
PwtBackRoomRoodMovement:
	step UP
	step UP
	step LEFT
	step LEFT
	step UP
	step UP
	step UP
	step UP
	step RIGHT
	step_end
	
PwtBackRoomSpinMovement:
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	step_end
	
PwtBackRoomArriveText:
	text "Congratulations,"
	line "y'all have"
	
	para "qualified for the"
	line "#MON WORLD"
	cont "TOURNAMENT!"
	
	para "I'm CLAY, I'll be"
	line "yer host for the"
	cont "event."
	
	para "CLAY: Let's go"
	line "ahead 'n introduce"
	cont "our contestants."
	
	para "The HUMILAU CITY"
	line "GYM LEADER,"
	cont "MARLON!"
	
	para "The ASPERTIA CITY"
	line "GYM LEADER,"
	cont "CHEREN!"
	
	para "The former #-"
	line "MON LEAGUE CHAMP,"
	cont "IRIS!"
	
	para "UNOVA's own #-"
	line "MON PROF, BIANCA!"
	
	para "And her former"
	line "mentor, Miss"
	cont "JUNIPER!"
	
	para "We've also got a"
	line "handful of new-"
	cont "comers this time."
	
	para "#MON trainer"
	line "INFER!"
	
	para "#MON trainer"
	line "<PLAY_G>!"
	
	para "And MYSTERYMAN"
	line "VIO!"
	
	para "Alright, let's get"
	line "on to it."
	
	para "I'll draw your"
	line "names randomly."
	
	para "Once I've drawn a"
	line "pair, head on in"
	cont "to the BATTLE ROOM"
	cont "in back."
	
	para "Winners move on"
	line "to the next round."
	
	para "Now then, let's"
	line "draw the first"
	cont "pair."
	
	para "We have…"
	
	para "LEADER MARLON!"
	
	para "And you'll be"
	line "against…"
	
	para "<PKMN> TRAINER INFER!"
	done
	
PwtBackRoomMarlonInferText:
	text "MARLON: So, you're"
	line "my opponent?"
	
	para "Good luck out"
	line "there, trainer!"
	
	para "INFER: Don't"
	line "underestimate me!"
	done
	
PwtBackRoomInferWinText:
	text "CLAY: And the"
	line "winner is…"
	
	para "<PKMN> TRAINER INFER!"
	
	para "INFER: Hmph. There"
	line "was no way I could"
	cont "have lost."
	done
	
PwtBackRoomClay2ndDrawText:
	text "CLAY: Now then,"
	line "on to the next"
	cont "draw."
	
	para "We have…"
	
	para "<PKMN> PROF.BIANCA!"
	
	para "And…"
	
	para "<PKMN> TRAINER"
	line "<PLAY_G>!"
	done
	
PwtBackRoomBiancaText:
	text "BIANCA: Oh! It"
	line "looks like you're"
	
	para "My opponent,"
	line "<PLAY_G>!"
	done
	
PwtBackRoomClay3rdDrawText:
	text "CLAY: And the"
	line "winner is…"
	
	para "<PKMN> TRAINER"
	line "<PLAY_G>!"
	
	para "Congratulations,"
	line "you'll be moving"
	cont "on to the next"
	cont "round."
	
	para "Now, let's draw"
	line "us our next pair!"
	
	para "We have…"
	
	para "<PKMN> TRAINER IRIS!"
	
	para "And…"
	
	para "<PKMN> PROF.JUNIPER!"
	
	para "Er- I mean, <PKMN>"
	line "TRAINER JUNIPER…"
	done
	
PwtBackRoomJuniperIrisText:
	text "IRIS: Oh! Looks"
	line "like I'm battling"
	cont "you, Miss JUNIPER."
	
	para "JUNIPER: I was"
	line "hoping to face the"
	
	para "former CHAMPION at"
	line "some point, but I"
	
	para "wasn't expecting"
	line "it to be so early!"
	done
	
PwtBackRoomJuniperWinText:
	text "CLAY: And the"
	line "winner is…"
	
	para "<PKMN> TRAINER"
	line "JUNIPER!"
	
	para "JUNIPER: Wow, what"
	line "a battle! That"
	
	para "girl sure is"
	line "talented!"
	done
	
PwtBackRoomClay4thDrawText:
	text "CLAY: And that"
	line "leaves only two"
	cont "more contestants"
	cont "to draw."
	
	para "The last matchup"
	line "will be…"
	
	para "LEADER CHEREN!"
	
	para "And…"
	
	para "MYSTERYMAN VIO!"
	done
	
PwtBackRoomCherenVioText:
	text "CHEREN: I'll give"
	line "it my all."
	
	para "VIO: … … … …"
	done
	
PwtBackRoomVioWinText:
	text "CLAY: And the"
	line "winner is…"
	
	para "MYSTERYMAN VIO!"
	
	para "VIO: … … … …"
	done
	
PwtBackRoomClay2ndRoundText:
	text "CLAY: And with"
	line "that, the first"
	cont "round is done!"
	
	para "Congratulations to"
	line "y'all who're still"
	cont "in it!"
	
	para "Lot of newcomers"
	line "makin' a splash"
	cont "today."
	
	para "Now, our second"
	line "round matchups"
	cont "will begin with…"
	
	para "<PKMN> TRAINER INFER!"
	
	para "And…"
	
	para "<PKMN> TRAINER"
	line "<PLAY_G>!"
	done
	
PwtBackRoomInfer2ndRoundText:
	text "INFER: I was"
	line "hoping to be drawn"
	cont "against you."
	
	para "You'd better not"
	line "disappoint me!"
	done
	
PwtBackRoomClay2ndSemiText:
	text "CLAY: And the"
	line "winner is…"
	
	para "<PKMN> TRAINER"
	line "<PLAY_G>!"
	
	para "Congratulations,"
	line "you're the first"
	cont "to make the final!"
	
	para "Now then, that"
	line "just leaves our"
	cont "second pair."
	
	para "<PKMN> TRAINER"
	line "JUNIPER!"
	
	para "And…"
	
	para "MYSTERYMAN VIO!"
	
	para "JUNIPER: This guy"
	line "must be strong if"
	
	para "he was able to"
	line "beat CHEREN."
	
	para "I'd better be"
	line "careful…"
	
	para "VIO: … … … …"
	done
	
PwtBackRoomClayFinalRoundText:
	text "CLAY: Well now,"
	line "looks like we're"
	
	para "down to our last"
	line "two contestants!"
	
	para "<PKMN> TRAINER"
	line "<PLAY_G> and"
	cont "MYSTERYMAN VIO…"
	
	para "Please enter the"
	line "arena!"
	
	para "VIO: … … … …"
	done
	
PwtBackRoomClayGivePrizeText:
	text "CLAY: Congrat-"
	line "ulations, <PLAY_G>!"
	
	para "Pretty impressive"
	line "performance,"
	
	para "especially from a"
	line "newcomer!"
	
	para "On behalf of the"
	line "#MON WORLD"
	cont "TOURNAMENT, please"
	cont "accept this prize."
	done
	
PwtBackRoomClayFinishText:
	text "CLAY: And that'll"
	line "conclude the #-"
	done
	
PwtBackRoomVioArriveText:
	text "CLAY: Hey, what're"
	line "you--"
	
	para "VIO: Silence!"
	
	para "You do not realize"
	line "who you are"
	cont "speaking to!"
	
	para "Allow me to show"
	line "you!"
	done
	
PwtBackRoomZinzolinIntroText:
	text "I am ZINZOLIN!"
	line "The king of TEAM"
	cont "PLASMA!"
	
	para "CLAY: You! You"
	line "were supposed to"
	cont "be locked up in"
	cont "jail!"
	
	para "ZINZOLIN: I have"
	line "been plotting my"
	
	para "escape while you"
	line "all laze away at"
	cont "your tournaments!"
	
	para "The SHADOWs of"
	line "TEAM PLASMA recog-"
	cont "nized my greatness"
	cont "and crowned me"
	cont "their new king!"
	
	para "This whole event"
	line "was just a ruse"
	cont "to hide my escape!"
	done
	
PwtBackRoomZinzolinConfrontationText:
	text "BIANCA: <PLAY_G>,"
	line "are you okay?"
	
	para "CHEREN: I knew"
	line "something fishy"
	cont "was going on!"
	
	para "ZINZOLIN: Bwa-ha-"
	line "ha! You're too"
	
	para "late! Our plans"
	line "have already been"
	cont "put into motion!"
	
	para "Let the world know"
	line "that TEAM PLASMA"
	cont "has returned, and"
	
	para "soon, UNOVA will"
	line "be ours!"
	
	para "Come now, INFER."
	line "We're off!"
	
	para "???: Wait! Stop!"
	done
	
PwtBackRoomRoodText:
	text "???: I'm too late,"
	line "she's gone with"
	cont "them…"
	
	para "CLAY: Now hold on"
	line "just a second, who"
	cont "are you supposed"
	cont "to be?"
	
	para "???: I'm sorry."
	line "Please trainers,"
	cont "come with me and"
	cont "I can explain…"
	done
	
PwtBackRoomClayText:
	text "CLAY: Alrighty"
	line "now, head on back"
	
	para "fer yer match"
	line "when yer ready."
	done
	
PwtBackRoomIrisText:
	text "IRIS: I gave up"
	line "being CHAMPION"
	
	para "to go back to live"
	line "with my Grandpa,"
	
	para "but I still like"
	line "to come battle"
	cont "every now and"
	cont "then!"
	done
	
PwtBackRoomCherenText:
	text "CHEREN: So, you've"
	line "drawn BIANCA in"
	cont "the first round…"
	
	para "Good luck, you'll"
	line "need it."
	done
	
PwtBackRoomInferText:
	text "INFER: You'd"
	line "better win your"
	
	para "match, and when"
	line "you do, I'll be"
	
	para "waiting for you"
	line "in the next round!"
	done
	
PwtBackRoomVioText:
	text "VIO: … … … …"
	done
	
PwtBackRoomJuniper1Text:
	text "JUNIPER: Don't let"
	line "her personality"
	
	para "fool you, the"
	line "PROF. is a"
	
	para "talented #MON"
	line "trainer too."
	done
	
PwtBackRoomJuniper2Text:
	text "JUNIPER: I'm a bit"
	line "nervous. That guy"
	
	para "took out CHEREN"
	line "without flinching."
	
	para "Something about"
	line "him strikes me as"
	cont "suspicious…"
	done

PWTBackRoom_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  3, 11, PWT_HALLWAY, 4
	warp_event  4, 11, PWT_HALLWAY, 4
	warp_event  3,  1, PWT_BATTLE_ROOM, 1

	db 0 ; coord events

	db 0 ; bg events
	
	db 9 ; object events
	object_event  4,  2, SPRITE_CLAY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, PwtBackRoomClayScript, -1
	object_event  5,  5, SPRITE_CHEREN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PwtBackRoomCherenScript, EVENT_PWT_BACK_ROOM_CHEREN
	object_event  5,  4, SPRITE_BIANCA, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, 0, EVENT_PWT_BACK_ROOM_BIANCA
	object_event  0,  4, SPRITE_JUNIPER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PwtBackRoomJuniperScript, EVENT_PWT_BACK_ROOM_JUNIPER
	object_event  0,  5, SPRITE_IRIS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, PwtBackRoomIrisScript, EVENT_PWT_BACK_ROOM_IRIS
	object_event  2,  4, SPRITE_MARLON, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, 0, EVENT_PWT_BACK_ROOM_MARLON
	object_event  7,  4, SPRITE_INFER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PwtBackRoomInferScript, EVENT_PWT_BACK_ROOM_INFER
	object_event  7,  5, SPRITE_VIO, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PwtBackRoomVioScript, EVENT_PWT_BACK_ROOM_VIO
	object_event  3,  9, SPRITE_ROOD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, 0, EVENT_PWT_BACK_ROOM_ROOD
	