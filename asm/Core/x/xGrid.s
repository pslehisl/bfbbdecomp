.include "macros.inc"

.if 0

.section .text  # 0x80121E0C - 0x80122C04

.global xGridInit__FP5xGridPC4xBoxUsUsUc
xGridInit__FP5xGridPC4xBoxUsUsUc:
/* 80121E40 0011EC40  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80121E44 0011EC44  7C 08 02 A6 */	mflr r0
/* 80121E48 0011EC48  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 80121E4C 0011EC4C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80121E50 0011EC50  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 80121E54 0011EC54  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 80121E58 0011EC58  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80121E5C 0011EC5C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80121E60 0011EC60  7C BE 2B 78 */	mr r30, r5
/* 80121E64 0011EC64  54 A5 04 3E */	clrlwi r5, r5, 0x10
/* 80121E68 0011EC68  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80121E6C 0011EC6C  7C 7D 1B 78 */	mr r29, r3
/* 80121E70 0011EC70  3C 60 43 30 */	lis r3, 0x4330
/* 80121E74 0011EC74  98 FD 00 00 */	stb r7, 0(r29)
/* 80121E78 0011EC78  B3 DD 00 04 */	sth r30, 4(r29)
/* 80121E7C 0011EC7C  B0 DD 00 06 */	sth r6, 6(r29)
/* 80121E80 0011EC80  D0 3D 00 08 */	stfs f1, 8(r29)
/* 80121E84 0011EC84  C0 24 00 00 */	lfs f1, 0(r4)
/* 80121E88 0011EC88  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 80121E8C 0011EC8C  C0 04 00 08 */	lfs f0, 8(r4)
/* 80121E90 0011EC90  D0 3D 00 10 */	stfs f1, 0x10(r29)
/* 80121E94 0011EC94  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 80121E98 0011EC98  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80121E9C 0011EC9C  C0 7D 00 10 */	lfs f3, 0x10(r29)
/* 80121EA0 0011ECA0  90 61 00 08 */	stw r3, 8(r1)
/* 80121EA4 0011ECA4  C0 5D 00 08 */	lfs f2, 8(r29)
/* 80121EA8 0011ECA8  C8 22 A0 A0 */	lfd f1, xGrid_itof_value-_SDA2_BASE_(r2)
/* 80121EAC 0011ECAC  EC 83 10 28 */	fsubs f4, f3, f2
/* 80121EB0 0011ECB0  C8 01 00 08 */	lfd f0, 8(r1)
/* 80121EB4 0011ECB4  C0 7D 00 14 */	lfs f3, 0x14(r29)
/* 80121EB8 0011ECB8  EC 20 08 28 */	fsubs f1, f0, f1
/* 80121EBC 0011ECBC  C0 5D 00 0C */	lfs f2, 0xc(r29)
/* 80121EC0 0011ECC0  FC 00 22 10 */	fabs f0, f4
/* 80121EC4 0011ECC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80121EC8 0011ECC8  EC 63 10 28 */	fsubs f3, f3, f2
/* 80121ECC 0011ECCC  EC 24 08 24 */	fdivs f1, f4, f1
/* 80121ED0 0011ECD0  90 61 00 10 */	stw r3, 0x10(r1)
/* 80121ED4 0011ECD4  C8 41 00 10 */	lfd f2, 0x10(r1)
/* 80121ED8 0011ECD8  D0 3D 00 18 */	stfs f1, 0x18(r29)
/* 80121EDC 0011ECDC  FC 20 00 18 */	frsp f1, f0
/* 80121EE0 0011ECE0  C8 02 A0 A0 */	lfd f0, xGrid_itof_value-_SDA2_BASE_(r2)
/* 80121EE4 0011ECE4  EC 02 00 28 */	fsubs f0, f2, f0
/* 80121EE8 0011ECE8  EC 03 00 24 */	fdivs f0, f3, f0
/* 80121EEC 0011ECEC  D0 1D 00 1C */	stfs f0, 0x1c(r29)
/* 80121EF0 0011ECF0  C0 02 A0 90 */	lfs f0, xGrid_float_0p001-_SDA2_BASE_(r2)
/* 80121EF4 0011ECF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80121EF8 0011ECF8  4C 40 13 82 */	cror 2, 0, 2
/* 80121EFC 0011ECFC  40 82 00 10 */	bne lbl_80121F0C
/* 80121F00 0011ED00  C0 02 A0 94 */	lfs f0, xGrid_float_one-_SDA2_BASE_(r2)
/* 80121F04 0011ED04  D0 1D 00 20 */	stfs f0, 0x20(r29)
/* 80121F08 0011ED08  48 00 00 20 */	b lbl_80121F28
lbl_80121F0C:
/* 80121F0C 0011ED0C  90 A1 00 14 */	stw r5, 0x14(r1)
/* 80121F10 0011ED10  C8 22 A0 A0 */	lfd f1, xGrid_itof_value-_SDA2_BASE_(r2)
/* 80121F14 0011ED14  90 61 00 10 */	stw r3, 0x10(r1)
/* 80121F18 0011ED18  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80121F1C 0011ED1C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80121F20 0011ED20  EC 00 20 24 */	fdivs f0, f0, f4
/* 80121F24 0011ED24  D0 1D 00 20 */	stfs f0, 0x20(r29)
lbl_80121F28:
/* 80121F28 0011ED28  FC 20 1A 10 */	fabs f1, f3
/* 80121F2C 0011ED2C  C0 02 A0 90 */	lfs f0, xGrid_float_0p001-_SDA2_BASE_(r2)
/* 80121F30 0011ED30  FC 20 08 18 */	frsp f1, f1
/* 80121F34 0011ED34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80121F38 0011ED38  4C 40 13 82 */	cror 2, 0, 2
/* 80121F3C 0011ED3C  40 82 00 10 */	bne lbl_80121F4C
/* 80121F40 0011ED40  C0 02 A0 94 */	lfs f0, xGrid_float_one-_SDA2_BASE_(r2)
/* 80121F44 0011ED44  D0 1D 00 24 */	stfs f0, 0x24(r29)
/* 80121F48 0011ED48  48 00 00 28 */	b lbl_80121F70
lbl_80121F4C:
/* 80121F4C 0011ED4C  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80121F50 0011ED50  3C 00 43 30 */	lis r0, 0x4330
/* 80121F54 0011ED54  90 61 00 14 */	stw r3, 0x14(r1)
/* 80121F58 0011ED58  C8 22 A0 A0 */	lfd f1, xGrid_itof_value-_SDA2_BASE_(r2)
/* 80121F5C 0011ED5C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80121F60 0011ED60  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80121F64 0011ED64  EC 00 08 28 */	fsubs f0, f0, f1
/* 80121F68 0011ED68  EC 00 18 24 */	fdivs f0, f0, f3
/* 80121F6C 0011ED6C  D0 1D 00 24 */	stfs f0, 0x24(r29)
lbl_80121F70:
/* 80121F70 0011ED70  C0 3D 00 18 */	lfs f1, 0x18(r29)
/* 80121F74 0011ED74  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 80121F78 0011ED78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80121F7C 0011ED7C  40 80 00 08 */	bge lbl_80121F84
/* 80121F80 0011ED80  48 00 00 08 */	b lbl_80121F88
lbl_80121F84:
/* 80121F84 0011ED84  FC 20 00 90 */	fmr f1, f0
lbl_80121F88:
/* 80121F88 0011ED88  C0 02 A0 98 */	lfs f0, xGrid_float_one_quarter-_SDA2_BASE_(r2)
/* 80121F8C 0011ED8C  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 80121F90 0011ED90  54 DF 04 3E */	clrlwi r31, r6, 0x10
/* 80121F94 0011ED94  38 A0 00 00 */	li r5, 0
/* 80121F98 0011ED98  EC 00 00 72 */	fmuls f0, f0, f1
/* 80121F9C 0011ED9C  7C 00 F9 D6 */	mullw r0, r0, r31
/* 80121FA0 0011EDA0  D0 1D 00 28 */	stfs f0, 0x28(r29)
/* 80121FA4 0011EDA4  80 6D 89 E0 */	lwz r3, gActiveHeap-_SDA_BASE_(r13)
/* 80121FA8 0011EDA8  54 04 10 3A */	slwi r4, r0, 2
/* 80121FAC 0011EDAC  4B F1 19 95 */	bl xMemAlloc__FUiUii
/* 80121FB0 0011EDB0  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 80121FB4 0011EDB4  90 7D 00 2C */	stw r3, 0x2c(r29)
/* 80121FB8 0011EDB8  7C 00 F9 D6 */	mullw r0, r0, r31
/* 80121FBC 0011EDBC  38 80 00 00 */	li r4, 0
/* 80121FC0 0011EDC0  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 80121FC4 0011EDC4  54 05 10 3A */	slwi r5, r0, 2
/* 80121FC8 0011EDC8  4B EE 14 91 */	bl memset
/* 80121FCC 0011EDCC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80121FD0 0011EDD0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80121FD4 0011EDD4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80121FD8 0011EDD8  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80121FDC 0011EDDC  7C 08 03 A6 */	mtlr r0
/* 80121FE0 0011EDE0  38 21 00 30 */	addi r1, r1, 0x30
/* 80121FE4 0011EDE4  4E 80 00 20 */	blr 

.global xGridAdd__FP5xGridP4xEnt
xGridAdd__FP5xGridP4xEnt:
/* 8012219C 0011EF9C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801221A0 0011EFA0  7C 08 02 A6 */	mflr r0
/* 801221A4 0011EFA4  90 01 00 64 */	stw r0, 0x64(r1)
/* 801221A8 0011EFA8  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 801221AC 0011EFAC  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 801221B0 0011EFB0  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 801221B4 0011EFB4  93 C1 00 48 */	stw r30, 0x48(r1)
/* 801221B8 0011EFB8  93 A1 00 44 */	stw r29, 0x44(r1)
/* 801221BC 0011EFBC  93 81 00 40 */	stw r28, 0x40(r1)
/* 801221C0 0011EFC0  7C 9F 23 78 */	mr r31, r4
/* 801221C4 0011EFC4  7C 7E 1B 78 */	mr r30, r3
/* 801221C8 0011EFC8  88 04 00 84 */	lbz r0, 0x84(r4)
/* 801221CC 0011EFCC  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 801221D0 0011EFD0  28 00 00 01 */	cmplwi r0, 1
/* 801221D4 0011EFD4  40 82 00 3C */	bne lbl_80122210
/* 801221D8 0011EFD8  38 7F 00 88 */	addi r3, r31, 0x88
/* 801221DC 0011EFDC  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 801221E0 0011EFE0  7C 64 1B 78 */	mr r4, r3
/* 801221E4 0011EFE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801221E8 0011EFE8  4C 41 13 82 */	cror 2, 1, 2
/* 801221EC 0011EFEC  40 82 01 78 */	bne lbl_80122364
/* 801221F0 0011EFF0  38 7E 00 30 */	addi r3, r30, 0x30
/* 801221F4 0011EFF4  38 9F 00 50 */	addi r4, r31, 0x50
/* 801221F8 0011EFF8  4B FF FE E9 */	bl xGridAddToCell__FPP10xGridBoundP10xGridBound
/* 801221FC 0011EFFC  2C 03 00 00 */	cmpwi r3, 0
/* 80122200 0011F000  41 82 02 AC */	beq lbl_801224AC
/* 80122204 0011F004  88 1E 00 00 */	lbz r0, 0(r30)
/* 80122208 0011F008  98 1F 00 58 */	stb r0, 0x58(r31)
/* 8012220C 0011F00C  48 00 02 A0 */	b lbl_801224AC
lbl_80122210:
/* 80122210 0011F010  28 00 00 04 */	cmplwi r0, 4
/* 80122214 0011F014  40 82 00 E0 */	bne lbl_801222F4
/* 80122218 0011F018  80 7F 00 AC */	lwz r3, 0xac(r31)
/* 8012221C 0011F01C  38 9F 00 88 */	addi r4, r31, 0x88
/* 80122220 0011F020  C0 22 A0 A8 */	lfs f1, xGrid_float_four-_SDA2_BASE_(r2)
/* 80122224 0011F024  C0 63 00 10 */	lfs f3, 0x10(r3)
/* 80122228 0011F028  C0 43 00 14 */	lfs f2, 0x14(r3)
/* 8012222C 0011F02C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80122230 0011F030  EC 63 00 F2 */	fmuls f3, f3, f3
/* 80122234 0011F034  C0 C3 00 00 */	lfs f6, 0(r3)
/* 80122238 0011F038  EC 42 00 B2 */	fmuls f2, f2, f2
/* 8012223C 0011F03C  C1 03 00 18 */	lfs f8, 0x18(r3)
/* 80122240 0011F040  C0 A3 00 04 */	lfs f5, 4(r3)
/* 80122244 0011F044  C0 FF 00 98 */	lfs f7, 0x98(r31)
/* 80122248 0011F048  C0 9F 00 A4 */	lfs f4, 0xa4(r31)
/* 8012224C 0011F04C  EC 43 10 2A */	fadds f2, f3, f2
/* 80122250 0011F050  C1 23 00 20 */	lfs f9, 0x20(r3)
/* 80122254 0011F054  EC C6 01 B2 */	fmuls f6, f6, f6
/* 80122258 0011F058  EF E7 20 28 */	fsubs f31, f7, f4
/* 8012225C 0011F05C  C0 7F 00 A0 */	lfs f3, 0xa0(r31)
/* 80122260 0011F060  EC 88 02 32 */	fmuls f4, f8, f8
/* 80122264 0011F064  C1 1F 00 94 */	lfs f8, 0x94(r31)
/* 80122268 0011F068  EC A5 01 72 */	fmuls f5, f5, f5
/* 8012226C 0011F06C  C1 63 00 24 */	lfs f11, 0x24(r3)
/* 80122270 0011F070  ED A8 18 28 */	fsubs f13, f8, f3
/* 80122274 0011F074  C1 43 00 08 */	lfs f10, 8(r3)
/* 80122278 0011F078  EC A6 28 2A */	fadds f5, f6, f5
/* 8012227C 0011F07C  C0 FF 00 9C */	lfs f7, 0x9c(r31)
/* 80122280 0011F080  C0 7F 00 A8 */	lfs f3, 0xa8(r31)
/* 80122284 0011F084  ED 0B 02 F2 */	fmuls f8, f11, f11
/* 80122288 0011F088  ED 67 18 28 */	fsubs f11, f7, f3
/* 8012228C 0011F08C  C1 83 00 28 */	lfs f12, 0x28(r3)
/* 80122290 0011F090  ED 29 02 72 */	fmuls f9, f9, f9
/* 80122294 0011F094  EC EA 02 B2 */	fmuls f7, f10, f10
/* 80122298 0011F098  EC 44 10 2A */	fadds f2, f4, f2
/* 8012229C 0011F09C  EC 7F 07 F2 */	fmuls f3, f31, f31
/* 801222A0 0011F0A0  EC 87 28 2A */	fadds f4, f7, f5
/* 801222A4 0011F0A4  ED 4C 03 32 */	fmuls f10, f12, f12
/* 801222A8 0011F0A8  ED 09 40 2A */	fadds f8, f9, f8
/* 801222AC 0011F0AC  EC 43 00 B2 */	fmuls f2, f3, f2
/* 801222B0 0011F0B0  EC CD 03 72 */	fmuls f6, f13, f13
/* 801222B4 0011F0B4  EC AB 02 F2 */	fmuls f5, f11, f11
/* 801222B8 0011F0B8  EC 6A 40 2A */	fadds f3, f10, f8
/* 801222BC 0011F0BC  EC 46 11 3A */	fmadds f2, f6, f4, f2
/* 801222C0 0011F0C0  EC 01 00 32 */	fmuls f0, f1, f0
/* 801222C4 0011F0C4  EC 25 10 FA */	fmadds f1, f5, f3, f2
/* 801222C8 0011F0C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801222CC 0011F0CC  4C 41 13 82 */	cror 2, 1, 2
/* 801222D0 0011F0D0  40 82 00 94 */	bne lbl_80122364
/* 801222D4 0011F0D4  38 7E 00 30 */	addi r3, r30, 0x30
/* 801222D8 0011F0D8  38 9F 00 50 */	addi r4, r31, 0x50
/* 801222DC 0011F0DC  4B FF FE 05 */	bl xGridAddToCell__FPP10xGridBoundP10xGridBound
/* 801222E0 0011F0E0  2C 03 00 00 */	cmpwi r3, 0
/* 801222E4 0011F0E4  41 82 01 C8 */	beq lbl_801224AC
/* 801222E8 0011F0E8  88 1E 00 00 */	lbz r0, 0(r30)
/* 801222EC 0011F0EC  98 1F 00 58 */	stb r0, 0x58(r31)
/* 801222F0 0011F0F0  48 00 01 BC */	b lbl_801224AC
lbl_801222F4:
/* 801222F4 0011F0F4  28 00 00 02 */	cmplwi r0, 2
/* 801222F8 0011F0F8  40 82 00 64 */	bne lbl_8012235C
/* 801222FC 0011F0FC  38 7F 00 88 */	addi r3, r31, 0x88
/* 80122300 0011F100  C0 22 A0 A8 */	lfs f1, xGrid_float_four-_SDA2_BASE_(r2)
/* 80122304 0011F104  C0 7F 00 9C */	lfs f3, 0x9c(r31)
/* 80122308 0011F108  7C 64 1B 78 */	mr r4, r3
/* 8012230C 0011F10C  C0 5F 00 A8 */	lfs f2, 0xa8(r31)
/* 80122310 0011F110  EC 21 00 32 */	fmuls f1, f1, f0
/* 80122314 0011F114  C0 9F 00 94 */	lfs f4, 0x94(r31)
/* 80122318 0011F118  EC 63 10 28 */	fsubs f3, f3, f2
/* 8012231C 0011F11C  C0 5F 00 A0 */	lfs f2, 0xa0(r31)
/* 80122320 0011F120  EC 01 00 32 */	fmuls f0, f1, f0
/* 80122324 0011F124  EC 44 10 28 */	fsubs f2, f4, f2
/* 80122328 0011F128  EC 23 00 F2 */	fmuls f1, f3, f3
/* 8012232C 0011F12C  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 80122330 0011F130  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80122334 0011F134  4C 41 13 82 */	cror 2, 1, 2
/* 80122338 0011F138  40 82 00 2C */	bne lbl_80122364
/* 8012233C 0011F13C  38 7E 00 30 */	addi r3, r30, 0x30
/* 80122340 0011F140  38 9F 00 50 */	addi r4, r31, 0x50
/* 80122344 0011F144  4B FF FD 9D */	bl xGridAddToCell__FPP10xGridBoundP10xGridBound
/* 80122348 0011F148  2C 03 00 00 */	cmpwi r3, 0
/* 8012234C 0011F14C  41 82 01 60 */	beq lbl_801224AC
/* 80122350 0011F150  88 1E 00 00 */	lbz r0, 0(r30)
/* 80122354 0011F154  98 1F 00 58 */	stb r0, 0x58(r31)
/* 80122358 0011F158  48 00 01 54 */	b lbl_801224AC
lbl_8012235C:
/* 8012235C 0011F15C  38 60 00 00 */	li r3, 0
/* 80122360 0011F160  48 00 01 4C */	b lbl_801224AC
lbl_80122364:
/* 80122364 0011F164  C0 64 00 00 */	lfs f3, 0(r4)
/* 80122368 0011F168  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8012236C 0011F16C  C0 44 00 08 */	lfs f2, 8(r4)
/* 80122370 0011F170  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80122374 0011F174  EC 63 08 28 */	fsubs f3, f3, f1
/* 80122378 0011F178  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 8012237C 0011F17C  EC 82 00 28 */	fsubs f4, f2, f0
/* 80122380 0011F180  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 80122384 0011F184  EC 63 00 72 */	fmuls f3, f3, f1
/* 80122388 0011F188  C0 42 A0 AC */	lfs f2, xGrid_float_zero-_SDA2_BASE_(r2)
/* 8012238C 0011F18C  EC 84 00 32 */	fmuls f4, f4, f0
/* 80122390 0011F190  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 80122394 0011F194  40 81 00 08 */	ble lbl_8012239C
/* 80122398 0011F198  48 00 00 08 */	b lbl_801223A0
lbl_8012239C:
/* 8012239C 0011F19C  FC 40 18 90 */	fmr f2, f3
lbl_801223A0:
/* 801223A0 0011F1A0  A0 7E 00 04 */	lhz r3, 4(r30)
/* 801223A4 0011F1A4  3C 00 43 30 */	lis r0, 0x4330
/* 801223A8 0011F1A8  90 01 00 08 */	stw r0, 8(r1)
/* 801223AC 0011F1AC  38 63 FF FF */	addi r3, r3, -1
/* 801223B0 0011F1B0  C8 22 A0 B0 */	lfd f1, lbl_803CEA30-_SDA2_BASE_(r2)
/* 801223B4 0011F1B4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 801223B8 0011F1B8  90 61 00 0C */	stw r3, 0xc(r1)
/* 801223BC 0011F1BC  C8 01 00 08 */	lfd f0, 8(r1)
/* 801223C0 0011F1C0  EC 00 08 28 */	fsubs f0, f0, f1
/* 801223C4 0011F1C4  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 801223C8 0011F1C8  40 80 00 18 */	bge lbl_801223E0
/* 801223CC 0011F1CC  90 61 00 14 */	stw r3, 0x14(r1)
/* 801223D0 0011F1D0  90 01 00 10 */	stw r0, 0x10(r1)
/* 801223D4 0011F1D4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801223D8 0011F1D8  EC 00 08 28 */	fsubs f0, f0, f1
/* 801223DC 0011F1DC  48 00 00 18 */	b lbl_801223F4
lbl_801223E0:
/* 801223E0 0011F1E0  C0 02 A0 AC */	lfs f0, xGrid_float_zero-_SDA2_BASE_(r2)
/* 801223E4 0011F1E4  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 801223E8 0011F1E8  40 81 00 08 */	ble lbl_801223F0
/* 801223EC 0011F1EC  48 00 00 08 */	b lbl_801223F4
lbl_801223F0:
/* 801223F0 0011F1F0  FC 00 18 90 */	fmr f0, f3
lbl_801223F4:
/* 801223F4 0011F1F4  FC 00 00 1E */	fctiwz f0, f0
/* 801223F8 0011F1F8  C0 42 A0 AC */	lfs f2, xGrid_float_zero-_SDA2_BASE_(r2)
/* 801223FC 0011F1FC  FC 02 20 40 */	fcmpo cr0, f2, f4
/* 80122400 0011F200  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80122404 0011F204  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 80122408 0011F208  40 81 00 08 */	ble lbl_80122410
/* 8012240C 0011F20C  48 00 00 08 */	b lbl_80122414
lbl_80122410:
/* 80122410 0011F210  FC 40 20 90 */	fmr f2, f4
lbl_80122414:
/* 80122414 0011F214  A0 7E 00 06 */	lhz r3, 6(r30)
/* 80122418 0011F218  3C 00 43 30 */	lis r0, 0x4330
/* 8012241C 0011F21C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80122420 0011F220  38 63 FF FF */	addi r3, r3, -1
/* 80122424 0011F224  C8 22 A0 B0 */	lfd f1, lbl_803CEA30-_SDA2_BASE_(r2)
/* 80122428 0011F228  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8012242C 0011F22C  90 61 00 24 */	stw r3, 0x24(r1)
/* 80122430 0011F230  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80122434 0011F234  EC 00 08 28 */	fsubs f0, f0, f1
/* 80122438 0011F238  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8012243C 0011F23C  40 80 00 18 */	bge lbl_80122454
/* 80122440 0011F240  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80122444 0011F244  90 01 00 28 */	stw r0, 0x28(r1)
/* 80122448 0011F248  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8012244C 0011F24C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80122450 0011F250  48 00 00 18 */	b lbl_80122468
lbl_80122454:
/* 80122454 0011F254  C0 02 A0 AC */	lfs f0, xGrid_float_zero-_SDA2_BASE_(r2)
/* 80122458 0011F258  FC 00 20 40 */	fcmpo cr0, f0, f4
/* 8012245C 0011F25C  40 81 00 08 */	ble lbl_80122464
/* 80122460 0011F260  48 00 00 08 */	b lbl_80122468
lbl_80122464:
/* 80122464 0011F264  FC 00 20 90 */	fmr f0, f4
lbl_80122468:
/* 80122468 0011F268  FC 00 00 1E */	fctiwz f0, f0
/* 8012246C 0011F26C  7F C3 F3 78 */	mr r3, r30
/* 80122470 0011F270  7F A5 EB 78 */	mr r5, r29
/* 80122474 0011F274  38 9F 00 50 */	addi r4, r31, 0x50
/* 80122478 0011F278  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8012247C 0011F27C  83 81 00 34 */	lwz r28, 0x34(r1)
/* 80122480 0011F280  7F 86 E3 78 */	mr r6, r28
/* 80122484 0011F284  4B FF FC DD */	bl xGridAdd__FP5xGridP10xGridBoundii
/* 80122488 0011F288  2C 03 00 00 */	cmpwi r3, 0
/* 8012248C 0011F28C  41 82 00 1C */	beq lbl_801224A8
/* 80122490 0011F290  B3 BF 00 54 */	sth r29, 0x54(r31)
/* 80122494 0011F294  38 60 00 01 */	li r3, 1
/* 80122498 0011F298  B3 9F 00 56 */	sth r28, 0x56(r31)
/* 8012249C 0011F29C  88 1E 00 00 */	lbz r0, 0(r30)
/* 801224A0 0011F2A0  98 1F 00 58 */	stb r0, 0x58(r31)
/* 801224A4 0011F2A4  48 00 00 08 */	b lbl_801224AC
lbl_801224A8:
/* 801224A8 0011F2A8  38 60 00 00 */	li r3, 0
lbl_801224AC:
/* 801224AC 0011F2AC  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 801224B0 0011F2B0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801224B4 0011F2B4  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 801224B8 0011F2B8  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 801224BC 0011F2BC  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 801224C0 0011F2C0  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 801224C4 0011F2C4  83 81 00 40 */	lwz r28, 0x40(r1)
/* 801224C8 0011F2C8  7C 08 03 A6 */	mtlr r0
/* 801224CC 0011F2CC  38 21 00 60 */	addi r1, r1, 0x60
/* 801224D0 0011F2D0  4E 80 00 20 */	blr 

.global xGridGetCell__FP5xGridfffRiRi
xGridGetCell__FP5xGridfffRiRi:
/* 80122694 0011F494  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80122698 0011F498  C0 43 00 08 */	lfs f2, 8(r3)
/* 8012269C 0011F49C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 801226A0 0011F4A0  EC 81 10 28 */	fsubs f4, f1, f2
/* 801226A4 0011F4A4  C0 23 00 20 */	lfs f1, 0x20(r3)
/* 801226A8 0011F4A8  EC 63 00 28 */	fsubs f3, f3, f0
/* 801226AC 0011F4AC  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 801226B0 0011F4B0  C0 42 A0 AC */	lfs f2, xGrid_float_zero-_SDA2_BASE_(r2)
/* 801226B4 0011F4B4  EC 84 00 72 */	fmuls f4, f4, f1
/* 801226B8 0011F4B8  EC 63 00 32 */	fmuls f3, f3, f0
/* 801226BC 0011F4BC  FC 02 20 40 */	fcmpo cr0, f2, f4
/* 801226C0 0011F4C0  40 81 00 08 */	ble lbl_801226C8
/* 801226C4 0011F4C4  48 00 00 08 */	b lbl_801226CC
lbl_801226C8:
/* 801226C8 0011F4C8  FC 40 20 90 */	fmr f2, f4
lbl_801226CC:
/* 801226CC 0011F4CC  A0 C3 00 04 */	lhz r6, 4(r3)
/* 801226D0 0011F4D0  3C 00 43 30 */	lis r0, 0x4330
/* 801226D4 0011F4D4  90 01 00 08 */	stw r0, 8(r1)
/* 801226D8 0011F4D8  38 C6 FF FF */	addi r6, r6, -1
/* 801226DC 0011F4DC  C8 22 A0 B0 */	lfd f1, lbl_803CEA30-_SDA2_BASE_(r2)
/* 801226E0 0011F4E0  6C C6 80 00 */	xoris r6, r6, 0x8000
/* 801226E4 0011F4E4  90 C1 00 0C */	stw r6, 0xc(r1)
/* 801226E8 0011F4E8  C8 01 00 08 */	lfd f0, 8(r1)
/* 801226EC 0011F4EC  EC 00 08 28 */	fsubs f0, f0, f1
/* 801226F0 0011F4F0  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 801226F4 0011F4F4  40 80 00 18 */	bge lbl_8012270C
/* 801226F8 0011F4F8  90 C1 00 14 */	stw r6, 0x14(r1)
/* 801226FC 0011F4FC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80122700 0011F500  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80122704 0011F504  EC 00 08 28 */	fsubs f0, f0, f1
/* 80122708 0011F508  48 00 00 18 */	b lbl_80122720
lbl_8012270C:
/* 8012270C 0011F50C  C0 02 A0 AC */	lfs f0, xGrid_float_zero-_SDA2_BASE_(r2)
/* 80122710 0011F510  FC 00 20 40 */	fcmpo cr0, f0, f4
/* 80122714 0011F514  40 81 00 08 */	ble lbl_8012271C
/* 80122718 0011F518  48 00 00 08 */	b lbl_80122720
lbl_8012271C:
/* 8012271C 0011F51C  FC 00 20 90 */	fmr f0, f4
lbl_80122720:
/* 80122720 0011F520  FC 00 00 1E */	fctiwz f0, f0
/* 80122724 0011F524  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80122728 0011F528  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8012272C 0011F52C  90 04 00 00 */	stw r0, 0(r4)
/* 80122730 0011F530  C0 42 A0 AC */	lfs f2, xGrid_float_zero-_SDA2_BASE_(r2)
/* 80122734 0011F534  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 80122738 0011F538  40 81 00 08 */	ble lbl_80122740
/* 8012273C 0011F53C  48 00 00 08 */	b lbl_80122744
lbl_80122740:
/* 80122740 0011F540  FC 40 18 90 */	fmr f2, f3
lbl_80122744:
/* 80122744 0011F544  A0 63 00 06 */	lhz r3, 6(r3)
/* 80122748 0011F548  3C 00 43 30 */	lis r0, 0x4330
/* 8012274C 0011F54C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80122750 0011F550  38 63 FF FF */	addi r3, r3, -1
/* 80122754 0011F554  C8 22 A0 B0 */	lfd f1, lbl_803CEA30-_SDA2_BASE_(r2)
/* 80122758 0011F558  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8012275C 0011F55C  90 61 00 24 */	stw r3, 0x24(r1)
/* 80122760 0011F560  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80122764 0011F564  EC 00 08 28 */	fsubs f0, f0, f1
/* 80122768 0011F568  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8012276C 0011F56C  40 80 00 18 */	bge lbl_80122784
/* 80122770 0011F570  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80122774 0011F574  90 01 00 28 */	stw r0, 0x28(r1)
/* 80122778 0011F578  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8012277C 0011F57C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80122780 0011F580  48 00 00 18 */	b lbl_80122798
lbl_80122784:
/* 80122784 0011F584  C0 02 A0 AC */	lfs f0, xGrid_float_zero-_SDA2_BASE_(r2)
/* 80122788 0011F588  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 8012278C 0011F58C  40 81 00 08 */	ble lbl_80122794
/* 80122790 0011F590  48 00 00 08 */	b lbl_80122798
lbl_80122794:
/* 80122794 0011F594  FC 00 18 90 */	fmr f0, f3
lbl_80122798:
/* 80122798 0011F598  FC 00 00 1E */	fctiwz f0, f0
/* 8012279C 0011F59C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 801227A0 0011F5A0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801227A4 0011F5A4  90 05 00 00 */	stw r0, 0(r5)
/* 801227A8 0011F5A8  38 21 00 40 */	addi r1, r1, 0x40
/* 801227AC 0011F5AC  4E 80 00 20 */	blr 

.global xGridEntIsTooBig__FP5xGridPC4xEnt
xGridEntIsTooBig__FP5xGridPC4xEnt:
/* 80122814 0011F614  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80122818 0011F618  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8012281C 0011F61C  F3 E1 00 18 */	psq_st f31, 24(r1), 0, qr0
/* 80122820 0011F620  88 04 00 84 */	lbz r0, 0x84(r4)
/* 80122824 0011F624  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 80122828 0011F628  28 00 00 01 */	cmplwi r0, 1
/* 8012282C 0011F62C  40 82 00 1C */	bne lbl_80122848
/* 80122830 0011F630  C0 24 00 94 */	lfs f1, 0x94(r4)
/* 80122834 0011F634  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80122838 0011F638  4C 41 13 82 */	cror 2, 1, 2
/* 8012283C 0011F63C  40 82 01 1C */	bne lbl_80122958
/* 80122840 0011F640  38 60 00 01 */	li r3, 1
/* 80122844 0011F644  48 00 01 18 */	b lbl_8012295C
lbl_80122848:
/* 80122848 0011F648  28 00 00 04 */	cmplwi r0, 4
/* 8012284C 0011F64C  40 82 00 C4 */	bne lbl_80122910
/* 80122850 0011F650  80 64 00 AC */	lwz r3, 0xac(r4)
/* 80122854 0011F654  C0 22 A0 A8 */	lfs f1, xGrid_float_four-_SDA2_BASE_(r2)
/* 80122858 0011F658  C0 63 00 10 */	lfs f3, 0x10(r3)
/* 8012285C 0011F65C  C0 43 00 14 */	lfs f2, 0x14(r3)
/* 80122860 0011F660  EC 21 00 32 */	fmuls f1, f1, f0
/* 80122864 0011F664  EC 63 00 F2 */	fmuls f3, f3, f3
/* 80122868 0011F668  C0 C3 00 00 */	lfs f6, 0(r3)
/* 8012286C 0011F66C  EC 42 00 B2 */	fmuls f2, f2, f2
/* 80122870 0011F670  C0 A3 00 04 */	lfs f5, 4(r3)
/* 80122874 0011F674  C1 03 00 18 */	lfs f8, 0x18(r3)
/* 80122878 0011F678  C0 E4 00 98 */	lfs f7, 0x98(r4)
/* 8012287C 0011F67C  C0 84 00 A4 */	lfs f4, 0xa4(r4)
/* 80122880 0011F680  EC C6 01 B2 */	fmuls f6, f6, f6
/* 80122884 0011F684  EC A5 01 72 */	fmuls f5, f5, f5
/* 80122888 0011F688  C1 23 00 20 */	lfs f9, 0x20(r3)
/* 8012288C 0011F68C  EF E7 20 28 */	fsubs f31, f7, f4
/* 80122890 0011F690  C1 63 00 24 */	lfs f11, 0x24(r3)
/* 80122894 0011F694  C1 43 00 08 */	lfs f10, 8(r3)
/* 80122898 0011F698  C1 83 00 28 */	lfs f12, 0x28(r3)
/* 8012289C 0011F69C  EC 88 02 32 */	fmuls f4, f8, f8
/* 801228A0 0011F6A0  C1 04 00 94 */	lfs f8, 0x94(r4)
/* 801228A4 0011F6A4  EC 43 10 2A */	fadds f2, f3, f2
/* 801228A8 0011F6A8  C0 64 00 A0 */	lfs f3, 0xa0(r4)
/* 801228AC 0011F6AC  ED 29 02 72 */	fmuls f9, f9, f9
/* 801228B0 0011F6B0  C0 E4 00 9C */	lfs f7, 0x9c(r4)
/* 801228B4 0011F6B4  ED A8 18 28 */	fsubs f13, f8, f3
/* 801228B8 0011F6B8  C0 64 00 A8 */	lfs f3, 0xa8(r4)
/* 801228BC 0011F6BC  ED 0B 02 F2 */	fmuls f8, f11, f11
/* 801228C0 0011F6C0  ED 67 18 28 */	fsubs f11, f7, f3
/* 801228C4 0011F6C4  EC EA 02 B2 */	fmuls f7, f10, f10
/* 801228C8 0011F6C8  EC A6 28 2A */	fadds f5, f6, f5
/* 801228CC 0011F6CC  EC 7F 07 F2 */	fmuls f3, f31, f31
/* 801228D0 0011F6D0  EC 44 10 2A */	fadds f2, f4, f2
/* 801228D4 0011F6D4  ED 4C 03 32 */	fmuls f10, f12, f12
/* 801228D8 0011F6D8  ED 09 40 2A */	fadds f8, f9, f8
/* 801228DC 0011F6DC  EC CD 03 72 */	fmuls f6, f13, f13
/* 801228E0 0011F6E0  EC 87 28 2A */	fadds f4, f7, f5
/* 801228E4 0011F6E4  EC 43 00 B2 */	fmuls f2, f3, f2
/* 801228E8 0011F6E8  EC AB 02 F2 */	fmuls f5, f11, f11
/* 801228EC 0011F6EC  EC 6A 40 2A */	fadds f3, f10, f8
/* 801228F0 0011F6F0  EC 46 11 3A */	fmadds f2, f6, f4, f2
/* 801228F4 0011F6F4  EC 01 00 32 */	fmuls f0, f1, f0
/* 801228F8 0011F6F8  EC 25 10 FA */	fmadds f1, f5, f3, f2
/* 801228FC 0011F6FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80122900 0011F700  4C 41 13 82 */	cror 2, 1, 2
/* 80122904 0011F704  40 82 00 54 */	bne lbl_80122958
/* 80122908 0011F708  38 60 00 01 */	li r3, 1
/* 8012290C 0011F70C  48 00 00 50 */	b lbl_8012295C
lbl_80122910:
/* 80122910 0011F710  28 00 00 02 */	cmplwi r0, 2
/* 80122914 0011F714  40 82 00 44 */	bne lbl_80122958
/* 80122918 0011F718  C0 64 00 9C */	lfs f3, 0x9c(r4)
/* 8012291C 0011F71C  C0 44 00 A8 */	lfs f2, 0xa8(r4)
/* 80122920 0011F720  C0 22 A0 A8 */	lfs f1, xGrid_float_four-_SDA2_BASE_(r2)
/* 80122924 0011F724  EC 83 10 28 */	fsubs f4, f3, f2
/* 80122928 0011F728  C0 64 00 94 */	lfs f3, 0x94(r4)
/* 8012292C 0011F72C  C0 44 00 A0 */	lfs f2, 0xa0(r4)
/* 80122930 0011F730  EC 21 00 32 */	fmuls f1, f1, f0
/* 80122934 0011F734  EC 63 10 28 */	fsubs f3, f3, f2
/* 80122938 0011F738  EC 44 01 32 */	fmuls f2, f4, f4
/* 8012293C 0011F73C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80122940 0011F740  EC 23 10 FA */	fmadds f1, f3, f3, f2
/* 80122944 0011F744  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80122948 0011F748  4C 41 13 82 */	cror 2, 1, 2
/* 8012294C 0011F74C  40 82 00 0C */	bne lbl_80122958
/* 80122950 0011F750  38 60 00 01 */	li r3, 1
/* 80122954 0011F754  48 00 00 08 */	b lbl_8012295C
lbl_80122958:
/* 80122958 0011F758  38 60 00 00 */	li r3, 0
lbl_8012295C:
/* 8012295C 0011F75C  E3 E1 00 18 */	psq_l f31, 24(r1), 0, qr0
/* 80122960 0011F760  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80122964 0011F764  38 21 00 20 */	addi r1, r1, 0x20
/* 80122968 0011F768  4E 80 00 20 */	blr 

.global xGridCheckPosition__FP5xGridP5xVec3P7xQCDataPFP4xEntPv_iPv
xGridCheckPosition__FP5xGridP5xVec3P7xQCDataPFP4xEntPv_iPv:
/* 8012296C 0011F76C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80122970 0011F770  7C 08 02 A6 */	mflr r0
/* 80122974 0011F774  90 01 00 54 */	stw r0, 0x54(r1)
/* 80122978 0011F778  BF 01 00 30 */	stmw r24, 0x30(r1)
/* 8012297C 0011F77C  7C BB 2B 78 */	mr r27, r5
/* 80122980 0011F780  7C DC 33 78 */	mr r28, r6
/* 80122984 0011F784  7C 99 23 78 */	mr r25, r4
/* 80122988 0011F788  7C 7A 1B 78 */	mr r26, r3
/* 8012298C 0011F78C  7C FD 3B 78 */	mr r29, r7
/* 80122990 0011F790  38 A1 00 08 */	addi r5, r1, 8
/* 80122994 0011F794  38 C1 00 10 */	addi r6, r1, 0x10
/* 80122998 0011F798  C0 24 00 00 */	lfs f1, 0(r4)
/* 8012299C 0011F79C  C0 44 00 04 */	lfs f2, 4(r4)
/* 801229A0 0011F7A0  C0 64 00 08 */	lfs f3, 8(r4)
/* 801229A4 0011F7A4  38 81 00 0C */	addi r4, r1, 0xc
/* 801229A8 0011F7A8  4B FF FE 09 */	bl xGridIterFirstCell__FP5xGridfffRiRiR13xGridIterator
/* 801229AC 0011F7AC  7C 78 1B 78 */	mr r24, r3
/* 801229B0 0011F7B0  48 00 00 4C */	b lbl_801229FC
lbl_801229B4:
/* 801229B4 0011F7B4  7F 63 DB 78 */	mr r3, r27
/* 801229B8 0011F7B8  38 98 00 14 */	addi r4, r24, 0x14
/* 801229BC 0011F7BC  4B F1 9C 05 */	bl xQuickCullIsects__FPC7xQCDataPC7xQCData
/* 801229C0 0011F7C0  2C 03 00 00 */	cmpwi r3, 0
/* 801229C4 0011F7C4  41 82 00 2C */	beq lbl_801229F0
/* 801229C8 0011F7C8  7F 8C E3 78 */	mr r12, r28
/* 801229CC 0011F7CC  7F A4 EB 78 */	mr r4, r29
/* 801229D0 0011F7D0  80 78 00 00 */	lwz r3, 0(r24)
/* 801229D4 0011F7D4  7D 89 03 A6 */	mtctr r12
/* 801229D8 0011F7D8  4E 80 04 21 */	bctrl 
/* 801229DC 0011F7DC  2C 03 00 00 */	cmpwi r3, 0
/* 801229E0 0011F7E0  40 82 00 10 */	bne lbl_801229F0
/* 801229E4 0011F7E4  38 61 00 10 */	addi r3, r1, 0x10
/* 801229E8 0011F7E8  4B EF 90 C9 */	bl xGridIterClose__FR13xGridIterator
/* 801229EC 0011F7EC  48 00 02 04 */	b lbl_80122BF0
lbl_801229F0:
/* 801229F0 0011F7F0  38 61 00 10 */	addi r3, r1, 0x10
/* 801229F4 0011F7F4  4B EF 90 4D */	bl xGridIterNextCell__FR13xGridIterator
/* 801229F8 0011F7F8  7C 78 1B 78 */	mr r24, r3
lbl_801229FC:
/* 801229FC 0011F7FC  28 18 00 00 */	cmplwi r24, 0
/* 80122A00 0011F800  40 82 FF B4 */	bne lbl_801229B4
/* 80122A04 0011F804  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80122A08 0011F808  3C 60 43 30 */	lis r3, 0x4330
/* 80122A0C 0011F80C  80 01 00 08 */	lwz r0, 8(r1)
/* 80122A10 0011F810  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80122A14 0011F814  90 61 00 20 */	stw r3, 0x20(r1)
/* 80122A18 0011F818  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80122A1C 0011F81C  C8 62 A0 B0 */	lfd f3, lbl_803CEA30-_SDA2_BASE_(r2)
/* 80122A20 0011F820  90 81 00 24 */	stw r4, 0x24(r1)
/* 80122A24 0011F824  C0 9A 00 18 */	lfs f4, 0x18(r26)
/* 80122A28 0011F828  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80122A2C 0011F82C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80122A30 0011F830  EC 40 18 28 */	fsubs f2, f0, f3
/* 80122A34 0011F834  C0 02 A0 B8 */	lfs f0, lbl_803CEA38-_SDA2_BASE_(r2)
/* 80122A38 0011F838  90 61 00 28 */	stw r3, 0x28(r1)
/* 80122A3C 0011F83C  C0 BA 00 1C */	lfs f5, 0x1c(r26)
/* 80122A40 0011F840  EC C0 01 32 */	fmuls f6, f0, f4
/* 80122A44 0011F844  C8 21 00 28 */	lfd f1, 0x28(r1)
/* 80122A48 0011F848  EC 84 00 B2 */	fmuls f4, f4, f2
/* 80122A4C 0011F84C  C0 5A 00 08 */	lfs f2, 8(r26)
/* 80122A50 0011F850  EC 61 18 28 */	fsubs f3, f1, f3
/* 80122A54 0011F854  C0 3A 00 0C */	lfs f1, 0xc(r26)
/* 80122A58 0011F858  EC E0 01 72 */	fmuls f7, f0, f5
/* 80122A5C 0011F85C  C0 19 00 00 */	lfs f0, 0(r25)
/* 80122A60 0011F860  EC 65 00 F2 */	fmuls f3, f5, f3
/* 80122A64 0011F864  EC 84 10 2A */	fadds f4, f4, f2
/* 80122A68 0011F868  EC 63 08 2A */	fadds f3, f3, f1
/* 80122A6C 0011F86C  EC C6 20 2A */	fadds f6, f6, f4
/* 80122A70 0011F870  EC E7 18 2A */	fadds f7, f7, f3
/* 80122A74 0011F874  FC 00 30 40 */	fcmpo cr0, f0, f6
/* 80122A78 0011F878  40 80 00 28 */	bge lbl_80122AA0
/* 80122A7C 0011F87C  C0 19 00 08 */	lfs f0, 8(r25)
/* 80122A80 0011F880  FC 00 38 40 */	fcmpo cr0, f0, f7
/* 80122A84 0011F884  40 80 00 10 */	bge lbl_80122A94
/* 80122A88 0011F888  38 00 00 00 */	li r0, 0
/* 80122A8C 0011F88C  90 0D 95 34 */	stw r0, lbl_803CBE34-_SDA_BASE_(r13)
/* 80122A90 0011F890  48 00 00 30 */	b lbl_80122AC0
lbl_80122A94:
/* 80122A94 0011F894  38 00 00 01 */	li r0, 1
/* 80122A98 0011F898  90 0D 95 34 */	stw r0, lbl_803CBE34-_SDA_BASE_(r13)
/* 80122A9C 0011F89C  48 00 00 24 */	b lbl_80122AC0
lbl_80122AA0:
/* 80122AA0 0011F8A0  C0 19 00 08 */	lfs f0, 8(r25)
/* 80122AA4 0011F8A4  FC 00 38 40 */	fcmpo cr0, f0, f7
/* 80122AA8 0011F8A8  40 80 00 10 */	bge lbl_80122AB8
/* 80122AAC 0011F8AC  38 00 00 03 */	li r0, 3
/* 80122AB0 0011F8B0  90 0D 95 34 */	stw r0, lbl_803CBE34-_SDA_BASE_(r13)
/* 80122AB4 0011F8B4  48 00 00 0C */	b lbl_80122AC0
lbl_80122AB8:
/* 80122AB8 0011F8B8  38 00 00 02 */	li r0, 2
/* 80122ABC 0011F8BC  90 0D 95 34 */	stw r0, lbl_803CBE34-_SDA_BASE_(r13)
lbl_80122AC0:
/* 80122AC0 0011F8C0  3C 60 80 2A */	lis r3, lbl_80298040@ha
/* 80122AC4 0011F8C4  3B C0 00 00 */	li r30, 0
/* 80122AC8 0011F8C8  3B 23 80 40 */	addi r25, r3, lbl_80298040@l
/* 80122ACC 0011F8CC  3B E0 00 00 */	li r31, 0
lbl_80122AD0:
/* 80122AD0 0011F8D0  80 0D 95 34 */	lwz r0, lbl_803CBE34-_SDA_BASE_(r13)
/* 80122AD4 0011F8D4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80122AD8 0011F8D8  1C 00 00 18 */	mulli r0, r0, 0x18
/* 80122ADC 0011F8DC  7C 19 02 14 */	add r0, r25, r0
/* 80122AE0 0011F8E0  7C A0 FA 14 */	add r5, r0, r31
/* 80122AE4 0011F8E4  80 05 00 04 */	lwz r0, 4(r5)
/* 80122AE8 0011F8E8  7C 83 02 15 */	add. r4, r3, r0
/* 80122AEC 0011F8EC  41 80 00 90 */	blt lbl_80122B7C
/* 80122AF0 0011F8F0  A0 1A 00 04 */	lhz r0, 4(r26)
/* 80122AF4 0011F8F4  7C 04 00 00 */	cmpw r4, r0
/* 80122AF8 0011F8F8  40 80 00 84 */	bge lbl_80122B7C
/* 80122AFC 0011F8FC  80 61 00 08 */	lwz r3, 8(r1)
/* 80122B00 0011F900  80 05 00 00 */	lwz r0, 0(r5)
/* 80122B04 0011F904  7C A3 02 15 */	add. r5, r3, r0
/* 80122B08 0011F908  41 80 00 74 */	blt lbl_80122B7C
/* 80122B0C 0011F90C  A0 1A 00 06 */	lhz r0, 6(r26)
/* 80122B10 0011F910  7C 05 00 00 */	cmpw r5, r0
/* 80122B14 0011F914  40 80 00 68 */	bge lbl_80122B7C
/* 80122B18 0011F918  7F 43 D3 78 */	mr r3, r26
/* 80122B1C 0011F91C  38 C1 00 10 */	addi r6, r1, 0x10
/* 80122B20 0011F920  4B EF 8E AD */	bl xGridIterFirstCell__FP5xGridiiR13xGridIterator
/* 80122B24 0011F924  7C 78 1B 78 */	mr r24, r3
/* 80122B28 0011F928  48 00 00 4C */	b lbl_80122B74
lbl_80122B2C:
/* 80122B2C 0011F92C  7F 63 DB 78 */	mr r3, r27
/* 80122B30 0011F930  38 98 00 14 */	addi r4, r24, 0x14
/* 80122B34 0011F934  4B F1 9A 8D */	bl xQuickCullIsects__FPC7xQCDataPC7xQCData
/* 80122B38 0011F938  2C 03 00 00 */	cmpwi r3, 0
/* 80122B3C 0011F93C  41 82 00 2C */	beq lbl_80122B68
/* 80122B40 0011F940  7F 8C E3 78 */	mr r12, r28
/* 80122B44 0011F944  7F A4 EB 78 */	mr r4, r29
/* 80122B48 0011F948  80 78 00 00 */	lwz r3, 0(r24)
/* 80122B4C 0011F94C  7D 89 03 A6 */	mtctr r12
/* 80122B50 0011F950  4E 80 04 21 */	bctrl 
/* 80122B54 0011F954  2C 03 00 00 */	cmpwi r3, 0
/* 80122B58 0011F958  40 82 00 10 */	bne lbl_80122B68
/* 80122B5C 0011F95C  38 61 00 10 */	addi r3, r1, 0x10
/* 80122B60 0011F960  4B EF 8F 51 */	bl xGridIterClose__FR13xGridIterator
/* 80122B64 0011F964  48 00 00 8C */	b lbl_80122BF0
lbl_80122B68:
/* 80122B68 0011F968  38 61 00 10 */	addi r3, r1, 0x10
/* 80122B6C 0011F96C  4B EF 8E D5 */	bl xGridIterNextCell__FR13xGridIterator
/* 80122B70 0011F970  7C 78 1B 78 */	mr r24, r3
lbl_80122B74:
/* 80122B74 0011F974  28 18 00 00 */	cmplwi r24, 0
/* 80122B78 0011F978  40 82 FF B4 */	bne lbl_80122B2C
lbl_80122B7C:
/* 80122B7C 0011F97C  3B DE 00 01 */	addi r30, r30, 1
/* 80122B80 0011F980  3B FF 00 08 */	addi r31, r31, 8
/* 80122B84 0011F984  2C 1E 00 03 */	cmpwi r30, 3
/* 80122B88 0011F988  41 80 FF 48 */	blt lbl_80122AD0
/* 80122B8C 0011F98C  38 7A 00 30 */	addi r3, r26, 0x30
/* 80122B90 0011F990  38 81 00 10 */	addi r4, r1, 0x10
/* 80122B94 0011F994  4B EF 8E 01 */	bl xGridIterFirstCell__FPP10xGridBoundR13xGridIterator
/* 80122B98 0011F998  7C 79 1B 78 */	mr r25, r3
/* 80122B9C 0011F99C  48 00 00 4C */	b lbl_80122BE8
lbl_80122BA0:
/* 80122BA0 0011F9A0  7F 63 DB 78 */	mr r3, r27
/* 80122BA4 0011F9A4  38 99 00 14 */	addi r4, r25, 0x14
/* 80122BA8 0011F9A8  4B F1 9A 19 */	bl xQuickCullIsects__FPC7xQCDataPC7xQCData
/* 80122BAC 0011F9AC  2C 03 00 00 */	cmpwi r3, 0
/* 80122BB0 0011F9B0  41 82 00 2C */	beq lbl_80122BDC
/* 80122BB4 0011F9B4  7F 8C E3 78 */	mr r12, r28
/* 80122BB8 0011F9B8  7F A4 EB 78 */	mr r4, r29
/* 80122BBC 0011F9BC  80 79 00 00 */	lwz r3, 0(r25)
/* 80122BC0 0011F9C0  7D 89 03 A6 */	mtctr r12
/* 80122BC4 0011F9C4  4E 80 04 21 */	bctrl 
/* 80122BC8 0011F9C8  2C 03 00 00 */	cmpwi r3, 0
/* 80122BCC 0011F9CC  40 82 00 10 */	bne lbl_80122BDC
/* 80122BD0 0011F9D0  38 61 00 10 */	addi r3, r1, 0x10
/* 80122BD4 0011F9D4  4B EF 8E DD */	bl xGridIterClose__FR13xGridIterator
/* 80122BD8 0011F9D8  48 00 00 18 */	b lbl_80122BF0
lbl_80122BDC:
/* 80122BDC 0011F9DC  38 61 00 10 */	addi r3, r1, 0x10
/* 80122BE0 0011F9E0  4B EF 8E 61 */	bl xGridIterNextCell__FR13xGridIterator
/* 80122BE4 0011F9E4  7C 79 1B 78 */	mr r25, r3
lbl_80122BE8:
/* 80122BE8 0011F9E8  28 19 00 00 */	cmplwi r25, 0
/* 80122BEC 0011F9EC  40 82 FF B4 */	bne lbl_80122BA0
lbl_80122BF0:
/* 80122BF0 0011F9F0  BB 01 00 30 */	lmw r24, 0x30(r1)
/* 80122BF4 0011F9F4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80122BF8 0011F9F8  7C 08 03 A6 */	mtlr r0
/* 80122BFC 0011F9FC  38 21 00 50 */	addi r1, r1, 0x50
/* 80122C00 0011FA00  4E 80 00 20 */	blr 

.endif

.section .data
lbl_80298040:
	.incbin "baserom.dol", 0x295020, 0x60

.section .sbss
lbl_803CBE34:
	.skip 0x4

.section .sdata2
.global xGrid_float_0p001
xGrid_float_0p001:
	.incbin "baserom.dol", 0x2B82B0, 0x4

.global xGrid_float_one
xGrid_float_one:
	.incbin "baserom.dol", 0x2B82B4, 0x4

.global xGrid_float_one_quarter
xGrid_float_one_quarter:
	.incbin "baserom.dol", 0x2B82B8, 0x8

.global xGrid_itof_value
xGrid_itof_value:
	.incbin "baserom.dol", 0x2B82C0, 0x8

.global xGrid_float_four
xGrid_float_four:
	.incbin "baserom.dol", 0x2B82C8, 0x4

.global xGrid_float_zero
xGrid_float_zero:
	.incbin "baserom.dol", 0x2B82CC, 0x4

lbl_803CEA30:
	.incbin "baserom.dol", 0x2B82D0, 0x8
lbl_803CEA38:
	.incbin "baserom.dol", 0x2B82D8, 0x8
