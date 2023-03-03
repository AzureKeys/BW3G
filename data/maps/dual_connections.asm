dual_connection: MACRO
;\1: direction
;\2: map id
;\3: split coordinate (lesser/greater) (y for east/west, x for north/south)
;\4: lesser map name
;\5: lesser map id
;\6: lesser map offset (x for east/west, y for north/south)
;\7: greater map name
;\8: greater map id
;\9: greater map offset (x for east/west, y for north/south)

	map_id \2

if !STRCMP("\1", "north")
	db UP
	dw wXCoord
	db \3
	dw wNorthMapConnection
elif !STRCMP("\1", "south")
	db DOWN
	dw wXCoord
	db \3
	dw wSouthMapConnection
elif !STRCMP("\1", "west")
	db LEFT
	dw wYCoord
	db \3
	dw wWestMapConnection
elif !STRCMP("\1", "east")
	db RIGHT
	dw wYCoord
	db \3
	dw wEastMapConnection
else
fail "Invalid direction for 'dual_connection'."
endc

CURRENT_MAP_WIDTH = \2_WIDTH
CURRENT_MAP_HEIGHT = \2_HEIGHT
	connection \1, \4, \5, \6
	connection \1, \7, \8, \9
ENDM

DualMapConnections:
; When you walk north off of Icirrus City South, if [wXCoord] < 21,
; then use "connection north, IcirrusCityNorth, ICIRRUS_CITY_NORTH, -1";
; else use "connection north, Rt8, R_8, 8".
	dual_connection north, ICIRRUS_CITY_SOUTH, 21, IcirrusCityNorth, ICIRRUS_CITY_NORTH, -1, Rt8, R_8, 8
; When you walk east off of Nacrene Outskirt, if [wYCoord] < 21,
; then use "connection east, NacreneCity, NACRENE_CITY, 0";
; else use "connection east, NacreneOutskirtEast, NacreneOutskirtEast, 12".
	dual_connection east, NACRENE_OUTSKIRT, 21, NacreneCity, NACRENE_CITY, 0, NacreneOutskirtEast, NACRENE_OUTSKIRT_EAST, 12
; When you walk north off of VictoryRoadEntranceNorth, if [wXCoord] < 14,
; then use "connection south, VictoryRoadEntranceSouthLeft, VICTORY_ROAD_ENTRANCE_SOUTH_LEFT, 0";
; else use "connection south, VictoryRoadEntranceSouthRight, VICTORY_ROAD_ENTRANCE_SOUTH_RIGHT, 14".
	dual_connection south, VICTORY_ROAD_ENTRANCE_NORTH, 14, VictoryRoadEntranceSouthLeft, VICTORY_ROAD_ENTRANCE_SOUTH_LEFT, 0, VictoryRoadEntranceSouthRight, VICTORY_ROAD_ENTRANCE_SOUTH_RIGHT, 14
	db 0 ; end
