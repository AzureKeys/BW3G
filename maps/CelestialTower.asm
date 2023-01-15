	const_def 2 ; object constants
	const CELESTIALTOWER_HYPER_POTION
	const CELESTIALTOWER_REVIVE
	const CELESTIALTOWER_PP_UP
	const CELESTIALTOWER_SMOKE_BALL
	const CELESTIALTOWER_HEX_MANIAC_1
	const CELESTIALTOWER_HEX_MANIAC_2
	const CELESTIALTOWER_MAID
	const CELESTIALTOWER_PSYCHICM
	const CELESTIALTOWER_PSYCHICF
	const CELESTIALTOWER_SOCIALITE
	const CELESTIALTOWER_POKEFAN_M
	const CELESTIALTOWER_POKEFAN_F
	const CELESTIALTOWER_LASS
	const CELESTIALTOWER_GENTLEMAN

CelestialTower_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerHexManiac1CelestialTower:
	trainer HEX_MANIAC, HEX_MANIAC_CELESTIAL_TOWER_1, EVENT_BEAT_HEX_MANIAC_CELESTIAL_TOWER_1, HexManiac1CelestialTowerSeenText, HexManiac1CelestialTowerBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HexManiac1CelestialTowerAfterText
	waitbutton
	closetext
	end

TrainerHexManiac2CelestialTower:
	trainer HEX_MANIAC, HEX_MANIAC_CELESTIAL_TOWER_2, EVENT_BEAT_HEX_MANIAC_CELESTIAL_TOWER_2, HexManiac2CelestialTowerSeenText, HexManiac2CelestialTowerBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HexManiac2CelestialTowerAfterText
	waitbutton
	closetext
	end

TrainerMaidCelestialTower:
	trainer MAID, MAID_CELESTIAL_TOWER, EVENT_BEAT_MAID_CELESTIAL_TOWER, MaidCelestialTowerSeenText, MaidCelestialTowerBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MaidCelestialTowerAfterText
	waitbutton
	closetext
	end

TrainerPsychicMCelestialTower:
	trainer PSYCHICM_T, PSYCHICM_CELESTIAL_TOWER, EVENT_BEAT_PSYCHICM_CELESTIAL_TOWER, PsychicMCelestialTowerSeenText, PsychicMCelestialTowerBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PsychicMCelestialTowerAfterText
	waitbutton
	closetext
	end

TrainerPsychicFCelestialTower:
	trainer PSYCHICF_T, PSYCHICF_CELESTIAL_TOWER, EVENT_BEAT_PSYCHICF_CELESTIAL_TOWER, PsychicFCelestialTowerSeenText, PsychicFCelestialTowerBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PsychicFCelestialTowerAfterText
	waitbutton
	closetext
	end

TrainerSocialiteCelestialTower:
	trainer SOCIALITE, SOCIALITE_CELESTIAL_TOWER, EVENT_BEAT_SOCIALITE_CELESTIAL_TOWER, SocialiteCelestialTowerSeenText, SocialiteCelestialTowerBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SocialiteCelestialTowerAfterText
	waitbutton
	closetext
	end

TrainerPokefanMCelestialTower:
	trainer POKEFANM, POKEFANM_CELESTIAL_TOWER, EVENT_BEAT_POKEFANM_CELESTIAL_TOWER, PokefanMCelestialTowerSeenText, PokefanMCelestialTowerBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanMCelestialTowerAfterText
	waitbutton
	closetext
	end

TrainerPokefanFCelestialTower:
	trainer POKEFANF, POKEFANF_CELESTIAL_TOWER, EVENT_BEAT_POKEFANF_CELESTIAL_TOWER, PokefanFCelestialTowerSeenText, PokefanFCelestialTowerBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanFCelestialTowerAfterText
	waitbutton
	closetext
	end

TrainerLassCelestialTower:
	trainer LASS, LASS_CELESTIAL_TOWER, EVENT_BEAT_LASS_CELESTIAL_TOWER, LassCelestialTowerSeenText, LassCelestialTowerBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassCelestialTowerAfterText
	waitbutton
	closetext
	end

TrainerGentlemanCelestialTower:
	trainer GENTLEMAN, GENTLEMAN_CELESTIAL_TOWER, EVENT_BEAT_GENTLEMAN_CELESTIAL_TOWER, GentlemanCelestialTowerSeenText, GentlemanCelestialTowerBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GentlemanCelestialTowerAfterText
	waitbutton
	closetext
	end
	
CelestialTowerHyperPotion:
	itemball HYPER_POTION
	
CelestialTowerRevive:
	itemball REVIVE
	
CelestialTowerPPUp:
	itemball PP_UP
	
CelestialTowerSmokeBall:
	itemball SMOKE_BALL
	
HexManiac1CelestialTowerSeenText:
	text "I'll borrow this"
	line "tower's power to…"
	
	para "power up my own…"
	line "powers!"
	done

HexManiac1CelestialTowerBeatenText:
	text "I couldn't expect"
	line "that to make my"
	
	para "#MON more"
	line "powerful too…"
	done

HexManiac1CelestialTowerAfterText:
	text "I should focus"
	line "more on increasing"
	cont "my own power…"
	done
	
HexManiac2CelestialTowerSeenText:
	text "I'm here to under-"
	line "stand the end of"
	
	para "the world, but I"
	line "don't quite get"
	
	para "it. If I have a"
	line "battle, will I be"
	cont "enlightened…?"
	done

HexManiac2CelestialTowerBeatenText:
	text "The end…"
	line "Is that it?"
	done

HexManiac2CelestialTowerAfterText:
	text "People, #MON…"
	line "Even if the world"
	
	para "is gone, that is"
	line "not the end."
	done
	
MaidCelestialTowerSeenText:
	text "…I still want to"
	line "fight! The wander-"
	
	para "ing spirits are"
	line "commanding me!"
	done

MaidCelestialTowerBeatenText:
	text "Hah… Hah… The"
	line "spirit just left"
	cont "me."
	done

MaidCelestialTowerAfterText:
	text "So many voices"
	line "fill this tower,"
	
	para "eternally"
	line "silenced…"
	
	para "If only someone"
	line "would just listen…"
	done
	
PsychicMCelestialTowerSeenText:
	text "Let's show the"
	line "resting spirits"
	
	para "the dazzling"
	line "splendor of life!"
	done

PsychicMCelestialTowerBeatenText:
	text "Hm… Was that a"
	line "spirit just now?"
	done

PsychicMCelestialTowerAfterText:
	text "When I come to"
	line "CELESTIAL TOWER,"
	
	para "strangely, I feel"
	line "the urge to fight."
	done
	
PsychicFCelestialTowerSeenText:
	text "Indescribable"
	line "energy is flowing"
	cont "to me!"
	done

PsychicFCelestialTowerBeatenText:
	text "The energy is"
	line "escaping… Aww…"
	done

PsychicFCelestialTowerAfterText:
	text "The thoughts and"
	line "wishes of the"
	
	para "#MON that rest"
	line "here also provide"
	cont "energy!"
	done
	
SocialiteCelestialTowerSeenText:
	text "Oh my, what a"
	line "young trainer. If"
	
	para "it's all right,"
	line "why don't we"
	cont "battle?"
	done

SocialiteCelestialTowerBeatenText:
	text "There at the end,"
	line "I nearly called"
	
	para "out my late #-"
	line "MON's name."
	done

SocialiteCelestialTowerAfterText:
	text "Is it a good thing"
	line "to forget your"
	
	para "#MON after they"
	line "are gone? Or is it"
	
	para "better when you"
	line "cannot forget?"
	done
	
PokefanMCelestialTowerSeenText:
	text "When #MON"
	line "trainers meet,"
	
	para "what we do is, of"
	line "course, engage in"
	cont "a #MON battle!"
	done

PokefanMCelestialTowerBeatenText:
	text "Oh no…"
	line "I'm pathetic…"
	done

PokefanMCelestialTowerAfterText:
	text "Perhaps I meet"
	line "people here"
	
	para "because of guid-"
	line "ance from my"
	cont "#MON."
	done
	
PokefanFCelestialTowerSeenText:
	text "Oh, you want to"
	line "have a battle with"
	
	para "me? All right! I"
	line "have strong #-"
	cont "MON."
	done

PokefanFCelestialTowerBeatenText:
	text "My strongest #-"
	line "MON is no longer"
	cont "with me…"
	done

PokefanFCelestialTowerAfterText:
	text "…That's not true."
	line "As long as I rem-"
	
	para "ember, it will be"
	line "with me forever."
	done
	
LassCelestialTowerSeenText:
	text "Instead of a ghost"
	line "type #MON, I've"
	
	para "found myself a"
	line "spectacular"
	cont "trainer!"
	done

LassCelestialTowerBeatenText:
	text "You were spectac-"
	line "ular, and more"
	
	para "than that, so"
	line "strong!"
	done

LassCelestialTowerAfterText:
	text "I'm going to catch"
	line "ghost type #MON"
	
	para "because I want to"
	line "meet SHAUNTAL"
	cont "someday!"
	done
	
GentlemanCelestialTowerSeenText:
	text "Let us have our"
	line "#MON battle"
	
	para "with gentlemanly"
	line "reserve!"
	done

GentlemanCelestialTowerBeatenText:
	text "Ho ho ho! Quite"
	line "the affront!"
	done

GentlemanCelestialTowerAfterText:
	text "I have enjoyed"
	line "every day I spend"
	
	para "with my #MON."
	line "If only my #MON"
	
	para "feel the same, I"
	line "can die happy!"
	done

CelestialTower_MapEvents:
	db 0, 0 ; filler

	db 12 ; warp events
	warp_event  5, 36, CELESTIAL_TOWER_1F, 3
	warp_event  5, 37, CELESTIAL_TOWER_1F, 4
	warp_event  2, 41, CELESTIAL_TOWER, 5
	warp_event  2, 42, CELESTIAL_TOWER, 6
	warp_event  5, 20, CELESTIAL_TOWER, 3
	warp_event  5, 21, CELESTIAL_TOWER, 4
	warp_event  2, 25, CELESTIAL_TOWER, 9
	warp_event  2, 26, CELESTIAL_TOWER, 10
	warp_event  5,  4, CELESTIAL_TOWER, 7
	warp_event  5,  5, CELESTIAL_TOWER, 8
	warp_event  2,  9, CELESTIAL_TOWER_ROOF, 1
	warp_event  2, 10, CELESTIAL_TOWER_ROOF, 2

	db 0 ; coord events

	db 0 ; bg events

	db 14 ; object events
	object_event  9, 26, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CelestialTowerHyperPotion, EVENT_CELESTIAL_HYPER_POTION
	object_event  9,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CelestialTowerRevive, EVENT_CELESTIAL_REVIVE
	object_event  1, 36, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CelestialTowerPPUp, EVENT_CELESTIAL_PP_UP
	object_event  9, 43, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CelestialTowerSmokeBall, EVENT_CELESTIAL_SMOKE_BALL
	object_event  4, 43, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerHexManiac1CelestialTower, -1
	object_event  3,  7, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerHexManiac2CelestialTower, -1
	object_event  4, 25, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerMaidCelestialTower, -1
	object_event  8, 21, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerPsychicMCelestialTower, -1
	object_event  9,  5, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerPsychicFCelestialTower, -1
	object_event  8, 37, SPRITE_SOCIALITE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerSocialiteCelestialTower, -1
	object_event  9, 23, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerPokefanMCelestialTower, -1
	object_event  4, 23, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerPokefanFCelestialTower, -1
	object_event  9, 41, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerLassCelestialTower, -1
	object_event  8,  9, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerGentlemanCelestialTower, -1
	