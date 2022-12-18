	const_def 2 ; object constants

ChampionsRoomEntrance_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	db 0 ; callbacks

.DummyScene0:
	end

.DummyScene1:
	end

ChampionsRoomEntrance_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  7, 16, CHAMPIONS_ROOM_ENTRANCE, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
	