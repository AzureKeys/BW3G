LaceyPhoneCallerScript:
	end

LaceyPhoneCalleeScript:
	checkflag ENGINE_LACEY
	iffalse .AskForRematch
	checkflag ENGINE_LACEY_READY_FOR_REMATCH
	iftrue .Waiting
	farwritetext LaceyPhoneAfterBattleText
	end
.Waiting
	farwritetext LaceyPhoneWaitingText
	end
.AskForRematch
	setflag ENGINE_LACEY
	setflag ENGINE_LACEY_READY_FOR_REMATCH
	farwritetext LaceyPhoneAskRematchText
	end
