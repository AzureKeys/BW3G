	const_def 2 ; object constants
	const BATTLECOMPANY1F_RECEPTIONIST
	const BATTLECOMPANY1F_PRESIDENT

BattleCompany1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
BattleCompanyPresidentScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_EXP_SHARE
	iftrue .GotEXPShare
	writetext BattleCompanyPresidentIntroText
	waitbutton
	checkflag ENGINE_PLAINBADGE
	iffalse .NotEnoughBadges
	checkflag ENGINE_FOGBADGE
	iftrue .HaveBadges
	checkflag ENGINE_STORMBADGE
	iftrue .HaveBadges
	checkflag ENGINE_MINERALBADGE
	iffalse .NotEnoughBadges
.HaveBadges
	writetext BattleCompanyPresidentGiveEXPShareText
	buttonsound
	verbosegiveitem EXP_SHARE
	iffalse .noroom
	setevent EVENT_GOT_EXP_SHARE
.GotEXPShare
	writetext BattleCompanyPresidentGaveEXPShareText
	waitbutton
.noroom
	closetext
	end
	
.NotEnoughBadges
	writetext BattleCompanyPresidentNotEnoughBadgesText
	waitbutton
	closetext
	end
	
BattleCompanyReceptionistScript:
	jumptextfaceplayer BattleCompanyReceptionistText
	
BattleCompany1FSign:
	jumptext BattleCompany1FSignText
	
BattleCompanyPresidentIntroText:
	text "Oh, you must be a"
	line "#MON trainer."
	
	para "I'm the PRESIDENT"
	line "of the BATTLE"
	cont "COMPANY."
	
	para "I'm looking for"
	line "someone to test"
	cont "our new prototype."
	done
	
BattleCompanyPresidentNotEnoughBadgesText:
	text "Oh, you don't have"
	line "many gym badges…"
	
	para "Come back and see"
	line "me if you earn at"
	cont "least four badges."
	done
	
BattleCompanyPresidentGiveEXPShareText:
	text "Ah! You've got a"
	line "good number of"
	cont "gym badges."
	
	para "Here, take this."
	done
	
BattleCompanyPresidentGaveEXPShareText:
	text "That's an EXP"
	line "SHARE!"
	
	para "It will allow you"
	line "to share EXP with"
	
	para "the #MON that's"
	line "holding it, even"
	
	para "if it wasn't in"
	line "the battle!"
	done
	
BattleCompanyReceptionistText:
	text "Welcome to the"
	line "BATTLE COMPANY."
	
	para "The second floor"
	line "is open to"
	cont "visitors."
	done
	
BattleCompany1FSignText:
	text "BATTLE COMPANY."
	
	para "Research and"
	line "development"
	cont "upstairs."
	done

BattleCompany1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  2,  7, CASTELIA_CITY_SOUTH, 12
	warp_event  3,  7, CASTELIA_CITY_SOUTH, 12
	warp_event  3,  0, BATTLE_COMPANY_2F, 1

	db 0 ; coord events

	db 1 ; bg events
	bg_event  5,  0, BGEVENT_READ, BattleCompany1FSign

	db 2 ; object events
	object_event  7,  4, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BattleCompanyReceptionistScript, -1
	object_event  4,  2, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BattleCompanyPresidentScript, -1
	