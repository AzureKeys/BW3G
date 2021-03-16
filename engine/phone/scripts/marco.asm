MarcoPhoneCallerScript:
	end

MarcoPhoneCalleeScript:
	checkflag ENGINE_MARCO
	iffalse .AskForRematch
	checkflag ENGINE_MARCO_READY_FOR_REMATCH
	iftrue .Waiting
	farwritetext MarcoPhoneAfterBattleText
	end
.Waiting
	farwritetext MarcoPhoneWaitingText
	end
.AskForRematch
	setflag ENGINE_MARCO
	setflag ENGINE_MARCO_READY_FOR_REMATCH
	farwritetext MarcoPhoneAskRematchText
	end
