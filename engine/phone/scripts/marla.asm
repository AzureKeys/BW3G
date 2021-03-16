MarlaPhoneCallerScript:
	end

MarlaPhoneCalleeScript:
	checkflag ENGINE_MARLA
	iffalse .AskForRematch
	checkflag ENGINE_MARLA_READY_FOR_REMATCH
	iftrue .Waiting
	farwritetext MarlaPhoneAfterBattleText
	end
.Waiting
	farwritetext MarlaPhoneWaitingText
	end
.AskForRematch
	setflag ENGINE_MARLA
	setflag ENGINE_MARLA_READY_FOR_REMATCH
	farwritetext MarlaPhoneAskRematchText
	end
