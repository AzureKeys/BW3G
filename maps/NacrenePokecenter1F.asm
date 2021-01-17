	const_def 2 ; object constants
	const NACRENEPOKECENTER1F_NURSE
	const NACRENEPOKECENTER1F_TEACHER
	const NACRENEPOKECENTER1F_JIGGLYPUFF
	const NACRENEPOKECENTER1F_BUG_CATCHER

NacrenePokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

NacrenePokecenter1FNurseScript:
	jumpstd pokecenternurse

NacrenePokecenter1FTeacherScript:
	jumptextfaceplayer NacrenePokecenter1FTeacherText

NacreneJigglypuff:
	opentext
	writetext NacreneJigglypuffText
	cry JIGGLYPUFF
	waitbutton
	closetext
	end

NacrenePokecenter1FBugCatcherScript:
	jumptextfaceplayer NacrenePokecenter1FBugCatcherText

NacrenePokecenter1FTeacherText:
	text "…Yeah, our GYM's"
	line "LEADER closed the"
	cont "GYM down."
	
	para "Yeah, it's been a"
	line "few years now."

	para "…Yes? I'm on the"
	line "phone. Go away!"
	done

NacreneJigglypuffText:
	text "JIGGLYPUFF: Puu"
	line "pupuu."
	done

NacrenePokecenter1FBugCatcherText:
	text "Most #MON get"
	line "drowsy if they"

	para "hear a JIGGLYPUFF"
	line "singing."
	done

NacrenePokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  3,  7, NACRENE_CITY, 3
	warp_event  4,  7, NACRENE_CITY, 3
	warp_event  0,  7, POKECENTER_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacrenePokecenter1FNurseScript, -1
	object_event  8,  6, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NacrenePokecenter1FTeacherScript, -1
	object_event  1,  3, SPRITE_JIGGLYPUFF, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacreneJigglypuff, -1
	object_event  2,  3, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, NacrenePokecenter1FBugCatcherScript, -1
	