; $00-$16 are TX_* constants (see macros/scripts/text.asm)

; Control characters (see home/text.asm)

	charmap "<NULL>",    $00
	charmap "<PLAY_G>",  $14 ; "<PLAYER>くん" or "<PLAYER>ちゃん"; same as "<PLAYER>" in English
	charmap "<MOBILE>",  $15
	charmap "<CR>",      $16
	charmap "¯",         $1f ; soft linebreak
	charmap "<LF>",      $22
	;charmap "<POKE>",    $24 ; "<PO><KE>"
	charmap "%",         $25 ; soft linebreak in landmark names
	charmap "<RED>",     $38 ; wRedsName
	charmap "<GREEN>",   $39 ; wGreensName
	charmap "<ENEMY>",   $3f
	charmap "<MOM>",     $49 ; wMomsName
	charmap "<PKMN>",    $4a ; "<PK><MN>"
	charmap "<_CONT>",   $4b ; implements "<CONT>"
	charmap "<SCROLL>",  $4c
	charmap "<NEXT>",    $4e
	charmap "<LINE>",    $4f
	charmap "@",         $50 ; string terminator
	charmap "<PARA>",    $51
	charmap "<PLAYER>",  $52 ; wPlayerName
	charmap "<RIVAL>",   $53 ; wRivalName
	charmap "#",         $54 ; "POKé"
	charmap "<CONT>",    $55
	charmap "<……>",      $56 ; "……"
	charmap "<DONE>",    $57
	charmap "<PROMPT>",  $58
	charmap "<TARGET>",  $59
	charmap "<USER>",    $5a
	charmap "<PC>",      $5b ; "PC"
	charmap "<TM>",      $5c ; "TM"
	charmap "<TRAINER>", $5d ; "TRAINER"
	charmap "<ROCKET>",  $5e ; "ROCKET"
	charmap "<DEXEND>",  $5f



; Actual characters (from gfx/font/font_battle_extra.png)

	charmap "<LV>",      $6e

	charmap "<DO>",      $70 ; hiragana small do, unused
	charmap "◀",         $71
	charmap "『",         $72 ; Japanese opening quote, unused
	charmap "<ID>",      $73
	charmap "№",         $74

; Actual characters (from other graphics files)

	charmap " ",         $7f ; gfx/frames/space.png

	; needed for StatsScreen_PlaceShinyIcon and PrintPartyMonPage1
	charmap "⁂",         $3f ; gfx/stats/stats_tiles.png, tile 14

; Actual characters (from gfx/font/font.png)

	charmap "A",         $a0
	charmap "B",         $a1
	charmap "C",         $a2
	charmap "D",         $a3
	charmap "E",         $a4
	charmap "F",         $a5
	charmap "G",         $a6
	charmap "H",         $a7
	charmap "I",         $a8
	charmap "J",         $a9
	charmap "K",         $aa
	charmap "L",         $ab
	charmap "M",         $ac
	charmap "N",         $ad
	charmap "O",         $ae
	charmap "P",         $af
	charmap "Q",         $b0
	charmap "R",         $b1
	charmap "S",         $b2
	charmap "T",         $b3
	charmap "U",         $b4
	charmap "V",         $b5
	charmap "W",         $b6
	charmap "X",         $b7
	charmap "Y",         $b8
	charmap "Z",         $b9

	charmap "(",         $ba
	charmap ")",         $bb
	charmap ":",         $bc
	charmap "'s",        $bd
	charmap "'t",        $be
	charmap "'d",        $bf

	charmap "a",         $c0
	charmap "b",         $c1
	charmap "c",         $c2
	charmap "d",         $c3
	charmap "e",         $c4
	charmap "f",         $c5
	charmap "g",         $c6
	charmap "h",         $c7
	charmap "i",         $c8
	charmap "j",         $c9
	charmap "k",         $ca
	charmap "l",         $cb
	charmap "m",         $cc
	charmap "n",         $cd
	charmap "o",         $ce
	charmap "p",         $cf
	charmap "q",         $d0
	charmap "r",         $d1
	charmap "s",         $d2
	charmap "t",         $d3
	charmap "u",         $d4
	charmap "v",         $d5
	charmap "w",         $d6
	charmap "x",         $d7
	charmap "y",         $d8
	charmap "z",         $d9

	charmap "┌",         $da
	charmap "─",         $db
	charmap "┐",         $dc
	charmap "│",         $dd
	charmap "└",         $de
	charmap "┘",         $df

	charmap "'",         $e0
	charmap "<PK>",      $e1
	charmap "<MN>",      $e2
	charmap "-",         $e3
	charmap "■",         $e4
	charmap "▲",         $e5

	charmap "?",         $e6
	charmap "!",         $e7
	charmap ".",         $e8
	charmap "<DOT>",     $e8 ; decimal point; same as "."
	charmap "&",         $e9

	charmap "é",         $ea
	charmap "'l",        $eb
	;charmap "☎",        $eb
	charmap "▷",         $ec
	charmap "▶",         $ed
	charmap "▼",         $ee
	charmap "♂",         $ef
	charmap "¥",         $f0
	charmap "'m",        $f1
	;charmap "×",         $f1
	charmap "…",         $f2 ; ellipsis
	charmap "/",         $f3
	charmap ",",         $f4
	charmap "♀",         $f5

	charmap "0",         $f6
	charmap "1",         $f7
	charmap "2",         $f8
	charmap "3",         $f9
	charmap "4",         $fa
	charmap "5",         $fb
	charmap "6",         $fc
	charmap "7",         $fd
	charmap "8",         $fe
	charmap "9",         $ff

; Japanese control characters (see home/text.asm)

	charmap "<JP_18>",   $18 ; "ノ゛"? (ungrammatical)
	charmap "<NI>",      $1d ; "に　"
	charmap "<TTE>",     $1e ; "って"
	charmap "<WO>",      $1f ; "を　"
	charmap "<TA!>",     $22 ; "た！"
	charmap "<KOUGEKI>", $23 ; "こうげき"
	charmap "<WA>",      $24 ; "は　"
	charmap "<NO>",      $25 ; "の　"
	charmap "<ROUTE>",   $35 ; "ばん　どうろ"
	charmap "<WATASHI>", $36 ; "わたし"
	charmap "<KOKO_WA>", $37 ; "ここは"
	charmap "<GA>",      $4a ; "が　"

; Japanese kana, for those bits of text that were not translated to English

	charmap "ガ", $05
	charmap "ギ", $06
	charmap "グ", $07
	charmap "ゲ", $08
	charmap "ゴ", $09
	charmap "ザ", $0a
	charmap "ジ", $0b
	charmap "ズ", $0c
	charmap "ゼ", $0d
	charmap "ゾ", $0e
	charmap "ダ", $0f
	charmap "ヂ", $10
	charmap "ヅ", $11
	charmap "デ", $12
	charmap "ド", $13

	charmap "バ", $19
	charmap "ビ", $1a
	charmap "ブ", $1b
	charmap "ボ", $1c

	charmap "が", $26
	charmap "ぎ", $27
	charmap "ぐ", $28
	charmap "げ", $29
	charmap "ご", $2a
	charmap "ざ", $2b
	charmap "じ", $2c
	charmap "ず", $2d
	charmap "ぜ", $2e
	charmap "ぞ", $2f
	charmap "だ", $30
	charmap "ぢ", $31
	charmap "づ", $32
	charmap "で", $33
	charmap "ど", $34

	charmap "ば", $3a
	charmap "び", $3b
	charmap "ぶ", $3c
	charmap "べ", $3d
	charmap "ぼ", $3e

	charmap "パ", $40
	charmap "ピ", $41
	charmap "プ", $42
	charmap "ポ", $43
	charmap "ぱ", $44
	charmap "ぴ", $45
	charmap "ぷ", $46
	charmap "ぺ", $47
	charmap "ぽ", $48

	charmap "「", $70
	charmap "」", $71
	charmap "』", $73
	charmap "⋯", $75

	charmap "　", $7f

	charmap "ア", $80
	charmap "イ", $81
	charmap "ウ", $82
	charmap "エ", $83
	charmap "オ", $84
	charmap "カ", $85
	charmap "キ", $86
	charmap "ク", $87
	charmap "ケ", $88
	charmap "コ", $89
	charmap "サ", $8a
	charmap "シ", $8b
	charmap "ス", $8c
	charmap "セ", $8d
	charmap "ソ", $8e
	charmap "タ", $8f
	charmap "チ", $90
	charmap "ツ", $91
	charmap "テ", $92
	charmap "ト", $93
	charmap "ナ", $94
	charmap "ニ", $95
	charmap "ヌ", $96
	charmap "ネ", $97
	charmap "ノ", $98
	charmap "ハ", $99
	charmap "ヒ", $9a
	charmap "フ", $9b
	charmap "ホ", $9c
	charmap "マ", $9d
	charmap "ミ", $9e
	charmap "ム", $9f
	charmap "メ", $a0
	charmap "モ", $a1
	charmap "ヤ", $a2
	charmap "ユ", $a3
	charmap "ヨ", $a4
	charmap "ラ", $a5
	charmap "ル", $a6
	charmap "レ", $a7
	charmap "ロ", $a8
	charmap "ワ", $a9
	charmap "ヲ", $aa
	charmap "ン", $ab
	charmap "ッ", $ac
	charmap "ャ", $ad
	charmap "ュ", $ae
	charmap "ョ", $af
	charmap "ィ", $b0

	charmap "あ", $b1
	charmap "い", $b2
	charmap "う", $b3
	charmap "え", $b4
	charmap "お", $b5
	charmap "か", $b6
	charmap "き", $b7
	charmap "く", $b8
	charmap "け", $b9
	charmap "こ", $ba
	charmap "さ", $bb
	charmap "し", $bc
	charmap "す", $bd
	charmap "せ", $be
	charmap "そ", $bf
	charmap "た", $c0
	charmap "ち", $c1
	charmap "つ", $c2
	charmap "て", $c3
	charmap "と", $c4
	charmap "な", $c5
	charmap "に", $c6
	charmap "ぬ", $c7
	charmap "ね", $c8
	charmap "の", $c9
	charmap "は", $ca
	charmap "ひ", $cb
	charmap "ふ", $cc
	charmap "へ", $cd
	charmap "ほ", $ce
	charmap "ま", $cf
	charmap "み", $d0
	charmap "む", $d1
	charmap "め", $d2
	charmap "も", $d3
	charmap "や", $d4
	charmap "ゆ", $d5
	charmap "よ", $d6
	charmap "ら", $d7
	charmap "り", $d8
	charmap "る", $d9
	charmap "れ", $da
	charmap "ろ", $db
	charmap "わ", $dc
	charmap "を", $dd
	charmap "ん", $de
	charmap "っ", $df
	charmap "ゃ", $e0
	charmap "ゅ", $e1
	charmap "ょ", $e2

	charmap "ー", $e3
	charmap "ﾟ", $e4
	charmap "ﾞ", $e5

	charmap "？", $e6
	charmap "！", $e7
	charmap "。", $e8

	charmap "ァ", $e9
	charmap "ゥ", $ea
	charmap "ェ", $eb

	charmap "円", $ec;$f0

	charmap "．", $f2
	charmap "／", $f3

	charmap "ォ", $f4

	charmap "０", $f6
	charmap "１", $f7
	charmap "２", $f8
	charmap "３", $f9
	charmap "４", $fa
	charmap "５", $fb
	charmap "６", $fc
	charmap "７", $fd
	charmap "８", $fe
	charmap "９", $ff
