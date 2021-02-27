DanPhoneCallerScript:
	end

DanPhoneCalleeScript:
	checkflag ENGINE_DAN
	iffalse .AskForRematch
	checkflag ENGINE_DAN_READY_FOR_REMATCH
	iftrue .Waiting
	farwritetext DanPhoneAfterBattleText
	end
.Waiting
	farwritetext DanPhoneWaitingText
	end
.AskForRematch
	setflag ENGINE_DAN
	setflag ENGINE_DAN_READY_FOR_REMATCH
	farwritetext DanPhoneAskRematchText
	end
