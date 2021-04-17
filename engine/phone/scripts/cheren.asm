CherenPhoneCalleeScript:
	special GetFirstPokemonHappiness
	farwritetext CherenHappinessText
	buttonsound
	ifgreater 250 - 1, .LovesYouALot
	ifgreater 200 - 1, .ReallyTrustsYou
	ifgreater 150 - 1, .SortOfHappy
	ifgreater 100 - 1, .QuiteCute
	ifgreater  50 - 1, .NotUsedToYou
	jump .LooksMean

.LovesYouALot:
	farwritetext CherenHappinessRatingText_LovesYouALot
	end

.ReallyTrustsYou:
	farwritetext CherenHappinessRatingText_ReallyTrustsYou
	end

.SortOfHappy:
	farwritetext CherenHappinessRatingText_SortOfHappy
	end

.QuiteCute:
	farwritetext CherenHappinessRatingText_QuiteCute
	end

.NotUsedToYou:
	farwritetext CherenHappinessRatingText_NotUsedToYou
	end

.LooksMean:
	farwritetext CherenHappinessRatingText_LooksMean
	end

CherenPhoneCallerScript:
	checkcode VAR_SPECIALPHONECALL
	ifequal SPECIALCALL_CHEREN_NIMBASA, .nimbasa
	ifequal SPECIALCALL_CHEREN_MISTRALTON, .mistralton
	specialphonecall SPECIALCALL_NONE
	end

.nimbasa
	farwritetext CherenPhoneNimbasaText
	specialphonecall SPECIALCALL_NONE
	end

.mistralton
	farwritetext CherenPhoneMistraltonText
	specialphonecall SPECIALCALL_NONE
	clearevent EVENT_ASPERTIA_CITY_BLOCKER
	clearevent EVENT_HUMILAU_CITY_GYM_BLOCKER
	setmapscene MISTRALTON_CITY, SCENE_MISTRALTON_GIVE_PASS
	end
	