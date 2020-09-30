.include "macros.inc"

.section .text  # 0x80195428 - 0x8019590C

.global load__Q24xhud11text_widgetFR5xBaseR9xDynAssetUl
load__Q24xhud11text_widgetFR5xBaseR9xDynAssetUl:
/* 80195428 00192228  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8019542C 0019222C  7C 08 02 A6 */	mflr r0
/* 80195430 00192230  38 A0 01 7C */	li r5, 0x17c
/* 80195434 00192234  90 01 00 14 */	stw r0, 0x14(r1)
/* 80195438 00192238  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8019543C 0019223C  7C 9F 23 78 */	mr r31, r4
/* 80195440 00192240  93 C1 00 08 */	stw r30, 8(r1)
/* 80195444 00192244  7C 7E 1B 78 */	mr r30, r3
/* 80195448 00192248  4B E9 88 E9 */	bl init_base__Q24xhud6widgetFR5xBaseRC10xBaseAssetUl
/* 8019544C 0019224C  38 9E 00 10 */	addi r4, r30, 0x10
/* 80195450 00192250  38 60 01 6C */	li r3, 0x16c
/* 80195454 00192254  4B E9 9B 8D */	bl __nw__FUlPv
/* 80195458 00192258  28 03 00 00 */	cmplwi r3, 0
/* 8019545C 0019225C  41 82 00 0C */	beq lbl_80195468
/* 80195460 00192260  7F E4 FB 78 */	mr r4, r31
/* 80195464 00192264  48 00 00 1D */	bl __ct__Q24xhud11text_widgetFRCQ24xhud10text_asset
lbl_80195468:
/* 80195468 00192268  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8019546C 0019226C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80195470 00192270  83 C1 00 08 */	lwz r30, 8(r1)
/* 80195474 00192274  7C 08 03 A6 */	mtlr r0
/* 80195478 00192278  38 21 00 10 */	addi r1, r1, 0x10
/* 8019547C 0019227C  4E 80 00 20 */	blr 

.global __ct__Q24xhud11text_widgetFRCQ24xhud10text_asset
__ct__Q24xhud11text_widgetFRCQ24xhud10text_asset:
/* 80195480 00192280  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80195484 00192284  7C 08 02 A6 */	mflr r0
/* 80195488 00192288  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019548C 0019228C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80195490 00192290  7C 7F 1B 78 */	mr r31, r3
/* 80195494 00192294  4B E9 87 95 */	bl __ct__Q24xhud6widgetFRCQ24xhud5asset
/* 80195498 00192298  3C 60 80 2A */	lis r3, __vt__Q24xhud11text_widget@ha
/* 8019549C 0019229C  38 00 00 00 */	li r0, 0
/* 801954A0 001922A0  38 83 1B 60 */	addi r4, r3, __vt__Q24xhud11text_widget@l
/* 801954A4 001922A4  7F E3 FB 78 */	mr r3, r31
/* 801954A8 001922A8  90 9F 00 74 */	stw r4, 0x74(r31)
/* 801954AC 001922AC  98 1F 00 84 */	stb r0, 0x84(r31)
/* 801954B0 001922B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801954B4 001922B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801954B8 001922B8  7C 08 03 A6 */	mtlr r0
/* 801954BC 001922BC  38 21 00 10 */	addi r1, r1, 0x10
/* 801954C0 001922C0  4E 80 00 20 */	blr 

.global destruct__Q24xhud11text_widgetFv
destruct__Q24xhud11text_widgetFv:
/* 801954C4 001922C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801954C8 001922C8  7C 08 02 A6 */	mflr r0
/* 801954CC 001922CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801954D0 001922D0  4B E9 88 C5 */	bl destruct__Q24xhud6widgetFv
/* 801954D4 001922D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801954D8 001922D8  7C 08 03 A6 */	mtlr r0
/* 801954DC 001922DC  38 21 00 10 */	addi r1, r1, 0x10
/* 801954E0 001922E0  4E 80 00 20 */	blr 
/* 801954E4 001922E4  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 801954E8 001922E8  7C 08 02 A6 */	mflr r0
/* 801954EC 001922EC  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 801954F0 001922F0  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 801954F4 001922F4  93 C1 00 98 */	stw r30, 0x98(r1)
/* 801954F8 001922F8  93 A1 00 94 */	stw r29, 0x94(r1)
/* 801954FC 001922FC  7C 7D 1B 78 */	mr r29, r3
/* 80195500 00192300  4B E9 88 B5 */	bl presetup__Q24xhud6widgetFv
/* 80195504 00192304  83 FD 00 6C */	lwz r31, 0x6c(r29)
/* 80195508 00192308  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 8019550C 0019230C  4B F1 F5 31 */	bl zSceneFindObject__FUi
/* 80195510 00192310  7C 7E 1B 79 */	or. r30, r3, r3
/* 80195514 00192314  40 82 00 1C */	bne lbl_80195530
/* 80195518 00192318  38 61 00 08 */	addi r3, r1, 8
/* 8019551C 0019231C  4B E9 10 A1 */	bl create__8xtextboxFv
/* 80195520 00192320  38 7D 01 04 */	addi r3, r29, 0x104
/* 80195524 00192324  38 81 00 08 */	addi r4, r1, 8
/* 80195528 00192328  4B E8 D2 B5 */	bl __as__8xtextboxFRC8xtextbox
/* 8019552C 0019232C  48 00 00 E8 */	b lbl_80195614
lbl_80195530:
/* 80195530 00192330  4B F9 F2 65 */	bl refresh__8ztextboxFv
/* 80195534 00192334  38 7D 01 04 */	addi r3, r29, 0x104
/* 80195538 00192338  38 9E 00 18 */	addi r4, r30, 0x18
/* 8019553C 0019233C  4B E8 D2 A1 */	bl __as__8xtextboxFRC8xtextbox
/* 80195540 00192340  7F C3 F3 78 */	mr r3, r30
/* 80195544 00192344  38 9D 00 84 */	addi r4, r29, 0x84
/* 80195548 00192348  38 A0 00 80 */	li r5, 0x80
/* 8019554C 0019234C  4B F9 F2 91 */	bl get_text__8ztextboxCFPcUl
/* 80195550 00192350  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80195554 00192354  28 03 00 00 */	cmplwi r3, 0
/* 80195558 00192358  41 82 00 4C */	beq lbl_801955A4
/* 8019555C 0019235C  38 80 00 00 */	li r4, 0
/* 80195560 00192360  4B EB 61 AD */	bl xSTFindAsset__FUiPUi
/* 80195564 00192364  28 03 00 00 */	cmplwi r3, 0
/* 80195568 00192368  41 82 00 3C */	beq lbl_801955A4
/* 8019556C 0019236C  3B C3 00 04 */	addi r30, r3, 4
/* 80195570 00192370  7F C3 F3 78 */	mr r3, r30
/* 80195574 00192374  48 05 22 45 */	bl strlen
/* 80195578 00192378  7C 7F 1B 78 */	mr r31, r3
/* 8019557C 0019237C  28 1F 00 80 */	cmplwi r31, 0x80
/* 80195580 00192380  41 80 00 08 */	blt lbl_80195588
/* 80195584 00192384  3B E0 00 7F */	li r31, 0x7f
lbl_80195588:
/* 80195588 00192388  7F C4 F3 78 */	mr r4, r30
/* 8019558C 0019238C  7F E5 FB 78 */	mr r5, r31
/* 80195590 00192390  38 7D 00 84 */	addi r3, r29, 0x84
/* 80195594 00192394  4B E6 DF AD */	bl memcpy
/* 80195598 00192398  7C 7D FA 14 */	add r3, r29, r31
/* 8019559C 0019239C  38 00 00 00 */	li r0, 0
/* 801955A0 001923A0  98 03 00 84 */	stb r0, 0x84(r3)
lbl_801955A4:
/* 801955A4 001923A4  88 7D 01 14 */	lbz r3, 0x114(r29)
/* 801955A8 001923A8  3C 00 43 30 */	lis r0, 0x4330
/* 801955AC 001923AC  90 01 00 70 */	stw r0, 0x70(r1)
/* 801955B0 001923B0  C8 42 B2 48 */	lfd f2, lbl_803CFBC8-_SDA2_BASE_(r2)
/* 801955B4 001923B4  90 61 00 74 */	stw r3, 0x74(r1)
/* 801955B8 001923B8  C0 02 B2 40 */	lfs f0, lbl_803CFBC0-_SDA2_BASE_(r2)
/* 801955BC 001923BC  C8 21 00 70 */	lfd f1, 0x70(r1)
/* 801955C0 001923C0  90 01 00 78 */	stw r0, 0x78(r1)
/* 801955C4 001923C4  EC 21 10 28 */	fsubs f1, f1, f2
/* 801955C8 001923C8  90 01 00 80 */	stw r0, 0x80(r1)
/* 801955CC 001923CC  EC 01 00 24 */	fdivs f0, f1, f0
/* 801955D0 001923D0  D0 1D 00 28 */	stfs f0, 0x28(r29)
/* 801955D4 001923D4  88 1D 01 15 */	lbz r0, 0x115(r29)
/* 801955D8 001923D8  C8 42 B2 48 */	lfd f2, lbl_803CFBC8-_SDA2_BASE_(r2)
/* 801955DC 001923DC  90 01 00 7C */	stw r0, 0x7c(r1)
/* 801955E0 001923E0  C0 02 B2 40 */	lfs f0, lbl_803CFBC0-_SDA2_BASE_(r2)
/* 801955E4 001923E4  C8 21 00 78 */	lfd f1, 0x78(r1)
/* 801955E8 001923E8  EC 21 10 28 */	fsubs f1, f1, f2
/* 801955EC 001923EC  EC 01 00 24 */	fdivs f0, f1, f0
/* 801955F0 001923F0  D0 1D 00 2C */	stfs f0, 0x2c(r29)
/* 801955F4 001923F4  88 1D 01 16 */	lbz r0, 0x116(r29)
/* 801955F8 001923F8  C8 42 B2 48 */	lfd f2, lbl_803CFBC8-_SDA2_BASE_(r2)
/* 801955FC 001923FC  90 01 00 84 */	stw r0, 0x84(r1)
/* 80195600 00192400  C0 02 B2 40 */	lfs f0, lbl_803CFBC0-_SDA2_BASE_(r2)
/* 80195604 00192404  C8 21 00 80 */	lfd f1, 0x80(r1)
/* 80195608 00192408  EC 21 10 28 */	fsubs f1, f1, f2
/* 8019560C 0019240C  EC 01 00 24 */	fdivs f0, f1, f0
/* 80195610 00192410  D0 1D 00 30 */	stfs f0, 0x30(r29)
lbl_80195614:
/* 80195614 00192414  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80195618 00192418  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 8019561C 0019241C  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 80195620 00192420  83 A1 00 94 */	lwz r29, 0x94(r1)
/* 80195624 00192424  7C 08 03 A6 */	mtlr r0
/* 80195628 00192428  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8019562C 0019242C  4E 80 00 20 */	blr 
/* 80195630 00192430  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80195634 00192434  7C 08 02 A6 */	mflr r0
/* 80195638 00192438  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019563C 0019243C  4B FF FE 89 */	bl destruct__Q24xhud11text_widgetFv
/* 80195640 00192440  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80195644 00192444  7C 08 03 A6 */	mtlr r0
/* 80195648 00192448  38 21 00 10 */	addi r1, r1, 0x10
/* 8019564C 0019244C  4E 80 00 20 */	blr 

.global type__Q24xhud11text_widgetCFv
type__Q24xhud11text_widgetCFv:
/* 80195650 00192450  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80195654 00192454  7C 08 02 A6 */	mflr r0
/* 80195658 00192458  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019565C 0019245C  88 0D 98 CC */	lbz r0, lbl_803CC1CC-_SDA_BASE_(r13)
/* 80195660 00192460  7C 00 07 75 */	extsb. r0, r0
/* 80195664 00192464  40 82 00 18 */	bne lbl_8019567C
/* 80195668 00192468  48 00 02 99 */	bl type_name__Q24xhud10text_assetFv
/* 8019566C 0019246C  4B EB 6B A9 */	bl xStrHash__FPCc
/* 80195670 00192470  90 6D 98 C8 */	stw r3, lbl_803CC1C8-_SDA_BASE_(r13)
/* 80195674 00192474  38 00 00 01 */	li r0, 1
/* 80195678 00192478  98 0D 98 CC */	stb r0, lbl_803CC1CC-_SDA_BASE_(r13)
lbl_8019567C:
/* 8019567C 0019247C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80195680 00192480  80 6D 98 C8 */	lwz r3, lbl_803CC1C8-_SDA_BASE_(r13)
/* 80195684 00192484  7C 08 03 A6 */	mtlr r0
/* 80195688 00192488  38 21 00 10 */	addi r1, r1, 0x10
/* 8019568C 0019248C  4E 80 00 20 */	blr 
/* 80195690 00192490  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80195694 00192494  7C 08 02 A6 */	mflr r0
/* 80195698 00192498  90 01 00 24 */	stw r0, 0x24(r1)
/* 8019569C 0019249C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801956A0 001924A0  3B E0 00 00 */	li r31, 0
/* 801956A4 001924A4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801956A8 001924A8  7C 9E 23 78 */	mr r30, r4
/* 801956AC 001924AC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801956B0 001924B0  7C 7D 1B 78 */	mr r29, r3
/* 801956B4 001924B4  4B FF FF 9D */	bl type__Q24xhud11text_widgetCFv
/* 801956B8 001924B8  7C 1E 18 40 */	cmplw r30, r3
/* 801956BC 001924BC  41 82 00 18 */	beq lbl_801956D4
/* 801956C0 001924C0  7F A3 EB 78 */	mr r3, r29
/* 801956C4 001924C4  7F C4 F3 78 */	mr r4, r30
/* 801956C8 001924C8  4B E9 88 D5 */	bl is__Q24xhud6widgetCFUi
/* 801956CC 001924CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801956D0 001924D0  41 82 00 08 */	beq lbl_801956D8
lbl_801956D4:
/* 801956D4 001924D4  3B E0 00 01 */	li r31, 1
lbl_801956D8:
/* 801956D8 001924D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801956DC 001924DC  7F E3 FB 78 */	mr r3, r31
/* 801956E0 001924E0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801956E4 001924E4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801956E8 001924E8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801956EC 001924EC  7C 08 03 A6 */	mtlr r0
/* 801956F0 001924F0  38 21 00 20 */	addi r1, r1, 0x20
/* 801956F4 001924F4  4E 80 00 20 */	blr 
/* 801956F8 001924F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801956FC 001924FC  7C 08 02 A6 */	mflr r0
/* 80195700 00192500  90 01 00 34 */	stw r0, 0x34(r1)
/* 80195704 00192504  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80195708 00192508  7C 7F 1B 78 */	mr r31, r3
/* 8019570C 0019250C  4B E9 86 D1 */	bl updater__Q24xhud6widgetFf
/* 80195710 00192510  38 7F 01 04 */	addi r3, r31, 0x104
/* 80195714 00192514  38 9F 00 84 */	addi r4, r31, 0x84
/* 80195718 00192518  4B E8 CD B1 */	bl set_text__8xtextboxFPCc
/* 8019571C 0019251C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80195720 00192520  38 7F 01 18 */	addi r3, r31, 0x118
/* 80195724 00192524  38 9F 01 28 */	addi r4, r31, 0x128
/* 80195728 00192528  D0 1F 01 28 */	stfs f0, 0x128(r31)
/* 8019572C 0019252C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80195730 00192530  D0 1F 01 2C */	stfs f0, 0x12c(r31)
/* 80195734 00192534  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80195738 00192538  D0 1F 01 30 */	stfs f0, 0x130(r31)
/* 8019573C 0019253C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80195740 00192540  D0 1F 01 34 */	stfs f0, 0x134(r31)
/* 80195744 00192544  4B E8 28 FD */	bl __as__13basic_rect$$0f$$1FRC13basic_rect$$0f$$1
/* 80195748 00192548  C0 42 B2 40 */	lfs f2, lbl_803CFBC0-_SDA2_BASE_(r2)
/* 8019574C 0019254C  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80195750 00192550  C0 02 B2 54 */	lfs f0, lbl_803CFBD4-_SDA2_BASE_(r2)
/* 80195754 00192554  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 80195758 00192558  FC 00 00 1E */	fctiwz f0, f0
/* 8019575C 0019255C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80195760 00192560  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80195764 00192564  98 1F 01 14 */	stb r0, 0x114(r31)
/* 80195768 00192568  C0 42 B2 40 */	lfs f2, lbl_803CFBC0-_SDA2_BASE_(r2)
/* 8019576C 0019256C  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80195770 00192570  C0 02 B2 54 */	lfs f0, lbl_803CFBD4-_SDA2_BASE_(r2)
/* 80195774 00192574  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 80195778 00192578  FC 00 00 1E */	fctiwz f0, f0
/* 8019577C 0019257C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80195780 00192580  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80195784 00192584  98 1F 01 15 */	stb r0, 0x115(r31)
/* 80195788 00192588  C0 42 B2 40 */	lfs f2, lbl_803CFBC0-_SDA2_BASE_(r2)
/* 8019578C 0019258C  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80195790 00192590  C0 02 B2 54 */	lfs f0, lbl_803CFBD4-_SDA2_BASE_(r2)
/* 80195794 00192594  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 80195798 00192598  FC 00 00 1E */	fctiwz f0, f0
/* 8019579C 0019259C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 801957A0 001925A0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801957A4 001925A4  98 1F 01 16 */	stb r0, 0x116(r31)
/* 801957A8 001925A8  C0 42 B2 40 */	lfs f2, lbl_803CFBC0-_SDA2_BASE_(r2)
/* 801957AC 001925AC  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 801957B0 001925B0  C0 02 B2 54 */	lfs f0, lbl_803CFBD4-_SDA2_BASE_(r2)
/* 801957B4 001925B4  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 801957B8 001925B8  FC 00 00 1E */	fctiwz f0, f0
/* 801957BC 001925BC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 801957C0 001925C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801957C4 001925C4  98 1F 01 17 */	stb r0, 0x117(r31)
/* 801957C8 001925C8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801957CC 001925CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801957D0 001925D0  7C 08 03 A6 */	mtlr r0
/* 801957D4 001925D4  38 21 00 30 */	addi r1, r1, 0x30
/* 801957D8 001925D8  4E 80 00 20 */	blr 
/* 801957DC 001925DC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801957E0 001925E0  7C 08 02 A6 */	mflr r0
/* 801957E4 001925E4  90 01 00 54 */	stw r0, 0x54(r1)
/* 801957E8 001925E8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 801957EC 001925EC  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 801957F0 001925F0  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 801957F4 001925F4  F3 C1 00 38 */	psq_st f30, 56(r1), 0, qr0
/* 801957F8 001925F8  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 801957FC 001925FC  7C 7B 1B 78 */	mr r27, r3
/* 80195800 00192600  3C 00 43 30 */	lis r0, 0x4330
/* 80195804 00192604  8B 83 01 17 */	lbz r28, 0x117(r3)
/* 80195808 00192608  90 01 00 08 */	stw r0, 8(r1)
/* 8019580C 0019260C  C8 42 B2 48 */	lfd f2, lbl_803CFBC8-_SDA2_BASE_(r2)
/* 80195810 00192610  93 81 00 0C */	stw r28, 0xc(r1)
/* 80195814 00192614  C0 62 B2 58 */	lfs f3, lbl_803CFBD8-_SDA2_BASE_(r2)
/* 80195818 00192618  C8 21 00 08 */	lfd f1, 8(r1)
/* 8019581C 0019261C  C0 02 B2 40 */	lfs f0, lbl_803CFBC0-_SDA2_BASE_(r2)
/* 80195820 00192620  EC 21 10 28 */	fsubs f1, f1, f2
/* 80195824 00192624  C3 E3 01 28 */	lfs f31, 0x128(r3)
/* 80195828 00192628  C3 C3 01 2C */	lfs f30, 0x12c(r3)
/* 8019582C 0019262C  8B E3 01 14 */	lbz r31, 0x114(r3)
/* 80195830 00192630  EC 23 00 72 */	fmuls f1, f3, f1
/* 80195834 00192634  8B C3 01 15 */	lbz r30, 0x115(r3)
/* 80195838 00192638  8B A3 01 16 */	lbz r29, 0x116(r3)
/* 8019583C 0019263C  EC 21 00 24 */	fdivs f1, f1, f0
/* 80195840 00192640  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80195844 00192644  40 81 00 0C */	ble lbl_80195850
/* 80195848 00192648  38 E0 00 FF */	li r7, 0xff
/* 8019584C 0019264C  48 00 00 24 */	b lbl_80195870
lbl_80195850:
/* 80195850 00192650  C0 02 B2 50 */	lfs f0, lbl_803CFBD0-_SDA2_BASE_(r2)
/* 80195854 00192654  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80195858 00192658  40 80 00 0C */	bge lbl_80195864
/* 8019585C 0019265C  38 E0 00 00 */	li r7, 0
/* 80195860 00192660  48 00 00 10 */	b lbl_80195870
lbl_80195864:
/* 80195864 00192664  FC 00 08 1E */	fctiwz f0, f1
/* 80195868 00192668  D8 01 00 08 */	stfd f0, 8(r1)
/* 8019586C 0019266C  80 E1 00 0C */	lwz r7, 0xc(r1)
lbl_80195870:
/* 80195870 00192670  C0 3B 01 28 */	lfs f1, 0x128(r27)
/* 80195874 00192674  38 C0 00 00 */	li r6, 0
/* 80195878 00192678  C0 02 B2 5C */	lfs f0, lbl_803CFBDC-_SDA2_BASE_(r2)
/* 8019587C 0019267C  38 A0 00 46 */	li r5, 0x46
/* 80195880 00192680  38 00 00 55 */	li r0, 0x55
/* 80195884 00192684  38 7B 01 04 */	addi r3, r27, 0x104
/* 80195888 00192688  EC 01 00 2A */	fadds f0, f1, f0
/* 8019588C 0019268C  38 80 00 01 */	li r4, 1
/* 80195890 00192690  D0 1B 01 28 */	stfs f0, 0x128(r27)
/* 80195894 00192694  C0 3B 01 2C */	lfs f1, 0x12c(r27)
/* 80195898 00192698  C0 02 B2 5C */	lfs f0, lbl_803CFBDC-_SDA2_BASE_(r2)
/* 8019589C 0019269C  EC 01 00 2A */	fadds f0, f1, f0
/* 801958A0 001926A0  D0 1B 01 2C */	stfs f0, 0x12c(r27)
/* 801958A4 001926A4  98 DB 01 14 */	stb r6, 0x114(r27)
/* 801958A8 001926A8  98 BB 01 15 */	stb r5, 0x115(r27)
/* 801958AC 001926AC  98 1B 01 16 */	stb r0, 0x116(r27)
/* 801958B0 001926B0  98 FB 01 17 */	stb r7, 0x117(r27)
/* 801958B4 001926B4  4B E8 24 F1 */	bl render__8xtextboxCFb
/* 801958B8 001926B8  D3 FB 01 28 */	stfs f31, 0x128(r27)
/* 801958BC 001926BC  38 7B 01 04 */	addi r3, r27, 0x104
/* 801958C0 001926C0  38 80 00 01 */	li r4, 1
/* 801958C4 001926C4  D3 DB 01 2C */	stfs f30, 0x12c(r27)
/* 801958C8 001926C8  9B FB 01 14 */	stb r31, 0x114(r27)
/* 801958CC 001926CC  9B DB 01 15 */	stb r30, 0x115(r27)
/* 801958D0 001926D0  9B BB 01 16 */	stb r29, 0x116(r27)
/* 801958D4 001926D4  9B 9B 01 17 */	stb r28, 0x117(r27)
/* 801958D8 001926D8  4B E8 24 CD */	bl render__8xtextboxCFb
/* 801958DC 001926DC  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 801958E0 001926E0  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 801958E4 001926E4  E3 C1 00 38 */	psq_l f30, 56(r1), 0, qr0
/* 801958E8 001926E8  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 801958EC 001926EC  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 801958F0 001926F0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801958F4 001926F4  7C 08 03 A6 */	mtlr r0
/* 801958F8 001926F8  38 21 00 50 */	addi r1, r1, 0x50
/* 801958FC 001926FC  4E 80 00 20 */	blr 

.global type_name__Q24xhud10text_assetFv
type_name__Q24xhud10text_assetFv:
/* 80195900 00192700  3C 60 80 27 */	lis r3, lbl_802749F0@ha
/* 80195904 00192704  38 63 49 F0 */	addi r3, r3, lbl_802749F0@l
/* 80195908 00192708  4E 80 00 20 */	blr 
.section .rodata
lbl_802749F0:
	.incbin "baserom.dol", 0x2719D0, 0x10

.section .sbss
lbl_803CC1C8:
	.skip 0x4
lbl_803CC1CC:
	.skip 0x4
/* SPECULATION: link order */
.global comboHUD
comboHUD:
	.skip 0x4
