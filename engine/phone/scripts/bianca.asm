BiancaPhoneCalleeScript:
	farwritetext BiancaPhoneGreetingText
	buttonsound
	checkflag ENGINE_RISINGBADGE
	iftrue .victory_road
	checkmapscene DRAGONSPIRAL_TOWER_ROOF, SCENE_FINISHED
	iftrue .opelucid_gym
	checkmapscene OPELUCID_CITY, SCENE_FINISHED
	iftrue .find_drayden
	checkmapscene SEASIDE_CAVE_CHAMBER, SCENE_FINISHED
	iftrue .village_bridge
	checkflag ENGINE_GLACIERBADGE
	iftrue .seaside_cave
	checkmapscene DRIFTVEIL_SHELTER, SCENE_FINISHED
	iftrue .mistralton_gym
	checkmapscene PWT_OUTSIDE, SCENE_FINISHED
	iftrue .finish_pwt
	checkevent EVENT_BEAT_P2_LAB
	iftrue .go_to_pwt
	checkmapscene NUVEMA_LAB, SCENE_FINISHED
	iftrue .p2_lab
	checkmapscene CASTELIA_BRIDGE_GATE, SCENE_FINISHED
	iftrue .nuvema
	checkmapscene FLOCCESY_TOWN, SCENE_FINISHED
	iftrue .complex
	checkmapscene NIMBASA_PARK_BASEMENT, SCENE_NIMBASA_PARK_BASEMENT_NOTHING
	iftrue .aspertia
	checkflag ENGINE_PLAINBADGE
	iftrue .nimbasa_park
	checkevent EVENT_BIANCA_CASTELIA_CALL
	iftrue .castelia_gym
	checkmapscene LOSTLORN_FOREST, SCENE_LOSTLORN_NOTHING
	iftrue .go_to_castelia
	checkflag ENGINE_HIVEBADGE
	iftrue .get_cut
	checkmapscene UNDELLA_TOWN, SCENE_UNDELLA_TOWN_NOTHING
	iftrue .go_to_lentimas
	checkflag ENGINE_ZEPHYRBADGE
	iftrue .reversal
	checkmapscene UNDELLA_TOWN, SCENE_UNDELLA_TOWN_CANT_LEAVE
	iftrue .humilau_gym
	farwritetext BiancaPhoneGoToUndellaText
.done
	buttonsound
	farwritetext BiancaPhoneDoneText
	end
	
.humilau_gym
	farwritetext BiancaPhoneHumilauGymText
	jump .done
	
.reversal
	farwritetext BiancaPhoneReversalText
	jump .done
	
.go_to_lentimas
	farwritetext BiancaPhoneGoToLentimasText
	jump .done
	
.get_cut
	farwritetext BiancaPhoneGetCutText
	jump .done
	
.go_to_castelia
	farwritetext BiancaPhoneGoToCasteliaText
	jump .done
	
.castelia_gym
	farwritetext BiancaPhoneCasteliaGymText
	jump .done
	
.nimbasa_park
	farwritetext BiancaPhoneNimbasaParkText
	jump .done
	
.aspertia
	farwritetext BiancaPhoneAspertiaText
	jump .done
	
.complex
	farwritetext BiancaPhoneComplexText
	jump .done
	
.nuvema
	farwritetext BiancaPhoneNuvemaText
	jump .done
	
.p2_lab
	farwritetext BiancaPhoneP2LabText
	jump .done
	
.go_to_pwt
	farwritetext BiancaPhoneGoToPWTText
	jump .done
	
.finish_pwt
	farwritetext BiancaPhoneFinishPWTText
	jump .done
	
.mistralton_gym
	farwritetext BiancaPhoneMistraltonGymText
	jump .done
	
.seaside_cave
	farwritetext BiancaPhoneSeasideCaveText
	jump .done
	
.village_bridge
	farwritetext BiancaPhoneVillageBridgeText
	jump .done
	
.find_drayden
	farwritetext BiancaPhoneFindDraydenText
	jump .done
	
.opelucid_gym
	farwritetext BiancaPhoneOpelucidGymText
	jump .done
	
.victory_road
	farwritetext BiancaPhoneVictoryRoadText
	end

BiancaPhoneCallerScript:
	checkcode VAR_SPECIALPHONECALL
	ifequal SPECIALCALL_BIANCA_INTRO, .intro
	ifequal SPECIALCALL_BIANCA_CASTELIA, .castelia
	ifequal SPECIALCALL_BIANCA_VIRBANK, .virbank
	ifequal SPECIALCALL_BIANCA_P2, .P2
	specialphonecall SPECIALCALL_NONE
	end

.intro
	farwritetext BiancaPhoneIntroText
	specialphonecall SPECIALCALL_NONE
	setevent EVENT_GOT_BIANCAS_NUMBER
	end

.castelia
	farwritetext BiancaPhoneCasteliaText
	specialphonecall SPECIALCALL_NONE
	setevent EVENT_BIANCA_CASTELIA_CALL
	end

.virbank
	farwritetext BiancaPhoneVirbankText
	specialphonecall SPECIALCALL_NONE
	setmapscene CASTELIA_BRIDGE_GATE, SCENE_FINISHED
	end

.P2
	farwritetext BiancaPhoneP2Text
	specialphonecall SPECIALCALL_NONE
	setevent EVENT_CASTELIA_SEWER_BLOCKER
	end
