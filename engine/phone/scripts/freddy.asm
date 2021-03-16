FreddyPhoneCallerScript:
	end

FreddyPhoneCalleeScript:
	checkflag ENGINE_FREDDY
	iffalse .AskForRematch
	checkflag ENGINE_FREDDY_READY_FOR_REMATCH
	iftrue .Waiting
	farwritetext FreddyPhoneAfterBattleText
	end
.Waiting
	farwritetext FreddyPhoneWaitingText
	end
.AskForRematch
	setflag ENGINE_FREDDY
	setflag ENGINE_FREDDY_READY_FOR_REMATCH
	farwritetext FreddyPhoneAskRematchText
	end
