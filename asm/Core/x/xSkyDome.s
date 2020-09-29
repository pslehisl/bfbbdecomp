.include "macros.inc"

.section .text  # 0x8010EED8 - 0x8010F150

lbl_8010EED8:
/* 8010EED8 0010BCD8  4E 80 00 20 */	blr 

.global xSkyDome_Setup__Fv
xSkyDome_Setup__Fv:
/* 8010EEDC 0010BCDC  38 00 00 00 */	li r0, 0
/* 8010EEE0 0010BCE0  90 0D 94 E8 */	stw r0, lbl_803CBDE8-_SDA_BASE_(r13)
/* 8010EEE4 0010BCE4  4E 80 00 20 */	blr 

.global xSkyDome_AddEntity__FP4xEntii
xSkyDome_AddEntity__FP4xEntii:
/* 8010EEE8 0010BCE8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8010EEEC 0010BCEC  7C 08 02 A6 */	mflr r0
/* 8010EEF0 0010BCF0  3C C0 80 31 */	lis r6, lbl_80313728@ha
/* 8010EEF4 0010BCF4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8010EEF8 0010BCF8  38 C6 37 28 */	addi r6, r6, lbl_80313728@l
/* 8010EEFC 0010BCFC  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 8010EF00 0010BD00  7C 7D 1B 78 */	mr r29, r3
/* 8010EF04 0010BD04  7C 9E 23 78 */	mr r30, r4
/* 8010EF08 0010BD08  7C BF 2B 78 */	mr r31, r5
/* 8010EF0C 0010BD0C  7C C3 33 78 */	mr r3, r6
/* 8010EF10 0010BD10  38 80 00 00 */	li r4, 0
/* 8010EF14 0010BD14  80 ED 94 E8 */	lwz r7, lbl_803CBDE8-_SDA_BASE_(r13)
/* 8010EF18 0010BD18  48 00 00 18 */	b lbl_8010EF30
lbl_8010EF1C:
/* 8010EF1C 0010BD1C  80 03 00 00 */	lwz r0, 0(r3)
/* 8010EF20 0010BD20  7C 00 E8 40 */	cmplw r0, r29
/* 8010EF24 0010BD24  41 82 00 E0 */	beq lbl_8010F004
/* 8010EF28 0010BD28  38 63 00 0C */	addi r3, r3, 0xc
/* 8010EF2C 0010BD2C  38 84 00 01 */	addi r4, r4, 1
lbl_8010EF30:
/* 8010EF30 0010BD30  7C 04 38 00 */	cmpw r4, r7
/* 8010EF34 0010BD34  41 81 FF E8 */	bgt lbl_8010EF1C
/* 8010EF38 0010BD38  3B 40 00 00 */	li r26, 0
/* 8010EF3C 0010BD3C  7C E9 03 A6 */	mtctr r7
/* 8010EF40 0010BD40  2C 07 00 00 */	cmpwi r7, 0
/* 8010EF44 0010BD44  40 81 00 1C */	ble lbl_8010EF60
lbl_8010EF48:
/* 8010EF48 0010BD48  80 06 00 04 */	lwz r0, 4(r6)
/* 8010EF4C 0010BD4C  7C 1E 00 00 */	cmpw r30, r0
/* 8010EF50 0010BD50  41 80 00 10 */	blt lbl_8010EF60
/* 8010EF54 0010BD54  38 C6 00 0C */	addi r6, r6, 0xc
/* 8010EF58 0010BD58  3B 5A 00 01 */	addi r26, r26, 1
/* 8010EF5C 0010BD5C  42 00 FF EC */	bdnz lbl_8010EF48
lbl_8010EF60:
/* 8010EF60 0010BD60  3B 27 FF FF */	addi r25, r7, -1
/* 8010EF64 0010BD64  3C 60 80 31 */	lis r3, lbl_80313728@ha
/* 8010EF68 0010BD68  1C 19 00 0C */	mulli r0, r25, 0xc
/* 8010EF6C 0010BD6C  3B 83 37 28 */	addi r28, r3, lbl_80313728@l
/* 8010EF70 0010BD70  7F 7C 02 14 */	add r27, r28, r0
/* 8010EF74 0010BD74  48 00 00 20 */	b lbl_8010EF94
lbl_8010EF78:
/* 8010EF78 0010BD78  38 19 00 01 */	addi r0, r25, 1
/* 8010EF7C 0010BD7C  7F 64 DB 78 */	mr r4, r27
/* 8010EF80 0010BD80  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8010EF84 0010BD84  7C 7C 02 14 */	add r3, r28, r0
/* 8010EF88 0010BD88  48 00 00 91 */	bl __as__11SkyDomeInfoFRC11SkyDomeInfo
/* 8010EF8C 0010BD8C  3B 7B FF F4 */	addi r27, r27, -12
/* 8010EF90 0010BD90  3B 39 FF FF */	addi r25, r25, -1
lbl_8010EF94:
/* 8010EF94 0010BD94  7C 19 D0 00 */	cmpw r25, r26
/* 8010EF98 0010BD98  40 80 FF E0 */	bge lbl_8010EF78
/* 8010EF9C 0010BD9C  1C 1A 00 0C */	mulli r0, r26, 0xc
/* 8010EFA0 0010BDA0  3C 80 80 31 */	lis r4, lbl_80313728@ha
/* 8010EFA4 0010BDA4  3C 60 80 11 */	lis r3, lbl_8010EED8@ha
/* 8010EFA8 0010BDA8  38 84 37 28 */	addi r4, r4, lbl_80313728@l
/* 8010EFAC 0010BDAC  7F A4 01 2E */	stwx r29, r4, r0
/* 8010EFB0 0010BDB0  7C A4 02 14 */	add r5, r4, r0
/* 8010EFB4 0010BDB4  38 03 EE D8 */	addi r0, r3, lbl_8010EED8@l
/* 8010EFB8 0010BDB8  7F A3 EB 78 */	mr r3, r29
/* 8010EFBC 0010BDBC  93 C5 00 04 */	stw r30, 4(r5)
/* 8010EFC0 0010BDC0  38 80 00 54 */	li r4, 0x54
/* 8010EFC4 0010BDC4  93 E5 00 08 */	stw r31, 8(r5)
/* 8010EFC8 0010BDC8  80 AD 94 E8 */	lwz r5, lbl_803CBDE8-_SDA_BASE_(r13)
/* 8010EFCC 0010BDCC  38 A5 00 01 */	addi r5, r5, 1
/* 8010EFD0 0010BDD0  90 AD 94 E8 */	stw r5, lbl_803CBDE8-_SDA_BASE_(r13)
/* 8010EFD4 0010BDD4  90 1D 00 44 */	stw r0, 0x44(r29)
/* 8010EFD8 0010BDD8  80 BD 00 24 */	lwz r5, 0x24(r29)
/* 8010EFDC 0010BDDC  A0 05 00 44 */	lhz r0, 0x44(r5)
/* 8010EFE0 0010BDE0  54 00 04 3C */	rlwinm r0, r0, 0, 0x10, 0x1e
/* 8010EFE4 0010BDE4  B0 05 00 44 */	sth r0, 0x44(r5)
/* 8010EFE8 0010BDE8  A0 1D 00 06 */	lhz r0, 6(r29)
/* 8010EFEC 0010BDEC  70 00 FF EF */	andi. r0, r0, 0xffef
/* 8010EFF0 0010BDF0  B0 1D 00 06 */	sth r0, 6(r29)
/* 8010EFF4 0010BDF4  4B F1 05 FD */	bl zEntEvent__FP5xBaseUi
/* 8010EFF8 0010BDF8  7F A3 EB 78 */	mr r3, r29
/* 8010EFFC 0010BDFC  38 80 02 08 */	li r4, 0x208
/* 8010F000 0010BE00  4B F1 05 F1 */	bl zEntEvent__FP5xBaseUi
lbl_8010F004:
/* 8010F004 0010BE04  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 8010F008 0010BE08  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8010F00C 0010BE0C  7C 08 03 A6 */	mtlr r0
/* 8010F010 0010BE10  38 21 00 30 */	addi r1, r1, 0x30
/* 8010F014 0010BE14  4E 80 00 20 */	blr 

.global __as__11SkyDomeInfoFRC11SkyDomeInfo
__as__11SkyDomeInfoFRC11SkyDomeInfo:
/* 8010F018 0010BE18  80 04 00 00 */	lwz r0, 0(r4)
/* 8010F01C 0010BE1C  80 A4 00 04 */	lwz r5, 4(r4)
/* 8010F020 0010BE20  90 03 00 00 */	stw r0, 0(r3)
/* 8010F024 0010BE24  80 04 00 08 */	lwz r0, 8(r4)
/* 8010F028 0010BE28  90 A3 00 04 */	stw r5, 4(r3)
/* 8010F02C 0010BE2C  90 03 00 08 */	stw r0, 8(r3)
/* 8010F030 0010BE30  4E 80 00 20 */	blr 

.global xSkyDome_Render__Fv
xSkyDome_Render__Fv:
/* 8010F034 0010BE34  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8010F038 0010BE38  7C 08 02 A6 */	mflr r0
/* 8010F03C 0010BE3C  3C 60 80 31 */	lis r3, lbl_80313728@ha
/* 8010F040 0010BE40  90 01 00 34 */	stw r0, 0x34(r1)
/* 8010F044 0010BE44  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 8010F048 0010BE48  3B A3 37 28 */	addi r29, r3, lbl_80313728@l
/* 8010F04C 0010BE4C  3C 60 80 11 */	lis r3, lbl_8010EED8@ha
/* 8010F050 0010BE50  3B 80 00 00 */	li r28, 0
/* 8010F054 0010BE54  3B E3 EE D8 */	addi r31, r3, lbl_8010EED8@l
/* 8010F058 0010BE58  80 8D 9F 7C */	lwz r4, RwEngineInstance-_SDA_BASE_(r13)
/* 8010F05C 0010BE5C  80 84 00 00 */	lwz r4, 0(r4)
/* 8010F060 0010BE60  83 C4 00 04 */	lwz r30, 4(r4)
/* 8010F064 0010BE64  48 00 00 CC */	b lbl_8010F130
lbl_8010F068:
/* 8010F068 0010BE68  83 7D 00 00 */	lwz r27, 0(r29)
/* 8010F06C 0010BE6C  93 FB 00 44 */	stw r31, 0x44(r27)
/* 8010F070 0010BE70  80 7B 00 24 */	lwz r3, 0x24(r27)
/* 8010F074 0010BE74  A0 03 00 44 */	lhz r0, 0x44(r3)
/* 8010F078 0010BE78  54 00 04 3C */	rlwinm r0, r0, 0, 0x10, 0x1e
/* 8010F07C 0010BE7C  B0 03 00 44 */	sth r0, 0x44(r3)
/* 8010F080 0010BE80  80 1B 00 24 */	lwz r0, 0x24(r27)
/* 8010F084 0010BE84  28 00 00 00 */	cmplwi r0, 0
/* 8010F088 0010BE88  41 82 00 A0 */	beq lbl_8010F128
/* 8010F08C 0010BE8C  7F 63 DB 78 */	mr r3, r27
/* 8010F090 0010BE90  4B EF F5 A9 */	bl xEntIsVisible__FPC4xEnt
/* 8010F094 0010BE94  28 03 00 00 */	cmplwi r3, 0
/* 8010F098 0010BE98  41 82 00 90 */	beq lbl_8010F128
/* 8010F09C 0010BE9C  80 9B 00 24 */	lwz r4, 0x24(r27)
/* 8010F0A0 0010BEA0  38 61 00 08 */	addi r3, r1, 8
/* 8010F0A4 0010BEA4  80 84 00 4C */	lwz r4, 0x4c(r4)
/* 8010F0A8 0010BEA8  38 84 00 30 */	addi r4, r4, 0x30
/* 8010F0AC 0010BEAC  4B F0 11 7D */	bl __as__5RwV3dFRC5RwV3d
/* 8010F0B0 0010BEB0  80 7B 00 24 */	lwz r3, 0x24(r27)
/* 8010F0B4 0010BEB4  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8010F0B8 0010BEB8  80 63 00 4C */	lwz r3, 0x4c(r3)
/* 8010F0BC 0010BEBC  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 8010F0C0 0010BEC0  80 7B 00 24 */	lwz r3, 0x24(r27)
/* 8010F0C4 0010BEC4  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 8010F0C8 0010BEC8  80 63 00 4C */	lwz r3, 0x4c(r3)
/* 8010F0CC 0010BECC  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 8010F0D0 0010BED0  80 1D 00 08 */	lwz r0, 8(r29)
/* 8010F0D4 0010BED4  2C 00 00 00 */	cmpwi r0, 0
/* 8010F0D8 0010BED8  41 82 00 14 */	beq lbl_8010F0EC
/* 8010F0DC 0010BEDC  80 7B 00 24 */	lwz r3, 0x24(r27)
/* 8010F0E0 0010BEE0  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 8010F0E4 0010BEE4  80 63 00 4C */	lwz r3, 0x4c(r3)
/* 8010F0E8 0010BEE8  D0 03 00 34 */	stfs f0, 0x34(r3)
lbl_8010F0EC:
/* 8010F0EC 0010BEEC  80 9B 00 24 */	lwz r4, 0x24(r27)
/* 8010F0F0 0010BEF0  80 64 00 10 */	lwz r3, 0x10(r4)
/* 8010F0F4 0010BEF4  80 84 00 4C */	lwz r4, 0x4c(r4)
/* 8010F0F8 0010BEF8  4B FB 90 E5 */	bl iModelCull__FP8RpAtomicP11RwMatrixTag
/* 8010F0FC 0010BEFC  2C 03 00 00 */	cmpwi r3, 0
/* 8010F100 0010BF00  40 82 00 14 */	bne lbl_8010F114
/* 8010F104 0010BF04  80 9B 00 24 */	lwz r4, 0x24(r27)
/* 8010F108 0010BF08  80 64 00 10 */	lwz r3, 0x10(r4)
/* 8010F10C 0010BF0C  80 84 00 4C */	lwz r4, 0x4c(r4)
/* 8010F110 0010BF10  4B FB 8F E1 */	bl iModelRender__FP8RpAtomicP11RwMatrixTag
lbl_8010F114:
/* 8010F114 0010BF14  80 7B 00 24 */	lwz r3, 0x24(r27)
/* 8010F118 0010BF18  38 81 00 08 */	addi r4, r1, 8
/* 8010F11C 0010BF1C  80 63 00 4C */	lwz r3, 0x4c(r3)
/* 8010F120 0010BF20  38 63 00 30 */	addi r3, r3, 0x30
/* 8010F124 0010BF24  4B F0 11 05 */	bl __as__5RwV3dFRC5RwV3d
lbl_8010F128:
/* 8010F128 0010BF28  3B BD 00 0C */	addi r29, r29, 0xc
/* 8010F12C 0010BF2C  3B 9C 00 01 */	addi r28, r28, 1
lbl_8010F130:
/* 8010F130 0010BF30  80 0D 94 E8 */	lwz r0, lbl_803CBDE8-_SDA_BASE_(r13)
/* 8010F134 0010BF34  7C 1C 00 00 */	cmpw r28, r0
/* 8010F138 0010BF38  41 80 FF 30 */	blt lbl_8010F068
/* 8010F13C 0010BF3C  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 8010F140 0010BF40  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8010F144 0010BF44  7C 08 03 A6 */	mtlr r0
/* 8010F148 0010BF48  38 21 00 30 */	addi r1, r1, 0x30
/* 8010F14C 0010BF4C  4E 80 00 20 */	blr 

.section .bss
lbl_80313728:
	.skip 0x60
