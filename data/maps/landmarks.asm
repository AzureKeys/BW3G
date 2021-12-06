landmark: MACRO
; x, y, name
	db \1 + 8, \2 + 16
	dw \3
ENDM

Landmarks:
; entries correspond to constants/landmark_constants.asm
	dbbw       0,   0, SpecialMapName
	landmark 132,  28, HumilauCityName
	landmark 144,  32, R21Name
	landmark 148,  44, SeasideCaveName
	landmark 132,  40, MarineTubeName
	landmark 124,  28, R22Name
	landmark 116,  28, GiantChasmName
	landmark 108,  36, LacunosaTownName
	landmark 120,  40, R13Name
	landmark 124,  52, UndellaTownName
	landmark 124,  64, R14Name
	landmark 116,  52, ReversalMountainName
	landmark 100,  52, LentimasTownName
	landmark 104,  52, StrangeHouseName
	landmark 104,  56, LentimasOutskirtsName
	landmark 100,  68, LostlornForestName
	landmark  96,  76, R16Name
	landmark  84,  76, NimbasaCityName
	landmark  84,  76, NimbasaParkName
	landmark  84,  88, R4Name
	landmark  76,  92, DesertResortName
	landmark  76,  92, RelicCastleName
	landmark  84, 100, CasteliaCityName
	landmark  92, 108, CasteliaSewersName
	landmark 100, 100, SkyarrowBridgeName
	landmark 116,  92, PinwheelForestName
	landmark 124,  92, NacreneCityName
	landmark 132,  92, R3Name
	landmark 132,  92, WellspringCaveName
	landmark 140,  92, StriatonCityName
	landmark 148,  92, DreamyardName
	landmark 140, 100, R2Name
	landmark 140, 108, AccumulaTownName
	landmark 140, 116, R1Name
	landmark 140, 124, NuvemaTownName
	landmark 128, 116, R17Name
	landmark 116, 116, R18Name
	landmark 116, 116, P2LabName
	landmark  20, 124, AspertiaCityName
	landmark  20, 112, R19Name
	landmark  20, 100, FloccesyTownName
	landmark  20,  92, FloccesyRanchName
	landmark  32, 100, R20Name
	landmark  44, 100, VirbankCityName
	landmark  44, 108, VirbankComplexName
	landmark  72,  76, R5Name
	landmark  60,  76, DriftveilDrawbridgeName
	landmark  52,  76, DriftveilCityName
	landmark  52,  84, PokemonWorldTournamentName
	landmark  60,  92, RelicPassageName
	landmark  36,  72, R6Name
	landmark  36,  60, MistraltonCaveName
	landmark  28,  60, ChargestoneCaveName
	landmark  28,  52, MistraltonCityName
	landmark  28,  40, R7Name
	landmark  28,  28, CelestialTowerName
	landmark  44,  36, IcirrusCityName
	landmark  44,  28, DragonspiralTowerName
	landmark  52,  36, R8Name
	landmark  52,  28, MoorOfIcirrusName
	landmark  60,  36, TubelineBridgeName
	landmark  68,  36, R9Name
	landmark  76,  36, OpelucidCityName
	landmark  84,  36, R11Name
	landmark  92,  36, VillageBridgeName
	landmark 100,  36, R12Name
	landmark 112,  20, R23Name
	landmark 100,  20, VictoryRoadName
	landmark 100,  12, PokemonLeagueName

NewBarkTownName:     db "NEW BARK¯TOWN@"
CherrygroveCityName: db "CHERRYGROVE¯CITY@"
VioletCityName:      db "VIOLET CITY@"
AzaleaTownName:      db "AZALEA TOWN@"
GoldenrodCityName:   db "GOLDENROD¯CITY@"
EcruteakCityName:    db "ECRUTEAK¯CITY@"
OlivineCityName:     db "OLIVINE¯CITY@"
CianwoodCityName:    db "CIANWOOD¯CITY@"
MahoganyTownName:    db "MAHOGANY¯TOWN@"
BlackthornCityName:  db "BLACKTHORN¯CITY@"
LakeOfRageName:      db "LAKE OF¯RAGE@"
SilverCaveName:      db "SILVER CAVE@"
SproutTowerName:     db "SPROUT¯TOWER@"
RuinsOfAlphName:     db "RUINS¯OF ALPH@"
UnionCaveName:       db "UNION CAVE@"
SlowpokeWellName:    db "SLOWPOKE¯WELL@"
RadioTowerName:      db "RADIO TOWER@"
PowerPlantName:      db "POWER PLANT@"
NationalParkName:    db "NATIONAL¯PARK@"
TinTowerName:        db "TIN TOWER@"
LighthouseName:      db "LIGHTHOUSE@"
WhirlIslandsName:    db "WHIRL¯ISLANDS@"
MtMortarName:        db "MT.MORTAR@"
DragonsDenName:      db "DRAGON'S¯DEN@"
IcePathName:         db "ICE PATH@"
NotApplicableName:   db "N/A@" ; "オバケやしき" ("HAUNTED HOUSE") in Japanese
PalletTownName:      db "PALLET TOWN@"
ViridianCityName:    db "VIRIDIAN¯CITY@"
PewterCityName:      db "PEWTER CITY@"
CeruleanCityName:    db "CERULEAN¯CITY@"
LavenderTownName:    db "LAVENDER¯TOWN@"
VermilionCityName:   db "VERMILION¯CITY@"
CeladonCityName:     db "CELADON¯CITY@"
SaffronCityName:     db "SAFFRON¯CITY@"
FuchsiaCityName:     db "FUCHSIA¯CITY@"
CinnabarIslandName:  db "CINNABAR¯ISLAND@"
IndigoPlateauName:   db "INDIGO¯PLATEAU@"
VictoryRoadName:     db "VICTORY¯ROAD@"
MtMoonName:          db "MT.MOON@"
RockTunnelName:      db "ROCK TUNNEL@"
LavRadioTowerName:   db "LAV¯RADIO TOWER@"
SilphCoName:         db "SILPH CO.@"
SafariZoneName:      db "SAFARI ZONE@"
SeafoamIslandsName:  db "SEAFOAM¯ISLANDS@"
PokemonMansionName:  db "#MON¯MANSION@"
CeruleanCaveName:    db "CERULEAN¯CAVE@"
Route1Name:          db "ROUTE 1@"
Route2Name:          db "ROUTE 2@"
Route3Name:          db "ROUTE 3@"
Route4Name:          db "ROUTE 4@"
Route5Name:          db "ROUTE 5@"
Route6Name:          db "ROUTE 6@"
Route7Name:          db "ROUTE 7@"
Route8Name:          db "ROUTE 8@"
Route9Name:          db "ROUTE 9@"
Route10Name:         db "ROUTE 10@"
Route11Name:         db "ROUTE 11@"
Route12Name:         db "ROUTE 12@"
Route13Name:         db "ROUTE 13@"
Route14Name:         db "ROUTE 14@"
Route15Name:         db "ROUTE 15@"
Route16Name:         db "ROUTE 16@"
Route17Name:         db "ROUTE 17@"
Route18Name:         db "ROUTE 18@"
Route19Name:         db "ROUTE 19@"
Route20Name:         db "ROUTE 20@"
Route21Name:         db "ROUTE 21@"
Route22Name:         db "ROUTE 22@"
Route23Name:         db "ROUTE 23@"
Route24Name:         db "ROUTE 24@"
Route25Name:         db "ROUTE 25@"
Route26Name:         db "ROUTE 26@"
Route27Name:         db "ROUTE 27@"
Route28Name:         db "ROUTE 28@"
Route29Name:         db "ROUTE 29@"
Route30Name:         db "ROUTE 30@"
Route31Name:         db "ROUTE 31@"
Route32Name:         db "ROUTE 32@"
Route33Name:         db "ROUTE 33@"
Route34Name:         db "ROUTE 34@"
Route35Name:         db "ROUTE 35@"
Route36Name:         db "ROUTE 36@"
Route37Name:         db "ROUTE 37@"
Route38Name:         db "ROUTE 38@"
Route39Name:         db "ROUTE 39@"
Route40Name:         db "ROUTE 40@"
Route41Name:         db "ROUTE 41@"
Route42Name:         db "ROUTE 42@"
Route43Name:         db "ROUTE 43@"
Route44Name:         db "ROUTE 44@"
Route45Name:         db "ROUTE 45@"
Route46Name:         db "ROUTE 46@"
DarkCaveName:        db "DARK CAVE@"
IlexForestName:      db "ILEX¯FOREST@"
BurnedTowerName:     db "BURNED¯TOWER@"
FastShipName:        db "FAST SHIP@"
ViridianForestName:  db "VIRIDIAN¯FOREST@"
DiglettsCaveName:    db "DIGLETT'S¯CAVE@"
TohjoFallsName:      db "TOHJO FALLS@"
UndergroundName:     db "UNDERGROUND@"
BattleTowerName:     db "BATTLE¯TOWER@"
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
PokemonLeagueName:   db "#MON¯LEAGUE@"
