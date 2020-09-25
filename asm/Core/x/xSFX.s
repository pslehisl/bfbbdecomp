.include "macros.inc"

.section .text  # 0x80043EB8 - 0x80044778

.global xSFXEnvironmentalStreamSceneExit__Fv
xSFXEnvironmentalStreamSceneExit__Fv:
/* 80043EB8 00040CB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80043EBC 00040CBC  7C 08 02 A6 */	mflr r0
/* 80043EC0 00040CC0  38 6D 80 A0 */	addi r3, r13, lbl_803CA9A0-_SDA_BASE_
/* 80043EC4 00040CC4  38 80 00 00 */	li r4, 0
/* 80043EC8 00040CC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80043ECC 00040CCC  38 A0 00 04 */	li r5, 4
/* 80043ED0 00040CD0  4B FB F5 89 */	bl memset
/* 80043ED4 00040CD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80043ED8 00040CD8  7C 08 03 A6 */	mtlr r0
/* 80043EDC 00040CDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80043EE0 00040CE0  4E 80 00 20 */	blr 

.global xSFXUpdateEnvironmentalStreamSounds__FP4xSFXUi
xSFXUpdateEnvironmentalStreamSounds__FP4xSFXUi:
/* 80043EE4 00040CE4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80043EE8 00040CE8  7C 08 02 A6 */	mflr r0
/* 80043EEC 00040CEC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80043EF0 00040CF0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80043EF4 00040CF4  7C 7F 1B 78 */	mr r31, r3
/* 80043EF8 00040CF8  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80043EFC 00040CFC  7F FE FB 78 */	mr r30, r31
/* 80043F00 00040D00  93 A1 00 34 */	stw r29, 0x34(r1)
/* 80043F04 00040D04  7C 9D 23 78 */	mr r29, r4
/* 80043F08 00040D08  93 81 00 30 */	stw r28, 0x30(r1)
/* 80043F0C 00040D0C  3B 80 00 00 */	li r28, 0
/* 80043F10 00040D10  48 00 00 14 */	b lbl_80043F24
lbl_80043F14:
/* 80043F14 00040D14  7F C3 F3 78 */	mr r3, r30
/* 80043F18 00040D18  48 00 03 55 */	bl func_8004426C
/* 80043F1C 00040D1C  3B DE 00 1C */	addi r30, r30, 0x1c
/* 80043F20 00040D20  3B 9C 00 01 */	addi r28, r28, 1
lbl_80043F24:
/* 80043F24 00040D24  7C 1C E8 40 */	cmplw r28, r29
/* 80043F28 00040D28  41 80 FF EC */	blt lbl_80043F14
/* 80043F2C 00040D2C  38 6D 8A A8 */	addi r3, r13, lbl_803CB3A8-_SDA_BASE_
/* 80043F30 00040D30  38 80 00 00 */	li r4, 0
/* 80043F34 00040D34  38 A0 00 04 */	li r5, 4
/* 80043F38 00040D38  4B FB F5 21 */	bl memset
/* 80043F3C 00040D3C  3C 60 80 3C */	lis r3, gSnd@ha
/* 80043F40 00040D40  3B C0 00 00 */	li r30, 0
/* 80043F44 00040D44  38 63 D5 B4 */	addi r3, r3, gSnd@l
/* 80043F48 00040D48  3B 83 19 C8 */	addi r28, r3, 0x19c8
/* 80043F4C 00040D4C  48 00 00 EC */	b lbl_80044038
lbl_80043F50:
/* 80043F50 00040D50  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 80043F54 00040D54  A0 64 00 08 */	lhz r3, 8(r4)
/* 80043F58 00040D58  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 80043F5C 00040D5C  41 82 00 D4 */	beq lbl_80044030
/* 80043F60 00040D60  54 60 04 E7 */	rlwinm. r0, r3, 0, 0x13, 0x13
/* 80043F64 00040D64  41 82 00 CC */	beq lbl_80044030
/* 80043F68 00040D68  38 64 00 1C */	addi r3, r4, 0x1c
/* 80043F6C 00040D6C  38 81 00 20 */	addi r4, r1, 0x20
/* 80043F70 00040D70  48 00 48 25 */	bl xSndProcessSoundPos__FPC5xVec3P5xVec3
/* 80043F74 00040D74  7F 84 E3 78 */	mr r4, r28
/* 80043F78 00040D78  38 61 00 08 */	addi r3, r1, 8
/* 80043F7C 00040D7C  38 A1 00 20 */	addi r5, r1, 0x20
/* 80043F80 00040D80  4B FC 72 4D */	bl func_8000B1CC
/* 80043F84 00040D84  80 A1 00 08 */	lwz r5, 8(r1)
/* 80043F88 00040D88  38 61 00 14 */	addi r3, r1, 0x14
/* 80043F8C 00040D8C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80043F90 00040D90  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80043F94 00040D94  90 A1 00 14 */	stw r5, 0x14(r1)
/* 80043F98 00040D98  90 81 00 18 */	stw r4, 0x18(r1)
/* 80043F9C 00040D9C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80043FA0 00040DA0  4B FD 11 2D */	bl func_800150CC
/* 80043FA4 00040DA4  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80043FA8 00040DA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80043FAC 00040DAC  41 81 00 84 */	bgt lbl_80044030
/* 80043FB0 00040DB0  38 AD 8A A8 */	addi r5, r13, lbl_803CB3A8-_SDA_BASE_
/* 80043FB4 00040DB4  38 00 00 00 */	li r0, 0
/* 80043FB8 00040DB8  80 6D 8A A8 */	lwz r3, lbl_803CB3A8-_SDA_BASE_(r13)
/* 80043FBC 00040DBC  28 03 00 00 */	cmplwi r3, 0
/* 80043FC0 00040DC0  40 82 00 18 */	bne lbl_80043FD8
/* 80043FC4 00040DC4  54 00 10 3A */	slwi r0, r0, 2
/* 80043FC8 00040DC8  38 6D 8A AC */	addi r3, r13, lbl_803CB3AC-_SDA_BASE_
/* 80043FCC 00040DCC  7F E5 01 2E */	stwx r31, r5, r0
/* 80043FD0 00040DD0  7C 23 05 2E */	stfsx f1, r3, r0
/* 80043FD4 00040DD4  48 00 00 5C */	b lbl_80044030
lbl_80043FD8:
/* 80043FD8 00040DD8  80 83 00 10 */	lwz r4, 0x10(r3)
/* 80043FDC 00040DDC  38 C0 00 00 */	li r6, 0
/* 80043FE0 00040DE0  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80043FE4 00040DE4  88 84 00 19 */	lbz r4, 0x19(r4)
/* 80043FE8 00040DE8  88 03 00 19 */	lbz r0, 0x19(r3)
/* 80043FEC 00040DEC  7C 04 00 40 */	cmplw r4, r0
/* 80043FF0 00040DF0  40 80 00 18 */	bge lbl_80044008
/* 80043FF4 00040DF4  54 C0 10 3A */	slwi r0, r6, 2
/* 80043FF8 00040DF8  38 6D 8A AC */	addi r3, r13, lbl_803CB3AC-_SDA_BASE_
/* 80043FFC 00040DFC  7F E5 01 2E */	stwx r31, r5, r0
/* 80044000 00040E00  7C 23 05 2E */	stfsx f1, r3, r0
/* 80044004 00040E04  48 00 00 2C */	b lbl_80044030
lbl_80044008:
/* 80044008 00040E08  7C 00 20 40 */	cmplw r0, r4
/* 8004400C 00040E0C  38 00 00 00 */	li r0, 0
/* 80044010 00040E10  38 6D 8A AC */	addi r3, r13, lbl_803CB3AC-_SDA_BASE_
/* 80044014 00040E14  40 82 00 1C */	bne lbl_80044030
/* 80044018 00040E18  C0 03 00 00 */	lfs f0, 0(r3)
/* 8004401C 00040E1C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80044020 00040E20  40 81 00 10 */	ble lbl_80044030
/* 80044024 00040E24  54 00 10 3A */	slwi r0, r0, 2
/* 80044028 00040E28  7F E5 01 2E */	stwx r31, r5, r0
/* 8004402C 00040E2C  7C 23 05 2E */	stfsx f1, r3, r0
lbl_80044030:
/* 80044030 00040E30  3B FF 00 1C */	addi r31, r31, 0x1c
/* 80044034 00040E34  3B DE 00 01 */	addi r30, r30, 1
lbl_80044038:
/* 80044038 00040E38  7C 1E E8 40 */	cmplw r30, r29
/* 8004403C 00040E3C  41 80 FF 14 */	blt lbl_80043F50
/* 80044040 00040E40  3B 8D 80 A0 */	addi r28, r13, lbl_803CA9A0-_SDA_BASE_
/* 80044044 00040E44  38 8D 8A A8 */	addi r4, r13, lbl_803CB3A8-_SDA_BASE_
/* 80044048 00040E48  80 6D 80 A0 */	lwz r3, lbl_803CA9A0-_SDA_BASE_(r13)
/* 8004404C 00040E4C  38 A0 00 00 */	li r5, 0
/* 80044050 00040E50  80 0D 8A A8 */	lwz r0, lbl_803CB3A8-_SDA_BASE_(r13)
/* 80044054 00040E54  38 C0 00 00 */	li r6, 0
/* 80044058 00040E58  7C 03 00 40 */	cmplw r3, r0
/* 8004405C 00040E5C  40 82 00 14 */	bne lbl_80044070
/* 80044060 00040E60  54 C0 10 3A */	slwi r0, r6, 2
/* 80044064 00040E64  38 60 00 00 */	li r3, 0
/* 80044068 00040E68  7C 64 01 2E */	stwx r3, r4, r0
/* 8004406C 00040E6C  38 A0 00 01 */	li r5, 1
lbl_80044070:
/* 80044070 00040E70  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80044074 00040E74  40 82 00 1C */	bne lbl_80044090
/* 80044078 00040E78  80 7C 00 00 */	lwz r3, 0(r28)
/* 8004407C 00040E7C  28 03 00 00 */	cmplwi r3, 0
/* 80044080 00040E80  41 82 00 10 */	beq lbl_80044090
/* 80044084 00040E84  48 00 06 BD */	bl func_80044740
/* 80044088 00040E88  38 00 00 00 */	li r0, 0
/* 8004408C 00040E8C  90 1C 00 00 */	stw r0, 0(r28)
lbl_80044090:
/* 80044090 00040E90  38 8D 8A A8 */	addi r4, r13, lbl_803CB3A8-_SDA_BASE_
/* 80044094 00040E94  38 6D 80 A0 */	addi r3, r13, lbl_803CA9A0-_SDA_BASE_
/* 80044098 00040E98  80 AD 8A A8 */	lwz r5, lbl_803CB3A8-_SDA_BASE_(r13)
/* 8004409C 00040E9C  28 05 00 00 */	cmplwi r5, 0
/* 800440A0 00040EA0  41 82 00 24 */	beq lbl_800440C4
/* 800440A4 00040EA4  80 1C 00 00 */	lwz r0, 0(r28)
/* 800440A8 00040EA8  38 C0 00 00 */	li r6, 0
/* 800440AC 00040EAC  28 00 00 00 */	cmplwi r0, 0
/* 800440B0 00040EB0  40 82 00 0C */	bne lbl_800440BC
/* 800440B4 00040EB4  54 C0 10 3A */	slwi r0, r6, 2
/* 800440B8 00040EB8  7C A3 01 2E */	stwx r5, r3, r0
lbl_800440BC:
/* 800440BC 00040EBC  80 64 00 00 */	lwz r3, 0(r4)
/* 800440C0 00040EC0  48 00 03 65 */	bl func_80044424
lbl_800440C4:
/* 800440C4 00040EC4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800440C8 00040EC8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800440CC 00040ECC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 800440D0 00040ED0  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 800440D4 00040ED4  83 81 00 30 */	lwz r28, 0x30(r1)
/* 800440D8 00040ED8  7C 08 03 A6 */	mtlr r0
/* 800440DC 00040EDC  38 21 00 40 */	addi r1, r1, 0x40
/* 800440E0 00040EE0  4E 80 00 20 */	blr 

.global func_800440E4
func_800440E4:
/* 800440E4 00040EE4  88 03 00 05 */	lbz r0, 5(r3)
/* 800440E8 00040EE8  28 00 00 00 */	cmplwi r0, 0
/* 800440EC 00040EEC  41 82 00 30 */	beq lbl_8004411C
/* 800440F0 00040EF0  80 63 00 08 */	lwz r3, 8(r3)
/* 800440F4 00040EF4  7C 09 03 A6 */	mtctr r0
/* 800440F8 00040EF8  2C 00 00 00 */	cmpwi r0, 0
/* 800440FC 00040EFC  40 81 00 20 */	ble lbl_8004411C
lbl_80044100:
/* 80044100 00040F00  A0 03 00 00 */	lhz r0, 0(r3)
/* 80044104 00040F04  28 00 00 BF */	cmplwi r0, 0xbf
/* 80044108 00040F08  40 82 00 0C */	bne lbl_80044114
/* 8004410C 00040F0C  38 60 00 01 */	li r3, 1
/* 80044110 00040F10  4E 80 00 20 */	blr 
lbl_80044114:
/* 80044114 00040F14  38 63 00 20 */	addi r3, r3, 0x20
/* 80044118 00040F18  42 00 FF E8 */	bdnz lbl_80044100
lbl_8004411C:
/* 8004411C 00040F1C  38 60 00 00 */	li r3, 0
/* 80044120 00040F20  4E 80 00 20 */	blr 
/* 80044124 00040F24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80044128 00040F28  7C 08 02 A6 */	mflr r0
/* 8004412C 00040F2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80044130 00040F30  48 00 00 15 */	bl xSFXInit__FP4xSFXP9xSFXAsset
/* 80044134 00040F34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80044138 00040F38  7C 08 03 A6 */	mtlr r0
/* 8004413C 00040F3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80044140 00040F40  4E 80 00 20 */	blr 

.global xSFXInit__FP4xSFXP9xSFXAsset
xSFXInit__FP4xSFXP9xSFXAsset:
/* 80044144 00040F44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80044148 00040F48  7C 08 02 A6 */	mflr r0
/* 8004414C 00040F4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80044150 00040F50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80044154 00040F54  7C 9F 23 78 */	mr r31, r4
/* 80044158 00040F58  93 C1 00 08 */	stw r30, 8(r1)
/* 8004415C 00040F5C  7C 7E 1B 78 */	mr r30, r3
/* 80044160 00040F60  4B FC 52 A1 */	bl xBaseInit__FP5xBaseP10xBaseAsset
/* 80044164 00040F64  3C 60 80 04 */	lis r3, lbl_800442E4@ha
/* 80044168 00040F68  38 03 42 E4 */	addi r0, r3, lbl_800442E4@l
/* 8004416C 00040F6C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80044170 00040F70  93 FE 00 10 */	stw r31, 0x10(r30)
/* 80044174 00040F74  88 1E 00 05 */	lbz r0, 5(r30)
/* 80044178 00040F78  28 00 00 00 */	cmplwi r0, 0
/* 8004417C 00040F7C  41 82 00 14 */	beq lbl_80044190
/* 80044180 00040F80  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80044184 00040F84  38 03 00 30 */	addi r0, r3, 0x30
/* 80044188 00040F88  90 1E 00 08 */	stw r0, 8(r30)
/* 8004418C 00040F8C  48 00 00 0C */	b lbl_80044198
lbl_80044190:
/* 80044190 00040F90  38 00 00 00 */	li r0, 0
/* 80044194 00040F94  90 1E 00 08 */	stw r0, 8(r30)
lbl_80044198:
/* 80044198 00040F98  7F C3 F3 78 */	mr r3, r30
/* 8004419C 00040F9C  4B FF FF 49 */	bl func_800440E4
/* 800441A0 00040FA0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800441A4 00040FA4  41 82 00 10 */	beq lbl_800441B4
/* 800441A8 00040FA8  A0 1F 00 08 */	lhz r0, 8(r31)
/* 800441AC 00040FAC  60 00 08 00 */	ori r0, r0, 0x800
/* 800441B0 00040FB0  B0 1F 00 08 */	sth r0, 8(r31)
lbl_800441B4:
/* 800441B4 00040FB4  38 00 00 00 */	li r0, 0
/* 800441B8 00040FB8  90 1E 00 14 */	stw r0, 0x14(r30)
/* 800441BC 00040FBC  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 800441C0 00040FC0  A0 03 00 08 */	lhz r0, 8(r3)
/* 800441C4 00040FC4  70 00 EF FF */	andi. r0, r0, 0xefff
/* 800441C8 00040FC8  B0 03 00 08 */	sth r0, 8(r3)
/* 800441CC 00040FCC  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 800441D0 00040FD0  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 800441D4 00040FD4  EC 00 00 32 */	fmuls f0, f0, f0
/* 800441D8 00040FD8  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 800441DC 00040FDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800441E0 00040FE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 800441E4 00040FE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800441E8 00040FE8  7C 08 03 A6 */	mtlr r0
/* 800441EC 00040FEC  38 21 00 10 */	addi r1, r1, 0x10
/* 800441F0 00040FF0  4E 80 00 20 */	blr 

.global xSFXSave__FP4xSFXP7xSerial
xSFXSave__FP4xSFXP7xSerial:
/* 800441F4 00040FF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800441F8 00040FF8  7C 08 02 A6 */	mflr r0
/* 800441FC 00040FFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80044200 00041000  4B FC 52 4D */	bl xBaseSave__FP5xBaseP7xSerial
/* 80044204 00041004  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80044208 00041008  7C 08 03 A6 */	mtlr r0
/* 8004420C 0004100C  38 21 00 10 */	addi r1, r1, 0x10
/* 80044210 00041010  4E 80 00 20 */	blr 

.global xSFXLoad__FP4xSFXP7xSerial
xSFXLoad__FP4xSFXP7xSerial:
/* 80044214 00041014  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80044218 00041018  7C 08 02 A6 */	mflr r0
/* 8004421C 0004101C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80044220 00041020  4B FC 52 7D */	bl xBaseLoad__FP5xBaseP7xSerial
/* 80044224 00041024  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80044228 00041028  7C 08 03 A6 */	mtlr r0
/* 8004422C 0004102C  38 21 00 10 */	addi r1, r1, 0x10
/* 80044230 00041030  4E 80 00 20 */	blr 

.global xSFXReset__FP4xSFX
xSFXReset__FP4xSFX:
/* 80044234 00041034  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80044238 00041038  7C 08 02 A6 */	mflr r0
/* 8004423C 0004103C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80044240 00041040  80 83 00 10 */	lwz r4, 0x10(r3)
/* 80044244 00041044  4B FC 52 B5 */	bl xBaseReset__FP5xBaseP10xBaseAsset
/* 80044248 00041048  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004424C 0004104C  7C 08 03 A6 */	mtlr r0
/* 80044250 00041050  38 21 00 10 */	addi r1, r1, 0x10
/* 80044254 00041054  4E 80 00 20 */	blr 

.global xSFXConvertFlags__FUi
xSFXConvertFlags__FUi:
/* 80044258 00041058  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 8004425C 0004105C  38 60 00 00 */	li r3, 0
/* 80044260 00041060  4D 82 00 20 */	beqlr 
/* 80044264 00041064  60 63 80 00 */	ori r3, r3, 0x8000
/* 80044268 00041068  4E 80 00 20 */	blr 

.global func_8004426C
func_8004426C:
/* 8004426C 0004106C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80044270 00041070  7C 08 02 A6 */	mflr r0
/* 80044274 00041074  90 01 00 14 */	stw r0, 0x14(r1)
/* 80044278 00041078  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8004427C 0004107C  7C 7F 1B 78 */	mr r31, r3
/* 80044280 00041080  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80044284 00041084  A0 03 00 08 */	lhz r0, 8(r3)
/* 80044288 00041088  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 8004428C 0004108C  41 82 00 44 */	beq lbl_800442D0
/* 80044290 00041090  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80044294 00041094  28 03 00 00 */	cmplwi r3, 0
/* 80044298 00041098  41 82 00 38 */	beq lbl_800442D0
/* 8004429C 0004109C  48 00 4E AD */	bl xSndIDIsPlaying__FUi
/* 800442A0 000410A0  28 03 00 00 */	cmplwi r3, 0
/* 800442A4 000410A4  40 82 00 2C */	bne lbl_800442D0
/* 800442A8 000410A8  38 00 00 00 */	li r0, 0
/* 800442AC 000410AC  7F E3 FB 78 */	mr r3, r31
/* 800442B0 000410B0  90 1F 00 14 */	stw r0, 0x14(r31)
/* 800442B4 000410B4  7F E4 FB 78 */	mr r4, r31
/* 800442B8 000410B8  38 A0 00 BF */	li r5, 0xbf
/* 800442BC 000410BC  80 DF 00 10 */	lwz r6, 0x10(r31)
/* 800442C0 000410C0  A0 06 00 08 */	lhz r0, 8(r6)
/* 800442C4 000410C4  70 00 EF FF */	andi. r0, r0, 0xefff
/* 800442C8 000410C8  B0 06 00 08 */	sth r0, 8(r6)
/* 800442CC 000410CC  4B FD B4 15 */	bl zEntEvent__FP5xBaseP5xBaseUi
lbl_800442D0:
/* 800442D0 000410D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800442D4 000410D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800442D8 000410D8  7C 08 03 A6 */	mtlr r0
/* 800442DC 000410DC  38 21 00 10 */	addi r1, r1, 0x10
/* 800442E0 000410E0  4E 80 00 20 */	blr 
lbl_800442E4:
/* 800442E4 000410E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800442E8 000410E8  7C 08 02 A6 */	mflr r0
/* 800442EC 000410EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800442F0 000410F0  38 05 FF F6 */	addi r0, r5, -10
/* 800442F4 000410F4  28 00 00 10 */	cmplwi r0, 0x10
/* 800442F8 000410F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800442FC 000410FC  7C 9F 23 78 */	mr r31, r4
/* 80044300 00041100  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80044304 00041104  7C DE 33 78 */	mr r30, r6
/* 80044308 00041108  41 81 01 00 */	bgt lbl_80044408
/* 8004430C 0004110C  3C 60 80 29 */	lis r3, lbl_80288C38@ha
/* 80044310 00041110  54 00 10 3A */	slwi r0, r0, 2
/* 80044314 00041114  38 63 8C 38 */	addi r3, r3, lbl_80288C38@l
/* 80044318 00041118  7C 03 00 2E */	lwzx r0, r3, r0
/* 8004431C 0004111C  7C 09 03 A6 */	mtctr r0
/* 80044320 00041120  4E 80 04 20 */	bctr 
/* 80044324 00041124  7F E3 FB 78 */	mr r3, r31
/* 80044328 00041128  4B FF FF 0D */	bl xSFXReset__FP4xSFX
/* 8004432C 0004112C  48 00 00 DC */	b lbl_80044408
/* 80044330 00041130  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80044334 00041134  A0 03 00 08 */	lhz r0, 8(r3)
/* 80044338 00041138  60 00 10 00 */	ori r0, r0, 0x1000
/* 8004433C 0004113C  B0 03 00 08 */	sth r0, 8(r3)
/* 80044340 00041140  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80044344 00041144  A0 03 00 08 */	lhz r0, 8(r3)
/* 80044348 00041148  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 8004434C 0004114C  40 82 00 BC */	bne lbl_80044408
/* 80044350 00041150  7F E3 FB 78 */	mr r3, r31
/* 80044354 00041154  48 00 00 D1 */	bl func_80044424
/* 80044358 00041158  48 00 00 B0 */	b lbl_80044408
/* 8004435C 0004115C  4B FE C9 0D */	bl xrand__Fv
/* 80044360 00041160  3C 80 51 EC */	lis r4, 0x51EB851F@ha
/* 80044364 00041164  3C 00 43 30 */	lis r0, 0x4330
/* 80044368 00041168  38 84 85 1F */	addi r4, r4, 0x51EB851F@l
/* 8004436C 0004116C  90 01 00 08 */	stw r0, 8(r1)
/* 80044370 00041170  7C 04 18 16 */	mulhwu r0, r4, r3
/* 80044374 00041174  C8 42 86 68 */	lfd f2, lbl_803CCFE8-_SDA2_BASE_(r2)
/* 80044378 00041178  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8004437C 0004117C  54 00 D9 7E */	srwi r0, r0, 5
/* 80044380 00041180  1C 00 00 64 */	mulli r0, r0, 0x64
/* 80044384 00041184  7C 00 18 50 */	subf r0, r0, r3
/* 80044388 00041188  90 01 00 0C */	stw r0, 0xc(r1)
/* 8004438C 0004118C  C8 21 00 08 */	lfd f1, 8(r1)
/* 80044390 00041190  EC 21 10 28 */	fsubs f1, f1, f2
/* 80044394 00041194  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80044398 00041198  4C 41 13 82 */	cror 2, 1, 2
/* 8004439C 0004119C  40 82 00 6C */	bne lbl_80044408
/* 800443A0 000411A0  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 800443A4 000411A4  A0 03 00 08 */	lhz r0, 8(r3)
/* 800443A8 000411A8  60 00 10 00 */	ori r0, r0, 0x1000
/* 800443AC 000411AC  B0 03 00 08 */	sth r0, 8(r3)
/* 800443B0 000411B0  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 800443B4 000411B4  A0 03 00 08 */	lhz r0, 8(r3)
/* 800443B8 000411B8  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 800443BC 000411BC  40 82 00 4C */	bne lbl_80044408
/* 800443C0 000411C0  7F E3 FB 78 */	mr r3, r31
/* 800443C4 000411C4  48 00 00 61 */	bl func_80044424
/* 800443C8 000411C8  48 00 00 40 */	b lbl_80044408
/* 800443CC 000411CC  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 800443D0 000411D0  28 00 00 00 */	cmplwi r0, 0
/* 800443D4 000411D4  41 82 00 34 */	beq lbl_80044408
/* 800443D8 000411D8  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 800443DC 000411DC  A0 03 00 08 */	lhz r0, 8(r3)
/* 800443E0 000411E0  70 00 EF FF */	andi. r0, r0, 0xefff
/* 800443E4 000411E4  B0 03 00 08 */	sth r0, 8(r3)
/* 800443E8 000411E8  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 800443EC 000411EC  A0 03 00 08 */	lhz r0, 8(r3)
/* 800443F0 000411F0  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 800443F4 000411F4  40 82 00 14 */	bne lbl_80044408
/* 800443F8 000411F8  7F E3 FB 78 */	mr r3, r31
/* 800443FC 000411FC  48 00 03 45 */	bl func_80044740
/* 80044400 00041200  48 00 00 08 */	b lbl_80044408
lbl_80044404:
/* 80044404 00041204  48 00 00 00 */	b lbl_80044404
lbl_80044408:
/* 80044408 00041208  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8004440C 0004120C  38 60 00 01 */	li r3, 1
/* 80044410 00041210  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80044414 00041214  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80044418 00041218  7C 08 03 A6 */	mtlr r0
/* 8004441C 0004121C  38 21 00 20 */	addi r1, r1, 0x20
/* 80044420 00041220  4E 80 00 20 */	blr 

.global func_80044424
func_80044424:
/* 80044424 00041224  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80044428 00041228  7C 08 02 A6 */	mflr r0
/* 8004442C 0004122C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80044430 00041230  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80044434 00041234  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80044438 00041238  7C 7E 1B 78 */	mr r30, r3
/* 8004443C 0004123C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80044440 00041240  A0 63 00 08 */	lhz r3, 8(r3)
/* 80044444 00041244  4B FF FE 15 */	bl xSFXConvertFlags__FUi
/* 80044448 00041248  81 1E 00 10 */	lwz r8, 0x10(r30)
/* 8004444C 0004124C  7C 7F 1B 78 */	mr r31, r3
/* 80044450 00041250  A0 68 00 08 */	lhz r3, 8(r8)
/* 80044454 00041254  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80044458 00041258  41 82 02 48 */	beq lbl_800446A0
/* 8004445C 0004125C  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 80044460 00041260  41 82 01 CC */	beq lbl_8004462C
/* 80044464 00041264  80 68 00 14 */	lwz r3, 0x14(r8)
/* 80044468 00041268  38 81 00 08 */	addi r4, r1, 8
/* 8004446C 0004126C  48 00 74 F1 */	bl xSTGetAssetInfo__FUiP20st_PKR_ASSET_TOCINFO
/* 80044470 00041270  2C 03 00 00 */	cmpwi r3, 0
/* 80044474 00041274  41 82 02 B4 */	beq lbl_80044728
/* 80044478 00041278  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8004447C 0004127C  80 63 00 00 */	lwz r3, 0(r3)
/* 80044480 00041280  3C 03 B2 AE */	addis r0, r3, 0xb2ae
/* 80044484 00041284  28 00 4B 52 */	cmplwi r0, 0x4b52
/* 80044488 00041288  40 82 00 7C */	bne lbl_80044504
/* 8004448C 0004128C  81 1E 00 10 */	lwz r8, 0x10(r30)
/* 80044490 00041290  3C 60 43 30 */	lis r3, 0x4330
/* 80044494 00041294  90 61 00 20 */	stw r3, 0x20(r1)
/* 80044498 00041298  7F E5 FB 78 */	mr r5, r31
/* 8004449C 0004129C  88 88 00 1A */	lbz r4, 0x1a(r8)
/* 800444A0 000412A0  38 E0 00 00 */	li r7, 0
/* 800444A4 000412A4  A0 08 00 0A */	lhz r0, 0xa(r8)
/* 800444A8 000412A8  90 81 00 24 */	stw r4, 0x24(r1)
/* 800444AC 000412AC  C8 42 86 68 */	lfd f2, lbl_803CCFE8-_SDA2_BASE_(r2)
/* 800444B0 000412B0  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 800444B4 000412B4  C0 02 86 74 */	lfs f0, lbl_803CCFF4-_SDA2_BASE_(r2)
/* 800444B8 000412B8  EC 21 10 28 */	fsubs f1, f1, f2
/* 800444BC 000412BC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 800444C0 000412C0  C0 A2 86 70 */	lfs f5, lbl_803CCFF0-_SDA2_BASE_(r2)
/* 800444C4 000412C4  90 61 00 28 */	stw r3, 0x28(r1)
/* 800444C8 000412C8  EC 81 00 24 */	fdivs f4, f1, f0
/* 800444CC 000412CC  C0 08 00 0C */	lfs f0, 0xc(r8)
/* 800444D0 000412D0  C8 21 00 28 */	lfd f1, 0x28(r1)
/* 800444D4 000412D4  80 68 00 10 */	lwz r3, 0x10(r8)
/* 800444D8 000412D8  88 88 00 19 */	lbz r4, 0x19(r8)
/* 800444DC 000412DC  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 800444E0 000412E0  EC 41 10 28 */	fsubs f2, f1, f2
/* 800444E4 000412E4  C0 68 00 28 */	lfs f3, 0x28(r8)
/* 800444E8 000412E8  EC 25 01 32 */	fmuls f1, f5, f4
/* 800444EC 000412EC  C0 88 00 2C */	lfs f4, 0x2c(r8)
/* 800444F0 000412F0  C0 A2 86 78 */	lfs f5, lbl_803CCFF8-_SDA2_BASE_(r2)
/* 800444F4 000412F4  EC 42 00 32 */	fmuls f2, f2, f0
/* 800444F8 000412F8  48 00 45 9D */	bl xSndPlay3D__FUiffUiUiPC5xVec3ff14sound_categoryf
/* 800444FC 000412FC  90 7E 00 14 */	stw r3, 0x14(r30)
/* 80044500 00041300  48 00 02 28 */	b lbl_80044728
lbl_80044504:
/* 80044504 00041304  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80044508 00041308  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8004450C 0004130C  48 07 05 31 */	bl zSceneFindObject__FUi
/* 80044510 00041310  28 03 00 00 */	cmplwi r3, 0
/* 80044514 00041314  40 82 00 1C */	bne lbl_80044530
/* 80044518 00041318  80 7E 00 00 */	lwz r3, 0(r30)
/* 8004451C 0004131C  48 00 70 C5 */	bl xSTAssetName__FUi
/* 80044520 00041320  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80044524 00041324  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80044528 00041328  48 00 70 B9 */	bl xSTAssetName__FUi
/* 8004452C 0004132C  48 00 01 FC */	b lbl_80044728
lbl_80044530:
/* 80044530 00041330  80 03 00 24 */	lwz r0, 0x24(r3)
/* 80044534 00041334  28 00 00 00 */	cmplwi r0, 0
/* 80044538 00041338  41 82 00 7C */	beq lbl_800445B4
/* 8004453C 0004133C  81 3E 00 10 */	lwz r9, 0x10(r30)
/* 80044540 00041340  3C 80 43 30 */	lis r4, 0x4330
/* 80044544 00041344  90 81 00 28 */	stw r4, 0x28(r1)
/* 80044548 00041348  7F E5 FB 78 */	mr r5, r31
/* 8004454C 0004134C  89 09 00 1A */	lbz r8, 0x1a(r9)
/* 80044550 00041350  7C 66 1B 78 */	mr r6, r3
/* 80044554 00041354  A0 09 00 0A */	lhz r0, 0xa(r9)
/* 80044558 00041358  38 E0 00 00 */	li r7, 0
/* 8004455C 0004135C  91 01 00 2C */	stw r8, 0x2c(r1)
/* 80044560 00041360  C8 42 86 68 */	lfd f2, lbl_803CCFE8-_SDA2_BASE_(r2)
/* 80044564 00041364  C8 21 00 28 */	lfd f1, 0x28(r1)
/* 80044568 00041368  C0 02 86 74 */	lfs f0, lbl_803CCFF4-_SDA2_BASE_(r2)
/* 8004456C 0004136C  EC 21 10 28 */	fsubs f1, f1, f2
/* 80044570 00041370  90 01 00 24 */	stw r0, 0x24(r1)
/* 80044574 00041374  C0 C2 86 70 */	lfs f6, lbl_803CCFF0-_SDA2_BASE_(r2)
/* 80044578 00041378  90 81 00 20 */	stw r4, 0x20(r1)
/* 8004457C 0004137C  EC A1 00 24 */	fdivs f5, f1, f0
/* 80044580 00041380  C0 09 00 0C */	lfs f0, 0xc(r9)
/* 80044584 00041384  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 80044588 00041388  80 69 00 10 */	lwz r3, 0x10(r9)
/* 8004458C 0004138C  88 89 00 19 */	lbz r4, 0x19(r9)
/* 80044590 00041390  C0 69 00 28 */	lfs f3, 0x28(r9)
/* 80044594 00041394  EC 41 10 28 */	fsubs f2, f1, f2
/* 80044598 00041398  C0 89 00 2C */	lfs f4, 0x2c(r9)
/* 8004459C 0004139C  EC 26 01 72 */	fmuls f1, f6, f5
/* 800445A0 000413A0  C0 A2 86 78 */	lfs f5, lbl_803CCFF8-_SDA2_BASE_(r2)
/* 800445A4 000413A4  EC 42 00 32 */	fmuls f2, f2, f0
/* 800445A8 000413A8  48 00 44 BD */	bl xSndPlay3D__FUiffUiUiP4xEntff14sound_categoryf
/* 800445AC 000413AC  90 7E 00 14 */	stw r3, 0x14(r30)
/* 800445B0 000413B0  48 00 01 78 */	b lbl_80044728
lbl_800445B4:
/* 800445B4 000413B4  81 1E 00 10 */	lwz r8, 0x10(r30)
/* 800445B8 000413B8  3C 60 43 30 */	lis r3, 0x4330
/* 800445BC 000413BC  90 61 00 28 */	stw r3, 0x28(r1)
/* 800445C0 000413C0  7F E5 FB 78 */	mr r5, r31
/* 800445C4 000413C4  88 88 00 1A */	lbz r4, 0x1a(r8)
/* 800445C8 000413C8  38 C8 00 1C */	addi r6, r8, 0x1c
/* 800445CC 000413CC  A0 08 00 0A */	lhz r0, 0xa(r8)
/* 800445D0 000413D0  38 E0 00 00 */	li r7, 0
/* 800445D4 000413D4  90 81 00 2C */	stw r4, 0x2c(r1)
/* 800445D8 000413D8  C8 42 86 68 */	lfd f2, lbl_803CCFE8-_SDA2_BASE_(r2)
/* 800445DC 000413DC  C8 21 00 28 */	lfd f1, 0x28(r1)
/* 800445E0 000413E0  C0 02 86 74 */	lfs f0, lbl_803CCFF4-_SDA2_BASE_(r2)
/* 800445E4 000413E4  EC 21 10 28 */	fsubs f1, f1, f2
/* 800445E8 000413E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800445EC 000413EC  C0 C2 86 70 */	lfs f6, lbl_803CCFF0-_SDA2_BASE_(r2)
/* 800445F0 000413F0  90 61 00 20 */	stw r3, 0x20(r1)
/* 800445F4 000413F4  EC A1 00 24 */	fdivs f5, f1, f0
/* 800445F8 000413F8  C0 08 00 0C */	lfs f0, 0xc(r8)
/* 800445FC 000413FC  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 80044600 00041400  80 68 00 10 */	lwz r3, 0x10(r8)
/* 80044604 00041404  88 88 00 19 */	lbz r4, 0x19(r8)
/* 80044608 00041408  C0 68 00 28 */	lfs f3, 0x28(r8)
/* 8004460C 0004140C  EC 41 10 28 */	fsubs f2, f1, f2
/* 80044610 00041410  C0 88 00 2C */	lfs f4, 0x2c(r8)
/* 80044614 00041414  EC 26 01 72 */	fmuls f1, f6, f5
/* 80044618 00041418  C0 A2 86 78 */	lfs f5, lbl_803CCFF8-_SDA2_BASE_(r2)
/* 8004461C 0004141C  EC 42 00 32 */	fmuls f2, f2, f0
/* 80044620 00041420  48 00 44 75 */	bl xSndPlay3D__FUiffUiUiPC5xVec3ff14sound_categoryf
/* 80044624 00041424  90 7E 00 14 */	stw r3, 0x14(r30)
/* 80044628 00041428  48 00 01 00 */	b lbl_80044728
lbl_8004462C:
/* 8004462C 0004142C  88 88 00 1A */	lbz r4, 0x1a(r8)
/* 80044630 00041430  3C 60 43 30 */	lis r3, 0x4330
/* 80044634 00041434  A0 08 00 0A */	lhz r0, 0xa(r8)
/* 80044638 00041438  7F E5 FB 78 */	mr r5, r31
/* 8004463C 0004143C  90 81 00 2C */	stw r4, 0x2c(r1)
/* 80044640 00041440  38 C8 00 1C */	addi r6, r8, 0x1c
/* 80044644 00041444  C8 A2 86 68 */	lfd f5, lbl_803CCFE8-_SDA2_BASE_(r2)
/* 80044648 00041448  38 E0 00 00 */	li r7, 0
/* 8004464C 0004144C  90 61 00 28 */	stw r3, 0x28(r1)
/* 80044650 00041450  C0 22 86 74 */	lfs f1, lbl_803CCFF4-_SDA2_BASE_(r2)
/* 80044654 00041454  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80044658 00041458  90 01 00 24 */	stw r0, 0x24(r1)
/* 8004465C 0004145C  EC 40 28 28 */	fsubs f2, f0, f5
/* 80044660 00041460  C0 E2 86 70 */	lfs f7, lbl_803CCFF0-_SDA2_BASE_(r2)
/* 80044664 00041464  90 61 00 20 */	stw r3, 0x20(r1)
/* 80044668 00041468  C0 08 00 0C */	lfs f0, 0xc(r8)
/* 8004466C 0004146C  EC C2 08 24 */	fdivs f6, f2, f1
/* 80044670 00041470  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 80044674 00041474  80 68 00 10 */	lwz r3, 0x10(r8)
/* 80044678 00041478  88 88 00 19 */	lbz r4, 0x19(r8)
/* 8004467C 0004147C  C0 68 00 28 */	lfs f3, 0x28(r8)
/* 80044680 00041480  C0 88 00 2C */	lfs f4, 0x2c(r8)
/* 80044684 00041484  EC 41 28 28 */	fsubs f2, f1, f5
/* 80044688 00041488  C0 A2 86 78 */	lfs f5, lbl_803CCFF8-_SDA2_BASE_(r2)
/* 8004468C 0004148C  EC 27 01 B2 */	fmuls f1, f7, f6
/* 80044690 00041490  EC 42 00 32 */	fmuls f2, f2, f0
/* 80044694 00041494  48 00 44 01 */	bl xSndPlay3D__FUiffUiUiPC5xVec3ff14sound_categoryf
/* 80044698 00041498  90 7E 00 14 */	stw r3, 0x14(r30)
/* 8004469C 0004149C  48 00 00 8C */	b lbl_80044728
lbl_800446A0:
/* 800446A0 000414A0  88 88 00 1A */	lbz r4, 0x1a(r8)
/* 800446A4 000414A4  3C 60 43 30 */	lis r3, 0x4330
/* 800446A8 000414A8  A0 08 00 0A */	lhz r0, 0xa(r8)
/* 800446AC 000414AC  7F E5 FB 78 */	mr r5, r31
/* 800446B0 000414B0  90 81 00 2C */	stw r4, 0x2c(r1)
/* 800446B4 000414B4  38 C0 00 00 */	li r6, 0
/* 800446B8 000414B8  C8 A2 86 68 */	lfd f5, lbl_803CCFE8-_SDA2_BASE_(r2)
/* 800446BC 000414BC  38 E0 00 00 */	li r7, 0
/* 800446C0 000414C0  90 61 00 28 */	stw r3, 0x28(r1)
/* 800446C4 000414C4  C0 22 86 74 */	lfs f1, lbl_803CCFF4-_SDA2_BASE_(r2)
/* 800446C8 000414C8  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 800446CC 000414CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800446D0 000414D0  EC 40 28 28 */	fsubs f2, f0, f5
/* 800446D4 000414D4  C0 C2 86 70 */	lfs f6, lbl_803CCFF0-_SDA2_BASE_(r2)
/* 800446D8 000414D8  90 61 00 20 */	stw r3, 0x20(r1)
/* 800446DC 000414DC  C0 08 00 0C */	lfs f0, 0xc(r8)
/* 800446E0 000414E0  EC 82 08 24 */	fdivs f4, f2, f1
/* 800446E4 000414E4  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 800446E8 000414E8  80 68 00 10 */	lwz r3, 0x10(r8)
/* 800446EC 000414EC  88 88 00 19 */	lbz r4, 0x19(r8)
/* 800446F0 000414F0  C0 62 86 78 */	lfs f3, lbl_803CCFF8-_SDA2_BASE_(r2)
/* 800446F4 000414F4  EC 41 28 28 */	fsubs f2, f1, f5
/* 800446F8 000414F8  EC 26 01 32 */	fmuls f1, f6, f4
/* 800446FC 000414FC  EC 42 00 32 */	fmuls f2, f2, f0
/* 80044700 00041500  48 00 43 2D */	bl xSndPlay__FUiffUiUiUi14sound_categoryf
/* 80044704 00041504  90 7E 00 14 */	stw r3, 0x14(r30)
/* 80044708 00041508  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8004470C 0004150C  A0 03 00 08 */	lhz r0, 8(r3)
/* 80044710 00041510  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 80044714 00041514  41 82 00 14 */	beq lbl_80044728
/* 80044718 00041518  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8004471C 0004151C  28 03 00 00 */	cmplwi r3, 0
/* 80044720 00041520  41 82 00 08 */	beq lbl_80044728
/* 80044724 00041524  48 03 CB F5 */	bl zEntPlayer_SNDNotifyPlaying__FUi
lbl_80044728:
/* 80044728 00041528  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8004472C 0004152C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80044730 00041530  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80044734 00041534  7C 08 03 A6 */	mtlr r0
/* 80044738 00041538  38 21 00 40 */	addi r1, r1, 0x40
/* 8004473C 0004153C  4E 80 00 20 */	blr 

.global func_80044740
func_80044740:
/* 80044740 00041540  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80044744 00041544  7C 08 02 A6 */	mflr r0
/* 80044748 00041548  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004474C 0004154C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80044750 00041550  7C 7F 1B 78 */	mr r31, r3
/* 80044754 00041554  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80044758 00041558  48 00 4A A9 */	bl xSndStop__FUi
/* 8004475C 0004155C  38 00 00 00 */	li r0, 0
/* 80044760 00041560  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80044764 00041564  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80044768 00041568  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8004476C 0004156C  7C 08 03 A6 */	mtlr r0
/* 80044770 00041570  38 21 00 10 */	addi r1, r1, 0x10
/* 80044774 00041574  4E 80 00 20 */	blr 
