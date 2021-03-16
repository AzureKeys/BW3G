JewelPhoneCallerScript:
	end

JewelPhoneCalleeScript:
	checkflag ENGINE_JEWEL
	iffalse .AskForRematch
	checkflag ENGINE_JEWEL_READY_FOR_REMATCH
	iftrue .Waiting
	farwritetext JewelPhoneAfterBattleText
	end
.Waiting
	farwritetext JewelPhoneWaitingText
	end
.AskForRematch
	setflag ENGINE_JEWEL
	setflag ENGINE_JEWEL_READY_FOR_REMATCH
	farwritetext JewelPhoneAskRematchText
	end
