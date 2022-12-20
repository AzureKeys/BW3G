LoisPhoneCallerScript:
	end

LoisPhoneCalleeScript:
	checkflag ENGINE_LOIS
	iffalse .AskForRematch
	checkflag ENGINE_LOIS_READY_FOR_REMATCH
	iftrue .Waiting
	farwritetext LoisPhoneAfterBattleText
	end
.Waiting
	farwritetext LoisPhoneWaitingText
	end
.AskForRematch
	setflag ENGINE_LOIS
	setflag ENGINE_LOIS_READY_FOR_REMATCH
	farwritetext LoisPhoneAskRematchText
	end
