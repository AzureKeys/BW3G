EricPhoneCallerScript:
	end

EricPhoneCalleeScript:
	checkflag ENGINE_ERIC
	iffalse .AskForRematch
	checkflag ENGINE_ERIC_READY_FOR_REMATCH
	iftrue .Waiting
	farwritetext EricPhoneAfterBattleText
	end
.Waiting
	farwritetext EricPhoneWaitingText
	end
.AskForRematch
	setflag ENGINE_ERIC
	setflag ENGINE_ERIC_READY_FOR_REMATCH
	farwritetext EricPhoneAskRematchText
	end
