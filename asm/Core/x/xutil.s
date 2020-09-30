.include "macros.inc"

.section .text  # 0x8004DC48 - 0x8004E2F0

.global xUtilStartup__Fv
xUtilStartup__Fv:
/* 8004DC48 0004AA48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004DC4C 0004AA4C  7C 08 02 A6 */	mflr r0
/* 8004DC50 0004AA50  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004DC54 0004AA54  80 6D 8B 30 */	lwz r3, lbl_803CB430-_SDA_BASE_(r13)
/* 8004DC58 0004AA58  38 03 00 01 */	addi r0, r3, 1
/* 8004DC5C 0004AA5C  2C 03 00 00 */	cmpwi r3, 0
/* 8004DC60 0004AA60  90 0D 8B 30 */	stw r0, lbl_803CB430-_SDA_BASE_(r13)
/* 8004DC64 0004AA64  40 82 00 08 */	bne lbl_8004DC6C
/* 8004DC68 0004AA68  48 00 02 81 */	bl xUtil_crc_init__Fv
lbl_8004DC6C:
/* 8004DC6C 0004AA6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004DC70 0004AA70  80 6D 8B 30 */	lwz r3, lbl_803CB430-_SDA_BASE_(r13)
/* 8004DC74 0004AA74  7C 08 03 A6 */	mtlr r0
/* 8004DC78 0004AA78  38 21 00 10 */	addi r1, r1, 0x10
/* 8004DC7C 0004AA7C  4E 80 00 20 */	blr 

.global xUtilShutdown__Fv
xUtilShutdown__Fv:
/* 8004DC80 0004AA80  80 6D 8B 30 */	lwz r3, lbl_803CB430-_SDA_BASE_(r13)
/* 8004DC84 0004AA84  38 03 FF FF */	addi r0, r3, -1
/* 8004DC88 0004AA88  90 0D 8B 30 */	stw r0, lbl_803CB430-_SDA_BASE_(r13)
/* 8004DC8C 0004AA8C  80 6D 8B 30 */	lwz r3, lbl_803CB430-_SDA_BASE_(r13)
/* 8004DC90 0004AA90  4E 80 00 20 */	blr 

.global xUtil_idtag2string__FUii
xUtil_idtag2string__FUii:
/* 8004DC94 0004AA94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8004DC98 0004AA98  7C 08 02 A6 */	mflr r0
/* 8004DC9C 0004AA9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8004DCA0 0004AAA0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8004DCA4 0004AAA4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8004DCA8 0004AAA8  7C 9E 23 79 */	or. r30, r4, r4
/* 8004DCAC 0004AAAC  90 61 00 0C */	stw r3, 0xc(r1)
/* 8004DCB0 0004AAB0  41 80 00 0C */	blt lbl_8004DCBC
/* 8004DCB4 0004AAB4  2C 1E 00 07 */	cmpwi r30, 7
/* 8004DCB8 0004AAB8  41 80 00 14 */	blt lbl_8004DCCC
lbl_8004DCBC:
/* 8004DCBC 0004AABC  3C 60 80 29 */	lis r3, lbl_8028A778@ha
/* 8004DCC0 0004AAC0  38 03 A7 78 */	addi r0, r3, lbl_8028A778@l
/* 8004DCC4 0004AAC4  7C 1F 03 78 */	mr r31, r0
/* 8004DCC8 0004AAC8  48 00 00 14 */	b lbl_8004DCDC
lbl_8004DCCC:
/* 8004DCCC 0004AACC  1C 9E 00 0A */	mulli r4, r30, 0xa
/* 8004DCD0 0004AAD0  3C 60 80 29 */	lis r3, lbl_8028A778@ha
/* 8004DCD4 0004AAD4  38 03 A7 78 */	addi r0, r3, lbl_8028A778@l
/* 8004DCD8 0004AAD8  7F E0 22 14 */	add r31, r0, r4
lbl_8004DCDC:
/* 8004DCDC 0004AADC  38 00 00 01 */	li r0, 1
/* 8004DCE0 0004AAE0  90 01 00 08 */	stw r0, 8(r1)
/* 8004DCE4 0004AAE4  88 01 00 0B */	lbz r0, 0xb(r1)
/* 8004DCE8 0004AAE8  2C 00 00 00 */	cmpwi r0, 0
/* 8004DCEC 0004AAEC  41 82 00 24 */	beq lbl_8004DD10
/* 8004DCF0 0004AAF0  88 A1 00 0C */	lbz r5, 0xc(r1)
/* 8004DCF4 0004AAF4  88 61 00 0F */	lbz r3, 0xf(r1)
/* 8004DCF8 0004AAF8  88 81 00 0D */	lbz r4, 0xd(r1)
/* 8004DCFC 0004AAFC  88 01 00 0E */	lbz r0, 0xe(r1)
/* 8004DD00 0004AB00  98 61 00 0C */	stb r3, 0xc(r1)
/* 8004DD04 0004AB04  98 A1 00 0F */	stb r5, 0xf(r1)
/* 8004DD08 0004AB08  98 01 00 0D */	stb r0, 0xd(r1)
/* 8004DD0C 0004AB0C  98 81 00 0E */	stb r4, 0xe(r1)
lbl_8004DD10:
/* 8004DD10 0004AB10  2C 1E 00 06 */	cmpwi r30, 6
/* 8004DD14 0004AB14  41 82 00 98 */	beq lbl_8004DDAC
/* 8004DD18 0004AB18  40 80 00 94 */	bge lbl_8004DDAC
/* 8004DD1C 0004AB1C  2C 1E 00 04 */	cmpwi r30, 4
/* 8004DD20 0004AB20  40 80 00 08 */	bge lbl_8004DD28
/* 8004DD24 0004AB24  48 00 00 88 */	b lbl_8004DDAC
lbl_8004DD28:
/* 8004DD28 0004AB28  88 61 00 0C */	lbz r3, 0xc(r1)
/* 8004DD2C 0004AB2C  48 19 49 01 */	bl isprint
/* 8004DD30 0004AB30  2C 03 00 00 */	cmpwi r3, 0
/* 8004DD34 0004AB34  41 82 00 0C */	beq lbl_8004DD40
/* 8004DD38 0004AB38  88 01 00 0C */	lbz r0, 0xc(r1)
/* 8004DD3C 0004AB3C  48 00 00 08 */	b lbl_8004DD44
lbl_8004DD40:
/* 8004DD40 0004AB40  38 00 00 3F */	li r0, 0x3f
lbl_8004DD44:
/* 8004DD44 0004AB44  98 1F 00 00 */	stb r0, 0(r31)
/* 8004DD48 0004AB48  88 61 00 0D */	lbz r3, 0xd(r1)
/* 8004DD4C 0004AB4C  48 19 48 E1 */	bl isprint
/* 8004DD50 0004AB50  2C 03 00 00 */	cmpwi r3, 0
/* 8004DD54 0004AB54  41 82 00 0C */	beq lbl_8004DD60
/* 8004DD58 0004AB58  88 01 00 0D */	lbz r0, 0xd(r1)
/* 8004DD5C 0004AB5C  48 00 00 08 */	b lbl_8004DD64
lbl_8004DD60:
/* 8004DD60 0004AB60  38 00 00 3F */	li r0, 0x3f
lbl_8004DD64:
/* 8004DD64 0004AB64  98 1F 00 01 */	stb r0, 1(r31)
/* 8004DD68 0004AB68  88 61 00 0E */	lbz r3, 0xe(r1)
/* 8004DD6C 0004AB6C  48 19 48 C1 */	bl isprint
/* 8004DD70 0004AB70  2C 03 00 00 */	cmpwi r3, 0
/* 8004DD74 0004AB74  41 82 00 0C */	beq lbl_8004DD80
/* 8004DD78 0004AB78  88 01 00 0E */	lbz r0, 0xe(r1)
/* 8004DD7C 0004AB7C  48 00 00 08 */	b lbl_8004DD84
lbl_8004DD80:
/* 8004DD80 0004AB80  38 00 00 3F */	li r0, 0x3f
lbl_8004DD84:
/* 8004DD84 0004AB84  98 1F 00 02 */	stb r0, 2(r31)
/* 8004DD88 0004AB88  88 61 00 0F */	lbz r3, 0xf(r1)
/* 8004DD8C 0004AB8C  48 19 48 A1 */	bl isprint
/* 8004DD90 0004AB90  2C 03 00 00 */	cmpwi r3, 0
/* 8004DD94 0004AB94  41 82 00 0C */	beq lbl_8004DDA0
/* 8004DD98 0004AB98  88 01 00 0F */	lbz r0, 0xf(r1)
/* 8004DD9C 0004AB9C  48 00 00 08 */	b lbl_8004DDA4
lbl_8004DDA0:
/* 8004DDA0 0004ABA0  38 00 00 3F */	li r0, 0x3f
lbl_8004DDA4:
/* 8004DDA4 0004ABA4  98 1F 00 03 */	stb r0, 3(r31)
/* 8004DDA8 0004ABA8  48 00 00 84 */	b lbl_8004DE2C
lbl_8004DDAC:
/* 8004DDAC 0004ABAC  88 61 00 0F */	lbz r3, 0xf(r1)
/* 8004DDB0 0004ABB0  48 19 48 7D */	bl isprint
/* 8004DDB4 0004ABB4  2C 03 00 00 */	cmpwi r3, 0
/* 8004DDB8 0004ABB8  41 82 00 0C */	beq lbl_8004DDC4
/* 8004DDBC 0004ABBC  88 01 00 0F */	lbz r0, 0xf(r1)
/* 8004DDC0 0004ABC0  48 00 00 08 */	b lbl_8004DDC8
lbl_8004DDC4:
/* 8004DDC4 0004ABC4  38 00 00 3F */	li r0, 0x3f
lbl_8004DDC8:
/* 8004DDC8 0004ABC8  98 1F 00 00 */	stb r0, 0(r31)
/* 8004DDCC 0004ABCC  88 61 00 0E */	lbz r3, 0xe(r1)
/* 8004DDD0 0004ABD0  48 19 48 5D */	bl isprint
/* 8004DDD4 0004ABD4  2C 03 00 00 */	cmpwi r3, 0
/* 8004DDD8 0004ABD8  41 82 00 0C */	beq lbl_8004DDE4
/* 8004DDDC 0004ABDC  88 01 00 0E */	lbz r0, 0xe(r1)
/* 8004DDE0 0004ABE0  48 00 00 08 */	b lbl_8004DDE8
lbl_8004DDE4:
/* 8004DDE4 0004ABE4  38 00 00 3F */	li r0, 0x3f
lbl_8004DDE8:
/* 8004DDE8 0004ABE8  98 1F 00 01 */	stb r0, 1(r31)
/* 8004DDEC 0004ABEC  88 61 00 0D */	lbz r3, 0xd(r1)
/* 8004DDF0 0004ABF0  48 19 48 3D */	bl isprint
/* 8004DDF4 0004ABF4  2C 03 00 00 */	cmpwi r3, 0
/* 8004DDF8 0004ABF8  41 82 00 0C */	beq lbl_8004DE04
/* 8004DDFC 0004ABFC  88 01 00 0D */	lbz r0, 0xd(r1)
/* 8004DE00 0004AC00  48 00 00 08 */	b lbl_8004DE08
lbl_8004DE04:
/* 8004DE04 0004AC04  38 00 00 3F */	li r0, 0x3f
lbl_8004DE08:
/* 8004DE08 0004AC08  98 1F 00 02 */	stb r0, 2(r31)
/* 8004DE0C 0004AC0C  88 61 00 0C */	lbz r3, 0xc(r1)
/* 8004DE10 0004AC10  48 19 48 1D */	bl isprint
/* 8004DE14 0004AC14  2C 03 00 00 */	cmpwi r3, 0
/* 8004DE18 0004AC18  41 82 00 0C */	beq lbl_8004DE24
/* 8004DE1C 0004AC1C  88 01 00 0C */	lbz r0, 0xc(r1)
/* 8004DE20 0004AC20  48 00 00 08 */	b lbl_8004DE28
lbl_8004DE24:
/* 8004DE24 0004AC24  38 00 00 3F */	li r0, 0x3f
lbl_8004DE28:
/* 8004DE28 0004AC28  98 1F 00 03 */	stb r0, 3(r31)
lbl_8004DE2C:
/* 8004DE2C 0004AC2C  38 00 00 00 */	li r0, 0
/* 8004DE30 0004AC30  2C 1E 00 06 */	cmpwi r30, 6
/* 8004DE34 0004AC34  98 1F 00 04 */	stb r0, 4(r31)
/* 8004DE38 0004AC38  40 82 00 94 */	bne lbl_8004DECC
/* 8004DE3C 0004AC3C  38 00 00 2F */	li r0, 0x2f
/* 8004DE40 0004AC40  88 61 00 0C */	lbz r3, 0xc(r1)
/* 8004DE44 0004AC44  98 1F 00 04 */	stb r0, 4(r31)
/* 8004DE48 0004AC48  48 19 47 E5 */	bl isprint
/* 8004DE4C 0004AC4C  2C 03 00 00 */	cmpwi r3, 0
/* 8004DE50 0004AC50  41 82 00 0C */	beq lbl_8004DE5C
/* 8004DE54 0004AC54  88 01 00 0C */	lbz r0, 0xc(r1)
/* 8004DE58 0004AC58  48 00 00 08 */	b lbl_8004DE60
lbl_8004DE5C:
/* 8004DE5C 0004AC5C  38 00 00 3F */	li r0, 0x3f
lbl_8004DE60:
/* 8004DE60 0004AC60  98 1F 00 05 */	stb r0, 5(r31)
/* 8004DE64 0004AC64  88 61 00 0D */	lbz r3, 0xd(r1)
/* 8004DE68 0004AC68  48 19 47 C5 */	bl isprint
/* 8004DE6C 0004AC6C  2C 03 00 00 */	cmpwi r3, 0
/* 8004DE70 0004AC70  41 82 00 0C */	beq lbl_8004DE7C
/* 8004DE74 0004AC74  88 01 00 0D */	lbz r0, 0xd(r1)
/* 8004DE78 0004AC78  48 00 00 08 */	b lbl_8004DE80
lbl_8004DE7C:
/* 8004DE7C 0004AC7C  38 00 00 3F */	li r0, 0x3f
lbl_8004DE80:
/* 8004DE80 0004AC80  98 1F 00 06 */	stb r0, 6(r31)
/* 8004DE84 0004AC84  88 61 00 0E */	lbz r3, 0xe(r1)
/* 8004DE88 0004AC88  48 19 47 A5 */	bl isprint
/* 8004DE8C 0004AC8C  2C 03 00 00 */	cmpwi r3, 0
/* 8004DE90 0004AC90  41 82 00 0C */	beq lbl_8004DE9C
/* 8004DE94 0004AC94  88 01 00 0E */	lbz r0, 0xe(r1)
/* 8004DE98 0004AC98  48 00 00 08 */	b lbl_8004DEA0
lbl_8004DE9C:
/* 8004DE9C 0004AC9C  38 00 00 3F */	li r0, 0x3f
lbl_8004DEA0:
/* 8004DEA0 0004ACA0  98 1F 00 07 */	stb r0, 7(r31)
/* 8004DEA4 0004ACA4  88 61 00 0F */	lbz r3, 0xf(r1)
/* 8004DEA8 0004ACA8  48 19 47 85 */	bl isprint
/* 8004DEAC 0004ACAC  2C 03 00 00 */	cmpwi r3, 0
/* 8004DEB0 0004ACB0  41 82 00 0C */	beq lbl_8004DEBC
/* 8004DEB4 0004ACB4  88 01 00 0F */	lbz r0, 0xf(r1)
/* 8004DEB8 0004ACB8  48 00 00 08 */	b lbl_8004DEC0
lbl_8004DEBC:
/* 8004DEBC 0004ACBC  38 00 00 3F */	li r0, 0x3f
lbl_8004DEC0:
/* 8004DEC0 0004ACC0  98 1F 00 08 */	stb r0, 8(r31)
/* 8004DEC4 0004ACC4  38 00 00 00 */	li r0, 0
/* 8004DEC8 0004ACC8  98 1F 00 09 */	stb r0, 9(r31)
lbl_8004DECC:
/* 8004DECC 0004ACCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8004DED0 0004ACD0  7F E3 FB 78 */	mr r3, r31
/* 8004DED4 0004ACD4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8004DED8 0004ACD8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8004DEDC 0004ACDC  7C 08 03 A6 */	mtlr r0
/* 8004DEE0 0004ACE0  38 21 00 20 */	addi r1, r1, 0x20
/* 8004DEE4 0004ACE4  4E 80 00 20 */	blr 

.global xUtil_crc_init__Fv
xUtil_crc_init__Fv:
/* 8004DEE8 0004ACE8  80 0D 80 B0 */	lwz r0, lbl_803CA9B0-_SDA_BASE_(r13)
/* 8004DEEC 0004ACEC  2C 00 00 00 */	cmpwi r0, 0
/* 8004DEF0 0004ACF0  41 82 00 D0 */	beq lbl_8004DFC0
/* 8004DEF4 0004ACF4  3C 60 80 29 */	lis r3, lbl_8028A378@ha
/* 8004DEF8 0004ACF8  38 00 01 00 */	li r0, 0x100
/* 8004DEFC 0004ACFC  38 83 A3 78 */	addi r4, r3, lbl_8028A378@l
/* 8004DF00 0004AD00  38 A0 00 00 */	li r5, 0
/* 8004DF04 0004AD04  7C 09 03 A6 */	mtctr r0
lbl_8004DF08:
/* 8004DF08 0004AD08  54 A0 C0 01 */	rlwinm. r0, r5, 0x18, 0, 0
/* 8004DF0C 0004AD0C  54 A3 C8 0C */	slwi r3, r5, 0x19
/* 8004DF10 0004AD10  41 82 00 0C */	beq lbl_8004DF1C
/* 8004DF14 0004AD14  6C 63 04 C1 */	xoris r3, r3, 0x4c1
/* 8004DF18 0004AD18  68 63 1D B7 */	xori r3, r3, 0x1db7
lbl_8004DF1C:
/* 8004DF1C 0004AD1C  54 60 00 01 */	rlwinm. r0, r3, 0, 0, 0
/* 8004DF20 0004AD20  54 63 08 3C */	slwi r3, r3, 1
/* 8004DF24 0004AD24  41 82 00 0C */	beq lbl_8004DF30
/* 8004DF28 0004AD28  6C 63 04 C1 */	xoris r3, r3, 0x4c1
/* 8004DF2C 0004AD2C  68 63 1D B7 */	xori r3, r3, 0x1db7
lbl_8004DF30:
/* 8004DF30 0004AD30  54 60 00 01 */	rlwinm. r0, r3, 0, 0, 0
/* 8004DF34 0004AD34  54 63 08 3C */	slwi r3, r3, 1
/* 8004DF38 0004AD38  41 82 00 0C */	beq lbl_8004DF44
/* 8004DF3C 0004AD3C  6C 63 04 C1 */	xoris r3, r3, 0x4c1
/* 8004DF40 0004AD40  68 63 1D B7 */	xori r3, r3, 0x1db7
lbl_8004DF44:
/* 8004DF44 0004AD44  54 60 00 01 */	rlwinm. r0, r3, 0, 0, 0
/* 8004DF48 0004AD48  54 63 08 3C */	slwi r3, r3, 1
/* 8004DF4C 0004AD4C  41 82 00 0C */	beq lbl_8004DF58
/* 8004DF50 0004AD50  6C 63 04 C1 */	xoris r3, r3, 0x4c1
/* 8004DF54 0004AD54  68 63 1D B7 */	xori r3, r3, 0x1db7
lbl_8004DF58:
/* 8004DF58 0004AD58  54 60 00 01 */	rlwinm. r0, r3, 0, 0, 0
/* 8004DF5C 0004AD5C  54 63 08 3C */	slwi r3, r3, 1
/* 8004DF60 0004AD60  41 82 00 0C */	beq lbl_8004DF6C
/* 8004DF64 0004AD64  6C 63 04 C1 */	xoris r3, r3, 0x4c1
/* 8004DF68 0004AD68  68 63 1D B7 */	xori r3, r3, 0x1db7
lbl_8004DF6C:
/* 8004DF6C 0004AD6C  54 60 00 01 */	rlwinm. r0, r3, 0, 0, 0
/* 8004DF70 0004AD70  54 63 08 3C */	slwi r3, r3, 1
/* 8004DF74 0004AD74  41 82 00 0C */	beq lbl_8004DF80
/* 8004DF78 0004AD78  6C 63 04 C1 */	xoris r3, r3, 0x4c1
/* 8004DF7C 0004AD7C  68 63 1D B7 */	xori r3, r3, 0x1db7
lbl_8004DF80:
/* 8004DF80 0004AD80  54 60 00 01 */	rlwinm. r0, r3, 0, 0, 0
/* 8004DF84 0004AD84  54 63 08 3C */	slwi r3, r3, 1
/* 8004DF88 0004AD88  41 82 00 0C */	beq lbl_8004DF94
/* 8004DF8C 0004AD8C  6C 63 04 C1 */	xoris r3, r3, 0x4c1
/* 8004DF90 0004AD90  68 63 1D B7 */	xori r3, r3, 0x1db7
lbl_8004DF94:
/* 8004DF94 0004AD94  54 60 00 01 */	rlwinm. r0, r3, 0, 0, 0
/* 8004DF98 0004AD98  54 63 08 3C */	slwi r3, r3, 1
/* 8004DF9C 0004AD9C  41 82 00 0C */	beq lbl_8004DFA8
/* 8004DFA0 0004ADA0  6C 63 04 C1 */	xoris r3, r3, 0x4c1
/* 8004DFA4 0004ADA4  68 63 1D B7 */	xori r3, r3, 0x1db7
lbl_8004DFA8:
/* 8004DFA8 0004ADA8  90 64 00 00 */	stw r3, 0(r4)
/* 8004DFAC 0004ADAC  38 84 00 04 */	addi r4, r4, 4
/* 8004DFB0 0004ADB0  38 A5 00 01 */	addi r5, r5, 1
/* 8004DFB4 0004ADB4  42 00 FF 54 */	bdnz lbl_8004DF08
/* 8004DFB8 0004ADB8  38 00 00 00 */	li r0, 0
/* 8004DFBC 0004ADBC  90 0D 80 B0 */	stw r0, lbl_803CA9B0-_SDA_BASE_(r13)
lbl_8004DFC0:
/* 8004DFC0 0004ADC0  38 60 FF FF */	li r3, -1
/* 8004DFC4 0004ADC4  4E 80 00 20 */	blr 

.global xUtil_crc_update__FUiPci
xUtil_crc_update__FUiPci:
/* 8004DFC8 0004ADC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8004DFCC 0004ADCC  7C 08 02 A6 */	mflr r0
/* 8004DFD0 0004ADD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8004DFD4 0004ADD4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8004DFD8 0004ADD8  7C BF 2B 78 */	mr r31, r5
/* 8004DFDC 0004ADDC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8004DFE0 0004ADE0  7C 9E 23 78 */	mr r30, r4
/* 8004DFE4 0004ADE4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8004DFE8 0004ADE8  7C 7D 1B 78 */	mr r29, r3
/* 8004DFEC 0004ADEC  80 0D 80 B0 */	lwz r0, lbl_803CA9B0-_SDA_BASE_(r13)
/* 8004DFF0 0004ADF0  2C 00 00 00 */	cmpwi r0, 0
/* 8004DFF4 0004ADF4  41 82 00 08 */	beq lbl_8004DFFC
/* 8004DFF8 0004ADF8  4B FF FE F1 */	bl xUtil_crc_init__Fv
lbl_8004DFFC:
/* 8004DFFC 0004ADFC  2C 1F 00 00 */	cmpwi r31, 0
/* 8004E000 0004AE00  38 80 00 00 */	li r4, 0
/* 8004E004 0004AE04  40 81 01 54 */	ble lbl_8004E158
/* 8004E008 0004AE08  2C 1F 00 08 */	cmpwi r31, 8
/* 8004E00C 0004AE0C  38 BF FF F8 */	addi r5, r31, -8
/* 8004E010 0004AE10  40 81 01 0C */	ble lbl_8004E11C
/* 8004E014 0004AE14  38 05 00 07 */	addi r0, r5, 7
/* 8004E018 0004AE18  3C 60 80 29 */	lis r3, lbl_8028A378@ha
/* 8004E01C 0004AE1C  54 00 E8 FE */	srwi r0, r0, 3
/* 8004E020 0004AE20  38 63 A3 78 */	addi r3, r3, lbl_8028A378@l
/* 8004E024 0004AE24  7C 09 03 A6 */	mtctr r0
/* 8004E028 0004AE28  2C 05 00 00 */	cmpwi r5, 0
/* 8004E02C 0004AE2C  40 81 00 F0 */	ble lbl_8004E11C
lbl_8004E030:
/* 8004E030 0004AE30  88 BE 00 00 */	lbz r5, 0(r30)
/* 8004E034 0004AE34  57 A7 46 3E */	srwi r7, r29, 0x18
/* 8004E038 0004AE38  57 A6 40 2E */	slwi r6, r29, 8
/* 8004E03C 0004AE3C  88 1E 00 01 */	lbz r0, 1(r30)
/* 8004E040 0004AE40  7C E5 2A 78 */	xor r5, r7, r5
/* 8004E044 0004AE44  89 3E 00 02 */	lbz r9, 2(r30)
/* 8004E048 0004AE48  54 A5 15 BA */	rlwinm r5, r5, 2, 0x16, 0x1d
/* 8004E04C 0004AE4C  89 1E 00 03 */	lbz r8, 3(r30)
/* 8004E050 0004AE50  7C A3 28 2E */	lwzx r5, r3, r5
/* 8004E054 0004AE54  38 84 00 08 */	addi r4, r4, 8
/* 8004E058 0004AE58  88 FE 00 04 */	lbz r7, 4(r30)
/* 8004E05C 0004AE5C  7C DD 2A 78 */	xor r29, r6, r5
/* 8004E060 0004AE60  88 DE 00 05 */	lbz r6, 5(r30)
/* 8004E064 0004AE64  57 AA 46 3E */	srwi r10, r29, 0x18
/* 8004E068 0004AE68  88 BE 00 06 */	lbz r5, 6(r30)
/* 8004E06C 0004AE6C  7D 4A 02 78 */	xor r10, r10, r0
/* 8004E070 0004AE70  88 1E 00 07 */	lbz r0, 7(r30)
/* 8004E074 0004AE74  55 4A 15 BA */	rlwinm r10, r10, 2, 0x16, 0x1d
/* 8004E078 0004AE78  57 AB 40 2E */	slwi r11, r29, 8
/* 8004E07C 0004AE7C  7D 43 50 2E */	lwzx r10, r3, r10
/* 8004E080 0004AE80  3B DE 00 08 */	addi r30, r30, 8
/* 8004E084 0004AE84  7D 6B 52 78 */	xor r11, r11, r10
/* 8004E088 0004AE88  55 6A 46 3E */	srwi r10, r11, 0x18
/* 8004E08C 0004AE8C  7D 49 4A 78 */	xor r9, r10, r9
/* 8004E090 0004AE90  55 29 15 BA */	rlwinm r9, r9, 2, 0x16, 0x1d
/* 8004E094 0004AE94  55 6A 40 2E */	slwi r10, r11, 8
/* 8004E098 0004AE98  7D 23 48 2E */	lwzx r9, r3, r9
/* 8004E09C 0004AE9C  7D 4A 4A 78 */	xor r10, r10, r9
/* 8004E0A0 0004AEA0  55 49 46 3E */	srwi r9, r10, 0x18
/* 8004E0A4 0004AEA4  7D 28 42 78 */	xor r8, r9, r8
/* 8004E0A8 0004AEA8  55 08 15 BA */	rlwinm r8, r8, 2, 0x16, 0x1d
/* 8004E0AC 0004AEAC  55 49 40 2E */	slwi r9, r10, 8
/* 8004E0B0 0004AEB0  7D 03 40 2E */	lwzx r8, r3, r8
/* 8004E0B4 0004AEB4  7D 29 42 78 */	xor r9, r9, r8
/* 8004E0B8 0004AEB8  55 28 46 3E */	srwi r8, r9, 0x18
/* 8004E0BC 0004AEBC  7D 07 3A 78 */	xor r7, r8, r7
/* 8004E0C0 0004AEC0  54 E7 15 BA */	rlwinm r7, r7, 2, 0x16, 0x1d
/* 8004E0C4 0004AEC4  55 28 40 2E */	slwi r8, r9, 8
/* 8004E0C8 0004AEC8  7C E3 38 2E */	lwzx r7, r3, r7
/* 8004E0CC 0004AECC  7D 08 3A 78 */	xor r8, r8, r7
/* 8004E0D0 0004AED0  55 07 46 3E */	srwi r7, r8, 0x18
/* 8004E0D4 0004AED4  7C E6 32 78 */	xor r6, r7, r6
/* 8004E0D8 0004AED8  54 C6 15 BA */	rlwinm r6, r6, 2, 0x16, 0x1d
/* 8004E0DC 0004AEDC  55 07 40 2E */	slwi r7, r8, 8
/* 8004E0E0 0004AEE0  7C C3 30 2E */	lwzx r6, r3, r6
/* 8004E0E4 0004AEE4  7C E7 32 78 */	xor r7, r7, r6
/* 8004E0E8 0004AEE8  54 E6 46 3E */	srwi r6, r7, 0x18
/* 8004E0EC 0004AEEC  7C C5 2A 78 */	xor r5, r6, r5
/* 8004E0F0 0004AEF0  54 A5 15 BA */	rlwinm r5, r5, 2, 0x16, 0x1d
/* 8004E0F4 0004AEF4  54 E6 40 2E */	slwi r6, r7, 8
/* 8004E0F8 0004AEF8  7C A3 28 2E */	lwzx r5, r3, r5
/* 8004E0FC 0004AEFC  7C C6 2A 78 */	xor r6, r6, r5
/* 8004E100 0004AF00  54 C5 46 3E */	srwi r5, r6, 0x18
/* 8004E104 0004AF04  7C A0 02 78 */	xor r0, r5, r0
/* 8004E108 0004AF08  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 8004E10C 0004AF0C  54 C5 40 2E */	slwi r5, r6, 8
/* 8004E110 0004AF10  7C 03 00 2E */	lwzx r0, r3, r0
/* 8004E114 0004AF14  7C BD 02 78 */	xor r29, r5, r0
/* 8004E118 0004AF18  42 00 FF 18 */	bdnz lbl_8004E030
lbl_8004E11C:
/* 8004E11C 0004AF1C  3C 60 80 29 */	lis r3, lbl_8028A378@ha
/* 8004E120 0004AF20  7C 04 F8 50 */	subf r0, r4, r31
/* 8004E124 0004AF24  38 63 A3 78 */	addi r3, r3, lbl_8028A378@l
/* 8004E128 0004AF28  7C 09 03 A6 */	mtctr r0
/* 8004E12C 0004AF2C  7C 04 F8 00 */	cmpw r4, r31
/* 8004E130 0004AF30  40 80 00 28 */	bge lbl_8004E158
lbl_8004E134:
/* 8004E134 0004AF34  88 1E 00 00 */	lbz r0, 0(r30)
/* 8004E138 0004AF38  57 A5 46 3E */	srwi r5, r29, 0x18
/* 8004E13C 0004AF3C  57 A4 40 2E */	slwi r4, r29, 8
/* 8004E140 0004AF40  3B DE 00 01 */	addi r30, r30, 1
/* 8004E144 0004AF44  7C A0 02 78 */	xor r0, r5, r0
/* 8004E148 0004AF48  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 8004E14C 0004AF4C  7C 03 00 2E */	lwzx r0, r3, r0
/* 8004E150 0004AF50  7C 9D 02 78 */	xor r29, r4, r0
/* 8004E154 0004AF54  42 00 FF E0 */	bdnz lbl_8004E134
lbl_8004E158:
/* 8004E158 0004AF58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8004E15C 0004AF5C  7F A3 EB 78 */	mr r3, r29
/* 8004E160 0004AF60  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8004E164 0004AF64  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8004E168 0004AF68  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8004E16C 0004AF6C  7C 08 03 A6 */	mtlr r0
/* 8004E170 0004AF70  38 21 00 20 */	addi r1, r1, 0x20
/* 8004E174 0004AF74  4E 80 00 20 */	blr 

.global xUtil_yesno__Ff
xUtil_yesno__Ff:
/* 8004E178 0004AF78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8004E17C 0004AF7C  7C 08 02 A6 */	mflr r0
/* 8004E180 0004AF80  90 01 00 24 */	stw r0, 0x24(r1)
/* 8004E184 0004AF84  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8004E188 0004AF88  F3 E1 00 18 */	psq_st f31, 24(r1), 0, qr0
/* 8004E18C 0004AF8C  FF E0 08 90 */	fmr f31, f1
/* 8004E190 0004AF90  C0 02 87 D0 */	lfs f0, lbl_803CD150-_SDA2_BASE_(r2)
/* 8004E194 0004AF94  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 8004E198 0004AF98  40 82 00 0C */	bne lbl_8004E1A4
/* 8004E19C 0004AF9C  38 60 00 00 */	li r3, 0
/* 8004E1A0 0004AFA0  48 00 00 2C */	b lbl_8004E1CC
lbl_8004E1A4:
/* 8004E1A4 0004AFA4  C0 02 87 D4 */	lfs f0, lbl_803CD154-_SDA2_BASE_(r2)
/* 8004E1A8 0004AFA8  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 8004E1AC 0004AFAC  40 82 00 0C */	bne lbl_8004E1B8
/* 8004E1B0 0004AFB0  38 60 00 01 */	li r3, 1
/* 8004E1B4 0004AFB4  48 00 00 18 */	b lbl_8004E1CC
lbl_8004E1B8:
/* 8004E1B8 0004AFB8  4B FE 2A D1 */	bl xurand__Fv
/* 8004E1BC 0004AFBC  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8004E1C0 0004AFC0  4C 40 13 82 */	cror 2, 0, 2
/* 8004E1C4 0004AFC4  7C 00 00 26 */	mfcr r0
/* 8004E1C8 0004AFC8  54 03 1F FE */	rlwinm r3, r0, 3, 0x1f, 0x1f
lbl_8004E1CC:
/* 8004E1CC 0004AFCC  E3 E1 00 18 */	psq_l f31, 24(r1), 0, qr0
/* 8004E1D0 0004AFD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8004E1D4 0004AFD4  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8004E1D8 0004AFD8  7C 08 03 A6 */	mtlr r0
/* 8004E1DC 0004AFDC  38 21 00 20 */	addi r1, r1, 0x20
/* 8004E1E0 0004AFE0  4E 80 00 20 */	blr 

.global xUtil_wtadjust__FPfif
xUtil_wtadjust__FPfif:
/* 8004E1E4 0004AFE4  7C 65 1B 78 */	mr r5, r3
/* 8004E1E8 0004AFE8  C0 62 87 D0 */	lfs f3, lbl_803CD150-_SDA2_BASE_(r2)
/* 8004E1EC 0004AFEC  7C 89 03 A6 */	mtctr r4
/* 8004E1F0 0004AFF0  2C 04 00 00 */	cmpwi r4, 0
/* 8004E1F4 0004AFF4  40 81 00 2C */	ble lbl_8004E220
lbl_8004E1F8:
/* 8004E1F8 0004AFF8  C0 45 00 00 */	lfs f2, 0(r5)
/* 8004E1FC 0004AFFC  C0 02 87 D0 */	lfs f0, lbl_803CD150-_SDA2_BASE_(r2)
/* 8004E200 0004B000  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8004E204 0004B004  40 80 00 0C */	bge lbl_8004E210
/* 8004E208 0004B008  FC 00 10 50 */	fneg f0, f2
/* 8004E20C 0004B00C  D0 05 00 00 */	stfs f0, 0(r5)
lbl_8004E210:
/* 8004E210 0004B010  C0 05 00 00 */	lfs f0, 0(r5)
/* 8004E214 0004B014  38 A5 00 04 */	addi r5, r5, 4
/* 8004E218 0004B018  EC 63 00 2A */	fadds f3, f3, f0
/* 8004E21C 0004B01C  42 00 FF DC */	bdnz lbl_8004E1F8
lbl_8004E220:
/* 8004E220 0004B020  EC 21 18 24 */	fdivs f1, f1, f3
/* 8004E224 0004B024  2C 04 00 00 */	cmpwi r4, 0
/* 8004E228 0004B028  38 E0 00 00 */	li r7, 0
/* 8004E22C 0004B02C  4C 81 00 20 */	blelr 
/* 8004E230 0004B030  2C 04 00 08 */	cmpwi r4, 8
/* 8004E234 0004B034  38 A4 FF F8 */	addi r5, r4, -8
/* 8004E238 0004B038  40 81 00 88 */	ble lbl_8004E2C0
/* 8004E23C 0004B03C  38 05 00 07 */	addi r0, r5, 7
/* 8004E240 0004B040  7C 66 1B 78 */	mr r6, r3
/* 8004E244 0004B044  54 00 E8 FE */	srwi r0, r0, 3
/* 8004E248 0004B048  7C 09 03 A6 */	mtctr r0
/* 8004E24C 0004B04C  2C 05 00 00 */	cmpwi r5, 0
/* 8004E250 0004B050  40 81 00 70 */	ble lbl_8004E2C0
lbl_8004E254:
/* 8004E254 0004B054  C0 06 00 00 */	lfs f0, 0(r6)
/* 8004E258 0004B058  38 E7 00 08 */	addi r7, r7, 8
/* 8004E25C 0004B05C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8004E260 0004B060  D0 06 00 00 */	stfs f0, 0(r6)
/* 8004E264 0004B064  C0 06 00 04 */	lfs f0, 4(r6)
/* 8004E268 0004B068  EC 00 00 72 */	fmuls f0, f0, f1
/* 8004E26C 0004B06C  D0 06 00 04 */	stfs f0, 4(r6)
/* 8004E270 0004B070  C0 06 00 08 */	lfs f0, 8(r6)
/* 8004E274 0004B074  EC 00 00 72 */	fmuls f0, f0, f1
/* 8004E278 0004B078  D0 06 00 08 */	stfs f0, 8(r6)
/* 8004E27C 0004B07C  C0 06 00 0C */	lfs f0, 0xc(r6)
/* 8004E280 0004B080  EC 00 00 72 */	fmuls f0, f0, f1
/* 8004E284 0004B084  D0 06 00 0C */	stfs f0, 0xc(r6)
/* 8004E288 0004B088  C0 06 00 10 */	lfs f0, 0x10(r6)
/* 8004E28C 0004B08C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8004E290 0004B090  D0 06 00 10 */	stfs f0, 0x10(r6)
/* 8004E294 0004B094  C0 06 00 14 */	lfs f0, 0x14(r6)
/* 8004E298 0004B098  EC 00 00 72 */	fmuls f0, f0, f1
/* 8004E29C 0004B09C  D0 06 00 14 */	stfs f0, 0x14(r6)
/* 8004E2A0 0004B0A0  C0 06 00 18 */	lfs f0, 0x18(r6)
/* 8004E2A4 0004B0A4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8004E2A8 0004B0A8  D0 06 00 18 */	stfs f0, 0x18(r6)
/* 8004E2AC 0004B0AC  C0 06 00 1C */	lfs f0, 0x1c(r6)
/* 8004E2B0 0004B0B0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8004E2B4 0004B0B4  D0 06 00 1C */	stfs f0, 0x1c(r6)
/* 8004E2B8 0004B0B8  38 C6 00 20 */	addi r6, r6, 0x20
/* 8004E2BC 0004B0BC  42 00 FF 98 */	bdnz lbl_8004E254
lbl_8004E2C0:
/* 8004E2C0 0004B0C0  54 E5 10 3A */	slwi r5, r7, 2
/* 8004E2C4 0004B0C4  7C 07 20 50 */	subf r0, r7, r4
/* 8004E2C8 0004B0C8  7C 63 2A 14 */	add r3, r3, r5
/* 8004E2CC 0004B0CC  7C 09 03 A6 */	mtctr r0
/* 8004E2D0 0004B0D0  7C 07 20 00 */	cmpw r7, r4
/* 8004E2D4 0004B0D4  4C 80 00 20 */	bgelr 
lbl_8004E2D8:
/* 8004E2D8 0004B0D8  C0 03 00 00 */	lfs f0, 0(r3)
/* 8004E2DC 0004B0DC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8004E2E0 0004B0E0  D0 03 00 00 */	stfs f0, 0(r3)
/* 8004E2E4 0004B0E4  38 63 00 04 */	addi r3, r3, 4
/* 8004E2E8 0004B0E8  42 00 FF F0 */	bdnz lbl_8004E2D8
/* 8004E2EC 0004B0EC  4E 80 00 20 */	blr 

.section .data
lbl_8028A378:
	.incbin "baserom.dol", 0x287358, 0x400
lbl_8028A778:
	.incbin "baserom.dol", 0x287758, 0x40

.section .sbss
lbl_803CB430:
	.skip 0x8

.section .sdata
lbl_803CA9B0:
	.incbin "baserom.dol", 0x2B5A70, 0x8

.section .sdata2
lbl_803CD150:
	.incbin "baserom.dol", 0x2B69F0, 0x4
lbl_803CD154:
	.incbin "baserom.dol", 0x2B69F4, 0x4
