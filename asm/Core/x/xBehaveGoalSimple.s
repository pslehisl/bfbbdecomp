.include "macros.inc"

.if 0

.section .text  # 0x8010EB94 - 0x8010EED8

GOALCreate_Generic__FiP10RyzMemGrowPv:
/* 8010EBF8 0010B9F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010EBFC 0010B9FC  7C 08 02 A6 */	mflr r0
/* 8010EC00 0010BA00  3C C0 47 53 */	lis r6, 0x47534D01@ha
/* 8010EC04 0010BA04  7C 85 23 78 */	mr r5, r4
/* 8010EC08 0010BA08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010EC0C 0010BA0C  38 06 4D 01 */	addi r0, r6, 0x47534D01@l
/* 8010EC10 0010BA10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8010EC14 0010BA14  7C 7F 1B 78 */	mr r31, r3
/* 8010EC18 0010BA18  7C 1F 00 00 */	cmpw r31, r0
/* 8010EC1C 0010BA1C  38 60 00 00 */	li r3, 0
/* 8010EC20 0010BA20  41 82 00 40 */	beq lbl_8010EC60
/* 8010EC24 0010BA24  40 80 00 60 */	bge lbl_8010EC84
/* 8010EC28 0010BA28  38 06 4D 00 */	addi r0, r6, 0x4d00
/* 8010EC2C 0010BA2C  7C 1F 00 00 */	cmpw r31, r0
/* 8010EC30 0010BA30  40 80 00 08 */	bge lbl_8010EC38
/* 8010EC34 0010BA34  48 00 00 50 */	b lbl_8010EC84
lbl_8010EC38:
/* 8010EC38 0010BA38  7F E4 FB 78 */	mr r4, r31
/* 8010EC3C 0010BA3C  38 60 00 54 */	li r3, 0x54
/* 8010EC40 0010BA40  48 00 05 11 */	bl __nw__10RyzMemDataFUliP10RyzMemGrow
/* 8010EC44 0010BA44  7C 60 1B 79 */	or. r0, r3, r3
/* 8010EC48 0010BA48  41 82 00 10 */	beq lbl_8010EC58
/* 8010EC4C 0010BA4C  7F E4 FB 78 */	mr r4, r31
/* 8010EC50 0010BA50  48 00 02 29 */	bl __ct__12xGoalGenericFi
/* 8010EC54 0010BA54  7C 60 1B 78 */	mr r0, r3
lbl_8010EC58:
/* 8010EC58 0010BA58  7C 03 03 78 */	mr r3, r0
/* 8010EC5C 0010BA5C  48 00 00 28 */	b lbl_8010EC84
lbl_8010EC60:
/* 8010EC60 0010BA60  7F E4 FB 78 */	mr r4, r31
/* 8010EC64 0010BA64  38 60 00 3C */	li r3, 0x3c
/* 8010EC68 0010BA68  48 00 04 E9 */	bl __nw__10RyzMemDataFUliP10RyzMemGrow
/* 8010EC6C 0010BA6C  7C 60 1B 79 */	or. r0, r3, r3
/* 8010EC70 0010BA70  41 82 00 10 */	beq lbl_8010EC80
/* 8010EC74 0010BA74  7F E4 FB 78 */	mr r4, r31
/* 8010EC78 0010BA78  48 00 01 C5 */	bl __ct__10xGoalEmptyFi
/* 8010EC7C 0010BA7C  7C 60 1B 78 */	mr r0, r3
lbl_8010EC80:
/* 8010EC80 0010BA80  7C 03 03 78 */	mr r3, r0
lbl_8010EC84:
/* 8010EC84 0010BA84  28 03 00 00 */	cmplwi r3, 0
/* 8010EC88 0010BA88  41 82 00 08 */	beq lbl_8010EC90
/* 8010EC8C 0010BA8C  38 63 00 0C */	addi r3, r3, 0xc
lbl_8010EC90:
/* 8010EC90 0010BA90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010EC94 0010BA94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8010EC98 0010BA98  7C 08 03 A6 */	mtlr r0
/* 8010EC9C 0010BA9C  38 21 00 10 */	addi r1, r1, 0x10
/* 8010ECA0 0010BAA0  4E 80 00 20 */	blr 

.global __ct__10xGoalEmptyFi
__ct__10xGoalEmptyFi:
/* 8010EE3C 0010BC3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010EE40 0010BC40  7C 08 02 A6 */	mflr r0
/* 8010EE44 0010BC44  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010EE48 0010BC48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8010EE4C 0010BC4C  7C 7F 1B 78 */	mr r31, r3
/* 8010EE50 0010BC50  4B FC A1 F1 */	bl __ct__5xGoalFi
/* 8010EE54 0010BC54  3C 80 80 29 */	lis r4, __vt__10xGoalEmpty@ha
/* 8010EE58 0010BC58  7F E3 FB 78 */	mr r3, r31
/* 8010EE5C 0010BC5C  38 04 74 30 */	addi r0, r4, __vt__10xGoalEmpty@l
/* 8010EE60 0010BC60  90 1F 00 38 */	stw r0, 0x38(r31)
/* 8010EE64 0010BC64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8010EE68 0010BC68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010EE6C 0010BC6C  7C 08 03 A6 */	mtlr r0
/* 8010EE70 0010BC70  38 21 00 10 */	addi r1, r1, 0x10
/* 8010EE74 0010BC74  4E 80 00 20 */	blr 

.global __ct__12xGoalGenericFi
__ct__12xGoalGenericFi:
/* 8010EE78 0010BC78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010EE7C 0010BC7C  7C 08 02 A6 */	mflr r0
/* 8010EE80 0010BC80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010EE84 0010BC84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8010EE88 0010BC88  7C 7F 1B 78 */	mr r31, r3
/* 8010EE8C 0010BC8C  4B FC A1 B5 */	bl __ct__5xGoalFi
/* 8010EE90 0010BC90  3C 80 80 29 */	lis r4, __vt__12xGoalGeneric@ha
/* 8010EE94 0010BC94  7F E3 FB 78 */	mr r3, r31
/* 8010EE98 0010BC98  38 04 74 00 */	addi r0, r4, __vt__12xGoalGeneric@l
/* 8010EE9C 0010BC9C  90 1F 00 38 */	stw r0, 0x38(r31)
/* 8010EEA0 0010BCA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8010EEA4 0010BCA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010EEA8 0010BCA8  7C 08 03 A6 */	mtlr r0
/* 8010EEAC 0010BCAC  38 21 00 10 */	addi r1, r1, 0x10
/* 8010EEB0 0010BCB0  4E 80 00 20 */	blr 

Name__10xGoalEmptyFv:
/* 8010EEC4 0010BCC4  3C 60 80 27 */	lis r3, lbl_8026A3B0@ha
/* 8010EEC8 0010BCC8  38 63 A3 B0 */	addi r3, r3, lbl_8026A3B0@l
/* 8010EECC 0010BCCC  38 63 00 0D */	addi r3, r3, 0xd
/* 8010EED0 0010BCD0  4E 80 00 20 */	blr 

.endif

.section .rodata
.global lbl_8026A3B0
lbl_8026A3B0:
	.incbin "baserom.dol", 0x267390, 0x18
