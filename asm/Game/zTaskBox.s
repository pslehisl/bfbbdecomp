.include "macros.inc"

.section .text  # 0x8013499C - 0x801352A4

.global load__8ztaskboxFRCQ28ztaskbox10asset_type
load__8ztaskboxFRCQ28ztaskbox10asset_type:
/* 8013499C 0013179C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801349A0 001317A0  7C 08 02 A6 */	mflr r0
/* 801349A4 001317A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801349A8 001317A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801349AC 001317AC  7C 9F 23 78 */	mr r31, r4
/* 801349B0 001317B0  93 C1 00 08 */	stw r30, 8(r1)
/* 801349B4 001317B4  7C 7E 1B 78 */	mr r30, r3
/* 801349B8 001317B8  4B ED 4A 49 */	bl xBaseInit__FP5xBaseP10xBaseAsset
/* 801349BC 001317BC  38 00 00 35 */	li r0, 0x35
/* 801349C0 001317C0  3C 60 80 13 */	lis r3, lbl_801351A4@ha
/* 801349C4 001317C4  98 1E 00 04 */	stb r0, 4(r30)
/* 801349C8 001317C8  38 03 51 A4 */	addi r0, r3, lbl_801351A4@l
/* 801349CC 001317CC  93 FE 00 14 */	stw r31, 0x14(r30)
/* 801349D0 001317D0  90 1E 00 0C */	stw r0, 0xc(r30)
/* 801349D4 001317D4  88 1E 00 05 */	lbz r0, 5(r30)
/* 801349D8 001317D8  28 00 00 00 */	cmplwi r0, 0
/* 801349DC 001317DC  41 82 00 0C */	beq lbl_801349E8
/* 801349E0 001317E0  38 1F 00 34 */	addi r0, r31, 0x34
/* 801349E4 001317E4  90 1E 00 08 */	stw r0, 8(r30)
lbl_801349E8:
/* 801349E8 001317E8  88 1F 00 12 */	lbz r0, 0x12(r31)
/* 801349EC 001317EC  38 60 FF FF */	li r3, -1
/* 801349F0 001317F0  90 7E 00 18 */	stw r3, 0x18(r30)
/* 801349F4 001317F4  28 00 00 00 */	cmplwi r0, 0
/* 801349F8 001317F8  41 82 00 20 */	beq lbl_80134A18
/* 801349FC 001317FC  38 00 00 01 */	li r0, 1
/* 80134A00 00131800  7F C3 F3 78 */	mr r3, r30
/* 80134A04 00131804  98 1E 00 10 */	stb r0, 0x10(r30)
/* 80134A08 00131808  38 80 00 00 */	li r4, 0
/* 80134A0C 0013180C  48 00 05 39 */	bl set_state__8ztaskboxFQ28ztaskbox10state_enum
/* 80134A10 00131810  93 DE 00 20 */	stw r30, 0x20(r30)
/* 80134A14 00131814  48 00 00 10 */	b lbl_80134A24
lbl_80134A18:
/* 80134A18 00131818  38 00 00 00 */	li r0, 0
/* 80134A1C 0013181C  98 1E 00 10 */	stb r0, 0x10(r30)
/* 80134A20 00131820  90 1E 00 20 */	stw r0, 0x20(r30)
lbl_80134A24:
/* 80134A24 00131824  88 1F 00 10 */	lbz r0, 0x10(r31)
/* 80134A28 00131828  28 00 00 00 */	cmplwi r0, 0
/* 80134A2C 0013182C  41 82 00 10 */	beq lbl_80134A3C
/* 80134A30 00131830  A0 1E 00 06 */	lhz r0, 6(r30)
/* 80134A34 00131834  60 00 00 02 */	ori r0, r0, 2
/* 80134A38 00131838  B0 1E 00 06 */	sth r0, 6(r30)
lbl_80134A3C:
/* 80134A3C 0013183C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80134A40 00131840  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80134A44 00131844  83 C1 00 08 */	lwz r30, 8(r1)
/* 80134A48 00131848  7C 08 03 A6 */	mtlr r0
/* 80134A4C 0013184C  38 21 00 10 */	addi r1, r1, 0x10
/* 80134A50 00131850  4E 80 00 20 */	blr 

.global read__8ztaskboxFR7xSerial
read__8ztaskboxFR7xSerial:
/* 80134A54 00131854  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80134A58 00131858  7C 08 02 A6 */	mflr r0
/* 80134A5C 0013185C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80134A60 00131860  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80134A64 00131864  7C 7F 1B 78 */	mr r31, r3
/* 80134A68 00131868  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80134A6C 0013186C  7C 83 23 78 */	mr r3, r4
/* 80134A70 00131870  38 81 00 08 */	addi r4, r1, 8
/* 80134A74 00131874  98 01 00 08 */	stb r0, 8(r1)
/* 80134A78 00131878  4B F0 E8 85 */	bl Read__7xSerialFPUc
/* 80134A7C 0013187C  88 81 00 08 */	lbz r4, 8(r1)
/* 80134A80 00131880  7F E3 FB 78 */	mr r3, r31
/* 80134A84 00131884  48 00 04 C1 */	bl set_state__8ztaskboxFQ28ztaskbox10state_enum
/* 80134A88 00131888  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80134A8C 0013188C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80134A90 00131890  7C 08 03 A6 */	mtlr r0
/* 80134A94 00131894  38 21 00 20 */	addi r1, r1, 0x20
/* 80134A98 00131898  4E 80 00 20 */	blr 

.global write__8ztaskboxFR7xSerial
write__8ztaskboxFR7xSerial:
/* 80134A9C 0013189C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80134AA0 001318A0  7C 08 02 A6 */	mflr r0
/* 80134AA4 001318A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80134AA8 001318A8  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80134AAC 001318AC  7C 83 23 78 */	mr r3, r4
/* 80134AB0 001318B0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80134AB4 001318B4  4B F0 E5 B9 */	bl Write__7xSerialFUc
/* 80134AB8 001318B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80134ABC 001318BC  7C 08 03 A6 */	mtlr r0
/* 80134AC0 001318C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80134AC4 001318C4  4E 80 00 20 */	blr 

.global start_talk__8ztaskboxFP10zNPCCommon
start_talk__8ztaskboxFP10zNPCCommon:
/* 80134AC8 001318C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80134ACC 001318CC  7C 08 02 A6 */	mflr r0
/* 80134AD0 001318D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80134AD4 001318D4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80134AD8 001318D8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80134ADC 001318DC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80134AE0 001318E0  7C 9D 23 78 */	mr r29, r4
/* 80134AE4 001318E4  93 81 00 10 */	stw r28, 0x10(r1)
/* 80134AE8 001318E8  7C 7C 1B 78 */	mr r28, r3
/* 80134AEC 001318EC  80 63 00 20 */	lwz r3, 0x20(r3)
/* 80134AF0 001318F0  28 03 00 00 */	cmplwi r3, 0
/* 80134AF4 001318F4  41 82 00 B0 */	beq lbl_80134BA4
/* 80134AF8 001318F8  7C 03 E0 40 */	cmplw r3, r28
/* 80134AFC 001318FC  41 82 00 1C */	beq lbl_80134B18
/* 80134B00 00131900  80 9C 00 1C */	lwz r4, 0x1c(r28)
/* 80134B04 00131904  48 00 03 35 */	bl set_callback__8ztaskboxFPQ28ztaskbox8callback
/* 80134B08 00131908  80 7C 00 20 */	lwz r3, 0x20(r28)
/* 80134B0C 0013190C  38 80 00 00 */	li r4, 0
/* 80134B10 00131910  4B FF FF B9 */	bl start_talk__8ztaskboxFP10zNPCCommon
/* 80134B14 00131914  48 00 00 90 */	b lbl_80134BA4
lbl_80134B18:
/* 80134B18 00131918  88 1C 00 10 */	lbz r0, 0x10(r28)
/* 80134B1C 0013191C  28 00 00 00 */	cmplwi r0, 0
/* 80134B20 00131920  41 82 00 84 */	beq lbl_80134BA4
/* 80134B24 00131924  80 1C 00 18 */	lwz r0, 0x18(r28)
/* 80134B28 00131928  2C 00 FF FF */	cmpwi r0, -1
/* 80134B2C 0013192C  40 82 00 08 */	bne lbl_80134B34
/* 80134B30 00131930  48 00 00 74 */	b lbl_80134BA4
lbl_80134B34:
/* 80134B34 00131934  80 6D 96 24 */	lwz r3, lbl_803CBF24-_SDA_BASE_(r13)
/* 80134B38 00131938  28 03 00 00 */	cmplwi r3, 0
/* 80134B3C 0013193C  41 82 00 10 */	beq lbl_80134B4C
/* 80134B40 00131940  7C 03 E0 40 */	cmplw r3, r28
/* 80134B44 00131944  41 82 00 08 */	beq lbl_80134B4C
/* 80134B48 00131948  48 00 00 8D */	bl stop_talk__8ztaskboxFv
lbl_80134B4C:
/* 80134B4C 0013194C  80 7C 00 14 */	lwz r3, 0x14(r28)
/* 80134B50 00131950  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80134B54 00131954  4B F7 FE E9 */	bl zSceneFindObject__FUi
/* 80134B58 00131958  7C 7F 1B 79 */	or. r31, r3, r3
/* 80134B5C 0013195C  41 82 00 48 */	beq lbl_80134BA4
/* 80134B60 00131960  80 1C 00 18 */	lwz r0, 0x18(r28)
/* 80134B64 00131964  80 7C 00 14 */	lwz r3, 0x14(r28)
/* 80134B68 00131968  54 00 10 3A */	slwi r0, r0, 2
/* 80134B6C 0013196C  7C 63 02 14 */	add r3, r3, r0
/* 80134B70 00131970  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80134B74 00131974  48 00 05 B1 */	bl get_text__8ztaskboxFUi
/* 80134B78 00131978  7C 7E 1B 79 */	or. r30, r3, r3
/* 80134B7C 0013197C  41 82 00 28 */	beq lbl_80134BA4
/* 80134B80 00131980  93 8D 96 24 */	stw r28, lbl_803CBF24-_SDA_BASE_(r13)
/* 80134B84 00131984  7F 84 E3 78 */	mr r4, r28
/* 80134B88 00131988  80 6D 96 20 */	lwz r3, tcb__8ztaskbox-_SDA_BASE_(r13)
/* 80134B8C 0013198C  48 00 00 39 */	bl reset__Q28ztaskbox13talk_callbackFR8ztaskbox
/* 80134B90 00131990  80 AD 96 20 */	lwz r5, tcb__8ztaskbox-_SDA_BASE_(r13)
/* 80134B94 00131994  7F E3 FB 78 */	mr r3, r31
/* 80134B98 00131998  7F C4 F3 78 */	mr r4, r30
/* 80134B9C 0013199C  7F A6 EB 78 */	mr r6, r29
/* 80134BA0 001319A0  4B FF DC F1 */	bl start_talk__8ztalkboxFPCcPQ28ztalkbox8callbackP10zNPCCommon
lbl_80134BA4:
/* 80134BA4 001319A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80134BA8 001319A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80134BAC 001319AC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80134BB0 001319B0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80134BB4 001319B4  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80134BB8 001319B8  7C 08 03 A6 */	mtlr r0
/* 80134BBC 001319BC  38 21 00 20 */	addi r1, r1, 0x20
/* 80134BC0 001319C0  4E 80 00 20 */	blr 

.global reset__Q28ztaskbox13talk_callbackFR8ztaskbox
reset__Q28ztaskbox13talk_callbackFR8ztaskbox:
/* 80134BC4 001319C4  90 83 00 04 */	stw r4, 4(r3)
/* 80134BC8 001319C8  38 00 00 00 */	li r0, 0
/* 80134BCC 001319CC  90 03 00 08 */	stw r0, 8(r3)
/* 80134BD0 001319D0  4E 80 00 20 */	blr 

.global stop_talk__8ztaskboxFv
stop_talk__8ztaskboxFv:
/* 80134BD4 001319D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80134BD8 001319D8  7C 08 02 A6 */	mflr r0
/* 80134BDC 001319DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80134BE0 001319E0  80 03 00 20 */	lwz r0, 0x20(r3)
/* 80134BE4 001319E4  28 00 00 00 */	cmplwi r0, 0
/* 80134BE8 001319E8  41 82 00 60 */	beq lbl_80134C48
/* 80134BEC 001319EC  7C 00 18 40 */	cmplw r0, r3
/* 80134BF0 001319F0  41 82 00 10 */	beq lbl_80134C00
/* 80134BF4 001319F4  7C 03 03 78 */	mr r3, r0
/* 80134BF8 001319F8  4B FF FF DD */	bl stop_talk__8ztaskboxFv
/* 80134BFC 001319FC  48 00 00 4C */	b lbl_80134C48
lbl_80134C00:
/* 80134C00 00131A00  88 03 00 10 */	lbz r0, 0x10(r3)
/* 80134C04 00131A04  28 00 00 00 */	cmplwi r0, 0
/* 80134C08 00131A08  41 82 00 40 */	beq lbl_80134C48
/* 80134C0C 00131A0C  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80134C10 00131A10  2C 00 FF FF */	cmpwi r0, -1
/* 80134C14 00131A14  40 82 00 08 */	bne lbl_80134C1C
/* 80134C18 00131A18  48 00 00 30 */	b lbl_80134C48
lbl_80134C1C:
/* 80134C1C 00131A1C  80 0D 96 24 */	lwz r0, lbl_803CBF24-_SDA_BASE_(r13)
/* 80134C20 00131A20  7C 00 18 40 */	cmplw r0, r3
/* 80134C24 00131A24  40 82 00 24 */	bne lbl_80134C48
/* 80134C28 00131A28  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80134C2C 00131A2C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80134C30 00131A30  4B F7 FE 0D */	bl zSceneFindObject__FUi
/* 80134C34 00131A34  28 03 00 00 */	cmplwi r3, 0
/* 80134C38 00131A38  41 82 00 10 */	beq lbl_80134C48
/* 80134C3C 00131A3C  4B FF DE 55 */	bl stop_talk__8ztalkboxFv
/* 80134C40 00131A40  38 00 00 00 */	li r0, 0
/* 80134C44 00131A44  90 0D 96 24 */	stw r0, lbl_803CBF24-_SDA_BASE_(r13)
lbl_80134C48:
/* 80134C48 00131A48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80134C4C 00131A4C  7C 08 03 A6 */	mtlr r0
/* 80134C50 00131A50  38 21 00 10 */	addi r1, r1, 0x10
/* 80134C54 00131A54  4E 80 00 20 */	blr 

.global enable__8ztaskboxFv
enable__8ztaskboxFv:
/* 80134C58 00131A58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80134C5C 00131A5C  7C 08 02 A6 */	mflr r0
/* 80134C60 00131A60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80134C64 00131A64  88 03 00 10 */	lbz r0, 0x10(r3)
/* 80134C68 00131A68  28 00 00 00 */	cmplwi r0, 0
/* 80134C6C 00131A6C  40 82 00 14 */	bne lbl_80134C80
/* 80134C70 00131A70  38 00 00 01 */	li r0, 1
/* 80134C74 00131A74  38 80 00 00 */	li r4, 0
/* 80134C78 00131A78  98 03 00 10 */	stb r0, 0x10(r3)
/* 80134C7C 00131A7C  48 00 02 C9 */	bl set_state__8ztaskboxFQ28ztaskbox10state_enum
lbl_80134C80:
/* 80134C80 00131A80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80134C84 00131A84  7C 08 03 A6 */	mtlr r0
/* 80134C88 00131A88  38 21 00 10 */	addi r1, r1, 0x10
/* 80134C8C 00131A8C  4E 80 00 20 */	blr 

.global disable__8ztaskboxFv
disable__8ztaskboxFv:
/* 80134C90 00131A90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80134C94 00131A94  7C 08 02 A6 */	mflr r0
/* 80134C98 00131A98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80134C9C 00131A9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80134CA0 00131AA0  7C 7F 1B 78 */	mr r31, r3
/* 80134CA4 00131AA4  88 03 00 10 */	lbz r0, 0x10(r3)
/* 80134CA8 00131AA8  28 00 00 00 */	cmplwi r0, 0
/* 80134CAC 00131AAC  41 82 00 1C */	beq lbl_80134CC8
/* 80134CB0 00131AB0  4B FF FF 25 */	bl stop_talk__8ztaskboxFv
/* 80134CB4 00131AB4  38 00 00 00 */	li r0, 0
/* 80134CB8 00131AB8  7F E3 FB 78 */	mr r3, r31
/* 80134CBC 00131ABC  98 1F 00 10 */	stb r0, 0x10(r31)
/* 80134CC0 00131AC0  38 80 FF FF */	li r4, -1
/* 80134CC4 00131AC4  48 00 02 81 */	bl set_state__8ztaskboxFQ28ztaskbox10state_enum
lbl_80134CC8:
/* 80134CC8 00131AC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80134CCC 00131ACC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80134CD0 00131AD0  7C 08 03 A6 */	mtlr r0
/* 80134CD4 00131AD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80134CD8 00131AD8  4E 80 00 20 */	blr 

.global reset__8ztaskboxFv
reset__8ztaskboxFv:
/* 80134CDC 00131ADC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80134CE0 00131AE0  7C 08 02 A6 */	mflr r0
/* 80134CE4 00131AE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80134CE8 00131AE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80134CEC 00131AEC  7C 7F 1B 78 */	mr r31, r3
/* 80134CF0 00131AF0  4B FF FF A1 */	bl disable__8ztaskboxFv
/* 80134CF4 00131AF4  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80134CF8 00131AF8  88 03 00 12 */	lbz r0, 0x12(r3)
/* 80134CFC 00131AFC  28 00 00 00 */	cmplwi r0, 0
/* 80134D00 00131B00  41 82 00 0C */	beq lbl_80134D0C
/* 80134D04 00131B04  7F E3 FB 78 */	mr r3, r31
/* 80134D08 00131B08  4B FF FF 51 */	bl enable__8ztaskboxFv
lbl_80134D0C:
/* 80134D0C 00131B0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80134D10 00131B10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80134D14 00131B14  7C 08 03 A6 */	mtlr r0
/* 80134D18 00131B18  38 21 00 10 */	addi r1, r1, 0x10
/* 80134D1C 00131B1C  4E 80 00 20 */	blr 

.global initiate__8ztaskboxFv
initiate__8ztaskboxFv:
/* 80134D20 00131B20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80134D24 00131B24  7C 08 02 A6 */	mflr r0
/* 80134D28 00131B28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80134D2C 00131B2C  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80134D30 00131B30  2C 00 00 00 */	cmpwi r0, 0
/* 80134D34 00131B34  40 82 00 0C */	bne lbl_80134D40
/* 80134D38 00131B38  38 80 00 01 */	li r4, 1
/* 80134D3C 00131B3C  48 00 02 09 */	bl set_state__8ztaskboxFQ28ztaskbox10state_enum
lbl_80134D40:
/* 80134D40 00131B40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80134D44 00131B44  7C 08 03 A6 */	mtlr r0
/* 80134D48 00131B48  38 21 00 10 */	addi r1, r1, 0x10
/* 80134D4C 00131B4C  4E 80 00 20 */	blr 

.global succeed__8ztaskboxFv
succeed__8ztaskboxFv:
/* 80134D50 00131B50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80134D54 00131B54  7C 08 02 A6 */	mflr r0
/* 80134D58 00131B58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80134D5C 00131B5C  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80134D60 00131B60  2C 00 00 00 */	cmpwi r0, 0
/* 80134D64 00131B64  41 82 00 14 */	beq lbl_80134D78
/* 80134D68 00131B68  2C 00 00 01 */	cmpwi r0, 1
/* 80134D6C 00131B6C  41 82 00 0C */	beq lbl_80134D78
/* 80134D70 00131B70  2C 00 00 02 */	cmpwi r0, 2
/* 80134D74 00131B74  40 82 00 0C */	bne lbl_80134D80
lbl_80134D78:
/* 80134D78 00131B78  38 80 00 03 */	li r4, 3
/* 80134D7C 00131B7C  48 00 01 C9 */	bl set_state__8ztaskboxFQ28ztaskbox10state_enum
lbl_80134D80:
/* 80134D80 00131B80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80134D84 00131B84  7C 08 03 A6 */	mtlr r0
/* 80134D88 00131B88  38 21 00 10 */	addi r1, r1, 0x10
/* 80134D8C 00131B8C  4E 80 00 20 */	blr 

.global fail__8ztaskboxFv
fail__8ztaskboxFv:
/* 80134D90 00131B90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80134D94 00131B94  7C 08 02 A6 */	mflr r0
/* 80134D98 00131B98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80134D9C 00131B9C  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80134DA0 00131BA0  2C 00 00 00 */	cmpwi r0, 0
/* 80134DA4 00131BA4  41 82 00 14 */	beq lbl_80134DB8
/* 80134DA8 00131BA8  2C 00 00 01 */	cmpwi r0, 1
/* 80134DAC 00131BAC  41 82 00 0C */	beq lbl_80134DB8
/* 80134DB0 00131BB0  2C 00 00 02 */	cmpwi r0, 2
/* 80134DB4 00131BB4  40 82 00 0C */	bne lbl_80134DC0
lbl_80134DB8:
/* 80134DB8 00131BB8  38 80 00 04 */	li r4, 4
/* 80134DBC 00131BBC  48 00 01 89 */	bl set_state__8ztaskboxFQ28ztaskbox10state_enum
lbl_80134DC0:
/* 80134DC0 00131BC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80134DC4 00131BC4  7C 08 03 A6 */	mtlr r0
/* 80134DC8 00131BC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80134DCC 00131BCC  4E 80 00 20 */	blr 

.global complete__8ztaskboxFv
complete__8ztaskboxFv:
/* 80134DD0 00131BD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80134DD4 00131BD4  7C 08 02 A6 */	mflr r0
/* 80134DD8 00131BD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80134DDC 00131BDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80134DE0 00131BE0  7C 7F 1B 78 */	mr r31, r3
/* 80134DE4 00131BE4  88 03 00 10 */	lbz r0, 0x10(r3)
/* 80134DE8 00131BE8  28 00 00 00 */	cmplwi r0, 0
/* 80134DEC 00131BEC  41 82 00 38 */	beq lbl_80134E24
/* 80134DF0 00131BF0  38 80 FF FF */	li r4, -1
/* 80134DF4 00131BF4  38 00 00 00 */	li r0, 0
/* 80134DF8 00131BF8  90 9F 00 18 */	stw r4, 0x18(r31)
/* 80134DFC 00131BFC  7F E4 FB 78 */	mr r4, r31
/* 80134E00 00131C00  38 A0 01 70 */	li r5, 0x170
/* 80134E04 00131C04  98 1F 00 10 */	stb r0, 0x10(r31)
/* 80134E08 00131C08  4B EE A8 D9 */	bl zEntEvent__FP5xBaseP5xBaseUi
/* 80134E0C 00131C0C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80134E10 00131C10  80 63 00 18 */	lwz r3, 0x18(r3)
/* 80134E14 00131C14  4B F7 FC 29 */	bl zSceneFindObject__FUi
/* 80134E18 00131C18  90 7F 00 20 */	stw r3, 0x20(r31)
/* 80134E1C 00131C1C  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 80134E20 00131C20  28 00 00 00 */	cmplwi r0, 0
lbl_80134E24:
/* 80134E24 00131C24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80134E28 00131C28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80134E2C 00131C2C  7C 08 03 A6 */	mtlr r0
/* 80134E30 00131C30  38 21 00 10 */	addi r1, r1, 0x10
/* 80134E34 00131C34  4E 80 00 20 */	blr 

.global set_callback__8ztaskboxFPQ28ztaskbox8callback
set_callback__8ztaskboxFPQ28ztaskbox8callback:
/* 80134E38 00131C38  90 83 00 1C */	stw r4, 0x1c(r3)
/* 80134E3C 00131C3C  4E 80 00 20 */	blr 

.global init__8ztaskboxFv
init__8ztaskboxFv:
/* 80134E40 00131C40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80134E44 00131C44  7C 08 02 A6 */	mflr r0
/* 80134E48 00131C48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80134E4C 00131C4C  38 00 00 00 */	li r0, 0
/* 80134E50 00131C50  90 0D 96 24 */	stw r0, lbl_803CBF24-_SDA_BASE_(r13)
/* 80134E54 00131C54  88 0D 96 28 */	lbz r0, lbl_803CBF28-_SDA_BASE_(r13)
/* 80134E58 00131C58  7C 00 07 75 */	extsb. r0, r0
/* 80134E5C 00131C5C  40 82 00 18 */	bne lbl_80134E74
/* 80134E60 00131C60  3C 60 80 32 */	lis r3, lbl_803242E8@ha
/* 80134E64 00131C64  38 63 42 E8 */	addi r3, r3, lbl_803242E8@l
/* 80134E68 00131C68  48 00 00 29 */	bl __ct__Q28ztaskbox13talk_callbackFv
/* 80134E6C 00131C6C  38 00 00 01 */	li r0, 1
/* 80134E70 00131C70  98 0D 96 28 */	stb r0, lbl_803CBF28-_SDA_BASE_(r13)
lbl_80134E74:
/* 80134E74 00131C74  3C 60 80 32 */	lis r3, lbl_803242E8@ha
/* 80134E78 00131C78  38 03 42 E8 */	addi r0, r3, lbl_803242E8@l
/* 80134E7C 00131C7C  90 0D 96 20 */	stw r0, tcb__8ztaskbox-_SDA_BASE_(r13)
/* 80134E80 00131C80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80134E84 00131C84  7C 08 03 A6 */	mtlr r0
/* 80134E88 00131C88  38 21 00 10 */	addi r1, r1, 0x10
/* 80134E8C 00131C8C  4E 80 00 20 */	blr 

.global __ct__Q28ztaskbox13talk_callbackFv
__ct__Q28ztaskbox13talk_callbackFv:
/* 80134E90 00131C90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80134E94 00131C94  7C 08 02 A6 */	mflr r0
/* 80134E98 00131C98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80134E9C 00131C9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80134EA0 00131CA0  7C 7F 1B 78 */	mr r31, r3
/* 80134EA4 00131CA4  4B FE 77 C5 */	bl __ct__Q28ztalkbox8callbackFv
/* 80134EA8 00131CA8  3C 80 80 2A */	lis r4, lbl_80298FA0@ha
/* 80134EAC 00131CAC  7F E3 FB 78 */	mr r3, r31
/* 80134EB0 00131CB0  38 04 8F A0 */	addi r0, r4, lbl_80298FA0@l
/* 80134EB4 00131CB4  90 1F 00 00 */	stw r0, 0(r31)
/* 80134EB8 00131CB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80134EBC 00131CBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80134EC0 00131CC0  7C 08 03 A6 */	mtlr r0
/* 80134EC4 00131CC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80134EC8 00131CC8  4E 80 00 20 */	blr 
/* 80134ECC 00131CCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80134ED0 00131CD0  7C 08 02 A6 */	mflr r0
/* 80134ED4 00131CD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80134ED8 00131CD8  4B FF FA C5 */	bl load__8ztaskboxFRCQ28ztaskbox10asset_type
/* 80134EDC 00131CDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80134EE0 00131CE0  7C 08 03 A6 */	mtlr r0
/* 80134EE4 00131CE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80134EE8 00131CE8  4E 80 00 20 */	blr 

.global exists__8ztaskboxFQ28ztaskbox10state_enum
exists__8ztaskboxFQ28ztaskbox10state_enum:
/* 80134EEC 00131CEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80134EF0 00131CF0  7C 08 02 A6 */	mflr r0
/* 80134EF4 00131CF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80134EF8 00131CF8  54 80 10 3A */	slwi r0, r4, 2
/* 80134EFC 00131CFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80134F00 00131D00  3B E0 00 00 */	li r31, 0
/* 80134F04 00131D04  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80134F08 00131D08  7C 63 02 14 */	add r3, r3, r0
/* 80134F0C 00131D0C  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80134F10 00131D10  28 03 00 00 */	cmplwi r3, 0
/* 80134F14 00131D14  41 82 00 18 */	beq lbl_80134F2C
/* 80134F18 00131D18  38 80 00 00 */	li r4, 0
/* 80134F1C 00131D1C  4B F1 67 F1 */	bl xSTFindAsset__FUiPUi
/* 80134F20 00131D20  28 03 00 00 */	cmplwi r3, 0
/* 80134F24 00131D24  41 82 00 08 */	beq lbl_80134F2C
/* 80134F28 00131D28  3B E0 00 01 */	li r31, 1
lbl_80134F2C:
/* 80134F2C 00131D2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80134F30 00131D30  7F E3 FB 78 */	mr r3, r31
/* 80134F34 00131D34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80134F38 00131D38  7C 08 03 A6 */	mtlr r0
/* 80134F3C 00131D3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80134F40 00131D40  4E 80 00 20 */	blr 

.global set_state__8ztaskboxFQ28ztaskbox10state_enum
set_state__8ztaskboxFQ28ztaskbox10state_enum:
/* 80134F44 00131D44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80134F48 00131D48  7C 08 02 A6 */	mflr r0
/* 80134F4C 00131D4C  2C 04 00 01 */	cmpwi r4, 1
/* 80134F50 00131D50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80134F54 00131D54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80134F58 00131D58  7C 7F 1B 78 */	mr r31, r3
/* 80134F5C 00131D5C  90 83 00 18 */	stw r4, 0x18(r3)
/* 80134F60 00131D60  93 E3 00 20 */	stw r31, 0x20(r3)
/* 80134F64 00131D64  41 82 00 40 */	beq lbl_80134FA4
/* 80134F68 00131D68  40 80 00 10 */	bge lbl_80134F78
/* 80134F6C 00131D6C  2C 04 00 00 */	cmpwi r4, 0
/* 80134F70 00131D70  40 80 00 18 */	bge lbl_80134F88
/* 80134F74 00131D74  48 00 00 84 */	b lbl_80134FF8
lbl_80134F78:
/* 80134F78 00131D78  2C 04 00 05 */	cmpwi r4, 5
/* 80134F7C 00131D7C  41 82 00 60 */	beq lbl_80134FDC
/* 80134F80 00131D80  40 80 00 78 */	bge lbl_80134FF8
/* 80134F84 00131D84  48 00 00 3C */	b lbl_80134FC0
lbl_80134F88:
/* 80134F88 00131D88  4B FF FF 65 */	bl exists__8ztaskboxFQ28ztaskbox10state_enum
/* 80134F8C 00131D8C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80134F90 00131D90  40 82 00 70 */	bne lbl_80135000
/* 80134F94 00131D94  7F E3 FB 78 */	mr r3, r31
/* 80134F98 00131D98  38 80 00 01 */	li r4, 1
/* 80134F9C 00131D9C  4B FF FF A9 */	bl set_state__8ztaskboxFQ28ztaskbox10state_enum
/* 80134FA0 00131DA0  48 00 00 60 */	b lbl_80135000
lbl_80134FA4:
/* 80134FA4 00131DA4  4B FF FF 49 */	bl exists__8ztaskboxFQ28ztaskbox10state_enum
/* 80134FA8 00131DA8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80134FAC 00131DAC  40 82 00 54 */	bne lbl_80135000
/* 80134FB0 00131DB0  7F E3 FB 78 */	mr r3, r31
/* 80134FB4 00131DB4  38 80 00 02 */	li r4, 2
/* 80134FB8 00131DB8  4B FF FF 8D */	bl set_state__8ztaskboxFQ28ztaskbox10state_enum
/* 80134FBC 00131DBC  48 00 00 44 */	b lbl_80135000
lbl_80134FC0:
/* 80134FC0 00131DC0  4B FF FF 2D */	bl exists__8ztaskboxFQ28ztaskbox10state_enum
/* 80134FC4 00131DC4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80134FC8 00131DC8  40 82 00 38 */	bne lbl_80135000
/* 80134FCC 00131DCC  7F E3 FB 78 */	mr r3, r31
/* 80134FD0 00131DD0  38 80 00 05 */	li r4, 5
/* 80134FD4 00131DD4  4B FF FF 71 */	bl set_state__8ztaskboxFQ28ztaskbox10state_enum
/* 80134FD8 00131DD8  48 00 00 28 */	b lbl_80135000
lbl_80134FDC:
/* 80134FDC 00131DDC  4B FF FF 11 */	bl exists__8ztaskboxFQ28ztaskbox10state_enum
/* 80134FE0 00131DE0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80134FE4 00131DE4  40 82 00 1C */	bne lbl_80135000
/* 80134FE8 00131DE8  7F E3 FB 78 */	mr r3, r31
/* 80134FEC 00131DEC  38 80 FF FF */	li r4, -1
/* 80134FF0 00131DF0  4B FF FF 55 */	bl set_state__8ztaskboxFQ28ztaskbox10state_enum
/* 80134FF4 00131DF4  48 00 00 0C */	b lbl_80135000
lbl_80134FF8:
/* 80134FF8 00131DF8  7F E3 FB 78 */	mr r3, r31
/* 80134FFC 00131DFC  4B FF FD D5 */	bl complete__8ztaskboxFv
lbl_80135000:
/* 80135000 00131E00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80135004 00131E04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80135008 00131E08  7C 08 03 A6 */	mtlr r0
/* 8013500C 00131E0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80135010 00131E10  4E 80 00 20 */	blr 

.global on_talk_start__8ztaskboxFv
on_talk_start__8ztaskboxFv:
/* 80135014 00131E14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80135018 00131E18  7C 08 02 A6 */	mflr r0
/* 8013501C 00131E1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80135020 00131E20  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80135024 00131E24  28 03 00 00 */	cmplwi r3, 0
/* 80135028 00131E28  41 82 00 14 */	beq lbl_8013503C
/* 8013502C 00131E2C  81 83 00 00 */	lwz r12, 0(r3)
/* 80135030 00131E30  81 8C 00 08 */	lwz r12, 8(r12)
/* 80135034 00131E34  7D 89 03 A6 */	mtctr r12
/* 80135038 00131E38  4E 80 04 21 */	bctrl 
lbl_8013503C:
/* 8013503C 00131E3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80135040 00131E40  7C 08 03 A6 */	mtlr r0
/* 80135044 00131E44  38 21 00 10 */	addi r1, r1, 0x10
/* 80135048 00131E48  4E 80 00 20 */	blr 

.global on_talk_stop__8ztaskboxFQ28ztalkbox11answer_enum
on_talk_stop__8ztaskboxFQ28ztalkbox11answer_enum:
/* 8013504C 00131E4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80135050 00131E50  7C 08 02 A6 */	mflr r0
/* 80135054 00131E54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80135058 00131E58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013505C 00131E5C  7C 7F 1B 78 */	mr r31, r3
/* 80135060 00131E60  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80135064 00131E64  2C 00 00 03 */	cmpwi r0, 3
/* 80135068 00131E68  41 82 00 3C */	beq lbl_801350A4
/* 8013506C 00131E6C  40 80 00 1C */	bge lbl_80135088
/* 80135070 00131E70  2C 00 00 01 */	cmpwi r0, 1
/* 80135074 00131E74  41 82 00 24 */	beq lbl_80135098
/* 80135078 00131E78  40 80 00 7C */	bge lbl_801350F4
/* 8013507C 00131E7C  2C 00 00 00 */	cmpwi r0, 0
/* 80135080 00131E80  40 80 00 74 */	bge lbl_801350F4
/* 80135084 00131E84  48 00 00 54 */	b lbl_801350D8
lbl_80135088:
/* 80135088 00131E88  2C 00 00 05 */	cmpwi r0, 5
/* 8013508C 00131E8C  41 82 00 68 */	beq lbl_801350F4
/* 80135090 00131E90  40 80 00 48 */	bge lbl_801350D8
/* 80135094 00131E94  48 00 00 1C */	b lbl_801350B0
lbl_80135098:
/* 80135098 00131E98  38 80 00 02 */	li r4, 2
/* 8013509C 00131E9C  4B FF FE A9 */	bl set_state__8ztaskboxFQ28ztaskbox10state_enum
/* 801350A0 00131EA0  48 00 00 54 */	b lbl_801350F4
lbl_801350A4:
/* 801350A4 00131EA4  38 80 00 05 */	li r4, 5
/* 801350A8 00131EA8  4B FF FE 9D */	bl set_state__8ztaskboxFQ28ztaskbox10state_enum
/* 801350AC 00131EAC  48 00 00 48 */	b lbl_801350F4
lbl_801350B0:
/* 801350B0 00131EB0  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 801350B4 00131EB4  88 04 00 13 */	lbz r0, 0x13(r4)
/* 801350B8 00131EB8  28 00 00 00 */	cmplwi r0, 0
/* 801350BC 00131EBC  41 82 00 10 */	beq lbl_801350CC
/* 801350C0 00131EC0  38 80 00 01 */	li r4, 1
/* 801350C4 00131EC4  4B FF FE 81 */	bl set_state__8ztaskboxFQ28ztaskbox10state_enum
/* 801350C8 00131EC8  48 00 00 2C */	b lbl_801350F4
lbl_801350CC:
/* 801350CC 00131ECC  38 80 00 05 */	li r4, 5
/* 801350D0 00131ED0  4B FF FE 75 */	bl set_state__8ztaskboxFQ28ztaskbox10state_enum
/* 801350D4 00131ED4  48 00 00 20 */	b lbl_801350F4
lbl_801350D8:
/* 801350D8 00131ED8  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801350DC 00131EDC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 801350E0 00131EE0  28 00 00 00 */	cmplwi r0, 0
/* 801350E4 00131EE4  41 82 00 10 */	beq lbl_801350F4
/* 801350E8 00131EE8  7F E3 FB 78 */	mr r3, r31
/* 801350EC 00131EEC  38 80 00 00 */	li r4, 0
/* 801350F0 00131EF0  4B FF FE 55 */	bl set_state__8ztaskboxFQ28ztaskbox10state_enum
lbl_801350F4:
/* 801350F4 00131EF4  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801350F8 00131EF8  28 03 00 00 */	cmplwi r3, 0
/* 801350FC 00131EFC  41 82 00 14 */	beq lbl_80135110
/* 80135100 00131F00  81 83 00 00 */	lwz r12, 0(r3)
/* 80135104 00131F04  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80135108 00131F08  7D 89 03 A6 */	mtctr r12
/* 8013510C 00131F0C  4E 80 04 21 */	bctrl 
lbl_80135110:
/* 80135110 00131F10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80135114 00131F14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80135118 00131F18  7C 08 03 A6 */	mtlr r0
/* 8013511C 00131F1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80135120 00131F20  4E 80 00 20 */	blr 

.global get_text__8ztaskboxFUi
get_text__8ztaskboxFUi:
/* 80135124 00131F24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80135128 00131F28  7C 08 02 A6 */	mflr r0
/* 8013512C 00131F2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80135130 00131F30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80135134 00131F34  7C 7F 1B 78 */	mr r31, r3
/* 80135138 00131F38  4B F7 F9 05 */	bl zSceneFindObject__FUi
/* 8013513C 00131F3C  28 03 00 00 */	cmplwi r3, 0
/* 80135140 00131F40  41 82 00 20 */	beq lbl_80135160
/* 80135144 00131F44  88 03 00 04 */	lbz r0, 4(r3)
/* 80135148 00131F48  28 00 00 11 */	cmplwi r0, 0x11
/* 8013514C 00131F4C  41 82 00 0C */	beq lbl_80135158
/* 80135150 00131F50  38 60 00 00 */	li r3, 0
/* 80135154 00131F54  48 00 00 3C */	b lbl_80135190
lbl_80135158:
/* 80135158 00131F58  4B EF 7D D5 */	bl get_any__6xGroupFv
/* 8013515C 00131F5C  7C 7F 1B 78 */	mr r31, r3
lbl_80135160:
/* 80135160 00131F60  28 1F 00 00 */	cmplwi r31, 0
/* 80135164 00131F64  40 82 00 0C */	bne lbl_80135170
/* 80135168 00131F68  38 60 00 00 */	li r3, 0
/* 8013516C 00131F6C  48 00 00 24 */	b lbl_80135190
lbl_80135170:
/* 80135170 00131F70  7F E3 FB 78 */	mr r3, r31
/* 80135174 00131F74  38 80 00 00 */	li r4, 0
/* 80135178 00131F78  4B F1 65 95 */	bl xSTFindAsset__FUiPUi
/* 8013517C 00131F7C  28 03 00 00 */	cmplwi r3, 0
/* 80135180 00131F80  40 82 00 0C */	bne lbl_8013518C
/* 80135184 00131F84  38 60 00 00 */	li r3, 0
/* 80135188 00131F88  48 00 00 08 */	b lbl_80135190
lbl_8013518C:
/* 8013518C 00131F8C  38 63 00 04 */	addi r3, r3, 4
lbl_80135190:
/* 80135190 00131F90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80135194 00131F94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80135198 00131F98  7C 08 03 A6 */	mtlr r0
/* 8013519C 00131F9C  38 21 00 10 */	addi r1, r1, 0x10
/* 801351A0 00131FA0  4E 80 00 20 */	blr 
lbl_801351A4:
/* 801351A4 00131FA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801351A8 00131FA8  7C 08 02 A6 */	mflr r0
/* 801351AC 00131FAC  2C 05 01 6B */	cmpwi r5, 0x16b
/* 801351B0 00131FB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801351B4 00131FB4  41 82 00 64 */	beq lbl_80135218
/* 801351B8 00131FB8  40 80 00 28 */	bge lbl_801351E0
/* 801351BC 00131FBC  2C 05 01 4F */	cmpwi r5, 0x14f
/* 801351C0 00131FC0  41 82 00 3C */	beq lbl_801351FC
/* 801351C4 00131FC4  40 80 00 10 */	bge lbl_801351D4
/* 801351C8 00131FC8  2C 05 00 0A */	cmpwi r5, 0xa
/* 801351CC 00131FCC  41 82 00 24 */	beq lbl_801351F0
/* 801351D0 00131FD0  48 00 00 68 */	b lbl_80135238
lbl_801351D4:
/* 801351D4 00131FD4  2C 05 01 51 */	cmpwi r5, 0x151
/* 801351D8 00131FD8  40 80 00 60 */	bge lbl_80135238
/* 801351DC 00131FDC  48 00 00 30 */	b lbl_8013520C
lbl_801351E0:
/* 801351E0 00131FE0  2C 05 01 6D */	cmpwi r5, 0x16d
/* 801351E4 00131FE4  41 82 00 4C */	beq lbl_80135230
/* 801351E8 00131FE8  41 80 00 3C */	blt lbl_80135224
/* 801351EC 00131FEC  48 00 00 4C */	b lbl_80135238
lbl_801351F0:
/* 801351F0 00131FF0  7C 83 23 78 */	mr r3, r4
/* 801351F4 00131FF4  4B FF FA E9 */	bl reset__8ztaskboxFv
/* 801351F8 00131FF8  48 00 00 40 */	b lbl_80135238
lbl_801351FC:
/* 801351FC 00131FFC  7C 83 23 78 */	mr r3, r4
/* 80135200 00132000  38 80 00 00 */	li r4, 0
/* 80135204 00132004  4B FF F8 C5 */	bl start_talk__8ztaskboxFP10zNPCCommon
/* 80135208 00132008  48 00 00 30 */	b lbl_80135238
lbl_8013520C:
/* 8013520C 0013200C  7C 83 23 78 */	mr r3, r4
/* 80135210 00132010  4B FF F9 C5 */	bl stop_talk__8ztaskboxFv
/* 80135214 00132014  48 00 00 24 */	b lbl_80135238
lbl_80135218:
/* 80135218 00132018  7C 83 23 78 */	mr r3, r4
/* 8013521C 0013201C  4B FF FB 05 */	bl initiate__8ztaskboxFv
/* 80135220 00132020  48 00 00 18 */	b lbl_80135238
lbl_80135224:
/* 80135224 00132024  7C 83 23 78 */	mr r3, r4
/* 80135228 00132028  4B FF FB 29 */	bl succeed__8ztaskboxFv
/* 8013522C 0013202C  48 00 00 0C */	b lbl_80135238
lbl_80135230:
/* 80135230 00132030  7C 83 23 78 */	mr r3, r4
/* 80135234 00132034  4B FF FB 5D */	bl fail__8ztaskboxFv
lbl_80135238:
/* 80135238 00132038  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013523C 0013203C  38 60 00 01 */	li r3, 1
/* 80135240 00132040  7C 08 03 A6 */	mtlr r0
/* 80135244 00132044  38 21 00 10 */	addi r1, r1, 0x10
/* 80135248 00132048  4E 80 00 20 */	blr 
/* 8013524C 0013204C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80135250 00132050  7C 08 02 A6 */	mflr r0
/* 80135254 00132054  90 01 00 14 */	stw r0, 0x14(r1)
/* 80135258 00132058  80 63 00 04 */	lwz r3, 4(r3)
/* 8013525C 0013205C  4B FF FD B9 */	bl on_talk_start__8ztaskboxFv
/* 80135260 00132060  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80135264 00132064  7C 08 03 A6 */	mtlr r0
/* 80135268 00132068  38 21 00 10 */	addi r1, r1, 0x10
/* 8013526C 0013206C  4E 80 00 20 */	blr 
/* 80135270 00132070  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80135274 00132074  7C 08 02 A6 */	mflr r0
/* 80135278 00132078  7C 64 1B 78 */	mr r4, r3
/* 8013527C 0013207C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80135280 00132080  80 63 00 04 */	lwz r3, 4(r3)
/* 80135284 00132084  80 84 00 08 */	lwz r4, 8(r4)
/* 80135288 00132088  4B FF FD C5 */	bl on_talk_stop__8ztaskboxFQ28ztalkbox11answer_enum
/* 8013528C 0013208C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80135290 00132090  7C 08 03 A6 */	mtlr r0
/* 80135294 00132094  38 21 00 10 */	addi r1, r1, 0x10
/* 80135298 00132098  4E 80 00 20 */	blr 
/* 8013529C 0013209C  90 83 00 08 */	stw r4, 8(r3)
/* 801352A0 001320A0  4E 80 00 20 */	blr 
