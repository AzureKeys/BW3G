	const_def 2 ; object constants
	const MARINETUBE_COOLTRAINER_F
	const MARINETUBE_COOLTRAINER_M
	const MARINETUBE_LASS
	const MARINETUBE_POKEFAN_M
	const MARINETUBE_NURSERY_AIDE
	const MARINETUBE_TWIN_1
	const MARINETUBE_TWIN_2
	const MARINETUBE_PRESCHOOLER_M
	const MARINETUBE_PRESCHOOLER_F

MarineTube_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerNurseryAideMarineTube:
	trainer NURSERY_AIDE, NURSERY_AIDE_MARINE_TUBE, EVENT_BEAT_NURSERY_AIDE_MARINE_TUBE, NurseryAideMarineTubeSeenText, NurseryAideMarineTubeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext NurseryAideMarineTubeAfterText
	waitbutton
	closetext
	end

TrainerPreschoolerMMarineTube:
	trainer PRESCHOOLERM, PRESCHOOLERM_MARINE_TUBE, EVENT_BEAT_PRESCHOOLERM_MARINE_TUBE, PreschoolerMMarineTubeSeenText, PreschoolerMMarineTubeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PreschoolerMMarineTubeAfterText
	waitbutton
	closetext
	end

TrainerPreschoolerFMarineTube:
	trainer PRESCHOOLERF, PRESCHOOLERF_MARINE_TUBE, EVENT_BEAT_PRESCHOOLERF_MARINE_TUBE, PreschoolerFMarineTubeSeenText, PreschoolerFMarineTubeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PreschoolerFMarineTubeAfterText
	waitbutton
	closetext
	end

TrainerTwinsMarineTube:
	trainer TWINS, TWINS_MARINE_TUBE, EVENT_BEAT_TWINS_MARINE_TUBE, TwinsMarineTubeSeenText, TwinsMarineTubeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TwinsMarineTubeAfterText
	waitbutton
	closetext
	end
	
MarineTubeCooltrainerFTextScript:
	jumptextfaceplayer MarineTubeCooltrainerFText
	
MarineTubeCooltrainerMTextScript:
	jumptextfaceplayer MarineTubeCooltrainerMText
	
MarineTubeLassTextScript:
	jumptextfaceplayer MarineTubeLassText
	
MarineTubePokefanMTextScript:
	jumptextfaceplayer MarineTubePokefanMText
	
MarineTubeTeacherTextScript:
	jumptextfaceplayer MarineTubeTeacherText
	
MarineTubeFullRestore:
	hiddenitem FULL_RESTORE, EVENT_MARINE_TUBE_FULL_RESTORE
	
MarineTubeEther:
	hiddenitem ETHER, EVENT_MARINE_TUBE_ETHER
	
PreschoolerMMarineTubeSeenText:
	text "Teacher?"
	
	para "Oh, you're not"
	line "Teacher! You're a"
	cont "trainer!"
	done

PreschoolerMMarineTubeBeatenText:
	text "It's hard to see"
	line "in here!"
	done

PreschoolerMMarineTubeAfterText:
	text "Teacher took us to"
	line "see all the pretty"
	cont "#MON!"
	done
	
PreschoolerFMarineTubeSeenText:
	text "Roar!"
	
	para "I'm a #MON!"
	done

PreschoolerFMarineTubeBeatenText:
	text "I'm not really a"
	line "#MON!"
	done

PreschoolerFMarineTubeAfterText:
	text "There are so many"
	line "pretty #MON"
	cont "outside!"
	done
	
TwinsMarineTubeSeenText:
	text "It's so fun to"
	line "battle along with"
	cont "my sister!"
	done

TwinsMarineTubeBeatenText:
	text "Wow! What a"
	line "surprise!"
	done

TwinsMarineTubeAfterText:
	text "Being able to play"
	line "together is a"
	cont "great thing!"
	done
	
NurseryAideMarineTubeSeenText:
	text "You… are a rather"
	line "adult looking kid…"
	
	para "A kiddish adult…"
	line "Oh, jeez! I'll"
	
	para "kust find out when"
	line "we battle!"
	done

NurseryAideMarineTubeBeatenText:
	text "You are an alto-"
	line "gether mysterious"
	cont "trainer!"
	done

NurseryAideMarineTubeAfterText:
	text "A precocious child"
	line "or a childish"
	
	para "adult… Both can be"
	line "hard to deal with,"
	
	para "but both are also"
	line "cute in their way!"
	done
	
MarineTubeCooltrainerFText:
	text "Wow, look at all"
	line "of the #MON"
	cont "underwater!"
	done
	
MarineTubeCooltrainerMText:
	text "The MARINE TUBE"
	line "is a great date"
	cont "destination!"
	done
	
MarineTubeLassText:
	text "This tube serves"
	line "as a shortcut to"
	
	para "HUMILAU CITY, but"
	line "there are so many"
	
	para "tourists that it's"
	line "hard to get"
	cont "through!"
	done
	
MarineTubePokefanMText:
	text "Some people drop"
	line "their valuables"
	
	para "on the floor since"
	line "it's so dark."
	done
	
MarineTubeTeacherText:
	text "I took my daughter"
	line "to see all the"
	cont "beautiful fish!"
	done
	
MarineTubeTwinText:
	text "Mommy! Come look"
	line "at all the #MON"
	cont "swimming!"
	done

MarineTube_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  7, 27, MARINE_TUBE_ENTRANCE, 3
	warp_event  7,  5, MARINE_TUBE_ENTRANCE, 6

	db 0 ; coord events

	db 2 ; bg events
	bg_event  5, 10, BGEVENT_ITEM, MarineTubeFullRestore
	bg_event  8, 18, BGEVENT_ITEM, MarineTubeEther

	db 9 ; object events
	object_event  5, 15, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, MarineTubeCooltrainerFTextScript, -1
	object_event  5, 14, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MarineTubeCooltrainerMTextScript, -1
	object_event  8,  7, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, MarineTubeLassTextScript, -1
	object_event  7, 11, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MarineTubePokefanMTextScript, -1
	object_event  6, 24, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerNurseryAideMarineTube, -1
	object_event  5, 29, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerTwinsMarineTube, -1
	object_event  6, 29, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerTwinsMarineTube, -1
	object_event  5, 19, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerPreschoolerMMarineTube, -1
	object_event  8, 21, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerPreschoolerFMarineTube, -1
	