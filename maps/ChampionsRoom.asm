	const_def 2 ; object constants

ChampionsRoom_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	db 0 ; callbacks

.DummyScene0:
	end

.DummyScene1:
	end

ChampionsRoom_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  7, 19, CHAMPIONS_ROOM_ENTRANCE, 1
	warp_event  7,  4, CHAMPIONS_ROOM, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
	