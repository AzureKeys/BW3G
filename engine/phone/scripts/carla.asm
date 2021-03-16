CarlaPhoneCallerScript:
	end

CarlaPhoneCalleeScript:
	checkflag ENGINE_CARLA
	iffalse .AskForRematch
	checkflag ENGINE_CARLA_READY_FOR_REMATCH
	iftrue .Waiting
	farwritetext CarlaPhoneAfterBattleText
	end
.Waiting
	farwritetext CarlaPhoneWaitingText
	end
.AskForRematch
	setflag ENGINE_CARLA
	setflag ENGINE_CARLA_READY_FOR_REMATCH
	farwritetext CarlaPhoneAskRematchText
	end
