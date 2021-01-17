landmark: MACRO
; x, y, name
	db \1 + 8, \2 + 16
	dw \3
ENDM

Landmarks:
; entries correspond to constants/landmark_constants.asm
	dbbw       0,   0, SpecialMapName
	; landmark 140, 100, NewBarkTownName
	; landmark 128, 100, Route29Name
	; landmark 100, 100, CherrygroveCityName
	; landmark 100,  80, Route30Name
	; landmark  96,  60, Route31Name
	; landmark  84,  60, VioletCityName
	; landmark  85,  58, SproutTowerName
	; landmark  84,  92, Route32Name
	; landmark  76,  76, RuinsOfAlphName
	; landmark  84, 124, UnionCaveName
	; landmark  82, 124, Route33Name
	; landmark  68, 124, AzaleaTownName
	; landmark  70, 122, SlowpokeWellName
	; landmark  52, 120, IlexForestName
	; landmark  52, 112, Route34Name
	; landmark  52,  92, GoldenrodCityName
	; landmark  50,  92, RadioTowerName
	; landmark  52,  76, Route35Name
	; landmark  52,  60, NationalParkName
	; landmark  64,  60, Route36Name
	; landmark  68,  52, Route37Name
	; landmark  68,  44, EcruteakCityName
	; landmark  70,  42, TinTowerName
	; landmark  66,  42, BurnedTowerName
	; landmark  52,  44, Route38Name
	; landmark  36,  48, Route39Name
	; landmark  36,  60, OlivineCityName
	; landmark  38,  62, LighthouseName
	; landmark  28,  56, BattleTowerName
	; landmark  28,  64, Route40Name
	; landmark  28,  92, WhirlIslandsName
	; landmark  28, 100, Route41Name
	; landmark  20, 100, CianwoodCityName
	; landmark  92,  44, Route42Name
	; landmark  84,  44, MtMortarName
	; landmark 108,  44, MahoganyTownName
	; landmark 108,  36, Route43Name
	; landmark 108,  28, LakeOfRageName
	; landmark 120,  44, Route44Name
	; landmark 130,  38, IcePathName
	; landmark 132,  44, BlackthornCityName
	; landmark 132,  36, DragonsDenName
	; landmark 132,  64, Route45Name
	; landmark 112,  72, DarkCaveName
	; landmark 124,  88, Route46Name
	; landmark 0,  0, SilverCaveName
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
	landmark  28,  60, ChargestoneCaveName
	landmark  28,  52, MistraltonCityName
	landmark  28,  40, R7Name
	landmark  28,  28, CelestialTowerName
	landmark  44,  36, IcirrusCityName
	landmark  44,  28, DragonspiralTowerName
	landmark  52,  36, R8Name
	landmark  60,  36, TubelineBridgeName
	landmark  68,  36, R9Name
	landmark  76,  36, OpelucidCityName
	landmark  84,  36, R11Name
	landmark  92,  36, VillageBridgeName
	landmark 100,  36, R12Name
	landmark 112,  20, R23Name
	landmark 100,  20, VictoryRoadName
	landmark 100,  12, PokemonLeagueName
	; landmark  52, 108, PalletTownName
	; landmark  52,  92, Route1Name
	; landmark  52,  76, ViridianCityName
	; landmark  52,  64, Route2Name
	; landmark  52,  52, PewterCityName
	; landmark  64,  52, Route3Name
	; landmark  76,  52, MtMoonName
	; landmark  88,  52, Route4Name
	; landmark 100,  52, CeruleanCityName
	; landmark 100,  44, Route24Name
	; landmark 108,  36, Route25Name
	; landmark 100,  60, Route5Name
	; landmark 108,  76, UndergroundName
	; landmark 100,  76, Route6Name
	; landmark 100,  84, VermilionCityName
	; landmark  88,  60, DiglettsCaveName
	; landmark  88,  68, Route7Name
	; landmark 116,  68, Route8Name
	; landmark 116,  52, Route9Name
	; landmark 132,  52, RockTunnelName
	; landmark 132,  56, Route10Name
	; landmark 132,  60, PowerPlantName
	; landmark 132,  68, LavenderTownName
	; landmark 140,  68, LavRadioTowerName
	; landmark  76,  68, CeladonCityName
	; landmark 100,  68, SaffronCityName
	; landmark 116,  84, Route11Name
	; landmark 132,  80, Route12Name
	; landmark 124, 100, Route13Name
	; landmark 116, 112, Route14Name
	; landmark 104, 116, Route15Name
	; landmark  68,  68, Route16Name
	; landmark  68,  92, Route17Name
	; landmark  80, 116, Route18Name
	; landmark  92, 116, FuchsiaCityName
	; landmark  92, 128, Route19Name
	; landmark  76, 132, Route20Name
	; landmark  68, 132, SeafoamIslandsName
	; landmark  52, 132, CinnabarIslandName
	; landmark  52, 120, Route21Name
	; landmark  36,  68, Route22Name
	; ;landmark  28,  52, VictoryRoadName
	; landmark  28,  44, Route23Name
	; landmark  28,  36, IndigoPlateauName
	; landmark  28,  92, Route26Name
	; landmark  20, 100, Route27Name
	; landmark  12, 100, TohjoFallsName
	; landmark  20,  68, Route28Name
	; landmark 140, 116, FastShipName

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
ChargestoneCaveName: db "CHARGE¯STONE CAVE@"
MistraltonCityName:  db "MISTRALTON¯CITY@"
R7Name:              db "ROUTE 7@"
CelestialTowerName:  db "CELESTIAL¯TOWER@"
IcirrusCityName:     db "ICIRRUS¯CITY@"
DragonspiralTowerName:db "DRGNSPIRAL¯TOWER@"
R8Name:              db "ROUTE 8@"
TubelineBridgeName:  db "TUBELINE¯BRIDGE@"
R9Name:              db "ROUTE 9@"
OpelucidCityName:    db "OPELUCID¯CITY@"
R11Name:             db "ROUTE 11@"
VillageBridgeName:   db "VILLAGE¯BRIDGE@"
R12Name:             db "ROUTE 12@"
R23Name:             db "ROUTE 23@"
PokemonLeagueName:   db "#MON¯LEAGUE@"
