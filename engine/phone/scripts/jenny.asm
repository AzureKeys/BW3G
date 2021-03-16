JennyPhoneCallerScript:
	end

JennyPhoneCalleeScript:
	checkflag ENGINE_JENNY
	iffalse .AskForRematch
	checkflag ENGINE_JENNY_READY_FOR_REMATCH
	iftrue .Waiting
	farwritetext JennyPhoneAfterBattleText
	end
.Waiting
	farwritetext JennyPhoneWaitingText
	end
.AskForRematch
	setflag ENGINE_JENNY
	setflag ENGINE_JENNY_READY_FOR_REMATCH
	farwritetext JennyPhoneAskRematchText
	end
