	const_def 2 ; object constants
	const LACUNOSAPOKECENTER_NURSE
	const LACUNOSAPOKECENTER_CLERK
	const LACUNOSAPOKECENTER_GAMEBOY_KID
	const LACUNOSAPOKECENTER_GENTLEMAN
	const LACUNOSAPOKECENTER_YOUNGSTER

LacunosaPokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

LacunosaPokecenterNurse:
	jumpstd pokecenternurse

LacunosaPokecenterClerkScript:
	opentext
	checkflag ENGINE_POKEDEX
	iftrue .PokeBallsInStock
	pokemart MARTTYPE_STANDARD, MART_HUMILAU
	closetext
	end

.PokeBallsInStock:
	pokemart MARTTYPE_STANDARD, MART_HUMILAU_DEX
	closetext
	end

LacunosaPokecenterGameboyKidScript:
	jumptextfaceplayer LacunosaPokecenterGameboyKidText

LacunosaPokecenterGentlemanScript:
	jumptextfaceplayer LacunosaPokecenterGentlemanText

LacunosaPokecenterYoungsterScript:
	jumptextfaceplayer LacunosaPokecenterYoungsterText

LacunosaPokecenterGameboyKidText:
	text "A lady named"
	line "AMANITA made the"
	
	para "#MON PC storage"
	line "system."
	done

LacunosaPokecenterGentlemanText:
	text "It was several"
	line "years ago now."

	para "TEAM PLASMA was up"
	line "to no good with"
	cont "#MON."

	para "But justice pre-"
	line "vailed--a young"
	cont "kid broke 'em up."
	
	para "Wait, that's twice"
	line "now it's happened."
	done

LacunosaPokecenterYoungsterText:
	text "Here is a little"
	line "advice! Keep a lot"

	para "of POTIONs! Keep a"
	line "lot of #BALLs"
	cont "too!"
	done

LacunosaPokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4,  9, LACUNOSA_TOWN, 1
	warp_event  5,  9, LACUNOSA_TOWN, 1

	db 0 ; coord events

	db 0 ; bg events

	db 5 ; object events
	object_event  4,  2, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LacunosaPokecenterNurse, -1
	object_event  8,  7, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LacunosaPokecenterClerkScript, -1
	object_event  8,  2, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, LacunosaPokecenterGameboyKidScript, -1
	object_event  1,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, LacunosaPokecenterGentlemanScript, -1
	object_event  1,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LacunosaPokecenterYoungsterScript, -1
	