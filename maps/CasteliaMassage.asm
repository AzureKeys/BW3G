	const_def 2 ; object constants
	const CASTELIAMASSAGE_CLERK

CasteliaMassage_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CasteliaMassageClerkScript:
	opentext
	checkflag ENGINE_CASTELIA_MASSAGE
	iftrue .AlreadyGotHaircut
	special PlaceMoneyTopRight
	writetext MassageAskText
	yesorno
	iffalse .Refused
	checkmoney YOUR_MONEY, 500
	ifequal HAVE_LESS, .NotEnoughMoney
	writetext MassageAskMonText
	buttonsound
	special YoungerHaircutBrother
	ifequal $0, .Refused
	ifequal $1, .Refused
	setflag ENGINE_CASTELIA_MASSAGE
	ifequal $2, .two
	ifequal $3, .three
	jump .else
	
	
.two
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	jump .then

.three
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	jump .then

.else
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	jump .then

.then
	takemoney YOUR_MONEY, 500
	special PlaceMoneyTopRight
	writetext MassageOKText
	waitbutton
	closetext
	special FadeOutPalettes
	playmusic MUSIC_HEAL
	pause 60
	special FadeInPalettes
	special RestartMapMusic
	opentext
	writetext MassageDoneText
	waitbutton
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue Massage_SlightlyHappier
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iftrue Massage_Happier
	jump Massage_MuchHappier

.Refused:
	writetext MassageRefusedText
	waitbutton
	closetext
	end

.NotEnoughMoney:
	writetext MassageNotEnoughMoneyText
	waitbutton
	closetext
	end

.AlreadyGotHaircut:
	writetext MassageAlreadyGotText
	waitbutton
	closetext
	end
	
Massage_SlightlyHappier:
	writetext MassageSlightlyHappierText
	special PlayCurMonCry
	waitbutton
	closetext
	end

Massage_Happier:
	writetext MassageHappierText
	special PlayCurMonCry
	waitbutton
	closetext
	end

Massage_MuchHappier:
	writetext MassageMuchHappierText
	special PlayCurMonCry
	waitbutton
	closetext
	end
	
MassageAskText:
	text "Welcome to the"
	line "CASTELIA massage"
	cont "parlor!"

	para "We can give one"
	line "of your #MON a"
	cont "relaxing massage"
	cont "for just ¥500."

	para "Would you like me"
	line "to do that?"
	done

MassageAskMonText:
	text "Which #MON"
	line "should I work on?"
	done

MassageOKText:
	text "OK! Let's get"
	line "started!"
	done

MassageDoneText:
	text "There! All done!"
	done

MassageRefusedText:
	text "Is that right?"
	line "That's a shame!"
	done

MassageNotEnoughMoneyText:
	text "You'll need more"
	line "money than that."
	done

MassageAlreadyGotText:
	text "I do only one"
	line "massage a day. I'm"
	cont "done for today."
	done

MassageSlightlyHappierText:
	text_ram wStringBuffer3
	text " looks a"
	line "little happier."
	done

MassageHappierText:
	text_ram wStringBuffer3
	text " looks"
	line "happy."
	done

MassageMuchHappierText:
	text_ram wStringBuffer3
	text " looks"
	line "delighted!"
	done

CasteliaMassage_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  7,  6, CASTELIA_CITY_STREETS, 18
	warp_event  7,  7, CASTELIA_CITY_STREETS, 22

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  1,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CasteliaMassageClerkScript, -1
	