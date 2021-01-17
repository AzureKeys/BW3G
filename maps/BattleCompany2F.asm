	const_def 2 ; object constants
	const BATTLECOMPANY2F_SCIENTIST_M
	const BATTLECOMPANY2F_SCIENTIST_F
	const BATTLECOMPANY2F_BLOCKER

BattleCompany2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
BattleCompanyScientistMScript:
	faceplayer
	opentext
	writetext BattleCompanyScientistText
	waitbutton
	checkevent EVENT_BATTLE_COMPANY_HYPER_POTION
	iftrue .done
	writetext BattleCompanyScientistGiveText
	buttonsound
	verbosegiveitem HYPER_POTION
	iffalse .done
	setevent EVENT_BATTLE_COMPANY_HYPER_POTION
.done
	closetext
	end
	
BattleCompanyScientistFScript:
	faceplayer
	opentext
	writetext BattleCompanyScientistText
	waitbutton
	checkevent EVENT_BATTLE_COMPANY_REVIVE
	iftrue .done
	writetext BattleCompanyScientistGiveText
	buttonsound
	verbosegiveitem REVIVE
	iffalse .done
	setevent EVENT_BATTLE_COMPANY_REVIVE
.done
	closetext
	end
	
BattleCompanyBlockerScript:
	jumptextfaceplayer BattleCompanyBlockerText
	
BattleCompany2FBookshelf:
	jumpstd magazinebookshelf
	
BattleCompanyBlockerText:
	text "Sorry, we don't"
	line "allow visitors"
	cont "past this floor."
	done
	
BattleCompanyScientistText:
	text "I'm busy working"
	line "on products for"
	cont "#MON trainers."
	done
	
BattleCompanyScientistGiveText:
	text "Here, this may"
	line "help you!"
	done

BattleCompany2F_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  3,  0, BATTLE_COMPANY_1F, 3

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, BattleCompany2FBookshelf
	bg_event  1,  1, BGEVENT_READ, BattleCompany2FBookshelf

	db 3 ; object events
	object_event  7,  6, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BattleCompanyScientistMScript, -1
	object_event  0,  7, SPRITE_SCIENTIST_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BattleCompanyScientistFScript, -1
	object_event  5,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BattleCompanyBlockerScript, -1
	