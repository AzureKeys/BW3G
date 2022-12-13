landmark: MACRO
; x, y, name
	db \1 + 8, \2 + 16
	dw \3
ENDM

Landmarks:
; entries correspond to constants/landmark_constants.asm
	dbbw       0,   0, SpecialMapName
	landmark 140,  28, HumilauCityName
	landmark 148,  36, R21Name
	landmark 148,  52, SeasideCaveName
	landmark 132,  52, MarineTubeName
	landmark 132,  28, R22Name
	landmark 124,  28, GiantChasmName
	landmark 116,  36, LacunosaTownName
	landmark 124,  44, R13Name
	landmark 124,  60, UndellaTownName
	landmark 116,  68, R14Name
	landmark 116,  60, ReversalMountainName
	landmark 100,  60, LentimasOutskirtsName
	landmark 100,  52, StrangeHouseName
	landmark  92,  60, LentimasTownName
	landmark 100,  76, LostlornForestName
	landmark  92,  84, R16Name
	landmark  84,  84, NimbasaCityName
	landmark  92,  92, NimbasaParkName
	landmark  84, 100, R4Name
	landmark  76,  92, DesertResortName
	landmark  68,  92, RelicCastleName
	landmark  84, 116, CasteliaCityName
	landmark  92, 124, CasteliaSewersName
	landmark 104, 108, SkyarrowBridgeName
	landmark 116, 100, PinwheelForestName
	landmark 124, 100, NacreneCityName
	landmark 132, 100, R3Name
	landmark 132,  92, WellspringCaveName
	landmark 140, 100, StriatonCityName
	landmark 148, 100, DreamyardName
	landmark 140, 108, R2Name
	landmark 140, 116, AccumulaTownName
	landmark 140, 124, R1Name
	landmark 140, 132, NuvemaTownName
	landmark 132, 132, R17Name
	landmark 124, 132, R18Name
	landmark 124, 124, P2LabName
	landmark  12, 132, AspertiaCityName
	landmark  16, 120, R19Name
	landmark  28, 116, FloccesyTownName
	landmark  36, 108, FloccesyRanchName
	landmark  40, 116, R20Name
	landmark  52, 116, VirbankCityName
	landmark  52, 124, VirbankComplexName
	landmark  76,  84, R5Name
	landmark  64,  84, DriftveilDrawbridgeName
	landmark  52,  84, DriftveilCityName
	landmark  52,  92, PokemonWorldTournamentName
	landmark  68, 104, RelicPassageName
	landmark  40,  76, R6Name
	landmark  44,  68, MistraltonCaveName
	landmark  28,  76, ChargestoneCaveName
	landmark  28,  60, MistraltonCityName
	landmark  36,  48, R7Name
	landmark  28,  44, CelestialTowerName
	landmark  44,  36, TwistMountainName
	landmark  52,  36, IcirrusCityName
	landmark  52,  28, DragonspiralTowerName
	landmark  60,  36, R8Name
	landmark  60,  28, MoorOfIcirrusName
	landmark  68,  36, TubelineBridgeName
	landmark  76,  36, R9Name
	landmark  84,  36, OpelucidCityName
	landmark  92,  36, R11Name
	landmark 100,  36, VillageBridgeName
	landmark 108,  36, R12Name
	landmark 116,  24, R23Name
	landmark 108,  20, VictoryRoadName
	landmark 100,  20, PokemonLeagueName

SpecialMapName:      db "SPECIAL@"
HumilauCityName:     db "HUMILAU¯CITY@"
R21Name:             db "ROUTE 21@"
SeasideCaveName:     db "SEASIDE¯CAVE@"
MarineTubeName:      db "MARINE¯TUBE@"
R22Name:             db "ROUTE 22@"
GiantChasmName:      db "GIANT¯CHASM@"
LacunosaTownName:    db "LACUNOSA¯TOWN@"
R13Name:             db "ROUTE 13@"
UndellaTownName:     db "UNDELLA¯TOWN@"
R14Name:             db "ROUTE 14@"
ReversalMountainName:db "REVERSAL¯MOUNTAIN@"
LentimasTownName:    db "LENTIMAS¯TOWN@"
StrangeHouseName:    db "STRANGE¯HOUSE@"
LentimasOutskirtsName:db "LENTIMAS¯OUTSKIRT@"
LostlornForestName:  db "LOSTLORN¯FOREST@"
R16Name:             db "ROUTE 16@"
NimbasaCityName:     db "NIMBASA¯CITY@"
NimbasaParkName:     db "NIMBASA¯PARK@"
R4Name:              db "ROUTE 4@"
DesertResortName:    db "DESERT¯RESORT@"
RelicCastleName:     db "RELIC¯CASTLE@"
CasteliaCityName:    db "CASTELIA¯CITY@"
CasteliaSewersName:  db "CASTELIA¯SEWERS@"
SkyarrowBridgeName:  db "SKYARROW¯BRIDGE@"
PinwheelForestName:  db "PINWHEEL¯FOREST@"
NacreneCityName:     db "NACRENE¯CITY@"
R3Name:              db "ROUTE 3@"
WellspringCaveName:  db "WELLSPRING¯CAVE@"
StriatonCityName:    db "STRIATON¯CITY@"
DreamyardName:       db "DREAMYARD@"
R2Name:              db "ROUTE 2@"
AccumulaTownName:    db "ACCUMULA¯TOWN@"
R1Name:              db "ROUTE 1@"
NuvemaTownName:      db "NUVEMA¯TOWN@"
R17Name:             db "ROUTE 17@"
R18Name:             db "ROUTE 18@"
P2LabName:           db "P2 LAB@"
AspertiaCityName:    db "ASPERTIA¯CITY@"
R19Name:             db "ROUTE 19@"
FloccesyTownName:    db "FLOCCESY¯TOWN@"
FloccesyRanchName:   db "FLOCCESY¯RANCH@"
R20Name:             db "ROUTE 20@"
VirbankCityName:     db "VIRBANK¯CITY@"
VirbankComplexName:  db "VIRBANK¯COMPLEX@"
R5Name:              db "ROUTE 5@"
DriftveilDrawbridgeName:db "DRIFTVEIL¯BRIDGE@"
DriftveilCityName:   db "DRIFTVEIL¯CITY@"
PokemonWorldTournamentName:db "WORLD¯TOURNAMENT@"
RelicPassageName:    db "RELIC¯PASSAGE@"
R6Name:              db "ROUTE 6@"
MistraltonCaveName:  db "MISTRALTON¯CAVE@"
ChargestoneCaveName: db "CHARGE¯STONE CAVE@"
MistraltonCityName:  db "MISTRALTON¯CITY@"
R7Name:              db "ROUTE 7@"
CelestialTowerName:  db "CELESTIAL¯TOWER@"
TwistMountainName:   db "TWIST¯MOUNTAIN@"
IcirrusCityName:     db "ICIRRUS¯CITY@"
DragonspiralTowerName:db "DRGNSPIRAL¯TOWER@"
R8Name:              db "ROUTE 8@"
MoorOfIcirrusName:   db "MOOR OF¯ICIRRUS@"
TubelineBridgeName:  db "TUBELINE¯BRIDGE@"
R9Name:              db "ROUTE 9@"
OpelucidCityName:    db "OPELUCID¯CITY@"
R11Name:             db "ROUTE 11@"
VillageBridgeName:   db "VILLAGE¯BRIDGE@"
R12Name:             db "ROUTE 12@"
R23Name:             db "ROUTE 23@"
VictoryRoadName:     db "VICTORY¯ROAD@"
PokemonLeagueName:   db "POKEMON¯LEAGUE@"
