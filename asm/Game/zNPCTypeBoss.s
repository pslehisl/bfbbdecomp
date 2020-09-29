.include "macros.inc"

.section .text  # 0x8013612C - 0x801365C8

.global ZNPC_Boss_Startup__Fv
ZNPC_Boss_Startup__Fv:
/* 8013612C 00132F2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80136130 00132F30  7C 08 02 A6 */	mflr r0
/* 80136134 00132F34  3C 80 80 2A */	lis r4, g_strz_bossanim@ha
/* 80136138 00132F38  3C 60 80 2A */	lis r3, g_hash_bossanim@ha
/* 8013613C 00132F3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80136140 00132F40  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80136144 00132F44  3B E4 93 A0 */	addi r31, r4, g_strz_bossanim@l
/* 80136148 00132F48  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8013614C 00132F4C  3B C3 92 68 */	addi r30, r3, g_hash_bossanim@l
/* 80136150 00132F50  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80136154 00132F54  3B A0 00 00 */	li r29, 0
lbl_80136158:
/* 80136158 00132F58  80 7F 00 00 */	lwz r3, 0(r31)
/* 8013615C 00132F5C  4B F1 60 B9 */	bl xStrHash__FPCc
/* 80136160 00132F60  3B BD 00 01 */	addi r29, r29, 1
/* 80136164 00132F64  90 7E 00 00 */	stw r3, 0(r30)
/* 80136168 00132F68  2C 1D 00 4E */	cmpwi r29, 0x4e
/* 8013616C 00132F6C  3B FF 00 04 */	addi r31, r31, 4
/* 80136170 00132F70  3B DE 00 04 */	addi r30, r30, 4
/* 80136174 00132F74  41 80 FF E4 */	blt lbl_80136158
/* 80136178 00132F78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8013617C 00132F7C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80136180 00132F80  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80136184 00132F84  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80136188 00132F88  7C 08 03 A6 */	mtlr r0
/* 8013618C 00132F8C  38 21 00 20 */	addi r1, r1, 0x20
/* 80136190 00132F90  4E 80 00 20 */	blr 

.global ZNPC_Boss_Shutdown__Fv
ZNPC_Boss_Shutdown__Fv:
/* 80136194 00132F94  4E 80 00 20 */	blr 

.global zNPCBoss_ScenePrepare__Fv
zNPCBoss_ScenePrepare__Fv:
/* 80136198 00132F98  38 00 00 01 */	li r0, 1
/* 8013619C 00132F9C  90 0D 96 40 */	stw r0, lbl_803CBF40-_SDA_BASE_(r13)
/* 801361A0 00132FA0  4E 80 00 20 */	blr 

.global zNPCBoss_SceneFinish__Fv
zNPCBoss_SceneFinish__Fv:
/* 801361A4 00132FA4  38 00 00 00 */	li r0, 0
/* 801361A8 00132FA8  90 0D 96 40 */	stw r0, lbl_803CBF40-_SDA_BASE_(r13)
/* 801361AC 00132FAC  4E 80 00 20 */	blr 
/* 801361B0 00132FB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801361B4 00132FB4  7C 08 02 A6 */	mflr r0
/* 801361B8 00132FB8  3C C0 4E 54 */	lis r6, 0x4E544232@ha
/* 801361BC 00132FBC  7C 85 23 78 */	mr r5, r4
/* 801361C0 00132FC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801361C4 00132FC4  38 06 42 32 */	addi r0, r6, 0x4E544232@l
/* 801361C8 00132FC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801361CC 00132FCC  7C 7F 1B 78 */	mr r31, r3
/* 801361D0 00132FD0  7C 1F 00 00 */	cmpw r31, r0
/* 801361D4 00132FD4  41 82 00 80 */	beq lbl_80136254
/* 801361D8 00132FD8  40 80 00 18 */	bge lbl_801361F0
/* 801361DC 00132FDC  38 06 42 30 */	addi r0, r6, 0x4230
/* 801361E0 00132FE0  7C 1F 00 00 */	cmpw r31, r0
/* 801361E4 00132FE4  41 82 00 20 */	beq lbl_80136204
/* 801361E8 00132FE8  40 80 00 44 */	bge lbl_8013622C
/* 801361EC 00132FEC  48 00 00 E0 */	b lbl_801362CC
lbl_801361F0:
/* 801361F0 00132FF0  38 06 42 34 */	addi r0, r6, 0x4234
/* 801361F4 00132FF4  7C 1F 00 00 */	cmpw r31, r0
/* 801361F8 00132FF8  41 82 00 AC */	beq lbl_801362A4
/* 801361FC 00132FFC  40 80 00 D0 */	bge lbl_801362CC
/* 80136200 00133000  48 00 00 7C */	b lbl_8013627C
lbl_80136204:
/* 80136204 00133004  7F E4 FB 78 */	mr r4, r31
/* 80136208 00133008  38 60 0E 2C */	li r3, 0xe2c
/* 8013620C 0013300C  4B FD 8F 45 */	bl __nw__10RyzMemDataFUliP10RyzMemGrow
/* 80136210 00133010  7C 60 1B 79 */	or. r0, r3, r3
/* 80136214 00133014  41 82 00 10 */	beq lbl_80136224
/* 80136218 00133018  7F E4 FB 78 */	mr r4, r31
/* 8013621C 0013301C  48 00 02 FD */	bl __ct__10zNPCBSandyFi
/* 80136220 00133020  7C 60 1B 78 */	mr r0, r3
lbl_80136224:
/* 80136224 00133024  7C 03 03 78 */	mr r3, r0
/* 80136228 00133028  48 00 00 C8 */	b lbl_801362F0
lbl_8013622C:
/* 8013622C 0013302C  7F E4 FB 78 */	mr r4, r31
/* 80136230 00133030  38 60 19 88 */	li r3, 0x1988
/* 80136234 00133034  4B FD 8F 1D */	bl __nw__10RyzMemDataFUliP10RyzMemGrow
/* 80136238 00133038  7C 60 1B 79 */	or. r0, r3, r3
/* 8013623C 0013303C  41 82 00 10 */	beq lbl_8013624C
/* 80136240 00133040  7F E4 FB 78 */	mr r4, r31
/* 80136244 00133044  48 00 02 99 */	bl __ct__12zNPCBPatrickFi
/* 80136248 00133048  7C 60 1B 78 */	mr r0, r3
lbl_8013624C:
/* 8013624C 0013304C  7C 03 03 78 */	mr r3, r0
/* 80136250 00133050  48 00 00 A0 */	b lbl_801362F0
lbl_80136254:
/* 80136254 00133054  7F E4 FB 78 */	mr r4, r31
/* 80136258 00133058  38 60 04 AC */	li r3, 0x4ac
/* 8013625C 0013305C  4B FD 8E F5 */	bl __nw__10RyzMemDataFUliP10RyzMemGrow
/* 80136260 00133060  7C 60 1B 79 */	or. r0, r3, r3
/* 80136264 00133064  41 82 00 10 */	beq lbl_80136274
/* 80136268 00133068  7F E4 FB 78 */	mr r4, r31
/* 8013626C 0013306C  48 00 02 35 */	bl __ct__9zNPCB_SB1Fi
/* 80136270 00133070  7C 60 1B 78 */	mr r0, r3
lbl_80136274:
/* 80136274 00133074  7C 03 03 78 */	mr r3, r0
/* 80136278 00133078  48 00 00 78 */	b lbl_801362F0
lbl_8013627C:
/* 8013627C 0013307C  7F E4 FB 78 */	mr r4, r31
/* 80136280 00133080  38 60 1B 18 */	li r3, 0x1b18
/* 80136284 00133084  4B FD 8E CD */	bl __nw__10RyzMemDataFUliP10RyzMemGrow
/* 80136288 00133088  7C 60 1B 79 */	or. r0, r3, r3
/* 8013628C 0013308C  41 82 00 10 */	beq lbl_8013629C
/* 80136290 00133090  7F E4 FB 78 */	mr r4, r31
/* 80136294 00133094  48 00 02 F9 */	bl __ct__9zNPCB_SB2Fi
/* 80136298 00133098  7C 60 1B 78 */	mr r0, r3
lbl_8013629C:
/* 8013629C 0013309C  7C 03 03 78 */	mr r3, r0
/* 801362A0 001330A0  48 00 00 50 */	b lbl_801362F0
lbl_801362A4:
/* 801362A4 001330A4  7F E4 FB 78 */	mr r4, r31
/* 801362A8 001330A8  38 60 06 A8 */	li r3, 0x6a8
/* 801362AC 001330AC  4B FD 8E A5 */	bl __nw__10RyzMemDataFUliP10RyzMemGrow
/* 801362B0 001330B0  7C 60 1B 79 */	or. r0, r3, r3
/* 801362B4 001330B4  41 82 00 10 */	beq lbl_801362C4
/* 801362B8 001330B8  7F E4 FB 78 */	mr r4, r31
/* 801362BC 001330BC  48 03 35 BD */	bl __ct__13zNPCBPlanktonFi
/* 801362C0 001330C0  7C 60 1B 78 */	mr r0, r3
lbl_801362C4:
/* 801362C4 001330C4  7C 03 03 78 */	mr r3, r0
/* 801362C8 001330C8  48 00 00 28 */	b lbl_801362F0
lbl_801362CC:
/* 801362CC 001330CC  7F E4 FB 78 */	mr r4, r31
/* 801362D0 001330D0  38 60 02 B4 */	li r3, 0x2b4
/* 801362D4 001330D4  4B FD 8E 7D */	bl __nw__10RyzMemDataFUliP10RyzMemGrow
/* 801362D8 001330D8  7C 60 1B 79 */	or. r0, r3, r3
/* 801362DC 001330DC  41 82 00 10 */	beq lbl_801362EC
/* 801362E0 001330E0  7F E4 FB 78 */	mr r4, r31
/* 801362E4 001330E4  48 00 01 81 */	bl __ct__8zNPCBossFi
/* 801362E8 001330E8  7C 60 1B 78 */	mr r0, r3
lbl_801362EC:
/* 801362EC 001330EC  7C 03 03 78 */	mr r3, r0
lbl_801362F0:
/* 801362F0 001330F0  28 03 00 00 */	cmplwi r3, 0
/* 801362F4 001330F4  41 82 00 08 */	beq lbl_801362FC
/* 801362F8 001330F8  38 63 00 D0 */	addi r3, r3, 0xd0
lbl_801362FC:
/* 801362FC 001330FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80136300 00133100  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80136304 00133104  7C 08 03 A6 */	mtlr r0
/* 80136308 00133108  38 21 00 10 */	addi r1, r1, 0x10
/* 8013630C 0013310C  4E 80 00 20 */	blr 
/* 80136310 00133110  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80136314 00133114  7C 08 02 A6 */	mflr r0
/* 80136318 00133118  38 80 00 01 */	li r4, 1
/* 8013631C 0013311C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80136320 00133120  4B FA 2C 85 */	bl __dt__12xFactoryInstFv
/* 80136324 00133124  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80136328 00133128  7C 08 03 A6 */	mtlr r0
/* 8013632C 0013312C  38 21 00 10 */	addi r1, r1, 0x10
/* 80136330 00133130  4E 80 00 20 */	blr 
/* 80136334 00133134  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80136338 00133138  7C 08 02 A6 */	mflr r0
/* 8013633C 0013313C  3C 60 80 27 */	lis r3, lbl_8026CBB8@ha
/* 80136340 00133140  38 80 00 00 */	li r4, 0
/* 80136344 00133144  90 01 00 34 */	stw r0, 0x34(r1)
/* 80136348 00133148  38 63 CB B8 */	addi r3, r3, lbl_8026CBB8@l
/* 8013634C 0013314C  38 63 03 6D */	addi r3, r3, 0x36d
/* 80136350 00133150  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80136354 00133154  80 A2 A3 88 */	lwz r5, lbl_803CED08-_SDA2_BASE_(r2)
/* 80136358 00133158  80 02 A3 8C */	lwz r0, lbl_803CED0C-_SDA2_BASE_(r2)
/* 8013635C 0013315C  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80136360 00133160  38 A0 00 00 */	li r5, 0
/* 80136364 00133164  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80136368 00133168  4B ED 09 09 */	bl xAnimTableNew__FPCcPP10xAnimTableUi
/* 8013636C 0013316C  3C A0 80 00 */	lis r5, xAnimDefaultBeforeEnter__FP9xAnimPlayP10xAnimState@ha
/* 80136370 00133170  3C 80 80 2A */	lis r4, g_strz_bossanim@ha
/* 80136374 00133174  38 05 6C FC */	addi r0, r5, xAnimDefaultBeforeEnter__FP9xAnimPlayP10xAnimState@l
/* 80136378 00133178  7C 7F 1B 78 */	mr r31, r3
/* 8013637C 0013317C  90 01 00 08 */	stw r0, 8(r1)
/* 80136380 00133180  38 00 00 00 */	li r0, 0
/* 80136384 00133184  38 84 93 A0 */	addi r4, r4, g_strz_bossanim@l
/* 80136388 00133188  38 A0 00 10 */	li r5, 0x10
/* 8013638C 0013318C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80136390 00133190  38 C0 00 00 */	li r6, 0
/* 80136394 00133194  38 E0 00 00 */	li r7, 0
/* 80136398 00133198  39 00 00 00 */	li r8, 0
/* 8013639C 0013319C  90 01 00 10 */	stw r0, 0x10(r1)
/* 801363A0 001331A0  39 20 00 00 */	li r9, 0
/* 801363A4 001331A4  39 40 00 00 */	li r10, 0
/* 801363A8 001331A8  80 84 00 04 */	lwz r4, 4(r4)
/* 801363AC 001331AC  C0 22 A3 90 */	lfs f1, lbl_803CED10-_SDA2_BASE_(r2)
/* 801363B0 001331B0  C0 42 A3 94 */	lfs f2, lbl_803CED14-_SDA2_BASE_(r2)
/* 801363B4 001331B4  4B ED 09 A5 */	bl xAnimTableNewState__FP10xAnimTablePCcUiUifPfPffPUsPvPFP9xAnimPlayP10xAnimState_vPFP10xAnimStateP11xAnimSinglePv_vPFP9xAnimPlayP5xQuatP5xVec3i_v
/* 801363B8 001331B8  3C 60 80 2A */	lis r3, g_strz_bossanim@ha
/* 801363BC 001331BC  C0 22 A3 98 */	lfs f1, lbl_803CED18-_SDA2_BASE_(r2)
/* 801363C0 001331C0  38 83 93 A0 */	addi r4, r3, g_strz_bossanim@l
/* 801363C4 001331C4  38 A1 00 18 */	addi r5, r1, 0x18
/* 801363C8 001331C8  7F E3 FB 78 */	mr r3, r31
/* 801363CC 001331CC  38 C0 00 01 */	li r6, 1
/* 801363D0 001331D0  4B FB E0 29 */	bl NPCC_BuildStandardAnimTran__FP10xAnimTablePPcPiif
/* 801363D4 001331D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801363D8 001331D8  7F E3 FB 78 */	mr r3, r31
/* 801363DC 001331DC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801363E0 001331E0  7C 08 03 A6 */	mtlr r0
/* 801363E4 001331E4  38 21 00 30 */	addi r1, r1, 0x30
/* 801363E8 001331E8  4E 80 00 20 */	blr 

.global Setup__8zNPCBossFv
Setup__8zNPCBossFv:
/* 801363EC 001331EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801363F0 001331F0  7C 08 02 A6 */	mflr r0
/* 801363F4 001331F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801363F8 001331F8  4B FB 90 69 */	bl Setup__10zNPCCommonFv
/* 801363FC 001331FC  80 0D 96 40 */	lwz r0, lbl_803CBF40-_SDA_BASE_(r13)
/* 80136400 00133200  2C 00 00 00 */	cmpwi r0, 0
/* 80136404 00133204  41 82 00 10 */	beq lbl_80136414
/* 80136408 00133208  38 00 00 00 */	li r0, 0
/* 8013640C 0013320C  90 0D 96 40 */	stw r0, lbl_803CBF40-_SDA_BASE_(r13)
/* 80136410 00133210  48 00 00 15 */	bl BOSS_InitEffects__Fv
lbl_80136414:
/* 80136414 00133214  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80136418 00133218  7C 08 03 A6 */	mtlr r0
/* 8013641C 0013321C  38 21 00 10 */	addi r1, r1, 0x10
/* 80136420 00133220  4E 80 00 20 */	blr 

.global BOSS_InitEffects__Fv
BOSS_InitEffects__Fv:
/* 80136424 00133224  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80136428 00133228  7C 08 02 A6 */	mflr r0
/* 8013642C 0013322C  3C 60 80 27 */	lis r3, lbl_8026CBB8@ha
/* 80136430 00133230  38 63 CB B8 */	addi r3, r3, lbl_8026CBB8@l
/* 80136434 00133234  90 01 00 14 */	stw r0, 0x14(r1)
/* 80136438 00133238  38 63 03 7B */	addi r3, r3, 0x37b
/* 8013643C 0013323C  4B F7 24 09 */	bl zParEmitterFind__FPCc
/* 80136440 00133240  3C 80 80 32 */	lis r4, lbl_80324468@ha
/* 80136444 00133244  90 6D 96 44 */	stw r3, lbl_803CBF44-_SDA_BASE_(r13)
/* 80136448 00133248  38 64 44 68 */	addi r3, r4, lbl_80324468@l
/* 8013644C 0013324C  38 00 01 00 */	li r0, 0x100
/* 80136450 00133250  90 03 01 38 */	stw r0, 0x138(r3)
/* 80136454 00133254  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80136458 00133258  7C 08 03 A6 */	mtlr r0
/* 8013645C 0013325C  38 21 00 10 */	addi r1, r1, 0x10
/* 80136460 00133260  4E 80 00 20 */	blr 

.global __ct__8zNPCBossFi
__ct__8zNPCBossFi:
/* 80136464 00133264  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80136468 00133268  7C 08 02 A6 */	mflr r0
/* 8013646C 0013326C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80136470 00133270  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80136474 00133274  7C 7F 1B 78 */	mr r31, r3
/* 80136478 00133278  4B FB E1 7D */	bl __ct__10zNPCCommonFi
/* 8013647C 0013327C  3C 80 80 2A */	lis r4, __vt__8zNPCBoss@ha
/* 80136480 00133280  7F E3 FB 78 */	mr r3, r31
/* 80136484 00133284  38 04 94 D8 */	addi r0, r4, __vt__8zNPCBoss@l
/* 80136488 00133288  90 1F 01 B8 */	stw r0, 0x1b8(r31)
/* 8013648C 0013328C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80136490 00133290  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80136494 00133294  7C 08 03 A6 */	mtlr r0
/* 80136498 00133298  38 21 00 10 */	addi r1, r1, 0x10
/* 8013649C 0013329C  4E 80 00 20 */	blr 

.global __ct__9zNPCB_SB1Fi
__ct__9zNPCB_SB1Fi:
/* 801364A0 001332A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801364A4 001332A4  7C 08 02 A6 */	mflr r0
/* 801364A8 001332A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801364AC 001332AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801364B0 001332B0  7C 7F 1B 78 */	mr r31, r3
/* 801364B4 001332B4  4B FF FF B1 */	bl __ct__8zNPCBossFi
/* 801364B8 001332B8  3C 80 80 2A */	lis r4, __vt__9zNPCB_SB1@ha
/* 801364BC 001332BC  7F E3 FB 78 */	mr r3, r31
/* 801364C0 001332C0  38 04 A6 24 */	addi r0, r4, __vt__9zNPCB_SB1@l
/* 801364C4 001332C4  90 1F 01 B8 */	stw r0, 0x1b8(r31)
/* 801364C8 001332C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801364CC 001332CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801364D0 001332D0  7C 08 03 A6 */	mtlr r0
/* 801364D4 001332D4  38 21 00 10 */	addi r1, r1, 0x10
/* 801364D8 001332D8  4E 80 00 20 */	blr 

.global __ct__12zNPCBPatrickFi
__ct__12zNPCBPatrickFi:
/* 801364DC 001332DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801364E0 001332E0  7C 08 02 A6 */	mflr r0
/* 801364E4 001332E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801364E8 001332E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801364EC 001332EC  7C 7F 1B 78 */	mr r31, r3
/* 801364F0 001332F0  4B FF FF 75 */	bl __ct__8zNPCBossFi
/* 801364F4 001332F4  3C 80 80 2A */	lis r4, __vt__12zNPCBPatrick@ha
/* 801364F8 001332F8  7F E3 FB 78 */	mr r3, r31
/* 801364FC 001332FC  38 04 AE 54 */	addi r0, r4, __vt__12zNPCBPatrick@l
/* 80136500 00133300  90 1F 01 B8 */	stw r0, 0x1b8(r31)
/* 80136504 00133304  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80136508 00133308  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013650C 0013330C  7C 08 03 A6 */	mtlr r0
/* 80136510 00133310  38 21 00 10 */	addi r1, r1, 0x10
/* 80136514 00133314  4E 80 00 20 */	blr 

.global __ct__10zNPCBSandyFi
__ct__10zNPCBSandyFi:
/* 80136518 00133318  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013651C 0013331C  7C 08 02 A6 */	mflr r0
/* 80136520 00133320  90 01 00 14 */	stw r0, 0x14(r1)
/* 80136524 00133324  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80136528 00133328  7C 7F 1B 78 */	mr r31, r3
/* 8013652C 0013332C  4B FF FF 39 */	bl __ct__8zNPCBossFi
/* 80136530 00133330  3C 80 80 2A */	lis r4, __vt__10zNPCBSandy@ha
/* 80136534 00133334  7F E3 FB 78 */	mr r3, r31
/* 80136538 00133338  38 04 9C CC */	addi r0, r4, __vt__10zNPCBSandy@l
/* 8013653C 0013333C  90 1F 01 B8 */	stw r0, 0x1b8(r31)
/* 80136540 00133340  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80136544 00133344  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80136548 00133348  7C 08 03 A6 */	mtlr r0
/* 8013654C 0013334C  38 21 00 10 */	addi r1, r1, 0x10
/* 80136550 00133350  4E 80 00 20 */	blr 
/* 80136554 00133354  38 60 00 00 */	li r3, 0
/* 80136558 00133358  4E 80 00 20 */	blr 
/* 8013655C 0013335C  38 60 00 00 */	li r3, 0
/* 80136560 00133360  4E 80 00 20 */	blr 
/* 80136564 00133364  38 60 00 10 */	li r3, 0x10
/* 80136568 00133368  4E 80 00 20 */	blr 
/* 8013656C 0013336C  38 60 00 10 */	li r3, 0x10
/* 80136570 00133370  4E 80 00 20 */	blr 
/* 80136574 00133374  38 60 00 03 */	li r3, 3
/* 80136578 00133378  4E 80 00 20 */	blr 
/* 8013657C 0013337C  C0 22 A3 9C */	lfs f1, lbl_803CED1C-_SDA2_BASE_(r2)
/* 80136580 00133380  4E 80 00 20 */	blr 
/* 80136584 00133384  4E 80 00 20 */	blr 
/* 80136588 00133388  4E 80 00 20 */	blr 

.global __ct__9zNPCB_SB2Fi
__ct__9zNPCB_SB2Fi:
/* 8013658C 0013338C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80136590 00133390  7C 08 02 A6 */	mflr r0
/* 80136594 00133394  90 01 00 14 */	stw r0, 0x14(r1)
/* 80136598 00133398  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013659C 0013339C  7C 7F 1B 78 */	mr r31, r3
/* 801365A0 001333A0  4B FF FE C5 */	bl __ct__8zNPCBossFi
/* 801365A4 001333A4  3C 80 80 2A */	lis r4, __vt__9zNPCB_SB2@ha
/* 801365A8 001333A8  7F E3 FB 78 */	mr r3, r31
/* 801365AC 001333AC  38 04 A9 8C */	addi r0, r4, __vt__9zNPCB_SB2@l
/* 801365B0 001333B0  90 1F 01 B8 */	stw r0, 0x1b8(r31)
/* 801365B4 001333B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801365B8 001333B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801365BC 001333BC  7C 08 03 A6 */	mtlr r0
/* 801365C0 001333C0  38 21 00 10 */	addi r1, r1, 0x10
/* 801365C4 001333C4  4E 80 00 20 */	blr 
.section .rodata
lbl_8026CBB8:
	.incbin "baserom.dol", 0x269B98, 0x390

.section .bss
lbl_80324468:
	.skip 0x170
