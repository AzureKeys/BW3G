	const_def 2 ; object constants
	const NACRENEMUSEUM_LENORA
	const NACRENEMUSEUM_RANGER_M
	const NACRENEMUSEUM_TWIN

NacreneMuseum_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
NacreneMuseumLenoraScript:
	faceplayer
	opentext
	checkevent EVENT_RETURNED_DATA_DISK
	iftrue .checkfossil
	writetext NacreneMuseumNoDiskText
	checkitem DATA_DISK
	iffalse .done
	buttonsound
	writetext NacreneMuseumAskDiskText
	buttonsound
	playsound SFX_ITEM
	waitsfx
	takeitem DATA_DISK
	setevent EVENT_RETURNED_DATA_DISK
	setmapscene PINWHEEL_FOREST, SCENE_FINISHED
	writetext NacreneMuseumGaveDiskText
.done
	waitbutton
	closetext
	end
	
.checkfossil
	writetext NacreneMuseumAskFossilText
	checkcode VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .PartyFull
	checkitem COVER_FOSSIL
	iffalse .nocover
	checkitem PLUME_FOSSIL
	iffalse .onlycover
	loadmenu MuseumBothMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .ChooseCover
	ifequal 2, .ChoosePlume
	jump NoFossilSelectedScript
.onlycover
	loadmenu MuseumCoverMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .ChooseCover
	jump NoFossilSelectedScript
.nocover
	checkitem PLUME_FOSSIL
	iffalse .nofossils
	loadmenu MuseumPlumeMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .ChoosePlume
	jump NoFossilSelectedScript
.nofossils
	loadmenu MuseumNoneMenuHeader
	verticalmenu
	closewindow
	jump NoFossilSelectedScript
	
.PartyFull:
	buttonsound
	writetext NacreneMuseumPartyFullText
	waitbutton
	closetext
	end

.ChooseCover:
	writetext NacreneMuseumTakeFossilText
	waitbutton
	closetext
	turnobject NACRENEMUSEUM_LENORA, RIGHT
	playsound SFX_BOOT_PC
	waitsfx
	playsound SFX_BOOT_PC
	waitsfx
	playsound SFX_CHOOSE_PC_OPTION
	waitsfx
	playsound SFX_ITEM
	waitsfx
	turnobject NACRENEMUSEUM_LENORA, LEFT
	takeitem COVER_FOSSIL
	opentext
	writetext NacreneMuseumGivePokemonText
	buttonsound
	pokenamemem TIRTOUGA, MEM_BUFFER_0
	writetext ReceivedFossilPokemonText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke TIRTOUGA, 10, NO_ITEM
	writetext NacreneMuseumLeaveText
	waitbutton
	closetext
	end

.ChoosePlume:
	writetext NacreneMuseumTakeFossilText
	waitbutton
	closetext
	turnobject NACRENEMUSEUM_LENORA, RIGHT
	playsound SFX_BOOT_PC
	waitsfx
	playsound SFX_BOOT_PC
	waitsfx
	playsound SFX_CHOOSE_PC_OPTION
	waitsfx
	playsound SFX_ITEM
	waitsfx
	turnobject NACRENEMUSEUM_LENORA, LEFT
	takeitem PLUME_FOSSIL
	opentext
	writetext NacreneMuseumGivePokemonText
	buttonsound
	pokenamemem ARCHEN, MEM_BUFFER_0
	writetext ReceivedFossilPokemonText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke ARCHEN, 10, NO_ITEM
	writetext NacreneMuseumLeaveText
	waitbutton
	closetext
	end
	
NoFossilSelectedScript:
	writetext NacreneMuseumLeaveText
	waitbutton
	closetext
	end

MuseumBothMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 14, TEXTBOX_Y - 2
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 3 ; items
	db "COVER FOSSIL@"
	db "PLUME FOSSIL@"
	db "CANCEL@"

MuseumCoverMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 14, TEXTBOX_Y - 4
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 2 ; items
	db "COVER FOSSIL@"
	db "CANCEL@"

MuseumPlumeMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 14, TEXTBOX_Y - 4
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 2 ; items
	db "PLUME FOSSIL@"
	db "CANCEL@"

MuseumNoneMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 14, TEXTBOX_Y - 6
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 1 ; items
	db "CANCEL@"

NacreneMuseumRangerMScript:
	jumptextfaceplayer NacreneMuseumRangerMText

NacreneMuseumTwinScript:
	jumptextfaceplayer NacreneMuseumTwinText

NacreneMuseumDisplay:
	jumptext NacreneMuseumDisplayText

NacreneMuseumNoDiskText:
	text "Welcome to"
	line "NACRENE MUSEUM."
	
	para "Unfortunately,"
	line "without the DATA"
	cont "DISK that was"
	
	para "stolen, we can't"
	line "revive #MON"
	cont "from fossils."
	done

NacreneMuseumAskDiskText:
	text "Oh! That's our"
	line "DATA DISK!"
	
	para "Please, you've got"
	line "to give that to"
	cont "me!"
	done

NacreneMuseumGaveDiskText:
	text "Thanks so much!"
	
	para "Come see me if"
	line "you have a #MON"
	cont "fossil you'd like"
	cont "to have revived."
	done

NacreneMuseumAskFossilText:
	text "Hi, do you have a"
	line "fossil you'd like"
	cont "to have revived?"
	done

NacreneMuseumPartyFullText:
	text "Oh, looks like you"
	line "don't have enough"
	cont "room."
	done

NacreneMuseumTakeFossilText:
	text "Ok, let me have"
	line "the fossil."
	done

NacreneMuseumGivePokemonText:
	text "Your #MON was"
	line "revived! Here"
	cont "you go!"
	done

NacreneMuseumLeaveText:
	text "Come back if you"
	line "have another"
	cont "fossil!"
	done

ReceivedFossilPokemonText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

NacreneMuseumRangerMText:
	text "Rarities from"
	line "around the world…"
	
	para "Museums are packed"
	line "with adventure!"
	done

NacreneMuseumTwinText:
	text "I heard that the"
	line "director, LENORA,"
	
	para "is too busy with"
	line "her research on"
	
	para "fossils and #-"
	line "MON bones, so she"
	
	para "took a break from"
	line "being a GYM"
	cont "LEADER."
	done

NacreneMuseumDisplayText:
	text "Many ancient #-"
	line "MON artifacts are"
	cont "on display."
	done

NacreneMuseum_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4, 11, NACRENE_CITY, 7
	warp_event  5, 11, NACRENE_CITY, 8

	db 0 ; coord events

	db 2 ; bg events
	bg_event  1,  5, BGEVENT_READ, NacreneMuseumDisplay
	bg_event  7,  3, BGEVENT_READ, NacreneMuseumDisplay

	db 3 ; object events
	object_event  8,  8, SPRITE_LENORA, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacreneMuseumLenoraScript, -1
	object_event  8,  4, SPRITE_RANGER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, NacreneMuseumRangerMScript, -1
	object_event  2,  2, SPRITE_TWIN, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, NacreneMuseumTwinScript, -1
	