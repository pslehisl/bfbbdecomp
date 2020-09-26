.include "macros.inc"

.section .text  # 0x800C4AF4 - 0x800C4E4C

.global iLightInit__FP7RpWorld
iLightInit__FP7RpWorld:
/* 800C4AF4 000C18F4  90 6D 92 08 */	stw r3, gLightWorld-_SDA_BASE_(r13)
/* 800C4AF8 000C18F8  4E 80 00 20 */	blr 

.global iLightCreate__FP6iLightUi
iLightCreate__FP6iLightUi:
/* 800C4AFC 000C18FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800C4B00 000C1900  7C 08 02 A6 */	mflr r0
/* 800C4B04 000C1904  90 01 00 24 */	stw r0, 0x24(r1)
/* 800C4B08 000C1908  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800C4B0C 000C190C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800C4B10 000C1910  7C 9E 23 78 */	mr r30, r4
/* 800C4B14 000C1914  2C 1E 00 02 */	cmpwi r30, 2
/* 800C4B18 000C1918  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800C4B1C 000C191C  7C 7D 1B 78 */	mr r29, r3
/* 800C4B20 000C1920  41 82 00 30 */	beq lbl_800C4B50
/* 800C4B24 000C1924  40 80 00 10 */	bge lbl_800C4B34
/* 800C4B28 000C1928  2C 1E 00 01 */	cmpwi r30, 1
/* 800C4B2C 000C192C  40 80 00 14 */	bge lbl_800C4B40
/* 800C4B30 000C1930  48 00 00 40 */	b lbl_800C4B70
lbl_800C4B34:
/* 800C4B34 000C1934  2C 1E 00 04 */	cmpwi r30, 4
/* 800C4B38 000C1938  40 80 00 38 */	bge lbl_800C4B70
/* 800C4B3C 000C193C  48 00 00 24 */	b lbl_800C4B60
lbl_800C4B40:
/* 800C4B40 000C1940  38 60 00 80 */	li r3, 0x80
/* 800C4B44 000C1944  48 15 2B DD */	bl RpLightCreate
/* 800C4B48 000C1948  90 7D 00 04 */	stw r3, 4(r29)
/* 800C4B4C 000C194C  48 00 00 2C */	b lbl_800C4B78
lbl_800C4B50:
/* 800C4B50 000C1950  38 60 00 81 */	li r3, 0x81
/* 800C4B54 000C1954  48 15 2B CD */	bl RpLightCreate
/* 800C4B58 000C1958  90 7D 00 04 */	stw r3, 4(r29)
/* 800C4B5C 000C195C  48 00 00 1C */	b lbl_800C4B78
lbl_800C4B60:
/* 800C4B60 000C1960  38 60 00 82 */	li r3, 0x82
/* 800C4B64 000C1964  48 15 2B BD */	bl RpLightCreate
/* 800C4B68 000C1968  90 7D 00 04 */	stw r3, 4(r29)
/* 800C4B6C 000C196C  48 00 00 0C */	b lbl_800C4B78
lbl_800C4B70:
/* 800C4B70 000C1970  38 60 00 00 */	li r3, 0
/* 800C4B74 000C1974  48 00 00 BC */	b lbl_800C4C30
lbl_800C4B78:
/* 800C4B78 000C1978  80 1D 00 04 */	lwz r0, 4(r29)
/* 800C4B7C 000C197C  28 00 00 00 */	cmplwi r0, 0
/* 800C4B80 000C1980  40 82 00 0C */	bne lbl_800C4B8C
/* 800C4B84 000C1984  38 60 00 00 */	li r3, 0
/* 800C4B88 000C1988  48 00 00 A8 */	b lbl_800C4C30
lbl_800C4B8C:
/* 800C4B8C 000C198C  48 17 3E FD */	bl RwFrameCreate
/* 800C4B90 000C1990  7C 7F 1B 79 */	or. r31, r3, r3
/* 800C4B94 000C1994  40 82 00 14 */	bne lbl_800C4BA8
/* 800C4B98 000C1998  80 7D 00 04 */	lwz r3, 4(r29)
/* 800C4B9C 000C199C  48 15 2B 25 */	bl RpLightDestroy
/* 800C4BA0 000C19A0  38 60 00 00 */	li r3, 0
/* 800C4BA4 000C19A4  48 00 00 8C */	b lbl_800C4C30
lbl_800C4BA8:
/* 800C4BA8 000C19A8  80 7D 00 04 */	lwz r3, 4(r29)
/* 800C4BAC 000C19AC  38 00 00 01 */	li r0, 1
/* 800C4BB0 000C19B0  7F E4 FB 78 */	mr r4, r31
/* 800C4BB4 000C19B4  98 03 00 02 */	stb r0, 2(r3)
/* 800C4BB8 000C19B8  80 7D 00 04 */	lwz r3, 4(r29)
/* 800C4BBC 000C19BC  48 17 A6 39 */	bl _rwObjectHasFrameSetFrame
/* 800C4BC0 000C19C0  7F E3 FB 78 */	mr r3, r31
/* 800C4BC4 000C19C4  48 17 44 01 */	bl RwFrameUpdateObjects
/* 800C4BC8 000C19C8  93 DD 00 00 */	stw r30, 0(r29)
/* 800C4BCC 000C19CC  7F A3 EB 78 */	mr r3, r29
/* 800C4BD0 000C19D0  C0 02 97 30 */	lfs f0, lbl_803CE0B0-_SDA2_BASE_(r2)
/* 800C4BD4 000C19D4  D0 1D 00 08 */	stfs f0, 8(r29)
/* 800C4BD8 000C19D8  C0 02 97 30 */	lfs f0, lbl_803CE0B0-_SDA2_BASE_(r2)
/* 800C4BDC 000C19DC  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 800C4BE0 000C19E0  C0 02 97 30 */	lfs f0, lbl_803CE0B0-_SDA2_BASE_(r2)
/* 800C4BE4 000C19E4  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 800C4BE8 000C19E8  C0 02 97 30 */	lfs f0, lbl_803CE0B0-_SDA2_BASE_(r2)
/* 800C4BEC 000C19EC  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 800C4BF0 000C19F0  C0 02 97 34 */	lfs f0, lbl_803CE0B4-_SDA2_BASE_(r2)
/* 800C4BF4 000C19F4  D0 1D 00 1C */	stfs f0, 0x1c(r29)
/* 800C4BF8 000C19F8  C0 02 97 34 */	lfs f0, lbl_803CE0B4-_SDA2_BASE_(r2)
/* 800C4BFC 000C19FC  D0 1D 00 20 */	stfs f0, 0x20(r29)
/* 800C4C00 000C1A00  C0 02 97 34 */	lfs f0, lbl_803CE0B4-_SDA2_BASE_(r2)
/* 800C4C04 000C1A04  D0 1D 00 24 */	stfs f0, 0x24(r29)
/* 800C4C08 000C1A08  C0 02 97 34 */	lfs f0, lbl_803CE0B4-_SDA2_BASE_(r2)
/* 800C4C0C 000C1A0C  D0 1D 00 28 */	stfs f0, 0x28(r29)
/* 800C4C10 000C1A10  C0 02 97 30 */	lfs f0, lbl_803CE0B0-_SDA2_BASE_(r2)
/* 800C4C14 000C1A14  D0 1D 00 2C */	stfs f0, 0x2c(r29)
/* 800C4C18 000C1A18  C0 02 97 30 */	lfs f0, lbl_803CE0B0-_SDA2_BASE_(r2)
/* 800C4C1C 000C1A1C  D0 1D 00 30 */	stfs f0, 0x30(r29)
/* 800C4C20 000C1A20  C0 02 97 34 */	lfs f0, lbl_803CE0B4-_SDA2_BASE_(r2)
/* 800C4C24 000C1A24  D0 1D 00 34 */	stfs f0, 0x34(r29)
/* 800C4C28 000C1A28  C0 02 97 30 */	lfs f0, lbl_803CE0B0-_SDA2_BASE_(r2)
/* 800C4C2C 000C1A2C  D0 1D 00 38 */	stfs f0, 0x38(r29)
lbl_800C4C30:
/* 800C4C30 000C1A30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800C4C34 000C1A34  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800C4C38 000C1A38  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800C4C3C 000C1A3C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800C4C40 000C1A40  7C 08 03 A6 */	mtlr r0
/* 800C4C44 000C1A44  38 21 00 20 */	addi r1, r1, 0x20
/* 800C4C48 000C1A48  4E 80 00 20 */	blr 

.global iLightModify__FP6iLightUi
iLightModify__FP6iLightUi:
/* 800C4C4C 000C1A4C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 800C4C50 000C1A50  7C 08 02 A6 */	mflr r0
/* 800C4C54 000C1A54  90 01 00 64 */	stw r0, 0x64(r1)
/* 800C4C58 000C1A58  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 800C4C5C 000C1A5C  93 C1 00 58 */	stw r30, 0x58(r1)
/* 800C4C60 000C1A60  7C 9E 23 78 */	mr r30, r4
/* 800C4C64 000C1A64  73 C0 00 05 */	andi. r0, r30, 5
/* 800C4C68 000C1A68  93 A1 00 54 */	stw r29, 0x54(r1)
/* 800C4C6C 000C1A6C  7C 7D 1B 78 */	mr r29, r3
/* 800C4C70 000C1A70  41 82 00 54 */	beq lbl_800C4CC4
/* 800C4C74 000C1A74  80 BD 00 04 */	lwz r5, 4(r29)
/* 800C4C78 000C1A78  3C 60 80 25 */	lis r3, g_O3@ha
/* 800C4C7C 000C1A7C  38 83 30 18 */	addi r4, r3, g_O3@l
/* 800C4C80 000C1A80  83 E5 00 04 */	lwz r31, 4(r5)
/* 800C4C84 000C1A84  38 61 00 08 */	addi r3, r1, 8
/* 800C4C88 000C1A88  4B F4 65 DD */	bl __as__5xVec3FRC5xVec3
/* 800C4C8C 000C1A8C  3C 80 80 25 */	lis r4, g_O3@ha
/* 800C4C90 000C1A90  38 61 00 18 */	addi r3, r1, 0x18
/* 800C4C94 000C1A94  38 84 30 18 */	addi r4, r4, g_O3@l
/* 800C4C98 000C1A98  4B F4 65 CD */	bl __as__5xVec3FRC5xVec3
/* 800C4C9C 000C1A9C  38 61 00 28 */	addi r3, r1, 0x28
/* 800C4CA0 000C1AA0  38 9D 00 2C */	addi r4, r29, 0x2c
/* 800C4CA4 000C1AA4  4B F4 65 C1 */	bl __as__5xVec3FRC5xVec3
/* 800C4CA8 000C1AA8  38 61 00 38 */	addi r3, r1, 0x38
/* 800C4CAC 000C1AAC  38 9D 00 08 */	addi r4, r29, 8
/* 800C4CB0 000C1AB0  4B F4 65 B5 */	bl __as__5xVec3FRC5xVec3
/* 800C4CB4 000C1AB4  7F E3 FB 78 */	mr r3, r31
/* 800C4CB8 000C1AB8  38 81 00 08 */	addi r4, r1, 8
/* 800C4CBC 000C1ABC  38 A0 00 00 */	li r5, 0
/* 800C4CC0 000C1AC0  48 17 46 BD */	bl RwFrameTransform
lbl_800C4CC4:
/* 800C4CC4 000C1AC4  57 C0 07 BD */	rlwinm. r0, r30, 0, 0x1e, 0x1e
/* 800C4CC8 000C1AC8  41 82 00 10 */	beq lbl_800C4CD8
/* 800C4CCC 000C1ACC  80 7D 00 04 */	lwz r3, 4(r29)
/* 800C4CD0 000C1AD0  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 800C4CD4 000C1AD4  48 15 24 9D */	bl RpLightSetRadius
lbl_800C4CD8:
/* 800C4CD8 000C1AD8  57 C0 07 39 */	rlwinm. r0, r30, 0, 0x1c, 0x1c
/* 800C4CDC 000C1ADC  41 82 00 10 */	beq lbl_800C4CEC
/* 800C4CE0 000C1AE0  80 7D 00 04 */	lwz r3, 4(r29)
/* 800C4CE4 000C1AE4  38 9D 00 1C */	addi r4, r29, 0x1c
/* 800C4CE8 000C1AE8  48 15 24 C9 */	bl RpLightSetColor
lbl_800C4CEC:
/* 800C4CEC 000C1AEC  57 C0 06 F7 */	rlwinm. r0, r30, 0, 0x1b, 0x1b
/* 800C4CF0 000C1AF0  41 82 00 24 */	beq lbl_800C4D14
/* 800C4CF4 000C1AF4  80 1D 00 00 */	lwz r0, 0(r29)
/* 800C4CF8 000C1AF8  28 00 00 02 */	cmplwi r0, 2
/* 800C4CFC 000C1AFC  41 82 00 0C */	beq lbl_800C4D08
/* 800C4D00 000C1B00  28 00 00 03 */	cmplwi r0, 3
/* 800C4D04 000C1B04  40 82 00 10 */	bne lbl_800C4D14
lbl_800C4D08:
/* 800C4D08 000C1B08  80 7D 00 04 */	lwz r3, 4(r29)
/* 800C4D0C 000C1B0C  C0 3D 00 38 */	lfs f1, 0x38(r29)
/* 800C4D10 000C1B10  48 15 27 21 */	bl RpLightSetConeAngle
lbl_800C4D14:
/* 800C4D14 000C1B14  80 01 00 64 */	lwz r0, 0x64(r1)
/* 800C4D18 000C1B18  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 800C4D1C 000C1B1C  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 800C4D20 000C1B20  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 800C4D24 000C1B24  7C 08 03 A6 */	mtlr r0
/* 800C4D28 000C1B28  38 21 00 60 */	addi r1, r1, 0x60
/* 800C4D2C 000C1B2C  4E 80 00 20 */	blr 

.global iLightSetColor__FP6iLightP8_xFColor
iLightSetColor__FP6iLightP8_xFColor:
/* 800C4D30 000C1B30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C4D34 000C1B34  7C 08 02 A6 */	mflr r0
/* 800C4D38 000C1B38  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C4D3C 000C1B3C  80 63 00 04 */	lwz r3, 4(r3)
/* 800C4D40 000C1B40  48 15 24 71 */	bl RpLightSetColor
/* 800C4D44 000C1B44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C4D48 000C1B48  7C 08 03 A6 */	mtlr r0
/* 800C4D4C 000C1B4C  38 21 00 10 */	addi r1, r1, 0x10
/* 800C4D50 000C1B50  4E 80 00 20 */	blr 

.global iLightSetPos__FP6iLightP5xVec3
iLightSetPos__FP6iLightP5xVec3:
/* 800C4D54 000C1B54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C4D58 000C1B58  7C 08 02 A6 */	mflr r0
/* 800C4D5C 000C1B5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C4D60 000C1B60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C4D64 000C1B64  80 63 00 04 */	lwz r3, 4(r3)
/* 800C4D68 000C1B68  C0 04 00 00 */	lfs f0, 0(r4)
/* 800C4D6C 000C1B6C  83 E3 00 04 */	lwz r31, 4(r3)
/* 800C4D70 000C1B70  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 800C4D74 000C1B74  38 7F 00 10 */	addi r3, r31, 0x10
/* 800C4D78 000C1B78  C0 04 00 04 */	lfs f0, 4(r4)
/* 800C4D7C 000C1B7C  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 800C4D80 000C1B80  C0 04 00 08 */	lfs f0, 8(r4)
/* 800C4D84 000C1B84  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 800C4D88 000C1B88  48 16 B6 01 */	bl RwMatrixUpdate
/* 800C4D8C 000C1B8C  7F E3 FB 78 */	mr r3, r31
/* 800C4D90 000C1B90  48 17 42 35 */	bl RwFrameUpdateObjects
/* 800C4D94 000C1B94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C4D98 000C1B98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C4D9C 000C1B9C  7C 08 03 A6 */	mtlr r0
/* 800C4DA0 000C1BA0  38 21 00 10 */	addi r1, r1, 0x10
/* 800C4DA4 000C1BA4  4E 80 00 20 */	blr 

.global iLightDestroy__FP6iLight
iLightDestroy__FP6iLight:
/* 800C4DA8 000C1BA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C4DAC 000C1BAC  7C 08 02 A6 */	mflr r0
/* 800C4DB0 000C1BB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C4DB4 000C1BB4  38 00 00 00 */	li r0, 0
/* 800C4DB8 000C1BB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C4DBC 000C1BBC  7C 7F 1B 78 */	mr r31, r3
/* 800C4DC0 000C1BC0  90 03 00 00 */	stw r0, 0(r3)
/* 800C4DC4 000C1BC4  48 17 80 39 */	bl _rwFrameSyncDirty
/* 800C4DC8 000C1BC8  80 7F 00 04 */	lwz r3, 4(r31)
/* 800C4DCC 000C1BCC  80 63 00 04 */	lwz r3, 4(r3)
/* 800C4DD0 000C1BD0  28 03 00 00 */	cmplwi r3, 0
/* 800C4DD4 000C1BD4  41 82 00 08 */	beq lbl_800C4DDC
/* 800C4DD8 000C1BD8  48 17 3D ED */	bl RwFrameDestroy
lbl_800C4DDC:
/* 800C4DDC 000C1BDC  80 7F 00 04 */	lwz r3, 4(r31)
/* 800C4DE0 000C1BE0  48 15 28 E1 */	bl RpLightDestroy
/* 800C4DE4 000C1BE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C4DE8 000C1BE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C4DEC 000C1BEC  7C 08 03 A6 */	mtlr r0
/* 800C4DF0 000C1BF0  38 21 00 10 */	addi r1, r1, 0x10
/* 800C4DF4 000C1BF4  4E 80 00 20 */	blr 

.global iLightEnv__FP6iLighti
iLightEnv__FP6iLighti:
/* 800C4DF8 000C1BF8  2C 04 00 02 */	cmpwi r4, 2
/* 800C4DFC 000C1BFC  38 00 00 00 */	li r0, 0
/* 800C4E00 000C1C00  41 82 00 34 */	beq lbl_800C4E34
/* 800C4E04 000C1C04  40 80 00 14 */	bge lbl_800C4E18
/* 800C4E08 000C1C08  2C 04 00 00 */	cmpwi r4, 0
/* 800C4E0C 000C1C0C  41 82 00 18 */	beq lbl_800C4E24
/* 800C4E10 000C1C10  40 80 00 1C */	bge lbl_800C4E2C
/* 800C4E14 000C1C14  48 00 00 2C */	b lbl_800C4E40
lbl_800C4E18:
/* 800C4E18 000C1C18  2C 04 00 04 */	cmpwi r4, 4
/* 800C4E1C 000C1C1C  40 80 00 24 */	bge lbl_800C4E40
/* 800C4E20 000C1C20  48 00 00 1C */	b lbl_800C4E3C
lbl_800C4E24:
/* 800C4E24 000C1C24  38 00 00 00 */	li r0, 0
/* 800C4E28 000C1C28  48 00 00 18 */	b lbl_800C4E40
lbl_800C4E2C:
/* 800C4E2C 000C1C2C  38 00 00 02 */	li r0, 2
/* 800C4E30 000C1C30  48 00 00 10 */	b lbl_800C4E40
lbl_800C4E34:
/* 800C4E34 000C1C34  38 00 00 01 */	li r0, 1
/* 800C4E38 000C1C38  48 00 00 08 */	b lbl_800C4E40
lbl_800C4E3C:
/* 800C4E3C 000C1C3C  38 00 00 03 */	li r0, 3
lbl_800C4E40:
/* 800C4E40 000C1C40  80 63 00 04 */	lwz r3, 4(r3)
/* 800C4E44 000C1C44  98 03 00 02 */	stb r0, 2(r3)
/* 800C4E48 000C1C48  4E 80 00 20 */	blr 
