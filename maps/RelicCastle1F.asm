	const_def 2 ; object constants
	const RELICCASTLE1F_REVIVE
	const RELICCASTLE1F_PSYCHICM

RelicCastle1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerPsychicMRelicCastle1F:
	trainer PSYCHICM_T, PSYCHICM_RELIC_CASTLE, EVENT_BEAT_PSYCHICM_RELIC_CASTLE, PsychicMRelicCastle1FSeenText, PsychicMRelicCastle1FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PsychicMRelicCastle1FAfterText
	waitbutton
	closetext
	end
	
RelicCastleRevive:
	itemball REVIVE
	
PsychicMRelicCastle1FSeenText:
	text "I will use my"
	line "supernatural power"
	
	para "to help my #-"
	line "MON!"
	done

PsychicMRelicCastle1FBeatenText:
	text "Wow! That's"
	line "amazing!"
	done

PsychicMRelicCastle1FAfterText:
	text "Drawing out your"
	line "#MON's power"
	cont "like that…"

	para "I think that is a"
	line "real supernatural"
	cont "power!"
	done

RelicCastle1F_MapEvents:
	db 0, 0 ; filler

	db 5 ; warp events
	warp_event 15, 15, DESERT_RESORT, 3
	warp_event 16,  2, RELIC_CASTLE_B1F, 1
	warp_event  4, 12, RELIC_CASTLE_B1F, 2
	warp_event  5,  9, RELIC_CASTLE_B1F, 5
	warp_event 10,  9, RELIC_CASTLE_B1F, 6

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event 14,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RelicCastleRevive, EVENT_RELIC_CASTLE_REVIVE
	object_event  2,  9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerPsychicMRelicCastle1F, -1
	