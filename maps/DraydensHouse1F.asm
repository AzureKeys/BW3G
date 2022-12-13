	const_def 2 ; object constants
	const DRAYDENSHOUSE1F_DRAGON_FANG

DraydensHouse1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
DraydensHouseDragonFang:
	itemball DRAGON_FANG

DraydensHouse1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  4,  9, OPELUCID_CITY, 11
	warp_event  5,  9, OPELUCID_CITY, 11
	warp_event  5,  0, DRAYDENS_HOUSE_2F, 1
	
	db 0 ; coord events

	db 0 ; bg events
	
	db 1 ; object events
	object_event  4,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DraydensHouseDragonFang, EVENT_DRAYDENS_HOUSE_DRAGON_FANG
	