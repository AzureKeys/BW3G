ParkerPhoneCallerScript:
	end

ParkerPhoneCalleeScript:
	checkflag ENGINE_PARKER
	iffalse .AskForRematch
	checkflag ENGINE_PARKER_READY_FOR_REMATCH
	iftrue .Waiting
	farwritetext ParkerPhoneAfterBattleText
	end
.Waiting
	farwritetext ParkerPhoneWaitingText
	end
.AskForRematch
	setflag ENGINE_PARKER
	setflag ENGINE_PARKER_READY_FOR_REMATCH
	farwritetext ParkerPhoneAskRematchText
	end
