.include "macros.inc"

.section .text  # 0x8017F5E0 - 0x80180038

/* sort_buckets__24@unnamed@xPtankPool_cpp@FRQ224@unnamed@xPtankPool_cpp@10group_data */
sort_buckets__24$$2unnamed$$2xPtankPool_cpp$$2FRQ224$$2unnamed$$2xPtankPool_cpp$$210group_data:
/* 8017F5E0 0017C3E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8017F5E4 0017C3E4  7C 08 02 A6 */	mflr r0
/* 8017F5E8 0017C3E8  38 80 00 00 */	li r4, 0
/* 8017F5EC 0017C3EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8017F5F0 0017C3F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8017F5F4 0017C3F4  7C 7F 1B 78 */	mr r31, r3
/* 8017F5F8 0017C3F8  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8017F5FC 0017C3FC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8017F600 0017C400  54 05 10 3A */	slwi r5, r0, 2
/* 8017F604 0017C404  4B E8 3E 55 */	bl memset
/* 8017F608 0017C408  38 00 00 02 */	li r0, 2
/* 8017F60C 0017C40C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8017F610 0017C410  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 8017F614 0017C414  80 7F 00 08 */	lwz r3, 8(r31)
/* 8017F618 0017C418  1C 00 00 14 */	mulli r0, r0, 0x14
/* 8017F61C 0017C41C  7C C3 02 14 */	add r6, r3, r0
/* 8017F620 0017C420  48 00 00 E4 */	b lbl_8017F704
lbl_8017F624:
/* 8017F624 0017C424  80 A3 00 04 */	lwz r5, 4(r3)
/* 8017F628 0017C428  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 8017F62C 0017C42C  80 A5 00 18 */	lwz r5, 0x18(r5)
/* 8017F630 0017C430  80 A5 00 20 */	lwz r5, 0x20(r5)
/* 8017F634 0017C434  80 A5 00 00 */	lwz r5, 0(r5)
/* 8017F638 0017C438  80 E5 00 00 */	lwz r7, 0(r5)
/* 8017F63C 0017C43C  28 07 00 00 */	cmplwi r7, 0
/* 8017F640 0017C440  40 82 00 18 */	bne lbl_8017F658
/* 8017F644 0017C444  80 03 00 08 */	lwz r0, 8(r3)
/* 8017F648 0017C448  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8017F64C 0017C44C  41 82 00 A8 */	beq lbl_8017F6F4
/* 8017F650 0017C450  38 84 00 04 */	addi r4, r4, 4
/* 8017F654 0017C454  48 00 00 A0 */	b lbl_8017F6F4
lbl_8017F658:
/* 8017F658 0017C458  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8017F65C 0017C45C  38 84 00 08 */	addi r4, r4, 8
/* 8017F660 0017C460  54 05 10 3A */	slwi r5, r0, 2
/* 8017F664 0017C464  39 05 FF F8 */	addi r8, r5, -8
/* 8017F668 0017C468  7D 04 42 14 */	add r8, r4, r8
/* 8017F66C 0017C46C  38 08 00 03 */	addi r0, r8, 3
/* 8017F670 0017C470  7C 04 00 50 */	subf r0, r4, r0
/* 8017F674 0017C474  54 00 F0 BE */	srwi r0, r0, 2
/* 8017F678 0017C478  7C 09 03 A6 */	mtctr r0
/* 8017F67C 0017C47C  7C 04 40 40 */	cmplw r4, r8
/* 8017F680 0017C480  40 80 00 60 */	bge lbl_8017F6E0
lbl_8017F684:
/* 8017F684 0017C484  81 24 00 00 */	lwz r9, 0(r4)
/* 8017F688 0017C488  80 A9 00 04 */	lwz r5, 4(r9)
/* 8017F68C 0017C48C  80 A5 00 18 */	lwz r5, 0x18(r5)
/* 8017F690 0017C490  80 A5 00 20 */	lwz r5, 0x20(r5)
/* 8017F694 0017C494  80 A5 00 00 */	lwz r5, 0(r5)
/* 8017F698 0017C498  80 05 00 00 */	lwz r0, 0(r5)
/* 8017F69C 0017C49C  7C 07 00 40 */	cmplw r7, r0
/* 8017F6A0 0017C4A0  40 82 00 38 */	bne lbl_8017F6D8
/* 8017F6A4 0017C4A4  80 A3 00 10 */	lwz r5, 0x10(r3)
/* 8017F6A8 0017C4A8  80 09 00 10 */	lwz r0, 0x10(r9)
/* 8017F6AC 0017C4AC  7C 05 00 40 */	cmplw r5, r0
/* 8017F6B0 0017C4B0  40 82 00 28 */	bne lbl_8017F6D8
/* 8017F6B4 0017C4B4  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 8017F6B8 0017C4B8  80 09 00 0C */	lwz r0, 0xc(r9)
/* 8017F6BC 0017C4BC  7C 05 00 40 */	cmplw r5, r0
/* 8017F6C0 0017C4C0  40 82 00 18 */	bne lbl_8017F6D8
/* 8017F6C4 0017C4C4  80 A3 00 08 */	lwz r5, 8(r3)
/* 8017F6C8 0017C4C8  80 09 00 08 */	lwz r0, 8(r9)
/* 8017F6CC 0017C4CC  7C A0 02 78 */	xor r0, r5, r0
/* 8017F6D0 0017C4D0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8017F6D4 0017C4D4  41 82 00 0C */	beq lbl_8017F6E0
lbl_8017F6D8:
/* 8017F6D8 0017C4D8  38 84 00 04 */	addi r4, r4, 4
/* 8017F6DC 0017C4DC  42 00 FF A8 */	bdnz lbl_8017F684
lbl_8017F6E0:
/* 8017F6E0 0017C4E0  7C 04 40 40 */	cmplw r4, r8
/* 8017F6E4 0017C4E4  40 82 00 10 */	bne lbl_8017F6F4
/* 8017F6E8 0017C4E8  80 BF 00 18 */	lwz r5, 0x18(r31)
/* 8017F6EC 0017C4EC  38 05 00 01 */	addi r0, r5, 1
/* 8017F6F0 0017C4F0  90 1F 00 18 */	stw r0, 0x18(r31)
lbl_8017F6F4:
/* 8017F6F4 0017C4F4  80 04 00 00 */	lwz r0, 0(r4)
/* 8017F6F8 0017C4F8  90 03 00 00 */	stw r0, 0(r3)
/* 8017F6FC 0017C4FC  90 64 00 00 */	stw r3, 0(r4)
/* 8017F700 0017C500  38 63 00 14 */	addi r3, r3, 0x14
lbl_8017F704:
/* 8017F704 0017C504  7C 03 30 40 */	cmplw r3, r6
/* 8017F708 0017C508  40 82 FF 1C */	bne lbl_8017F624
/* 8017F70C 0017C50C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8017F710 0017C510  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8017F714 0017C514  7C 08 03 A6 */	mtlr r0
/* 8017F718 0017C518  38 21 00 10 */	addi r1, r1, 0x10
/* 8017F71C 0017C51C  4E 80 00 20 */	blr 

/* init_groups__24@unnamed@xPtankPool_cpp@Fv */
init_groups__24$$2unnamed$$2xPtankPool_cpp$$2Fv:
/* 8017F720 0017C520  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8017F724 0017C524  7C 08 02 A6 */	mflr r0
/* 8017F728 0017C528  3C 60 80 2A */	lis r3, lbl_8029B830@ha
/* 8017F72C 0017C52C  38 A0 00 00 */	li r5, 0
/* 8017F730 0017C530  90 01 00 24 */	stw r0, 0x24(r1)
/* 8017F734 0017C534  38 63 B8 30 */	addi r3, r3, lbl_8029B830@l
/* 8017F738 0017C538  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8017F73C 0017C53C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8017F740 0017C540  3B C3 00 38 */	addi r30, r3, 0x38
/* 8017F744 0017C544  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8017F748 0017C548  93 81 00 10 */	stw r28, 0x10(r1)
/* 8017F74C 0017C54C  48 00 00 10 */	b lbl_8017F75C
lbl_8017F750:
/* 8017F750 0017C550  80 03 00 00 */	lwz r0, 0(r3)
/* 8017F754 0017C554  38 63 00 1C */	addi r3, r3, 0x1c
/* 8017F758 0017C558  7C A5 02 14 */	add r5, r5, r0
lbl_8017F75C:
/* 8017F75C 0017C55C  7C 03 F0 40 */	cmplw r3, r30
/* 8017F760 0017C560  40 82 FF F0 */	bne lbl_8017F750
/* 8017F764 0017C564  1C 85 00 14 */	mulli r4, r5, 0x14
/* 8017F768 0017C568  38 05 00 04 */	addi r0, r5, 4
/* 8017F76C 0017C56C  80 6D 89 E0 */	lwz r3, gActiveHeap-_SDA_BASE_(r13)
/* 8017F770 0017C570  38 A0 00 00 */	li r5, 0
/* 8017F774 0017C574  54 00 10 3A */	slwi r0, r0, 2
/* 8017F778 0017C578  7C 84 02 14 */	add r4, r4, r0
/* 8017F77C 0017C57C  4B EB 41 C5 */	bl xMemAlloc__FUiUii
/* 8017F780 0017C580  3C 80 80 2A */	lis r4, lbl_8029B830@ha
/* 8017F784 0017C584  3B E0 00 00 */	li r31, 0
/* 8017F788 0017C588  38 04 B8 30 */	addi r0, r4, lbl_8029B830@l
/* 8017F78C 0017C58C  7C 7D 1B 78 */	mr r29, r3
/* 8017F790 0017C590  7C 1C 03 78 */	mr r28, r0
/* 8017F794 0017C594  48 00 00 48 */	b lbl_8017F7DC
lbl_8017F798:
/* 8017F798 0017C598  93 FC 00 18 */	stw r31, 0x18(r28)
/* 8017F79C 0017C59C  7F 83 E3 78 */	mr r3, r28
/* 8017F7A0 0017C5A0  93 FC 00 14 */	stw r31, 0x14(r28)
/* 8017F7A4 0017C5A4  93 FC 00 10 */	stw r31, 0x10(r28)
/* 8017F7A8 0017C5A8  93 BC 00 08 */	stw r29, 8(r28)
/* 8017F7AC 0017C5AC  80 1C 00 00 */	lwz r0, 0(r28)
/* 8017F7B0 0017C5B0  1C 00 00 14 */	mulli r0, r0, 0x14
/* 8017F7B4 0017C5B4  7F BD 02 14 */	add r29, r29, r0
/* 8017F7B8 0017C5B8  93 BC 00 0C */	stw r29, 0xc(r28)
/* 8017F7BC 0017C5BC  80 9C 00 00 */	lwz r4, 0(r28)
/* 8017F7C0 0017C5C0  38 04 00 02 */	addi r0, r4, 2
/* 8017F7C4 0017C5C4  90 1C 00 18 */	stw r0, 0x18(r28)
/* 8017F7C8 0017C5C8  80 1C 00 18 */	lwz r0, 0x18(r28)
/* 8017F7CC 0017C5CC  54 00 10 3A */	slwi r0, r0, 2
/* 8017F7D0 0017C5D0  7F BD 02 14 */	add r29, r29, r0
/* 8017F7D4 0017C5D4  4B FF FE 0D */	bl sort_buckets__24$$2unnamed$$2xPtankPool_cpp$$2FRQ224$$2unnamed$$2xPtankPool_cpp$$210group_data
/* 8017F7D8 0017C5D8  3B 9C 00 1C */	addi r28, r28, 0x1c
lbl_8017F7DC:
/* 8017F7DC 0017C5DC  7C 1C F0 40 */	cmplw r28, r30
/* 8017F7E0 0017C5E0  40 82 FF B8 */	bne lbl_8017F798
/* 8017F7E4 0017C5E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8017F7E8 0017C5E8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8017F7EC 0017C5EC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8017F7F0 0017C5F0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8017F7F4 0017C5F4  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8017F7F8 0017C5F8  7C 08 03 A6 */	mtlr r0
/* 8017F7FC 0017C5FC  38 21 00 20 */	addi r1, r1, 0x20
/* 8017F800 0017C600  4E 80 00 20 */	blr 

/* create_ptank__24@unnamed@xPtankPool_cpp@FUi */
create_ptank__24$$2unnamed$$2xPtankPool_cpp$$2FUi:
/* 8017F804 0017C604  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8017F808 0017C608  7C 08 02 A6 */	mflr r0
/* 8017F80C 0017C60C  38 A0 00 00 */	li r5, 0
/* 8017F810 0017C610  90 01 00 14 */	stw r0, 0x14(r1)
/* 8017F814 0017C614  7C 60 1B 78 */	mr r0, r3
/* 8017F818 0017C618  38 60 00 40 */	li r3, 0x40
/* 8017F81C 0017C61C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8017F820 0017C620  64 04 20 00 */	oris r4, r0, 0x2000
/* 8017F824 0017C624  48 08 6B FD */	bl RpPTankAtomicCreate
/* 8017F828 0017C628  7C 7F 1B 79 */	or. r31, r3, r3
/* 8017F82C 0017C62C  40 82 00 0C */	bne lbl_8017F838
/* 8017F830 0017C630  38 60 00 00 */	li r3, 0
/* 8017F834 0017C634  48 00 00 8C */	b lbl_8017F8C0
lbl_8017F838:
/* 8017F838 0017C638  48 0B 92 51 */	bl RwFrameCreate
/* 8017F83C 0017C63C  7C 64 1B 79 */	or. r4, r3, r3
/* 8017F840 0017C640  40 82 00 14 */	bne lbl_8017F854
/* 8017F844 0017C644  7F E3 FB 78 */	mr r3, r31
/* 8017F848 0017C648  48 08 6F 2D */	bl RpPTankAtomicDestroy
/* 8017F84C 0017C64C  38 60 00 00 */	li r3, 0
/* 8017F850 0017C650  48 00 00 70 */	b lbl_8017F8C0
lbl_8017F854:
/* 8017F854 0017C654  C0 02 AE 68 */	lfs f0, lbl_803CF7E8-_SDA2_BASE_(r2)
/* 8017F858 0017C658  7F E3 FB 78 */	mr r3, r31
/* 8017F85C 0017C65C  D0 04 00 38 */	stfs f0, 0x38(r4)
/* 8017F860 0017C660  D0 04 00 24 */	stfs f0, 0x24(r4)
/* 8017F864 0017C664  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 8017F868 0017C668  C0 02 AE 6C */	lfs f0, lbl_803CF7EC-_SDA2_BASE_(r2)
/* 8017F86C 0017C66C  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 8017F870 0017C670  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 8017F874 0017C674  D0 04 00 14 */	stfs f0, 0x14(r4)
/* 8017F878 0017C678  C0 02 AE 6C */	lfs f0, lbl_803CF7EC-_SDA2_BASE_(r2)
/* 8017F87C 0017C67C  D0 04 00 34 */	stfs f0, 0x34(r4)
/* 8017F880 0017C680  D0 04 00 30 */	stfs f0, 0x30(r4)
/* 8017F884 0017C684  D0 04 00 28 */	stfs f0, 0x28(r4)
/* 8017F888 0017C688  C0 02 AE 6C */	lfs f0, lbl_803CF7EC-_SDA2_BASE_(r2)
/* 8017F88C 0017C68C  D0 04 00 48 */	stfs f0, 0x48(r4)
/* 8017F890 0017C690  D0 04 00 44 */	stfs f0, 0x44(r4)
/* 8017F894 0017C694  D0 04 00 40 */	stfs f0, 0x40(r4)
/* 8017F898 0017C698  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 8017F89C 0017C69C  64 00 00 02 */	oris r0, r0, 2
/* 8017F8A0 0017C6A0  60 00 00 03 */	ori r0, r0, 3
/* 8017F8A4 0017C6A4  90 04 00 1C */	stw r0, 0x1c(r4)
/* 8017F8A8 0017C6A8  48 09 55 95 */	bl RpAtomicSetFrame
/* 8017F8AC 0017C6AC  80 0D 9E 28 */	lwz r0, _rpPTankAtomicDataOffset-_SDA_BASE_(r13)
/* 8017F8B0 0017C6B0  38 A0 00 01 */	li r5, 1
/* 8017F8B4 0017C6B4  7F E3 FB 78 */	mr r3, r31
/* 8017F8B8 0017C6B8  7C 9F 00 2E */	lwzx r4, r31, r0
/* 8017F8BC 0017C6BC  90 A4 00 AC */	stw r5, 0xac(r4)
lbl_8017F8C0:
/* 8017F8C0 0017C6C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8017F8C4 0017C6C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8017F8C8 0017C6C8  7C 08 03 A6 */	mtlr r0
/* 8017F8CC 0017C6CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8017F8D0 0017C6D0  4E 80 00 20 */	blr 

/* destroy_ptank__24@unnamed@xPtankPool_cpp@FP8RpAtomic */
destroy_ptank__24$$2unnamed$$2xPtankPool_cpp$$2FP8RpAtomic:
/* 8017F8D4 0017C6D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8017F8D8 0017C6D8  7C 08 02 A6 */	mflr r0
/* 8017F8DC 0017C6DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8017F8E0 0017C6E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8017F8E4 0017C6E4  93 C1 00 08 */	stw r30, 8(r1)
/* 8017F8E8 0017C6E8  7C 7E 1B 79 */	or. r30, r3, r3
/* 8017F8EC 0017C6EC  41 82 00 28 */	beq lbl_8017F914
/* 8017F8F0 0017C6F0  83 FE 00 04 */	lwz r31, 4(r30)
/* 8017F8F4 0017C6F4  38 80 00 00 */	li r4, 0
/* 8017F8F8 0017C6F8  48 09 55 45 */	bl RpAtomicSetFrame
/* 8017F8FC 0017C6FC  28 1F 00 00 */	cmplwi r31, 0
/* 8017F900 0017C700  41 82 00 0C */	beq lbl_8017F90C
/* 8017F904 0017C704  7F E3 FB 78 */	mr r3, r31
/* 8017F908 0017C708  48 0B 92 BD */	bl RwFrameDestroy
lbl_8017F90C:
/* 8017F90C 0017C70C  7F C3 F3 78 */	mr r3, r30
/* 8017F910 0017C710  48 08 6E 65 */	bl RpPTankAtomicDestroy
lbl_8017F914:
/* 8017F914 0017C714  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8017F918 0017C718  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8017F91C 0017C71C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8017F920 0017C720  7C 08 03 A6 */	mtlr r0
/* 8017F924 0017C724  38 21 00 10 */	addi r1, r1, 0x10
/* 8017F928 0017C728  4E 80 00 20 */	blr 

/* render_ptank__24@unnamed@xPtankPool_cpp@FRCQ224@unnamed@xPtankPool_cpp@13ptank_context */
render_ptank__24$$2unnamed$$2xPtankPool_cpp$$2FRCQ224$$2unnamed$$2xPtankPool_cpp$$213ptank_context:
/* 8017F92C 0017C72C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8017F930 0017C730  7C 08 02 A6 */	mflr r0
/* 8017F934 0017C734  90 01 00 14 */	stw r0, 0x14(r1)
/* 8017F938 0017C738  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8017F93C 0017C73C  7C 7F 1B 78 */	mr r31, r3
/* 8017F940 0017C740  80 1F 00 08 */	lwz r0, 8(r31)
/* 8017F944 0017C744  38 60 00 06 */	li r3, 6
/* 8017F948 0017C748  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8017F94C 0017C74C  7C 00 00 34 */	cntlzw r0, r0
/* 8017F950 0017C750  54 04 DE 3E */	rlwinm r4, r0, 0x1b, 0x18, 0x1f
/* 8017F954 0017C754  48 0A FE 89 */	bl RwRenderStateSet
/* 8017F958 0017C758  80 7F 00 04 */	lwz r3, 4(r31)
/* 8017F95C 0017C75C  81 83 00 48 */	lwz r12, 0x48(r3)
/* 8017F960 0017C760  7D 89 03 A6 */	mtctr r12
/* 8017F964 0017C764  4E 80 04 21 */	bctrl 
/* 8017F968 0017C768  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8017F96C 0017C76C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8017F970 0017C770  7C 08 03 A6 */	mtlr r0
/* 8017F974 0017C774  38 21 00 10 */	addi r1, r1, 0x10
/* 8017F978 0017C778  4E 80 00 20 */	blr 
lbl_8017F97C:
/* 8017F97C 0017C77C  80 A3 00 10 */	lwz r5, 0x10(r3)
/* 8017F980 0017C780  80 04 00 10 */	lwz r0, 0x10(r4)
/* 8017F984 0017C784  7C 05 00 40 */	cmplw r5, r0
/* 8017F988 0017C788  40 80 00 0C */	bge lbl_8017F994
/* 8017F98C 0017C78C  38 60 00 01 */	li r3, 1
/* 8017F990 0017C790  4E 80 00 20 */	blr 
lbl_8017F994:
/* 8017F994 0017C794  40 81 00 0C */	ble lbl_8017F9A0
/* 8017F998 0017C798  38 60 FF FF */	li r3, -1
/* 8017F99C 0017C79C  4E 80 00 20 */	blr 
lbl_8017F9A0:
/* 8017F9A0 0017C7A0  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 8017F9A4 0017C7A4  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8017F9A8 0017C7A8  7C 05 00 40 */	cmplw r5, r0
/* 8017F9AC 0017C7AC  40 80 00 0C */	bge lbl_8017F9B8
/* 8017F9B0 0017C7B0  38 60 FF FF */	li r3, -1
/* 8017F9B4 0017C7B4  4E 80 00 20 */	blr 
lbl_8017F9B8:
/* 8017F9B8 0017C7B8  40 81 00 0C */	ble lbl_8017F9C4
/* 8017F9BC 0017C7BC  38 60 00 01 */	li r3, 1
/* 8017F9C0 0017C7C0  4E 80 00 20 */	blr 
lbl_8017F9C4:
/* 8017F9C4 0017C7C4  80 A3 00 04 */	lwz r5, 4(r3)
/* 8017F9C8 0017C7C8  80 64 00 04 */	lwz r3, 4(r4)
/* 8017F9CC 0017C7CC  80 85 00 18 */	lwz r4, 0x18(r5)
/* 8017F9D0 0017C7D0  80 63 00 18 */	lwz r3, 0x18(r3)
/* 8017F9D4 0017C7D4  80 84 00 20 */	lwz r4, 0x20(r4)
/* 8017F9D8 0017C7D8  80 63 00 20 */	lwz r3, 0x20(r3)
/* 8017F9DC 0017C7DC  80 84 00 00 */	lwz r4, 0(r4)
/* 8017F9E0 0017C7E0  80 63 00 00 */	lwz r3, 0(r3)
/* 8017F9E4 0017C7E4  80 84 00 00 */	lwz r4, 0(r4)
/* 8017F9E8 0017C7E8  80 03 00 00 */	lwz r0, 0(r3)
/* 8017F9EC 0017C7EC  7C 04 00 40 */	cmplw r4, r0
/* 8017F9F0 0017C7F0  40 80 00 0C */	bge lbl_8017F9FC
/* 8017F9F4 0017C7F4  38 60 FF FF */	li r3, -1
/* 8017F9F8 0017C7F8  4E 80 00 20 */	blr 
lbl_8017F9FC:
/* 8017F9FC 0017C7FC  7C 80 02 78 */	xor r0, r4, r0
/* 8017FA00 0017C800  7C 00 00 34 */	cntlzw r0, r0
/* 8017FA04 0017C804  7C 80 00 30 */	slw r0, r4, r0
/* 8017FA08 0017C808  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8017FA0C 0017C80C  4E 80 00 20 */	blr 

.global xPTankPoolSceneEnter__Fv
xPTankPoolSceneEnter__Fv:
/* 8017FA10 0017C810  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8017FA14 0017C814  7C 08 02 A6 */	mflr r0
/* 8017FA18 0017C818  90 01 00 24 */	stw r0, 0x24(r1)
/* 8017FA1C 0017C81C  38 00 00 01 */	li r0, 1
/* 8017FA20 0017C820  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8017FA24 0017C824  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8017FA28 0017C828  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8017FA2C 0017C82C  98 0D 97 E8 */	stb r0, lbl_803CC0E8-_SDA_BASE_(r13)
/* 8017FA30 0017C830  4B FF FC F1 */	bl init_groups__24$$2unnamed$$2xPtankPool_cpp$$2Fv
/* 8017FA34 0017C834  3C 60 80 2A */	lis r3, lbl_8029B830@ha
/* 8017FA38 0017C838  3F E0 43 30 */	lis r31, 0x4330
/* 8017FA3C 0017C83C  38 63 B8 30 */	addi r3, r3, lbl_8029B830@l
/* 8017FA40 0017C840  7C 7E 1B 78 */	mr r30, r3
/* 8017FA44 0017C844  3B A3 00 38 */	addi r29, r3, 0x38
/* 8017FA48 0017C848  48 00 00 3C */	b lbl_8017FA84
lbl_8017FA4C:
/* 8017FA4C 0017C84C  80 1E 00 00 */	lwz r0, 0(r30)
/* 8017FA50 0017C850  93 E1 00 08 */	stw r31, 8(r1)
/* 8017FA54 0017C854  C8 42 AE 78 */	lfd f2, lbl_803CF7F8-_SDA2_BASE_(r2)
/* 8017FA58 0017C858  90 01 00 0C */	stw r0, 0xc(r1)
/* 8017FA5C 0017C85C  C0 62 AE 74 */	lfs f3, lbl_803CF7F4-_SDA2_BASE_(r2)
/* 8017FA60 0017C860  C8 21 00 08 */	lfd f1, 8(r1)
/* 8017FA64 0017C864  C0 02 AE 70 */	lfs f0, lbl_803CF7F0-_SDA2_BASE_(r2)
/* 8017FA68 0017C868  EC 21 10 28 */	fsubs f1, f1, f2
/* 8017FA6C 0017C86C  EC 23 00 7A */	fmadds f1, f3, f1, f0
/* 8017FA70 0017C870  48 06 D9 6D */	bl func_801ED3DC
/* 8017FA74 0017C874  7C 64 1B 78 */	mr r4, r3
/* 8017FA78 0017C878  7F C3 F3 78 */	mr r3, r30
/* 8017FA7C 0017C87C  48 00 00 2D */	bl create_ptanks__24$$2unnamed$$2xPtankPool_cpp$$2FRQ224$$2unnamed$$2xPtankPool_cpp$$210group_dataUl
/* 8017FA80 0017C880  3B DE 00 1C */	addi r30, r30, 0x1c
lbl_8017FA84:
/* 8017FA84 0017C884  7C 1E E8 40 */	cmplw r30, r29
/* 8017FA88 0017C888  40 82 FF C4 */	bne lbl_8017FA4C
/* 8017FA8C 0017C88C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8017FA90 0017C890  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8017FA94 0017C894  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8017FA98 0017C898  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8017FA9C 0017C89C  7C 08 03 A6 */	mtlr r0
/* 8017FAA0 0017C8A0  38 21 00 20 */	addi r1, r1, 0x20
/* 8017FAA4 0017C8A4  4E 80 00 20 */	blr 

/* create_ptanks__24@unnamed@xPtankPool_cpp@FRQ224@unnamed@xPtankPool_cpp@10group_dataUl */
create_ptanks__24$$2unnamed$$2xPtankPool_cpp$$2FRQ224$$2unnamed$$2xPtankPool_cpp$$210group_dataUl:
/* 8017FAA8 0017C8A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8017FAAC 0017C8AC  7C 08 02 A6 */	mflr r0
/* 8017FAB0 0017C8B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8017FAB4 0017C8B4  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 8017FAB8 0017C8B8  7C 7B 1B 78 */	mr r27, r3
/* 8017FABC 0017C8BC  83 C3 00 10 */	lwz r30, 0x10(r3)
/* 8017FAC0 0017C8C0  80 63 00 00 */	lwz r3, 0(r3)
/* 8017FAC4 0017C8C4  7C 1E 22 14 */	add r0, r30, r4
/* 8017FAC8 0017C8C8  7C 00 18 40 */	cmplw r0, r3
/* 8017FACC 0017C8CC  40 81 00 08 */	ble lbl_8017FAD4
/* 8017FAD0 0017C8D0  7C 9E 18 50 */	subf r4, r30, r3
lbl_8017FAD4:
/* 8017FAD4 0017C8D4  1C 1E 00 14 */	mulli r0, r30, 0x14
/* 8017FAD8 0017C8D8  80 7B 00 08 */	lwz r3, 8(r27)
/* 8017FADC 0017C8DC  3B E0 00 01 */	li r31, 1
/* 8017FAE0 0017C8E0  7C 63 02 14 */	add r3, r3, r0
/* 8017FAE4 0017C8E4  1C 04 00 14 */	mulli r0, r4, 0x14
/* 8017FAE8 0017C8E8  7C 7C 1B 78 */	mr r28, r3
/* 8017FAEC 0017C8EC  7F A3 02 14 */	add r29, r3, r0
/* 8017FAF0 0017C8F0  48 00 00 44 */	b lbl_8017FB34
lbl_8017FAF4:
/* 8017FAF4 0017C8F4  80 7B 00 04 */	lwz r3, 4(r27)
/* 8017FAF8 0017C8F8  4B FF FD 0D */	bl create_ptank__24$$2unnamed$$2xPtankPool_cpp$$2FUi
/* 8017FAFC 0017C8FC  90 7C 00 04 */	stw r3, 4(r28)
/* 8017FB00 0017C900  80 1C 00 04 */	lwz r0, 4(r28)
/* 8017FB04 0017C904  28 00 00 00 */	cmplwi r0, 0
/* 8017FB08 0017C908  41 82 00 34 */	beq lbl_8017FB3C
/* 8017FB0C 0017C90C  93 FC 00 08 */	stw r31, 8(r28)
/* 8017FB10 0017C910  80 7B 00 0C */	lwz r3, 0xc(r27)
/* 8017FB14 0017C914  80 03 00 00 */	lwz r0, 0(r3)
/* 8017FB18 0017C918  90 1C 00 00 */	stw r0, 0(r28)
/* 8017FB1C 0017C91C  80 7B 00 0C */	lwz r3, 0xc(r27)
/* 8017FB20 0017C920  93 83 00 00 */	stw r28, 0(r3)
/* 8017FB24 0017C924  3B 9C 00 14 */	addi r28, r28, 0x14
/* 8017FB28 0017C928  80 7B 00 10 */	lwz r3, 0x10(r27)
/* 8017FB2C 0017C92C  38 03 00 01 */	addi r0, r3, 1
/* 8017FB30 0017C930  90 1B 00 10 */	stw r0, 0x10(r27)
lbl_8017FB34:
/* 8017FB34 0017C934  7C 1C E8 40 */	cmplw r28, r29
/* 8017FB38 0017C938  41 80 FF BC */	blt lbl_8017FAF4
lbl_8017FB3C:
/* 8017FB3C 0017C93C  80 1B 00 10 */	lwz r0, 0x10(r27)
/* 8017FB40 0017C940  7C 7E 00 50 */	subf r3, r30, r0
/* 8017FB44 0017C944  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 8017FB48 0017C948  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8017FB4C 0017C94C  7C 08 03 A6 */	mtlr r0
/* 8017FB50 0017C950  38 21 00 20 */	addi r1, r1, 0x20
/* 8017FB54 0017C954  4E 80 00 20 */	blr 

.global xPTankPoolSceneExit__Fv
xPTankPoolSceneExit__Fv:
/* 8017FB58 0017C958  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8017FB5C 0017C95C  7C 08 02 A6 */	mflr r0
/* 8017FB60 0017C960  3C 60 80 2A */	lis r3, lbl_8029B830@ha
/* 8017FB64 0017C964  90 01 00 24 */	stw r0, 0x24(r1)
/* 8017FB68 0017C968  38 00 00 00 */	li r0, 0
/* 8017FB6C 0017C96C  38 63 B8 30 */	addi r3, r3, lbl_8029B830@l
/* 8017FB70 0017C970  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8017FB74 0017C974  7C 7F 1B 78 */	mr r31, r3
/* 8017FB78 0017C978  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8017FB7C 0017C97C  3B C3 00 38 */	addi r30, r3, 0x38
/* 8017FB80 0017C980  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8017FB84 0017C984  93 81 00 10 */	stw r28, 0x10(r1)
/* 8017FB88 0017C988  98 0D 97 E8 */	stb r0, lbl_803CC0E8-_SDA_BASE_(r13)
/* 8017FB8C 0017C98C  48 00 00 30 */	b lbl_8017FBBC
lbl_8017FB90:
/* 8017FB90 0017C990  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 8017FB94 0017C994  83 BF 00 08 */	lwz r29, 8(r31)
/* 8017FB98 0017C998  1C 00 00 14 */	mulli r0, r0, 0x14
/* 8017FB9C 0017C99C  7F 9D 02 14 */	add r28, r29, r0
/* 8017FBA0 0017C9A0  48 00 00 10 */	b lbl_8017FBB0
lbl_8017FBA4:
/* 8017FBA4 0017C9A4  80 7D 00 04 */	lwz r3, 4(r29)
/* 8017FBA8 0017C9A8  4B FF FD 2D */	bl destroy_ptank__24$$2unnamed$$2xPtankPool_cpp$$2FP8RpAtomic
/* 8017FBAC 0017C9AC  3B BD 00 14 */	addi r29, r29, 0x14
lbl_8017FBB0:
/* 8017FBB0 0017C9B0  7C 1D E0 40 */	cmplw r29, r28
/* 8017FBB4 0017C9B4  40 82 FF F0 */	bne lbl_8017FBA4
/* 8017FBB8 0017C9B8  3B FF 00 1C */	addi r31, r31, 0x1c
lbl_8017FBBC:
/* 8017FBBC 0017C9BC  7C 1F F0 40 */	cmplw r31, r30
/* 8017FBC0 0017C9C0  40 82 FF D0 */	bne lbl_8017FB90
/* 8017FBC4 0017C9C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8017FBC8 0017C9C8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8017FBCC 0017C9CC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8017FBD0 0017C9D0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8017FBD4 0017C9D4  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8017FBD8 0017C9D8  7C 08 03 A6 */	mtlr r0
/* 8017FBDC 0017C9DC  38 21 00 20 */	addi r1, r1, 0x20
/* 8017FBE0 0017C9E0  4E 80 00 20 */	blr 

.global xPTankPoolRender__Fv
xPTankPoolRender__Fv:
/* 8017FBE4 0017C9E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8017FBE8 0017C9E8  7C 08 02 A6 */	mflr r0
/* 8017FBEC 0017C9EC  38 60 00 14 */	li r3, 0x14
/* 8017FBF0 0017C9F0  38 80 00 01 */	li r4, 1
/* 8017FBF4 0017C9F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8017FBF8 0017C9F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8017FBFC 0017C9FC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8017FC00 0017CA00  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8017FC04 0017CA04  93 81 00 10 */	stw r28, 0x10(r1)
/* 8017FC08 0017CA08  48 0A FB D5 */	bl RwRenderStateSet
/* 8017FC0C 0017CA0C  38 60 00 08 */	li r3, 8
/* 8017FC10 0017CA10  38 80 00 00 */	li r4, 0
/* 8017FC14 0017CA14  48 0A FB C9 */	bl RwRenderStateSet
/* 8017FC18 0017CA18  3C 60 80 2A */	lis r3, lbl_8029B830@ha
/* 8017FC1C 0017CA1C  38 63 B8 30 */	addi r3, r3, lbl_8029B830@l
/* 8017FC20 0017CA20  7C 7F 1B 78 */	mr r31, r3
/* 8017FC24 0017CA24  3B C3 00 38 */	addi r30, r3, 0x38
/* 8017FC28 0017CA28  48 00 00 AC */	b lbl_8017FCD4
lbl_8017FC2C:
/* 8017FC2C 0017CA2C  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8017FC30 0017CA30  28 00 00 00 */	cmplwi r0, 0
/* 8017FC34 0017CA34  41 82 00 9C */	beq lbl_8017FCD0
/* 8017FC38 0017CA38  3C 80 80 18 */	lis r4, lbl_8017F97C@ha
/* 8017FC3C 0017CA3C  80 7F 00 08 */	lwz r3, 8(r31)
/* 8017FC40 0017CA40  38 C4 F9 7C */	addi r6, r4, lbl_8017F97C@l
/* 8017FC44 0017CA44  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 8017FC48 0017CA48  38 A0 00 14 */	li r5, 0x14
/* 8017FC4C 0017CA4C  48 06 64 29 */	bl qsort
/* 8017FC50 0017CA50  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 8017FC54 0017CA54  83 BF 00 08 */	lwz r29, 8(r31)
/* 8017FC58 0017CA58  1C 00 00 14 */	mulli r0, r0, 0x14
/* 8017FC5C 0017CA5C  7F 9D 02 14 */	add r28, r29, r0
/* 8017FC60 0017CA60  48 00 00 58 */	b lbl_8017FCB8
lbl_8017FC64:
/* 8017FC64 0017CA64  80 7D 00 08 */	lwz r3, 8(r29)
/* 8017FC68 0017CA68  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 8017FC6C 0017CA6C  41 82 00 1C */	beq lbl_8017FC88
/* 8017FC70 0017CA70  7F A3 EB 78 */	mr r3, r29
/* 8017FC74 0017CA74  4B FF FC B9 */	bl render_ptank__24$$2unnamed$$2xPtankPool_cpp$$2FRCQ224$$2unnamed$$2xPtankPool_cpp$$213ptank_context
/* 8017FC78 0017CA78  80 1D 00 08 */	lwz r0, 8(r29)
/* 8017FC7C 0017CA7C  54 00 04 1C */	rlwinm r0, r0, 0, 0x10, 0xe
/* 8017FC80 0017CA80  90 1D 00 08 */	stw r0, 8(r29)
/* 8017FC84 0017CA84  48 00 00 30 */	b lbl_8017FCB4
lbl_8017FC88:
/* 8017FC88 0017CA88  54 60 03 9D */	rlwinm. r0, r3, 0, 0xe, 0xe
/* 8017FC8C 0017CA8C  40 82 00 28 */	bne lbl_8017FCB4
/* 8017FC90 0017CA90  80 7D 00 04 */	lwz r3, 4(r29)
/* 8017FC94 0017CA94  38 80 00 00 */	li r4, 0
/* 8017FC98 0017CA98  80 63 00 18 */	lwz r3, 0x18(r3)
/* 8017FC9C 0017CA9C  80 63 00 20 */	lwz r3, 0x20(r3)
/* 8017FCA0 0017CAA0  80 63 00 00 */	lwz r3, 0(r3)
/* 8017FCA4 0017CAA4  48 09 7F F5 */	bl RpMaterialSetTexture
/* 8017FCA8 0017CAA8  80 1D 00 08 */	lwz r0, 8(r29)
/* 8017FCAC 0017CAAC  64 00 00 02 */	oris r0, r0, 2
/* 8017FCB0 0017CAB0  90 1D 00 08 */	stw r0, 8(r29)
lbl_8017FCB4:
/* 8017FCB4 0017CAB4  3B BD 00 14 */	addi r29, r29, 0x14
lbl_8017FCB8:
/* 8017FCB8 0017CAB8  7C 1D E0 40 */	cmplw r29, r28
/* 8017FCBC 0017CABC  40 82 FF A8 */	bne lbl_8017FC64
/* 8017FCC0 0017CAC0  38 00 00 00 */	li r0, 0
/* 8017FCC4 0017CAC4  7F E3 FB 78 */	mr r3, r31
/* 8017FCC8 0017CAC8  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8017FCCC 0017CACC  4B FF F9 15 */	bl sort_buckets__24$$2unnamed$$2xPtankPool_cpp$$2FRQ224$$2unnamed$$2xPtankPool_cpp$$210group_data
lbl_8017FCD0:
/* 8017FCD0 0017CAD0  3B FF 00 1C */	addi r31, r31, 0x1c
lbl_8017FCD4:
/* 8017FCD4 0017CAD4  7C 1F F0 40 */	cmplw r31, r30
/* 8017FCD8 0017CAD8  40 82 FF 54 */	bne lbl_8017FC2C
/* 8017FCDC 0017CADC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8017FCE0 0017CAE0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8017FCE4 0017CAE4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8017FCE8 0017CAE8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8017FCEC 0017CAEC  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8017FCF0 0017CAF0  7C 08 03 A6 */	mtlr r0
/* 8017FCF4 0017CAF4  38 21 00 20 */	addi r1, r1, 0x20
/* 8017FCF8 0017CAF8  4E 80 00 20 */	blr 

.global grab_block__10ptank_poolF16ptank_group_type
grab_block__10ptank_poolF16ptank_group_type:
/* 8017FCFC 0017CAFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8017FD00 0017CB00  7C 08 02 A6 */	mflr r0
/* 8017FD04 0017CB04  1C A4 00 1C */	mulli r5, r4, 0x1c
/* 8017FD08 0017CB08  3C 80 80 2A */	lis r4, lbl_8029B830@ha
/* 8017FD0C 0017CB0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8017FD10 0017CB10  38 04 B8 30 */	addi r0, r4, lbl_8029B830@l
/* 8017FD14 0017CB14  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8017FD18 0017CB18  7F E0 2A 14 */	add r31, r0, r5
/* 8017FD1C 0017CB1C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8017FD20 0017CB20  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8017FD24 0017CB24  7C 7D 1B 78 */	mr r29, r3
/* 8017FD28 0017CB28  38 60 00 00 */	li r3, 0
/* 8017FD2C 0017CB2C  90 7D 00 14 */	stw r3, 0x14(r29)
/* 8017FD30 0017CB30  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8017FD34 0017CB34  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 8017FD38 0017CB38  7C 03 00 40 */	cmplw r3, r0
/* 8017FD3C 0017CB3C  41 80 00 18 */	blt lbl_8017FD54
/* 8017FD40 0017CB40  7F E3 FB 78 */	mr r3, r31
/* 8017FD44 0017CB44  38 80 00 01 */	li r4, 1
/* 8017FD48 0017CB48  4B FF FD 61 */	bl create_ptanks__24$$2unnamed$$2xPtankPool_cpp$$2FRQ224$$2unnamed$$2xPtankPool_cpp$$210group_dataUl
/* 8017FD4C 0017CB4C  28 03 00 01 */	cmplwi r3, 1
/* 8017FD50 0017CB50  41 80 01 D0 */	blt lbl_8017FF20
lbl_8017FD54:
/* 8017FD54 0017CB54  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8017FD58 0017CB58  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 8017FD5C 0017CB5C  54 00 10 3A */	slwi r0, r0, 2
/* 8017FD60 0017CB60  7C E4 02 14 */	add r7, r4, r0
/* 8017FD64 0017CB64  39 04 00 08 */	addi r8, r4, 8
/* 8017FD68 0017CB68  38 07 00 03 */	addi r0, r7, 3
/* 8017FD6C 0017CB6C  7C 08 00 50 */	subf r0, r8, r0
/* 8017FD70 0017CB70  54 00 F0 BE */	srwi r0, r0, 2
/* 8017FD74 0017CB74  7C 09 03 A6 */	mtctr r0
/* 8017FD78 0017CB78  7C 08 38 40 */	cmplw r8, r7
/* 8017FD7C 0017CB7C  40 80 00 9C */	bge lbl_8017FE18
lbl_8017FD80:
/* 8017FD80 0017CB80  80 A8 00 00 */	lwz r5, 0(r8)
/* 8017FD84 0017CB84  28 05 00 00 */	cmplwi r5, 0
/* 8017FD88 0017CB88  41 82 00 88 */	beq lbl_8017FE10
/* 8017FD8C 0017CB8C  80 C5 00 04 */	lwz r6, 4(r5)
/* 8017FD90 0017CB90  80 1D 00 00 */	lwz r0, 0(r29)
/* 8017FD94 0017CB94  80 66 00 18 */	lwz r3, 0x18(r6)
/* 8017FD98 0017CB98  80 63 00 20 */	lwz r3, 0x20(r3)
/* 8017FD9C 0017CB9C  80 63 00 00 */	lwz r3, 0(r3)
/* 8017FDA0 0017CBA0  80 63 00 00 */	lwz r3, 0(r3)
/* 8017FDA4 0017CBA4  7C 03 00 40 */	cmplw r3, r0
/* 8017FDA8 0017CBA8  40 82 00 68 */	bne lbl_8017FE10
/* 8017FDAC 0017CBAC  80 65 00 10 */	lwz r3, 0x10(r5)
/* 8017FDB0 0017CBB0  80 1D 00 08 */	lwz r0, 8(r29)
/* 8017FDB4 0017CBB4  7C 03 00 40 */	cmplw r3, r0
/* 8017FDB8 0017CBB8  40 82 00 58 */	bne lbl_8017FE10
/* 8017FDBC 0017CBBC  80 65 00 0C */	lwz r3, 0xc(r5)
/* 8017FDC0 0017CBC0  80 1D 00 04 */	lwz r0, 4(r29)
/* 8017FDC4 0017CBC4  7C 03 00 40 */	cmplw r3, r0
/* 8017FDC8 0017CBC8  40 82 00 48 */	bne lbl_8017FE10
/* 8017FDCC 0017CBCC  80 65 00 08 */	lwz r3, 8(r5)
/* 8017FDD0 0017CBD0  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8017FDD4 0017CBD4  7C 60 02 78 */	xor r0, r3, r0
/* 8017FDD8 0017CBD8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8017FDDC 0017CBDC  40 82 00 34 */	bne lbl_8017FE10
/* 8017FDE0 0017CBE0  90 DD 00 14 */	stw r6, 0x14(r29)
/* 8017FDE4 0017CBE4  80 68 00 00 */	lwz r3, 0(r8)
/* 8017FDE8 0017CBE8  80 03 00 08 */	lwz r0, 8(r3)
/* 8017FDEC 0017CBEC  64 00 00 01 */	oris r0, r0, 1
/* 8017FDF0 0017CBF0  90 03 00 08 */	stw r0, 8(r3)
/* 8017FDF4 0017CBF4  80 68 00 00 */	lwz r3, 0(r8)
/* 8017FDF8 0017CBF8  80 03 00 00 */	lwz r0, 0(r3)
/* 8017FDFC 0017CBFC  90 08 00 00 */	stw r0, 0(r8)
/* 8017FE00 0017CC00  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8017FE04 0017CC04  38 03 00 01 */	addi r0, r3, 1
/* 8017FE08 0017CC08  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8017FE0C 0017CC0C  48 00 01 14 */	b lbl_8017FF20
lbl_8017FE10:
/* 8017FE10 0017CC10  39 08 00 04 */	addi r8, r8, 4
/* 8017FE14 0017CC14  42 00 FF 6C */	bdnz lbl_8017FD80
lbl_8017FE18:
/* 8017FE18 0017CC18  38 07 00 03 */	addi r0, r7, 3
/* 8017FE1C 0017CC1C  7C 9E 23 78 */	mr r30, r4
/* 8017FE20 0017CC20  7C 04 00 50 */	subf r0, r4, r0
/* 8017FE24 0017CC24  54 00 F0 BE */	srwi r0, r0, 2
/* 8017FE28 0017CC28  7C 09 03 A6 */	mtctr r0
/* 8017FE2C 0017CC2C  7C 04 38 40 */	cmplw r4, r7
/* 8017FE30 0017CC30  40 80 00 F0 */	bge lbl_8017FF20
lbl_8017FE34:
/* 8017FE34 0017CC34  80 7E 00 00 */	lwz r3, 0(r30)
/* 8017FE38 0017CC38  28 03 00 00 */	cmplwi r3, 0
/* 8017FE3C 0017CC3C  41 82 00 DC */	beq lbl_8017FF18
/* 8017FE40 0017CC40  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8017FE44 0017CC44  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8017FE48 0017CC48  41 82 00 28 */	beq lbl_8017FE70
/* 8017FE4C 0017CC4C  80 03 00 08 */	lwz r0, 8(r3)
/* 8017FE50 0017CC50  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8017FE54 0017CC54  40 82 00 1C */	bne lbl_8017FE70
/* 8017FE58 0017CC58  80 63 00 04 */	lwz r3, 4(r3)
/* 8017FE5C 0017CC5C  4B FF FA 79 */	bl destroy_ptank__24$$2unnamed$$2xPtankPool_cpp$$2FP8RpAtomic
/* 8017FE60 0017CC60  80 7F 00 04 */	lwz r3, 4(r31)
/* 8017FE64 0017CC64  4B FF F9 A1 */	bl create_ptank__24$$2unnamed$$2xPtankPool_cpp$$2FUi
/* 8017FE68 0017CC68  80 9E 00 00 */	lwz r4, 0(r30)
/* 8017FE6C 0017CC6C  90 64 00 04 */	stw r3, 4(r4)
lbl_8017FE70:
/* 8017FE70 0017CC70  80 7E 00 00 */	lwz r3, 0(r30)
/* 8017FE74 0017CC74  80 03 00 04 */	lwz r0, 4(r3)
/* 8017FE78 0017CC78  90 1D 00 14 */	stw r0, 0x14(r29)
/* 8017FE7C 0017CC7C  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 8017FE80 0017CC80  80 9D 00 00 */	lwz r4, 0(r29)
/* 8017FE84 0017CC84  80 63 00 18 */	lwz r3, 0x18(r3)
/* 8017FE88 0017CC88  80 63 00 20 */	lwz r3, 0x20(r3)
/* 8017FE8C 0017CC8C  80 63 00 00 */	lwz r3, 0(r3)
/* 8017FE90 0017CC90  48 09 7E 09 */	bl RpMaterialSetTexture
/* 8017FE94 0017CC94  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 8017FE98 0017CC98  80 0D 9E 28 */	lwz r0, _rpPTankAtomicDataOffset-_SDA_BASE_(r13)
/* 8017FE9C 0017CC9C  80 9D 00 04 */	lwz r4, 4(r29)
/* 8017FEA0 0017CCA0  7C 63 00 2E */	lwzx r3, r3, r0
/* 8017FEA4 0017CCA4  90 83 00 A4 */	stw r4, 0xa4(r3)
/* 8017FEA8 0017CCA8  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 8017FEAC 0017CCAC  80 0D 9E 28 */	lwz r0, _rpPTankAtomicDataOffset-_SDA_BASE_(r13)
/* 8017FEB0 0017CCB0  80 9D 00 08 */	lwz r4, 8(r29)
/* 8017FEB4 0017CCB4  7C 63 00 2E */	lwzx r3, r3, r0
/* 8017FEB8 0017CCB8  90 83 00 A8 */	stw r4, 0xa8(r3)
/* 8017FEBC 0017CCBC  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 8017FEC0 0017CCC0  80 0D 9E 28 */	lwz r0, _rpPTankAtomicDataOffset-_SDA_BASE_(r13)
/* 8017FEC4 0017CCC4  7C 63 00 2E */	lwzx r3, r3, r0
/* 8017FEC8 0017CCC8  80 03 00 40 */	lwz r0, 0x40(r3)
/* 8017FECC 0017CCCC  64 00 10 00 */	oris r0, r0, 0x1000
/* 8017FED0 0017CCD0  90 03 00 40 */	stw r0, 0x40(r3)
/* 8017FED4 0017CCD4  80 1D 00 04 */	lwz r0, 4(r29)
/* 8017FED8 0017CCD8  80 7E 00 00 */	lwz r3, 0(r30)
/* 8017FEDC 0017CCDC  90 03 00 0C */	stw r0, 0xc(r3)
/* 8017FEE0 0017CCE0  80 1D 00 08 */	lwz r0, 8(r29)
/* 8017FEE4 0017CCE4  80 7E 00 00 */	lwz r3, 0(r30)
/* 8017FEE8 0017CCE8  90 03 00 10 */	stw r0, 0x10(r3)
/* 8017FEEC 0017CCEC  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8017FEF0 0017CCF0  80 7E 00 00 */	lwz r3, 0(r30)
/* 8017FEF4 0017CCF4  64 00 00 01 */	oris r0, r0, 1
/* 8017FEF8 0017CCF8  90 03 00 08 */	stw r0, 8(r3)
/* 8017FEFC 0017CCFC  80 7E 00 00 */	lwz r3, 0(r30)
/* 8017FF00 0017CD00  80 03 00 00 */	lwz r0, 0(r3)
/* 8017FF04 0017CD04  90 1E 00 00 */	stw r0, 0(r30)
/* 8017FF08 0017CD08  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8017FF0C 0017CD0C  38 03 00 01 */	addi r0, r3, 1
/* 8017FF10 0017CD10  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8017FF14 0017CD14  48 00 00 0C */	b lbl_8017FF20
lbl_8017FF18:
/* 8017FF18 0017CD18  3B DE 00 04 */	addi r30, r30, 4
/* 8017FF1C 0017CD1C  42 00 FF 18 */	bdnz lbl_8017FE34
lbl_8017FF20:
/* 8017FF20 0017CD20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8017FF24 0017CD24  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8017FF28 0017CD28  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8017FF2C 0017CD2C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8017FF30 0017CD30  7C 08 03 A6 */	mtlr r0
/* 8017FF34 0017CD34  38 21 00 20 */	addi r1, r1, 0x20
/* 8017FF38 0017CD38  4E 80 00 20 */	blr 

.global flush__10ptank_poolFv
flush__10ptank_poolFv:
/* 8017FF3C 0017CD3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8017FF40 0017CD40  7C 08 02 A6 */	mflr r0
/* 8017FF44 0017CD44  90 01 00 24 */	stw r0, 0x24(r1)
/* 8017FF48 0017CD48  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8017FF4C 0017CD4C  7C 7F 1B 78 */	mr r31, r3
/* 8017FF50 0017CD50  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8017FF54 0017CD54  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8017FF58 0017CD58  93 81 00 10 */	stw r28, 0x10(r1)
/* 8017FF5C 0017CD5C  4B F9 75 39 */	bl valid__10ptank_poolCFv
/* 8017FF60 0017CD60  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8017FF64 0017CD64  41 82 00 B4 */	beq lbl_80180018
/* 8017FF68 0017CD68  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8017FF6C 0017CD6C  48 08 69 B9 */	bl RpPTankAtomicUnlock
/* 8017FF70 0017CD70  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8017FF74 0017CD74  80 0D 9E 28 */	lwz r0, _rpPTankAtomicDataOffset-_SDA_BASE_(r13)
/* 8017FF78 0017CD78  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 8017FF7C 0017CD7C  7C 63 00 2E */	lwzx r3, r3, r0
/* 8017FF80 0017CD80  54 80 0F FE */	srwi r0, r4, 0x1f
/* 8017FF84 0017CD84  80 A3 00 04 */	lwz r5, 4(r3)
/* 8017FF88 0017CD88  7C 65 20 10 */	subfc r3, r5, r4
/* 8017FF8C 0017CD8C  54 A3 0F FE */	srwi r3, r5, 0x1f
/* 8017FF90 0017CD90  7C 60 19 10 */	subfe r3, r0, r3
/* 8017FF94 0017CD94  7C 04 28 50 */	subf r0, r4, r5
/* 8017FF98 0017CD98  7C 03 18 38 */	and r3, r0, r3
/* 8017FF9C 0017CD9C  38 63 00 0A */	addi r3, r3, 0xa
/* 8017FFA0 0017CDA0  7C 03 22 14 */	add r0, r3, r4
/* 8017FFA4 0017CDA4  2C 00 00 40 */	cmpwi r0, 0x40
/* 8017FFA8 0017CDA8  40 81 00 08 */	ble lbl_8017FFB0
/* 8017FFAC 0017CDAC  20 64 00 40 */	subfic r3, r4, 0x40
lbl_8017FFB0:
/* 8017FFB0 0017CDB0  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8017FFB4 0017CDB4  7F C4 1A 14 */	add r30, r4, r3
/* 8017FFB8 0017CDB8  83 BF 00 18 */	lwz r29, 0x18(r31)
/* 8017FFBC 0017CDBC  7C 00 19 D6 */	mullw r0, r0, r3
/* 8017FFC0 0017CDC0  7F 9D 02 14 */	add r28, r29, r0
/* 8017FFC4 0017CDC4  48 00 00 1C */	b lbl_8017FFE0
lbl_8017FFC8:
/* 8017FFC8 0017CDC8  80 BF 00 20 */	lwz r5, 0x20(r31)
/* 8017FFCC 0017CDCC  7F A3 EB 78 */	mr r3, r29
/* 8017FFD0 0017CDD0  38 80 00 00 */	li r4, 0
/* 8017FFD4 0017CDD4  4B E8 34 85 */	bl memset
/* 8017FFD8 0017CDD8  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8017FFDC 0017CDDC  7F BD 02 14 */	add r29, r29, r0
lbl_8017FFE0:
/* 8017FFE0 0017CDE0  7C 1D E0 40 */	cmplw r29, r28
/* 8017FFE4 0017CDE4  40 82 FF E4 */	bne lbl_8017FFC8
/* 8017FFE8 0017CDE8  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8017FFEC 0017CDEC  38 00 00 00 */	li r0, 0
/* 8017FFF0 0017CDF0  80 6D 9E 28 */	lwz r3, _rpPTankAtomicDataOffset-_SDA_BASE_(r13)
/* 8017FFF4 0017CDF4  7C 84 18 2E */	lwzx r4, r4, r3
/* 8017FFF8 0017CDF8  80 64 00 40 */	lwz r3, 0x40(r4)
/* 8017FFFC 0017CDFC  64 63 00 80 */	oris r3, r3, 0x80
/* 80180000 0017CE00  90 64 00 40 */	stw r3, 0x40(r4)
/* 80180004 0017CE04  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 80180008 0017CE08  80 6D 9E 28 */	lwz r3, _rpPTankAtomicDataOffset-_SDA_BASE_(r13)
/* 8018000C 0017CE0C  7C 64 18 2E */	lwzx r3, r4, r3
/* 80180010 0017CE10  93 C3 00 04 */	stw r30, 4(r3)
/* 80180014 0017CE14  90 1F 00 10 */	stw r0, 0x10(r31)
lbl_80180018:
/* 80180018 0017CE18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8018001C 0017CE1C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80180020 0017CE20  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80180024 0017CE24  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80180028 0017CE28  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8018002C 0017CE2C  7C 08 03 A6 */	mtlr r0
/* 80180030 0017CE30  38 21 00 20 */	addi r1, r1, 0x20
/* 80180034 0017CE34  4E 80 00 20 */	blr 

.section .data
lbl_8029B830:
	.incbin "baserom.dol", 0x298810, 0x38
