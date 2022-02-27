	const_def 2 ; object constants
	const CHARGESTONECAVE1F_METAL_COAT
	const CHARGESTONECAVE1F_ESCAPE_ROPE
	const CHARGESTONECAVE1F_PARLYZ_HEAL
	const CHARGESTONECAVE1F_HYPER_POTION
	const CHARGESTONECAVE1F_TIMER_BALL
	const CHARGESTONECAVE1F_MAGNET
	const CHARGESTONECAVE1F_GUITARIST
	const CHARGESTONECAVE1F_SCIENTISTM
	const CHARGESTONECAVE1F_VETERAN
	const CHARGESTONECAVE1F_COOLTRAINERM
	const CHARGESTONECAVE1F_COOLTRAINERF
	const CHARGESTONECAVE1F_HIKER

ChargestoneCave1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerGuitarist1Chargestone:
	trainer GUITARIST, GUITARIST_CHARGESTONE_1, EVENT_BEAT_GUITARIST_CHARGESTONE_1, Guitarist1ChargestoneSeenText, Guitarist1ChargestoneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Guitarist1ChargestoneAfterText
	waitbutton
	closetext
	end

TrainerScientistMChargestone:
	trainer SCIENTIST_M, SCIENTISTM_CHARGESTONE, EVENT_BEAT_SCIENTISTM_CHARGESTONE, ScientistMChargestoneSeenText, ScientistMChargestoneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ScientistMChargestoneAfterText
	waitbutton
	closetext
	end

TrainerVeteranChargestone:
	trainer VETERAN, VETERAN_CHARGESTONE, EVENT_BEAT_VETERAN_CHARGESTONE, VeteranChargestoneSeenText, VeteranChargestoneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext VeteranChargestoneAfterText
	waitbutton
	closetext
	end

TrainerCooltrainerM1Chargestone:
	trainer COOLTRAINERM, COOLTRAINERM_CHARGESTONE_1, EVENT_BEAT_COOLTRAINERM_CHARGESTONE_1, CooltrainerM1ChargestoneSeenText, CooltrainerM1ChargestoneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerM1ChargestoneAfterText
	waitbutton
	closetext
	end

TrainerCooltrainerF1Chargestone:
	trainer COOLTRAINERF, COOLTRAINERF_CHARGESTONE_1, EVENT_BEAT_COOLTRAINERF_CHARGESTONE_1, CooltrainerF1ChargestoneSeenText, CooltrainerF1ChargestoneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerF1ChargestoneAfterText
	waitbutton
	closetext
	end

TrainerHiker1Chargestone:
	trainer HIKER_D, HIKER_CHARGESTONE_1, EVENT_BEAT_HIKER_CHARGESTONE_1, Hiker1ChargestoneSeenText, Hiker1ChargestoneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Hiker1ChargestoneAfterText
	waitbutton
	closetext
	end
	
ChargestoneMetalCoat:
	itemball METAL_COAT
	
ChargestoneEscapeRope:
	itemball ESCAPE_ROPE
	
ChargestoneParlyzHeal:
	itemball PARLYZ_HEAL
	
ChargestoneHyperPotion:
	itemball HYPER_POTION
	
ChargestoneTimerBall:
	itemball TIMER_BALL
	
ChargestoneMagnet:
	itemball MAGNET
	
ChargestoneMaxPotion:
	hiddenitem MAX_POTION, EVENT_CHARGESTONE_MAX_POTION
	
Guitarist1ChargestoneSeenText:
	text "This place is"
	line "amped up!"
	done

Guitarist1ChargestoneBeatenText:
	text "That's metal!"
	done

Guitarist1ChargestoneAfterText:
	text "I need more"
	line "practice!"
	done
	
ScientistMChargestoneSeenText:
	text "The stones in this"
	line "cave are charged"
	cont "with electricity."
	done

ScientistMChargestoneBeatenText:
	text "Shocking!"
	done

ScientistMChargestoneAfterText:
	text "Where does the"
	line "charge come from?"
	done
	
VeteranChargestoneSeenText:
	text "Let's see how"
	line "strong you are."
	done

VeteranChargestoneBeatenText:
	text "I'm impressed."
	done

VeteranChargestoneAfterText:
	text "You've got a lot"
	line "of potential, kid."
	done
	
CooltrainerM1ChargestoneSeenText:
	text "Some #MON"
	line "evolve in special"
	cont "ways!"
	done

CooltrainerM1ChargestoneBeatenText:
	text "Taken down!"
	done

CooltrainerM1ChargestoneAfterText:
	text "Try giving your"
	line "#MON items to"
	cont "hold."
	done
	
CooltrainerF1ChargestoneSeenText:
	text "You know items can"
	line "strengthen a #-"
	cont "MON's moves?"
	done

CooltrainerF1ChargestoneBeatenText:
	text "You're good!"
	done

CooltrainerF1ChargestoneAfterText:
	text "But some of those"
	line "items can also"
	cont "make #MON"
	cont "evolve!"
	done
	
Hiker1ChargestoneSeenText:
	text "I'm on the lookout"
	line "for rare stones!"
	done

Hiker1ChargestoneBeatenText:
	text "Dropped it!"
	done

Hiker1ChargestoneAfterText:
	text "There's got to be"
	line "treasure in a"
	cont "place like this!"
	done

ChargestoneCave1F_MapEvents:
	db 0, 0 ; filler

	db 5 ; warp events
	warp_event  3, 31, R_6, 3
	warp_event 13, 23, CHARGESTONE_CAVE_B1F, 1
	warp_event 39, 31, CHARGESTONE_CAVE_B1F, 2
	warp_event 29,  3, CHARGESTONE_CAVE_B1F, 3
	warp_event 43,  1, MISTRALTON_CITY, 1

	db 0 ; coord events

	db 1 ; bg events
	bg_event  4,  9, BGEVENT_ITEM, ChargestoneMaxPotion

	db 12 ; object events
	object_event 12, 28, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ChargestoneMetalCoat, EVENT_CHARGESTONE_METAL_COAT
	object_event  4, 22, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ChargestoneEscapeRope, EVENT_CHARGESTONE_ESCAPE_ROPE
	object_event 17,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ChargestoneParlyzHeal, EVENT_CHARGESTONE_PARLYZ_HEAL
	object_event 28,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ChargestoneHyperPotion, EVENT_CHARGESTONE_HYPER_POTION
	object_event 32, 30, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ChargestoneTimerBall, EVENT_CHARGESTONE_TIMER_BALL
	object_event 37, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ChargestoneMagnet, EVENT_CHARGESTONE_MAGNET
	object_event  8,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerGuitarist1Chargestone, -1
	object_event 15, 10, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerScientistMChargestone, -1
	object_event 15, 25, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 1, TrainerVeteranChargestone, -1
	object_event 39, 29, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerCooltrainerM1Chargestone, -1
	object_event 33,  6, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerCooltrainerF1Chargestone, -1
	object_event 38, 14, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 1, TrainerHiker1Chargestone, -1
	