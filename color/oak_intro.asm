; Helper functions for oak intro

GetNidorinoPalID:
	call ClearScreen
IF GEN_2_GRAPHICS
	ld a, PAL_NIDORINO
ELSE
	ld a, PAL_PURPLEMON
ENDC
	jr GotPalID

GetRedPalID:
	call ClearScreen
IF GEN_2_GRAPHICS
	ld a, PAL_HERO
ELSE
	ld a, PAL_REDMON
ENDC
	jr GotPalID

GetRivalPalID: ; unused
	call ClearScreen
IF GEN_2_GRAPHICS
	ld a, PAL_GARY1
ELSE
	ld a, PAL_MEWMON
ENDC
	jr GotPalID
	
GetOakPalID:
	call ClearScreen
IF GEN_2_GRAPHICS
	ld a, PAL_OAK
ELSE
	ld a, PAL_PURPLEMON
ENDC
	jr GotPalID

GetIntroMonPalID:
	call ClearScreen
IF GEN_2_GRAPHICS
	ld a, PAL_PIKACHU
ELSE
	ld a, PAL_PURPLEMON
ENDC
	jr GotPalID
	
GetLeafPalID:
	call ClearScreen
IF GEN_2_GRAPHICS
	ld a, PAL_HEROINE
ELSE
	ld a, PAL_REDMON
ENDC
	jr GotPalID

GetRivalAPalID:
	call ClearScreen
IF GEN_2_GRAPHICS
	ld a, PAL_RIVALA
ELSE
	ld a, PAL_REDMON
ENDC
	jr GotPalID

GetRivalBPalID:
	call ClearScreen
IF GEN_2_GRAPHICS
	ld a, PAL_RIVALB
ELSE
	ld a, PAL_REDMON
ENDC
	jr GotPalID
	
GotPalID:
	ld e,0
	ld d,a

	ld a,2
	ld [rSVBK],a
	CALL_INDIRECT LoadSGBPalette
	xor a
	ld [rSVBK],a
	ret

