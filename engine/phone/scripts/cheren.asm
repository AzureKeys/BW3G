CherenPhoneCalleeScript:
	farwritetext CherenAskEvoText
	yesorno
	iffalse .Refused
	callasm Cheren_GetMonEvoData
	ifequal -1, .Egg
	farwritetext CherenEvoIntroText
	buttonsound
; Print Result Based on wScriptVar:
; 0: No Evo
; 1: Level Up
; 2: Evo Stone
; 3: Happiness
; 4: Hold Item
; 5: KIRLIA
; 6: SNORUNT
; 7: EEVEE
	ifequal -1, .Refused
	ifequal 0, .No_Evo
	ifequal 1, .Level_Up
	ifequal 2, .Evo_Stone
	ifequal 3, .Happiness
	ifequal 4, .Hold_Item
	ifequal 5, .Kirlia
	ifequal 6, .Snorunt
	ifequal 7, .Eevee

.Egg
	farwritetext CherenEggEvoText
	jump .done
	
.No_Evo
	farwritetext CherenNoEvoText
	jump .done
	
.Level_Up
	farwritetext CherenLevelUpEvoText
	jump .done
	
.Evo_Stone
	farwritetext CherenStoneEvoText
	jump .done
	
.Happiness
	copybytetovar wStringBuffer4
	ifequal TR_MORNDAY, .Happiness_Day
	ifequal TR_NITE, .Happiness_Nite
	farwritetext CherenHappinessEvoText
	jump .done
	
.Happiness_Day
	farwritetext CherenHappinessDayEvoText
	jump .done
	
.Happiness_Nite
	farwritetext CherenHappinessNiteEvoText
	jump .done
	
.Hold_Item
	copybytetovar wStringBuffer5
	ifequal TR_MORNDAY, .Hold_Item_Day
	ifequal TR_NITE, .Hold_Item_Nite
	farwritetext CherenHoldEvoText
	jump .done
	
.Hold_Item_Day
	farwritetext CherenHoldDayEvoText
	jump .done
	
.Hold_Item_Nite
	farwritetext CherenHoldNiteEvoText
	jump .done
	
.Kirlia
	farwritetext CherenKirliaEvoText
	jump .done
	
.Snorunt
	farwritetext CherenSnoruntEvoText
	jump .done
	
.Eevee
	farwritetext CherenEeveeEvoText
; fallthrough
.done
	buttonsound
	farwritetext CherenEvoDoneText
	end

.Refused
	farwritetext CherenRefusedEvoText
	end
	
Cheren_GetMonEvoData:
; returns Evo Method in wScriptVar, mon species in wStringBuffer3
; param 1 in wStringBuffer4, param 2 in wStringBuffer5
; wScriptVar contains -1 if EGG
	ld a, [wPartyMon1Species]
	ld [wNamedObjectIndexBuffer], a
	call GetPokemonName
	farcall CopyPokemonName_Buffer1_Buffer3
	
	ld a, [wPartySpecies]
	cp EGG
	jr z, .egg
	ld a, [wPartyMon1Species]
	ld b, 7
	cp EEVEE
	jr z, .load_b
	dec b
	cp SNORUNT
	jr z, .load_b
	dec b
	cp KIRLIA
	jr z, .load_b
	ld c, a
	farcall GetEvolutionData
	ld a, [wScriptVar]
	and a ; No Evo
	jr z, .done
	cp EVOLVE_LEVEL
	jr z, .done
	cp EVOLVE_ITEM
	jr z, .done
	ld b, 3
	cp EVOLVE_HAPPINESS
	jr z, .load_b
	cp EVOLVE_HAPPINESS_BABY
	jr z, .load_b
	inc b
	cp EVOLVE_HOLD
	jr z, .load_b
; fallthrough to egg if no evo method matches
; This should never happen
.egg
	ld a, -1
	ld [wScriptVar], a
	ret
	
.load_b
	ld a, b
	ld [wScriptVar], a
.done
	ret

CherenPhoneCallerScript:
	checkcode VAR_SPECIALPHONECALL
	ifequal SPECIALCALL_CHEREN_NIMBASA, .nimbasa
	ifequal SPECIALCALL_CHEREN_MISTRALTON, .mistralton
	specialphonecall SPECIALCALL_NONE
	end

.nimbasa
	farwritetext CherenPhoneNimbasaText
	specialphonecall SPECIALCALL_NONE
	end

.mistralton
	farwritetext CherenPhoneMistraltonText
	specialphonecall SPECIALCALL_NONE
	clearevent EVENT_ASPERTIA_CITY_BLOCKER
	clearevent EVENT_HUMILAU_CITY_GYM_BLOCKER
	setmapscene MISTRALTON_CITY, SCENE_MISTRALTON_GIVE_PASS
	end
	