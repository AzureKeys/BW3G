INCLUDE "constants.asm"


SECTION "Egg Moves", ROMX

; All instances of Charm, Steel Wing, Sweet Scent, and Lovely Kiss were
; removed from egg move lists in Crystal.
; Sweet Scent and Steel Wing were redundant since they're TMs, and
; Charm and Lovely Kiss were unobtainable.

; Staryu's egg moves were removed in Crystal, because Staryu is genderless
; and can only breed with Ditto.

INCLUDE "data/pokemon/egg_move_pointers.asm"

SnivyEggMoves:
	db IRON_TAIL
	db MAGICAL_LEAF
	db MEAN_LOOK
	db MIRROR_COAT
	db PURSUIT
	db SWEET_SCENT
	db -1 ; end

TepigEggMoves:
	db BODY_SLAM
	db CURSE
	db MAGNITUDE
	db SUCKER_PUNCH
	db -1 ; end

OshawottEggMoves:
	db AIR_SLASH
	db DETECT
	db NIGHT_SLASH
	db SCREECH
	db -1 ; end

PatratEggMoves:
	db FLAIL
	db FORESIGHT
	db IRON_TAIL
	db PURSUIT
	db SCREECH
	db -1 ; end

PurrloinEggMoves:
	db CHARM
	db ENCORE
	db FAINT_ATTACK
	db -1 ; end

PidoveEggMoves:
	db HYPNOSIS
	db NIGHT_SLASH
	db STEEL_WING
	db -1 ; end

IgglybuffEggMoves:
	db FAINT_ATTACK
	db PERISH_SONG
	db -1 ; end

AzurillEggMoves:
	db BODY_SLAM
	db ENCORE
	db SING
	db -1 ; end

SewaddleEggMoves:
	db AGILITY
	db AIR_SLASH
	db LOCK_ON
	db SCREECH
	db -1 ; end

VenipedeEggMoves:
	db PIN_MISSILE
	db TAKE_DOWN
	db -1 ; end

LillipupEggMoves:
	db CHARM
	db ENDURE
	db FIRE_FANG
	db ICE_FANG
	db LICK
	db MUD_SLAP
	db PURSUIT
	db SAND_ATTACK
	db THUNDER_FANG
	db -1 ; end

TympoleEggMoves:
	db EARTH_POWER
	db MIST
	db WATER_PULSE
	db -1 ; end

ZubatEggMoves:
	db BRAVE_BIRD
	db CURSE
	db FAINT_ATTACK
	db GIGA_DRAIN
	db GUST
	db HYPNOSIS
	db NASTY_PLOT
	db PURSUIT
	db QUICK_ATTACK
	db STEEL_WING
	db WHIRLWIND
	db ZEN_HEADBUTT
	db -1 ; end

WoobatEggMoves:
	db CHARM
	db SUPERSONIC
	db -1 ; end

RoggenrolaEggMoves:
	db CURSE
	db LOCK_ON
	db MAGNITUDE
	db ROCK_TOMB
	db TAKE_DOWN
	db -1 ; end

CleffaEggMoves:
	db AMNESIA
	db BELLY_DRUM
	db METRONOME
	db -1 ; end

MunnaEggMoves:
	db BARRIER
	db CURSE
	db SONICBOOM
	db SWIFT
	db -1 ; end

VullabyEggMoves:
	db MEAN_LOOK
	db SCARY_FACE
	db STEEL_WING
	db -1 ; end

BudewEggMoves:
	db EXTRASENSORY
	db GIGA_DRAIN
	db LOCK_ON
	db PIN_MISSILE
	db RAZOR_LEAF
	db SEED_BOMB
	db SLEEP_POWDER
	db SYNTHESIS
	db -1 ; end

FoongusEggMoves:
	db BODY_SLAM
	db DEFENSE_CURL
	db ENDURE
	db GROWTH
	db POISONPOWDER
	db ROLLOUT
	db STUN_SPORE
	db -1 ; end

RaltsEggMoves:
	db CONFUSE_RAY
	db DESTINY_BOND
	db DISABLE
	db ENCORE
	db MEAN_LOOK
	db SHADOW_SNEAK
	db -1 ; end

BlitzleEggMoves:
	db DOUBLE_EDGE
	db DOUBLE_KICK
	db ENDURE
	db SAND_ATTACK
	db SCREECH
	db SHOCK_WAVE
	db TAKE_DOWN
	db -1 ; end

MareepEggMoves:
	db AGILITY
	db BODY_SLAM
	db IRON_TAIL
	db SAND_ATTACK
	db SCREECH
	db TAKE_DOWN
	db -1 ; end

DrilburEggMoves:
	db EARTH_POWER
	db IRON_DEFENSE
	db -1 ; end

SnubbullEggMoves:
	db CLOSE_COMBAT
	db CRUNCH
	db DOUBLE_EDGE
	db FAINT_ATTACK
	db FIRE_FANG
	db ICE_FANG
	db METRONOME
	db THUNDER_FANG
	db -1 ; end

RioluEggMoves:
	db AGILITY
	db BITE
	db BULLET_PUNCH
	db CROSS_CHOP
	db CRUNCH
	db DETECT
	db HI_JUMP_KICK
	db IRON_DEFENSE
	db LOW_KICK
	db METEOR_MASH
	db LOCK_ON
	db -1 ; end

TimburrEggMoves:
	db COUNTER
	db DETECT
	db DRAIN_PUNCH
	db ENDURE
	db FORESIGHT
	db MACH_PUNCH
	db REVERSAL
	db -1 ; end

AronEggMoves:
	db BODY_SLAM
	db CURSE
	db IRON_HEAD
	db REVERSAL
	db SCREECH
	db -1 ; end

OnixEggMoves:
	db DEFENSE_CURL
	db FLAIL
	db ROLLOUT
	db -1 ; end

NosepassEggMoves:
	db DOUBLE_EDGE
	db ENDURE
	db MAGNITUDE
	db ROLLOUT
	db -1 ; end

MawileEggMoves:
	db ANCIENTPOWER
	db FIRE_FANG
	db ICE_FANG
	db POISON_FANG
	db SUCKER_PUNCH
	db THUNDER_FANG
	db -1 ; end

DwebbleEggMoves:
	db COUNTER
	db CURSE
	db ENDURE
	db IRON_DEFENSE
	db NIGHT_SLASH
	db -1 ; end

DrifloonEggMoves:
	db BODY_SLAM
	db DESTINY_BOND
	db DISABLE
	db HAZE
	db HYPNOSIS
	db -1 ; end

MedititeEggMoves:
	db BULLET_PUNCH
	db DRAIN_PUNCH
	db DYNAMICPUNCH
	db FIRE_PUNCH
	db FORESIGHT
	db ICE_PUNCH
	db PSYCHO_CUT
	db THUNDERPUNCH
	db -1 ; end

HoundourEggMoves:
	db COUNTER
	db DESTINY_BOND
	db FIRE_FANG
	db FIRE_SPIN
	db NASTY_PLOT
	db PURSUIT
	db REVERSAL
	db SUCKER_PUNCH
	db THUNDER_FANG
	db -1 ; end

YamaskEggMoves:
	db DISABLE
	db ENDURE
	db NASTY_PLOT
	db -1 ; end

GastlyEggMoves:
	db DISABLE
	db FIRE_PUNCH
	db HAZE
	db ICE_PUNCH
	db PERISH_SONG
	db SCARY_FACE
	db THUNDERPUNCH
	db -1 ; end

LitwickEggMoves:
	db ACID
	db ACID_ARMOR
	db ENDURE
	db HAZE
	db -1 ; end

CottoneeEggMoves:
	db ENCORE
	db SING
	db -1 ; end

PetililEggMoves:
	db CHARM
	db ENCORE
	db ENDURE
	db SWEET_SCENT
	db -1 ; end

YanmaEggMoves:
	db DOUBLE_EDGE
	db FAINT_ATTACK
	db LEECH_LIFE
	db PURSUIT
	db REVERSAL
	db SIGNAL_BEAM
	db WHIRLWIND
	db -1 ; end

ShroomishEggMoves:
	db CHARM
	db DRAIN_PUNCH
	db SEED_BOMB
	db -1 ; end

JoltikEggMoves:
	db CROSS_POISON
	db DISABLE
	db FAINT_ATTACK
	db PIN_MISSILE
	db POISON_STING
	db PURSUIT
	db -1 ; end

SpiritombEggMoves:
	db DESTINY_BOND
	db DISABLE
	db PAIN_SPLIT
	db SHADOW_SNEAK
	db SMOKESCREEN
	db -1 ; end

ZoruaEggMoves:
	db COUNTER
	db DARK_PULSE
	db DETECT
	db EXTRASENSORY
	db SUCKER_PUNCH
	db -1 ; end

TrubbishEggMoves:
	db CURSE
	db HAZE
	db ROLLOUT
	db SAND_ATTACK
	db SELFDESTRUCT
	db -1 ; end

GothitaEggMoves:
	db DARK_PULSE
	db MEAN_LOOK
	db MIRROR_COAT
	db -1 ; end

SolosisEggMoves:
	db ACID_ARMOR
	db CONFUSE_RAY
	db NIGHT_SHADE
	db -1 ; end

DeerlingEggMoves:
	db AGILITY
	db HEADBUTT
	db SYNTHESIS
	db -1 ; end

KarrablastEggMoves:
	db BUG_BITE
	db COUNTER
	db FAINT_ATTACK
	db MEGAHORN
	db PURSUIT
	db SCREECH
	db -1 ; end

ShelmetEggMoves:
	db DOUBLE_EDGE
	db ENCORE
	db ENDURE
	db LOCK_ON
	db MUD_SLAP
	db PURSUIT
	db -1 ; end

FerroseedEggMoves:
	db LEECH_SEED
	db SEED_BOMB
	db -1 ; end

BasculinEggMoves:
	db AGILITY
	db BUBBLEBEAM
	db MUD_SHOT
	db SWIFT
	db -1 ; end

RemoraidEggMoves:
	db AURORA_BEAM
	db FLAIL
	db HAZE
	db MUD_SHOT
	db SCREECH
	db SUPERSONIC
	db SWIFT
	db WATER_PULSE
	db -1 ; end

DarumakaEggMoves:
	db ENCORE
	db ENDURE
	db EXTRASENSORY
	db FLAME_WHEEL
	db FOCUS_ENERGY
	db HAMMER_ARM
	db TAKE_DOWN
	db -1 ; end

ElekidEggMoves:
	db BARRIER
	db CROSS_CHOP
	db DYNAMICPUNCH
	db FIRE_PUNCH
	db HAMMER_ARM
	db ICE_PUNCH
	db KARATE_CHOP
	db -1 ; end

MagbyEggMoves:
	db BARRIER
	db BELLY_DRUM
	db CROSS_CHOP
	db DYNAMICPUNCH
	db FLARE_BLITZ
	db FOCUS_ENERGY
	db IRON_TAIL
	db KARATE_CHOP
	db MACH_PUNCH
	db SCREECH
	db THUNDERPUNCH
	db -1 ; end

SandileEggMoves:
	db COUNTER
	db DOUBLE_EDGE
	db FIRE_FANG
	db FOCUS_ENERGY
	db MEAN_LOOK
	db PURSUIT
	db THUNDER_FANG
	db -1 ; end

SkorupiEggMoves:
	db AGILITY
	db CONFUSE_RAY
	db FAINT_ATTACK
	db IRON_TAIL
	db NIGHT_SLASH
	db PURSUIT
	db SAND_ATTACK
	db SCREECH
	db SLASH
	db WHIRLWIND
	db -1 ; end

TrapinchEggMoves:
	db BUG_BITE
	db EARTH_POWER
	db ENDURE
	db FLAIL
	db FOCUS_ENERGY
	db FURY_CUTTER
	db GUST
	db MUD_SHOT
	db QUICK_ATTACK
	db SIGNAL_BEAM
	db -1 ; end

ScraggyEggMoves:
	db AMNESIA
	db COUNTER
	db DETECT
	db DRAGON_DANCE
	db DRAIN_PUNCH
	db FAINT_ATTACK
	db FIRE_PUNCH
	db ICE_PUNCH
	db THUNDERPUNCH
	db ZEN_HEADBUTT
	db -1 ; end

NumelEggMoves:
	db ANCIENTPOWER
	db BODY_SLAM
	db DEFENSE_CURL
	db ENDURE
	db GROWTH
	db IRON_HEAD
	db ROLLOUT
	db SCARY_FACE
	db -1 ; end

MaractusEggMoves:
	db LEECH_SEED
	db SEED_BOMB
	db WOOD_HAMMER
	db -1 ; end

GligarEggMoves:
	db AGILITY
	db COUNTER
	db CROSS_POISON
	db DOUBLE_EDGE
	db METAL_CLAW
	db NIGHT_SLASH
	db WING_ATTACK
	db -1 ; end

SigilyphEggMoves:
	db ANCIENTPOWER
	db STEEL_WING
	db -1 ; end

TirtougaEggMoves:
	db BODY_SLAM
	db FLAIL
	db IRON_DEFENSE
	db ROCK_THROW
	db WATER_PULSE
	db -1 ; end

ArchenEggMoves:
	db BITE
	db DRAGON_PULSE
	db EARTH_POWER
	db STEEL_WING
	db -1 ; end

FrillishEggMoves:
	db ACID_ARMOR
	db CONFUSE_RAY
	db MIST
	db PAIN_SPLIT
	db RECOVER
	db -1 ; end

EmolgaEggMoves:
	db AIR_SLASH
	db CHARM
	db IRON_TAIL
	db SHOCK_WAVE
	db -1 ; end

VulpixEggMoves:
	db DISABLE
	db EXTRASENSORY
	db FLAIL
	db FAINT_ATTACK
	db FLARE_BLITZ
	db HEX
	db HYPNOSIS
	db -1 ; end

DucklettEggMoves:
	db AIR_CUTTER
	db AQUA_JET
	db GUST
	db STEEL_WING
	db -1 ; end

SwabluEggMoves:
	db AGILITY
	db HAZE
	db HYPER_VOICE
	db PLAY_ROUGH
	db PURSUIT
	db STEEL_WING
	db -1 ; end

AudinoEggMoves:
	db AMNESIA
	db DRAININGKISS
	db ENCORE
	db SWEET_KISS
	db -1 ; end

EeveeEggMoves:
	db CHARM
	db CURSE
	db DETECT
	db ENDURE
	db FLAIL
	db -1 ; end

CroagunkEggMoves:
	db BULLET_PUNCH
	db COUNTER
	db CROSS_CHOP
	db DRAIN_PUNCH
	db DYNAMICPUNCH
	db HEADBUTT
	db -1 ; end

HeatmorEggMoves:
	db BODY_SLAM
	db CURSE
	db FAINT_ATTACK
	db NIGHT_SLASH
	db PURSUIT
	db SUCKER_PUNCH
	db WRAP
	db -1 ; end

DurantEggMoves:
	db ENDURE
	db FAINT_ATTACK
	db SCREECH
	db THUNDER_FANG
	db -1 ; end

KoffingEggMoves:
	db CURSE
	db DESTINY_BOND
	db PAIN_SPLIT
	db PSYBEAM
	db SCREECH
	db -1 ; end

CorsolaEggMoves:
	db AMNESIA
	db BARRIER
	db CONFUSE_RAY
	db CURSE
	db MIST
	db SCREECH
	db WATER_PULSE
	db -1 ; end

PinsirEggMoves:
	db BUG_BITE
	db CLOSE_COMBAT
	db FAINT_ATTACK
	db FLAIL
	db FURY_ATTACK
	db QUICK_ATTACK
	db -1 ; end

HeracrossEggMoves:
	db DOUBLE_EDGE
	db FLAIL
	db HARDEN
	db MEGAHORN
	db PURSUIT
	db -1 ; end

TropiusEggMoves:
	db CURSE
	db DRAGON_DANCE
	db HEADBUTT
	db LEAF_BLADE
	db LEECH_SEED
	db SYNTHESIS
	db -1 ; end

PawniardEggMoves:
	db HEADBUTT
	db MEAN_LOOK
	db PSYCHO_CUT
	db PURSUIT
	db SUCKER_PUNCH
	db -1 ; end

SkarmoryEggMoves:
	db BRAVE_BIRD
	db CURSE
	db DRILL_PECK
	db ENDURE
	db PURSUIT
	db WHIRLWIND
	db -1 ; end

MantykeEggMoves:
	db AMNESIA
	db HAZE
	db HYDRO_PUMP
	db MIRROR_COAT
	db SIGNAL_BEAM
	db -1 ; end

AxewEggMoves:
	db COUNTER
	db DRAGON_PULSE
	db ENDURE
	db FOCUS_ENERGY
	db HARDEN
	db IRON_TAIL
	db NIGHT_SLASH
	db REVERSAL
	db -1 ; end

BouffalantEggMoves:
	db AMNESIA
	db HEADBUTT
	db IRON_HEAD
	db MUD_SHOT
	db MUD_SLAP
	db -1 ; end

CubchooEggMoves:
	db ENCORE
	db ICE_PUNCH
	db NIGHT_SLASH
	db PLAY_ROUGH
	db -1 ; end

VanilliteEggMoves:
	db ICE_SHARD
	db IRON_DEFENSE
	db POWDER_SNOW
	db WATER_PULSE
	db -1 ; end

SneaselEggMoves:
	db BITE
	db COUNTER
	db ICE_PUNCH
	db ICE_SHARD
	db ICICLE_CRASH
	db PURSUIT
	db -1 ; end

CorphishEggMoves:
	db ANCIENTPOWER
	db AQUA_JET
	db BODY_SLAM
	db DOUBLE_EDGE
	db DRAGON_DANCE
	db METAL_CLAW
	db -1 ; end

SwinubEggMoves:
	db ANCIENTPOWER
	db BITE
	db BODY_SLAM
	db CURSE
	db DOUBLE_EDGE
	db ICICLE_CRASH
	db MUD_SHOT
	db TAKE_DOWN
	db -1 ; end

LarvitarEggMoves:
	db ANCIENTPOWER
	db CURSE
	db DRAGON_DANCE
	db FOCUS_ENERGY
	db IRON_DEFENSE
	db IRON_HEAD
	db IRON_TAIL
	db OUTRAGE
	db PURSUIT
	db -1 ; end

LarvestaEggMoves:
	db ENDURE
	db FORESIGHT
	db HARDEN
	db STRING_SHOT
	db ZEN_HEADBUTT
	db -1 ; end

SphealEggMoves:
	db BELLY_DRUM
	db CURSE
	db ROLLOUT
	db SIGNAL_BEAM
	db WATER_PULSE
	db -1 ; end

SnoruntEggMoves:
	db DISABLE
	db HEX
	db ROLLOUT
	db -1 ; end

HorseaEggMoves:
	db AURORA_BEAM
	db DISABLE
	db DRAGONBREATH
	db DRAGON_RAGE
	db FLAIL
	db OUTRAGE
	db SIGNAL_BEAM
	db WATER_PULSE
	db -1 ; end

StunfiskEggMoves:
	db CURSE
	db EARTH_POWER
	db PAIN_SPLIT
	db SHOCK_WAVE
	db SPARK
	db -1 ; end

DratiniEggMoves:
	db AQUA_JET
	db DRAGONBREATH
	db DRAGON_DANCE
	db DRAGON_PULSE
	db EXTREMESPEED
	db HAZE
	db IRON_TAIL
	db MIST
	db SUPERSONIC
	db WATER_PULSE
	db -1 ; end

DeinoEggMoves:
	db DARK_PULSE
	db EARTH_POWER
	db FIRE_FANG
	db ICE_FANG
	db SCREECH
	db THUNDER_FANG
	db -1 ; end

NoEggMoves:
	db -1 ; end
