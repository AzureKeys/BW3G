StanleyPhoneCallerScript:
	end

StanleyPhoneCalleeScript:
	checkflag ENGINE_STANLEY
	iffalse .AskForRematch
	checkflag ENGINE_STANLEY_READY_FOR_REMATCH
	iftrue .Waiting
	farwritetext StanleyPhoneAfterBattleText
	end
.Waiting
	farwritetext StanleyPhoneWaitingText
	end
.AskForRematch
	setflag ENGINE_STANLEY
	setflag ENGINE_STANLEY_READY_FOR_REMATCH
	farwritetext StanleyPhoneAskRematchText
	end
