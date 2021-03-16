ArianaPhoneCallerScript:
	end

ArianaPhoneCalleeScript:
	checkflag ENGINE_ARIANA
	iffalse .AskForRematch
	checkflag ENGINE_ARIANA_READY_FOR_REMATCH
	iftrue .Waiting
	farwritetext ArianaPhoneAfterBattleText
	end
.Waiting
	farwritetext ArianaPhoneWaitingText
	end
.AskForRematch
	setflag ENGINE_ARIANA
	setflag ENGINE_ARIANA_READY_FOR_REMATCH
	farwritetext ArianaPhoneAskRematchText
	end
