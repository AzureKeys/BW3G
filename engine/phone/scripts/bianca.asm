BiancaPhoneCalleeScript:
	farwritetext BiancaDexCheckText
	waitbutton
	special ProfOaksPCBoot
	farwritetext BiancaGoodbyeText
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
