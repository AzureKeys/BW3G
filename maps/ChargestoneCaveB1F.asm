	const_def 2 ; object constants
	const CHARGESTONECAVEB1F_FULL_HEAL
	const CHARGESTONECAVEB1F_BIG_PEARL
	const CHARGESTONECAVEB1F_IRON
	const CHARGESTONECAVEB1F_ACE_TRAINERF
	const CHARGESTONECAVEB1F_HIKER
	const CHARGESTONECAVEB1F_BATTLE_GIRL
	const CHARGESTONECAVEB1F_DOCTOR
	const CHARGESTONECAVEB1F_SCIENTISTF
	const CHARGESTONECAVEB1F_PKMN_RANGERM

ChargestoneCaveB1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
TrainerDoctorChargestone:
	faceplayer
	opentext
	checkevent EVENT_BEAT_DOCTOR_CHARGESTONE
	iftrue .beaten
	writetext ChargestoneDoctorIntroText
	waitbutton
	closetext
	winlosstext ChargestoneDoctorWinText, 0
	setlasttalked CHARGESTONECAVEB1F_DOCTOR
	loadtrainer DOCTOR, DOCTOR_CHARGESTONE
	writecode VAR_BATTLETYPE, BATTLETYPE_NORMAL
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_DOCTOR_CHARGESTONE
	opentext
.beaten
	writetext ChargestoneDoctorHealText
	waitbutton
	closetext
	special StubbedTrainerRankings_Healings
	playsound SFX_FULL_HEAL
	special HealParty
	end

TrainerAceTrainerF2Chargestone:
	trainer ACE_TRAINERF_D, ACE_TRAINERF_CHARGESTONE_2, EVENT_BEAT_ACE_TRAINERF_CHARGESTONE_2, AceTrainerF2ChargestoneSeenText, AceTrainerF2ChargestoneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext AceTrainerF2ChargestoneAfterText
	waitbutton
	closetext
	end

TrainerHiker2Chargestone:
	trainer HIKER, HIKER_CHARGESTONE_2, EVENT_BEAT_HIKER_CHARGESTONE_2, Hiker2ChargestoneSeenText, Hiker2ChargestoneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Hiker2ChargestoneAfterText
	waitbutton
	closetext
	end

TrainerBattleGirlChargestone:
	trainer BATTLE_GIRL, BATTLE_GIRL_CHARGESTONE, EVENT_BEAT_BATTLE_GIRL_CHARGESTONE, BattleGirlChargestoneSeenText, BattleGirlChargestoneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BattleGirlChargestoneAfterText
	waitbutton
	closetext
	end

TrainerScientistFChargestone:
	trainer SCIENTISTF, SCIENTISTF_CHARGESTONE, EVENT_BEAT_SCIENTISTF_CHARGESTONE, ScientistFChargestoneSeenText, ScientistFChargestoneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ScientistFChargestoneAfterText
	waitbutton
	closetext
	end

TrainerPkmnRangerMChargestone:
	trainer PKMN_RANGERM, PKMN_RANGERM_CHARGESTONE, EVENT_BEAT_PKMN_RANGERM_CHARGESTONE, PkmnRangerMChargestoneSeenText, PkmnRangerMChargestoneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PkmnRangerMChargestoneAfterText
	waitbutton
	closetext
	end
	
ChargestoneFullHeal:
	itemball FULL_HEAL
	
ChargestoneBigPearl:
	itemball BIG_PEARL
	
ChargestoneIron:
	itemball IRON
	
ChargestoneHPUp:
	hiddenitem HP_UP, EVENT_CHARGESTONE_HP_UP
	
ChargestoneDoctorIntroText:
	text "I'm a doctor, but"
	line "I'm also a #-"
	cont "MON trainer."

	para "If you can defeat"
	line "me in a battle,"
	cont "I'll heal your"
	cont "#MON."
	done
	
ChargestoneDoctorWinText:
	text "Ah, I see."
	done
	
ChargestoneDoctorHealText:
	text "I'll restore your"
	line "#MON back to"
	cont "full health."
	done
	
AceTrainerF2ChargestoneSeenText:
	text "My beloved #MON"
	line "will make their"
	cont "debut!"
	done

AceTrainerF2ChargestoneBeatenText:
	text "You were the one"
	line "with the stronger"
	cont "power as a team!"
	done

AceTrainerF2ChargestoneAfterText:
	text "Do you think that"
	line "maybe you need"
	
	para "some #MON that"
	line "can take attacks,"
	
	para "not just deal them"
	line "out?"
	done
	
Hiker2ChargestoneSeenText:
	text "When I say dig,"
	line "say, How Low?"
	done

Hiker2ChargestoneBeatenText:
	text "I didn't notice"
	line "the pitfall!"
	done

Hiker2ChargestoneAfterText:
	text "Life is filled"
	line "with pitfalls! If"
	
	para "You fall in, do"
	line "your best to crawl"
	cont "out!"
	done
	
BattleGirlChargestoneSeenText:
	text "I've been honing"
	line "my skills for this"
	cont "moment!"
	done

BattleGirlChargestoneBeatenText:
	text "Wooaargh!"
	done

BattleGirlChargestoneAfterText:
	text "I guess it wasn't"
	line "enough…"
	done
	
ScientistFChargestoneSeenText:
	text "I love this place!"
	line "The electricity"
	
	para "charges up my"
	line "inspiration!"
	done

ScientistFChargestoneBeatenText:
	text "Aha! A lightbulb"
	line "went off in my"
	cont "head!"
	done

ScientistFChargestoneAfterText:
	text "When a person"
	line "moves, electric"
	
	para "signals travel in"
	line "the body! When a"
	
	para "person has an"
	line "inspiration,"
	
	para "electric signals"
	line "travel to the"
	cont "brain!"
	done
	
PkmnRangerMChargestoneSeenText:
	text "I am a #MON"
	line "RANGER, here to"
	
	para "gather up some"
	line "electric power!"
	done

PkmnRangerMChargestoneBeatenText:
	text "I still can't draw"
	line "forth my electric"
	cont "powers!"
	done

PkmnRangerMChargestoneAfterText:
	text "I don't know if"
	line "it's unfair or"
	
	para "just plain cool"
	line "when #MON use"
	cont "electricity!"
	done

ChargestoneCaveB1F_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  3, 31, CHARGESTONE_CAVE_1F, 2
	warp_event 27, 35, CHARGESTONE_CAVE_1F, 3
	warp_event 23,  3, CHARGESTONE_CAVE_1F, 4
	warp_event  9,  4, CHARGESTONE_CAVE_B2F, 1

	db 0 ; coord events

	db 1 ; bg events
	bg_event 18,  2, BGEVENT_ITEM, ChargestoneHPUp

	db 9 ; object events
	object_event 19, 24, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ChargestoneFullHeal, EVENT_CHARGESTONE_FULL_HEAL
	object_event 27, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ChargestoneBigPearl, EVENT_CHARGESTONE_BIG_PEARL
	object_event  6, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ChargestoneIron, EVENT_CHARGESTONE_IRON
	object_event 14, 34, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 3, TrainerAceTrainerF2Chargestone, -1
	object_event 18, 22, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerHiker2Chargestone, -1
	object_event 26, 21, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBattleGirlChargestone, -1
	object_event 21, 18, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TrainerDoctorChargestone, -1
	object_event 24,  8, SPRITE_SCIENTIST_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerScientistFChargestone, -1
	object_event 16,  6, SPRITE_RANGER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 2, TrainerPkmnRangerMChargestone, -1
	