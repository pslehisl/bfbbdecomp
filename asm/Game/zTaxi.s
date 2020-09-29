.include "macros.inc"

.section .text  # 0x80172034 - 0x80172664

.global zTaxi_Init__FR5xBaseR9xDynAssetUl
zTaxi_Init__FR5xBaseR9xDynAssetUl:
/* 80172034 0016EE34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80172038 0016EE38  7C 08 02 A6 */	mflr r0
/* 8017203C 0016EE3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80172040 0016EE40  48 00 00 15 */	bl zTaxi_Init__FP5zTaxiP10taxi_asset
/* 80172044 0016EE44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80172048 0016EE48  7C 08 03 A6 */	mtlr r0
/* 8017204C 0016EE4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80172050 0016EE50  4E 80 00 20 */	blr 

.global zTaxi_Init__FP5zTaxiP10taxi_asset
zTaxi_Init__FP5zTaxiP10taxi_asset:
/* 80172054 0016EE54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80172058 0016EE58  7C 08 02 A6 */	mflr r0
/* 8017205C 0016EE5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80172060 0016EE60  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80172064 0016EE64  7C 7F 1B 78 */	mr r31, r3
/* 80172068 0016EE68  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8017206C 0016EE6C  7C 9E 23 78 */	mr r30, r4
/* 80172070 0016EE70  4B E9 73 91 */	bl xBaseInit__FP5xBaseP10xBaseAsset
/* 80172074 0016EE74  88 0D 97 6C */	lbz r0, lbl_803CC06C-_SDA_BASE_(r13)
/* 80172078 0016EE78  7C 00 07 75 */	extsb. r0, r0
/* 8017207C 0016EE7C  40 82 00 18 */	bne lbl_80172094
/* 80172080 0016EE80  3C 60 80 33 */	lis r3, lbl_8032A568@ha
/* 80172084 0016EE84  38 63 A5 68 */	addi r3, r3, lbl_8032A568@l
/* 80172088 0016EE88  48 00 00 A1 */	bl __ct__6taxiCBFv
/* 8017208C 0016EE8C  38 00 00 01 */	li r0, 1
/* 80172090 0016EE90  98 0D 97 6C */	stb r0, lbl_803CC06C-_SDA_BASE_(r13)
lbl_80172094:
/* 80172094 0016EE94  3C 80 80 33 */	lis r4, lbl_8032A568@ha
/* 80172098 0016EE98  3C 60 80 17 */	lis r3, lbl_801725DC@ha
/* 8017209C 0016EE9C  38 04 A5 68 */	addi r0, r4, lbl_8032A568@l
/* 801720A0 0016EEA0  90 0D 97 68 */	stw r0, lbl_803CC068-_SDA_BASE_(r13)
/* 801720A4 0016EEA4  38 03 25 DC */	addi r0, r3, lbl_801725DC@l
/* 801720A8 0016EEA8  93 DF 00 10 */	stw r30, 0x10(r31)
/* 801720AC 0016EEAC  90 1F 00 0C */	stw r0, 0xc(r31)
/* 801720B0 0016EEB0  88 1F 00 05 */	lbz r0, 5(r31)
/* 801720B4 0016EEB4  28 00 00 00 */	cmplwi r0, 0
/* 801720B8 0016EEB8  41 82 00 10 */	beq lbl_801720C8
/* 801720BC 0016EEBC  38 1E 00 30 */	addi r0, r30, 0x30
/* 801720C0 0016EEC0  90 1F 00 08 */	stw r0, 8(r31)
/* 801720C4 0016EEC4  48 00 00 0C */	b lbl_801720D0
lbl_801720C8:
/* 801720C8 0016EEC8  38 00 00 00 */	li r0, 0
/* 801720CC 0016EECC  90 1F 00 08 */	stw r0, 8(r31)
lbl_801720D0:
/* 801720D0 0016EED0  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 801720D4 0016EED4  38 81 00 08 */	addi r4, r1, 8
/* 801720D8 0016EED8  4B ED 96 35 */	bl xSTFindAsset__FUiPUi
/* 801720DC 0016EEDC  28 03 00 00 */	cmplwi r3, 0
/* 801720E0 0016EEE0  41 82 00 30 */	beq lbl_80172110
/* 801720E4 0016EEE4  80 01 00 08 */	lwz r0, 8(r1)
/* 801720E8 0016EEE8  28 00 00 0C */	cmplwi r0, 0xc
/* 801720EC 0016EEEC  40 82 00 24 */	bne lbl_80172110
/* 801720F0 0016EEF0  7C 64 1B 78 */	mr r4, r3
/* 801720F4 0016EEF4  38 7F 00 18 */	addi r3, r31, 0x18
/* 801720F8 0016EEF8  4B ED C3 E5 */	bl xVec3Copy__FP5xVec3PC5xVec3
/* 801720FC 0016EEFC  38 00 00 00 */	li r0, 0
/* 80172100 0016EF00  90 1F 00 28 */	stw r0, 0x28(r31)
/* 80172104 0016EF04  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80172108 0016EF08  C0 02 AC 90 */	lfs f0, lbl_803CF610-_SDA2_BASE_(r2)
/* 8017210C 0016EF0C  D0 1F 00 34 */	stfs f0, 0x34(r31)
lbl_80172110:
/* 80172110 0016EF10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80172114 0016EF14  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80172118 0016EF18  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8017211C 0016EF1C  7C 08 03 A6 */	mtlr r0
/* 80172120 0016EF20  38 21 00 20 */	addi r1, r1, 0x20
/* 80172124 0016EF24  4E 80 00 20 */	blr 

.global __ct__6taxiCBFv
__ct__6taxiCBFv:
/* 80172128 0016EF28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8017212C 0016EF2C  7C 08 02 A6 */	mflr r0
/* 80172130 0016EF30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80172134 0016EF34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80172138 0016EF38  7C 7F 1B 78 */	mr r31, r3
/* 8017213C 0016EF3C  4B FA A5 2D */	bl __ct__Q28ztalkbox8callbackFv
/* 80172140 0016EF40  3C 80 80 2A */	lis r4, __vt__6taxiCB@ha
/* 80172144 0016EF44  7F E3 FB 78 */	mr r3, r31
/* 80172148 0016EF48  38 04 B4 48 */	addi r0, r4, __vt__6taxiCB@l
/* 8017214C 0016EF4C  90 1F 00 00 */	stw r0, 0(r31)
/* 80172150 0016EF50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80172154 0016EF54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80172158 0016EF58  7C 08 03 A6 */	mtlr r0
/* 8017215C 0016EF5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80172160 0016EF60  4E 80 00 20 */	blr 

.global zTaxi_Setup__FP5zTaxi
zTaxi_Setup__FP5zTaxi:
/* 80172164 0016EF64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80172168 0016EF68  7C 08 02 A6 */	mflr r0
/* 8017216C 0016EF6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80172170 0016EF70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80172174 0016EF74  7C 7F 1B 78 */	mr r31, r3
/* 80172178 0016EF78  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8017217C 0016EF7C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80172180 0016EF80  4B F4 28 BD */	bl zSceneFindObject__FUi
/* 80172184 0016EF84  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80172188 0016EF88  80 63 00 18 */	lwz r3, 0x18(r3)
/* 8017218C 0016EF8C  4B F4 28 B1 */	bl zSceneFindObject__FUi
/* 80172190 0016EF90  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80172194 0016EF94  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80172198 0016EF98  4B F4 28 A5 */	bl zSceneFindObject__FUi
/* 8017219C 0016EF9C  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 801721A0 0016EFA0  38 80 00 00 */	li r4, 0
/* 801721A4 0016EFA4  80 63 00 20 */	lwz r3, 0x20(r3)
/* 801721A8 0016EFA8  4B ED 95 65 */	bl xSTFindAsset__FUiPUi
/* 801721AC 0016EFAC  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 801721B0 0016EFB0  80 63 00 24 */	lwz r3, 0x24(r3)
/* 801721B4 0016EFB4  4B F4 28 89 */	bl zSceneFindObject__FUi
/* 801721B8 0016EFB8  90 7F 00 14 */	stw r3, 0x14(r31)
/* 801721BC 0016EFBC  C0 02 AC 94 */	lfs f0, lbl_803CF614-_SDA2_BASE_(r2)
/* 801721C0 0016EFC0  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 801721C4 0016EFC4  A0 1F 00 06 */	lhz r0, 6(r31)
/* 801721C8 0016EFC8  60 00 00 02 */	ori r0, r0, 2
/* 801721CC 0016EFCC  B0 1F 00 06 */	sth r0, 6(r31)
/* 801721D0 0016EFD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801721D4 0016EFD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801721D8 0016EFD8  7C 08 03 A6 */	mtlr r0
/* 801721DC 0016EFDC  38 21 00 10 */	addi r1, r1, 0x10
/* 801721E0 0016EFE0  4E 80 00 20 */	blr 

.global zTaxi_Update__FP5xBaseP6xScenef
zTaxi_Update__FP5xBaseP6xScenef:
/* 801721E4 0016EFE4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801721E8 0016EFE8  7C 08 02 A6 */	mflr r0
/* 801721EC 0016EFEC  90 01 00 64 */	stw r0, 0x64(r1)
/* 801721F0 0016EFF0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 801721F4 0016EFF4  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 801721F8 0016EFF8  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 801721FC 0016EFFC  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80172200 0016F000  FF E0 08 90 */	fmr f31, f1
/* 80172204 0016F004  7C 7F 1B 78 */	mr r31, r3
/* 80172208 0016F008  38 61 00 08 */	addi r3, r1, 8
/* 8017220C 0016F00C  38 9F 00 18 */	addi r4, r31, 0x18
/* 80172210 0016F010  4B ED C2 CD */	bl xVec3Copy__FP5xVec3PC5xVec3
/* 80172214 0016F014  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80172218 0016F018  3C 60 80 3C */	lis r3, globals@ha
/* 8017221C 0016F01C  38 83 05 58 */	addi r4, r3, globals@l
/* 80172220 0016F020  38 61 00 08 */	addi r3, r1, 8
/* 80172224 0016F024  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80172228 0016F028  38 A1 00 1C */	addi r5, r1, 0x1c
/* 8017222C 0016F02C  80 84 07 04 */	lwz r4, 0x704(r4)
/* 80172230 0016F030  C0 02 AC 98 */	lfs f0, lbl_803CF618-_SDA2_BASE_(r2)
/* 80172234 0016F034  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80172238 0016F038  80 84 00 4C */	lwz r4, 0x4c(r4)
/* 8017223C 0016F03C  38 84 00 30 */	addi r4, r4, 0x30
/* 80172240 0016F040  4B F5 30 D9 */	bl iCylinderIsectVec__FPC9xCylinderPC5xVec3P6xIsect
/* 80172244 0016F044  C0 22 AC 94 */	lfs f1, lbl_803CF614-_SDA2_BASE_(r2)
/* 80172248 0016F048  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8017224C 0016F04C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80172250 0016F050  40 82 00 3C */	bne lbl_8017228C
/* 80172254 0016F054  7F E3 FB 78 */	mr r3, r31
/* 80172258 0016F058  4B E9 72 E1 */	bl xBaseIsEnabled__FPC5xBase
/* 8017225C 0016F05C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80172260 0016F060  41 82 00 2C */	beq lbl_8017228C
/* 80172264 0016F064  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 80172268 0016F068  28 00 00 00 */	cmplwi r0, 0
/* 8017226C 0016F06C  40 82 00 30 */	bne lbl_8017229C
/* 80172270 0016F070  38 60 00 03 */	li r3, 3
/* 80172274 0016F074  38 00 00 01 */	li r0, 1
/* 80172278 0016F078  90 6D 84 B0 */	stw r3, lbl_803CADB0-_SDA_BASE_(r13)
/* 8017227C 0016F07C  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80172280 0016F080  C0 02 AC 9C */	lfs f0, lbl_803CF61C-_SDA2_BASE_(r2)
/* 80172284 0016F084  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 80172288 0016F088  48 00 00 14 */	b lbl_8017229C
lbl_8017228C:
/* 8017228C 0016F08C  38 00 00 00 */	li r0, 0
/* 80172290 0016F090  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80172294 0016F094  C0 02 AC 90 */	lfs f0, lbl_803CF610-_SDA2_BASE_(r2)
/* 80172298 0016F098  D0 1F 00 34 */	stfs f0, 0x34(r31)
lbl_8017229C:
/* 8017229C 0016F09C  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 801722A0 0016F0A0  2C 00 00 03 */	cmpwi r0, 3
/* 801722A4 0016F0A4  41 82 00 90 */	beq lbl_80172334
/* 801722A8 0016F0A8  40 80 00 14 */	bge lbl_801722BC
/* 801722AC 0016F0AC  2C 00 00 01 */	cmpwi r0, 1
/* 801722B0 0016F0B0  41 82 00 18 */	beq lbl_801722C8
/* 801722B4 0016F0B4  40 80 00 78 */	bge lbl_8017232C
/* 801722B8 0016F0B8  48 00 00 7C */	b lbl_80172334
lbl_801722BC:
/* 801722BC 0016F0BC  2C 00 00 05 */	cmpwi r0, 5
/* 801722C0 0016F0C0  41 82 00 74 */	beq lbl_80172334
/* 801722C4 0016F0C4  48 00 00 70 */	b lbl_80172334
lbl_801722C8:
/* 801722C8 0016F0C8  80 0D 8D 60 */	lwz r0, gCurrentPlayer-_SDA_BASE_(r13)
/* 801722CC 0016F0CC  2C 00 00 00 */	cmpwi r0, 0
/* 801722D0 0016F0D0  40 82 00 64 */	bne lbl_80172334
/* 801722D4 0016F0D4  3C 60 80 3C */	lis r3, globals@ha
/* 801722D8 0016F0D8  38 63 05 58 */	addi r3, r3, globals@l
/* 801722DC 0016F0DC  80 03 16 D4 */	lwz r0, 0x16d4(r3)
/* 801722E0 0016F0E0  2C 00 00 00 */	cmpwi r0, 0
/* 801722E4 0016F0E4  40 82 00 50 */	bne lbl_80172334
/* 801722E8 0016F0E8  80 0D 84 B0 */	lwz r0, lbl_803CADB0-_SDA_BASE_(r13)
/* 801722EC 0016F0EC  2C 00 00 01 */	cmpwi r0, 1
/* 801722F0 0016F0F0  40 82 00 24 */	bne lbl_80172314
/* 801722F4 0016F0F4  38 00 00 03 */	li r0, 3
/* 801722F8 0016F0F8  38 60 00 25 */	li r3, 0x25
/* 801722FC 0016F0FC  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80172300 0016F100  C0 22 AC A0 */	lfs f1, lbl_803CF620-_SDA2_BASE_(r2)
/* 80172304 0016F104  4B F0 E4 8D */	bl zEntPlayer_SNDPlay__F14_tagePlayerSndf
/* 80172308 0016F108  C0 22 AC A4 */	lfs f1, lbl_803CF624-_SDA2_BASE_(r2)
/* 8017230C 0016F10C  38 60 00 24 */	li r3, 0x24
/* 80172310 0016F110  4B F0 E4 81 */	bl zEntPlayer_SNDPlay__F14_tagePlayerSndf
lbl_80172314:
/* 80172314 0016F114  80 0D 84 B0 */	lwz r0, lbl_803CADB0-_SDA_BASE_(r13)
/* 80172318 0016F118  2C 00 00 02 */	cmpwi r0, 2
/* 8017231C 0016F11C  40 82 00 18 */	bne lbl_80172334
/* 80172320 0016F120  38 00 00 02 */	li r0, 2
/* 80172324 0016F124  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80172328 0016F128  48 00 00 0C */	b lbl_80172334
lbl_8017232C:
/* 8017232C 0016F12C  38 60 00 20 */	li r3, 0x20
/* 80172330 0016F130  4B EF 41 D1 */	bl zEntPlayerControlOn__F13zControlOwner
lbl_80172334:
/* 80172334 0016F134  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 80172338 0016F138  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8017233C 0016F13C  7C 00 18 40 */	cmplw r0, r3
/* 80172340 0016F140  41 82 01 98 */	beq lbl_801724D8
/* 80172344 0016F144  2C 03 00 03 */	cmpwi r3, 3
/* 80172348 0016F148  41 82 00 E0 */	beq lbl_80172428
/* 8017234C 0016F14C  40 80 00 1C */	bge lbl_80172368
/* 80172350 0016F150  2C 03 00 01 */	cmpwi r3, 1
/* 80172354 0016F154  41 82 00 38 */	beq lbl_8017238C
/* 80172358 0016F158  40 80 00 BC */	bge lbl_80172414
/* 8017235C 0016F15C  2C 03 00 00 */	cmpwi r3, 0
/* 80172360 0016F160  40 80 00 18 */	bge lbl_80172378
/* 80172364 0016F164  48 00 01 74 */	b lbl_801724D8
lbl_80172368:
/* 80172368 0016F168  2C 03 00 05 */	cmpwi r3, 5
/* 8017236C 0016F16C  41 82 01 5C */	beq lbl_801724C8
/* 80172370 0016F170  40 80 01 68 */	bge lbl_801724D8
/* 80172374 0016F174  48 00 01 40 */	b lbl_801724B4
lbl_80172378:
/* 80172378 0016F178  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8017237C 0016F17C  38 80 01 50 */	li r4, 0x150
/* 80172380 0016F180  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80172384 0016F184  4B EA D1 E1 */	bl zEntEvent__FUiUi
/* 80172388 0016F188  48 00 01 50 */	b lbl_801724D8
lbl_8017238C:
/* 8017238C 0016F18C  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80172390 0016F190  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80172394 0016F194  4B F4 26 A9 */	bl zSceneFindObject__FUi
/* 80172398 0016F198  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 8017239C 0016F19C  7C 7E 1B 78 */	mr r30, r3
/* 801723A0 0016F1A0  80 AD 97 68 */	lwz r5, lbl_803CC068-_SDA_BASE_(r13)
/* 801723A4 0016F1A4  38 C0 00 00 */	li r6, 0
/* 801723A8 0016F1A8  80 84 00 20 */	lwz r4, 0x20(r4)
/* 801723AC 0016F1AC  4B FC 06 69 */	bl start_talk__8ztalkboxFUiPQ28ztalkbox8callbackP10zNPCCommon
/* 801723B0 0016F1B0  80 0D 8D 60 */	lwz r0, gCurrentPlayer-_SDA_BASE_(r13)
/* 801723B4 0016F1B4  2C 00 00 00 */	cmpwi r0, 0
/* 801723B8 0016F1B8  40 82 00 40 */	bne lbl_801723F8
/* 801723BC 0016F1BC  38 60 00 20 */	li r3, 0x20
/* 801723C0 0016F1C0  4B EF 41 99 */	bl zEntPlayerControlOff__F13zControlOwner
/* 801723C4 0016F1C4  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 801723C8 0016F1C8  38 80 01 50 */	li r4, 0x150
/* 801723CC 0016F1CC  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801723D0 0016F1D0  4B EA D1 95 */	bl zEntEvent__FUiUi
/* 801723D4 0016F1D4  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 801723D8 0016F1D8  38 80 00 04 */	li r4, 4
/* 801723DC 0016F1DC  80 63 00 24 */	lwz r3, 0x24(r3)
/* 801723E0 0016F1E0  4B EA D1 85 */	bl zEntEvent__FUiUi
/* 801723E4 0016F1E4  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 801723E8 0016F1E8  7F C3 F3 78 */	mr r3, r30
/* 801723EC 0016F1EC  80 84 00 20 */	lwz r4, 0x20(r4)
/* 801723F0 0016F1F0  4B FC 03 7D */	bl set_text__8ztalkboxFUi
/* 801723F4 0016F1F4  48 00 00 E4 */	b lbl_801724D8
lbl_801723F8:
/* 801723F8 0016F1F8  3C 60 80 27 */	lis r3, lbl_80271E40@ha
/* 801723FC 0016F1FC  38 63 1E 40 */	addi r3, r3, lbl_80271E40@l
/* 80172400 0016F200  4B ED 9E 15 */	bl xStrHash__FPCc
/* 80172404 0016F204  7C 64 1B 78 */	mr r4, r3
/* 80172408 0016F208  7F C3 F3 78 */	mr r3, r30
/* 8017240C 0016F20C  4B FC 03 61 */	bl set_text__8ztalkboxFUi
/* 80172410 0016F210  48 00 00 C8 */	b lbl_801724D8
lbl_80172414:
/* 80172414 0016F214  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80172418 0016F218  38 80 01 50 */	li r4, 0x150
/* 8017241C 0016F21C  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80172420 0016F220  4B EA D1 45 */	bl zEntEvent__FUiUi
/* 80172424 0016F224  48 00 00 B4 */	b lbl_801724D8
lbl_80172428:
/* 80172428 0016F228  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8017242C 0016F22C  38 80 01 50 */	li r4, 0x150
/* 80172430 0016F230  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80172434 0016F234  4B EA D1 31 */	bl zEntEvent__FUiUi
/* 80172438 0016F238  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8017243C 0016F23C  38 80 01 4F */	li r4, 0x14f
/* 80172440 0016F240  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80172444 0016F244  4B EA D1 21 */	bl zEntEvent__FUiUi
/* 80172448 0016F248  C0 42 AC A0 */	lfs f2, lbl_803CF620-_SDA2_BASE_(r2)
/* 8017244C 0016F24C  38 80 01 51 */	li r4, 0x151
/* 80172450 0016F250  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80172454 0016F254  FC 60 10 90 */	fmr f3, f2
/* 80172458 0016F258  C0 22 AC A8 */	lfs f1, lbl_803CF628-_SDA2_BASE_(r2)
/* 8017245C 0016F25C  FC 80 10 90 */	fmr f4, f2
/* 80172460 0016F260  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80172464 0016F264  4B EA D1 3D */	bl zEntEvent__FUiUiffff
/* 80172468 0016F268  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8017246C 0016F26C  38 80 00 03 */	li r4, 3
/* 80172470 0016F270  80 63 00 24 */	lwz r3, 0x24(r3)
/* 80172474 0016F274  4B EA D0 F1 */	bl zEntEvent__FUiUi
/* 80172478 0016F278  C0 42 AC A0 */	lfs f2, lbl_803CF620-_SDA2_BASE_(r2)
/* 8017247C 0016F27C  38 80 00 C3 */	li r4, 0xc3
/* 80172480 0016F280  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80172484 0016F284  FC 60 10 90 */	fmr f3, f2
/* 80172488 0016F288  C0 22 AC AC */	lfs f1, lbl_803CF62C-_SDA2_BASE_(r2)
/* 8017248C 0016F28C  FC 80 10 90 */	fmr f4, f2
/* 80172490 0016F290  80 63 00 24 */	lwz r3, 0x24(r3)
/* 80172494 0016F294  4B EA D1 0D */	bl zEntEvent__FUiUiffff
/* 80172498 0016F298  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8017249C 0016F29C  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 801724A0 0016F2A0  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 801724A4 0016F2A4  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 801724A8 0016F2A8  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 801724AC 0016F2AC  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 801724B0 0016F2B0  48 00 00 28 */	b lbl_801724D8
lbl_801724B4:
/* 801724B4 0016F2B4  3C 60 80 3C */	lis r3, globals@ha
/* 801724B8 0016F2B8  38 63 05 58 */	addi r3, r3, globals@l
/* 801724BC 0016F2BC  38 63 06 E0 */	addi r3, r3, 0x6e0
/* 801724C0 0016F2C0  4B EA 93 29 */	bl xEntHide__FP4xEnt
/* 801724C4 0016F2C4  48 00 00 14 */	b lbl_801724D8
lbl_801724C8:
/* 801724C8 0016F2C8  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 801724CC 0016F2CC  38 80 00 10 */	li r4, 0x10
/* 801724D0 0016F2D0  80 63 00 18 */	lwz r3, 0x18(r3)
/* 801724D4 0016F2D4  4B EA D0 91 */	bl zEntEvent__FUiUi
lbl_801724D8:
/* 801724D8 0016F2D8  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 801724DC 0016F2DC  90 1F 00 28 */	stw r0, 0x28(r31)
/* 801724E0 0016F2E0  C0 22 AC A0 */	lfs f1, lbl_803CF620-_SDA2_BASE_(r2)
/* 801724E4 0016F2E4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 801724E8 0016F2E8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801724EC 0016F2EC  40 82 00 18 */	bne lbl_80172504
/* 801724F0 0016F2F0  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 801724F4 0016F2F4  28 00 00 03 */	cmplwi r0, 3
/* 801724F8 0016F2F8  40 82 00 0C */	bne lbl_80172504
/* 801724FC 0016F2FC  38 00 00 04 */	li r0, 4
/* 80172500 0016F300  90 1F 00 24 */	stw r0, 0x24(r31)
lbl_80172504:
/* 80172504 0016F304  C0 22 AC A0 */	lfs f1, lbl_803CF620-_SDA2_BASE_(r2)
/* 80172508 0016F308  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8017250C 0016F30C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80172510 0016F310  40 82 00 0C */	bne lbl_8017251C
/* 80172514 0016F314  38 00 00 05 */	li r0, 5
/* 80172518 0016F318  90 1F 00 24 */	stw r0, 0x24(r31)
lbl_8017251C:
/* 8017251C 0016F31C  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80172520 0016F320  C0 02 AC A0 */	lfs f0, lbl_803CF620-_SDA2_BASE_(r2)
/* 80172524 0016F324  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80172528 0016F328  40 81 00 20 */	ble lbl_80172548
/* 8017252C 0016F32C  EC 01 F8 28 */	fsubs f0, f1, f31
/* 80172530 0016F330  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 80172534 0016F334  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80172538 0016F338  C0 02 AC A0 */	lfs f0, lbl_803CF620-_SDA2_BASE_(r2)
/* 8017253C 0016F33C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80172540 0016F340  40 80 00 08 */	bge lbl_80172548
/* 80172544 0016F344  D0 1F 00 2C */	stfs f0, 0x2c(r31)
lbl_80172548:
/* 80172548 0016F348  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8017254C 0016F34C  C0 02 AC A0 */	lfs f0, lbl_803CF620-_SDA2_BASE_(r2)
/* 80172550 0016F350  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80172554 0016F354  40 81 00 20 */	ble lbl_80172574
/* 80172558 0016F358  EC 01 F8 28 */	fsubs f0, f1, f31
/* 8017255C 0016F35C  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 80172560 0016F360  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80172564 0016F364  C0 02 AC A0 */	lfs f0, lbl_803CF620-_SDA2_BASE_(r2)
/* 80172568 0016F368  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8017256C 0016F36C  40 80 00 08 */	bge lbl_80172574
/* 80172570 0016F370  D0 1F 00 30 */	stfs f0, 0x30(r31)
lbl_80172574:
/* 80172574 0016F374  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 80172578 0016F378  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8017257C 0016F37C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80172580 0016F380  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80172584 0016F384  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80172588 0016F388  7C 08 03 A6 */	mtlr r0
/* 8017258C 0016F38C  38 21 00 60 */	addi r1, r1, 0x60
/* 80172590 0016F390  4E 80 00 20 */	blr 

.global zTaxi_tb_answer__FUi
zTaxi_tb_answer__FUi:
/* 80172594 0016F394  90 6D 84 B0 */	stw r3, lbl_803CADB0-_SDA_BASE_(r13)
/* 80172598 0016F398  4E 80 00 20 */	blr 

.global zTaxi_Save__FP5zTaxiP7xSerial
zTaxi_Save__FP5zTaxiP7xSerial:
/* 8017259C 0016F39C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801725A0 0016F3A0  7C 08 02 A6 */	mflr r0
/* 801725A4 0016F3A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801725A8 0016F3A8  4B E9 6E A5 */	bl xBaseSave__FP5xBaseP7xSerial
/* 801725AC 0016F3AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801725B0 0016F3B0  7C 08 03 A6 */	mtlr r0
/* 801725B4 0016F3B4  38 21 00 10 */	addi r1, r1, 0x10
/* 801725B8 0016F3B8  4E 80 00 20 */	blr 

.global zTaxi_Load__FP5zTaxiP7xSerial
zTaxi_Load__FP5zTaxiP7xSerial:
/* 801725BC 0016F3BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801725C0 0016F3C0  7C 08 02 A6 */	mflr r0
/* 801725C4 0016F3C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801725C8 0016F3C8  4B E9 6E D5 */	bl xBaseLoad__FP5xBaseP7xSerial
/* 801725CC 0016F3CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801725D0 0016F3D0  7C 08 03 A6 */	mtlr r0
/* 801725D4 0016F3D4  38 21 00 10 */	addi r1, r1, 0x10
/* 801725D8 0016F3D8  4E 80 00 20 */	blr 
lbl_801725DC:
/* 801725DC 0016F3DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801725E0 0016F3E0  7C 08 02 A6 */	mflr r0
/* 801725E4 0016F3E4  2C 05 00 02 */	cmpwi r5, 2
/* 801725E8 0016F3E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801725EC 0016F3EC  41 82 00 2C */	beq lbl_80172618
/* 801725F0 0016F3F0  40 80 00 10 */	bge lbl_80172600
/* 801725F4 0016F3F4  2C 05 00 01 */	cmpwi r5, 1
/* 801725F8 0016F3F8  40 80 00 14 */	bge lbl_8017260C
/* 801725FC 0016F3FC  48 00 00 24 */	b lbl_80172620
lbl_80172600:
/* 80172600 0016F400  2C 05 00 57 */	cmpwi r5, 0x57
/* 80172604 0016F404  41 82 00 1C */	beq lbl_80172620
/* 80172608 0016F408  48 00 00 18 */	b lbl_80172620
lbl_8017260C:
/* 8017260C 0016F40C  7C 83 23 78 */	mr r3, r4
/* 80172610 0016F410  4B E9 6F 45 */	bl xBaseEnable__FP5xBase
/* 80172614 0016F414  48 00 00 0C */	b lbl_80172620
lbl_80172618:
/* 80172618 0016F418  7C 83 23 78 */	mr r3, r4
/* 8017261C 0016F41C  4B E9 6F 29 */	bl xBaseDisable__FP5xBase
lbl_80172620:
/* 80172620 0016F420  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80172624 0016F424  38 60 00 01 */	li r3, 1
/* 80172628 0016F428  7C 08 03 A6 */	mtlr r0
/* 8017262C 0016F42C  38 21 00 10 */	addi r1, r1, 0x10
/* 80172630 0016F430  4E 80 00 20 */	blr 
/* 80172634 0016F434  4E 80 00 20 */	blr 
/* 80172638 0016F438  4E 80 00 20 */	blr 
/* 8017263C 0016F43C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80172640 0016F440  7C 08 02 A6 */	mflr r0
/* 80172644 0016F444  7C 83 23 78 */	mr r3, r4
/* 80172648 0016F448  90 01 00 14 */	stw r0, 0x14(r1)
/* 8017264C 0016F44C  4B FF FF 49 */	bl zTaxi_tb_answer__FUi
/* 80172650 0016F450  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80172654 0016F454  7C 08 03 A6 */	mtlr r0
/* 80172658 0016F458  38 21 00 10 */	addi r1, r1, 0x10
/* 8017265C 0016F45C  4E 80 00 20 */	blr 
/* 80172660 0016F460  4E 80 00 20 */	blr 
.section .rodata
lbl_80271E40:
	.incbin "baserom.dol", 0x26EE20, 0x18

.section .bss
lbl_8032A568:
	.skip 0x10
