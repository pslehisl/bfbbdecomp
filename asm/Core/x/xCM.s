.include "macros.inc"

.section .text  # 0x80195FE8 - 0x801B5350

xCMprep__FP12xCreditsData:
/* 80195FE8 00192DE8  80 83 00 00 */	lwz r4, 0(r3)
/* 80195FEC 00192DEC  3C 04 41 12 */	addis r0, r4, 0x4112
/* 80195FF0 00192DF0  28 00 EE EF */	cmplwi r0, 0xeeef
/* 80195FF4 00192DF4  4C 82 00 20 */	bnelr 
/* 80195FF8 00192DF8  38 C3 00 18 */	addi r6, r3, 0x18
/* 80195FFC 00192DFC  48 00 00 B8 */	b lbl_801960B4
lbl_80196000:
/* 80196000 00192E00  80 06 00 34 */	lwz r0, 0x34(r6)
/* 80196004 00192E04  38 E6 00 38 */	addi r7, r6, 0x38
/* 80196008 00192E08  1C 00 00 4C */	mulli r0, r0, 0x4c
/* 8019600C 00192E0C  7C A7 02 14 */	add r5, r7, r0
/* 80196010 00192E10  48 00 00 90 */	b lbl_801960A0
lbl_80196014:
/* 80196014 00192E14  80 05 00 04 */	lwz r0, 4(r5)
/* 80196018 00192E18  1C 80 00 4C */	mulli r4, r0, 0x4c
/* 8019601C 00192E1C  38 04 00 02 */	addi r0, r4, 2
/* 80196020 00192E20  7C 07 02 2E */	lhzx r0, r7, r0
/* 80196024 00192E24  2C 00 00 04 */	cmpwi r0, 4
/* 80196028 00192E28  40 80 00 70 */	bge lbl_80196098
/* 8019602C 00192E2C  2C 00 00 00 */	cmpwi r0, 0
/* 80196030 00192E30  40 80 00 08 */	bge lbl_80196038
/* 80196034 00192E34  48 00 00 64 */	b lbl_80196098
lbl_80196038:
/* 80196038 00192E38  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8019603C 00192E3C  28 00 00 00 */	cmplwi r0, 0
/* 80196040 00192E40  40 82 00 30 */	bne lbl_80196070
/* 80196044 00192E44  80 05 00 10 */	lwz r0, 0x10(r5)
/* 80196048 00192E48  28 00 00 00 */	cmplwi r0, 0
/* 8019604C 00192E4C  41 82 00 0C */	beq lbl_80196058
/* 80196050 00192E50  7C 03 00 50 */	subf r0, r3, r0
/* 80196054 00192E54  90 05 00 10 */	stw r0, 0x10(r5)
lbl_80196058:
/* 80196058 00192E58  80 05 00 14 */	lwz r0, 0x14(r5)
/* 8019605C 00192E5C  28 00 00 00 */	cmplwi r0, 0
/* 80196060 00192E60  41 82 00 38 */	beq lbl_80196098
/* 80196064 00192E64  7C 03 00 50 */	subf r0, r3, r0
/* 80196068 00192E68  90 05 00 14 */	stw r0, 0x14(r5)
/* 8019606C 00192E6C  48 00 00 2C */	b lbl_80196098
lbl_80196070:
/* 80196070 00192E70  80 05 00 10 */	lwz r0, 0x10(r5)
/* 80196074 00192E74  28 00 00 00 */	cmplwi r0, 0
/* 80196078 00192E78  41 82 00 0C */	beq lbl_80196084
/* 8019607C 00192E7C  7C 00 1A 14 */	add r0, r0, r3
/* 80196080 00192E80  90 05 00 10 */	stw r0, 0x10(r5)
lbl_80196084:
/* 80196084 00192E84  80 05 00 14 */	lwz r0, 0x14(r5)
/* 80196088 00192E88  28 00 00 00 */	cmplwi r0, 0
/* 8019608C 00192E8C  41 82 00 0C */	beq lbl_80196098
/* 80196090 00192E90  7C 00 1A 14 */	add r0, r0, r3
/* 80196094 00192E94  90 05 00 14 */	stw r0, 0x14(r5)
lbl_80196098:
/* 80196098 00192E98  80 05 00 00 */	lwz r0, 0(r5)
/* 8019609C 00192E9C  7C A5 02 14 */	add r5, r5, r0
lbl_801960A0:
/* 801960A0 00192EA0  80 06 00 00 */	lwz r0, 0(r6)
/* 801960A4 00192EA4  7C 86 28 50 */	subf r4, r6, r5
/* 801960A8 00192EA8  7C 04 00 40 */	cmplw r4, r0
/* 801960AC 00192EAC  41 80 FF 68 */	blt lbl_80196014
/* 801960B0 00192EB0  7C A6 2B 78 */	mr r6, r5
lbl_801960B4:
/* 801960B4 00192EB4  80 03 00 14 */	lwz r0, 0x14(r3)
/* 801960B8 00192EB8  7C 83 30 50 */	subf r4, r3, r6
/* 801960BC 00192EBC  7C 04 00 40 */	cmplw r4, r0
/* 801960C0 00192EC0  41 80 FF 40 */	blt lbl_80196000
/* 801960C4 00192EC4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 801960C8 00192EC8  7C 00 00 34 */	cntlzw r0, r0
/* 801960CC 00192ECC  54 00 D9 7E */	srwi r0, r0, 5
/* 801960D0 00192ED0  90 03 00 0C */	stw r0, 0xc(r3)
/* 801960D4 00192ED4  4E 80 00 20 */	blr 

xCMcolor_scale__F10iColor_tagf:
/* 801960D8 00192ED8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801960DC 00192EDC  7C 08 02 A6 */	mflr r0
/* 801960E0 00192EE0  3C C0 43 30 */	lis r6, 0x4330
/* 801960E4 00192EE4  90 01 00 54 */	stw r0, 0x54(r1)
/* 801960E8 00192EE8  80 83 00 00 */	lwz r4, 0(r3)
/* 801960EC 00192EEC  38 61 00 0C */	addi r3, r1, 0xc
/* 801960F0 00192EF0  90 C1 00 10 */	stw r6, 0x10(r1)
/* 801960F4 00192EF4  90 81 00 08 */	stw r4, 8(r1)
/* 801960F8 00192EF8  88 01 00 0B */	lbz r0, 0xb(r1)
/* 801960FC 00192EFC  90 81 00 0C */	stw r4, 0xc(r1)
/* 80196100 00192F00  88 A1 00 08 */	lbz r5, 8(r1)
/* 80196104 00192F04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80196108 00192F08  C8 62 B2 70 */	lfd f3, lbl_803CFBF0-_SDA2_BASE_(r2)
/* 8019610C 00192F0C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80196110 00192F10  88 81 00 09 */	lbz r4, 9(r1)
/* 80196114 00192F14  EC 80 18 28 */	fsubs f4, f0, f3
/* 80196118 00192F18  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 8019611C 00192F1C  88 01 00 0A */	lbz r0, 0xa(r1)
/* 80196120 00192F20  90 C1 00 18 */	stw r6, 0x18(r1)
/* 80196124 00192F24  EC 84 00 72 */	fmuls f4, f4, f1
/* 80196128 00192F28  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8019612C 00192F2C  90 81 00 2C */	stw r4, 0x2c(r1)
/* 80196130 00192F30  EC 40 18 28 */	fsubs f2, f0, f3
/* 80196134 00192F34  90 C1 00 28 */	stw r6, 0x28(r1)
/* 80196138 00192F38  FC 00 20 1E */	fctiwz f0, f4
/* 8019613C 00192F3C  C8 21 00 28 */	lfd f1, 0x28(r1)
/* 80196140 00192F40  FC 40 10 1E */	fctiwz f2, f2
/* 80196144 00192F44  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80196148 00192F48  EC 01 18 28 */	fsubs f0, f1, f3
/* 8019614C 00192F4C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80196150 00192F50  80 E1 00 4C */	lwz r7, 0x4c(r1)
/* 80196154 00192F54  FC 20 00 1E */	fctiwz f1, f0
/* 80196158 00192F58  90 C1 00 38 */	stw r6, 0x38(r1)
/* 8019615C 00192F5C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80196160 00192F60  D8 41 00 20 */	stfd f2, 0x20(r1)
/* 80196164 00192F64  EC 00 18 28 */	fsubs f0, f0, f3
/* 80196168 00192F68  D8 21 00 30 */	stfd f1, 0x30(r1)
/* 8019616C 00192F6C  80 81 00 24 */	lwz r4, 0x24(r1)
/* 80196170 00192F70  FC 00 00 1E */	fctiwz f0, f0
/* 80196174 00192F74  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 80196178 00192F78  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8019617C 00192F7C  80 C1 00 44 */	lwz r6, 0x44(r1)
/* 80196180 00192F80  48 00 00 19 */	bl xColorInit__FP10iColor_tagUcUcUcUc
/* 80196184 00192F84  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80196188 00192F88  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8019618C 00192F8C  7C 08 03 A6 */	mtlr r0
/* 80196190 00192F90  38 21 00 50 */	addi r1, r1, 0x50
/* 80196194 00192F94  4E 80 00 20 */	blr 

/* what? */
.global xColorInit__FP10iColor_tagUcUcUcUc
xColorInit__FP10iColor_tagUcUcUcUc:
/* 80196198 00192F98  98 83 00 00 */	stb r4, 0(r3)
/* 8019619C 00192F9C  98 A3 00 01 */	stb r5, 1(r3)
/* 801961A0 00192FA0  98 C3 00 02 */	stb r6, 2(r3)
/* 801961A4 00192FA4  98 E3 00 03 */	stb r7, 3(r3)
/* 801961A8 00192FA8  4E 80 00 20 */	blr 

xCMrender__FfP12xCreditsData:
/* 801961AC 00192FAC  94 21 FC 50 */	stwu r1, -0x3b0(r1)
/* 801961B0 00192FB0  7C 08 02 A6 */	mflr r0
/* 801961B4 00192FB4  90 01 03 B4 */	stw r0, 0x3b4(r1)
/* 801961B8 00192FB8  DB E1 03 A0 */	stfd f31, 0x3a0(r1)
/* 801961BC 00192FBC  F3 E1 03 A8 */	psq_st f31, 936(r1), 0, qr0
/* 801961C0 00192FC0  DB C1 03 90 */	stfd f30, 0x390(r1)
/* 801961C4 00192FC4  F3 C1 03 98 */	psq_st f30, 920(r1), 0, qr0
/* 801961C8 00192FC8  DB A1 03 80 */	stfd f29, 0x380(r1)
/* 801961CC 00192FCC  F3 A1 03 88 */	psq_st f29, 904(r1), 0, qr0
/* 801961D0 00192FD0  DB 81 03 70 */	stfd f28, 0x370(r1)
/* 801961D4 00192FD4  F3 81 03 78 */	psq_st f28, 888(r1), 0, qr0
/* 801961D8 00192FD8  DB 61 03 60 */	stfd f27, 0x360(r1)
/* 801961DC 00192FDC  F3 61 03 68 */	psq_st f27, 872(r1), 0, qr0
/* 801961E0 00192FE0  BF 01 03 40 */	stmw r24, 0x340(r1)
/* 801961E4 00192FE4  7C 79 1B 79 */	or. r25, r3, r3
/* 801961E8 00192FE8  FF C0 08 90 */	fmr f30, f1
/* 801961EC 00192FEC  3C 80 80 27 */	lis r4, lbl_80274B38@ha
/* 801961F0 00192FF0  3B E4 4B 38 */	addi r31, r4, lbl_80274B38@l
/* 801961F4 00192FF4  41 82 00 14 */	beq lbl_80196208
/* 801961F8 00192FF8  80 99 00 00 */	lwz r4, 0(r25)
/* 801961FC 00192FFC  3C 04 41 12 */	addis r0, r4, 0x4112
/* 80196200 00193000  28 00 EE EF */	cmplwi r0, 0xeeef
/* 80196204 00193004  41 82 00 0C */	beq lbl_80196210
lbl_80196208:
/* 80196208 00193008  38 60 00 00 */	li r3, 0
/* 8019620C 0019300C  48 00 05 58 */	b lbl_80196764
lbl_80196210:
/* 80196210 00193010  80 19 00 0C */	lwz r0, 0xc(r25)
/* 80196214 00193014  28 00 00 01 */	cmplwi r0, 1
/* 80196218 00193018  40 82 00 08 */	bne lbl_80196220
/* 8019621C 0019301C  4B FF FD CD */	bl xCMprep__FP12xCreditsData
lbl_80196220:
/* 80196220 00193020  3C 60 80 27 */	lis r3, lbl_80274CD0@ha
/* 80196224 00193024  FC 20 F0 90 */	fmr f1, f30
/* 80196228 00193028  38 63 4C D0 */	addi r3, r3, lbl_80274CD0@l
/* 8019622C 0019302C  38 63 00 4D */	addi r3, r3, 0x4d
/* 80196230 00193030  4C C6 32 42 */	crset 6
/* 80196234 00193034  4B E8 1B 09 */	bl xprintf__FPCce
/* 80196238 00193038  3B B9 00 18 */	addi r29, r25, 0x18
/* 8019623C 0019303C  48 00 04 EC */	b lbl_80196728
lbl_80196240:
/* 80196240 00193040  80 1D 00 34 */	lwz r0, 0x34(r29)
/* 80196244 00193044  3B 9D 00 38 */	addi r28, r29, 0x38
/* 80196248 00193048  1C 00 00 4C */	mulli r0, r0, 0x4c
/* 8019624C 0019304C  7F DC 02 14 */	add r30, r28, r0
/* 80196250 00193050  48 00 04 C4 */	b lbl_80196714
lbl_80196254:
/* 80196254 00193054  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80196258 00193058  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8019625C 0019305C  4C 41 13 82 */	cror 2, 1, 2
/* 80196260 00193060  40 82 04 AC */	bne lbl_8019670C
/* 80196264 00193064  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80196268 00193068  FC 1E 08 40 */	fcmpo cr0, f30, f1
/* 8019626C 0019306C  4C 40 13 82 */	cror 2, 0, 2
/* 80196270 00193070  40 82 04 9C */	bne lbl_8019670C
/* 80196274 00193074  EC 5E 00 28 */	fsubs f2, f30, f0
/* 80196278 00193078  80 1E 00 04 */	lwz r0, 4(r30)
/* 8019627C 0019307C  EC 21 00 28 */	fsubs f1, f1, f0
/* 80196280 00193080  C0 7D 00 10 */	lfs f3, 0x10(r29)
/* 80196284 00193084  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 80196288 00193088  1C 00 00 4C */	mulli r0, r0, 0x4c
/* 8019628C 0019308C  EC 22 08 24 */	fdivs f1, f2, f1
/* 80196290 00193090  C0 5D 00 24 */	lfs f2, 0x24(r29)
/* 80196294 00193094  7F 7C 02 14 */	add r27, r28, r0
/* 80196298 00193098  EC 00 18 28 */	fsubs f0, f0, f3
/* 8019629C 0019309C  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 801962A0 001930A0  EF E1 18 3A */	fmadds f31, f1, f0, f3
/* 801962A4 001930A4  41 80 00 10 */	blt lbl_801962B4
/* 801962A8 001930A8  C0 7D 00 30 */	lfs f3, 0x30(r29)
/* 801962AC 001930AC  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 801962B0 001930B0  40 81 00 0C */	ble lbl_801962BC
lbl_801962B4:
/* 801962B4 001930B4  C3 62 B2 78 */	lfs f27, lbl_803CFBF8-_SDA2_BASE_(r2)
/* 801962B8 001930B8  48 00 00 60 */	b lbl_80196318
lbl_801962BC:
/* 801962BC 001930BC  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 801962C0 001930C0  4C 41 13 82 */	cror 2, 1, 2
/* 801962C4 001930C4  40 82 00 24 */	bne lbl_801962E8
/* 801962C8 001930C8  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 801962CC 001930CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801962D0 001930D0  4C 40 13 82 */	cror 2, 0, 2
/* 801962D4 001930D4  40 82 00 14 */	bne lbl_801962E8
/* 801962D8 001930D8  EC 21 10 28 */	fsubs f1, f1, f2
/* 801962DC 001930DC  EC 00 10 28 */	fsubs f0, f0, f2
/* 801962E0 001930E0  EF 61 00 24 */	fdivs f27, f1, f0
/* 801962E4 001930E4  48 00 00 34 */	b lbl_80196318
lbl_801962E8:
/* 801962E8 001930E8  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 801962EC 001930EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801962F0 001930F0  4C 41 13 82 */	cror 2, 1, 2
/* 801962F4 001930F4  40 82 00 20 */	bne lbl_80196314
/* 801962F8 001930F8  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 801962FC 001930FC  4C 40 13 82 */	cror 2, 0, 2
/* 80196300 00193100  40 82 00 14 */	bne lbl_80196314
/* 80196304 00193104  EC 23 08 28 */	fsubs f1, f3, f1
/* 80196308 00193108  EC 03 00 28 */	fsubs f0, f3, f0
/* 8019630C 0019310C  EF 61 00 24 */	fdivs f27, f1, f0
/* 80196310 00193110  48 00 00 08 */	b lbl_80196318
lbl_80196314:
/* 80196314 00193114  C3 62 B2 7C */	lfs f27, lbl_803CFBFC-_SDA2_BASE_(r2)
lbl_80196318:
/* 80196318 00193118  A0 1B 00 02 */	lhz r0, 2(r27)
/* 8019631C 0019311C  2C 00 00 04 */	cmpwi r0, 4
/* 80196320 00193120  41 82 00 18 */	beq lbl_80196338
/* 80196324 00193124  40 80 03 E8 */	bge lbl_8019670C
/* 80196328 00193128  2C 00 00 00 */	cmpwi r0, 0
/* 8019632C 0019312C  41 82 00 B8 */	beq lbl_801963E4
/* 80196330 00193130  40 80 01 B0 */	bge lbl_801964E0
/* 80196334 00193134  48 00 03 D8 */	b lbl_8019670C
lbl_80196338:
/* 80196338 00193138  80 1B 00 24 */	lwz r0, 0x24(r27)
/* 8019633C 0019313C  28 00 00 00 */	cmplwi r0, 0
/* 80196340 00193140  40 82 00 14 */	bne lbl_80196354
/* 80196344 00193144  80 7B 00 0C */	lwz r3, 0xc(r27)
/* 80196348 00193148  38 80 00 00 */	li r4, 0
/* 8019634C 0019314C  4B EB 53 C1 */	bl xSTFindAsset__FUiPUi
/* 80196350 00193150  90 7B 00 24 */	stw r3, 0x24(r27)
lbl_80196354:
/* 80196354 00193154  80 7B 00 24 */	lwz r3, 0x24(r27)
/* 80196358 00193158  28 03 00 00 */	cmplwi r3, 0
/* 8019635C 0019315C  41 82 00 10 */	beq lbl_8019636C
/* 80196360 00193160  80 83 00 00 */	lwz r4, 0(r3)
/* 80196364 00193164  38 60 00 01 */	li r3, 1
/* 80196368 00193168  48 09 94 75 */	bl RwRenderStateSet
lbl_8019636C:
/* 8019636C 0019316C  C0 BB 00 14 */	lfs f5, 0x14(r27)
/* 80196370 00193170  C0 3B 00 1C */	lfs f1, 0x1c(r27)
/* 80196374 00193174  C0 9B 00 18 */	lfs f4, 0x18(r27)
/* 80196378 00193178  C0 1B 00 20 */	lfs f0, 0x20(r27)
/* 8019637C 0019317C  EC 25 08 2A */	fadds f1, f5, f1
/* 80196380 00193180  C0 62 B2 80 */	lfs f3, lbl_803CFC00-_SDA2_BASE_(r2)
/* 80196384 00193184  C0 42 B2 84 */	lfs f2, lbl_803CFC04-_SDA2_BASE_(r2)
/* 80196388 00193188  EC 04 00 2A */	fadds f0, f4, f0
/* 8019638C 0019318C  EF 83 01 72 */	fmuls f28, f3, f5
/* 80196390 00193190  C0 A2 B2 78 */	lfs f5, lbl_803CFBF8-_SDA2_BASE_(r2)
/* 80196394 00193194  EF E2 01 32 */	fmuls f31, f2, f4
/* 80196398 00193198  C0 C2 B2 88 */	lfs f6, lbl_803CFC08-_SDA2_BASE_(r2)
/* 8019639C 0019319C  EF A3 00 72 */	fmuls f29, f3, f1
/* 801963A0 001931A0  EF 62 00 32 */	fmuls f27, f2, f0
/* 801963A4 001931A4  FC 20 E0 90 */	fmr f1, f28
/* 801963A8 001931A8  C0 E2 B2 8C */	lfs f7, lbl_803CFC0C-_SDA2_BASE_(r2)
/* 801963AC 001931AC  FC 40 F8 90 */	fmr f2, f31
/* 801963B0 001931B0  FC 60 E8 90 */	fmr f3, f29
/* 801963B4 001931B4  FC 80 D8 90 */	fmr f4, f27
/* 801963B8 001931B8  4B EA F2 AD */	bl Im2DRenderQuad__Ffffffff
/* 801963BC 001931BC  3C 60 80 27 */	lis r3, lbl_80274CD0@ha
/* 801963C0 001931C0  FC 20 E0 90 */	fmr f1, f28
/* 801963C4 001931C4  38 63 4C D0 */	addi r3, r3, lbl_80274CD0@l
/* 801963C8 001931C8  FC 40 F8 90 */	fmr f2, f31
/* 801963CC 001931CC  FC 60 E8 90 */	fmr f3, f29
/* 801963D0 001931D0  38 63 00 61 */	addi r3, r3, 0x61
/* 801963D4 001931D4  FC 80 D8 90 */	fmr f4, f27
/* 801963D8 001931D8  4C C6 32 42 */	crset 6
/* 801963DC 001931DC  4B E8 19 61 */	bl xprintf__FPCce
/* 801963E0 001931E0  48 00 03 2C */	b lbl_8019670C
lbl_801963E4:
/* 801963E4 001931E4  C0 42 B2 7C */	lfs f2, lbl_803CFBFC-_SDA2_BASE_(r2)
/* 801963E8 001931E8  FC 20 D8 90 */	fmr f1, f27
/* 801963EC 001931EC  C0 1B 00 24 */	lfs f0, 0x24(r27)
/* 801963F0 001931F0  38 61 00 1C */	addi r3, r1, 0x1c
/* 801963F4 001931F4  C0 62 B2 8C */	lfs f3, lbl_803CFC0C-_SDA2_BASE_(r2)
/* 801963F8 001931F8  EC 02 00 28 */	fsubs f0, f2, f0
/* 801963FC 001931FC  80 1B 00 10 */	lwz r0, 0x10(r27)
/* 80196400 00193200  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80196404 00193204  EF 83 00 32 */	fmuls f28, f3, f0
/* 80196408 00193208  4B FF FC D1 */	bl xCMcolor_scale__F10iColor_tagf
/* 8019640C 0019320C  80 9F 01 68 */	lwz r4, 0x168(r31)
/* 80196410 00193210  80 1F 01 6C */	lwz r0, 0x16c(r31)
/* 80196414 00193214  90 81 00 4C */	stw r4, 0x4c(r1)
/* 80196418 00193218  80 9F 01 70 */	lwz r4, 0x170(r31)
/* 8019641C 0019321C  90 01 00 50 */	stw r0, 0x50(r1)
/* 80196420 00193220  80 1F 01 74 */	lwz r0, 0x174(r31)
/* 80196424 00193224  90 81 00 54 */	stw r4, 0x54(r1)
/* 80196428 00193228  90 01 00 58 */	stw r0, 0x58(r1)
/* 8019642C 0019322C  D3 81 00 4C */	stfs f28, 0x4c(r1)
/* 80196430 00193230  D3 E1 00 50 */	stfs f31, 0x50(r1)
/* 80196434 00193234  C0 1B 00 24 */	lfs f0, 0x24(r27)
/* 80196438 00193238  90 61 00 28 */	stw r3, 0x28(r1)
/* 8019643C 0019323C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80196440 00193240  C0 1B 00 28 */	lfs f0, 0x28(r27)
/* 80196444 00193244  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80196448 00193248  90 61 00 18 */	stw r3, 0x18(r1)
/* 8019644C 0019324C  C0 3B 00 18 */	lfs f1, 0x18(r27)
/* 80196450 00193250  4B E8 1B 6D */	bl NSCREENY__Ff
/* 80196454 00193254  FF A0 08 90 */	fmr f29, f1
/* 80196458 00193258  C0 3B 00 14 */	lfs f1, 0x14(r27)
/* 8019645C 0019325C  4B E8 1B 6D */	bl NSCREENX__Ff
/* 80196460 00193260  FC 40 E8 90 */	fmr f2, f29
/* 80196464 00193264  80 9B 00 0C */	lwz r4, 0xc(r27)
/* 80196468 00193268  C0 62 B2 78 */	lfs f3, lbl_803CFBF8-_SDA2_BASE_(r2)
/* 8019646C 0019326C  38 61 00 A4 */	addi r3, r1, 0xa4
/* 80196470 00193270  38 A1 00 18 */	addi r5, r1, 0x18
/* 80196474 00193274  38 DF 01 48 */	addi r6, r31, 0x148
/* 80196478 00193278  4B E8 1A 7D */	bl create__5xfontFUifff10iColor_tagRC13basic_rect$$0f$$1
/* 8019647C 0019327C  C0 22 B2 78 */	lfs f1, lbl_803CFBF8-_SDA2_BASE_(r2)
/* 80196480 00193280  38 61 01 98 */	addi r3, r1, 0x198
/* 80196484 00193284  38 81 00 A4 */	addi r4, r1, 0xa4
/* 80196488 00193288  38 A1 00 4C */	addi r5, r1, 0x4c
/* 8019648C 0019328C  FC 40 08 90 */	fmr f2, f1
/* 80196490 00193290  38 C0 00 02 */	li r6, 2
/* 80196494 00193294  FC 60 08 90 */	fmr f3, f1
/* 80196498 00193298  FC 80 08 90 */	fmr f4, f1
/* 8019649C 0019329C  4B E8 19 49 */	bl create__8xtextboxFRC5xfontRC13basic_rect$$0f$$1Uiffff
/* 801964A0 001932A0  38 00 00 0D */	li r0, 0xd
/* 801964A4 001932A4  38 A1 02 CC */	addi r5, r1, 0x2cc
/* 801964A8 001932A8  38 81 01 94 */	addi r4, r1, 0x194
/* 801964AC 001932AC  7C 09 03 A6 */	mtctr r0
lbl_801964B0:
/* 801964B0 001932B0  80 64 00 04 */	lwz r3, 4(r4)
/* 801964B4 001932B4  84 04 00 08 */	lwzu r0, 8(r4)
/* 801964B8 001932B8  90 65 00 04 */	stw r3, 4(r5)
/* 801964BC 001932BC  94 05 00 08 */	stwu r0, 8(r5)
/* 801964C0 001932C0  42 00 FF F0 */	bdnz lbl_801964B0
/* 801964C4 001932C4  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 801964C8 001932C8  38 61 02 D0 */	addi r3, r1, 0x2d0
/* 801964CC 001932CC  4B E8 BF FD */	bl set_text__8xtextboxFPCc
/* 801964D0 001932D0  38 61 02 D0 */	addi r3, r1, 0x2d0
/* 801964D4 001932D4  38 80 00 01 */	li r4, 1
/* 801964D8 001932D8  4B E8 18 CD */	bl render__8xtextboxCFb
/* 801964DC 001932DC  48 00 02 30 */	b lbl_8019670C
lbl_801964E0:
/* 801964E0 001932E0  C0 42 B2 7C */	lfs f2, lbl_803CFBFC-_SDA2_BASE_(r2)
/* 801964E4 001932E4  28 00 00 01 */	cmplwi r0, 1
/* 801964E8 001932E8  C0 1B 00 24 */	lfs f0, 0x24(r27)
/* 801964EC 001932EC  C0 3B 00 44 */	lfs f1, 0x44(r27)
/* 801964F0 001932F0  EC 42 00 28 */	fsubs f2, f2, f0
/* 801964F4 001932F4  C0 1B 00 08 */	lfs f0, 8(r27)
/* 801964F8 001932F8  C0 62 B2 8C */	lfs f3, lbl_803CFC0C-_SDA2_BASE_(r2)
/* 801964FC 001932FC  EC 22 08 28 */	fsubs f1, f2, f1
/* 80196500 00193300  EC 01 00 28 */	fsubs f0, f1, f0
/* 80196504 00193304  EF 83 00 32 */	fmuls f28, f3, f0
/* 80196508 00193308  40 82 00 10 */	bne lbl_80196518
/* 8019650C 0019330C  3B 40 00 00 */	li r26, 0
/* 80196510 00193310  3B 00 00 00 */	li r24, 0
/* 80196514 00193314  48 00 00 20 */	b lbl_80196534
lbl_80196518:
/* 80196518 00193318  28 00 00 02 */	cmplwi r0, 2
/* 8019651C 0019331C  40 82 00 10 */	bne lbl_8019652C
/* 80196520 00193320  3B 40 00 01 */	li r26, 1
/* 80196524 00193324  3B 00 00 01 */	li r24, 1
/* 80196528 00193328  48 00 00 0C */	b lbl_80196534
lbl_8019652C:
/* 8019652C 0019332C  3B 00 00 01 */	li r24, 1
/* 80196530 00193330  3B 40 00 00 */	li r26, 0
lbl_80196534:
/* 80196534 00193334  80 1B 00 10 */	lwz r0, 0x10(r27)
/* 80196538 00193338  FC 20 D8 90 */	fmr f1, f27
/* 8019653C 0019333C  38 61 00 14 */	addi r3, r1, 0x14
/* 80196540 00193340  90 01 00 14 */	stw r0, 0x14(r1)
/* 80196544 00193344  4B FF FB 95 */	bl xCMcolor_scale__F10iColor_tagf
/* 80196548 00193348  80 9F 01 78 */	lwz r4, 0x178(r31)
/* 8019654C 0019334C  80 1F 01 7C */	lwz r0, 0x17c(r31)
/* 80196550 00193350  90 81 00 3C */	stw r4, 0x3c(r1)
/* 80196554 00193354  80 9F 01 80 */	lwz r4, 0x180(r31)
/* 80196558 00193358  90 01 00 40 */	stw r0, 0x40(r1)
/* 8019655C 0019335C  80 1F 01 84 */	lwz r0, 0x184(r31)
/* 80196560 00193360  90 81 00 44 */	stw r4, 0x44(r1)
/* 80196564 00193364  90 01 00 48 */	stw r0, 0x48(r1)
/* 80196568 00193368  D3 81 00 3C */	stfs f28, 0x3c(r1)
/* 8019656C 0019336C  D3 E1 00 40 */	stfs f31, 0x40(r1)
/* 80196570 00193370  C0 1B 00 24 */	lfs f0, 0x24(r27)
/* 80196574 00193374  90 61 00 24 */	stw r3, 0x24(r1)
/* 80196578 00193378  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8019657C 0019337C  C0 1B 00 28 */	lfs f0, 0x28(r27)
/* 80196580 00193380  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80196584 00193384  90 61 00 10 */	stw r3, 0x10(r1)
/* 80196588 00193388  C0 3B 00 18 */	lfs f1, 0x18(r27)
/* 8019658C 0019338C  4B E8 1A 31 */	bl NSCREENY__Ff
/* 80196590 00193390  FF A0 08 90 */	fmr f29, f1
/* 80196594 00193394  C0 3B 00 14 */	lfs f1, 0x14(r27)
/* 80196598 00193398  4B E8 1A 31 */	bl NSCREENX__Ff
/* 8019659C 0019339C  FC 40 E8 90 */	fmr f2, f29
/* 801965A0 001933A0  80 9B 00 0C */	lwz r4, 0xc(r27)
/* 801965A4 001933A4  C0 62 B2 78 */	lfs f3, lbl_803CFBF8-_SDA2_BASE_(r2)
/* 801965A8 001933A8  38 61 00 80 */	addi r3, r1, 0x80
/* 801965AC 001933AC  38 A1 00 10 */	addi r5, r1, 0x10
/* 801965B0 001933B0  38 DF 01 48 */	addi r6, r31, 0x148
/* 801965B4 001933B4  4B E8 19 41 */	bl create__5xfontFUifff10iColor_tagRC13basic_rect$$0f$$1
/* 801965B8 001933B8  C0 22 B2 78 */	lfs f1, lbl_803CFBF8-_SDA2_BASE_(r2)
/* 801965BC 001933BC  7F 06 C3 78 */	mr r6, r24
/* 801965C0 001933C0  38 61 01 30 */	addi r3, r1, 0x130
/* 801965C4 001933C4  38 81 00 80 */	addi r4, r1, 0x80
/* 801965C8 001933C8  FC 40 08 90 */	fmr f2, f1
/* 801965CC 001933CC  38 A1 00 3C */	addi r5, r1, 0x3c
/* 801965D0 001933D0  FC 60 08 90 */	fmr f3, f1
/* 801965D4 001933D4  FC 80 08 90 */	fmr f4, f1
/* 801965D8 001933D8  4B E8 18 0D */	bl create__8xtextboxFRC5xfontRC13basic_rect$$0f$$1Uiffff
/* 801965DC 001933DC  38 00 00 0D */	li r0, 0xd
/* 801965E0 001933E0  38 A1 02 64 */	addi r5, r1, 0x264
/* 801965E4 001933E4  38 81 01 2C */	addi r4, r1, 0x12c
/* 801965E8 001933E8  7C 09 03 A6 */	mtctr r0
lbl_801965EC:
/* 801965EC 001933EC  80 64 00 04 */	lwz r3, 4(r4)
/* 801965F0 001933F0  84 04 00 08 */	lwzu r0, 8(r4)
/* 801965F4 001933F4  90 65 00 04 */	stw r3, 4(r5)
/* 801965F8 001933F8  94 05 00 08 */	stwu r0, 8(r5)
/* 801965FC 001933FC  42 00 FF F0 */	bdnz lbl_801965EC
/* 80196600 00193400  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 80196604 00193404  38 61 02 68 */	addi r3, r1, 0x268
/* 80196608 00193408  4B E8 BE C1 */	bl set_text__8xtextboxFPCc
/* 8019660C 0019340C  38 61 02 68 */	addi r3, r1, 0x268
/* 80196610 00193410  38 80 00 01 */	li r4, 1
/* 80196614 00193414  4B E8 17 91 */	bl render__8xtextboxCFb
/* 80196618 00193418  C0 5B 00 24 */	lfs f2, 0x24(r27)
/* 8019661C 0019341C  FC 20 D8 90 */	fmr f1, f27
/* 80196620 00193420  C0 1B 00 08 */	lfs f0, 8(r27)
/* 80196624 00193424  38 61 00 0C */	addi r3, r1, 0xc
/* 80196628 00193428  80 1B 00 30 */	lwz r0, 0x30(r27)
/* 8019662C 0019342C  EC 02 00 2A */	fadds f0, f2, f0
/* 80196630 00193430  90 01 00 0C */	stw r0, 0xc(r1)
/* 80196634 00193434  EF 9C 00 2A */	fadds f28, f28, f0
/* 80196638 00193438  4B FF FA A1 */	bl xCMcolor_scale__F10iColor_tagf
/* 8019663C 0019343C  80 9F 01 88 */	lwz r4, 0x188(r31)
/* 80196640 00193440  80 1F 01 8C */	lwz r0, 0x18c(r31)
/* 80196644 00193444  90 81 00 2C */	stw r4, 0x2c(r1)
/* 80196648 00193448  80 9F 01 90 */	lwz r4, 0x190(r31)
/* 8019664C 0019344C  90 01 00 30 */	stw r0, 0x30(r1)
/* 80196650 00193450  80 1F 01 94 */	lwz r0, 0x194(r31)
/* 80196654 00193454  90 81 00 34 */	stw r4, 0x34(r1)
/* 80196658 00193458  90 01 00 38 */	stw r0, 0x38(r1)
/* 8019665C 0019345C  D3 81 00 2C */	stfs f28, 0x2c(r1)
/* 80196660 00193460  D3 E1 00 30 */	stfs f31, 0x30(r1)
/* 80196664 00193464  C0 1B 00 44 */	lfs f0, 0x44(r27)
/* 80196668 00193468  90 61 00 20 */	stw r3, 0x20(r1)
/* 8019666C 0019346C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80196670 00193470  C0 1B 00 48 */	lfs f0, 0x48(r27)
/* 80196674 00193474  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80196678 00193478  90 61 00 08 */	stw r3, 8(r1)
/* 8019667C 0019347C  C0 3B 00 38 */	lfs f1, 0x38(r27)
/* 80196680 00193480  4B E8 19 3D */	bl NSCREENY__Ff
/* 80196684 00193484  FF E0 08 90 */	fmr f31, f1
/* 80196688 00193488  C0 3B 00 34 */	lfs f1, 0x34(r27)
/* 8019668C 0019348C  4B E8 19 3D */	bl NSCREENX__Ff
/* 80196690 00193490  FC 40 F8 90 */	fmr f2, f31
/* 80196694 00193494  80 9B 00 0C */	lwz r4, 0xc(r27)
/* 80196698 00193498  C0 62 B2 78 */	lfs f3, lbl_803CFBF8-_SDA2_BASE_(r2)
/* 8019669C 0019349C  38 61 00 5C */	addi r3, r1, 0x5c
/* 801966A0 001934A0  38 A1 00 08 */	addi r5, r1, 8
/* 801966A4 001934A4  38 DF 01 48 */	addi r6, r31, 0x148
/* 801966A8 001934A8  4B E8 18 4D */	bl create__5xfontFUifff10iColor_tagRC13basic_rect$$0f$$1
/* 801966AC 001934AC  C0 22 B2 78 */	lfs f1, lbl_803CFBF8-_SDA2_BASE_(r2)
/* 801966B0 001934B0  7F 46 D3 78 */	mr r6, r26
/* 801966B4 001934B4  38 61 00 C8 */	addi r3, r1, 0xc8
/* 801966B8 001934B8  38 81 00 5C */	addi r4, r1, 0x5c
/* 801966BC 001934BC  FC 40 08 90 */	fmr f2, f1
/* 801966C0 001934C0  38 A1 00 2C */	addi r5, r1, 0x2c
/* 801966C4 001934C4  FC 60 08 90 */	fmr f3, f1
/* 801966C8 001934C8  FC 80 08 90 */	fmr f4, f1
/* 801966CC 001934CC  4B E8 17 19 */	bl create__8xtextboxFRC5xfontRC13basic_rect$$0f$$1Uiffff
/* 801966D0 001934D0  38 00 00 0D */	li r0, 0xd
/* 801966D4 001934D4  38 A1 01 FC */	addi r5, r1, 0x1fc
/* 801966D8 001934D8  38 81 00 C4 */	addi r4, r1, 0xc4
/* 801966DC 001934DC  7C 09 03 A6 */	mtctr r0
lbl_801966E0:
/* 801966E0 001934E0  80 64 00 04 */	lwz r3, 4(r4)
/* 801966E4 001934E4  84 04 00 08 */	lwzu r0, 8(r4)
/* 801966E8 001934E8  90 65 00 04 */	stw r3, 4(r5)
/* 801966EC 001934EC  94 05 00 08 */	stwu r0, 8(r5)
/* 801966F0 001934F0  42 00 FF F0 */	bdnz lbl_801966E0
/* 801966F4 001934F4  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 801966F8 001934F8  38 61 02 00 */	addi r3, r1, 0x200
/* 801966FC 001934FC  4B E8 BD CD */	bl set_text__8xtextboxFPCc
/* 80196700 00193500  38 61 02 00 */	addi r3, r1, 0x200
/* 80196704 00193504  38 80 00 01 */	li r4, 1
/* 80196708 00193508  4B E8 16 9D */	bl render__8xtextboxCFb
lbl_8019670C:
/* 8019670C 0019350C  80 1E 00 00 */	lwz r0, 0(r30)
/* 80196710 00193510  7F DE 02 14 */	add r30, r30, r0
lbl_80196714:
/* 80196714 00193514  80 1D 00 00 */	lwz r0, 0(r29)
/* 80196718 00193518  7C 7D F0 50 */	subf r3, r29, r30
/* 8019671C 0019351C  7C 03 00 40 */	cmplw r3, r0
/* 80196720 00193520  41 80 FB 34 */	blt lbl_80196254
/* 80196724 00193524  7F DD F3 78 */	mr r29, r30
lbl_80196728:
/* 80196728 00193528  80 19 00 14 */	lwz r0, 0x14(r25)
/* 8019672C 0019352C  7C 79 E8 50 */	subf r3, r25, r29
/* 80196730 00193530  7C 03 00 40 */	cmplw r3, r0
/* 80196734 00193534  41 80 FB 0C */	blt lbl_80196240
/* 80196738 00193538  C0 02 B2 78 */	lfs f0, lbl_803CFBF8-_SDA2_BASE_(r2)
/* 8019673C 0019353C  38 00 00 00 */	li r0, 0
/* 80196740 00193540  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80196744 00193544  4C 41 13 82 */	cror 2, 1, 2
/* 80196748 00193548  40 82 00 18 */	bne lbl_80196760
/* 8019674C 0019354C  C0 19 00 10 */	lfs f0, 0x10(r25)
/* 80196750 00193550  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80196754 00193554  4C 40 13 82 */	cror 2, 0, 2
/* 80196758 00193558  40 82 00 08 */	bne lbl_80196760
/* 8019675C 0019355C  38 00 00 01 */	li r0, 1
lbl_80196760:
/* 80196760 00193560  54 03 06 3E */	clrlwi r3, r0, 0x18
lbl_80196764:
/* 80196764 00193564  E3 E1 03 A8 */	psq_l f31, 936(r1), 0, qr0
/* 80196768 00193568  CB E1 03 A0 */	lfd f31, 0x3a0(r1)
/* 8019676C 0019356C  E3 C1 03 98 */	psq_l f30, 920(r1), 0, qr0
/* 80196770 00193570  CB C1 03 90 */	lfd f30, 0x390(r1)
/* 80196774 00193574  E3 A1 03 88 */	psq_l f29, 904(r1), 0, qr0
/* 80196778 00193578  CB A1 03 80 */	lfd f29, 0x380(r1)
/* 8019677C 0019357C  E3 81 03 78 */	psq_l f28, 888(r1), 0, qr0
/* 80196780 00193580  CB 81 03 70 */	lfd f28, 0x370(r1)
/* 80196784 00193584  E3 61 03 68 */	psq_l f27, 872(r1), 0, qr0
/* 80196788 00193588  CB 61 03 60 */	lfd f27, 0x360(r1)
/* 8019678C 0019358C  BB 01 03 40 */	lmw r24, 0x340(r1)
/* 80196790 00193590  80 01 03 B4 */	lwz r0, 0x3b4(r1)
/* 80196794 00193594  7C 08 03 A6 */	mtlr r0
/* 80196798 00193598  38 21 03 B0 */	addi r1, r1, 0x3b0
/* 8019679C 0019359C  4E 80 00 20 */	blr 

.global xCMupdate__Ff
xCMupdate__Ff:
/* 801967A0 001935A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801967A4 001935A4  7C 08 02 A6 */	mflr r0
/* 801967A8 001935A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801967AC 001935AC  80 6D 98 E8 */	lwz r3, lbl_803CC1E8-_SDA_BASE_(r13)
/* 801967B0 001935B0  28 03 00 00 */	cmplwi r3, 0
/* 801967B4 001935B4  41 82 00 2C */	beq lbl_801967E0
/* 801967B8 001935B8  C0 4D 84 D0 */	lfs f2, dtscale-_SDA_BASE_(r13)
/* 801967BC 001935BC  C0 0D 84 D4 */	lfs f0, lbl_803CADD4-_SDA_BASE_(r13)
/* 801967C0 001935C0  EC 01 00 BA */	fmadds f0, f1, f2, f0
/* 801967C4 001935C4  D0 0D 84 D4 */	stfs f0, lbl_803CADD4-_SDA_BASE_(r13)
/* 801967C8 001935C8  C0 2D 84 D4 */	lfs f1, lbl_803CADD4-_SDA_BASE_(r13)
/* 801967CC 001935CC  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 801967D0 001935D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801967D4 001935D4  4C 41 13 82 */	cror 2, 1, 2
/* 801967D8 001935D8  40 82 00 08 */	bne lbl_801967E0
/* 801967DC 001935DC  48 00 00 65 */	bl xCMstop__Fv
lbl_801967E0:
/* 801967E0 001935E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801967E4 001935E4  7C 08 03 A6 */	mtlr r0
/* 801967E8 001935E8  38 21 00 10 */	addi r1, r1, 0x10
/* 801967EC 001935EC  4E 80 00 20 */	blr 

.global xCMrender__Fv
xCMrender__Fv:
/* 801967F0 001935F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801967F4 001935F4  7C 08 02 A6 */	mflr r0
/* 801967F8 001935F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801967FC 001935FC  C0 2D 84 D4 */	lfs f1, lbl_803CADD4-_SDA_BASE_(r13)
/* 80196800 00193600  80 6D 98 E8 */	lwz r3, lbl_803CC1E8-_SDA_BASE_(r13)
/* 80196804 00193604  4B FF F9 A9 */	bl xCMrender__FfP12xCreditsData
/* 80196808 00193608  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8019680C 0019360C  7C 08 03 A6 */	mtlr r0
/* 80196810 00193610  38 21 00 10 */	addi r1, r1, 0x10
/* 80196814 00193614  4E 80 00 20 */	blr 

.global xCMstart__FP12xCreditsDatafP5xBase
xCMstart__FP12xCreditsDatafP5xBase:
/* 80196818 00193618  28 03 00 00 */	cmplwi r3, 0
/* 8019681C 0019361C  90 6D 98 E8 */	stw r3, lbl_803CC1E8-_SDA_BASE_(r13)
/* 80196820 00193620  4D 82 00 20 */	beqlr 
/* 80196824 00193624  C0 02 B2 78 */	lfs f0, lbl_803CFBF8-_SDA2_BASE_(r2)
/* 80196828 00193628  28 04 00 00 */	cmplwi r4, 0
/* 8019682C 0019362C  D0 0D 84 D4 */	stfs f0, lbl_803CADD4-_SDA_BASE_(r13)
/* 80196830 00193630  4D 82 00 20 */	beqlr 
/* 80196834 00193634  80 04 00 00 */	lwz r0, 0(r4)
/* 80196838 00193638  90 0D 98 EC */	stw r0, lbl_803CC1EC-_SDA_BASE_(r13)
/* 8019683C 0019363C  4E 80 00 20 */	blr 

.global xCMstop__Fv
xCMstop__Fv:
/* 80196840 00193640  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80196844 00193644  7C 08 02 A6 */	mflr r0
/* 80196848 00193648  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019684C 0019364C  38 00 00 00 */	li r0, 0
/* 80196850 00193650  C0 02 B2 90 */	lfs f0, lbl_803CFC10-_SDA2_BASE_(r2)
/* 80196854 00193654  D0 0D 84 D4 */	stfs f0, lbl_803CADD4-_SDA_BASE_(r13)
/* 80196858 00193658  90 0D 98 E8 */	stw r0, lbl_803CC1E8-_SDA_BASE_(r13)
/* 8019685C 0019365C  80 6D 98 EC */	lwz r3, lbl_803CC1EC-_SDA_BASE_(r13)
/* 80196860 00193660  28 03 00 00 */	cmplwi r3, 0
/* 80196864 00193664  41 82 00 0C */	beq lbl_80196870
/* 80196868 00193668  38 80 02 12 */	li r4, 0x212
/* 8019686C 0019366C  4B E8 8C F9 */	bl zEntEvent__FUiUi
lbl_80196870:
/* 80196870 00193670  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80196874 00193674  7C 08 03 A6 */	mtlr r0
/* 80196878 00193678  38 21 00 10 */	addi r1, r1, 0x10
/* 8019687C 0019367C  4E 80 00 20 */	blr 
.section .rodata
lbl_80274B38:
	.incbin "baserom.dol", 0x271B18, 0x198
lbl_80274CD0:
	.incbin "baserom.dol", 0x271CB0, 0x80

.section .sbss
lbl_803CC1E8:
	.skip 0x4
lbl_803CC1EC:
	.skip 0x4
/* SPECULATION: link order */
.global lbl_803CC1F0
lbl_803CC1F0:
	.skip 0x4
/* SPECULATION: link order */
.global lbl_803CC1F4
lbl_803CC1F4:
	.skip 0x4
/* SPECULATION: link order */
.global lbl_803CC1F8
lbl_803CC1F8:
	.skip 0x4
/* SPECULATION: link order */
.global lbl_803CC1FC
lbl_803CC1FC:
	.skip 0x4
/* SPECULATION: link order */
.global lbl_803CC200
lbl_803CC200:
	.skip 0x4
/* SPECULATION: link order */
.global lbl_803CC204
lbl_803CC204:
	.skip 0x4
/* SPECULATION: link order */
.global lbl_803CC208
lbl_803CC208:
	.skip 0x4
/* SPECULATION: link order */
.global lbl_803CC20C
lbl_803CC20C:
	.skip 0x4
/* SPECULATION: link order */
.global lbl_803CC210
lbl_803CC210:
	.skip 0x4
/* SPECULATION: link order */
.global lbl_803CC214
lbl_803CC214:
	.skip 0x4
/* SPECULATION: link order */
.global lbl_803CC218
lbl_803CC218:
	.skip 0x8

.section .sdata
lbl_803CADD4:
	.incbin "baserom.dol", 0x2B5E94, 0x4

.section .sdata2
lbl_803CFBF0:
	.incbin "baserom.dol", 0x2B9490, 0x8
lbl_803CFBF8:
	.incbin "baserom.dol", 0x2B9498, 0x4
lbl_803CFBFC:
	.incbin "baserom.dol", 0x2B949C, 0x4
lbl_803CFC00:
	.incbin "baserom.dol", 0x2B94A0, 0x4
lbl_803CFC04:
	.incbin "baserom.dol", 0x2B94A4, 0x4
lbl_803CFC08:
	.incbin "baserom.dol", 0x2B94A8, 0x4
lbl_803CFC0C:
	.incbin "baserom.dol", 0x2B94AC, 0x4
lbl_803CFC10:
	.incbin "baserom.dol", 0x2B94B0, 0x18
