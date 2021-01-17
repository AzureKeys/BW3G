BugContestantPointers:
; there are NUM_BUG_CONTESTANTS + 1 entries
	dw BugContestant_BugCatcherDon ; this reverts back to the player
	dw BugContestant_BugCatcherDon
	dw BugContestant_BugCatcherEd
	dw BugContestant_CooltrainerMNick
	dw BugContestant_PokefanMWilliam
	dw BugContestant_BugCatcherBenny
	dw BugContestant_CamperBarry
	dw BugContestant_PicnickerCindy
	dw BugContestant_BugCatcherJosh
	dw BugContestant_YoungsterSamuel
	dw BugContestant_SchoolboyKipp

; contestant format:
;   db class, id
;   dbw 1st-place mon, score
;   dbw 2nd-place mon, score
;   dbw 3rd-place mon, score

BugContestant_BugCatcherDon:
	db BUG_CATCHER, DON
	dbw SEWADDLE,     300
	dbw SEWADDLE,    285
	dbw SEWADDLE,   226

BugContestant_BugCatcherEd:
	db BUG_CATCHER, ED
	dbw SEWADDLE, 286
	dbw SEWADDLE, 251
	dbw SEWADDLE,   237

BugContestant_CooltrainerMNick:
	db COOLTRAINERM, NICK
	dbw SEWADDLE,    357
	dbw SEWADDLE, 349
	dbw SEWADDLE,     368

BugContestant_PokefanMWilliam:
	db POKEFANM, WILLIAM
	dbw SEWADDLE,     332
	dbw SEWADDLE, 324
	dbw SEWADDLE,    321

BugContestant_BugCatcherBenny:
	db BUG_CATCHER, BUG_CATCHER_BENNY
	dbw SEWADDLE, 318
	dbw SEWADDLE,     295
	dbw SEWADDLE,   285

BugContestant_CamperBarry:
	db CAMPER, BARRY
	dbw SEWADDLE,     366
	dbw SEWADDLE,    329
	dbw SEWADDLE,     314

BugContestant_PicnickerCindy:
	db PICNICKER, CINDY
	dbw SEWADDLE, 341
	dbw SEWADDLE,    301
	dbw SEWADDLE,   264

BugContestant_BugCatcherJosh:
	db BUG_CATCHER, JOSH
	dbw SEWADDLE,    326
	dbw SEWADDLE, 292
	dbw SEWADDLE,    282

BugContestant_YoungsterSamuel:
	db YOUNGSTER, SAMUEL
	dbw SEWADDLE,     270
	dbw SEWADDLE,     282
	dbw SEWADDLE,   251

BugContestant_SchoolboyKipp:
	db SCHOOLBOY, KIPP
	dbw SEWADDLE,    267
	dbw SEWADDLE,      254
	dbw SEWADDLE,     259
