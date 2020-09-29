.include "macros.inc"

.section .text  # 0x800C3300 - 0x800C3998

.global iFileInit__Fv
iFileInit__Fv:
/* 800C3300 000C0100  3C 60 80 30 */	lis r3, lbl_802FAE60@ha
/* 800C3304 000C0104  38 63 AE 60 */	addi r3, r3, lbl_802FAE60@l
/* 800C3308 000C0108  38 03 00 1F */	addi r0, r3, 0x1f
/* 800C330C 000C010C  54 00 00 34 */	rlwinm r0, r0, 0, 0, 0x1a
/* 800C3310 000C0110  90 0D 91 C0 */	stw r0, lbl_803CBAC0-_SDA_BASE_(r13)
/* 800C3314 000C0114  4E 80 00 20 */	blr 

.global iFileExit__Fv
iFileExit__Fv:
/* 800C3318 000C0118  4E 80 00 20 */	blr 

.global iFileLoad__FPcPUiPUi
iFileLoad__FPcPUiPUi:
/* 800C331C 000C011C  94 21 FE 50 */	stwu r1, -0x1b0(r1)
/* 800C3320 000C0120  7C 08 02 A6 */	mflr r0
/* 800C3324 000C0124  90 01 01 B4 */	stw r0, 0x1b4(r1)
/* 800C3328 000C0128  93 E1 01 AC */	stw r31, 0x1ac(r1)
/* 800C332C 000C012C  7C 7F 1B 78 */	mr r31, r3
/* 800C3330 000C0130  93 C1 01 A8 */	stw r30, 0x1a8(r1)
/* 800C3334 000C0134  7C BE 2B 78 */	mr r30, r5
/* 800C3338 000C0138  93 A1 01 A4 */	stw r29, 0x1a4(r1)
/* 800C333C 000C013C  7C 9D 23 78 */	mr r29, r4
/* 800C3340 000C0140  38 81 00 08 */	addi r4, r1, 8
/* 800C3344 000C0144  48 00 05 D9 */	bl iFileFullPath__FPCcPc
/* 800C3348 000C0148  7F E3 FB 78 */	mr r3, r31
/* 800C334C 000C014C  38 A1 00 88 */	addi r5, r1, 0x88
/* 800C3350 000C0150  38 80 00 04 */	li r4, 4
/* 800C3354 000C0154  48 00 00 79 */	bl iFileOpen__FPCciP9tag_xFile
/* 800C3358 000C0158  38 61 00 88 */	addi r3, r1, 0x88
/* 800C335C 000C015C  48 00 05 95 */	bl iFileGetSize__FP9tag_xFile
/* 800C3360 000C0160  28 1D 00 00 */	cmplwi r29, 0
/* 800C3364 000C0164  7C 7F 1B 78 */	mr r31, r3
/* 800C3368 000C0168  40 82 00 18 */	bne lbl_800C3380
/* 800C336C 000C016C  38 1F 00 1F */	addi r0, r31, 0x1f
/* 800C3370 000C0170  80 6D 86 40 */	lwz r3, lbl_803CAF40-_SDA_BASE_(r13)
/* 800C3374 000C0174  54 04 00 34 */	rlwinm r4, r0, 0, 0, 0x1a
/* 800C3378 000C0178  48 10 EA 89 */	bl func_801D1E00
/* 800C337C 000C017C  7C 7D 1B 78 */	mr r29, r3
lbl_800C3380:
/* 800C3380 000C0180  38 1F 00 1F */	addi r0, r31, 0x1f
/* 800C3384 000C0184  7F A4 EB 78 */	mr r4, r29
/* 800C3388 000C0188  54 1F 00 34 */	rlwinm r31, r0, 0, 0, 0x1a
/* 800C338C 000C018C  38 61 00 88 */	addi r3, r1, 0x88
/* 800C3390 000C0190  7F E5 FB 78 */	mr r5, r31
/* 800C3394 000C0194  48 00 01 95 */	bl iFileRead__FP9tag_xFilePvUi
/* 800C3398 000C0198  28 1E 00 00 */	cmplwi r30, 0
/* 800C339C 000C019C  41 82 00 08 */	beq lbl_800C33A4
/* 800C33A0 000C01A0  93 FE 00 00 */	stw r31, 0(r30)
lbl_800C33A4:
/* 800C33A4 000C01A4  38 61 00 88 */	addi r3, r1, 0x88
/* 800C33A8 000C01A8  48 00 04 F5 */	bl iFileClose__FP9tag_xFile
/* 800C33AC 000C01AC  80 01 01 B4 */	lwz r0, 0x1b4(r1)
/* 800C33B0 000C01B0  7F A3 EB 78 */	mr r3, r29
/* 800C33B4 000C01B4  83 E1 01 AC */	lwz r31, 0x1ac(r1)
/* 800C33B8 000C01B8  83 C1 01 A8 */	lwz r30, 0x1a8(r1)
/* 800C33BC 000C01BC  83 A1 01 A4 */	lwz r29, 0x1a4(r1)
/* 800C33C0 000C01C0  7C 08 03 A6 */	mtlr r0
/* 800C33C4 000C01C4  38 21 01 B0 */	addi r1, r1, 0x1b0
/* 800C33C8 000C01C8  4E 80 00 20 */	blr 

.global iFileOpen__FPCciP9tag_xFile
iFileOpen__FPCciP9tag_xFile:
/* 800C33CC 000C01CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C33D0 000C01D0  7C 08 02 A6 */	mflr r0
/* 800C33D4 000C01D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C33D8 000C01D8  54 80 07 7B */	rlwinm. r0, r4, 0, 0x1d, 0x1d
/* 800C33DC 000C01DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C33E0 000C01E0  7C BF 2B 78 */	mr r31, r5
/* 800C33E4 000C01E4  41 82 00 14 */	beq lbl_800C33F8
/* 800C33E8 000C01E8  7C 64 1B 78 */	mr r4, r3
/* 800C33EC 000C01EC  38 7F 00 24 */	addi r3, r31, 0x24
/* 800C33F0 000C01F0  48 12 43 11 */	bl strcpy
/* 800C33F4 000C01F4  48 00 00 0C */	b lbl_800C3400
lbl_800C33F8:
/* 800C33F8 000C01F8  38 9F 00 24 */	addi r4, r31, 0x24
/* 800C33FC 000C01FC  48 00 05 21 */	bl iFileFullPath__FPCcPc
lbl_800C3400:
/* 800C3400 000C0200  38 7F 00 24 */	addi r3, r31, 0x24
/* 800C3404 000C0204  48 10 03 B9 */	bl DVDConvertPathToEntrynum
/* 800C3408 000C0208  90 7F 00 A4 */	stw r3, 0xa4(r31)
/* 800C340C 000C020C  80 7F 00 A4 */	lwz r3, 0xa4(r31)
/* 800C3410 000C0210  2C 03 FF FF */	cmpwi r3, -1
/* 800C3414 000C0214  40 82 00 0C */	bne lbl_800C3420
/* 800C3418 000C0218  38 60 00 01 */	li r3, 1
/* 800C341C 000C021C  48 00 00 48 */	b lbl_800C3464
lbl_800C3420:
/* 800C3420 000C0220  38 9F 00 A8 */	addi r4, r31, 0xa8
/* 800C3424 000C0224  48 10 06 8D */	bl DVDFastOpen
/* 800C3428 000C0228  2C 03 00 00 */	cmpwi r3, 0
/* 800C342C 000C022C  40 82 00 14 */	bne lbl_800C3440
/* 800C3430 000C0230  38 00 FF FF */	li r0, -1
/* 800C3434 000C0234  38 60 00 01 */	li r3, 1
/* 800C3438 000C0238  90 1F 00 A4 */	stw r0, 0xa4(r31)
/* 800C343C 000C023C  48 00 00 28 */	b lbl_800C3464
lbl_800C3440:
/* 800C3440 000C0240  38 60 00 00 */	li r3, 0
/* 800C3444 000C0244  38 00 00 01 */	li r0, 1
/* 800C3448 000C0248  90 7F 00 E4 */	stw r3, 0xe4(r31)
/* 800C344C 000C024C  7F E3 FB 78 */	mr r3, r31
/* 800C3450 000C0250  38 80 00 00 */	li r4, 0
/* 800C3454 000C0254  38 A0 00 00 */	li r5, 0
/* 800C3458 000C0258  90 1F 00 20 */	stw r0, 0x20(r31)
/* 800C345C 000C025C  48 00 00 1D */	bl iFileSeek__FP9tag_xFileii
/* 800C3460 000C0260  38 60 00 00 */	li r3, 0
lbl_800C3464:
/* 800C3464 000C0264  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C3468 000C0268  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C346C 000C026C  7C 08 03 A6 */	mtlr r0
/* 800C3470 000C0270  38 21 00 10 */	addi r1, r1, 0x10
/* 800C3474 000C0274  4E 80 00 20 */	blr 

.global iFileSeek__FP9tag_xFileii
iFileSeek__FP9tag_xFileii:
/* 800C3478 000C0278  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C347C 000C027C  7C 08 02 A6 */	mflr r0
/* 800C3480 000C0280  2C 05 00 01 */	cmpwi r5, 1
/* 800C3484 000C0284  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C3488 000C0288  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C348C 000C028C  7C 9F 23 78 */	mr r31, r4
/* 800C3490 000C0290  93 C1 00 08 */	stw r30, 8(r1)
/* 800C3494 000C0294  7C 7E 1B 78 */	mr r30, r3
/* 800C3498 000C0298  41 82 00 28 */	beq lbl_800C34C0
/* 800C349C 000C029C  40 80 00 10 */	bge lbl_800C34AC
/* 800C34A0 000C02A0  2C 05 00 00 */	cmpwi r5, 0
/* 800C34A4 000C02A4  40 80 00 14 */	bge lbl_800C34B8
/* 800C34A8 000C02A8  48 00 00 50 */	b lbl_800C34F8
lbl_800C34AC:
/* 800C34AC 000C02AC  2C 05 00 03 */	cmpwi r5, 3
/* 800C34B0 000C02B0  40 80 00 48 */	bge lbl_800C34F8
/* 800C34B4 000C02B4  48 00 00 30 */	b lbl_800C34E4
lbl_800C34B8:
/* 800C34B8 000C02B8  7F E0 FB 78 */	mr r0, r31
/* 800C34BC 000C02BC  48 00 00 40 */	b lbl_800C34FC
lbl_800C34C0:
/* 800C34C0 000C02C0  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 800C34C4 000C02C4  48 10 2D 6D */	bl DVDGetCommandBlockStatus
/* 800C34C8 000C02C8  2C 03 00 01 */	cmpwi r3, 1
/* 800C34CC 000C02CC  40 82 00 0C */	bne lbl_800C34D8
/* 800C34D0 000C02D0  38 60 FF FF */	li r3, -1
/* 800C34D4 000C02D4  48 00 00 30 */	b lbl_800C3504
lbl_800C34D8:
/* 800C34D8 000C02D8  80 1E 01 0C */	lwz r0, 0x10c(r30)
/* 800C34DC 000C02DC  7C 1F 02 14 */	add r0, r31, r0
/* 800C34E0 000C02E0  48 00 00 1C */	b lbl_800C34FC
lbl_800C34E4:
/* 800C34E4 000C02E4  80 1E 00 DC */	lwz r0, 0xdc(r30)
/* 800C34E8 000C02E8  7C 1F 00 51 */	subf. r0, r31, r0
/* 800C34EC 000C02EC  40 80 00 10 */	bge lbl_800C34FC
/* 800C34F0 000C02F0  38 00 00 00 */	li r0, 0
/* 800C34F4 000C02F4  48 00 00 08 */	b lbl_800C34FC
lbl_800C34F8:
/* 800C34F8 000C02F8  7F E0 FB 78 */	mr r0, r31
lbl_800C34FC:
/* 800C34FC 000C02FC  90 1E 01 0C */	stw r0, 0x10c(r30)
/* 800C3500 000C0300  80 7E 01 0C */	lwz r3, 0x10c(r30)
lbl_800C3504:
/* 800C3504 000C0304  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C3508 000C0308  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C350C 000C030C  83 C1 00 08 */	lwz r30, 8(r1)
/* 800C3510 000C0310  7C 08 03 A6 */	mtlr r0
/* 800C3514 000C0314  38 21 00 10 */	addi r1, r1, 0x10
/* 800C3518 000C0318  4E 80 00 20 */	blr 
lbl_800C351C:
/* 800C351C 000C031C  38 00 00 00 */	li r0, 0
/* 800C3520 000C0320  90 0D 91 C4 */	stw r0, iFileSyncAsyncReadActive-_SDA_BASE_(r13)
/* 800C3524 000C0324  4E 80 00 20 */	blr 

.global iFileRead__FP9tag_xFilePvUi
iFileRead__FP9tag_xFilePvUi:
/* 800C3528 000C0328  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800C352C 000C032C  7C 08 02 A6 */	mflr r0
/* 800C3530 000C0330  90 01 00 24 */	stw r0, 0x24(r1)
/* 800C3534 000C0334  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800C3538 000C0338  7C BF 2B 78 */	mr r31, r5
/* 800C353C 000C033C  38 A0 00 00 */	li r5, 0
/* 800C3540 000C0340  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800C3544 000C0344  7C 9E 23 78 */	mr r30, r4
/* 800C3548 000C0348  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800C354C 000C034C  7C 7D 1B 78 */	mr r29, r3
/* 800C3550 000C0350  80 83 01 0C */	lwz r4, 0x10c(r3)
/* 800C3554 000C0354  4B FF FF 25 */	bl iFileSeek__FP9tag_xFileii
/* 800C3558 000C0358  38 00 00 01 */	li r0, 1
/* 800C355C 000C035C  3C 60 80 0C */	lis r3, lbl_800C351C@ha
/* 800C3560 000C0360  90 0D 91 C4 */	stw r0, iFileSyncAsyncReadActive-_SDA_BASE_(r13)
/* 800C3564 000C0364  38 C3 35 1C */	addi r6, r3, lbl_800C351C@l
/* 800C3568 000C0368  7F A3 EB 78 */	mr r3, r29
/* 800C356C 000C036C  7F C4 F3 78 */	mr r4, r30
/* 800C3570 000C0370  7F E5 FB 78 */	mr r5, r31
/* 800C3574 000C0374  38 E0 00 00 */	li r7, 0
/* 800C3578 000C0378  48 00 01 C1 */	bl iFileReadAsync__FP9tag_xFilePvUiPFP9tag_xFile_vi
/* 800C357C 000C037C  48 00 00 08 */	b lbl_800C3584
lbl_800C3580:
/* 800C3580 000C0380  48 0B D7 0D */	bl CheckDVDAndResetState__8iTRCDiskFv
lbl_800C3584:
/* 800C3584 000C0384  80 0D 91 C4 */	lwz r0, iFileSyncAsyncReadActive-_SDA_BASE_(r13)
/* 800C3588 000C0388  28 00 00 00 */	cmplwi r0, 0
/* 800C358C 000C038C  40 82 FF F4 */	bne lbl_800C3580
/* 800C3590 000C0390  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800C3594 000C0394  7F E3 FB 78 */	mr r3, r31
/* 800C3598 000C0398  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800C359C 000C039C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800C35A0 000C03A0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800C35A4 000C03A4  7C 08 03 A6 */	mtlr r0
/* 800C35A8 000C03A8  38 21 00 20 */	addi r1, r1, 0x20
/* 800C35AC 000C03AC  4E 80 00 20 */	blr 
lbl_800C35B0:
/* 800C35B0 000C03B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C35B4 000C03B4  7C 08 02 A6 */	mflr r0
/* 800C35B8 000C03B8  2C 03 FF FE */	cmpwi r3, -2
/* 800C35BC 000C03BC  38 E0 FF FF */	li r7, -1
/* 800C35C0 000C03C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C35C4 000C03C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C35C8 000C03C8  80 04 00 2C */	lwz r0, 0x2c(r4)
/* 800C35CC 000C03CC  3C 80 80 3C */	lis r4, file_queue@ha
/* 800C35D0 000C03D0  1C A0 00 1C */	mulli r5, r0, 0x1c
/* 800C35D4 000C03D4  38 04 35 F0 */	addi r0, r4, file_queue@l
/* 800C35D8 000C03D8  7F E0 2A 14 */	add r31, r0, r5
/* 800C35DC 000C03DC  41 82 00 28 */	beq lbl_800C3604
/* 800C35E0 000C03E0  40 80 00 10 */	bge lbl_800C35F0
/* 800C35E4 000C03E4  2C 03 FF FD */	cmpwi r3, -3
/* 800C35E8 000C03E8  40 80 00 28 */	bge lbl_800C3610
/* 800C35EC 000C03EC  48 00 00 18 */	b lbl_800C3604
lbl_800C35F0:
/* 800C35F0 000C03F0  2C 03 00 00 */	cmpwi r3, 0
/* 800C35F4 000C03F4  40 80 00 10 */	bge lbl_800C3604
/* 800C35F8 000C03F8  38 60 00 0C */	li r3, 0xc
/* 800C35FC 000C03FC  4B F8 A3 0D */	bl xTRCDisk__F12_tagTRCState
/* 800C3600 000C0400  48 00 01 24 */	b lbl_800C3724
lbl_800C3604:
/* 800C3604 000C0404  2C 03 00 00 */	cmpwi r3, 0
/* 800C3608 000C0408  41 80 00 08 */	blt lbl_800C3610
/* 800C360C 000C040C  7C 67 1B 78 */	mr r7, r3
lbl_800C3610:
/* 800C3610 000C0410  2C 07 00 00 */	cmpwi r7, 0
/* 800C3614 000C0414  40 80 00 28 */	bge lbl_800C363C
/* 800C3618 000C0418  38 00 00 03 */	li r0, 3
/* 800C361C 000C041C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 800C3620 000C0420  81 9F 00 14 */	lwz r12, 0x14(r31)
/* 800C3624 000C0424  28 0C 00 00 */	cmplwi r12, 0
/* 800C3628 000C0428  41 82 00 FC */	beq lbl_800C3724
/* 800C362C 000C042C  80 7F 00 00 */	lwz r3, 0(r31)
/* 800C3630 000C0430  7D 89 03 A6 */	mtctr r12
/* 800C3634 000C0434  4E 80 04 21 */	bctrl 
/* 800C3638 000C0438  48 00 00 EC */	b lbl_800C3724
lbl_800C363C:
/* 800C363C 000C043C  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 800C3640 000C0440  80 1F 00 08 */	lwz r0, 8(r31)
/* 800C3644 000C0444  7C 87 2A 14 */	add r4, r7, r5
/* 800C3648 000C0448  7C 04 00 40 */	cmplw r4, r0
/* 800C364C 000C044C  40 80 00 20 */	bge lbl_800C366C
/* 800C3650 000C0450  80 DF 00 00 */	lwz r6, 0(r31)
/* 800C3654 000C0454  80 66 01 0C */	lwz r3, 0x10c(r6)
/* 800C3658 000C0458  80 06 00 DC */	lwz r0, 0xdc(r6)
/* 800C365C 000C045C  7C 65 1A 14 */	add r3, r5, r3
/* 800C3660 000C0460  7C 67 1A 14 */	add r3, r7, r3
/* 800C3664 000C0464  7C 03 00 40 */	cmplw r3, r0
/* 800C3668 000C0468  41 80 00 3C */	blt lbl_800C36A4
lbl_800C366C:
/* 800C366C 000C046C  38 00 00 02 */	li r0, 2
/* 800C3670 000C0470  90 1F 00 10 */	stw r0, 0x10(r31)
/* 800C3674 000C0474  80 1F 00 08 */	lwz r0, 8(r31)
/* 800C3678 000C0478  90 1F 00 0C */	stw r0, 0xc(r31)
/* 800C367C 000C047C  81 9F 00 14 */	lwz r12, 0x14(r31)
/* 800C3680 000C0480  28 0C 00 00 */	cmplwi r12, 0
/* 800C3684 000C0484  41 82 00 10 */	beq lbl_800C3694
/* 800C3688 000C0488  80 7F 00 00 */	lwz r3, 0(r31)
/* 800C368C 000C048C  7D 89 03 A6 */	mtctr r12
/* 800C3690 000C0490  4E 80 04 21 */	bctrl 
lbl_800C3694:
/* 800C3694 000C0494  80 7F 00 00 */	lwz r3, 0(r31)
/* 800C3698 000C0498  38 00 FF FF */	li r0, -1
/* 800C369C 000C049C  90 03 00 E8 */	stw r0, 0xe8(r3)
/* 800C36A0 000C04A0  48 00 00 84 */	b lbl_800C3724
lbl_800C36A4:
/* 800C36A4 000C04A4  90 9F 00 0C */	stw r4, 0xc(r31)
/* 800C36A8 000C04A8  38 00 00 01 */	li r0, 1
/* 800C36AC 000C04AC  90 1F 00 10 */	stw r0, 0x10(r31)
/* 800C36B0 000C04B0  80 DF 00 0C */	lwz r6, 0xc(r31)
/* 800C36B4 000C04B4  80 1F 00 08 */	lwz r0, 8(r31)
/* 800C36B8 000C04B8  7C 66 00 50 */	subf r3, r6, r0
/* 800C36BC 000C04BC  28 03 80 00 */	cmplwi r3, 0x8000
/* 800C36C0 000C04C0  40 80 00 10 */	bge lbl_800C36D0
/* 800C36C4 000C04C4  38 A3 00 03 */	addi r5, r3, 3
/* 800C36C8 000C04C8  54 A5 00 3A */	rlwinm r5, r5, 0, 0, 0x1d
/* 800C36CC 000C04CC  48 00 00 0C */	b lbl_800C36D8
lbl_800C36D0:
/* 800C36D0 000C04D0  3C 60 00 01 */	lis r3, 0x00008000@ha
/* 800C36D4 000C04D4  38 A3 80 00 */	addi r5, r3, 0x00008000@l
lbl_800C36D8:
/* 800C36D8 000C04D8  81 1F 00 00 */	lwz r8, 0(r31)
/* 800C36DC 000C04DC  81 28 01 0C */	lwz r9, 0x10c(r8)
/* 800C36E0 000C04E0  80 68 00 DC */	lwz r3, 0xdc(r8)
/* 800C36E4 000C04E4  7C 06 4A 14 */	add r0, r6, r9
/* 800C36E8 000C04E8  7C 05 02 14 */	add r0, r5, r0
/* 800C36EC 000C04EC  7C 00 18 40 */	cmplw r0, r3
/* 800C36F0 000C04F0  40 81 00 14 */	ble lbl_800C3704
/* 800C36F4 000C04F4  7C A9 18 50 */	subf r5, r9, r3
/* 800C36F8 000C04F8  7C A6 28 50 */	subf r5, r6, r5
/* 800C36FC 000C04FC  38 A5 00 1F */	addi r5, r5, 0x1f
/* 800C3700 000C0500  54 A5 00 34 */	rlwinm r5, r5, 0, 0, 0x1a
lbl_800C3704:
/* 800C3704 000C0504  80 9F 00 04 */	lwz r4, 4(r31)
/* 800C3708 000C0508  3C 60 80 0C */	lis r3, lbl_800C35B0@ha
/* 800C370C 000C050C  38 E3 35 B0 */	addi r7, r3, lbl_800C35B0@l
/* 800C3710 000C0510  7C 84 32 14 */	add r4, r4, r6
/* 800C3714 000C0514  38 68 00 A8 */	addi r3, r8, 0xa8
/* 800C3718 000C0518  7C C9 32 14 */	add r6, r9, r6
/* 800C371C 000C051C  39 00 00 02 */	li r8, 2
/* 800C3720 000C0520  48 10 07 15 */	bl DVDReadAsyncPrio
lbl_800C3724:
/* 800C3724 000C0524  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C3728 000C0528  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C372C 000C052C  7C 08 03 A6 */	mtlr r0
/* 800C3730 000C0530  38 21 00 10 */	addi r1, r1, 0x10
/* 800C3734 000C0534  4E 80 00 20 */	blr 

.global iFileReadAsync__FP9tag_xFilePvUiPFP9tag_xFile_vi
iFileReadAsync__FP9tag_xFilePvUiPFP9tag_xFile_vi:
/* 800C3738 000C0538  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800C373C 000C053C  7C 08 02 A6 */	mflr r0
/* 800C3740 000C0540  90 01 00 24 */	stw r0, 0x24(r1)
/* 800C3744 000C0544  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800C3748 000C0548  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800C374C 000C054C  7C 7E 1B 78 */	mr r30, r3
/* 800C3750 000C0550  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800C3754 000C0554  93 81 00 10 */	stw r28, 0x10(r1)
/* 800C3758 000C0558  88 0D 91 CC */	lbz r0, lbl_803CBACC-_SDA_BASE_(r13)
/* 800C375C 000C055C  7C 00 07 75 */	extsb. r0, r0
/* 800C3760 000C0560  40 82 00 10 */	bne lbl_800C3770
/* 800C3764 000C0564  38 00 00 01 */	li r0, 1
/* 800C3768 000C0568  90 0D 91 C8 */	stw r0, lbl_803CBAC8-_SDA_BASE_(r13)
/* 800C376C 000C056C  98 0D 91 CC */	stb r0, lbl_803CBACC-_SDA_BASE_(r13)
lbl_800C3770:
/* 800C3770 000C0570  3C 60 80 3C */	lis r3, file_queue@ha
/* 800C3774 000C0574  38 00 00 04 */	li r0, 4
/* 800C3778 000C0578  38 63 35 F0 */	addi r3, r3, file_queue@l
/* 800C377C 000C057C  3B E0 00 00 */	li r31, 0
/* 800C3780 000C0580  7C 09 03 A6 */	mtctr r0
lbl_800C3784:
/* 800C3784 000C0584  80 03 00 10 */	lwz r0, 0x10(r3)
/* 800C3788 000C0588  2C 00 00 04 */	cmpwi r0, 4
/* 800C378C 000C058C  41 82 00 94 */	beq lbl_800C3820
/* 800C3790 000C0590  2C 00 00 01 */	cmpwi r0, 1
/* 800C3794 000C0594  41 82 00 8C */	beq lbl_800C3820
/* 800C3798 000C0598  81 0D 91 C8 */	lwz r8, lbl_803CBAC8-_SDA_BASE_(r13)
/* 800C379C 000C059C  3C E0 80 3C */	lis r7, file_queue@ha
/* 800C37A0 000C05A0  1D 3F 00 1C */	mulli r9, r31, 0x1c
/* 800C37A4 000C05A4  38 60 00 00 */	li r3, 0
/* 800C37A8 000C05A8  38 08 00 01 */	addi r0, r8, 1
/* 800C37AC 000C05AC  90 0D 91 C8 */	stw r0, lbl_803CBAC8-_SDA_BASE_(r13)
/* 800C37B0 000C05B0  38 E7 35 F0 */	addi r7, r7, file_queue@l
/* 800C37B4 000C05B4  55 1C 10 3A */	slwi r28, r8, 2
/* 800C37B8 000C05B8  7F C7 49 2E */	stwx r30, r7, r9
/* 800C37BC 000C05BC  7C E7 4A 14 */	add r7, r7, r9
/* 800C37C0 000C05C0  38 00 00 04 */	li r0, 4
/* 800C37C4 000C05C4  28 05 00 20 */	cmplwi r5, 0x20
/* 800C37C8 000C05C8  90 87 00 04 */	stw r4, 4(r7)
/* 800C37CC 000C05CC  7F BC FA 14 */	add r29, r28, r31
/* 800C37D0 000C05D0  39 00 00 20 */	li r8, 0x20
/* 800C37D4 000C05D4  90 A7 00 08 */	stw r5, 8(r7)
/* 800C37D8 000C05D8  90 67 00 0C */	stw r3, 0xc(r7)
/* 800C37DC 000C05DC  90 07 00 10 */	stw r0, 0x10(r7)
/* 800C37E0 000C05E0  90 C7 00 14 */	stw r6, 0x14(r7)
/* 800C37E4 000C05E4  93 A7 00 18 */	stw r29, 0x18(r7)
/* 800C37E8 000C05E8  40 80 00 0C */	bge lbl_800C37F4
/* 800C37EC 000C05EC  39 05 00 03 */	addi r8, r5, 3
/* 800C37F0 000C05F0  55 08 00 3A */	rlwinm r8, r8, 0, 0, 0x1d
lbl_800C37F4:
/* 800C37F4 000C05F4  93 FE 00 D4 */	stw r31, 0xd4(r30)
/* 800C37F8 000C05F8  3C 60 80 0C */	lis r3, lbl_800C35B0@ha
/* 800C37FC 000C05FC  38 E3 35 B0 */	addi r7, r3, lbl_800C35B0@l
/* 800C3800 000C0600  7D 05 43 78 */	mr r5, r8
/* 800C3804 000C0604  80 DE 01 0C */	lwz r6, 0x10c(r30)
/* 800C3808 000C0608  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 800C380C 000C060C  39 00 00 02 */	li r8, 2
/* 800C3810 000C0610  48 10 06 25 */	bl DVDReadAsyncPrio
/* 800C3814 000C0614  93 BE 00 E8 */	stw r29, 0xe8(r30)
/* 800C3818 000C0618  7C 7C FA 14 */	add r3, r28, r31
/* 800C381C 000C061C  48 00 00 14 */	b lbl_800C3830
lbl_800C3820:
/* 800C3820 000C0620  38 63 00 1C */	addi r3, r3, 0x1c
/* 800C3824 000C0624  3B FF 00 01 */	addi r31, r31, 1
/* 800C3828 000C0628  42 00 FF 5C */	bdnz lbl_800C3784
/* 800C382C 000C062C  38 60 FF FF */	li r3, -1
lbl_800C3830:
/* 800C3830 000C0630  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800C3834 000C0634  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800C3838 000C0638  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800C383C 000C063C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800C3840 000C0640  83 81 00 10 */	lwz r28, 0x10(r1)
/* 800C3844 000C0644  7C 08 03 A6 */	mtlr r0
/* 800C3848 000C0648  38 21 00 20 */	addi r1, r1, 0x20
/* 800C384C 000C064C  4E 80 00 20 */	blr 

.global iFileReadAsyncStatus__FiPi
iFileReadAsyncStatus__FiPi:
/* 800C3850 000C0650  54 60 07 BE */	clrlwi r0, r3, 0x1e
/* 800C3854 000C0654  3C A0 80 3C */	lis r5, file_queue@ha
/* 800C3858 000C0658  1C C0 00 1C */	mulli r6, r0, 0x1c
/* 800C385C 000C065C  38 05 35 F0 */	addi r0, r5, file_queue@l
/* 800C3860 000C0660  7C A0 32 14 */	add r5, r0, r6
/* 800C3864 000C0664  80 05 00 18 */	lwz r0, 0x18(r5)
/* 800C3868 000C0668  7C 03 00 40 */	cmplw r3, r0
/* 800C386C 000C066C  41 82 00 0C */	beq lbl_800C3878
/* 800C3870 000C0670  38 60 00 05 */	li r3, 5
/* 800C3874 000C0674  4E 80 00 20 */	blr 
lbl_800C3878:
/* 800C3878 000C0678  28 04 00 00 */	cmplwi r4, 0
/* 800C387C 000C067C  41 82 00 0C */	beq lbl_800C3888
/* 800C3880 000C0680  80 05 00 0C */	lwz r0, 0xc(r5)
/* 800C3884 000C0684  90 04 00 00 */	stw r0, 0(r4)
lbl_800C3888:
/* 800C3888 000C0688  3C 60 80 3C */	lis r3, file_queue@ha
/* 800C388C 000C068C  38 03 35 F0 */	addi r0, r3, file_queue@l
/* 800C3890 000C0690  7C 60 32 14 */	add r3, r0, r6
/* 800C3894 000C0694  80 63 00 10 */	lwz r3, 0x10(r3)
/* 800C3898 000C0698  4E 80 00 20 */	blr 

.global iFileClose__FP9tag_xFile
iFileClose__FP9tag_xFile:
/* 800C389C 000C069C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C38A0 000C06A0  7C 08 02 A6 */	mflr r0
/* 800C38A4 000C06A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C38A8 000C06A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C38AC 000C06AC  7C 7F 1B 78 */	mr r31, r3
/* 800C38B0 000C06B0  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 800C38B4 000C06B4  48 10 03 39 */	bl DVDClose
/* 800C38B8 000C06B8  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 800C38BC 000C06BC  48 10 03 31 */	bl DVDClose
/* 800C38C0 000C06C0  2C 03 00 00 */	cmpwi r3, 0
/* 800C38C4 000C06C4  40 82 00 0C */	bne lbl_800C38D0
/* 800C38C8 000C06C8  38 60 00 01 */	li r3, 1
/* 800C38CC 000C06CC  48 00 00 10 */	b lbl_800C38DC
lbl_800C38D0:
/* 800C38D0 000C06D0  38 00 00 00 */	li r0, 0
/* 800C38D4 000C06D4  38 60 00 00 */	li r3, 0
/* 800C38D8 000C06D8  90 1F 00 20 */	stw r0, 0x20(r31)
lbl_800C38DC:
/* 800C38DC 000C06DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C38E0 000C06E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C38E4 000C06E4  7C 08 03 A6 */	mtlr r0
/* 800C38E8 000C06E8  38 21 00 10 */	addi r1, r1, 0x10
/* 800C38EC 000C06EC  4E 80 00 20 */	blr 

.global iFileGetSize__FP9tag_xFile
iFileGetSize__FP9tag_xFile:
/* 800C38F0 000C06F0  80 63 00 DC */	lwz r3, 0xdc(r3)
/* 800C38F4 000C06F4  4E 80 00 20 */	blr 

.global iFileReadStop__Fv
iFileReadStop__Fv:
/* 800C38F8 000C06F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C38FC 000C06FC  7C 08 02 A6 */	mflr r0
/* 800C3900 000C0700  38 60 00 00 */	li r3, 0
/* 800C3904 000C0704  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C3908 000C0708  48 10 2D CD */	bl DVDCancelAllAsync
/* 800C390C 000C070C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C3910 000C0710  7C 08 03 A6 */	mtlr r0
/* 800C3914 000C0714  38 21 00 10 */	addi r1, r1, 0x10
/* 800C3918 000C0718  4E 80 00 20 */	blr 

.global iFileFullPath__FPCcPc
iFileFullPath__FPCcPc:
/* 800C391C 000C071C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C3920 000C0720  7C 08 02 A6 */	mflr r0
/* 800C3924 000C0724  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C3928 000C0728  7C 60 1B 78 */	mr r0, r3
/* 800C392C 000C072C  7C 83 23 78 */	mr r3, r4
/* 800C3930 000C0730  7C 04 03 78 */	mr r4, r0
/* 800C3934 000C0734  48 12 3D CD */	bl strcpy
/* 800C3938 000C0738  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C393C 000C073C  7C 08 03 A6 */	mtlr r0
/* 800C3940 000C0740  38 21 00 10 */	addi r1, r1, 0x10
/* 800C3944 000C0744  4E 80 00 20 */	blr 

.global iFileSetPath__FPc
iFileSetPath__FPc:
/* 800C3948 000C0748  4E 80 00 20 */	blr 

.global iFileFind__FPCcP9tag_xFile
iFileFind__FPCcP9tag_xFile:
/* 800C394C 000C074C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C3950 000C0750  7C 08 02 A6 */	mflr r0
/* 800C3954 000C0754  7C 85 23 78 */	mr r5, r4
/* 800C3958 000C0758  38 80 00 00 */	li r4, 0
/* 800C395C 000C075C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C3960 000C0760  4B FF FA 6D */	bl iFileOpen__FPCciP9tag_xFile
/* 800C3964 000C0764  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C3968 000C0768  7C 08 03 A6 */	mtlr r0
/* 800C396C 000C076C  38 21 00 10 */	addi r1, r1, 0x10
/* 800C3970 000C0770  4E 80 00 20 */	blr 

.global iFileGetInfo__FP9tag_xFilePUiPUi
iFileGetInfo__FP9tag_xFilePUiPUi:
/* 800C3974 000C0774  28 04 00 00 */	cmplwi r4, 0
/* 800C3978 000C0778  41 82 00 0C */	beq lbl_800C3984
/* 800C397C 000C077C  80 03 00 D8 */	lwz r0, 0xd8(r3)
/* 800C3980 000C0780  90 04 00 00 */	stw r0, 0(r4)
lbl_800C3984:
/* 800C3984 000C0784  28 05 00 00 */	cmplwi r5, 0
/* 800C3988 000C0788  4D 82 00 20 */	beqlr 
/* 800C398C 000C078C  80 03 00 DC */	lwz r0, 0xdc(r3)
/* 800C3990 000C0790  90 05 00 00 */	stw r0, 0(r5)
/* 800C3994 000C0794  4E 80 00 20 */	blr 

.section .bss
lbl_802FAE60:
	.skip 0x1020
