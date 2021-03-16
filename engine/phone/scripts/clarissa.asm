ClarissaPhoneCallerScript:
	end

ClarissaPhoneCalleeScript:
	checkflag ENGINE_CLARISSA
	iffalse .AskForRematch
	checkflag ENGINE_CLARISSA_READY_FOR_REMATCH
	iftrue .Waiting
	farwritetext ClarissaPhoneAfterBattleText
	end
.Waiting
	farwritetext ClarissaPhoneWaitingText
	end
.AskForRematch
	setflag ENGINE_CLARISSA
	setflag ENGINE_CLARISSA_READY_FOR_REMATCH
	farwritetext ClarissaPhoneAskRematchText
	end
