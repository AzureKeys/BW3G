	const_def 2 ; object constants
	const NIMBASAPARKRUNWAY_CHEREN
	const NIMBASAPARKRUNWAY_GRUNTM
	const NIMBASAPARKRUNWAY_GRUNTF_1
	const NIMBASAPARKRUNWAY_GRUNTF_2

NimbasaParkRunway_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_TILES, .CheckStairs

.CheckStairs:
	checkevent EVENT_OPENED_NIMBASA_RUNWAY
	iffalse .done
	changeblock  2,  2, $1A
	disappear NIMBASAPARKRUNWAY_CHEREN
.done:
	return

TrainerGruntMNimbasaPark5:
	trainer GRUNTM, GRUNTM_NIMBASA_5, EVENT_BEAT_GRUNTM_NIMBASA_PARK_5, GruntMNimbasaPark5SeenText, GruntMNimbasaPark5BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntMNimbasaPark5AfterText
	waitbutton
	closetext
	end

TrainerGruntFNimbasaPark4:
	trainer GRUNTF, GRUNTF_NIMBASA_4, EVENT_BEAT_GRUNTF_NIMBASA_PARK_4, GruntFNimbasaPark4SeenText, GruntFNimbasaPark4BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntFNimbasaPark4AfterText
	waitbutton
	closetext
	end

TrainerGruntFNimbasaPark5:
	trainer GRUNTF, GRUNTF_NIMBASA_5, EVENT_BEAT_GRUNTF_NIMBASA_PARK_5, GruntFNimbasaPark5SeenText, GruntFNimbasaPark5BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntFNimbasaPark5AfterText
	waitbutton
	closetext
	end
	
NimbasaParkCherenTextScript:
	jumptextfaceplayer NimbasaParkCherenRunwayText
	
NimbasaParkOldGymSign:
	jumptext NimbasaParkOldGymText
	
NimbasaParkOldGymText:
	text "N--BASA --TY GY-"
	line "Lea--r: E--sa"
	done
	
GruntMNimbasaPark5SeenText:
	text "We're TEAM PLASMA,"
	line "the exploiters of"
	cont "#MON!"

	para "We love being"
	line "evil! Scared?"
	done

GruntMNimbasaPark5BeatenText:
	text "You think you're a"
	line "hero?"
	done

GruntMNimbasaPark5AfterText:
	text "We're not always"
	line "evil. We just do"
	cont "whatever we like."
	done
	
GruntFNimbasaPark4SeenText:
	text "We've taken over"
	line "The PARK! What"
	cont "are we after?"

	para "That's a secret!"
	done

GruntFNimbasaPark4BeatenText:
	text "Too strong! We"
	line "must watch you…"
	done

GruntFNimbasaPark4AfterText:
	text "You're too strong."

	para "Our plan could be"
	line "ruined. I must"
	cont "warn the others…"
	done
	
GruntFNimbasaPark5SeenText:
	text "Hey, hey! Keep out"
	line "of our way!"
	done

GruntFNimbasaPark5BeatenText:
	text "Arggh. I give up."
	done

GruntFNimbasaPark5AfterText:
	text "Our SAGEs want"
	line "something from"
	cont "this place."

	para "They have some big"
	line "plan. I wonder"
	cont "what that is?"
	done
	
NimbasaParkCherenRunwayText:
	text "CHEREN: Oh,"
	line "<PLAY_G>. I trust"
	
	para "those PLASMA"
	line "GRUNTS didn't give"
	cont "you any trouble."
	
	para "Unfortunately, I"
	line "wasn't able to get"
	
	para "any useful infor-"
	line "mation out of"
	cont "them."
	
	para "I'm going to keep"
	line "investigating this"
	cont "area for now."
	done

NimbasaParkRunway_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  4, 25, NIMBASA_PARK_OUTSIDE, 2
	warp_event  5, 25, NIMBASA_PARK_OUTSIDE, 2
	warp_event  3,  2, NIMBASA_PARK_BASEMENT, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event  3, 23, BGEVENT_READ, NimbasaParkOldGymSign
	bg_event  6, 23, BGEVENT_READ, NimbasaParkOldGymSign

	db 4 ; object events
	object_event  4,  3, SPRITE_CHEREN, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NimbasaParkCherenTextScript, EVENT_NIMBASA_PARK_RUNWAY_CHEREN
	object_event  4, 14, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerGruntMNimbasaPark5, EVENT_NIMBASA_PARK_GRUNTS
	object_event  5, 18, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerGruntFNimbasaPark4, EVENT_NIMBASA_PARK_GRUNTS
	object_event  5, 10, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerGruntFNimbasaPark5, EVENT_NIMBASA_PARK_GRUNTS
	