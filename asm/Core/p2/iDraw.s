.include "macros.inc"

.section .text  # 0x800C2E3C - 0x800C2EAC

.global func_800C2E3C
func_800C2E3C:
/* 800C2E3C 000BFC3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C2E40 000BFC40  7C 08 02 A6 */	mflr r0
/* 800C2E44 000BFC44  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C2E48 000BFC48  54 60 46 3F */	rlwinm. r0, r3, 8, 0x18, 0x1f
/* 800C2E4C 000BFC4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C2E50 000BFC50  7C 7F 1B 78 */	mr r31, r3
/* 800C2E54 000BFC54  40 82 00 10 */	bne lbl_800C2E64
/* 800C2E58 000BFC58  38 60 00 01 */	li r3, 1
/* 800C2E5C 000BFC5C  48 10 CA 45 */	bl func_801CF8A0
/* 800C2E60 000BFC60  48 00 00 14 */	b lbl_800C2E74
lbl_800C2E64:
/* 800C2E64 000BFC64  28 00 00 FF */	cmplwi r0, 0xff
/* 800C2E68 000BFC68  40 82 00 0C */	bne lbl_800C2E74
/* 800C2E6C 000BFC6C  38 60 00 00 */	li r3, 0
/* 800C2E70 000BFC70  48 10 CA 31 */	bl func_801CF8A0
lbl_800C2E74:
/* 800C2E74 000BFC74  57 E0 02 3F */	clrlwi. r0, r31, 8
/* 800C2E78 000BFC78  40 82 00 10 */	bne lbl_800C2E88
/* 800C2E7C 000BFC7C  38 60 00 01 */	li r3, 1
/* 800C2E80 000BFC80  48 10 C9 F5 */	bl func_801CF874
/* 800C2E84 000BFC84  48 00 00 0C */	b lbl_800C2E90
lbl_800C2E88:
/* 800C2E88 000BFC88  38 60 00 00 */	li r3, 0
/* 800C2E8C 000BFC8C  48 10 C9 E9 */	bl func_801CF874
lbl_800C2E90:
/* 800C2E90 000BFC90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C2E94 000BFC94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C2E98 000BFC98  7C 08 03 A6 */	mtlr r0
/* 800C2E9C 000BFC9C  38 21 00 10 */	addi r1, r1, 0x10
/* 800C2EA0 000BFCA0  4E 80 00 20 */	blr 

.global func_800C2EA4
func_800C2EA4:
/* 800C2EA4 000BFCA4  4E 80 00 20 */	blr 

.global func_800C2EA8
func_800C2EA8:
/* 800C2EA8 000BFCA8  4E 80 00 20 */	blr 