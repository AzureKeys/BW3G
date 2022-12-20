DeanPhoneCallerScript:
	end

DeanPhoneCalleeScript:
	checkflag ENGINE_DEAN
	iffalse .AskForRematch
	checkflag ENGINE_DEAN_READY_FOR_REMATCH
	iftrue .Waiting
	farwritetext DeanPhoneAfterBattleText
	end
.Waiting
	farwritetext DeanPhoneWaitingText
	end
.AskForRematch
	setflag ENGINE_DEAN
	setflag ENGINE_DEAN_READY_FOR_REMATCH
	farwritetext DeanPhoneAskRematchText
	end
