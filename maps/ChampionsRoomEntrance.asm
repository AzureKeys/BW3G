	const_def 2 ; object constants
	const CHAMPIONSROOMENTRANCE_SHADOW_1
	const CHAMPIONSROOMENTRANCE_SHADOW_2
	const CHAMPIONSROOMENTRANCE_SHADOW_3
	const CHAMPIONSROOMENTRANCE_JUNIPER
	const CHAMPIONSROOMENTRANCE_METAGROSS

ChampionsRoomEntrance_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .ResetScene

.DummyScene0:
	end

.DummyScene1:
	end
	
; Set scene back to default if we haven't beat Genesis Project
; so scene will play again if we lost against it
.ResetScene:
	checkevent EVENT_BEAT_GENESIS_PROJECT
	iftrue .done
	setscene SCENE_DEFAULT
.done
	return
	
ChampionsRoomEntranceScript:
	special FadeOutMusic
	pause 15
	opentext
	writetext ChampionsRoomEntranceShadowsAppearText
	waitbutton
	closetext
	playmusic MUSIC_ROCKET_ENCOUNTER
	applymovement PLAYER, ChampionsRoomEntrancePlayerBackUpMovement
	playsound SFX_WARP_TO
	appear CHAMPIONSROOMENTRANCE_SHADOW_2
	applymovement CHAMPIONSROOMENTRANCE_SHADOW_2, ChampionsRoomEntranceTeleportInMovement
	playsound SFX_WARP_TO
	appear CHAMPIONSROOMENTRANCE_SHADOW_1
	applymovement CHAMPIONSROOMENTRANCE_SHADOW_1, ChampionsRoomEntranceTeleportInMovement
	playsound SFX_WARP_TO
	appear CHAMPIONSROOMENTRANCE_SHADOW_3
	applymovement CHAMPIONSROOMENTRANCE_SHADOW_3, ChampionsRoomEntranceTeleportInMovement
	opentext
	writetext ChampionsRoomEntranceShadowsIntroText
	waitbutton
	closetext
	applymovement CHAMPIONSROOMENTRANCE_SHADOW_1, ChampionsRoomEntranceShadowsApproachMovement
	applymovement CHAMPIONSROOMENTRANCE_SHADOW_3, ChampionsRoomEntranceShadowsApproachMovement
	special FadeOutMusic
	pause 15
	opentext
	writetext ChampionsRoomEntranceMetagrossAttackText
	waitbutton
	closetext
	appear CHAMPIONSROOMENTRANCE_METAGROSS
	turnobject CHAMPIONSROOMENTRANCE_SHADOW_2, UP
	turnobject CHAMPIONSROOMENTRANCE_SHADOW_1, UP
	turnobject CHAMPIONSROOMENTRANCE_SHADOW_3, UP
	cry METAGROSS
	waitsfx
	playsound SFX_TACKLE
	applymovement CHAMPIONSROOMENTRANCE_METAGROSS, ChampionsRoomEntranceMetagrossAttackMovement
	applymovement CHAMPIONSROOMENTRANCE_SHADOW_2, ChampionsRoomEntranceShadowHitMovement
	waitsfx
	pause 30
	playmusic MUSIC_CHEREN_THEME
	playsound SFX_ENTER_DOOR
	appear CHAMPIONSROOMENTRANCE_JUNIPER
	waitsfx
	opentext
	writetext ChampionsRoomEntranceJuniperIntroText
	waitbutton
	closetext
	playsound SFX_BALL_POOF
	disappear CHAMPIONSROOMENTRANCE_METAGROSS
	waitsfx
	applymovement CHAMPIONSROOMENTRANCE_JUNIPER, ChampionsRoomEntranceJuniperApproachMovement
	opentext
	writetext ChampionsRoomEntranceShadowsPlanText
	buttonsound
	showemote EMOTE_SHOCK, CHAMPIONSROOMENTRANCE_JUNIPER, 15
	writetext ChampionsRoomEntranceStopThemText
	waitbutton
	closetext
	applymovement CHAMPIONSROOMENTRANCE_SHADOW_1, ChampionsRoomEntranceShadowLeftMovement
	applymovement CHAMPIONSROOMENTRANCE_SHADOW_3, ChampionsRoomEntranceShadowRightMovement
	opentext
	writetext ChampionsRoomEntranceHoldThemOffText
	waitbutton
	closetext
	applymovement PLAYER, ChampionsRoomEntrancePlayerApproachMovement
	turnobject CHAMPIONSROOMENTRANCE_JUNIPER, UP
	opentext
	writetext ChampionsRoomEntranceHealPartyText
	buttonsound
	special StubbedTrainerRankings_Healings
	playsound SFX_FULL_HEAL
	special HealParty
	writetext ChampionsRoomEntranceLeaveText
	waitbutton
	closetext
	turnobject CHAMPIONSROOMENTRANCE_JUNIPER, DOWN
	applymovement PLAYER, ChampionsRoomEntrancePlayerLeaveMovement
	setscene SCENE_FINISHED
	warpcheck
	end
	
ChampionsRoomEntranceDisappearObjects:
	checkevent EVENT_CHAMPIONS_ROOM_ENTRANCE_CHARACTERS
	iftrue .done
	disappear CHAMPIONSROOMENTRANCE_SHADOW_1
	disappear CHAMPIONSROOMENTRANCE_SHADOW_2
	disappear CHAMPIONSROOMENTRANCE_SHADOW_3
	disappear CHAMPIONSROOMENTRANCE_METAGROSS
	disappear CHAMPIONSROOMENTRANCE_JUNIPER
	setevent EVENT_CHAMPIONS_ROOM_SHADOWS
	setevent EVENT_CHAMPIONS_ROOM_JUNIPER
	setevent EVENT_CHAMPIONS_ROOM_GENESECT_1
	setevent EVENT_CHAMPIONS_ROOM_GENESECT_2
.done
	end
	
ChampionsRoomEntrancePlayerBackUpMovement:
	turn_head UP
	fix_facing
	slow_step DOWN
	slow_step DOWN
	slow_step DOWN
	remove_fixed_facing
	step_end
	
ChampionsRoomEntranceTeleportInMovement:
	teleport_to
	step_end
	
ChampionsRoomEntranceShadowsApproachMovement:
	step DOWN
	step DOWN
	step_end
	
ChampionsRoomEntranceJuniperApproachMovement:
	slow_step DOWN
	slow_step DOWN
	step_end
	
ChampionsRoomEntranceMetagrossAttackMovement:
	big_step DOWN
	step_end
	
ChampionsRoomEntranceShadowHitMovement:
	fix_facing
	big_step DOWN
	remove_fixed_facing
	step_end
	
ChampionsRoomEntranceShadowLeftMovement:
	big_step UP
	turn_head RIGHT
	step_end
	
ChampionsRoomEntranceShadowRightMovement:
	big_step UP
	turn_head LEFT
	step_end
	
ChampionsRoomEntrancePlayerApproachMovement:
	big_step RIGHT
	big_step RIGHT
	big_step UP
	big_step UP
	big_step UP
	big_step LEFT
	big_step LEFT
	turn_head DOWN
	step_end
	
ChampionsRoomEntrancePlayerLeaveMovement:
	step UP
	step_end
	
ChampionsRoomEntranceShadowsAppearText:
	text "???: You! Don't"
	line "take another step!"
	done
	
ChampionsRoomEntranceShadowsIntroText:
	text "SHADOW: You've"
	line "been a thorn in"
	
	para "the side of our"
	line "SAGEs…"
	
	para "SHADOW: And we"
	line "will not permit"
	
	para "you to jeopardize"
	line "our plan further…"
	
	para "SHADOW: We will"
	line "take care of you"
	
	para "right here and"
	line "now!"
	done

ChampionsRoomEntranceMetagrossAttackText:
	text "???: Hold it!"
	
	para "METAGROSS, IRON"
	line "HEAD!"
	done
	
ChampionsRoomEntranceJuniperIntroText:
	text "JUNIPER: Whatever"
	line "you've got"
	
	para "planned, it stops"
	line "now!"
	done
	
ChampionsRoomEntranceShadowsPlanText:
	text "You may have"
	line "gotten the jump on"
	
	para "me before, but I"
	line "have no intention"
	
	para "of letting you"
	line "control me again!"
	
	para "SHADOW: Foolish"
	line "woman, we have no"
	
	para "need for you. The"
	line "true king of TEAM"
	
	para "PLASMA has already"
	line "risen!"
	
	para "SHADOW: That's"
	line "right! We've used"
	
	para "the MIND LINK you"
	line "so graciously"
	
	para "brought for us to"
	line "bring back our"
	cont "king!"
	
	para "SHADOW: By fusing"
	line "his mind with our"
	
	para "most powerful"
	line "artifical #MON,"
	
	para "our king will be"
	line "unstoppable!"
	
	para "SHADOW: That's"
	line "right! GHETSIS has"
	cont "risen again!"
	
	para "Lord GHETSIS will"
	line "once again become"
	
	para "the king of TEAM"
	line "PLASMA, and soon,"
	cont "all of UNOVA!"
	done

ChampionsRoomEntranceStopThemText:
	text "JUNIPER: What?!"
	line "You-you fused him"
	cont "with a #MON?"
	
	para "That's insane!"
	line "There's no way that"
	
	para "thing could be"
	line "stable!"
	
	para "<PLAY_G>! We've got"
	line "to stop this thing"
	
	para "before it gets out"
	line "and starts causing"
	cont "trouble!"
	done

ChampionsRoomEntranceHoldThemOffText:
	text "SHADOW: We will"
	line "not allow you to"
	
	para "disturb our plans"
	line "any further!"
	
	para "SHADOW: We will"
	line "hold you both"
	
	para "while our king"
	line "reclaims his"
	
	para "rightful place as"
	line "the ruler of"
	cont "UNOVA!"
	
	para "JUNIPER: Don't"
	line "underestimate me!"
	
	para "I'm plenty strong"
	line "enough to handle"
	cont "all three of you."
	
	para "<PLAY_G>, quickly!"
	done

ChampionsRoomEntranceHealPartyText:
	text "Here, let me heal"
	line "your party."
	done

ChampionsRoomEntranceLeaveText:
	text "<PLAY_G>, you've"
	line "got to stop what-"
	
	para "ever thing they've"
	line "created in there."
	
	para "I'll hold them"
	line "off. Go, quickly!"
	done
	
ChampionsRoomEntrance_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  7,  5, CHAMPIONS_ROOM, 1

	db 1 ; coord events
	coord_event  7,  6, SCENE_DEFAULT, ChampionsRoomEntranceScript

	db 0 ; bg events
	;bg_event  7, 15, BGEVENT_UP, ChampionsRoomEntranceDisappearObjects
	;bg_event  8, 15, BGEVENT_UP, ChampionsRoomEntranceDisappearObjects

	db 5 ; object events
	object_event  6,  6, SPRITE_SHADOW, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, 0, EVENT_CHAMPIONS_ROOM_ENTRANCE_CHARACTERS
	object_event  7,  7, SPRITE_SHADOW, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, 0, EVENT_CHAMPIONS_ROOM_ENTRANCE_CHARACTERS
	object_event  8,  6, SPRITE_SHADOW, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, 0, EVENT_CHAMPIONS_ROOM_ENTRANCE_CHARACTERS
	object_event  7,  5, SPRITE_JUNIPER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, 0, EVENT_CHAMPIONS_ROOM_ENTRANCE_CHARACTERS
	object_event  7,  5, SPRITE_METAGROSS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, 0, EVENT_CHAMPIONS_ROOM_ENTRANCE_CHARACTERS
	