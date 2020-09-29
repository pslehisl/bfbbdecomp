.include "macros.inc"

.section .rodata   # 0x80254308 - 0x80254318

.global lbl_80254308
lbl_80254308:
	.incbin "baserom.dol", 0x2512E8, 0x10

.section .text  # 0x8004E510 - 0x8004E7E0

.global zActionLineInit__Fv
zActionLineInit__Fv:
/* 8004E510 0004B310  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004E514 0004B314  7C 08 02 A6 */	mflr r0
/* 8004E518 0004B318  3C 60 80 25 */	lis r3, lbl_80254308@ha
/* 8004E51C 0004B31C  3C 80 80 2E */	lis r4, lbl_802DB9A0@ha
/* 8004E520 0004B320  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004E524 0004B324  38 00 00 00 */	li r0, 0
/* 8004E528 0004B328  38 63 43 08 */	addi r3, r3, lbl_80254308@l
/* 8004E52C 0004B32C  94 04 B9 A0 */	stwu r0, lbl_802DB9A0@l(r4)
/* 8004E530 0004B330  90 04 00 04 */	stw r0, 4(r4)
/* 8004E534 0004B334  90 04 00 08 */	stw r0, 8(r4)
/* 8004E538 0004B338  90 04 00 0C */	stw r0, 0xc(r4)
/* 8004E53C 0004B33C  90 04 00 10 */	stw r0, 0x10(r4)
/* 8004E540 0004B340  90 04 00 14 */	stw r0, 0x14(r4)
/* 8004E544 0004B344  90 04 00 18 */	stw r0, 0x18(r4)
/* 8004E548 0004B348  90 04 00 1C */	stw r0, 0x1c(r4)
/* 8004E54C 0004B34C  90 0D 8B 38 */	stw r0, lbl_803CB438-_SDA_BASE_(r13)
/* 8004E550 0004B350  4B FF DC C5 */	bl xStrHash__FPCc
/* 8004E554 0004B354  38 80 00 00 */	li r4, 0
/* 8004E558 0004B358  4B FF D1 B5 */	bl xSTFindAsset__FUiPUi
/* 8004E55C 0004B35C  28 03 00 00 */	cmplwi r3, 0
/* 8004E560 0004B360  41 82 00 0C */	beq lbl_8004E56C
/* 8004E564 0004B364  80 03 00 00 */	lwz r0, 0(r3)
/* 8004E568 0004B368  90 0D 8B 38 */	stw r0, lbl_803CB438-_SDA_BASE_(r13)
lbl_8004E56C:
/* 8004E56C 0004B36C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004E570 0004B370  7C 08 03 A6 */	mtlr r0
/* 8004E574 0004B374  38 21 00 10 */	addi r1, r1, 0x10
/* 8004E578 0004B378  4E 80 00 20 */	blr 

.global zActionLineUpdate__Ff
zActionLineUpdate__Ff:
/* 8004E57C 0004B37C  3C 60 80 2E */	lis r3, lbl_802DB9A0@ha
/* 8004E580 0004B380  38 00 00 04 */	li r0, 4
/* 8004E584 0004B384  38 63 B9 A0 */	addi r3, r3, lbl_802DB9A0@l
/* 8004E588 0004B388  38 80 00 00 */	li r4, 0
/* 8004E58C 0004B38C  7C 09 03 A6 */	mtctr r0
lbl_8004E590:
/* 8004E590 0004B390  80 A3 00 00 */	lwz r5, 0(r3)
/* 8004E594 0004B394  28 05 00 00 */	cmplwi r5, 0
/* 8004E598 0004B398  41 82 00 3C */	beq lbl_8004E5D4
/* 8004E59C 0004B39C  80 05 00 00 */	lwz r0, 0(r5)
/* 8004E5A0 0004B3A0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8004E5A4 0004B3A4  41 82 00 30 */	beq lbl_8004E5D4
/* 8004E5A8 0004B3A8  C0 05 00 34 */	lfs f0, 0x34(r5)
/* 8004E5AC 0004B3AC  EC 00 08 28 */	fsubs f0, f0, f1
/* 8004E5B0 0004B3B0  D0 05 00 34 */	stfs f0, 0x34(r5)
/* 8004E5B4 0004B3B4  C0 45 00 34 */	lfs f2, 0x34(r5)
/* 8004E5B8 0004B3B8  C0 02 87 E8 */	lfs f0, lbl_803CD168-_SDA2_BASE_(r2)
/* 8004E5BC 0004B3BC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8004E5C0 0004B3C0  4C 40 13 82 */	cror 2, 0, 2
/* 8004E5C4 0004B3C4  40 82 00 10 */	bne lbl_8004E5D4
/* 8004E5C8 0004B3C8  80 05 00 00 */	lwz r0, 0(r5)
/* 8004E5CC 0004B3CC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8004E5D0 0004B3D0  90 05 00 00 */	stw r0, 0(r5)
lbl_8004E5D4:
/* 8004E5D4 0004B3D4  84 A3 00 04 */	lwzu r5, 4(r3)
/* 8004E5D8 0004B3D8  28 05 00 00 */	cmplwi r5, 0
/* 8004E5DC 0004B3DC  41 82 00 3C */	beq lbl_8004E618
/* 8004E5E0 0004B3E0  80 05 00 00 */	lwz r0, 0(r5)
/* 8004E5E4 0004B3E4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8004E5E8 0004B3E8  41 82 00 30 */	beq lbl_8004E618
/* 8004E5EC 0004B3EC  C0 05 00 34 */	lfs f0, 0x34(r5)
/* 8004E5F0 0004B3F0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8004E5F4 0004B3F4  D0 05 00 34 */	stfs f0, 0x34(r5)
/* 8004E5F8 0004B3F8  C0 45 00 34 */	lfs f2, 0x34(r5)
/* 8004E5FC 0004B3FC  C0 02 87 E8 */	lfs f0, lbl_803CD168-_SDA2_BASE_(r2)
/* 8004E600 0004B400  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8004E604 0004B404  4C 40 13 82 */	cror 2, 0, 2
/* 8004E608 0004B408  40 82 00 10 */	bne lbl_8004E618
/* 8004E60C 0004B40C  80 05 00 00 */	lwz r0, 0(r5)
/* 8004E610 0004B410  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8004E614 0004B414  90 05 00 00 */	stw r0, 0(r5)
lbl_8004E618:
/* 8004E618 0004B418  38 63 00 04 */	addi r3, r3, 4
/* 8004E61C 0004B41C  38 84 00 01 */	addi r4, r4, 1
/* 8004E620 0004B420  42 00 FF 70 */	bdnz lbl_8004E590
/* 8004E624 0004B424  4E 80 00 20 */	blr 

RenderActionLine__FP14_tagActionLine:
/* 8004E628 0004B428  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004E62C 0004B42C  7C 08 02 A6 */	mflr r0
/* 8004E630 0004B430  3C 80 80 2E */	lis r4, lbl_802DB9C0@ha
/* 8004E634 0004B434  38 E0 00 FF */	li r7, 0xff
/* 8004E638 0004B438  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004E63C 0004B43C  39 04 B9 C0 */	addi r8, r4, lbl_802DB9C0@l
/* 8004E640 0004B440  38 00 00 80 */	li r0, 0x80
/* 8004E644 0004B444  38 80 00 04 */	li r4, 4
/* 8004E648 0004B448  C0 23 00 08 */	lfs f1, 8(r3)
/* 8004E64C 0004B44C  39 28 00 24 */	addi r9, r8, 0x24
/* 8004E650 0004B450  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 8004E654 0004B454  38 A0 00 00 */	li r5, 0
/* 8004E658 0004B458  C0 03 00 04 */	lfs f0, 4(r3)
/* 8004E65C 0004B45C  38 C0 00 19 */	li r6, 0x19
/* 8004E660 0004B460  D0 08 00 00 */	stfs f0, 0(r8)
/* 8004E664 0004B464  D0 28 00 04 */	stfs f1, 4(r8)
/* 8004E668 0004B468  D0 48 00 08 */	stfs f2, 8(r8)
/* 8004E66C 0004B46C  C0 02 87 E8 */	lfs f0, lbl_803CD168-_SDA2_BASE_(r2)
/* 8004E670 0004B470  D0 08 00 1C */	stfs f0, 0x1c(r8)
/* 8004E674 0004B474  C0 02 87 E8 */	lfs f0, lbl_803CD168-_SDA2_BASE_(r2)
/* 8004E678 0004B478  D0 08 00 20 */	stfs f0, 0x20(r8)
/* 8004E67C 0004B47C  98 E8 00 18 */	stb r7, 0x18(r8)
/* 8004E680 0004B480  98 E8 00 19 */	stb r7, 0x19(r8)
/* 8004E684 0004B484  98 E8 00 1A */	stb r7, 0x1a(r8)
/* 8004E688 0004B488  98 08 00 1B */	stb r0, 0x1b(r8)
/* 8004E68C 0004B48C  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 8004E690 0004B490  C0 43 00 18 */	lfs f2, 0x18(r3)
/* 8004E694 0004B494  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8004E698 0004B498  D0 08 00 24 */	stfs f0, 0x24(r8)
/* 8004E69C 0004B49C  D0 28 00 28 */	stfs f1, 0x28(r8)
/* 8004E6A0 0004B4A0  D0 48 00 2C */	stfs f2, 0x2c(r8)
/* 8004E6A4 0004B4A4  C0 02 87 E8 */	lfs f0, lbl_803CD168-_SDA2_BASE_(r2)
/* 8004E6A8 0004B4A8  D0 08 00 40 */	stfs f0, 0x40(r8)
/* 8004E6AC 0004B4AC  C0 02 87 E8 */	lfs f0, lbl_803CD168-_SDA2_BASE_(r2)
/* 8004E6B0 0004B4B0  D0 08 00 44 */	stfs f0, 0x44(r8)
/* 8004E6B4 0004B4B4  98 E8 00 3C */	stb r7, 0x3c(r8)
/* 8004E6B8 0004B4B8  98 E8 00 3D */	stb r7, 0x3d(r8)
/* 8004E6BC 0004B4BC  98 E8 00 3E */	stb r7, 0x3e(r8)
/* 8004E6C0 0004B4C0  98 08 00 3F */	stb r0, 0x3f(r8)
/* 8004E6C4 0004B4C4  C0 23 00 20 */	lfs f1, 0x20(r3)
/* 8004E6C8 0004B4C8  C0 43 00 24 */	lfs f2, 0x24(r3)
/* 8004E6CC 0004B4CC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8004E6D0 0004B4D0  D4 09 00 24 */	stfsu f0, 0x24(r9)
/* 8004E6D4 0004B4D4  D0 29 00 04 */	stfs f1, 4(r9)
/* 8004E6D8 0004B4D8  D0 49 00 08 */	stfs f2, 8(r9)
/* 8004E6DC 0004B4DC  C0 02 87 E8 */	lfs f0, lbl_803CD168-_SDA2_BASE_(r2)
/* 8004E6E0 0004B4E0  D0 09 00 1C */	stfs f0, 0x1c(r9)
/* 8004E6E4 0004B4E4  C0 02 87 E8 */	lfs f0, lbl_803CD168-_SDA2_BASE_(r2)
/* 8004E6E8 0004B4E8  D0 09 00 20 */	stfs f0, 0x20(r9)
/* 8004E6EC 0004B4EC  98 E9 00 18 */	stb r7, 0x18(r9)
/* 8004E6F0 0004B4F0  98 E9 00 19 */	stb r7, 0x19(r9)
/* 8004E6F4 0004B4F4  98 E9 00 1A */	stb r7, 0x1a(r9)
/* 8004E6F8 0004B4F8  98 09 00 1B */	stb r0, 0x1b(r9)
/* 8004E6FC 0004B4FC  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 8004E700 0004B500  C0 43 00 30 */	lfs f2, 0x30(r3)
/* 8004E704 0004B504  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8004E708 0004B508  7D 03 43 78 */	mr r3, r8
/* 8004E70C 0004B50C  D4 09 00 24 */	stfsu f0, 0x24(r9)
/* 8004E710 0004B510  D0 29 00 04 */	stfs f1, 4(r9)
/* 8004E714 0004B514  D0 49 00 08 */	stfs f2, 8(r9)
/* 8004E718 0004B518  C0 02 87 E8 */	lfs f0, lbl_803CD168-_SDA2_BASE_(r2)
/* 8004E71C 0004B51C  D0 09 00 1C */	stfs f0, 0x1c(r9)
/* 8004E720 0004B520  C0 02 87 E8 */	lfs f0, lbl_803CD168-_SDA2_BASE_(r2)
/* 8004E724 0004B524  D0 09 00 20 */	stfs f0, 0x20(r9)
/* 8004E728 0004B528  98 E9 00 18 */	stb r7, 0x18(r9)
/* 8004E72C 0004B52C  98 E9 00 19 */	stb r7, 0x19(r9)
/* 8004E730 0004B530  98 E9 00 1A */	stb r7, 0x1a(r9)
/* 8004E734 0004B534  98 09 00 1B */	stb r0, 0x1b(r9)
/* 8004E738 0004B538  C0 02 87 EC */	lfs f0, lbl_803CD16C-_SDA2_BASE_(r2)
/* 8004E73C 0004B53C  D0 08 00 64 */	stfs f0, 0x64(r8)
/* 8004E740 0004B540  D0 08 00 88 */	stfs f0, 0x88(r8)
/* 8004E744 0004B544  D0 08 00 8C */	stfs f0, 0x8c(r8)
/* 8004E748 0004B548  48 1F D5 2D */	bl RwIm3DTransform
/* 8004E74C 0004B54C  28 03 00 00 */	cmplwi r3, 0
/* 8004E750 0004B550  41 82 00 10 */	beq lbl_8004E760
/* 8004E754 0004B554  38 60 00 04 */	li r3, 4
/* 8004E758 0004B558  48 1F D7 E9 */	bl RwIm3DRenderPrimitive
/* 8004E75C 0004B55C  48 1F D5 F9 */	bl RwIm3DEnd
lbl_8004E760:
/* 8004E760 0004B560  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004E764 0004B564  7C 08 03 A6 */	mtlr r0
/* 8004E768 0004B568  38 21 00 10 */	addi r1, r1, 0x10
/* 8004E76C 0004B56C  4E 80 00 20 */	blr 

.global zActionLineRender__Fv
zActionLineRender__Fv:
/* 8004E770 0004B570  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004E774 0004B574  7C 08 02 A6 */	mflr r0
/* 8004E778 0004B578  38 60 00 01 */	li r3, 1
/* 8004E77C 0004B57C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004E780 0004B580  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8004E784 0004B584  93 C1 00 08 */	stw r30, 8(r1)
/* 8004E788 0004B588  80 8D 8B 38 */	lwz r4, lbl_803CB438-_SDA_BASE_(r13)
/* 8004E78C 0004B58C  48 1E 10 51 */	bl RwRenderStateSet
/* 8004E790 0004B590  3C 60 80 2E */	lis r3, lbl_802DB9A0@ha
/* 8004E794 0004B594  3B C0 00 00 */	li r30, 0
/* 8004E798 0004B598  3B E3 B9 A0 */	addi r31, r3, lbl_802DB9A0@l
lbl_8004E79C:
/* 8004E79C 0004B59C  80 7F 00 00 */	lwz r3, 0(r31)
/* 8004E7A0 0004B5A0  28 03 00 00 */	cmplwi r3, 0
/* 8004E7A4 0004B5A4  41 82 00 14 */	beq lbl_8004E7B8
/* 8004E7A8 0004B5A8  80 03 00 00 */	lwz r0, 0(r3)
/* 8004E7AC 0004B5AC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8004E7B0 0004B5B0  41 82 00 08 */	beq lbl_8004E7B8
/* 8004E7B4 0004B5B4  4B FF FE 75 */	bl RenderActionLine__FP14_tagActionLine
lbl_8004E7B8:
/* 8004E7B8 0004B5B8  3B DE 00 01 */	addi r30, r30, 1
/* 8004E7BC 0004B5BC  3B FF 00 04 */	addi r31, r31, 4
/* 8004E7C0 0004B5C0  2C 1E 00 08 */	cmpwi r30, 8
/* 8004E7C4 0004B5C4  41 80 FF D8 */	blt lbl_8004E79C
/* 8004E7C8 0004B5C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004E7CC 0004B5CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8004E7D0 0004B5D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8004E7D4 0004B5D4  7C 08 03 A6 */	mtlr r0
/* 8004E7D8 0004B5D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8004E7DC 0004B5DC  4E 80 00 20 */	blr 

.section .bss
lbl_802DB9A0:
	.skip 0x20
lbl_802DB9C0:
	.skip 0x90
