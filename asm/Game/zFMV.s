.include "macros.inc"

.section .text  # 0x80092BEC - 0x80092D1C

.global zFMVPlay__FPcUifbb
zFMVPlay__FPcUifbb:
/* 80092BEC 0008F9EC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80092BF0 0008F9F0  7C 08 02 A6 */	mflr r0
/* 80092BF4 0008F9F4  28 03 00 00 */	cmplwi r3, 0
/* 80092BF8 0008F9F8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80092BFC 0008F9FC  DB E1 00 58 */	stfd f31, 0x58(r1)
/* 80092C00 0008FA00  FF E0 08 90 */	fmr f31, f1
/* 80092C04 0008FA04  93 E1 00 54 */	stw r31, 0x54(r1)
/* 80092C08 0008FA08  93 C1 00 50 */	stw r30, 0x50(r1)
/* 80092C0C 0008FA0C  7C DE 33 78 */	mr r30, r6
/* 80092C10 0008FA10  93 A1 00 4C */	stw r29, 0x4c(r1)
/* 80092C14 0008FA14  7C BD 2B 78 */	mr r29, r5
/* 80092C18 0008FA18  93 81 00 48 */	stw r28, 0x48(r1)
/* 80092C1C 0008FA1C  7C 9C 23 78 */	mr r28, r4
/* 80092C20 0008FA20  40 82 00 14 */	bne lbl_80092C34
/* 80092C24 0008FA24  38 60 00 01 */	li r3, 1
/* 80092C28 0008FA28  48 00 00 84 */	b lbl_80092CAC
/* 80092C2C 0008FA2C  48 00 00 08 */	b lbl_80092C34
lbl_80092C30:
/* 80092C30 0008FA30  38 63 00 01 */	addi r3, r3, 1
lbl_80092C34:
/* 80092C34 0008FA34  88 03 00 00 */	lbz r0, 0(r3)
/* 80092C38 0008FA38  28 00 00 2F */	cmplwi r0, 0x2f
/* 80092C3C 0008FA3C  41 82 FF F4 */	beq lbl_80092C30
/* 80092C40 0008FA40  28 00 00 5C */	cmplwi r0, 0x5c
/* 80092C44 0008FA44  41 82 FF EC */	beq lbl_80092C30
/* 80092C48 0008FA48  3C 80 80 26 */	lis r4, lbl_8025BA20@ha
/* 80092C4C 0008FA4C  7C 65 1B 78 */	mr r5, r3
/* 80092C50 0008FA50  38 84 BA 20 */	addi r4, r4, lbl_8025BA20@l
/* 80092C54 0008FA54  38 61 00 08 */	addi r3, r1, 8
/* 80092C58 0008FA58  38 C4 00 05 */	addi r6, r4, 5
/* 80092C5C 0008FA5C  4C C6 31 82 */	crclr 6
/* 80092C60 0008FA60  48 15 12 D5 */	bl sprintf
/* 80092C64 0008FA64  4B FB 56 6D */	bl xSndSuspend__Fv
/* 80092C68 0008FA68  48 00 7C CD */	bl zGameGetOstrich__Fv
/* 80092C6C 0008FA6C  7C 60 1B 78 */	mr r0, r3
/* 80092C70 0008FA70  38 60 00 01 */	li r3, 1
/* 80092C74 0008FA74  7C 1F 03 78 */	mr r31, r0
/* 80092C78 0008FA78  48 00 7C C5 */	bl zGameSetOstrich__F12_GameOstrich
/* 80092C7C 0008FA7C  FC 20 F8 90 */	fmr f1, f31
/* 80092C80 0008FA80  7F 84 E3 78 */	mr r4, r28
/* 80092C84 0008FA84  7F A5 EB 78 */	mr r5, r29
/* 80092C88 0008FA88  7F C6 F3 78 */	mr r6, r30
/* 80092C8C 0008FA8C  38 61 00 08 */	addi r3, r1, 8
/* 80092C90 0008FA90  48 03 0D 61 */	bl iFMVPlay__FPcUifbb
/* 80092C94 0008FA94  7C 60 1B 78 */	mr r0, r3
/* 80092C98 0008FA98  7F E3 FB 78 */	mr r3, r31
/* 80092C9C 0008FA9C  7C 1F 03 78 */	mr r31, r0
/* 80092CA0 0008FAA0  48 00 7C 9D */	bl zGameSetOstrich__F12_GameOstrich
/* 80092CA4 0008FAA4  4B FB 56 61 */	bl xSndResume__Fv
/* 80092CA8 0008FAA8  7F E3 FB 78 */	mr r3, r31
lbl_80092CAC:
/* 80092CAC 0008FAAC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80092CB0 0008FAB0  CB E1 00 58 */	lfd f31, 0x58(r1)
/* 80092CB4 0008FAB4  83 E1 00 54 */	lwz r31, 0x54(r1)
/* 80092CB8 0008FAB8  83 C1 00 50 */	lwz r30, 0x50(r1)
/* 80092CBC 0008FABC  83 A1 00 4C */	lwz r29, 0x4c(r1)
/* 80092CC0 0008FAC0  83 81 00 48 */	lwz r28, 0x48(r1)
/* 80092CC4 0008FAC4  7C 08 03 A6 */	mtlr r0
/* 80092CC8 0008FAC8  38 21 00 60 */	addi r1, r1, 0x60
/* 80092CCC 0008FACC  4E 80 00 20 */	blr 

.global zFMVFileGetName__F8eFMVFile
zFMVFileGetName__F8eFMVFile:
/* 80092CD0 0008FAD0  3C 80 80 29 */	lis r4, lbl_8028EE98@ha
/* 80092CD4 0008FAD4  38 00 00 09 */	li r0, 9
/* 80092CD8 0008FAD8  38 84 EE 98 */	addi r4, r4, lbl_8028EE98@l
/* 80092CDC 0008FADC  38 A0 00 00 */	li r5, 0
/* 80092CE0 0008FAE0  7C 09 03 A6 */	mtctr r0
lbl_80092CE4:
/* 80092CE4 0008FAE4  80 04 00 00 */	lwz r0, 0(r4)
/* 80092CE8 0008FAE8  7C 03 00 00 */	cmpw r3, r0
/* 80092CEC 0008FAEC  40 82 00 1C */	bne lbl_80092D08
/* 80092CF0 0008FAF0  1C 85 00 24 */	mulli r4, r5, 0x24
/* 80092CF4 0008FAF4  3C 60 80 29 */	lis r3, lbl_8028EE98@ha
/* 80092CF8 0008FAF8  38 03 EE 98 */	addi r0, r3, lbl_8028EE98@l
/* 80092CFC 0008FAFC  7C 60 22 14 */	add r3, r0, r4
/* 80092D00 0008FB00  38 63 00 04 */	addi r3, r3, 4
/* 80092D04 0008FB04  4E 80 00 20 */	blr 
lbl_80092D08:
/* 80092D08 0008FB08  38 84 00 24 */	addi r4, r4, 0x24
/* 80092D0C 0008FB0C  38 A5 00 01 */	addi r5, r5, 1
/* 80092D10 0008FB10  42 00 FF D4 */	bdnz lbl_80092CE4
/* 80092D14 0008FB14  38 60 00 00 */	li r3, 0
/* 80092D18 0008FB18  4E 80 00 20 */	blr 
.section .rodata
lbl_8025BA20:
	.incbin "baserom.dol", 0x258A00, 0x10

.section .data
lbl_8028EE98:
	.incbin "baserom.dol", 0x28BE78, 0x148
