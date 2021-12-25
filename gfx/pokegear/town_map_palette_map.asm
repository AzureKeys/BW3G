	const_def
	const PAL_TOWNMAP_BORDER   ; 0
	const PAL_TOWNMAP_EARTH    ; 1
	const PAL_TOWNMAP_DOTS     ; 2
	const PAL_TOWNMAP_CITY     ; 3
	const PAL_TOWNMAP_POI      ; 4
	const PAL_TOWNMAP_POI_ROAD ; 5

townmappals: MACRO
rept _NARG / 2
	dn PAL_TOWNMAP_\2, PAL_TOWNMAP_\1
	shift
	shift
endr
ENDM

; gfx/pokegear/town_map.png
	townmappals CITY,     EARTH,    EARTH,    EARTH,    EARTH,    EARTH,    BORDER,   BORDER
	townmappals EARTH,    DOTS,     CITY,     EARTH,    POI,      POI,      POI,      POI
	townmappals EARTH,    EARTH,    EARTH,    EARTH,    EARTH,    CITY,     BORDER,   BORDER
	townmappals EARTH,    EARTH,    CITY,     DOTS,     POI,      POI,      POI_ROAD, POI
	townmappals POI,      EARTH,    EARTH,    EARTH,    CITY,     EARTH,    BORDER,   BORDER
	townmappals EARTH,    EARTH,    EARTH,    POI,      EARTH,    POI,      POI_ROAD, POI_ROAD
	townmappals BORDER,   BORDER,   BORDER,   BORDER,   BORDER,   BORDER,   BORDER,   BORDER
	townmappals BORDER,   BORDER,   BORDER,   BORDER,   BORDER,   BORDER,   BORDER,   BORDER
	townmappals BORDER,   BORDER,   BORDER,   BORDER,   BORDER,   BORDER,   BORDER,   BORDER
	townmappals BORDER,   BORDER,   BORDER,   BORDER,   BORDER,   BORDER,   BORDER,   BORDER
	townmappals BORDER,   BORDER,   BORDER,   BORDER,   BORDER,   BORDER,   BORDER,   BORDER
	townmappals BORDER,   BORDER,   BORDER,   BORDER,   BORDER,   CITY,     BORDER,   BORDER
	townmappals CITY,     CITY,     CITY,     CITY,     CITY,     CITY,     CITY,     CITY
	townmappals CITY,     CITY,     CITY,     CITY,     CITY,     CITY,     CITY,     BORDER
	townmappals CITY,     CITY,     CITY,     CITY,     CITY,     CITY,     CITY,     CITY
	townmappals CITY,     CITY,     CITY,     CITY,     CITY,     CITY,     CITY,     BORDER
