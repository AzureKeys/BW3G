MomPhoneCalleeScript:
	farwritetext MomPhoneGreetingText
	buttonsound
	checkevent EVENT_TALKED_TO_MOM_AFTER_POKEMON
	iftrue .CheckHappiness
	farwritetext MomCutePokemonText
	buttonsound
	farwritetext MomPhoneHappinessIntroText
	buttonsound
	setevent EVENT_TALKED_TO_MOM_AFTER_POKEMON
	
.CheckHappiness
	special GetFirstPokemonHappiness
	farwritetext MomHappinessText
	buttonsound
	ifgreater 250 - 1, .LovesYouALot
	ifgreater 200 - 1, .ReallyTrustsYou
	ifgreater 150 - 1, .SortOfHappy
	ifgreater 100 - 1, .QuiteCute
	ifgreater  50 - 1, .NotUsedToYou
	jump .LooksMean

.LovesYouALot:
	farwritetext MomHappinessRatingText_LovesYouALot
	jump .Outro

.ReallyTrustsYou:
	farwritetext MomHappinessRatingText_ReallyTrustsYou
	jump .Outro

.SortOfHappy:
	farwritetext MomHappinessRatingText_SortOfHappy
	jump .Outro

.QuiteCute:
	farwritetext MomHappinessRatingText_QuiteCute
	jump .Outro

.NotUsedToYou:
	farwritetext MomHappinessRatingText_NotUsedToYou
	jump .Outro

.LooksMean:
	farwritetext MomHappinessRatingText_LooksMean
	
.Outro
	buttonsound
	farwritetext MomPhoneOutroText
	end

MomPhoneCallerScript:
	checkcode VAR_SPECIALPHONECALL
	ifequal SPECIALCALL_MOM_LECTURE, .lecture
	specialphonecall SPECIALCALL_NONE
	end

.lecture
	farwritetext MomPhoneLectureText
	buttonsound
	farwritetext MomPhoneHappinessIntroText
	buttonsound
	farwritetext MomPhoneOutroText
	setevent EVENT_TALKED_TO_MOM_AFTER_POKEMON
	specialphonecall SPECIALCALL_NONE
	end
	