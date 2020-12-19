.include "macros.inc"

.if 0

.section .text  # 0x80033554 - 0x80033E2C

.global xMemInit__Fv
xMemInit__Fv:
/* 80033558 00030358  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003355C 0003035C  7C 08 02 A6 */	mflr r0
/* 80033560 00030360  90 01 00 14 */	stw r0, 0x14(r1)
/* 80033564 00030364  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80033568 00030368  48 09 2D F9 */	bl iMemInit__Fv
/* 8003356C 0003036C  3C 60 80 39 */	lis r3, gMemInfo@ha
/* 80033570 00030370  3C C0 00 01 */	lis r6, 0x00008826@ha
/* 80033574 00030374  3B E3 C3 20 */	addi r31, r3, gMemInfo@l
/* 80033578 00030378  3C 80 80 39 */	lis r4, gxHeap@ha
/* 8003357C 0003037C  38 64 C5 E4 */	addi r3, r4, gxHeap@l
/* 80033580 00030380  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 80033584 00030384  80 BF 00 1C */	lwz r5, 0x1c(r31)
/* 80033588 00030388  38 C6 88 26 */	addi r6, r6, 0x00008826@l
/* 8003358C 0003038C  48 00 00 B1 */	bl xMemInitHeap__FP12xMemHeap_tagUiUiUi
/* 80033590 00030390  3C 60 80 39 */	lis r3, gxHeap@ha
/* 80033594 00030394  80 BF 00 1C */	lwz r5, 0x1c(r31)
/* 80033598 00030398  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8003359C 0003039C  38 63 C5 E4 */	addi r3, r3, gxHeap@l
/* 800335A0 000303A0  3C C0 00 01 */	lis r6, 0x00008925@ha
/* 800335A4 000303A4  38 63 00 DC */	addi r3, r3, 0xdc
/* 800335A8 000303A8  7C 80 2A 14 */	add r4, r0, r5
/* 800335AC 000303AC  38 C6 89 25 */	addi r6, r6, 0x00008925@l
/* 800335B0 000303B0  48 00 00 8D */	bl xMemInitHeap__FP12xMemHeap_tagUiUiUi
/* 800335B4 000303B4  3C 60 80 39 */	lis r3, gxHeap@ha
/* 800335B8 000303B8  80 BF 00 1C */	lwz r5, 0x1c(r31)
/* 800335BC 000303BC  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 800335C0 000303C0  38 63 C5 E4 */	addi r3, r3, gxHeap@l
/* 800335C4 000303C4  3C C0 00 01 */	lis r6, 0x0000892A@ha
/* 800335C8 000303C8  38 63 01 B8 */	addi r3, r3, 0x1b8
/* 800335CC 000303CC  7C 80 2A 14 */	add r4, r0, r5
/* 800335D0 000303D0  38 C6 89 2A */	addi r6, r6, 0x0000892A@l
/* 800335D4 000303D4  48 00 00 69 */	bl xMemInitHeap__FP12xMemHeap_tagUiUiUi
/* 800335D8 000303D8  3C 60 80 39 */	lis r3, gxHeap@ha
/* 800335DC 000303DC  38 A0 00 01 */	li r5, 1
/* 800335E0 000303E0  38 83 C5 E4 */	addi r4, r3, gxHeap@l
/* 800335E4 000303E4  38 60 00 02 */	li r3, 2
/* 800335E8 000303E8  38 00 00 00 */	li r0, 0
/* 800335EC 000303EC  B0 A4 00 0C */	sth r5, 0xc(r4)
/* 800335F0 000303F0  B0 64 00 0E */	sth r3, 0xe(r4)
/* 800335F4 000303F4  B0 04 00 E8 */	sth r0, 0xe8(r4)
/* 800335F8 000303F8  B0 64 00 EA */	sth r3, 0xea(r4)
/* 800335FC 000303FC  B0 04 01 C4 */	sth r0, 0x1c4(r4)
/* 80033600 00030400  B0 A4 01 C6 */	sth r5, 0x1c6(r4)
/* 80033604 00030404  90 0D 89 E0 */	stw r0, gActiveHeap-_SDA_BASE_(r13)
/* 80033608 00030408  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003360C 0003040C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80033610 00030410  7C 08 03 A6 */	mtlr r0
/* 80033614 00030414  38 21 00 10 */	addi r1, r1, 0x10
/* 80033618 00030418  4E 80 00 20 */	blr 

xMemGetBlockInfo__FP12xMemHeap_tagUiiP15xMemBlkInfo_tag:
/* 80033734 00030534  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80033738 00030538  38 00 00 01 */	li r0, 1
/* 8003373C 0003053C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80033740 00030540  93 C1 00 08 */	stw r30, 8(r1)
/* 80033744 00030544  81 63 00 00 */	lwz r11, 0(r3)
/* 80033748 00030548  A0 E3 00 D0 */	lhz r7, 0xd0(r3)
/* 8003374C 0003054C  55 69 05 EF */	rlwinm. r9, r11, 0, 0x17, 0x17
/* 80033750 00030550  54 E7 20 36 */	slwi r7, r7, 4
/* 80033754 00030554  38 E7 00 10 */	addi r7, r7, 0x10
/* 80033758 00030558  7C E3 3A 14 */	add r7, r3, r7
/* 8003375C 0003055C  41 82 00 08 */	beq lbl_80033764
/* 80033760 00030560  38 00 FF FF */	li r0, -1
lbl_80033764:
/* 80033764 00030564  55 68 8F FE */	rlwinm r8, r11, 0x11, 0x1f, 0x1f
/* 80033768 00030568  28 09 00 00 */	cmplwi r9, 0
/* 8003376C 0003056C  7D 28 00 D0 */	neg r9, r8
/* 80033770 00030570  39 00 00 0C */	li r8, 0xc
/* 80033774 00030574  7D 0A 48 38 */	and r10, r8, r9
/* 80033778 00030578  41 82 00 34 */	beq lbl_800337AC
/* 8003377C 0003057C  81 07 00 00 */	lwz r8, 0(r7)
/* 80033780 00030580  39 25 FF FF */	addi r9, r5, -1
/* 80033784 00030584  7D 8A 00 D0 */	neg r12, r10
/* 80033788 00030588  7C AA 40 50 */	subf r5, r10, r8
/* 8003378C 0003058C  7C A4 28 50 */	subf r5, r4, r5
/* 80033790 00030590  7D 25 28 38 */	and r5, r9, r5
/* 80033794 00030594  7C A4 2A 14 */	add r5, r4, r5
/* 80033798 00030598  7C AA 2A 14 */	add r5, r10, r5
/* 8003379C 0003059C  7F E5 00 D0 */	neg r31, r5
/* 800337A0 000305A0  7F DF 22 14 */	add r30, r31, r4
/* 800337A4 000305A4  7D 1F 00 D0 */	neg r8, r31
/* 800337A8 000305A8  48 00 00 30 */	b lbl_800337D8
lbl_800337AC:
/* 800337AC 000305AC  81 07 00 00 */	lwz r8, 0(r7)
/* 800337B0 000305B0  39 25 FF FF */	addi r9, r5, -1
/* 800337B4 000305B4  39 80 00 00 */	li r12, 0
/* 800337B8 000305B8  7D 08 52 14 */	add r8, r8, r10
/* 800337BC 000305BC  7D 28 40 39 */	and. r8, r9, r8
/* 800337C0 000305C0  40 82 00 08 */	bne lbl_800337C8
/* 800337C4 000305C4  7C A8 2B 78 */	mr r8, r5
lbl_800337C8:
/* 800337C8 000305C8  7C A5 52 14 */	add r5, r5, r10
/* 800337CC 000305CC  7F E8 28 50 */	subf r31, r8, r5
/* 800337D0 000305D0  7F DF 22 14 */	add r30, r31, r4
/* 800337D4 000305D4  7F C8 F3 78 */	mr r8, r30
lbl_800337D8:
/* 800337D8 000305D8  55 65 03 DF */	rlwinm. r5, r11, 0, 0xf, 0xf
/* 800337DC 000305DC  39 08 00 03 */	addi r8, r8, 3
/* 800337E0 000305E0  55 09 00 3A */	rlwinm r9, r8, 0, 0, 0x1d
/* 800337E4 000305E4  41 82 00 1C */	beq lbl_80033800
/* 800337E8 000305E8  A0 A7 00 04 */	lhz r5, 4(r7)
/* 800337EC 000305EC  81 03 00 D4 */	lwz r8, 0xd4(r3)
/* 800337F0 000305F0  1C 65 00 0C */	mulli r3, r5, 0xc
/* 800337F4 000305F4  7C 68 1A 14 */	add r3, r8, r3
/* 800337F8 000305F8  90 66 00 00 */	stw r3, 0(r6)
/* 800337FC 000305FC  48 00 00 10 */	b lbl_8003380C
lbl_80033800:
/* 80033800 00030600  80 67 00 00 */	lwz r3, 0(r7)
/* 80033804 00030604  7C 63 62 14 */	add r3, r3, r12
/* 80033808 00030608  90 66 00 00 */	stw r3, 0(r6)
lbl_8003380C:
/* 8003380C 0003060C  81 07 00 00 */	lwz r8, 0(r7)
/* 80033810 00030610  7C 8A 22 14 */	add r4, r10, r4
/* 80033814 00030614  7C A0 49 D6 */	mullw r5, r0, r9
/* 80033818 00030618  7D 23 4B 78 */	mr r3, r9
/* 8003381C 0003061C  7C 08 FA 14 */	add r0, r8, r31
/* 80033820 00030620  90 06 00 04 */	stw r0, 4(r6)
/* 80033824 00030624  7C 04 48 50 */	subf r0, r4, r9
/* 80033828 00030628  80 87 00 00 */	lwz r4, 0(r7)
/* 8003382C 0003062C  7C 84 FA 14 */	add r4, r4, r31
/* 80033830 00030630  90 86 00 08 */	stw r4, 8(r6)
/* 80033834 00030634  80 87 00 00 */	lwz r4, 0(r7)
/* 80033838 00030638  7C 84 F2 14 */	add r4, r4, r30
/* 8003383C 0003063C  90 86 00 0C */	stw r4, 0xc(r6)
/* 80033840 00030640  80 87 00 00 */	lwz r4, 0(r7)
/* 80033844 00030644  7C 84 2A 14 */	add r4, r4, r5
/* 80033848 00030648  90 86 00 10 */	stw r4, 0x10(r6)
/* 8003384C 0003064C  90 06 00 14 */	stw r0, 0x14(r6)
/* 80033850 00030650  91 26 00 18 */	stw r9, 0x18(r6)
/* 80033854 00030654  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80033858 00030658  83 C1 00 08 */	lwz r30, 8(r1)
/* 8003385C 0003065C  38 21 00 10 */	addi r1, r1, 0x10
/* 80033860 00030660  4E 80 00 20 */	blr 

.global xMemGrowAlloc__FUiUi
xMemGrowAlloc__FUiUi:
/* 80033864 00030664  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80033868 00030668  7C 08 02 A6 */	mflr r0
/* 8003386C 0003066C  1C A3 00 DC */	mulli r5, r3, 0xdc
/* 80033870 00030670  3C 60 80 39 */	lis r3, gxHeap@ha
/* 80033874 00030674  90 01 00 14 */	stw r0, 0x14(r1)
/* 80033878 00030678  38 84 00 03 */	addi r4, r4, 3
/* 8003387C 0003067C  38 03 C5 E4 */	addi r0, r3, gxHeap@l
/* 80033880 00030680  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80033884 00030684  7D 00 2A 14 */	add r8, r0, r5
/* 80033888 00030688  54 85 00 3A */	rlwinm r5, r4, 0, 0, 0x1d
/* 8003388C 0003068C  A0 08 00 D0 */	lhz r0, 0xd0(r8)
/* 80033890 00030690  81 28 00 D8 */	lwz r9, 0xd8(r8)
/* 80033894 00030694  54 03 20 36 */	slwi r3, r0, 4
/* 80033898 00030698  80 08 00 08 */	lwz r0, 8(r8)
/* 8003389C 0003069C  39 43 00 10 */	addi r10, r3, 0x10
/* 800338A0 000306A0  80 C9 00 04 */	lwz r6, 4(r9)
/* 800338A4 000306A4  7D 48 52 14 */	add r10, r8, r10
/* 800338A8 000306A8  7C 66 2A 14 */	add r3, r6, r5
/* 800338AC 000306AC  80 8A 00 08 */	lwz r4, 8(r10)
/* 800338B0 000306B0  7C E6 18 50 */	subf r7, r6, r3
/* 800338B4 000306B4  7C 64 3A 14 */	add r3, r4, r7
/* 800338B8 000306B8  7C 03 00 40 */	cmplw r3, r0
/* 800338BC 000306BC  40 81 00 0C */	ble lbl_800338C8
/* 800338C0 000306C0  38 60 00 00 */	li r3, 0
/* 800338C4 000306C4  48 00 00 68 */	b lbl_8003392C
lbl_800338C8:
/* 800338C8 000306C8  80 08 00 00 */	lwz r0, 0(r8)
/* 800338CC 000306CC  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 800338D0 000306D0  41 82 00 20 */	beq lbl_800338F0
/* 800338D4 000306D4  80 09 00 00 */	lwz r0, 0(r9)
/* 800338D8 000306D8  7F E5 00 50 */	subf r31, r5, r0
/* 800338DC 000306DC  93 E9 00 00 */	stw r31, 0(r9)
/* 800338E0 000306E0  80 0A 00 00 */	lwz r0, 0(r10)
/* 800338E4 000306E4  7C 07 00 50 */	subf r0, r7, r0
/* 800338E8 000306E8  90 0A 00 00 */	stw r0, 0(r10)
/* 800338EC 000306EC  48 00 00 18 */	b lbl_80033904
lbl_800338F0:
/* 800338F0 000306F0  80 0A 00 00 */	lwz r0, 0(r10)
/* 800338F4 000306F4  80 69 00 00 */	lwz r3, 0(r9)
/* 800338F8 000306F8  7C 00 3A 14 */	add r0, r0, r7
/* 800338FC 000306FC  90 0A 00 00 */	stw r0, 0(r10)
/* 80033900 00030700  7F E3 32 14 */	add r31, r3, r6
lbl_80033904:
/* 80033904 00030704  80 0A 00 08 */	lwz r0, 8(r10)
/* 80033908 00030708  7F E3 FB 78 */	mr r3, r31
/* 8003390C 0003070C  38 80 00 00 */	li r4, 0
/* 80033910 00030710  7C 00 3A 14 */	add r0, r0, r7
/* 80033914 00030714  90 0A 00 08 */	stw r0, 8(r10)
/* 80033918 00030718  80 09 00 04 */	lwz r0, 4(r9)
/* 8003391C 0003071C  7C 00 2A 14 */	add r0, r0, r5
/* 80033920 00030720  90 09 00 04 */	stw r0, 4(r9)
/* 80033924 00030724  4B FC FB 35 */	bl memset
/* 80033928 00030728  7F E3 FB 78 */	mr r3, r31
lbl_8003392C:
/* 8003392C 0003072C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80033930 00030730  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80033934 00030734  7C 08 03 A6 */	mtlr r0
/* 80033938 00030738  38 21 00 10 */	addi r1, r1, 0x10
/* 8003393C 0003073C  4E 80 00 20 */	blr 

.global xMemAlloc__FUiUii
xMemAlloc__FUiUii:
/* 80033940 00030740  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80033944 00030744  7C 08 02 A6 */	mflr r0
/* 80033948 00030748  1C E3 00 DC */	mulli r7, r3, 0xdc
/* 8003394C 0003074C  3C C0 80 39 */	lis r6, gxHeap@ha
/* 80033950 00030750  90 01 00 44 */	stw r0, 0x44(r1)
/* 80033954 00030754  38 60 00 01 */	li r3, 1
/* 80033958 00030758  38 06 C5 E4 */	addi r0, r6, gxHeap@l
/* 8003395C 0003075C  BF 61 00 2C */	stmw r27, 0x2c(r1)
/* 80033960 00030760  7F E0 3A 14 */	add r31, r0, r7
/* 80033964 00030764  7C 9C 23 78 */	mr r28, r4
/* 80033968 00030768  80 1F 00 00 */	lwz r0, 0(r31)
/* 8003396C 0003076C  A0 9F 00 D0 */	lhz r4, 0xd0(r31)
/* 80033970 00030770  54 00 BE FE */	rlwinm r0, r0, 0x17, 0x1b, 0x1f
/* 80033974 00030774  7C 7B 00 30 */	slw r27, r3, r0
/* 80033978 00030778  54 83 20 36 */	slwi r3, r4, 4
/* 8003397C 0003077C  7C 05 D8 00 */	cmpw r5, r27
/* 80033980 00030780  3B A3 00 10 */	addi r29, r3, 0x10
/* 80033984 00030784  7F BF EA 14 */	add r29, r31, r29
/* 80033988 00030788  40 81 00 08 */	ble lbl_80033990
/* 8003398C 0003078C  7C BB 2B 78 */	mr r27, r5
lbl_80033990:
/* 80033990 00030790  28 1C 00 00 */	cmplwi r28, 0
/* 80033994 00030794  40 82 00 10 */	bne lbl_800339A4
/* 80033998 00030798  3C 60 DE AE */	lis r3, 0xDEADBEEF@ha
/* 8003399C 0003079C  38 63 BE EF */	addi r3, r3, 0xDEADBEEF@l
/* 800339A0 000307A0  48 00 00 A4 */	b lbl_80033A44
lbl_800339A4:
/* 800339A4 000307A4  7F E3 FB 78 */	mr r3, r31
/* 800339A8 000307A8  7F 84 E3 78 */	mr r4, r28
/* 800339AC 000307AC  7F 65 DB 78 */	mr r5, r27
/* 800339B0 000307B0  38 C1 00 08 */	addi r6, r1, 8
/* 800339B4 000307B4  4B FF FD 81 */	bl xMemGetBlockInfo__FP12xMemHeap_tagUiiP15xMemBlkInfo_tag
/* 800339B8 000307B8  80 9D 00 08 */	lwz r4, 8(r29)
/* 800339BC 000307BC  80 1F 00 08 */	lwz r0, 8(r31)
/* 800339C0 000307C0  7C 84 1A 14 */	add r4, r4, r3
/* 800339C4 000307C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 800339C8 000307C8  7C 04 00 40 */	cmplw r4, r0
/* 800339CC 000307CC  40 81 00 0C */	ble lbl_800339D8
/* 800339D0 000307D0  38 60 00 00 */	li r3, 0
/* 800339D4 000307D4  48 00 00 70 */	b lbl_80033A44
lbl_800339D8:
/* 800339D8 000307D8  80 01 00 18 */	lwz r0, 0x18(r1)
/* 800339DC 000307DC  90 1D 00 00 */	stw r0, 0(r29)
/* 800339E0 000307E0  A0 9D 00 04 */	lhz r4, 4(r29)
/* 800339E4 000307E4  38 04 00 01 */	addi r0, r4, 1
/* 800339E8 000307E8  B0 1D 00 04 */	sth r0, 4(r29)
/* 800339EC 000307EC  80 1F 00 00 */	lwz r0, 0(r31)
/* 800339F0 000307F0  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 800339F4 000307F4  41 82 00 0C */	beq lbl_80033A00
/* 800339F8 000307F8  38 60 00 00 */	li r3, 0
/* 800339FC 000307FC  48 00 00 48 */	b lbl_80033A44
lbl_80033A00:
/* 80033A00 00030800  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80033A04 00030804  7F 85 E3 78 */	mr r5, r28
/* 80033A08 00030808  38 80 00 00 */	li r4, 0
/* 80033A0C 0003080C  90 1E 00 00 */	stw r0, 0(r30)
/* 80033A10 00030810  93 9E 00 04 */	stw r28, 4(r30)
/* 80033A14 00030814  93 7E 00 08 */	stw r27, 8(r30)
/* 80033A18 00030818  80 DD 00 08 */	lwz r6, 8(r29)
/* 80033A1C 0003081C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80033A20 00030820  7C 66 1A 14 */	add r3, r6, r3
/* 80033A24 00030824  90 7D 00 08 */	stw r3, 8(r29)
/* 80033A28 00030828  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 80033A2C 0003082C  7C 03 02 14 */	add r0, r3, r0
/* 80033A30 00030830  90 1D 00 0C */	stw r0, 0xc(r29)
/* 80033A34 00030834  80 7E 00 00 */	lwz r3, 0(r30)
/* 80033A38 00030838  4B FC FA 21 */	bl memset
/* 80033A3C 0003083C  93 DF 00 D8 */	stw r30, 0xd8(r31)
/* 80033A40 00030840  80 7E 00 00 */	lwz r3, 0(r30)
lbl_80033A44:
/* 80033A44 00030844  BB 61 00 2C */	lmw r27, 0x2c(r1)
/* 80033A48 00030848  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80033A4C 0003084C  7C 08 03 A6 */	mtlr r0
/* 80033A50 00030850  38 21 00 40 */	addi r1, r1, 0x40
/* 80033A54 00030854  4E 80 00 20 */	blr 

.global xMemPushTemp__FUi
xMemPushTemp__FUi:
/* 80033A58 00030858  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80033A5C 0003085C  7C 08 02 A6 */	mflr r0
/* 80033A60 00030860  90 01 00 14 */	stw r0, 0x14(r1)
/* 80033A64 00030864  80 8D 9F 7C */	lwz r4, RwEngineInstance-_SDA_BASE_(r13)
/* 80033A68 00030868  81 84 01 34 */	lwz r12, 0x134(r4)
/* 80033A6C 0003086C  7D 89 03 A6 */	mtctr r12
/* 80033A70 00030870  4E 80 04 21 */	bctrl 
/* 80033A74 00030874  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80033A78 00030878  7C 08 03 A6 */	mtlr r0
/* 80033A7C 0003087C  38 21 00 10 */	addi r1, r1, 0x10
/* 80033A80 00030880  4E 80 00 20 */	blr 

.global xMemPopTemp__FPv
xMemPopTemp__FPv:
/* 80033A84 00030884  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80033A88 00030888  7C 08 02 A6 */	mflr r0
/* 80033A8C 0003088C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80033A90 00030890  80 8D 9F 7C */	lwz r4, RwEngineInstance-_SDA_BASE_(r13)
/* 80033A94 00030894  81 84 01 38 */	lwz r12, 0x138(r4)
/* 80033A98 00030898  7D 89 03 A6 */	mtctr r12
/* 80033A9C 0003089C  4E 80 04 21 */	bctrl 
/* 80033AA0 000308A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80033AA4 000308A4  7C 08 03 A6 */	mtlr r0
/* 80033AA8 000308A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80033AAC 000308AC  4E 80 00 20 */	blr 

.global xMemPushBase__FUi
xMemPushBase__FUi:
/* 80033AB0 000308B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80033AB4 000308B4  7C 08 02 A6 */	mflr r0
/* 80033AB8 000308B8  1C 83 00 DC */	mulli r4, r3, 0xdc
/* 80033ABC 000308BC  3C 60 80 39 */	lis r3, gxHeap@ha
/* 80033AC0 000308C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80033AC4 000308C4  38 03 C5 E4 */	addi r0, r3, gxHeap@l
/* 80033AC8 000308C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80033ACC 000308CC  7F E0 22 14 */	add r31, r0, r4
/* 80033AD0 000308D0  A0 7F 00 D0 */	lhz r3, 0xd0(r31)
/* 80033AD4 000308D4  38 03 00 01 */	addi r0, r3, 1
/* 80033AD8 000308D8  B0 1F 00 D0 */	sth r0, 0xd0(r31)
/* 80033ADC 000308DC  A0 1F 00 D0 */	lhz r0, 0xd0(r31)
/* 80033AE0 000308E0  54 03 20 36 */	slwi r3, r0, 4
/* 80033AE4 000308E4  38 63 00 10 */	addi r3, r3, 0x10
/* 80033AE8 000308E8  7C 7F 1A 14 */	add r3, r31, r3
/* 80033AEC 000308EC  38 83 FF F0 */	addi r4, r3, -16
/* 80033AF0 000308F0  48 00 00 35 */	bl __as__14xHeapState_tagFRC14xHeapState_tag
/* 80033AF4 000308F4  81 8D 89 E4 */	lwz r12, sMemBaseNotifyFunc-_SDA_BASE_(r13)
/* 80033AF8 000308F8  28 0C 00 00 */	cmplwi r12, 0
/* 80033AFC 000308FC  41 82 00 0C */	beq lbl_80033B08
/* 80033B00 00030900  7D 89 03 A6 */	mtctr r12
/* 80033B04 00030904  4E 80 04 21 */	bctrl 
lbl_80033B08:
/* 80033B08 00030908  A0 7F 00 D0 */	lhz r3, 0xd0(r31)
/* 80033B0C 0003090C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80033B10 00030910  38 63 FF FF */	addi r3, r3, -1
/* 80033B14 00030914  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80033B18 00030918  7C 08 03 A6 */	mtlr r0
/* 80033B1C 0003091C  38 21 00 10 */	addi r1, r1, 0x10
/* 80033B20 00030920  4E 80 00 20 */	blr 

.global __as__14xHeapState_tagFRC14xHeapState_tag
__as__14xHeapState_tagFRC14xHeapState_tag:
/* 80033B24 00030924  80 04 00 00 */	lwz r0, 0(r4)
/* 80033B28 00030928  A0 A4 00 04 */	lhz r5, 4(r4)
/* 80033B2C 0003092C  90 03 00 00 */	stw r0, 0(r3)
/* 80033B30 00030930  A0 04 00 06 */	lhz r0, 6(r4)
/* 80033B34 00030934  B0 A3 00 04 */	sth r5, 4(r3)
/* 80033B38 00030938  80 A4 00 08 */	lwz r5, 8(r4)
/* 80033B3C 0003093C  B0 03 00 06 */	sth r0, 6(r3)
/* 80033B40 00030940  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80033B44 00030944  90 A3 00 08 */	stw r5, 8(r3)
/* 80033B48 00030948  90 03 00 0C */	stw r0, 0xc(r3)
/* 80033B4C 0003094C  4E 80 00 20 */	blr 

.global xMemPushBase__Fv
xMemPushBase__Fv:
/* 80033B50 00030950  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80033B54 00030954  7C 08 02 A6 */	mflr r0
/* 80033B58 00030958  90 01 00 14 */	stw r0, 0x14(r1)
/* 80033B5C 0003095C  80 6D 89 E0 */	lwz r3, gActiveHeap-_SDA_BASE_(r13)
/* 80033B60 00030960  4B FF FF 51 */	bl xMemPushBase__FUi
/* 80033B64 00030964  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80033B68 00030968  7C 08 03 A6 */	mtlr r0
/* 80033B6C 0003096C  38 21 00 10 */	addi r1, r1, 0x10
/* 80033B70 00030970  4E 80 00 20 */	blr 

.global xMemPopBase__FUii
xMemPopBase__FUii:
/* 80033B74 00030974  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80033B78 00030978  7C 08 02 A6 */	mflr r0
/* 80033B7C 0003097C  1C 63 00 DC */	mulli r3, r3, 0xdc
/* 80033B80 00030980  3C A0 80 39 */	lis r5, gxHeap@ha
/* 80033B84 00030984  90 01 00 14 */	stw r0, 0x14(r1)
/* 80033B88 00030988  2C 04 00 00 */	cmpwi r4, 0
/* 80033B8C 0003098C  38 05 C5 E4 */	addi r0, r5, gxHeap@l
/* 80033B90 00030990  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80033B94 00030994  7F E0 1A 14 */	add r31, r0, r3
/* 80033B98 00030998  40 80 00 0C */	bge lbl_80033BA4
/* 80033B9C 0003099C  A0 1F 00 D0 */	lhz r0, 0xd0(r31)
/* 80033BA0 000309A0  7C 80 22 14 */	add r4, r0, r4
lbl_80033BA4:
/* 80033BA4 000309A4  B0 9F 00 D0 */	sth r4, 0xd0(r31)
/* 80033BA8 000309A8  81 8D 89 E4 */	lwz r12, sMemBaseNotifyFunc-_SDA_BASE_(r13)
/* 80033BAC 000309AC  28 0C 00 00 */	cmplwi r12, 0
/* 80033BB0 000309B0  41 82 00 0C */	beq lbl_80033BBC
/* 80033BB4 000309B4  7D 89 03 A6 */	mtctr r12
/* 80033BB8 000309B8  4E 80 04 21 */	bctrl 
lbl_80033BBC:
/* 80033BBC 000309BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80033BC0 000309C0  A0 7F 00 D0 */	lhz r3, 0xd0(r31)
/* 80033BC4 000309C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80033BC8 000309C8  7C 08 03 A6 */	mtlr r0
/* 80033BCC 000309CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80033BD0 000309D0  4E 80 00 20 */	blr 

.global xMemPopBase__Fi
xMemPopBase__Fi:
/* 80033BD4 000309D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80033BD8 000309D8  7C 08 02 A6 */	mflr r0
/* 80033BDC 000309DC  7C 64 1B 78 */	mr r4, r3
/* 80033BE0 000309E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80033BE4 000309E4  80 6D 89 E0 */	lwz r3, gActiveHeap-_SDA_BASE_(r13)
/* 80033BE8 000309E8  4B FF FF 8D */	bl xMemPopBase__FUii
/* 80033BEC 000309EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80033BF0 000309F0  7C 08 03 A6 */	mtlr r0
/* 80033BF4 000309F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80033BF8 000309F8  4E 80 00 20 */	blr 

.global xMemGetBase__FUi
xMemGetBase__FUi:
/* 80033BFC 000309FC  1C 03 00 DC */	mulli r0, r3, 0xdc
/* 80033C00 00030A00  3C 60 80 39 */	lis r3, gxHeap@ha
/* 80033C04 00030A04  38 63 C5 E4 */	addi r3, r3, gxHeap@l
/* 80033C08 00030A08  7C 63 02 14 */	add r3, r3, r0
/* 80033C0C 00030A0C  A0 63 00 D0 */	lhz r3, 0xd0(r3)
/* 80033C10 00030A10  4E 80 00 20 */	blr 

.global xMemRegisterBaseNotifyFunc__FPFv_v
xMemRegisterBaseNotifyFunc__FPFv_v:
/* 80033C14 00030A14  90 6D 89 E4 */	stw r3, sMemBaseNotifyFunc-_SDA_BASE_(r13)
/* 80033C18 00030A18  4E 80 00 20 */	blr 

.global xMemGetBase__Fv
xMemGetBase__Fv:
/* 80033C1C 00030A1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80033C20 00030A20  7C 08 02 A6 */	mflr r0
/* 80033C24 00030A24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80033C28 00030A28  80 6D 89 E0 */	lwz r3, gActiveHeap-_SDA_BASE_(r13)
/* 80033C2C 00030A2C  4B FF FF D1 */	bl xMemGetBase__FUi
/* 80033C30 00030A30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80033C34 00030A34  7C 08 03 A6 */	mtlr r0
/* 80033C38 00030A38  38 21 00 10 */	addi r1, r1, 0x10
/* 80033C3C 00030A3C  4E 80 00 20 */	blr 

xMemPoolAddElements__FP8xMemPoolPvUi:
/* 80033C40 00030A40  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80033C44 00030A44  7C 08 02 A6 */	mflr r0
/* 80033C48 00030A48  90 01 00 34 */	stw r0, 0x34(r1)
/* 80033C4C 00030A4C  BE E1 00 0C */	stmw r23, 0xc(r1)
/* 80033C50 00030A50  7C B9 2B 78 */	mr r25, r5
/* 80033C54 00030A54  7C 77 1B 78 */	mr r23, r3
/* 80033C58 00030A58  7C 98 23 78 */	mr r24, r4
/* 80033C5C 00030A5C  3B F9 FF FF */	addi r31, r25, -1
/* 80033C60 00030A60  3B A0 00 00 */	li r29, 0
/* 80033C64 00030A64  83 83 00 0C */	lwz r28, 0xc(r3)
/* 80033C68 00030A68  A3 63 00 04 */	lhz r27, 4(r3)
/* 80033C6C 00030A6C  A3 43 00 14 */	lhz r26, 0x14(r3)
/* 80033C70 00030A70  48 00 00 2C */	b lbl_80033C9C
lbl_80033C74:
/* 80033C74 00030A74  7F C4 D2 14 */	add r30, r4, r26
/* 80033C78 00030A78  28 1C 00 00 */	cmplwi r28, 0
/* 80033C7C 00030A7C  7F C4 D9 2E */	stwx r30, r4, r27
/* 80033C80 00030A80  41 82 00 14 */	beq lbl_80033C94
/* 80033C84 00030A84  7F 8C E3 78 */	mr r12, r28
/* 80033C88 00030A88  7E E3 BB 78 */	mr r3, r23
/* 80033C8C 00030A8C  7D 89 03 A6 */	mtctr r12
/* 80033C90 00030A90  4E 80 04 21 */	bctrl 
lbl_80033C94:
/* 80033C94 00030A94  7F C4 F3 78 */	mr r4, r30
/* 80033C98 00030A98  3B BD 00 01 */	addi r29, r29, 1
lbl_80033C9C:
/* 80033C9C 00030A9C  7C 1D F8 00 */	cmpw r29, r31
/* 80033CA0 00030AA0  41 80 FF D4 */	blt lbl_80033C74
/* 80033CA4 00030AA4  80 17 00 00 */	lwz r0, 0(r23)
/* 80033CA8 00030AA8  28 1C 00 00 */	cmplwi r28, 0
/* 80033CAC 00030AAC  7C 04 D9 2E */	stwx r0, r4, r27
/* 80033CB0 00030AB0  41 82 00 14 */	beq lbl_80033CC4
/* 80033CB4 00030AB4  7F 8C E3 78 */	mr r12, r28
/* 80033CB8 00030AB8  7E E3 BB 78 */	mr r3, r23
/* 80033CBC 00030ABC  7D 89 03 A6 */	mtctr r12
/* 80033CC0 00030AC0  4E 80 04 21 */	bctrl 
lbl_80033CC4:
/* 80033CC4 00030AC4  93 17 00 00 */	stw r24, 0(r23)
/* 80033CC8 00030AC8  80 17 00 18 */	lwz r0, 0x18(r23)
/* 80033CCC 00030ACC  7C 00 CA 14 */	add r0, r0, r25
/* 80033CD0 00030AD0  90 17 00 18 */	stw r0, 0x18(r23)
/* 80033CD4 00030AD4  BA E1 00 0C */	lmw r23, 0xc(r1)
/* 80033CD8 00030AD8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80033CDC 00030ADC  7C 08 03 A6 */	mtlr r0
/* 80033CE0 00030AE0  38 21 00 30 */	addi r1, r1, 0x30
/* 80033CE4 00030AE4  4E 80 00 20 */	blr 

.global xMemPoolSetup__FP8xMemPoolPvUiUiPFP8xMemPoolPv_vUiUiUi
xMemPoolSetup__FP8xMemPoolPvUiUiPFP8xMemPoolPv_vUiUiUi:
/* 80033CE8 00030AE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80033CEC 00030AEC  7C 08 02 A6 */	mflr r0
/* 80033CF0 00030AF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80033CF4 00030AF4  38 00 00 00 */	li r0, 0
/* 80033CF8 00030AF8  90 03 00 00 */	stw r0, 0(r3)
/* 80033CFC 00030AFC  B0 A3 00 04 */	sth r5, 4(r3)
/* 80033D00 00030B00  7D 25 4B 78 */	mr r5, r9
/* 80033D04 00030B04  B0 C3 00 06 */	sth r6, 6(r3)
/* 80033D08 00030B08  90 03 00 08 */	stw r0, 8(r3)
/* 80033D0C 00030B0C  90 E3 00 0C */	stw r7, 0xc(r3)
/* 80033D10 00030B10  90 83 00 10 */	stw r4, 0x10(r3)
/* 80033D14 00030B14  B1 03 00 14 */	sth r8, 0x14(r3)
/* 80033D18 00030B18  B1 43 00 16 */	sth r10, 0x16(r3)
/* 80033D1C 00030B1C  90 03 00 18 */	stw r0, 0x18(r3)
/* 80033D20 00030B20  4B FF FF 21 */	bl xMemPoolAddElements__FP8xMemPoolPvUi
/* 80033D24 00030B24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80033D28 00030B28  7C 08 03 A6 */	mtlr r0
/* 80033D2C 00030B2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80033D30 00030B30  4E 80 00 20 */	blr 

.global xMemPoolAlloc__FP8xMemPool
xMemPoolAlloc__FP8xMemPool:
/* 80033D34 00030B34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80033D38 00030B38  7C 08 02 A6 */	mflr r0
/* 80033D3C 00030B3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80033D40 00030B40  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80033D44 00030B44  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80033D48 00030B48  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80033D4C 00030B4C  93 81 00 10 */	stw r28, 0x10(r1)
/* 80033D50 00030B50  7C 7C 1B 78 */	mr r28, r3
/* 80033D54 00030B54  80 63 00 00 */	lwz r3, 0(r3)
/* 80033D58 00030B58  A3 DC 00 04 */	lhz r30, 4(r28)
/* 80033D5C 00030B5C  28 03 00 00 */	cmplwi r3, 0
/* 80033D60 00030B60  A3 BC 00 06 */	lhz r29, 6(r28)
/* 80033D64 00030B64  40 82 00 30 */	bne lbl_80033D94
/* 80033D68 00030B68  A3 FC 00 16 */	lhz r31, 0x16(r28)
/* 80033D6C 00030B6C  38 A0 00 00 */	li r5, 0
/* 80033D70 00030B70  A0 1C 00 14 */	lhz r0, 0x14(r28)
/* 80033D74 00030B74  80 6D 89 E0 */	lwz r3, gActiveHeap-_SDA_BASE_(r13)
/* 80033D78 00030B78  7C 9F 01 D6 */	mullw r4, r31, r0
/* 80033D7C 00030B7C  4B FF FB C5 */	bl xMemAlloc__FUiUii
/* 80033D80 00030B80  7C 64 1B 78 */	mr r4, r3
/* 80033D84 00030B84  7F 83 E3 78 */	mr r3, r28
/* 80033D88 00030B88  7F E5 FB 78 */	mr r5, r31
/* 80033D8C 00030B8C  4B FF FE B5 */	bl xMemPoolAddElements__FP8xMemPoolPvUi
/* 80033D90 00030B90  80 7C 00 00 */	lwz r3, 0(r28)
lbl_80033D94:
/* 80033D94 00030B94  7C 83 F0 2E */	lwzx r4, r3, r30
/* 80033D98 00030B98  57 A0 07 FF */	clrlwi. r0, r29, 0x1f
/* 80033D9C 00030B9C  90 9C 00 00 */	stw r4, 0(r28)
/* 80033DA0 00030BA0  41 82 00 10 */	beq lbl_80033DB0
/* 80033DA4 00030BA4  80 1C 00 08 */	lwz r0, 8(r28)
/* 80033DA8 00030BA8  7C 03 F1 2E */	stwx r0, r3, r30
/* 80033DAC 00030BAC  90 7C 00 08 */	stw r3, 8(r28)
lbl_80033DB0:
/* 80033DB0 00030BB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80033DB4 00030BB4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80033DB8 00030BB8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80033DBC 00030BBC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80033DC0 00030BC0  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80033DC4 00030BC4  7C 08 03 A6 */	mtlr r0
/* 80033DC8 00030BC8  38 21 00 20 */	addi r1, r1, 0x20
/* 80033DCC 00030BCC  4E 80 00 20 */	blr 

.global xMemPoolFree__FP8xMemPoolPv
xMemPoolFree__FP8xMemPoolPv:
/* 80033DD0 00030BD0  28 04 00 00 */	cmplwi r4, 0
/* 80033DD4 00030BD4  4D 82 00 20 */	beqlr 
/* 80033DD8 00030BD8  A0 03 00 06 */	lhz r0, 6(r3)
/* 80033DDC 00030BDC  80 C3 00 00 */	lwz r6, 0(r3)
/* 80033DE0 00030BE0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80033DE4 00030BE4  A0 E3 00 04 */	lhz r7, 4(r3)
/* 80033DE8 00030BE8  41 82 00 38 */	beq lbl_80033E20
/* 80033DEC 00030BEC  81 03 00 08 */	lwz r8, 8(r3)
/* 80033DF0 00030BF0  38 A3 00 08 */	addi r5, r3, 8
/* 80033DF4 00030BF4  48 00 00 0C */	b lbl_80033E00
lbl_80033DF8:
/* 80033DF8 00030BF8  7C A8 3A 14 */	add r5, r8, r7
/* 80033DFC 00030BFC  81 05 00 00 */	lwz r8, 0(r5)
lbl_80033E00:
/* 80033E00 00030C00  28 08 00 00 */	cmplwi r8, 0
/* 80033E04 00030C04  41 82 00 0C */	beq lbl_80033E10
/* 80033E08 00030C08  7C 08 20 40 */	cmplw r8, r4
/* 80033E0C 00030C0C  40 82 FF EC */	bne lbl_80033DF8
lbl_80033E10:
/* 80033E10 00030C10  28 08 00 00 */	cmplwi r8, 0
/* 80033E14 00030C14  41 82 00 0C */	beq lbl_80033E20
/* 80033E18 00030C18  7C 08 38 2E */	lwzx r0, r8, r7
/* 80033E1C 00030C1C  90 05 00 00 */	stw r0, 0(r5)
lbl_80033E20:
/* 80033E20 00030C20  7C C4 39 2E */	stwx r6, r4, r7
/* 80033E24 00030C24  90 83 00 00 */	stw r4, 0(r3)
/* 80033E28 00030C28  4E 80 00 20 */	blr 

.endif

