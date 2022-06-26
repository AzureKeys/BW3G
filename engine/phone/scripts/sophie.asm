SophiePhoneCallerScript:
	end

SophiePhoneCalleeScript:
	checkflag ENGINE_SOPHIE
	iffalse .AskForRematch
	checkflag ENGINE_SOPHIE_READY_FOR_REMATCH
	iftrue .Waiting
	farwritetext SophiePhoneAfterBattleText
	end
.Waiting
	farwritetext SophiePhoneWaitingText
	end
.AskForRematch
	setflag ENGINE_SOPHIE
	setflag ENGINE_SOPHIE_READY_FOR_REMATCH
	farwritetext SophiePhoneAskRematchText
	end
