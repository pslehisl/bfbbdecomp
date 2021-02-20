.include "macros.inc"

.section .rodata   # 0x802547B8 - 0x80254E00

.global lbl_802547B8
lbl_802547B8:
	.incbin "baserom.dol", 0x251798, 0x648

.if 0

.section .text  # 0x80052874 - 0x800534E4

.global zCutSceneNamesTable_clearAll__Fv

zCutsceneMgrPlayStart__FP12zCutsceneMgr:
/* 80052B84 0004F984  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80052B88 0004F988  7C 08 02 A6 */	mflr r0
/* 80052B8C 0004F98C  3C 80 80 29 */	lis r4, lbl_8028BD08@ha
/* 80052B90 0004F990  90 01 00 44 */	stw r0, 0x44(r1)
/* 80052B94 0004F994  38 00 00 01 */	li r0, 1
/* 80052B98 0004F998  BE A1 00 14 */	stmw r21, 0x14(r1)
/* 80052B9C 0004F99C  3A C4 BD 08 */	addi r22, r4, lbl_8028BD08@l
/* 80052BA0 0004F9A0  7C 75 1B 78 */	mr r21, r3
/* 80052BA4 0004F9A4  3A E0 00 00 */	li r23, 0
/* 80052BA8 0004F9A8  90 0D 8C 10 */	stw r0, lbl_803CB510-_SDA_BASE_(r13)
lbl_80052BAC:
/* 80052BAC 0004F9AC  7E C3 B3 78 */	mr r3, r22
/* 80052BB0 0004F9B0  4B FF 96 65 */	bl xStrHash__FPCc
/* 80052BB4 0004F9B4  80 95 00 14 */	lwz r4, 0x14(r21)
/* 80052BB8 0004F9B8  80 84 00 00 */	lwz r4, 0(r4)
/* 80052BBC 0004F9BC  80 04 00 04 */	lwz r0, 4(r4)
/* 80052BC0 0004F9C0  7C 00 18 40 */	cmplw r0, r3
/* 80052BC4 0004F9C4  40 82 00 28 */	bne lbl_80052BEC
/* 80052BC8 0004F9C8  1C B7 00 48 */	mulli r5, r23, 0x48
/* 80052BCC 0004F9CC  3C 60 80 29 */	lis r3, lbl_8028BD08@ha
/* 80052BD0 0004F9D0  38 80 00 01 */	li r4, 1
/* 80052BD4 0004F9D4  38 03 BD 08 */	addi r0, r3, lbl_8028BD08@l
/* 80052BD8 0004F9D8  7C 60 2A 14 */	add r3, r0, r5
/* 80052BDC 0004F9DC  90 83 00 40 */	stw r4, 0x40(r3)
/* 80052BE0 0004F9E0  80 03 00 44 */	lwz r0, 0x44(r3)
/* 80052BE4 0004F9E4  90 0D 8C 10 */	stw r0, lbl_803CB510-_SDA_BASE_(r13)
/* 80052BE8 0004F9E8  48 00 00 14 */	b lbl_80052BFC
lbl_80052BEC:
/* 80052BEC 0004F9EC  3A F7 00 01 */	addi r23, r23, 1
/* 80052BF0 0004F9F0  3A D6 00 48 */	addi r22, r22, 0x48
/* 80052BF4 0004F9F4  28 17 00 0E */	cmplwi r23, 0xe
/* 80052BF8 0004F9F8  41 80 FF B4 */	blt lbl_80052BAC
lbl_80052BFC:
/* 80052BFC 0004F9FC  3C 60 80 29 */	lis r3, lbl_8028B6B0@ha
/* 80052C00 0004FA00  3A E0 00 00 */	li r23, 0
/* 80052C04 0004FA04  3B 03 B6 B0 */	addi r24, r3, lbl_8028B6B0@l
lbl_80052C08:
/* 80052C08 0004FA08  80 78 00 00 */	lwz r3, 0(r24)
/* 80052C0C 0004FA0C  4B FF 96 09 */	bl xStrHash__FPCc
/* 80052C10 0004FA10  80 95 00 10 */	lwz r4, 0x10(r21)
/* 80052C14 0004FA14  80 04 00 08 */	lwz r0, 8(r4)
/* 80052C18 0004FA18  7C 00 18 40 */	cmplw r0, r3
/* 80052C1C 0004FA1C  40 82 01 70 */	bne lbl_80052D8C
/* 80052C20 0004FA20  80 78 00 04 */	lwz r3, 4(r24)
/* 80052C24 0004FA24  4B FF 95 F1 */	bl xStrHash__FPCc
/* 80052C28 0004FA28  3B B8 00 08 */	addi r29, r24, 8
/* 80052C2C 0004FA2C  7C 7F 1B 78 */	mr r31, r3
/* 80052C30 0004FA30  3B 98 00 0C */	addi r28, r24, 0xc
/* 80052C34 0004FA34  3B 78 00 10 */	addi r27, r24, 0x10
/* 80052C38 0004FA38  3B 58 00 14 */	addi r26, r24, 0x14
/* 80052C3C 0004FA3C  3B 38 00 18 */	addi r25, r24, 0x18
/* 80052C40 0004FA40  3A C0 00 00 */	li r22, 0
/* 80052C44 0004FA44  3B C0 00 00 */	li r30, 0
/* 80052C48 0004FA48  48 00 01 30 */	b lbl_80052D78
lbl_80052C4C:
/* 80052C4C 0004FA4C  80 04 00 04 */	lwz r0, 4(r4)
/* 80052C50 0004FA50  7C 60 F2 14 */	add r3, r0, r30
/* 80052C54 0004FA54  80 03 00 04 */	lwz r0, 4(r3)
/* 80052C58 0004FA58  7C 1F 00 40 */	cmplw r31, r0
/* 80052C5C 0004FA5C  40 82 01 14 */	bne lbl_80052D70
/* 80052C60 0004FA60  80 03 00 00 */	lwz r0, 0(r3)
/* 80052C64 0004FA64  54 00 01 3E */	clrlwi r0, r0, 4
/* 80052C68 0004FA68  28 00 00 01 */	cmplwi r0, 1
/* 80052C6C 0004FA6C  40 82 01 04 */	bne lbl_80052D70
/* 80052C70 0004FA70  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80052C74 0004FA74  28 03 00 00 */	cmplwi r3, 0
/* 80052C78 0004FA78  41 82 00 F8 */	beq lbl_80052D70
/* 80052C7C 0004FA7C  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80052C80 0004FA80  C0 02 88 E8 */	lfs f0, lbl_803CD268-_SDA2_BASE_(r2)
/* 80052C84 0004FA84  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80052C88 0004FA88  41 82 00 2C */	beq lbl_80052CB4
/* 80052C8C 0004FA8C  3C 80 80 05 */	lis r4, HackBoundCB__FP8RpAtomicPv@ha
/* 80052C90 0004FA90  80 63 00 3C */	lwz r3, 0x3c(r3)
/* 80052C94 0004FA94  38 84 2A 44 */	addi r4, r4, HackBoundCB__FP8RpAtomicPv@l
/* 80052C98 0004FA98  7F A5 EB 78 */	mr r5, r29
/* 80052C9C 0004FA9C  48 1C 03 95 */	bl RpClumpForAllAtomics
/* 80052CA0 0004FAA0  80 75 00 14 */	lwz r3, 0x14(r21)
/* 80052CA4 0004FAA4  80 63 00 04 */	lwz r3, 4(r3)
/* 80052CA8 0004FAA8  7C 03 F0 2E */	lwzx r0, r3, r30
/* 80052CAC 0004FAAC  64 00 40 00 */	oris r0, r0, 0x4000
/* 80052CB0 0004FAB0  7C 03 F1 2E */	stwx r0, r3, r30
lbl_80052CB4:
/* 80052CB4 0004FAB4  80 1C 00 00 */	lwz r0, 0(r28)
/* 80052CB8 0004FAB8  28 00 00 00 */	cmplwi r0, 0
/* 80052CBC 0004FABC  41 82 00 18 */	beq lbl_80052CD4
/* 80052CC0 0004FAC0  80 75 00 14 */	lwz r3, 0x14(r21)
/* 80052CC4 0004FAC4  80 63 00 04 */	lwz r3, 4(r3)
/* 80052CC8 0004FAC8  7C 03 F0 2E */	lwzx r0, r3, r30
/* 80052CCC 0004FACC  64 00 20 00 */	oris r0, r0, 0x2000
/* 80052CD0 0004FAD0  7C 03 F1 2E */	stwx r0, r3, r30
lbl_80052CD4:
/* 80052CD4 0004FAD4  80 1B 00 00 */	lwz r0, 0(r27)
/* 80052CD8 0004FAD8  28 00 00 00 */	cmplwi r0, 0
/* 80052CDC 0004FADC  41 82 00 18 */	beq lbl_80052CF4
/* 80052CE0 0004FAE0  80 75 00 14 */	lwz r3, 0x14(r21)
/* 80052CE4 0004FAE4  80 63 00 04 */	lwz r3, 4(r3)
/* 80052CE8 0004FAE8  7C 03 F0 2E */	lwzx r0, r3, r30
/* 80052CEC 0004FAEC  64 00 10 00 */	oris r0, r0, 0x1000
/* 80052CF0 0004FAF0  7C 03 F1 2E */	stwx r0, r3, r30
lbl_80052CF4:
/* 80052CF4 0004FAF4  80 1A 00 00 */	lwz r0, 0(r26)
/* 80052CF8 0004FAF8  28 00 00 00 */	cmplwi r0, 0
/* 80052CFC 0004FAFC  41 82 00 30 */	beq lbl_80052D2C
/* 80052D00 0004FB00  38 00 00 00 */	li r0, 0
/* 80052D04 0004FB04  3C 60 80 05 */	lis r3, HackAlphaCB__FP8RpAtomicPv@ha
/* 80052D08 0004FB08  90 0D 8C 1C */	stw r0, lbl_803CB51C-_SDA_BASE_(r13)
/* 80052D0C 0004FB0C  38 83 2A DC */	addi r4, r3, HackAlphaCB__FP8RpAtomicPv@l
/* 80052D10 0004FB10  38 1E 00 0C */	addi r0, r30, 0xc
/* 80052D14 0004FB14  80 75 00 14 */	lwz r3, 0x14(r21)
/* 80052D18 0004FB18  80 BA 00 00 */	lwz r5, 0(r26)
/* 80052D1C 0004FB1C  80 63 00 04 */	lwz r3, 4(r3)
/* 80052D20 0004FB20  7C 63 00 2E */	lwzx r3, r3, r0
/* 80052D24 0004FB24  80 63 00 3C */	lwz r3, 0x3c(r3)
/* 80052D28 0004FB28  48 1C 03 09 */	bl RpClumpForAllAtomics
lbl_80052D2C:
/* 80052D2C 0004FB2C  80 99 00 00 */	lwz r4, 0(r25)
/* 80052D30 0004FB30  28 04 00 00 */	cmplwi r4, 0
/* 80052D34 0004FB34  41 82 00 3C */	beq lbl_80052D70
/* 80052D38 0004FB38  80 75 00 14 */	lwz r3, 0x14(r21)
/* 80052D3C 0004FB3C  38 1E 00 0C */	addi r0, r30, 0xc
/* 80052D40 0004FB40  80 63 00 04 */	lwz r3, 4(r3)
/* 80052D44 0004FB44  7C 63 00 2E */	lwzx r3, r3, r0
/* 80052D48 0004FB48  90 83 00 48 */	stw r4, 0x48(r3)
/* 80052D4C 0004FB4C  80 75 00 14 */	lwz r3, 0x14(r21)
/* 80052D50 0004FB50  80 63 00 04 */	lwz r3, 4(r3)
/* 80052D54 0004FB54  7C 83 00 2E */	lwzx r4, r3, r0
/* 80052D58 0004FB58  80 04 00 48 */	lwz r0, 0x48(r4)
/* 80052D5C 0004FB5C  28 00 00 00 */	cmplwi r0, 0
/* 80052D60 0004FB60  40 82 00 10 */	bne lbl_80052D70
/* 80052D64 0004FB64  3C 60 80 21 */	lis r3, AtomicDefaultRenderCallBack@ha
/* 80052D68 0004FB68  38 03 20 B0 */	addi r0, r3, AtomicDefaultRenderCallBack@l
/* 80052D6C 0004FB6C  90 04 00 48 */	stw r0, 0x48(r4)
lbl_80052D70:
/* 80052D70 0004FB70  3B DE 00 10 */	addi r30, r30, 0x10
/* 80052D74 0004FB74  3A D6 00 01 */	addi r22, r22, 1
lbl_80052D78:
/* 80052D78 0004FB78  80 95 00 14 */	lwz r4, 0x14(r21)
/* 80052D7C 0004FB7C  80 64 00 00 */	lwz r3, 0(r4)
/* 80052D80 0004FB80  80 03 00 08 */	lwz r0, 8(r3)
/* 80052D84 0004FB84  7C 16 00 40 */	cmplw r22, r0
/* 80052D88 0004FB88  41 80 FE C4 */	blt lbl_80052C4C
lbl_80052D8C:
/* 80052D8C 0004FB8C  3A F7 00 01 */	addi r23, r23, 1
/* 80052D90 0004FB90  3B 18 00 1C */	addi r24, r24, 0x1c
/* 80052D94 0004FB94  28 17 00 3A */	cmplwi r23, 0x3a
/* 80052D98 0004FB98  41 80 FE 70 */	blt lbl_80052C08
/* 80052D9C 0004FB9C  BA A1 00 14 */	lmw r21, 0x14(r1)
/* 80052DA0 0004FBA0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80052DA4 0004FBA4  7C 08 03 A6 */	mtlr r0
/* 80052DA8 0004FBA8  38 21 00 40 */	addi r1, r1, 0x40
/* 80052DAC 0004FBAC  4E 80 00 20 */	blr 

.global zCutsceneMgrFinishLoad__FP5xBase
zCutsceneMgrFinishLoad__FP5xBase:
/* 80052EB4 0004FCB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80052EB8 0004FCB8  7C 08 02 A6 */	mflr r0
/* 80052EBC 0004FCBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80052EC0 0004FCC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80052EC4 0004FCC4  93 C1 00 08 */	stw r30, 8(r1)
/* 80052EC8 0004FCC8  7C 7E 1B 78 */	mr r30, r3
/* 80052ECC 0004FCCC  7F DF F3 78 */	mr r31, r30
lbl_80052ED0:
/* 80052ED0 0004FCD0  4B FF 93 41 */	bl iFileAsyncService__Fv
/* 80052ED4 0004FCD4  4B FF 5A C1 */	bl xSndUpdate__Fv
/* 80052ED8 0004FCD8  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80052EDC 0004FCDC  48 0E 28 05 */	bl iCSLoadStep__FP9xCutscene
/* 80052EE0 0004FCE0  48 12 DD AD */	bl CheckDVDAndResetState__8iTRCDiskFv
/* 80052EE4 0004FCE4  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 80052EE8 0004FCE8  80 04 00 3C */	lwz r0, 0x3c(r4)
/* 80052EEC 0004FCEC  28 00 00 00 */	cmplwi r0, 0
/* 80052EF0 0004FCF0  41 82 00 48 */	beq lbl_80052F38
/* 80052EF4 0004FCF4  7F E3 FB 78 */	mr r3, r31
/* 80052EF8 0004FCF8  4B FF FC 8D */	bl zCutsceneMgrPlayStart__FP12zCutsceneMgr
/* 80052EFC 0004FCFC  7F C3 F3 78 */	mr r3, r30
/* 80052F00 0004FD00  7F C4 F3 78 */	mr r4, r30
/* 80052F04 0004FD04  38 A0 00 18 */	li r5, 0x18
/* 80052F08 0004FD08  4B FC C7 D9 */	bl zEntEvent__FP5xBaseP5xBaseUi
/* 80052F0C 0004FD0C  3C 60 80 3C */	lis r3, globals@ha
/* 80052F10 0004FD10  38 80 00 08 */	li r4, 8
/* 80052F14 0004FD14  38 63 05 58 */	addi r3, r3, globals@l
/* 80052F18 0004FD18  38 63 06 E0 */	addi r3, r3, 0x6e0
/* 80052F1C 0004FD1C  4B FC C6 D5 */	bl zEntEvent__FP5xBaseUi
/* 80052F20 0004FD20  3C 60 80 3C */	lis r3, globals@ha
/* 80052F24 0004FD24  38 80 00 04 */	li r4, 4
/* 80052F28 0004FD28  38 63 05 58 */	addi r3, r3, globals@l
/* 80052F2C 0004FD2C  38 63 06 E0 */	addi r3, r3, 0x6e0
/* 80052F30 0004FD30  4B FC C6 C1 */	bl zEntEvent__FP5xBaseUi
/* 80052F34 0004FD34  48 00 00 0C */	b lbl_80052F40
lbl_80052F38:
/* 80052F38 0004FD38  48 08 01 89 */	bl iVSync__Fv
/* 80052F3C 0004FD3C  4B FF FF 94 */	b lbl_80052ED0
lbl_80052F40:
/* 80052F40 0004FD40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80052F44 0004FD44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80052F48 0004FD48  83 C1 00 08 */	lwz r30, 8(r1)
/* 80052F4C 0004FD4C  7C 08 03 A6 */	mtlr r0
/* 80052F50 0004FD50  38 21 00 10 */	addi r1, r1, 0x10
/* 80052F54 0004FD54  4E 80 00 20 */	blr 

.global zCutsceneMgrFinishExit__FP5xBase
zCutsceneMgrFinishExit__FP5xBase:
/* 80052F58 0004FD58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80052F5C 0004FD5C  7C 08 02 A6 */	mflr r0
/* 80052F60 0004FD60  90 01 00 24 */	stw r0, 0x24(r1)
/* 80052F64 0004FD64  90 61 00 08 */	stw r3, 8(r1)
/* 80052F68 0004FD68  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80052F6C 0004FD6C  83 E1 00 08 */	lwz r31, 8(r1)
lbl_80052F70:
/* 80052F70 0004FD70  4B FF 92 A1 */	bl iFileAsyncService__Fv
/* 80052F74 0004FD74  4B FF 5A 21 */	bl xSndUpdate__Fv
/* 80052F78 0004FD78  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80052F7C 0004FD7C  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 80052F80 0004FD80  28 00 00 00 */	cmplwi r0, 0
/* 80052F84 0004FD84  40 82 00 8C */	bne lbl_80053010
/* 80052F88 0004FD88  80 0D 8C 14 */	lwz r0, lbl_803CB514-_SDA_BASE_(r13)
/* 80052F8C 0004FD8C  2C 00 00 00 */	cmpwi r0, 0
/* 80052F90 0004FD90  41 82 00 1C */	beq lbl_80052FAC
/* 80052F94 0004FD94  3C 60 80 3C */	lis r3, globals@ha
/* 80052F98 0004FD98  C0 22 88 E8 */	lfs f1, lbl_803CD268-_SDA2_BASE_(r2)
/* 80052F9C 0004FD9C  38 63 05 58 */	addi r3, r3, globals@l
/* 80052FA0 0004FDA0  7F E4 FB 78 */	mr r4, r31
/* 80052FA4 0004FDA4  80 63 1F C0 */	lwz r3, 0x1fc0(r3)
/* 80052FA8 0004FDA8  48 13 EE 49 */	bl zNPCFXCutsceneDone__FPC6xScenefPC12zCutsceneMgr
lbl_80052FAC:
/* 80052FAC 0004FDAC  38 00 00 00 */	li r0, 0
/* 80052FB0 0004FDB0  90 0D 8C 14 */	stw r0, lbl_803CB514-_SDA_BASE_(r13)
/* 80052FB4 0004FDB4  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80052FB8 0004FDB8  4B FC 31 29 */	bl xCutscene_Destroy__FP9xCutscene
/* 80052FBC 0004FDBC  2C 03 00 00 */	cmpwi r3, 0
/* 80052FC0 0004FDC0  41 82 00 58 */	beq lbl_80053018
/* 80052FC4 0004FDC4  3C 60 80 3C */	lis r3, globals@ha
/* 80052FC8 0004FDC8  38 80 00 09 */	li r4, 9
/* 80052FCC 0004FDCC  38 63 05 58 */	addi r3, r3, globals@l
/* 80052FD0 0004FDD0  38 63 06 E0 */	addi r3, r3, 0x6e0
/* 80052FD4 0004FDD4  4B FC C6 1D */	bl zEntEvent__FP5xBaseUi
/* 80052FD8 0004FDD8  3C 60 80 3C */	lis r3, globals@ha
/* 80052FDC 0004FDDC  38 80 00 03 */	li r4, 3
/* 80052FE0 0004FDE0  38 63 05 58 */	addi r3, r3, globals@l
/* 80052FE4 0004FDE4  38 63 06 E0 */	addi r3, r3, 0x6e0
/* 80052FE8 0004FDE8  4B FC C6 09 */	bl zEntEvent__FP5xBaseUi
/* 80052FEC 0004FDEC  7F E3 FB 78 */	mr r3, r31
/* 80052FF0 0004FDF0  48 00 00 3D */	bl zCutsceneMgrKillFX__FP12zCutsceneMgr
/* 80052FF4 0004FDF4  38 00 00 00 */	li r0, 0
/* 80052FF8 0004FDF8  3C 60 80 3C */	lis r3, globals@ha
/* 80052FFC 0004FDFC  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80053000 0004FE00  38 63 05 58 */	addi r3, r3, globals@l
/* 80053004 0004FE04  38 00 00 00 */	li r0, 0
/* 80053008 0004FE08  90 03 1F BC */	stw r0, 0x1fbc(r3)
/* 8005300C 0004FE0C  48 00 00 0C */	b lbl_80053018
lbl_80053010:
/* 80053010 0004FE10  48 08 00 B1 */	bl iVSync__Fv
/* 80053014 0004FE14  4B FF FF 5C */	b lbl_80052F70
lbl_80053018:
/* 80053018 0004FE18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8005301C 0004FE1C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80053020 0004FE20  7C 08 03 A6 */	mtlr r0
/* 80053024 0004FE24  38 21 00 20 */	addi r1, r1, 0x20
/* 80053028 0004FE28  4E 80 00 20 */	blr 

.global zCutsceneMgrUpdate__FP5xBaseP6xScenef
zCutsceneMgrUpdate__FP5xBaseP6xScenef:
/* 80053150 0004FF50  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80053154 0004FF54  7C 08 02 A6 */	mflr r0
/* 80053158 0004FF58  90 01 00 34 */	stw r0, 0x34(r1)
/* 8005315C 0004FF5C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80053160 0004FF60  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 80053164 0004FF64  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80053168 0004FF68  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8005316C 0004FF6C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80053170 0004FF70  7C 7F 1B 78 */	mr r31, r3
/* 80053174 0004FF74  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80053178 0004FF78  FF E0 08 90 */	fmr f31, f1
/* 8005317C 0004FF7C  7C 9E 23 78 */	mr r30, r4
/* 80053180 0004FF80  80 03 00 48 */	lwz r0, 0x48(r3)
/* 80053184 0004FF84  28 00 00 00 */	cmplwi r0, 0
/* 80053188 0004FF88  41 82 00 5C */	beq lbl_800531E4
/* 8005318C 0004FF8C  80 0D 8C 14 */	lwz r0, lbl_803CB514-_SDA_BASE_(r13)
/* 80053190 0004FF90  2C 00 00 00 */	cmpwi r0, 0
/* 80053194 0004FF94  41 82 00 10 */	beq lbl_800531A4
/* 80053198 0004FF98  7F C3 F3 78 */	mr r3, r30
/* 8005319C 0004FF9C  7F E4 FB 78 */	mr r4, r31
/* 800531A0 0004FFA0  48 13 EC 51 */	bl zNPCFXCutsceneDone__FPC6xScenefPC12zCutsceneMgr
lbl_800531A4:
/* 800531A4 0004FFA4  38 00 00 00 */	li r0, 0
/* 800531A8 0004FFA8  90 0D 8C 14 */	stw r0, lbl_803CB514-_SDA_BASE_(r13)
/* 800531AC 0004FFAC  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 800531B0 0004FFB0  4B FC 2F 31 */	bl xCutscene_Destroy__FP9xCutscene
/* 800531B4 0004FFB4  2C 03 00 00 */	cmpwi r3, 0
/* 800531B8 0004FFB8  41 82 02 58 */	beq lbl_80053410
/* 800531BC 0004FFBC  7F E3 FB 78 */	mr r3, r31
/* 800531C0 0004FFC0  4B FF FE 6D */	bl zCutsceneMgrKillFX__FP12zCutsceneMgr
/* 800531C4 0004FFC4  38 00 00 00 */	li r0, 0
/* 800531C8 0004FFC8  3C 60 80 3C */	lis r3, globals@ha
/* 800531CC 0004FFCC  90 1F 00 14 */	stw r0, 0x14(r31)
/* 800531D0 0004FFD0  38 63 05 58 */	addi r3, r3, globals@l
/* 800531D4 0004FFD4  90 03 1F BC */	stw r0, 0x1fbc(r3)
/* 800531D8 0004FFD8  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 800531DC 0004FFDC  4B FB B2 B5 */	bl xCameraSetFOV__FP7xCameraf
/* 800531E0 0004FFE0  48 00 02 30 */	b lbl_80053410
lbl_800531E4:
/* 800531E4 0004FFE4  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 800531E8 0004FFE8  28 00 00 00 */	cmplwi r0, 0
/* 800531EC 0004FFEC  41 82 01 C0 */	beq lbl_800533AC
/* 800531F0 0004FFF0  80 0D 8C 14 */	lwz r0, lbl_803CB514-_SDA_BASE_(r13)
/* 800531F4 0004FFF4  2C 00 00 00 */	cmpwi r0, 0
/* 800531F8 0004FFF8  40 82 00 14 */	bne lbl_8005320C
/* 800531FC 0004FFFC  7F C3 F3 78 */	mr r3, r30
/* 80053200 00050000  7F E4 FB 78 */	mr r4, r31
/* 80053204 00050004  48 13 E9 CD */	bl zNPCFXCutscenePrep__FPC6xScenefPC12zCutsceneMgr
/* 80053208 00050008  90 6D 8C 14 */	stw r3, lbl_803CB514-_SDA_BASE_(r13)
lbl_8005320C:
/* 8005320C 0005000C  80 0D 8C 14 */	lwz r0, lbl_803CB514-_SDA_BASE_(r13)
/* 80053210 00050010  2C 00 00 00 */	cmpwi r0, 0
/* 80053214 00050014  41 82 00 14 */	beq lbl_80053228
/* 80053218 00050018  FC 20 F8 90 */	fmr f1, f31
/* 8005321C 0005001C  7F C3 F3 78 */	mr r3, r30
/* 80053220 00050020  7F E4 FB 78 */	mr r4, r31
/* 80053224 00050024  48 13 EC 99 */	bl zNPCFXCutscene__FPC6xScenefPC12zCutsceneMgr
lbl_80053228:
/* 80053228 00050028  FC 20 F8 90 */	fmr f1, f31
/* 8005322C 0005002C  7F E3 FB 78 */	mr r3, r31
/* 80053230 00050030  4B FF FE 65 */	bl zCutsceneMgrUpdateFX__FP12zCutsceneMgrf
/* 80053234 00050034  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 80053238 00050038  28 00 00 00 */	cmplwi r0, 0
/* 8005323C 0005003C  40 82 00 18 */	bne lbl_80053254
/* 80053240 00050040  FC 20 F8 90 */	fmr f1, f31
/* 80053244 00050044  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80053248 00050048  4B FC 30 81 */	bl xCutscene_Update__FP9xCutscenef
/* 8005324C 0005004C  2C 03 00 00 */	cmpwi r3, 0
/* 80053250 00050050  40 82 01 10 */	bne lbl_80053360
lbl_80053254:
/* 80053254 00050054  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 80053258 00050058  28 00 00 00 */	cmplwi r0, 0
/* 8005325C 0005005C  40 82 00 14 */	bne lbl_80053270
/* 80053260 00050060  7F E3 FB 78 */	mr r3, r31
/* 80053264 00050064  7F E4 FB 78 */	mr r4, r31
/* 80053268 00050068  38 A0 00 13 */	li r5, 0x13
/* 8005326C 0005006C  4B FC C4 75 */	bl zEntEvent__FP5xBaseP5xBaseUi
lbl_80053270:
/* 80053270 00050070  3C 60 80 3C */	lis r3, globals@ha
/* 80053274 00050074  C0 02 88 E8 */	lfs f0, lbl_803CD268-_SDA2_BASE_(r2)
/* 80053278 00050078  80 BF 00 14 */	lwz r5, 0x14(r31)
/* 8005327C 0005007C  38 63 05 58 */	addi r3, r3, globals@l
/* 80053280 00050080  3B A3 06 E0 */	addi r29, r3, 0x6e0
/* 80053284 00050084  38 80 00 09 */	li r4, 9
/* 80053288 00050088  D0 05 00 4C */	stfs f0, 0x4c(r5)
/* 8005328C 0005008C  7F A3 EB 78 */	mr r3, r29
/* 80053290 00050090  4B FC C3 61 */	bl zEntEvent__FP5xBaseUi
/* 80053294 00050094  7F A3 EB 78 */	mr r3, r29
/* 80053298 00050098  38 80 00 03 */	li r4, 3
/* 8005329C 0005009C  4B FC C3 55 */	bl zEntEvent__FP5xBaseUi
/* 800532A0 000500A0  7F E3 FB 78 */	mr r3, r31
/* 800532A4 000500A4  7F E4 FB 78 */	mr r4, r31
/* 800532A8 000500A8  38 A0 00 BF */	li r5, 0xbf
/* 800532AC 000500AC  4B FC C4 35 */	bl zEntEvent__FP5xBaseP5xBaseUi
/* 800532B0 000500B0  C0 22 88 E8 */	lfs f1, lbl_803CD268-_SDA2_BASE_(r2)
/* 800532B4 000500B4  FC 40 08 90 */	fmr f2, f1
/* 800532B8 000500B8  48 06 D4 19 */	bl iCameraSetNearFarClip__Fff
/* 800532BC 000500BC  3C 60 80 3C */	lis r3, globals@ha
/* 800532C0 000500C0  38 63 05 58 */	addi r3, r3, globals@l
/* 800532C4 000500C4  80 63 1F C0 */	lwz r3, 0x1fc0(r3)
/* 800532C8 000500C8  80 03 00 70 */	lwz r0, 0x70(r3)
/* 800532CC 000500CC  28 00 00 00 */	cmplwi r0, 0
/* 800532D0 000500D0  41 82 00 2C */	beq lbl_800532FC
/* 800532D4 000500D4  7F A3 EB 78 */	mr r3, r29
/* 800532D8 000500D8  38 80 00 08 */	li r4, 8
/* 800532DC 000500DC  4B FC C3 15 */	bl zEntEvent__FP5xBaseUi
/* 800532E0 000500E0  7F A3 EB 78 */	mr r3, r29
/* 800532E4 000500E4  38 80 00 04 */	li r4, 4
/* 800532E8 000500E8  4B FC C3 09 */	bl zEntEvent__FP5xBaseUi
/* 800532EC 000500EC  3C 60 00 01 */	lis r3, 0x0000FFFF@ha
/* 800532F0 000500F0  38 63 FF FF */	addi r3, r3, 0x0000FFFF@l
/* 800532F4 000500F4  4B FF 51 69 */	bl xSndStopAll__FUi
/* 800532F8 000500F8  48 00 01 1C */	b lbl_80053414
lbl_800532FC:
/* 800532FC 000500FC  80 0D 8C 14 */	lwz r0, lbl_803CB514-_SDA_BASE_(r13)
/* 80053300 00050100  2C 00 00 00 */	cmpwi r0, 0
/* 80053304 00050104  41 82 00 14 */	beq lbl_80053318
/* 80053308 00050108  FC 20 F8 90 */	fmr f1, f31
/* 8005330C 0005010C  7F C3 F3 78 */	mr r3, r30
/* 80053310 00050110  7F E4 FB 78 */	mr r4, r31
/* 80053314 00050114  48 13 EA DD */	bl zNPCFXCutsceneDone__FPC6xScenefPC12zCutsceneMgr
lbl_80053318:
/* 80053318 00050118  38 00 00 00 */	li r0, 0
/* 8005331C 0005011C  90 0D 8C 14 */	stw r0, lbl_803CB514-_SDA_BASE_(r13)
/* 80053320 00050120  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80053324 00050124  4B FC 2D BD */	bl xCutscene_Destroy__FP9xCutscene
/* 80053328 00050128  2C 03 00 00 */	cmpwi r3, 0
/* 8005332C 0005012C  41 82 00 28 */	beq lbl_80053354
/* 80053330 00050130  7F E3 FB 78 */	mr r3, r31
/* 80053334 00050134  4B FF FC F9 */	bl zCutsceneMgrKillFX__FP12zCutsceneMgr
/* 80053338 00050138  38 00 00 00 */	li r0, 0
/* 8005333C 0005013C  3C 60 80 3C */	lis r3, globals@ha
/* 80053340 00050140  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80053344 00050144  38 63 05 58 */	addi r3, r3, globals@l
/* 80053348 00050148  90 03 1F BC */	stw r0, 0x1fbc(r3)
/* 8005334C 0005014C  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80053350 00050150  4B FB B1 41 */	bl xCameraSetFOV__FP7xCameraf
lbl_80053354:
/* 80053354 00050154  38 60 00 00 */	li r3, 0
/* 80053358 00050158  48 05 48 25 */	bl zMusicUnpause__Fi
/* 8005335C 0005015C  48 00 00 B4 */	b lbl_80053410
lbl_80053360:
/* 80053360 00050160  80 0D 8C 10 */	lwz r0, lbl_803CB510-_SDA_BASE_(r13)
/* 80053364 00050164  2C 00 00 00 */	cmpwi r0, 0
/* 80053368 00050168  41 82 00 A8 */	beq lbl_80053410
/* 8005336C 0005016C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80053370 00050170  C0 0D 82 B8 */	lfs f0, gSkipTimeCutscene-_SDA_BASE_(r13)
/* 80053374 00050174  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 80053378 00050178  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005337C 0005017C  40 81 00 94 */	ble lbl_80053410
/* 80053380 00050180  3C 60 80 3C */	lis r3, globals@ha
/* 80053384 00050184  38 63 05 58 */	addi r3, r3, globals@l
/* 80053388 00050188  80 63 03 1C */	lwz r3, 0x31c(r3)
/* 8005338C 0005018C  80 03 00 30 */	lwz r0, 0x30(r3)
/* 80053390 00050190  74 00 00 05 */	andis. r0, r0, 5
/* 80053394 00050194  41 82 00 7C */	beq lbl_80053410
/* 80053398 00050198  7F E3 FB 78 */	mr r3, r31
/* 8005339C 0005019C  7F E4 FB 78 */	mr r4, r31
/* 800533A0 000501A0  38 A0 00 13 */	li r5, 0x13
/* 800533A4 000501A4  4B FC C3 3D */	bl zEntEvent__FP5xBaseP5xBaseUi
/* 800533A8 000501A8  48 00 00 68 */	b lbl_80053410
lbl_800533AC:
/* 800533AC 000501AC  48 0E 23 35 */	bl iCSLoadStep__FP9xCutscene
/* 800533B0 000501B0  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 800533B4 000501B4  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 800533B8 000501B8  28 00 00 00 */	cmplwi r0, 0
/* 800533BC 000501BC  41 82 00 54 */	beq lbl_80053410
/* 800533C0 000501C0  7F E3 FB 78 */	mr r3, r31
/* 800533C4 000501C4  4B FF F7 C1 */	bl zCutsceneMgrPlayStart__FP12zCutsceneMgr
/* 800533C8 000501C8  7F E3 FB 78 */	mr r3, r31
/* 800533CC 000501CC  7F E4 FB 78 */	mr r4, r31
/* 800533D0 000501D0  38 A0 00 18 */	li r5, 0x18
/* 800533D4 000501D4  4B FC C3 0D */	bl zEntEvent__FP5xBaseP5xBaseUi
/* 800533D8 000501D8  3C 60 80 3C */	lis r3, globals@ha
/* 800533DC 000501DC  38 80 00 08 */	li r4, 8
/* 800533E0 000501E0  38 63 05 58 */	addi r3, r3, globals@l
/* 800533E4 000501E4  3B A3 06 E0 */	addi r29, r3, 0x6e0
/* 800533E8 000501E8  7F A3 EB 78 */	mr r3, r29
/* 800533EC 000501EC  4B FC C2 05 */	bl zEntEvent__FP5xBaseUi
/* 800533F0 000501F0  7F A3 EB 78 */	mr r3, r29
/* 800533F4 000501F4  38 80 00 04 */	li r4, 4
/* 800533F8 000501F8  4B FC C1 F9 */	bl zEntEvent__FP5xBaseUi
/* 800533FC 000501FC  FC 20 F8 90 */	fmr f1, f31
/* 80053400 00050200  7F C3 F3 78 */	mr r3, r30
/* 80053404 00050204  7F E4 FB 78 */	mr r4, r31
/* 80053408 00050208  48 13 E7 C9 */	bl zNPCFXCutscenePrep__FPC6xScenefPC12zCutsceneMgr
/* 8005340C 0005020C  90 6D 8C 14 */	stw r3, lbl_803CB514-_SDA_BASE_(r13)
lbl_80053410:
/* 80053410 00050210  48 00 00 29 */	bl check_hide_entities__Fv
lbl_80053414:
/* 80053414 00050214  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 80053418 00050218  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8005341C 0005021C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80053420 00050220  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80053424 00050224  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80053428 00050228  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8005342C 0005022C  7C 08 03 A6 */	mtlr r0
/* 80053430 00050230  38 21 00 30 */	addi r1, r1, 0x30
/* 80053434 00050234  4E 80 00 20 */	blr 

.endif

.section .data
lbl_8028B6B0:
	.incbin "baserom.dol", 0x288690, 0x658
.global zCutSceneNamesTable
zCutSceneNamesTable:
	.incbin "baserom.dol", 0x288CE8, 0x3F0

.section .sbss
lbl_803CB510:
	.skip 0x4
lbl_803CB514:
	.skip 0x4
.global ents_hidden
ents_hidden:
	.skip 0x4
.global s_atomicNumber
s_atomicNumber:
	.skip 0x4

.section .sdata2
lbl_803CD268:
	.incbin "baserom.dol", 0x2B6B08, 0x8
