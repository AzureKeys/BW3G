	const_def 2 ; object constants
	const CHARGESTONECAVEB1F_FULL_HEAL
	const CHARGESTONECAVEB1F_BIG_PEARL
	const CHARGESTONECAVEB1F_IRON
	const CHARGESTONECAVEB1F_COOLTRAINERF
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

TrainerCooltrainerF2Chargestone:
	trainer COOLTRAINERF_D, COOLTRAINERF_CHARGESTONE_2, EVENT_BEAT_COOLTRAINERF_CHARGESTONE_2, CooltrainerF2ChargestoneSeenText, CooltrainerF2ChargestoneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerF2ChargestoneAfterText
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
	trainer SCIENTIST_F, SCIENTISTF_CHARGESTONE, EVENT_BEAT_SCIENTISTF_CHARGESTONE, ScientistFChargestoneSeenText, ScientistFChargestoneBeatenText, 0, .Script

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
	
CooltrainerF2ChargestoneSeenText:
	text "Some #MON"
	line "evolve by level,"
	
	para "some by happiness,"
	line "and some with a"
	cont "stone."
	done

CooltrainerF2ChargestoneBeatenText:
	text "Schooled!"
	done

CooltrainerF2ChargestoneAfterText:
	text "But some #MON"
	line "need to be holding"
	cont "a certain item to"
	cont "evolve."
	done
	
Hiker2ChargestoneSeenText:
	text "I'm a rugged dude!"
	done

Hiker2ChargestoneBeatenText:
	text "So rugged!"
	done

Hiker2ChargestoneAfterText:
	text "Be honest, on a"
	line "scale of 1 to 10,"
	cont "how rugged am I?"
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
	text "The electricity in"
	line "this place is all"
	cont "over!"
	done

ScientistFChargestoneBeatenText:
	text "You're too good."
	done

ScientistFChargestoneAfterText:
	text "I hope it doesn't"
	line "fry my equipment…"
	done
	
PkmnRangerMChargestoneSeenText:
	text "There's rare #-"
	line "MON down here!"
	done

PkmnRangerMChargestoneBeatenText:
	text "Wow!"
	done

PkmnRangerMChargestoneAfterText:
	text "Your #MON are"
	line "impressive!"
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
	object_event 14, 34, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerF2Chargestone, -1
	object_event 18, 22, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerHiker2Chargestone, -1
	object_event 26, 21, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBattleGirlChargestone, -1
	object_event 21, 18, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TrainerDoctorChargestone, -1
	object_event 24,  8, SPRITE_SCIENTIST_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerScientistFChargestone, -1
	object_event 16,  6, SPRITE_RANGER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 2, TrainerPkmnRangerMChargestone, -1
	