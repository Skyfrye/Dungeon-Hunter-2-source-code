; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007ed7e8, declared_size=2200, range_size=2200, mode=arm
; class-group: b2PrismaticJoint
; alias: _ZN16b2PrismaticJoint23InitVelocityConstraintsERK10b2TimeStep
; demangled: b2PrismaticJoint::InitVelocityConstraints(b2TimeStep const&)
; decoder-mode: arm
007ed7e8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007ed7ec  34 60 90 e5                                      ldr r6, [r0, #0x34]
007ed7f0  54 d0 4d e2                                      sub sp, sp, #0x54
007ed7f4  28 10 8d e5                                      str r1, [sp, #0x28]
007ed7f8  00 40 a0 e1                                      mov r4, r0
007ed7fc  1c 10 96 e5                                      ldr r1, [r6, #0x1c]
007ed800  4c 00 90 e5                                      ldr r0, [r0, #0x4c]
007ed804  e8 82 ec eb                                      bl #0x30e3ac
007ed808  20 10 96 e5                                      ldr r1, [r6, #0x20]
007ed80c  00 80 a0 e1                                      mov r8, r0
007ed810  50 00 94 e5                                      ldr r0, [r4, #0x50]
007ed814  e4 82 ec eb                                      bl #0x30e3ac
007ed818  0c 10 96 e5                                      ldr r1, [r6, #0xc]
007ed81c  00 70 a0 e1                                      mov r7, r0
007ed820  08 00 a0 e1                                      mov r0, r8
007ed824  50 85 ec eb                                      bl #0x30ed6c
007ed828  14 10 96 e5                                      ldr r1, [r6, #0x14]
007ed82c  00 50 a0 e1                                      mov r5, r0
007ed830  07 00 a0 e1                                      mov r0, r7
007ed834  4c 85 ec eb                                      bl #0x30ed6c
007ed838  00 10 a0 e1                                      mov r1, r0
007ed83c  05 00 a0 e1                                      mov r0, r5
007ed840  d7 84 ec eb                                      bl #0x30eba4
007ed844  30 50 94 e5                                      ldr r5, [r4, #0x30]
007ed848  08 00 8d e5                                      str r0, [sp, #8]
007ed84c  10 10 96 e5                                      ldr r1, [r6, #0x10]
007ed850  08 00 a0 e1                                      mov r0, r8
007ed854  44 85 ec eb                                      bl #0x30ed6c
007ed858  18 10 96 e5                                      ldr r1, [r6, #0x18]
007ed85c  00 80 a0 e1                                      mov r8, r0
007ed860  07 00 a0 e1                                      mov r0, r7
007ed864  40 85 ec eb                                      bl #0x30ed6c
007ed868  00 10 a0 e1                                      mov r1, r0
007ed86c  08 00 a0 e1                                      mov r0, r8
007ed870  cb 84 ec eb                                      bl #0x30eba4
007ed874  0c 00 8d e5                                      str r0, [sp, #0xc]
007ed878  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007ed87c  5c a0 94 e5                                      ldr sl, [r4, #0x5c]
007ed880  30 10 8d e5                                      str r1, [sp, #0x30]
007ed884  14 20 95 e5                                      ldr r2, [r5, #0x14]
007ed888  01 00 a0 e1                                      mov r0, r1
007ed88c  0a 10 a0 e1                                      mov r1, sl
007ed890  60 80 94 e5                                      ldr r8, [r4, #0x60]
007ed894  34 20 8d e5                                      str r2, [sp, #0x34]
007ed898  33 85 ec eb                                      bl #0x30ed6c
007ed89c  08 10 a0 e1                                      mov r1, r8
007ed8a0  00 70 a0 e1                                      mov r7, r0
007ed8a4  34 00 9d e5                                      ldr r0, [sp, #0x34]
007ed8a8  2f 85 ec eb                                      bl #0x30ed6c
007ed8ac  10 30 95 e5                                      ldr r3, [r5, #0x10]
007ed8b0  00 10 a0 e1                                      mov r1, r0
007ed8b4  07 00 a0 e1                                      mov r0, r7
007ed8b8  38 30 8d e5                                      str r3, [sp, #0x38]
007ed8bc  b8 84 ec eb                                      bl #0x30eba4
007ed8c0  18 20 95 e5                                      ldr r2, [r5, #0x18]
007ed8c4  00 70 a0 e1                                      mov r7, r0
007ed8c8  0a 10 a0 e1                                      mov r1, sl
007ed8cc  38 00 9d e5                                      ldr r0, [sp, #0x38]
007ed8d0  3c 20 8d e5                                      str r2, [sp, #0x3c]
007ed8d4  24 85 ec eb                                      bl #0x30ed6c
007ed8d8  08 10 a0 e1                                      mov r1, r8
007ed8dc  00 a0 a0 e1                                      mov sl, r0
007ed8e0  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
007ed8e4  20 85 ec eb                                      bl #0x30ed6c
007ed8e8  00 10 a0 e1                                      mov r1, r0
007ed8ec  0a 00 a0 e1                                      mov r0, sl
007ed8f0  ab 84 ec eb                                      bl #0x30eba4
007ed8f4  2c 10 96 e5                                      ldr r1, [r6, #0x2c]
007ed8f8  00 80 a0 e1                                      mov r8, r0
007ed8fc  08 00 9d e5                                      ldr r0, [sp, #8]
007ed900  a7 84 ec eb                                      bl #0x30eba4
007ed904  30 10 96 e5                                      ldr r1, [r6, #0x30]
007ed908  00 a0 a0 e1                                      mov sl, r0
007ed90c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007ed910  a3 84 ec eb                                      bl #0x30eba4
007ed914  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
007ed918  00 90 a0 e1                                      mov sb, r0
007ed91c  0a 00 a0 e1                                      mov r0, sl
007ed920  a1 82 ec eb                                      bl #0x30e3ac
007ed924  14 00 8d e5                                      str r0, [sp, #0x14]
007ed928  30 10 95 e5                                      ldr r1, [r5, #0x30]
007ed92c  09 00 a0 e1                                      mov r0, sb
007ed930  9d 82 ec eb                                      bl #0x30e3ac
007ed934  14 10 9d e5                                      ldr r1, [sp, #0x14]
007ed938  20 00 8d e5                                      str r0, [sp, #0x20]
007ed93c  08 00 a0 e1                                      mov r0, r8
007ed940  09 85 ec eb                                      bl #0x30ed6c
007ed944  20 10 9d e5                                      ldr r1, [sp, #0x20]
007ed948  00 a0 a0 e1                                      mov sl, r0
007ed94c  07 00 a0 e1                                      mov r0, r7
007ed950  05 85 ec eb                                      bl #0x30ed6c
007ed954  00 10 a0 e1                                      mov r1, r0
007ed958  0a 00 a0 e1                                      mov r0, sl
007ed95c  92 82 ec eb                                      bl #0x30e3ac
007ed960  02 01 80 e2                                      add r0, r0, #0x80000000
007ed964  00 b0 a0 e1                                      mov fp, r0
007ed968  08 10 a0 e1                                      mov r1, r8
007ed96c  08 00 9d e5                                      ldr r0, [sp, #8]
007ed970  fd 84 ec eb                                      bl #0x30ed6c
007ed974  07 10 a0 e1                                      mov r1, r7
007ed978  00 90 a0 e1                                      mov sb, r0
007ed97c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007ed980  f9 84 ec eb                                      bl #0x30ed6c
007ed984  00 10 a0 e1                                      mov r1, r0
007ed988  09 00 a0 e1                                      mov r0, sb
007ed98c  86 82 ec eb                                      bl #0x30e3ac
007ed990  80 10 96 e5                                      ldr r1, [r6, #0x80]
007ed994  80 a0 95 e5                                      ldr sl, [r5, #0x80]
007ed998  02 31 87 e2                                      add r3, r7, #0x80000000
007ed99c  10 10 8d e5                                      str r1, [sp, #0x10]
007ed9a0  78 10 95 e5                                      ldr r1, [r5, #0x78]
007ed9a4  02 21 88 e2                                      add r2, r8, #0x80000000
007ed9a8  00 90 a0 e1                                      mov sb, r0
007ed9ac  1c 10 8d e5                                      str r1, [sp, #0x1c]
007ed9b0  78 10 96 e5                                      ldr r1, [r6, #0x78]
007ed9b4  18 10 8d e5                                      str r1, [sp, #0x18]
007ed9b8  44 10 94 e5                                      ldr r1, [r4, #0x44]
007ed9bc  40 10 8d e5                                      str r1, [sp, #0x40]
007ed9c0  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
007ed9c4  44 10 8d e5                                      str r1, [sp, #0x44]
007ed9c8  48 10 94 e5                                      ldr r1, [r4, #0x48]
007ed9cc  48 10 8d e5                                      str r1, [sp, #0x48]
007ed9d0  20 10 95 e5                                      ldr r1, [r5, #0x20]
007ed9d4  4c 10 8d e5                                      str r1, [sp, #0x4c]
007ed9d8  6c 20 84 e5                                      str r2, [r4, #0x6c]
007ed9dc  68 30 84 e5                                      str r3, [r4, #0x68]
007ed9e0  74 70 84 e5                                      str r7, [r4, #0x74]
007ed9e4  7c 00 84 e5                                      str r0, [r4, #0x7c]
007ed9e8  0b 10 a0 e1                                      mov r1, fp
007ed9ec  78 80 84 e5                                      str r8, [r4, #0x78]
007ed9f0  70 b0 84 e5                                      str fp, [r4, #0x70]
007ed9f4  0a 00 a0 e1                                      mov r0, sl
007ed9f8  db 84 ec eb                                      bl #0x30ed6c
007ed9fc  00 10 a0 e1                                      mov r1, r0
007eda00  0b 00 a0 e1                                      mov r0, fp
007eda04  d8 84 ec eb                                      bl #0x30ed6c
007eda08  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
007eda0c  64 84 ec eb                                      bl #0x30eba4
007eda10  18 10 9d e5                                      ldr r1, [sp, #0x18]
007eda14  62 84 ec eb                                      bl #0x30eba4
007eda18  09 10 a0 e1                                      mov r1, sb
007eda1c  00 70 a0 e1                                      mov r7, r0
007eda20  10 00 9d e5                                      ldr r0, [sp, #0x10]
007eda24  d0 84 ec eb                                      bl #0x30ed6c
007eda28  09 10 a0 e1                                      mov r1, sb
007eda2c  ce 84 ec eb                                      bl #0x30ed6c
007eda30  00 10 a0 e1                                      mov r1, r0
007eda34  07 00 a0 e1                                      mov r0, r7
007eda38  59 84 ec eb                                      bl #0x30eba4
007eda3c  00 10 a0 e1                                      mov r1, r0
007eda40  fe 05 a0 e3                                      mov r0, #0x3f800000
007eda44  92 84 ec eb                                      bl #0x30ec94
007eda48  80 00 84 e5                                      str r0, [r4, #0x80]
007eda4c  10 10 9d e5                                      ldr r1, [sp, #0x10]
007eda50  0a 00 a0 e1                                      mov r0, sl
007eda54  52 84 ec eb                                      bl #0x30eba4
007eda58  0d 13 a0 e3                                      mov r1, #0x34000000
007eda5c  00 70 a0 e1                                      mov r7, r0
007eda60  88 00 84 e5                                      str r0, [r4, #0x88]
007eda64  23 82 ec eb                                      bl #0x30e2f8
007eda68  00 00 50 e3                                      cmp r0, #0
007eda6c  03 00 00 0a                                      beq #0x7eda80
007eda70  07 10 a0 e1                                      mov r1, r7
007eda74  fe 05 a0 e3                                      mov r0, #0x3f800000
007eda78  85 84 ec eb                                      bl #0x30ec94
007eda7c  88 00 84 e5                                      str r0, [r4, #0x88]
007eda80  c8 90 d4 e5                                      ldrb sb, [r4, #0xc8]
007eda84  00 00 59 e3                                      cmp sb, #0
007eda88  05 01 00 0a                                      beq #0x7edea4
007eda8c  c9 20 d4 e5                                      ldrb r2, [r4, #0xc9]
007eda90  2c 20 8d e5                                      str r2, [sp, #0x2c]
007eda94  54 b0 94 e5                                      ldr fp, [r4, #0x54]
007eda98  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007eda9c  0b 00 a0 e1                                      mov r0, fp
007edaa0  b1 84 ec eb                                      bl #0x30ed6c
007edaa4  14 10 95 e5                                      ldr r1, [r5, #0x14]
007edaa8  00 70 a0 e1                                      mov r7, r0
007edaac  58 00 94 e5                                      ldr r0, [r4, #0x58]
007edab0  ad 84 ec eb                                      bl #0x30ed6c
007edab4  00 10 a0 e1                                      mov r1, r0
007edab8  07 00 a0 e1                                      mov r0, r7
007edabc  38 84 ec eb                                      bl #0x30eba4
007edac0  10 10 95 e5                                      ldr r1, [r5, #0x10]
007edac4  00 80 a0 e1                                      mov r8, r0
007edac8  0b 00 a0 e1                                      mov r0, fp
007edacc  a6 84 ec eb                                      bl #0x30ed6c
007edad0  18 10 95 e5                                      ldr r1, [r5, #0x18]
007edad4  00 70 a0 e1                                      mov r7, r0
007edad8  58 00 94 e5                                      ldr r0, [r4, #0x58]
007edadc  a2 84 ec eb                                      bl #0x30ed6c
007edae0  00 10 a0 e1                                      mov r1, r0
007edae4  07 00 a0 e1                                      mov r0, r7
007edae8  2d 84 ec eb                                      bl #0x30eba4
007edaec  00 70 a0 e1                                      mov r7, r0
007edaf0  07 10 a0 e1                                      mov r1, r7
007edaf4  14 00 9d e5                                      ldr r0, [sp, #0x14]
007edaf8  9b 84 ec eb                                      bl #0x30ed6c
007edafc  08 10 a0 e1                                      mov r1, r8
007edb00  00 b0 a0 e1                                      mov fp, r0
007edb04  20 00 9d e5                                      ldr r0, [sp, #0x20]
007edb08  97 84 ec eb                                      bl #0x30ed6c
007edb0c  00 10 a0 e1                                      mov r1, r0
007edb10  0b 00 a0 e1                                      mov r0, fp
007edb14  24 82 ec eb                                      bl #0x30e3ac
007edb18  07 10 a0 e1                                      mov r1, r7
007edb1c  02 31 80 e2                                      add r3, r0, #0x80000000
007edb20  08 00 9d e5                                      ldr r0, [sp, #8]
007edb24  04 30 8d e5                                      str r3, [sp, #4]
007edb28  8f 84 ec eb                                      bl #0x30ed6c
007edb2c  08 10 a0 e1                                      mov r1, r8
007edb30  00 b0 a0 e1                                      mov fp, r0
007edb34  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007edb38  8b 84 ec eb                                      bl #0x30ed6c
007edb3c  00 10 a0 e1                                      mov r1, r0
007edb40  0b 00 a0 e1                                      mov r0, fp
007edb44  18 82 ec eb                                      bl #0x30e3ac
007edb48  02 21 88 e2                                      add r2, r8, #0x80000000
007edb4c  02 11 87 e2                                      add r1, r7, #0x80000000
007edb50  90 20 84 e5                                      str r2, [r4, #0x90]
007edb54  94 10 84 e5                                      str r1, [r4, #0x94]
007edb58  04 30 9d e5                                      ldr r3, [sp, #4]
007edb5c  00 b0 a0 e1                                      mov fp, r0
007edb60  a4 00 84 e5                                      str r0, [r4, #0xa4]
007edb64  98 30 84 e5                                      str r3, [r4, #0x98]
007edb68  03 10 a0 e1                                      mov r1, r3
007edb6c  a0 70 84 e5                                      str r7, [r4, #0xa0]
007edb70  9c 80 84 e5                                      str r8, [r4, #0x9c]
007edb74  0a 00 a0 e1                                      mov r0, sl
007edb78  04 30 8d e5                                      str r3, [sp, #4]
007edb7c  7a 84 ec eb                                      bl #0x30ed6c
007edb80  04 30 9d e5                                      ldr r3, [sp, #4]
007edb84  00 10 a0 e1                                      mov r1, r0
007edb88  03 00 a0 e1                                      mov r0, r3
007edb8c  76 84 ec eb                                      bl #0x30ed6c
007edb90  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
007edb94  02 84 ec eb                                      bl #0x30eba4
007edb98  18 10 9d e5                                      ldr r1, [sp, #0x18]
007edb9c  00 84 ec eb                                      bl #0x30eba4
007edba0  0b 10 a0 e1                                      mov r1, fp
007edba4  00 30 a0 e1                                      mov r3, r0
007edba8  10 00 9d e5                                      ldr r0, [sp, #0x10]
007edbac  04 30 8d e5                                      str r3, [sp, #4]
007edbb0  6d 84 ec eb                                      bl #0x30ed6c
007edbb4  0b 10 a0 e1                                      mov r1, fp
007edbb8  6b 84 ec eb                                      bl #0x30ed6c
007edbbc  04 30 9d e5                                      ldr r3, [sp, #4]
007edbc0  00 10 a0 e1                                      mov r1, r0
007edbc4  03 00 a0 e1                                      mov r0, r3
007edbc8  f5 83 ec eb                                      bl #0x30eba4
007edbcc  00 10 a0 e1                                      mov r1, r0
007edbd0  fe 05 a0 e3                                      mov r0, #0x3f800000
007edbd4  2e 84 ec eb                                      bl #0x30ec94
007edbd8  00 00 59 e3                                      cmp sb, #0
007edbdc  a8 00 84 e5                                      str r0, [r4, #0xa8]
007edbe0  c2 00 00 1a                                      bne #0x7edef0
007edbe4  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
007edbe8  00 00 51 e3                                      cmp r1, #0
007edbec  b0 00 00 0a                                      beq #0x7edeb4
007edbf0  00 00 59 e3                                      cmp sb, #0
007edbf4  00 30 a0 03                                      moveq r3, #0
007edbf8  b0 30 84 05                                      streq r3, [r4, #0xb0]
007edbfc  28 20 9d e5                                      ldr r2, [sp, #0x28]
007edc00  10 30 d2 e5                                      ldrb r3, [r2, #0x10]
007edc04  00 00 53 e3                                      cmp r3, #0
007edc08  b2 00 00 0a                                      beq #0x7eded8
007edc0c  84 80 94 e5                                      ldr r8, [r4, #0x84]
007edc10  68 10 94 e5                                      ldr r1, [r4, #0x68]
007edc14  00 70 92 e5                                      ldr r7, [r2]
007edc18  08 00 a0 e1                                      mov r0, r8
007edc1c  52 84 ec eb                                      bl #0x30ed6c
007edc20  6c 10 94 e5                                      ldr r1, [r4, #0x6c]
007edc24  00 b0 a0 e1                                      mov fp, r0
007edc28  08 00 a0 e1                                      mov r0, r8
007edc2c  4e 84 ec eb                                      bl #0x30ed6c
007edc30  b0 10 94 e5                                      ldr r1, [r4, #0xb0]
007edc34  00 20 a0 e1                                      mov r2, r0
007edc38  ac 00 94 e5                                      ldr r0, [r4, #0xac]
007edc3c  00 20 8d e5                                      str r2, [sp]
007edc40  d7 83 ec eb                                      bl #0x30eba4
007edc44  90 10 94 e5                                      ldr r1, [r4, #0x90]
007edc48  00 90 a0 e1                                      mov sb, r0
007edc4c  46 84 ec eb                                      bl #0x30ed6c
007edc50  94 10 94 e5                                      ldr r1, [r4, #0x94]
007edc54  00 30 a0 e1                                      mov r3, r0
007edc58  09 00 a0 e1                                      mov r0, sb
007edc5c  04 30 8d e5                                      str r3, [sp, #4]
007edc60  41 84 ec eb                                      bl #0x30ed6c
007edc64  04 30 9d e5                                      ldr r3, [sp, #4]
007edc68  00 c0 a0 e1                                      mov ip, r0
007edc6c  0b 00 a0 e1                                      mov r0, fp
007edc70  03 10 a0 e1                                      mov r1, r3
007edc74  04 c0 8d e5                                      str ip, [sp, #4]
007edc78  c9 83 ec eb                                      bl #0x30eba4
007edc7c  04 10 9d e8                                      ldm sp, {r2, ip}
007edc80  00 b0 a0 e1                                      mov fp, r0
007edc84  0c 10 a0 e1                                      mov r1, ip
007edc88  02 00 a0 e1                                      mov r0, r2
007edc8c  c4 83 ec eb                                      bl #0x30eba4
007edc90  0b 10 a0 e1                                      mov r1, fp
007edc94  00 30 a0 e1                                      mov r3, r0
007edc98  07 00 a0 e1                                      mov r0, r7
007edc9c  04 30 8d e5                                      str r3, [sp, #4]
007edca0  31 84 ec eb                                      bl #0x30ed6c
007edca4  04 30 9d e5                                      ldr r3, [sp, #4]
007edca8  0c 00 8d e5                                      str r0, [sp, #0xc]
007edcac  07 00 a0 e1                                      mov r0, r7
007edcb0  03 10 a0 e1                                      mov r1, r3
007edcb4  2c 84 ec eb                                      bl #0x30ed6c
007edcb8  14 00 8d e5                                      str r0, [sp, #0x14]
007edcbc  74 10 94 e5                                      ldr r1, [r4, #0x74]
007edcc0  08 00 a0 e1                                      mov r0, r8
007edcc4  28 84 ec eb                                      bl #0x30ed6c
007edcc8  78 10 94 e5                                      ldr r1, [r4, #0x78]
007edccc  00 b0 a0 e1                                      mov fp, r0
007edcd0  08 00 a0 e1                                      mov r0, r8
007edcd4  24 84 ec eb                                      bl #0x30ed6c
007edcd8  9c 10 94 e5                                      ldr r1, [r4, #0x9c]
007edcdc  00 20 a0 e1                                      mov r2, r0
007edce0  09 00 a0 e1                                      mov r0, sb
007edce4  00 20 8d e5                                      str r2, [sp]
007edce8  1f 84 ec eb                                      bl #0x30ed6c
007edcec  a0 10 94 e5                                      ldr r1, [r4, #0xa0]
007edcf0  00 30 a0 e1                                      mov r3, r0
007edcf4  09 00 a0 e1                                      mov r0, sb
007edcf8  04 30 8d e5                                      str r3, [sp, #4]
007edcfc  1a 84 ec eb                                      bl #0x30ed6c
007edd00  04 30 9d e5                                      ldr r3, [sp, #4]
007edd04  00 c0 a0 e1                                      mov ip, r0
007edd08  0b 00 a0 e1                                      mov r0, fp
007edd0c  03 10 a0 e1                                      mov r1, r3
007edd10  04 c0 8d e5                                      str ip, [sp, #4]
007edd14  a2 83 ec eb                                      bl #0x30eba4
007edd18  04 10 9d e8                                      ldm sp, {r2, ip}
007edd1c  00 b0 a0 e1                                      mov fp, r0
007edd20  0c 10 a0 e1                                      mov r1, ip
007edd24  02 00 a0 e1                                      mov r0, r2
007edd28  9d 83 ec eb                                      bl #0x30eba4
007edd2c  0b 10 a0 e1                                      mov r1, fp
007edd30  00 30 a0 e1                                      mov r3, r0
007edd34  07 00 a0 e1                                      mov r0, r7
007edd38  04 30 8d e5                                      str r3, [sp, #4]
007edd3c  0a 84 ec eb                                      bl #0x30ed6c
007edd40  04 30 9d e5                                      ldr r3, [sp, #4]
007edd44  00 20 a0 e1                                      mov r2, r0
007edd48  07 00 a0 e1                                      mov r0, r7
007edd4c  03 10 a0 e1                                      mov r1, r3
007edd50  00 20 8d e5                                      str r2, [sp]
007edd54  04 84 ec eb                                      bl #0x30ed6c
007edd58  70 10 94 e5                                      ldr r1, [r4, #0x70]
007edd5c  00 30 a0 e1                                      mov r3, r0
007edd60  08 00 a0 e1                                      mov r0, r8
007edd64  04 30 8d e5                                      str r3, [sp, #4]
007edd68  ff 83 ec eb                                      bl #0x30ed6c
007edd6c  8c 10 94 e5                                      ldr r1, [r4, #0x8c]
007edd70  8d 81 ec eb                                      bl #0x30e3ac
007edd74  98 10 94 e5                                      ldr r1, [r4, #0x98]
007edd78  00 b0 a0 e1                                      mov fp, r0
007edd7c  09 00 a0 e1                                      mov r0, sb
007edd80  f9 83 ec eb                                      bl #0x30ed6c
007edd84  00 10 a0 e1                                      mov r1, r0
007edd88  0b 00 a0 e1                                      mov r0, fp
007edd8c  84 83 ec eb                                      bl #0x30eba4
007edd90  00 10 a0 e1                                      mov r1, r0
007edd94  07 00 a0 e1                                      mov r0, r7
007edd98  f3 83 ec eb                                      bl #0x30ed6c
007edd9c  7c 10 94 e5                                      ldr r1, [r4, #0x7c]
007edda0  00 b0 a0 e1                                      mov fp, r0
007edda4  08 00 a0 e1                                      mov r0, r8
007edda8  ef 83 ec eb                                      bl #0x30ed6c
007eddac  00 10 a0 e1                                      mov r1, r0
007eddb0  8c 00 94 e5                                      ldr r0, [r4, #0x8c]
007eddb4  7a 83 ec eb                                      bl #0x30eba4
007eddb8  a4 10 94 e5                                      ldr r1, [r4, #0xa4]
007eddbc  00 80 a0 e1                                      mov r8, r0
007eddc0  09 00 a0 e1                                      mov r0, sb
007eddc4  e8 83 ec eb                                      bl #0x30ed6c
007eddc8  00 10 a0 e1                                      mov r1, r0
007eddcc  08 00 a0 e1                                      mov r0, r8
007eddd0  73 83 ec eb                                      bl #0x30eba4
007eddd4  00 10 a0 e1                                      mov r1, r0
007eddd8  07 00 a0 e1                                      mov r0, r7
007edddc  e2 83 ec eb                                      bl #0x30ed6c
007edde0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007edde4  00 70 a0 e1                                      mov r7, r0
007edde8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007eddec  de 83 ec eb                                      bl #0x30ed6c
007eddf0  00 10 a0 e1                                      mov r1, r0
007eddf4  40 00 95 e5                                      ldr r0, [r5, #0x40]
007eddf8  69 83 ec eb                                      bl #0x30eba4
007eddfc  40 00 85 e5                                      str r0, [r5, #0x40]
007ede00  14 10 9d e5                                      ldr r1, [sp, #0x14]
007ede04  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007ede08  d7 83 ec eb                                      bl #0x30ed6c
007ede0c  00 10 a0 e1                                      mov r1, r0
007ede10  44 00 95 e5                                      ldr r0, [r5, #0x44]
007ede14  62 83 ec eb                                      bl #0x30eba4
007ede18  0b 10 a0 e1                                      mov r1, fp
007ede1c  44 00 85 e5                                      str r0, [r5, #0x44]
007ede20  0a 00 a0 e1                                      mov r0, sl
007ede24  d0 83 ec eb                                      bl #0x30ed6c
007ede28  00 10 a0 e1                                      mov r1, r0
007ede2c  48 00 95 e5                                      ldr r0, [r5, #0x48]
007ede30  5b 83 ec eb                                      bl #0x30eba4
007ede34  48 00 85 e5                                      str r0, [r5, #0x48]
007ede38  00 20 9d e5                                      ldr r2, [sp]
007ede3c  18 00 9d e5                                      ldr r0, [sp, #0x18]
007ede40  02 10 a0 e1                                      mov r1, r2
007ede44  c8 83 ec eb                                      bl #0x30ed6c
007ede48  00 10 a0 e1                                      mov r1, r0
007ede4c  40 00 96 e5                                      ldr r0, [r6, #0x40]
007ede50  53 83 ec eb                                      bl #0x30eba4
007ede54  40 00 86 e5                                      str r0, [r6, #0x40]
007ede58  04 30 9d e5                                      ldr r3, [sp, #4]
007ede5c  18 00 9d e5                                      ldr r0, [sp, #0x18]
007ede60  03 10 a0 e1                                      mov r1, r3
007ede64  c0 83 ec eb                                      bl #0x30ed6c
007ede68  00 10 a0 e1                                      mov r1, r0
007ede6c  44 00 96 e5                                      ldr r0, [r6, #0x44]
007ede70  4b 83 ec eb                                      bl #0x30eba4
007ede74  44 00 86 e5                                      str r0, [r6, #0x44]
007ede78  07 10 a0 e1                                      mov r1, r7
007ede7c  10 00 9d e5                                      ldr r0, [sp, #0x10]
007ede80  b9 83 ec eb                                      bl #0x30ed6c
007ede84  00 10 a0 e1                                      mov r1, r0
007ede88  48 00 96 e5                                      ldr r0, [r6, #0x48]
007ede8c  44 83 ec eb                                      bl #0x30eba4
007ede90  48 00 86 e5                                      str r0, [r6, #0x48]
007ede94  00 30 a0 e3                                      mov r3, #0
007ede98  b4 30 84 e5                                      str r3, [r4, #0xb4]
007ede9c  54 d0 8d e2                                      add sp, sp, #0x54
007edea0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007edea4  c9 30 d4 e5                                      ldrb r3, [r4, #0xc9]
007edea8  00 00 53 e3                                      cmp r3, #0
007edeac  2c 30 8d e5                                      str r3, [sp, #0x2c]
007edeb0  f7 fe ff 1a                                      bne #0x7eda94
007edeb4  00 30 a0 e3                                      mov r3, #0
007edeb8  00 00 59 e3                                      cmp sb, #0
007edebc  ac 30 84 e5                                      str r3, [r4, #0xac]
007edec0  00 30 a0 03                                      moveq r3, #0
007edec4  b0 30 84 05                                      streq r3, [r4, #0xb0]
007edec8  28 20 9d e5                                      ldr r2, [sp, #0x28]
007edecc  10 30 d2 e5                                      ldrb r3, [r2, #0x10]
007eded0  00 00 53 e3                                      cmp r3, #0
007eded4  4c ff ff 1a                                      bne #0x7edc0c
007eded8  00 30 a0 e3                                      mov r3, #0
007ededc  ac 30 84 e5                                      str r3, [r4, #0xac]
007edee0  84 30 84 e5                                      str r3, [r4, #0x84]
007edee4  8c 30 84 e5                                      str r3, [r4, #0x8c]
007edee8  b0 30 84 e5                                      str r3, [r4, #0xb0]
007edeec  e8 ff ff ea                                      b #0x7ede94
007edef0  bc 10 94 e5                                      ldr r1, [r4, #0xbc]
007edef4  0c 10 8d e5                                      str r1, [sp, #0xc]
007edef8  b8 20 94 e5                                      ldr r2, [r4, #0xb8]
007edefc  01 00 a0 e1                                      mov r0, r1
007edf00  02 10 a0 e1                                      mov r1, r2
007edf04  08 20 8d e5                                      str r2, [sp, #8]
007edf08  27 81 ec eb                                      bl #0x30e3ac
007edf0c  00 10 a0 e3                                      mov r1, #0
007edf10  00 b0 a0 e1                                      mov fp, r0
007edf14  f7 80 ec eb                                      bl #0x30e2f8
007edf18  00 00 50 e3                                      cmp r0, #0
007edf1c  0b 30 a0 01                                      moveq r3, fp
007edf20  02 31 83 02                                      addeq r3, r3, #0x80000000
007edf24  03 b0 a0 01                                      moveq fp, r3
007edf28  0a 17 0d e3                                      movw r1, #0xd70a
007edf2c  0b 00 a0 e1                                      mov r0, fp
007edf30  23 1c 43 e3                                      movt r1, #0x3c23
007edf34  f4 81 ec eb                                      bl #0x30e70c
007edf38  00 00 50 e3                                      cmp r0, #0
007edf3c  03 30 a0 13                                      movne r3, #3
007edf40  cc 30 84 15                                      strne r3, [r4, #0xcc]
007edf44  26 ff ff 1a                                      bne #0x7edbe4
007edf48  44 10 9d e5                                      ldr r1, [sp, #0x44]
007edf4c  40 00 9d e5                                      ldr r0, [sp, #0x40]
007edf50  15 81 ec eb                                      bl #0x30e3ac
007edf54  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
007edf58  24 00 8d e5                                      str r0, [sp, #0x24]
007edf5c  48 00 9d e5                                      ldr r0, [sp, #0x48]
007edf60  11 81 ec eb                                      bl #0x30e3ac
007edf64  30 10 9d e5                                      ldr r1, [sp, #0x30]
007edf68  00 b0 a0 e1                                      mov fp, r0
007edf6c  24 00 9d e5                                      ldr r0, [sp, #0x24]
007edf70  7d 83 ec eb                                      bl #0x30ed6c
007edf74  34 10 9d e5                                      ldr r1, [sp, #0x34]
007edf78  00 30 a0 e1                                      mov r3, r0
007edf7c  0b 00 a0 e1                                      mov r0, fp
007edf80  04 30 8d e5                                      str r3, [sp, #4]
007edf84  78 83 ec eb                                      bl #0x30ed6c
007edf88  04 30 9d e5                                      ldr r3, [sp, #4]
007edf8c  00 10 a0 e1                                      mov r1, r0
007edf90  03 00 a0 e1                                      mov r0, r3
007edf94  02 83 ec eb                                      bl #0x30eba4
007edf98  00 10 a0 e1                                      mov r1, r0
007edf9c  14 00 9d e5                                      ldr r0, [sp, #0x14]
007edfa0  01 81 ec eb                                      bl #0x30e3ac
007edfa4  00 10 a0 e1                                      mov r1, r0
007edfa8  08 00 a0 e1                                      mov r0, r8
007edfac  6e 83 ec eb                                      bl #0x30ed6c
007edfb0  38 10 9d e5                                      ldr r1, [sp, #0x38]
007edfb4  00 30 a0 e1                                      mov r3, r0
007edfb8  24 00 9d e5                                      ldr r0, [sp, #0x24]
007edfbc  04 30 8d e5                                      str r3, [sp, #4]
007edfc0  69 83 ec eb                                      bl #0x30ed6c
007edfc4  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
007edfc8  00 80 a0 e1                                      mov r8, r0
007edfcc  0b 00 a0 e1                                      mov r0, fp
007edfd0  65 83 ec eb                                      bl #0x30ed6c
007edfd4  00 10 a0 e1                                      mov r1, r0
007edfd8  08 00 a0 e1                                      mov r0, r8
007edfdc  f0 82 ec eb                                      bl #0x30eba4
007edfe0  00 10 a0 e1                                      mov r1, r0
007edfe4  20 00 9d e5                                      ldr r0, [sp, #0x20]
007edfe8  ef 80 ec eb                                      bl #0x30e3ac
007edfec  00 10 a0 e1                                      mov r1, r0
007edff0  07 00 a0 e1                                      mov r0, r7
007edff4  5c 83 ec eb                                      bl #0x30ed6c
007edff8  04 30 9d e5                                      ldr r3, [sp, #4]
007edffc  00 10 a0 e1                                      mov r1, r0
007ee000  03 00 a0 e1                                      mov r0, r3
007ee004  e6 82 ec eb                                      bl #0x30eba4
007ee008  00 70 a0 e1                                      mov r7, r0
007ee00c  07 10 a0 e1                                      mov r1, r7
007ee010  08 00 9d e5                                      ldr r0, [sp, #8]
007ee014  26 81 ec eb                                      bl #0x30e4b4
007ee018  00 00 50 e3                                      cmp r0, #0
007ee01c  06 00 00 0a                                      beq #0x7ee03c
007ee020  cc 30 94 e5                                      ldr r3, [r4, #0xcc]
007ee024  01 00 53 e3                                      cmp r3, #1
007ee028  00 30 a0 13                                      movne r3, #0
007ee02c  b0 30 84 15                                      strne r3, [r4, #0xb0]
007ee030  01 30 a0 e3                                      mov r3, #1
007ee034  cc 30 84 e5                                      str r3, [r4, #0xcc]
007ee038  e9 fe ff ea                                      b #0x7edbe4
007ee03c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007ee040  07 10 a0 e1                                      mov r1, r7
007ee044  58 82 ec eb                                      bl #0x30e9ac
007ee048  00 00 50 e3                                      cmp r0, #0
007ee04c  06 00 00 0a                                      beq #0x7ee06c
007ee050  cc 30 94 e5                                      ldr r3, [r4, #0xcc]
007ee054  02 00 53 e3                                      cmp r3, #2
007ee058  00 30 a0 13                                      movne r3, #0
007ee05c  b0 30 84 15                                      strne r3, [r4, #0xb0]
007ee060  02 30 a0 e3                                      mov r3, #2
007ee064  cc 30 84 e5                                      str r3, [r4, #0xcc]
007ee068  dd fe ff ea                                      b #0x7edbe4
007ee06c  00 30 a0 e3                                      mov r3, #0
007ee070  cc 30 84 e5                                      str r3, [r4, #0xcc]
007ee074  00 30 a0 e3                                      mov r3, #0
007ee078  b0 30 84 e5                                      str r3, [r4, #0xb0]
007ee07c  d8 fe ff ea                                      b #0x7edbe4

; FUNCTION 0x007ee080, declared_size=1952, range_size=1952, mode=arm
; class-group: b2PrismaticJoint
; alias: _ZN16b2PrismaticJoint24SolveVelocityConstraintsERK10b2TimeStep
; demangled: b2PrismaticJoint::SolveVelocityConstraints(b2TimeStep const&)
; decoder-mode: arm
007ee080  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007ee084  04 30 91 e5                                      ldr r3, [r1, #4]
007ee088  00 40 a0 e1                                      mov r4, r0
007ee08c  24 d0 4d e2                                      sub sp, sp, #0x24
007ee090  30 50 90 e5                                      ldr r5, [r0, #0x30]
007ee094  01 70 a0 e1                                      mov r7, r1
007ee098  02 01 83 e2                                      add r0, r3, #0x80000000
007ee09c  80 10 94 e5                                      ldr r1, [r4, #0x80]
007ee0a0  31 83 ec eb                                      bl #0x30ed6c
007ee0a4  40 10 95 e5                                      ldr r1, [r5, #0x40]
007ee0a8  00 80 a0 e1                                      mov r8, r0
007ee0ac  68 00 94 e5                                      ldr r0, [r4, #0x68]
007ee0b0  2d 83 ec eb                                      bl #0x30ed6c
007ee0b4  44 10 95 e5                                      ldr r1, [r5, #0x44]
007ee0b8  00 a0 a0 e1                                      mov sl, r0
007ee0bc  6c 00 94 e5                                      ldr r0, [r4, #0x6c]
007ee0c0  29 83 ec eb                                      bl #0x30ed6c
007ee0c4  00 10 a0 e1                                      mov r1, r0
007ee0c8  0a 00 a0 e1                                      mov r0, sl
007ee0cc  b4 82 ec eb                                      bl #0x30eba4
007ee0d0  70 10 94 e5                                      ldr r1, [r4, #0x70]
007ee0d4  00 a0 a0 e1                                      mov sl, r0
007ee0d8  48 00 95 e5                                      ldr r0, [r5, #0x48]
007ee0dc  22 83 ec eb                                      bl #0x30ed6c
007ee0e0  00 10 a0 e1                                      mov r1, r0
007ee0e4  0a 00 a0 e1                                      mov r0, sl
007ee0e8  ad 82 ec eb                                      bl #0x30eba4
007ee0ec  34 60 94 e5                                      ldr r6, [r4, #0x34]
007ee0f0  00 a0 a0 e1                                      mov sl, r0
007ee0f4  74 00 94 e5                                      ldr r0, [r4, #0x74]
007ee0f8  40 10 96 e5                                      ldr r1, [r6, #0x40]
007ee0fc  1a 83 ec eb                                      bl #0x30ed6c
007ee100  44 10 96 e5                                      ldr r1, [r6, #0x44]
007ee104  00 90 a0 e1                                      mov sb, r0
007ee108  78 00 94 e5                                      ldr r0, [r4, #0x78]
007ee10c  16 83 ec eb                                      bl #0x30ed6c
007ee110  00 10 a0 e1                                      mov r1, r0
007ee114  09 00 a0 e1                                      mov r0, sb
007ee118  a1 82 ec eb                                      bl #0x30eba4
007ee11c  00 10 a0 e1                                      mov r1, r0
007ee120  0a 00 a0 e1                                      mov r0, sl
007ee124  9e 82 ec eb                                      bl #0x30eba4
007ee128  7c 10 94 e5                                      ldr r1, [r4, #0x7c]
007ee12c  00 a0 a0 e1                                      mov sl, r0
007ee130  48 00 96 e5                                      ldr r0, [r6, #0x48]
007ee134  0c 83 ec eb                                      bl #0x30ed6c
007ee138  00 10 a0 e1                                      mov r1, r0
007ee13c  0a 00 a0 e1                                      mov r0, sl
007ee140  97 82 ec eb                                      bl #0x30eba4
007ee144  00 10 a0 e1                                      mov r1, r0
007ee148  08 00 a0 e1                                      mov r0, r8
007ee14c  06 83 ec eb                                      bl #0x30ed6c
007ee150  00 80 a0 e1                                      mov r8, r0
007ee154  00 10 a0 e1                                      mov r1, r0
007ee158  84 00 94 e5                                      ldr r0, [r4, #0x84]
007ee15c  90 82 ec eb                                      bl #0x30eba4
007ee160  78 20 96 e5                                      ldr r2, [r6, #0x78]
007ee164  80 90 95 e5                                      ldr sb, [r5, #0x80]
007ee168  80 a0 96 e5                                      ldr sl, [r6, #0x80]
007ee16c  78 b0 95 e5                                      ldr fp, [r5, #0x78]
007ee170  0c 20 8d e5                                      str r2, [sp, #0xc]
007ee174  84 00 84 e5                                      str r0, [r4, #0x84]
007ee178  00 10 97 e5                                      ldr r1, [r7]
007ee17c  08 00 a0 e1                                      mov r0, r8
007ee180  f9 82 ec eb                                      bl #0x30ed6c
007ee184  00 80 a0 e1                                      mov r8, r0
007ee188  08 10 a0 e1                                      mov r1, r8
007ee18c  0b 00 a0 e1                                      mov r0, fp
007ee190  f5 82 ec eb                                      bl #0x30ed6c
007ee194  6c 10 94 e5                                      ldr r1, [r4, #0x6c]
007ee198  04 00 8d e5                                      str r0, [sp, #4]
007ee19c  f2 82 ec eb                                      bl #0x30ed6c
007ee1a0  04 30 9d e5                                      ldr r3, [sp, #4]
007ee1a4  68 10 94 e5                                      ldr r1, [r4, #0x68]
007ee1a8  00 20 a0 e1                                      mov r2, r0
007ee1ac  03 00 a0 e1                                      mov r0, r3
007ee1b0  08 20 8d e5                                      str r2, [sp, #8]
007ee1b4  ec 82 ec eb                                      bl #0x30ed6c
007ee1b8  00 10 a0 e1                                      mov r1, r0
007ee1bc  40 00 95 e5                                      ldr r0, [r5, #0x40]
007ee1c0  77 82 ec eb                                      bl #0x30eba4
007ee1c4  40 00 85 e5                                      str r0, [r5, #0x40]
007ee1c8  08 20 9d e5                                      ldr r2, [sp, #8]
007ee1cc  44 00 95 e5                                      ldr r0, [r5, #0x44]
007ee1d0  02 10 a0 e1                                      mov r1, r2
007ee1d4  72 82 ec eb                                      bl #0x30eba4
007ee1d8  08 10 a0 e1                                      mov r1, r8
007ee1dc  44 00 85 e5                                      str r0, [r5, #0x44]
007ee1e0  09 00 a0 e1                                      mov r0, sb
007ee1e4  e0 82 ec eb                                      bl #0x30ed6c
007ee1e8  70 10 94 e5                                      ldr r1, [r4, #0x70]
007ee1ec  de 82 ec eb                                      bl #0x30ed6c
007ee1f0  00 10 a0 e1                                      mov r1, r0
007ee1f4  48 00 95 e5                                      ldr r0, [r5, #0x48]
007ee1f8  69 82 ec eb                                      bl #0x30eba4
007ee1fc  48 00 85 e5                                      str r0, [r5, #0x48]
007ee200  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007ee204  08 10 a0 e1                                      mov r1, r8
007ee208  d7 82 ec eb                                      bl #0x30ed6c
007ee20c  78 10 94 e5                                      ldr r1, [r4, #0x78]
007ee210  04 00 8d e5                                      str r0, [sp, #4]
007ee214  d4 82 ec eb                                      bl #0x30ed6c
007ee218  04 30 9d e5                                      ldr r3, [sp, #4]
007ee21c  74 10 94 e5                                      ldr r1, [r4, #0x74]
007ee220  00 20 a0 e1                                      mov r2, r0
007ee224  03 00 a0 e1                                      mov r0, r3
007ee228  08 20 8d e5                                      str r2, [sp, #8]
007ee22c  ce 82 ec eb                                      bl #0x30ed6c
007ee230  00 10 a0 e1                                      mov r1, r0
007ee234  40 00 96 e5                                      ldr r0, [r6, #0x40]
007ee238  59 82 ec eb                                      bl #0x30eba4
007ee23c  40 00 86 e5                                      str r0, [r6, #0x40]
007ee240  08 20 9d e5                                      ldr r2, [sp, #8]
007ee244  44 00 96 e5                                      ldr r0, [r6, #0x44]
007ee248  02 10 a0 e1                                      mov r1, r2
007ee24c  54 82 ec eb                                      bl #0x30eba4
007ee250  08 10 a0 e1                                      mov r1, r8
007ee254  44 00 86 e5                                      str r0, [r6, #0x44]
007ee258  0a 00 a0 e1                                      mov r0, sl
007ee25c  c2 82 ec eb                                      bl #0x30ed6c
007ee260  7c 10 94 e5                                      ldr r1, [r4, #0x7c]
007ee264  c0 82 ec eb                                      bl #0x30ed6c
007ee268  48 10 96 e5                                      ldr r1, [r6, #0x48]
007ee26c  4c 82 ec eb                                      bl #0x30eba4
007ee270  00 80 a0 e1                                      mov r8, r0
007ee274  48 00 86 e5                                      str r0, [r6, #0x48]
007ee278  04 00 97 e5                                      ldr r0, [r7, #4]
007ee27c  88 10 94 e5                                      ldr r1, [r4, #0x88]
007ee280  02 01 80 e2                                      add r0, r0, #0x80000000
007ee284  b8 82 ec eb                                      bl #0x30ed6c
007ee288  48 10 95 e5                                      ldr r1, [r5, #0x48]
007ee28c  00 30 a0 e1                                      mov r3, r0
007ee290  08 00 a0 e1                                      mov r0, r8
007ee294  04 30 8d e5                                      str r3, [sp, #4]
007ee298  43 80 ec eb                                      bl #0x30e3ac
007ee29c  04 30 9d e5                                      ldr r3, [sp, #4]
007ee2a0  00 10 a0 e1                                      mov r1, r0
007ee2a4  03 00 a0 e1                                      mov r0, r3
007ee2a8  af 82 ec eb                                      bl #0x30ed6c
007ee2ac  00 80 a0 e1                                      mov r8, r0
007ee2b0  00 10 a0 e1                                      mov r1, r0
007ee2b4  8c 00 94 e5                                      ldr r0, [r4, #0x8c]
007ee2b8  39 82 ec eb                                      bl #0x30eba4
007ee2bc  8c 00 84 e5                                      str r0, [r4, #0x8c]
007ee2c0  00 10 97 e5                                      ldr r1, [r7]
007ee2c4  08 00 a0 e1                                      mov r0, r8
007ee2c8  a7 82 ec eb                                      bl #0x30ed6c
007ee2cc  00 80 a0 e1                                      mov r8, r0
007ee2d0  08 10 a0 e1                                      mov r1, r8
007ee2d4  09 00 a0 e1                                      mov r0, sb
007ee2d8  a3 82 ec eb                                      bl #0x30ed6c
007ee2dc  00 10 a0 e1                                      mov r1, r0
007ee2e0  48 00 95 e5                                      ldr r0, [r5, #0x48]
007ee2e4  30 80 ec eb                                      bl #0x30e3ac
007ee2e8  08 10 a0 e1                                      mov r1, r8
007ee2ec  48 00 85 e5                                      str r0, [r5, #0x48]
007ee2f0  0a 00 a0 e1                                      mov r0, sl
007ee2f4  9c 82 ec eb                                      bl #0x30ed6c
007ee2f8  48 10 96 e5                                      ldr r1, [r6, #0x48]
007ee2fc  28 82 ec eb                                      bl #0x30eba4
007ee300  48 00 86 e5                                      str r0, [r6, #0x48]
007ee304  c9 30 d4 e5                                      ldrb r3, [r4, #0xc9]
007ee308  00 80 a0 e1                                      mov r8, r0
007ee30c  00 00 53 e3                                      cmp r3, #0
007ee310  94 00 00 0a                                      beq #0x7ee568
007ee314  cc 30 94 e5                                      ldr r3, [r4, #0xcc]
007ee318  03 00 53 e3                                      cmp r3, #3
007ee31c  91 00 00 0a                                      beq #0x7ee568
007ee320  04 00 97 e5                                      ldr r0, [r7, #4]
007ee324  90 30 94 e5                                      ldr r3, [r4, #0x90]
007ee328  a8 10 94 e5                                      ldr r1, [r4, #0xa8]
007ee32c  02 01 80 e2                                      add r0, r0, #0x80000000
007ee330  18 30 8d e5                                      str r3, [sp, #0x18]
007ee334  8c 82 ec eb                                      bl #0x30ed6c
007ee338  94 20 94 e5                                      ldr r2, [r4, #0x94]
007ee33c  00 c0 a0 e1                                      mov ip, r0
007ee340  40 10 95 e5                                      ldr r1, [r5, #0x40]
007ee344  18 00 9d e5                                      ldr r0, [sp, #0x18]
007ee348  00 c0 8d e5                                      str ip, [sp]
007ee34c  14 20 8d e5                                      str r2, [sp, #0x14]
007ee350  85 82 ec eb                                      bl #0x30ed6c
007ee354  44 10 95 e5                                      ldr r1, [r5, #0x44]
007ee358  00 30 a0 e1                                      mov r3, r0
007ee35c  14 00 9d e5                                      ldr r0, [sp, #0x14]
007ee360  04 30 8d e5                                      str r3, [sp, #4]
007ee364  80 82 ec eb                                      bl #0x30ed6c
007ee368  04 30 9d e5                                      ldr r3, [sp, #4]
007ee36c  00 10 a0 e1                                      mov r1, r0
007ee370  03 00 a0 e1                                      mov r0, r3
007ee374  0a 82 ec eb                                      bl #0x30eba4
007ee378  98 10 94 e5                                      ldr r1, [r4, #0x98]
007ee37c  00 30 a0 e1                                      mov r3, r0
007ee380  48 00 95 e5                                      ldr r0, [r5, #0x48]
007ee384  04 30 8d e5                                      str r3, [sp, #4]
007ee388  77 82 ec eb                                      bl #0x30ed6c
007ee38c  04 30 9d e5                                      ldr r3, [sp, #4]
007ee390  00 10 a0 e1                                      mov r1, r0
007ee394  03 00 a0 e1                                      mov r0, r3
007ee398  01 82 ec eb                                      bl #0x30eba4
007ee39c  40 10 96 e5                                      ldr r1, [r6, #0x40]
007ee3a0  00 20 a0 e1                                      mov r2, r0
007ee3a4  9c 00 94 e5                                      ldr r0, [r4, #0x9c]
007ee3a8  08 20 8d e5                                      str r2, [sp, #8]
007ee3ac  6e 82 ec eb                                      bl #0x30ed6c
007ee3b0  44 10 96 e5                                      ldr r1, [r6, #0x44]
007ee3b4  00 30 a0 e1                                      mov r3, r0
007ee3b8  a0 00 94 e5                                      ldr r0, [r4, #0xa0]
007ee3bc  04 30 8d e5                                      str r3, [sp, #4]
007ee3c0  69 82 ec eb                                      bl #0x30ed6c
007ee3c4  04 30 9d e5                                      ldr r3, [sp, #4]
007ee3c8  00 10 a0 e1                                      mov r1, r0
007ee3cc  03 00 a0 e1                                      mov r0, r3
007ee3d0  f3 81 ec eb                                      bl #0x30eba4
007ee3d4  08 20 9d e5                                      ldr r2, [sp, #8]
007ee3d8  00 10 a0 e1                                      mov r1, r0
007ee3dc  02 00 a0 e1                                      mov r0, r2
007ee3e0  ef 81 ec eb                                      bl #0x30eba4
007ee3e4  a4 10 94 e5                                      ldr r1, [r4, #0xa4]
007ee3e8  00 30 a0 e1                                      mov r3, r0
007ee3ec  08 00 a0 e1                                      mov r0, r8
007ee3f0  04 30 8d e5                                      str r3, [sp, #4]
007ee3f4  5c 82 ec eb                                      bl #0x30ed6c
007ee3f8  04 30 9d e5                                      ldr r3, [sp, #4]
007ee3fc  00 10 a0 e1                                      mov r1, r0
007ee400  03 00 a0 e1                                      mov r0, r3
007ee404  e6 81 ec eb                                      bl #0x30eba4
007ee408  c4 10 94 e5                                      ldr r1, [r4, #0xc4]
007ee40c  e6 7f ec eb                                      bl #0x30e3ac
007ee410  00 c0 9d e5                                      ldr ip, [sp]
007ee414  ac 30 94 e5                                      ldr r3, [r4, #0xac]
007ee418  00 10 a0 e1                                      mov r1, r0
007ee41c  0c 00 a0 e1                                      mov r0, ip
007ee420  1c 30 8d e5                                      str r3, [sp, #0x1c]
007ee424  50 82 ec eb                                      bl #0x30ed6c
007ee428  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
007ee42c  dc 81 ec eb                                      bl #0x30eba4
007ee430  10 00 8d e5                                      str r0, [sp, #0x10]
007ee434  c0 30 94 e5                                      ldr r3, [r4, #0xc0]
007ee438  03 10 a0 e1                                      mov r1, r3
007ee43c  04 30 8d e5                                      str r3, [sp, #4]
007ee440  b1 80 ec eb                                      bl #0x30e70c
007ee444  04 30 9d e5                                      ldr r3, [sp, #4]
007ee448  00 00 50 e3                                      cmp r0, #0
007ee44c  02 81 83 e2                                      add r8, r3, #0x80000000
007ee450  10 30 8d 05                                      streq r3, [sp, #0x10]
007ee454  10 10 9d e5                                      ldr r1, [sp, #0x10]
007ee458  08 00 a0 e1                                      mov r0, r8
007ee45c  a5 7f ec eb                                      bl #0x30e2f8
007ee460  00 00 50 e3                                      cmp r0, #0
007ee464  10 80 9d 05                                      ldreq r8, [sp, #0x10]
007ee468  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
007ee46c  08 00 a0 e1                                      mov r0, r8
007ee470  ac 80 84 e5                                      str r8, [r4, #0xac]
007ee474  cc 7f ec eb                                      bl #0x30e3ac
007ee478  00 10 97 e5                                      ldr r1, [r7]
007ee47c  3a 82 ec eb                                      bl #0x30ed6c
007ee480  00 80 a0 e1                                      mov r8, r0
007ee484  08 10 a0 e1                                      mov r1, r8
007ee488  0b 00 a0 e1                                      mov r0, fp
007ee48c  36 82 ec eb                                      bl #0x30ed6c
007ee490  18 10 9d e5                                      ldr r1, [sp, #0x18]
007ee494  04 00 8d e5                                      str r0, [sp, #4]
007ee498  33 82 ec eb                                      bl #0x30ed6c
007ee49c  00 10 a0 e1                                      mov r1, r0
007ee4a0  40 00 95 e5                                      ldr r0, [r5, #0x40]
007ee4a4  be 81 ec eb                                      bl #0x30eba4
007ee4a8  40 00 85 e5                                      str r0, [r5, #0x40]
007ee4ac  04 30 9d e5                                      ldr r3, [sp, #4]
007ee4b0  14 10 9d e5                                      ldr r1, [sp, #0x14]
007ee4b4  03 00 a0 e1                                      mov r0, r3
007ee4b8  2b 82 ec eb                                      bl #0x30ed6c
007ee4bc  00 10 a0 e1                                      mov r1, r0
007ee4c0  44 00 95 e5                                      ldr r0, [r5, #0x44]
007ee4c4  b6 81 ec eb                                      bl #0x30eba4
007ee4c8  08 10 a0 e1                                      mov r1, r8
007ee4cc  44 00 85 e5                                      str r0, [r5, #0x44]
007ee4d0  09 00 a0 e1                                      mov r0, sb
007ee4d4  24 82 ec eb                                      bl #0x30ed6c
007ee4d8  98 10 94 e5                                      ldr r1, [r4, #0x98]
007ee4dc  22 82 ec eb                                      bl #0x30ed6c
007ee4e0  00 10 a0 e1                                      mov r1, r0
007ee4e4  48 00 95 e5                                      ldr r0, [r5, #0x48]
007ee4e8  ad 81 ec eb                                      bl #0x30eba4
007ee4ec  48 00 85 e5                                      str r0, [r5, #0x48]
007ee4f0  08 10 a0 e1                                      mov r1, r8
007ee4f4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007ee4f8  1b 82 ec eb                                      bl #0x30ed6c
007ee4fc  a0 10 94 e5                                      ldr r1, [r4, #0xa0]
007ee500  04 00 8d e5                                      str r0, [sp, #4]
007ee504  18 82 ec eb                                      bl #0x30ed6c
007ee508  04 30 9d e5                                      ldr r3, [sp, #4]
007ee50c  00 20 a0 e1                                      mov r2, r0
007ee510  9c 10 94 e5                                      ldr r1, [r4, #0x9c]
007ee514  03 00 a0 e1                                      mov r0, r3
007ee518  08 20 8d e5                                      str r2, [sp, #8]
007ee51c  12 82 ec eb                                      bl #0x30ed6c
007ee520  00 10 a0 e1                                      mov r1, r0
007ee524  40 00 96 e5                                      ldr r0, [r6, #0x40]
007ee528  9d 81 ec eb                                      bl #0x30eba4
007ee52c  40 00 86 e5                                      str r0, [r6, #0x40]
007ee530  08 20 9d e5                                      ldr r2, [sp, #8]
007ee534  44 00 96 e5                                      ldr r0, [r6, #0x44]
007ee538  02 10 a0 e1                                      mov r1, r2
007ee53c  98 81 ec eb                                      bl #0x30eba4
007ee540  08 10 a0 e1                                      mov r1, r8
007ee544  44 00 86 e5                                      str r0, [r6, #0x44]
007ee548  0a 00 a0 e1                                      mov r0, sl
007ee54c  06 82 ec eb                                      bl #0x30ed6c
007ee550  a4 10 94 e5                                      ldr r1, [r4, #0xa4]
007ee554  04 82 ec eb                                      bl #0x30ed6c
007ee558  00 10 a0 e1                                      mov r1, r0
007ee55c  48 00 96 e5                                      ldr r0, [r6, #0x48]
007ee560  8f 81 ec eb                                      bl #0x30eba4
007ee564  48 00 86 e5                                      str r0, [r6, #0x48]
007ee568  c8 30 d4 e5                                      ldrb r3, [r4, #0xc8]
007ee56c  00 00 53 e3                                      cmp r3, #0
007ee570  81 00 00 0a                                      beq #0x7ee77c
007ee574  cc 80 94 e5                                      ldr r8, [r4, #0xcc]
007ee578  00 00 58 e3                                      cmp r8, #0
007ee57c  7e 00 00 0a                                      beq #0x7ee77c
007ee580  90 20 94 e5                                      ldr r2, [r4, #0x90]
007ee584  04 00 97 e5                                      ldr r0, [r7, #4]
007ee588  14 20 8d e5                                      str r2, [sp, #0x14]
007ee58c  40 30 95 e5                                      ldr r3, [r5, #0x40]
007ee590  02 01 80 e2                                      add r0, r0, #0x80000000
007ee594  10 30 8d e5                                      str r3, [sp, #0x10]
007ee598  a8 10 94 e5                                      ldr r1, [r4, #0xa8]
007ee59c  f2 81 ec eb                                      bl #0x30ed6c
007ee5a0  94 20 94 e5                                      ldr r2, [r4, #0x94]
007ee5a4  00 c0 a0 e1                                      mov ip, r0
007ee5a8  10 10 9d e5                                      ldr r1, [sp, #0x10]
007ee5ac  14 00 9d e5                                      ldr r0, [sp, #0x14]
007ee5b0  00 c0 8d e5                                      str ip, [sp]
007ee5b4  18 20 8d e5                                      str r2, [sp, #0x18]
007ee5b8  eb 81 ec eb                                      bl #0x30ed6c
007ee5bc  44 10 95 e5                                      ldr r1, [r5, #0x44]
007ee5c0  00 30 a0 e1                                      mov r3, r0
007ee5c4  18 00 9d e5                                      ldr r0, [sp, #0x18]
007ee5c8  04 30 8d e5                                      str r3, [sp, #4]
007ee5cc  e6 81 ec eb                                      bl #0x30ed6c
007ee5d0  04 30 9d e5                                      ldr r3, [sp, #4]
007ee5d4  00 10 a0 e1                                      mov r1, r0
007ee5d8  03 00 a0 e1                                      mov r0, r3
007ee5dc  70 81 ec eb                                      bl #0x30eba4
007ee5e0  98 10 94 e5                                      ldr r1, [r4, #0x98]
007ee5e4  00 30 a0 e1                                      mov r3, r0
007ee5e8  48 00 95 e5                                      ldr r0, [r5, #0x48]
007ee5ec  04 30 8d e5                                      str r3, [sp, #4]
007ee5f0  dd 81 ec eb                                      bl #0x30ed6c
007ee5f4  04 30 9d e5                                      ldr r3, [sp, #4]
007ee5f8  00 10 a0 e1                                      mov r1, r0
007ee5fc  03 00 a0 e1                                      mov r0, r3
007ee600  67 81 ec eb                                      bl #0x30eba4
007ee604  40 10 96 e5                                      ldr r1, [r6, #0x40]
007ee608  00 20 a0 e1                                      mov r2, r0
007ee60c  9c 00 94 e5                                      ldr r0, [r4, #0x9c]
007ee610  08 20 8d e5                                      str r2, [sp, #8]
007ee614  d4 81 ec eb                                      bl #0x30ed6c
007ee618  44 10 96 e5                                      ldr r1, [r6, #0x44]
007ee61c  00 30 a0 e1                                      mov r3, r0
007ee620  a0 00 94 e5                                      ldr r0, [r4, #0xa0]
007ee624  04 30 8d e5                                      str r3, [sp, #4]
007ee628  cf 81 ec eb                                      bl #0x30ed6c
007ee62c  04 30 9d e5                                      ldr r3, [sp, #4]
007ee630  00 10 a0 e1                                      mov r1, r0
007ee634  03 00 a0 e1                                      mov r0, r3
007ee638  59 81 ec eb                                      bl #0x30eba4
007ee63c  08 20 9d e5                                      ldr r2, [sp, #8]
007ee640  00 10 a0 e1                                      mov r1, r0
007ee644  02 00 a0 e1                                      mov r0, r2
007ee648  55 81 ec eb                                      bl #0x30eba4
007ee64c  a4 10 94 e5                                      ldr r1, [r4, #0xa4]
007ee650  00 30 a0 e1                                      mov r3, r0
007ee654  48 00 96 e5                                      ldr r0, [r6, #0x48]
007ee658  04 30 8d e5                                      str r3, [sp, #4]
007ee65c  c2 81 ec eb                                      bl #0x30ed6c
007ee660  04 30 9d e5                                      ldr r3, [sp, #4]
007ee664  00 10 a0 e1                                      mov r1, r0
007ee668  03 00 a0 e1                                      mov r0, r3
007ee66c  4c 81 ec eb                                      bl #0x30eba4
007ee670  00 c0 9d e5                                      ldr ip, [sp]
007ee674  00 10 a0 e1                                      mov r1, r0
007ee678  0c 00 a0 e1                                      mov r0, ip
007ee67c  ba 81 ec eb                                      bl #0x30ed6c
007ee680  03 00 58 e3                                      cmp r8, #3
007ee684  00 30 a0 e1                                      mov r3, r0
007ee688  5b 00 00 0a                                      beq #0x7ee7fc
007ee68c  01 00 58 e3                                      cmp r8, #1
007ee690  3b 00 00 0a                                      beq #0x7ee784
007ee694  02 00 58 e3                                      cmp r8, #2
007ee698  4b 00 00 0a                                      beq #0x7ee7cc
007ee69c  03 00 a0 e1                                      mov r0, r3
007ee6a0  00 10 97 e5                                      ldr r1, [r7]
007ee6a4  b0 81 ec eb                                      bl #0x30ed6c
007ee6a8  00 70 a0 e1                                      mov r7, r0
007ee6ac  07 10 a0 e1                                      mov r1, r7
007ee6b0  0b 00 a0 e1                                      mov r0, fp
007ee6b4  ac 81 ec eb                                      bl #0x30ed6c
007ee6b8  14 10 9d e5                                      ldr r1, [sp, #0x14]
007ee6bc  00 80 a0 e1                                      mov r8, r0
007ee6c0  a9 81 ec eb                                      bl #0x30ed6c
007ee6c4  10 10 9d e5                                      ldr r1, [sp, #0x10]
007ee6c8  35 81 ec eb                                      bl #0x30eba4
007ee6cc  40 00 85 e5                                      str r0, [r5, #0x40]
007ee6d0  18 10 9d e5                                      ldr r1, [sp, #0x18]
007ee6d4  08 00 a0 e1                                      mov r0, r8
007ee6d8  a3 81 ec eb                                      bl #0x30ed6c
007ee6dc  00 10 a0 e1                                      mov r1, r0
007ee6e0  44 00 95 e5                                      ldr r0, [r5, #0x44]
007ee6e4  2e 81 ec eb                                      bl #0x30eba4
007ee6e8  07 10 a0 e1                                      mov r1, r7
007ee6ec  44 00 85 e5                                      str r0, [r5, #0x44]
007ee6f0  09 00 a0 e1                                      mov r0, sb
007ee6f4  9c 81 ec eb                                      bl #0x30ed6c
007ee6f8  98 10 94 e5                                      ldr r1, [r4, #0x98]
007ee6fc  9a 81 ec eb                                      bl #0x30ed6c
007ee700  00 10 a0 e1                                      mov r1, r0
007ee704  48 00 95 e5                                      ldr r0, [r5, #0x48]
007ee708  25 81 ec eb                                      bl #0x30eba4
007ee70c  48 00 85 e5                                      str r0, [r5, #0x48]
007ee710  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007ee714  07 10 a0 e1                                      mov r1, r7
007ee718  93 81 ec eb                                      bl #0x30ed6c
007ee71c  a0 10 94 e5                                      ldr r1, [r4, #0xa0]
007ee720  00 80 a0 e1                                      mov r8, r0
007ee724  90 81 ec eb                                      bl #0x30ed6c
007ee728  9c 10 94 e5                                      ldr r1, [r4, #0x9c]
007ee72c  00 50 a0 e1                                      mov r5, r0
007ee730  08 00 a0 e1                                      mov r0, r8
007ee734  8c 81 ec eb                                      bl #0x30ed6c
007ee738  00 10 a0 e1                                      mov r1, r0
007ee73c  40 00 96 e5                                      ldr r0, [r6, #0x40]
007ee740  17 81 ec eb                                      bl #0x30eba4
007ee744  05 10 a0 e1                                      mov r1, r5
007ee748  40 00 86 e5                                      str r0, [r6, #0x40]
007ee74c  44 00 96 e5                                      ldr r0, [r6, #0x44]
007ee750  13 81 ec eb                                      bl #0x30eba4
007ee754  07 10 a0 e1                                      mov r1, r7
007ee758  44 00 86 e5                                      str r0, [r6, #0x44]
007ee75c  0a 00 a0 e1                                      mov r0, sl
007ee760  81 81 ec eb                                      bl #0x30ed6c
007ee764  a4 10 94 e5                                      ldr r1, [r4, #0xa4]
007ee768  7f 81 ec eb                                      bl #0x30ed6c
007ee76c  00 10 a0 e1                                      mov r1, r0
007ee770  48 00 96 e5                                      ldr r0, [r6, #0x48]
007ee774  0a 81 ec eb                                      bl #0x30eba4
007ee778  48 00 86 e5                                      str r0, [r6, #0x48]
007ee77c  24 d0 8d e2                                      add sp, sp, #0x24
007ee780  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007ee784  b0 30 94 e5                                      ldr r3, [r4, #0xb0]
007ee788  03 10 a0 e1                                      mov r1, r3
007ee78c  04 30 8d e5                                      str r3, [sp, #4]
007ee790  03 81 ec eb                                      bl #0x30eba4
007ee794  00 10 a0 e3                                      mov r1, #0
007ee798  00 80 a0 e1                                      mov r8, r0
007ee79c  d5 7e ec eb                                      bl #0x30e2f8
007ee7a0  00 00 50 e3                                      cmp r0, #0
007ee7a4  04 30 9d e5                                      ldr r3, [sp, #4]
007ee7a8  11 00 00 0a                                      beq #0x7ee7f4
007ee7ac  03 10 a0 e1                                      mov r1, r3
007ee7b0  b0 80 84 e5                                      str r8, [r4, #0xb0]
007ee7b4  08 00 a0 e1                                      mov r0, r8
007ee7b8  fb 7e ec eb                                      bl #0x30e3ac
007ee7bc  40 20 95 e5                                      ldr r2, [r5, #0x40]
007ee7c0  00 30 a0 e1                                      mov r3, r0
007ee7c4  10 20 8d e5                                      str r2, [sp, #0x10]
007ee7c8  b3 ff ff ea                                      b #0x7ee69c
007ee7cc  b0 30 94 e5                                      ldr r3, [r4, #0xb0]
007ee7d0  03 10 a0 e1                                      mov r1, r3
007ee7d4  04 30 8d e5                                      str r3, [sp, #4]
007ee7d8  f1 80 ec eb                                      bl #0x30eba4
007ee7dc  00 10 a0 e3                                      mov r1, #0
007ee7e0  00 80 a0 e1                                      mov r8, r0
007ee7e4  c8 7f ec eb                                      bl #0x30e70c
007ee7e8  00 00 50 e3                                      cmp r0, #0
007ee7ec  04 30 9d e5                                      ldr r3, [sp, #4]
007ee7f0  ed ff ff 1a                                      bne #0x7ee7ac
007ee7f4  00 80 a0 e3                                      mov r8, #0
007ee7f8  eb ff ff ea                                      b #0x7ee7ac
007ee7fc  b0 00 94 e5                                      ldr r0, [r4, #0xb0]
007ee800  03 10 a0 e1                                      mov r1, r3
007ee804  04 30 8d e5                                      str r3, [sp, #4]
007ee808  e5 80 ec eb                                      bl #0x30eba4
007ee80c  b0 00 84 e5                                      str r0, [r4, #0xb0]
007ee810  40 20 95 e5                                      ldr r2, [r5, #0x40]
007ee814  04 30 9d e5                                      ldr r3, [sp, #4]
007ee818  10 20 8d e5                                      str r2, [sp, #0x10]
007ee81c  9e ff ff ea                                      b #0x7ee69c

; FUNCTION 0x007ee820, declared_size=144, range_size=144, mode=arm
; class-group: b2PrismaticJoint
; alias: _ZNK16b2PrismaticJoint10GetAnchor1Ev
; demangled: b2PrismaticJoint::GetAnchor1() const
; decoder-mode: arm
007ee820  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007ee824  30 40 91 e5                                      ldr r4, [r1, #0x30]
007ee828  44 70 91 e5                                      ldr r7, [r1, #0x44]
007ee82c  48 60 91 e5                                      ldr r6, [r1, #0x48]
007ee830  00 50 a0 e1                                      mov r5, r0
007ee834  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007ee838  07 00 a0 e1                                      mov r0, r7
007ee83c  4a 81 ec eb                                      bl #0x30ed6c
007ee840  14 10 94 e5                                      ldr r1, [r4, #0x14]
007ee844  00 80 a0 e1                                      mov r8, r0
007ee848  06 00 a0 e1                                      mov r0, r6
007ee84c  46 81 ec eb                                      bl #0x30ed6c
007ee850  00 10 a0 e1                                      mov r1, r0
007ee854  08 00 a0 e1                                      mov r0, r8
007ee858  d1 80 ec eb                                      bl #0x30eba4
007ee85c  10 10 94 e5                                      ldr r1, [r4, #0x10]
007ee860  00 80 a0 e1                                      mov r8, r0
007ee864  07 00 a0 e1                                      mov r0, r7
007ee868  3f 81 ec eb                                      bl #0x30ed6c
007ee86c  18 10 94 e5                                      ldr r1, [r4, #0x18]
007ee870  00 70 a0 e1                                      mov r7, r0
007ee874  06 00 a0 e1                                      mov r0, r6
007ee878  3b 81 ec eb                                      bl #0x30ed6c
007ee87c  00 10 a0 e1                                      mov r1, r0
007ee880  07 00 a0 e1                                      mov r0, r7
007ee884  c6 80 ec eb                                      bl #0x30eba4
007ee888  08 10 94 e5                                      ldr r1, [r4, #8]
007ee88c  c4 80 ec eb                                      bl #0x30eba4
007ee890  04 10 94 e5                                      ldr r1, [r4, #4]
007ee894  00 60 a0 e1                                      mov r6, r0
007ee898  08 00 a0 e1                                      mov r0, r8
007ee89c  c0 80 ec eb                                      bl #0x30eba4
007ee8a0  04 60 85 e5                                      str r6, [r5, #4]
007ee8a4  00 00 85 e5                                      str r0, [r5]
007ee8a8  05 00 a0 e1                                      mov r0, r5
007ee8ac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007ee8b0, declared_size=144, range_size=144, mode=arm
; class-group: b2PrismaticJoint
; alias: _ZNK16b2PrismaticJoint10GetAnchor2Ev
; demangled: b2PrismaticJoint::GetAnchor2() const
; decoder-mode: arm
007ee8b0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007ee8b4  34 40 91 e5                                      ldr r4, [r1, #0x34]
007ee8b8  4c 70 91 e5                                      ldr r7, [r1, #0x4c]
007ee8bc  50 60 91 e5                                      ldr r6, [r1, #0x50]
007ee8c0  00 50 a0 e1                                      mov r5, r0
007ee8c4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007ee8c8  07 00 a0 e1                                      mov r0, r7
007ee8cc  26 81 ec eb                                      bl #0x30ed6c
007ee8d0  14 10 94 e5                                      ldr r1, [r4, #0x14]
007ee8d4  00 80 a0 e1                                      mov r8, r0
007ee8d8  06 00 a0 e1                                      mov r0, r6
007ee8dc  22 81 ec eb                                      bl #0x30ed6c
007ee8e0  00 10 a0 e1                                      mov r1, r0
007ee8e4  08 00 a0 e1                                      mov r0, r8
007ee8e8  ad 80 ec eb                                      bl #0x30eba4
007ee8ec  10 10 94 e5                                      ldr r1, [r4, #0x10]
007ee8f0  00 80 a0 e1                                      mov r8, r0
007ee8f4  07 00 a0 e1                                      mov r0, r7
007ee8f8  1b 81 ec eb                                      bl #0x30ed6c
007ee8fc  18 10 94 e5                                      ldr r1, [r4, #0x18]
007ee900  00 70 a0 e1                                      mov r7, r0
007ee904  06 00 a0 e1                                      mov r0, r6
007ee908  17 81 ec eb                                      bl #0x30ed6c
007ee90c  00 10 a0 e1                                      mov r1, r0
007ee910  07 00 a0 e1                                      mov r0, r7
007ee914  a2 80 ec eb                                      bl #0x30eba4
007ee918  08 10 94 e5                                      ldr r1, [r4, #8]
007ee91c  a0 80 ec eb                                      bl #0x30eba4
007ee920  04 10 94 e5                                      ldr r1, [r4, #4]
007ee924  00 60 a0 e1                                      mov r6, r0
007ee928  08 00 a0 e1                                      mov r0, r8
007ee92c  9c 80 ec eb                                      bl #0x30eba4
007ee930  04 60 85 e5                                      str r6, [r5, #4]
007ee934  00 00 85 e5                                      str r0, [r5]
007ee938  05 00 a0 e1                                      mov r0, r5
007ee93c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007ee940, declared_size=364, range_size=364, mode=arm
; class-group: b2PrismaticJoint
; alias: _ZNK16b2PrismaticJoint16GetReactionForceEv
; demangled: b2PrismaticJoint::GetReactionForce() const
; decoder-mode: arm
007ee940  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007ee944  30 70 91 e5                                      ldr r7, [r1, #0x30]
007ee948  54 b0 91 e5                                      ldr fp, [r1, #0x54]
007ee94c  0c d0 4d e2                                      sub sp, sp, #0xc
007ee950  0c 60 97 e5                                      ldr r6, [r7, #0xc]
007ee954  58 80 91 e5                                      ldr r8, [r1, #0x58]
007ee958  01 40 a0 e1                                      mov r4, r1
007ee95c  00 50 a0 e1                                      mov r5, r0
007ee960  0b 10 a0 e1                                      mov r1, fp
007ee964  06 00 a0 e1                                      mov r0, r6
007ee968  ff 80 ec eb                                      bl #0x30ed6c
007ee96c  14 90 97 e5                                      ldr sb, [r7, #0x14]
007ee970  00 a0 a0 e1                                      mov sl, r0
007ee974  08 10 a0 e1                                      mov r1, r8
007ee978  09 00 a0 e1                                      mov r0, sb
007ee97c  fa 80 ec eb                                      bl #0x30ed6c
007ee980  00 10 a0 e1                                      mov r1, r0
007ee984  0a 00 a0 e1                                      mov r0, sl
007ee988  85 80 ec eb                                      bl #0x30eba4
007ee98c  10 a0 97 e5                                      ldr sl, [r7, #0x10]
007ee990  00 20 a0 e1                                      mov r2, r0
007ee994  0b 00 a0 e1                                      mov r0, fp
007ee998  0a 10 a0 e1                                      mov r1, sl
007ee99c  18 70 97 e5                                      ldr r7, [r7, #0x18]
007ee9a0  00 20 8d e5                                      str r2, [sp]
007ee9a4  f0 80 ec eb                                      bl #0x30ed6c
007ee9a8  07 10 a0 e1                                      mov r1, r7
007ee9ac  00 b0 a0 e1                                      mov fp, r0
007ee9b0  08 00 a0 e1                                      mov r0, r8
007ee9b4  ec 80 ec eb                                      bl #0x30ed6c
007ee9b8  00 10 a0 e1                                      mov r1, r0
007ee9bc  0b 00 a0 e1                                      mov r0, fp
007ee9c0  77 80 ec eb                                      bl #0x30eba4
007ee9c4  5c 80 94 e5                                      ldr r8, [r4, #0x5c]
007ee9c8  00 30 a0 e1                                      mov r3, r0
007ee9cc  06 00 a0 e1                                      mov r0, r6
007ee9d0  08 10 a0 e1                                      mov r1, r8
007ee9d4  60 60 94 e5                                      ldr r6, [r4, #0x60]
007ee9d8  04 30 8d e5                                      str r3, [sp, #4]
007ee9dc  e2 80 ec eb                                      bl #0x30ed6c
007ee9e0  06 10 a0 e1                                      mov r1, r6
007ee9e4  00 b0 a0 e1                                      mov fp, r0
007ee9e8  09 00 a0 e1                                      mov r0, sb
007ee9ec  de 80 ec eb                                      bl #0x30ed6c
007ee9f0  00 10 a0 e1                                      mov r1, r0
007ee9f4  0b 00 a0 e1                                      mov r0, fp
007ee9f8  69 80 ec eb                                      bl #0x30eba4
007ee9fc  08 10 a0 e1                                      mov r1, r8
007eea00  00 90 a0 e1                                      mov sb, r0
007eea04  0a 00 a0 e1                                      mov r0, sl
007eea08  d7 80 ec eb                                      bl #0x30ed6c
007eea0c  06 10 a0 e1                                      mov r1, r6
007eea10  00 80 a0 e1                                      mov r8, r0
007eea14  07 00 a0 e1                                      mov r0, r7
007eea18  d3 80 ec eb                                      bl #0x30ed6c
007eea1c  00 10 a0 e1                                      mov r1, r0
007eea20  08 00 a0 e1                                      mov r0, r8
007eea24  5e 80 ec eb                                      bl #0x30eba4
007eea28  00 20 9d e5                                      ldr r2, [sp]
007eea2c  b0 60 94 e5                                      ldr r6, [r4, #0xb0]
007eea30  00 70 a0 e1                                      mov r7, r0
007eea34  02 10 a0 e1                                      mov r1, r2
007eea38  06 00 a0 e1                                      mov r0, r6
007eea3c  ca 80 ec eb                                      bl #0x30ed6c
007eea40  04 30 9d e5                                      ldr r3, [sp, #4]
007eea44  00 80 a0 e1                                      mov r8, r0
007eea48  06 00 a0 e1                                      mov r0, r6
007eea4c  03 10 a0 e1                                      mov r1, r3
007eea50  c5 80 ec eb                                      bl #0x30ed6c
007eea54  84 40 94 e5                                      ldr r4, [r4, #0x84]
007eea58  00 60 a0 e1                                      mov r6, r0
007eea5c  09 10 a0 e1                                      mov r1, sb
007eea60  04 00 a0 e1                                      mov r0, r4
007eea64  c0 80 ec eb                                      bl #0x30ed6c
007eea68  07 10 a0 e1                                      mov r1, r7
007eea6c  00 a0 a0 e1                                      mov sl, r0
007eea70  04 00 a0 e1                                      mov r0, r4
007eea74  bc 80 ec eb                                      bl #0x30ed6c
007eea78  0a 10 a0 e1                                      mov r1, sl
007eea7c  00 70 a0 e1                                      mov r7, r0
007eea80  08 00 a0 e1                                      mov r0, r8
007eea84  46 80 ec eb                                      bl #0x30eba4
007eea88  07 10 a0 e1                                      mov r1, r7
007eea8c  00 40 a0 e1                                      mov r4, r0
007eea90  06 00 a0 e1                                      mov r0, r6
007eea94  42 80 ec eb                                      bl #0x30eba4
007eea98  00 40 85 e5                                      str r4, [r5]
007eea9c  04 00 85 e5                                      str r0, [r5, #4]
007eeaa0  05 00 a0 e1                                      mov r0, r5
007eeaa4  0c d0 8d e2                                      add sp, sp, #0xc
007eeaa8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x007eeaac, declared_size=8, range_size=8, mode=arm
; class-group: b2PrismaticJoint
; alias: _ZNK16b2PrismaticJoint17GetReactionTorqueEv
; demangled: b2PrismaticJoint::GetReactionTorque() const
; decoder-mode: arm
007eeaac  8c 00 90 e5                                      ldr r0, [r0, #0x8c]
007eeab0  1e ff 2f e1                                      bx lr

; FUNCTION 0x007eeab4, declared_size=480, range_size=480, mode=arm
; class-group: b2PrismaticJoint
; alias: _ZNK16b2PrismaticJoint19GetJointTranslationEv
; demangled: b2PrismaticJoint::GetJointTranslation() const
; decoder-mode: arm
007eeab4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007eeab8  30 50 90 e5                                      ldr r5, [r0, #0x30]
007eeabc  44 60 90 e5                                      ldr r6, [r0, #0x44]
007eeac0  0c d0 4d e2                                      sub sp, sp, #0xc
007eeac4  0c a0 95 e5                                      ldr sl, [r5, #0xc]
007eeac8  48 90 90 e5                                      ldr sb, [r0, #0x48]
007eeacc  00 40 a0 e1                                      mov r4, r0
007eead0  06 10 a0 e1                                      mov r1, r6
007eead4  0a 00 a0 e1                                      mov r0, sl
007eead8  a3 80 ec eb                                      bl #0x30ed6c
007eeadc  14 80 95 e5                                      ldr r8, [r5, #0x14]
007eeae0  00 70 a0 e1                                      mov r7, r0
007eeae4  09 10 a0 e1                                      mov r1, sb
007eeae8  08 00 a0 e1                                      mov r0, r8
007eeaec  9e 80 ec eb                                      bl #0x30ed6c
007eeaf0  00 10 a0 e1                                      mov r1, r0
007eeaf4  07 00 a0 e1                                      mov r0, r7
007eeaf8  29 80 ec eb                                      bl #0x30eba4
007eeafc  10 70 95 e5                                      ldr r7, [r5, #0x10]
007eeb00  00 30 a0 e1                                      mov r3, r0
007eeb04  06 00 a0 e1                                      mov r0, r6
007eeb08  07 10 a0 e1                                      mov r1, r7
007eeb0c  18 60 95 e5                                      ldr r6, [r5, #0x18]
007eeb10  00 30 8d e5                                      str r3, [sp]
007eeb14  94 80 ec eb                                      bl #0x30ed6c
007eeb18  06 10 a0 e1                                      mov r1, r6
007eeb1c  00 b0 a0 e1                                      mov fp, r0
007eeb20  09 00 a0 e1                                      mov r0, sb
007eeb24  90 80 ec eb                                      bl #0x30ed6c
007eeb28  00 10 a0 e1                                      mov r1, r0
007eeb2c  0b 00 a0 e1                                      mov r0, fp
007eeb30  1b 80 ec eb                                      bl #0x30eba4
007eeb34  00 30 9d e5                                      ldr r3, [sp]
007eeb38  04 10 95 e5                                      ldr r1, [r5, #4]
007eeb3c  00 90 a0 e1                                      mov sb, r0
007eeb40  03 00 a0 e1                                      mov r0, r3
007eeb44  16 80 ec eb                                      bl #0x30eba4
007eeb48  08 10 95 e5                                      ldr r1, [r5, #8]
007eeb4c  00 20 a0 e1                                      mov r2, r0
007eeb50  09 00 a0 e1                                      mov r0, sb
007eeb54  34 50 94 e5                                      ldr r5, [r4, #0x34]
007eeb58  04 20 8d e5                                      str r2, [sp, #4]
007eeb5c  10 80 ec eb                                      bl #0x30eba4
007eeb60  4c 90 94 e5                                      ldr sb, [r4, #0x4c]
007eeb64  00 30 a0 e1                                      mov r3, r0
007eeb68  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007eeb6c  09 00 a0 e1                                      mov r0, sb
007eeb70  00 30 8d e5                                      str r3, [sp]
007eeb74  7c 80 ec eb                                      bl #0x30ed6c
007eeb78  14 10 95 e5                                      ldr r1, [r5, #0x14]
007eeb7c  00 b0 a0 e1                                      mov fp, r0
007eeb80  50 00 94 e5                                      ldr r0, [r4, #0x50]
007eeb84  78 80 ec eb                                      bl #0x30ed6c
007eeb88  00 10 a0 e1                                      mov r1, r0
007eeb8c  0b 00 a0 e1                                      mov r0, fp
007eeb90  03 80 ec eb                                      bl #0x30eba4
007eeb94  10 10 95 e5                                      ldr r1, [r5, #0x10]
007eeb98  00 b0 a0 e1                                      mov fp, r0
007eeb9c  09 00 a0 e1                                      mov r0, sb
007eeba0  71 80 ec eb                                      bl #0x30ed6c
007eeba4  18 10 95 e5                                      ldr r1, [r5, #0x18]
007eeba8  00 90 a0 e1                                      mov sb, r0
007eebac  50 00 94 e5                                      ldr r0, [r4, #0x50]
007eebb0  6d 80 ec eb                                      bl #0x30ed6c
007eebb4  00 10 a0 e1                                      mov r1, r0
007eebb8  09 00 a0 e1                                      mov r0, sb
007eebbc  f8 7f ec eb                                      bl #0x30eba4
007eebc0  04 10 95 e5                                      ldr r1, [r5, #4]
007eebc4  00 90 a0 e1                                      mov sb, r0
007eebc8  0b 00 a0 e1                                      mov r0, fp
007eebcc  f4 7f ec eb                                      bl #0x30eba4
007eebd0  08 10 95 e5                                      ldr r1, [r5, #8]
007eebd4  00 b0 a0 e1                                      mov fp, r0
007eebd8  09 00 a0 e1                                      mov r0, sb
007eebdc  f0 7f ec eb                                      bl #0x30eba4
007eebe0  04 20 9d e5                                      ldr r2, [sp, #4]
007eebe4  00 50 a0 e1                                      mov r5, r0
007eebe8  0b 00 a0 e1                                      mov r0, fp
007eebec  02 10 a0 e1                                      mov r1, r2
007eebf0  ed 7d ec eb                                      bl #0x30e3ac
007eebf4  00 30 9d e5                                      ldr r3, [sp]
007eebf8  00 90 a0 e1                                      mov sb, r0
007eebfc  05 00 a0 e1                                      mov r0, r5
007eec00  03 10 a0 e1                                      mov r1, r3
007eec04  e8 7d ec eb                                      bl #0x30e3ac
007eec08  54 50 94 e5                                      ldr r5, [r4, #0x54]
007eec0c  00 b0 a0 e1                                      mov fp, r0
007eec10  0a 00 a0 e1                                      mov r0, sl
007eec14  05 10 a0 e1                                      mov r1, r5
007eec18  53 80 ec eb                                      bl #0x30ed6c
007eec1c  58 40 94 e5                                      ldr r4, [r4, #0x58]
007eec20  00 a0 a0 e1                                      mov sl, r0
007eec24  08 00 a0 e1                                      mov r0, r8
007eec28  04 10 a0 e1                                      mov r1, r4
007eec2c  4e 80 ec eb                                      bl #0x30ed6c
007eec30  00 10 a0 e1                                      mov r1, r0
007eec34  0a 00 a0 e1                                      mov r0, sl
007eec38  d9 7f ec eb                                      bl #0x30eba4
007eec3c  00 10 a0 e1                                      mov r1, r0
007eec40  09 00 a0 e1                                      mov r0, sb
007eec44  48 80 ec eb                                      bl #0x30ed6c
007eec48  05 10 a0 e1                                      mov r1, r5
007eec4c  00 80 a0 e1                                      mov r8, r0
007eec50  07 00 a0 e1                                      mov r0, r7
007eec54  44 80 ec eb                                      bl #0x30ed6c
007eec58  04 10 a0 e1                                      mov r1, r4
007eec5c  00 50 a0 e1                                      mov r5, r0
007eec60  06 00 a0 e1                                      mov r0, r6
007eec64  40 80 ec eb                                      bl #0x30ed6c
007eec68  00 10 a0 e1                                      mov r1, r0
007eec6c  05 00 a0 e1                                      mov r0, r5
007eec70  cb 7f ec eb                                      bl #0x30eba4
007eec74  00 10 a0 e1                                      mov r1, r0
007eec78  0b 00 a0 e1                                      mov r0, fp
007eec7c  3a 80 ec eb                                      bl #0x30ed6c
007eec80  00 10 a0 e1                                      mov r1, r0
007eec84  08 00 a0 e1                                      mov r0, r8
007eec88  c5 7f ec eb                                      bl #0x30eba4
007eec8c  0c d0 8d e2                                      add sp, sp, #0xc
007eec90  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x007eec94, declared_size=784, range_size=784, mode=arm
; class-group: b2PrismaticJoint
; alias: _ZNK16b2PrismaticJoint13GetJointSpeedEv
; demangled: b2PrismaticJoint::GetJointSpeed() const
; decoder-mode: arm
007eec94  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007eec98  30 40 90 e5                                      ldr r4, [r0, #0x30]
007eec9c  14 d0 4d e2                                      sub sp, sp, #0x14
007eeca0  00 60 a0 e1                                      mov r6, r0
007eeca4  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
007eeca8  44 00 90 e5                                      ldr r0, [r0, #0x44]
007eecac  be 7d ec eb                                      bl #0x30e3ac
007eecb0  20 10 94 e5                                      ldr r1, [r4, #0x20]
007eecb4  00 80 a0 e1                                      mov r8, r0
007eecb8  48 00 96 e5                                      ldr r0, [r6, #0x48]
007eecbc  ba 7d ec eb                                      bl #0x30e3ac
007eecc0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
007eecc4  00 70 a0 e1                                      mov r7, r0
007eecc8  08 00 a0 e1                                      mov r0, r8
007eeccc  02 10 a0 e1                                      mov r1, r2
007eecd0  34 50 96 e5                                      ldr r5, [r6, #0x34]
007eecd4  04 20 8d e5                                      str r2, [sp, #4]
007eecd8  23 80 ec eb                                      bl #0x30ed6c
007eecdc  14 10 94 e5                                      ldr r1, [r4, #0x14]
007eece0  00 a0 a0 e1                                      mov sl, r0
007eece4  07 00 a0 e1                                      mov r0, r7
007eece8  1f 80 ec eb                                      bl #0x30ed6c
007eecec  00 10 a0 e1                                      mov r1, r0
007eecf0  0a 00 a0 e1                                      mov r0, sl
007eecf4  aa 7f ec eb                                      bl #0x30eba4
007eecf8  08 00 8d e5                                      str r0, [sp, #8]
007eecfc  10 10 94 e5                                      ldr r1, [r4, #0x10]
007eed00  08 00 a0 e1                                      mov r0, r8
007eed04  18 80 ec eb                                      bl #0x30ed6c
007eed08  18 10 94 e5                                      ldr r1, [r4, #0x18]
007eed0c  00 80 a0 e1                                      mov r8, r0
007eed10  07 00 a0 e1                                      mov r0, r7
007eed14  14 80 ec eb                                      bl #0x30ed6c
007eed18  00 10 a0 e1                                      mov r1, r0
007eed1c  08 00 a0 e1                                      mov r0, r8
007eed20  9f 7f ec eb                                      bl #0x30eba4
007eed24  0c 00 8d e5                                      str r0, [sp, #0xc]
007eed28  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
007eed2c  4c 00 96 e5                                      ldr r0, [r6, #0x4c]
007eed30  9d 7d ec eb                                      bl #0x30e3ac
007eed34  20 10 95 e5                                      ldr r1, [r5, #0x20]
007eed38  00 a0 a0 e1                                      mov sl, r0
007eed3c  50 00 96 e5                                      ldr r0, [r6, #0x50]
007eed40  99 7d ec eb                                      bl #0x30e3ac
007eed44  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007eed48  00 80 a0 e1                                      mov r8, r0
007eed4c  0a 00 a0 e1                                      mov r0, sl
007eed50  05 80 ec eb                                      bl #0x30ed6c
007eed54  14 10 95 e5                                      ldr r1, [r5, #0x14]
007eed58  00 70 a0 e1                                      mov r7, r0
007eed5c  08 00 a0 e1                                      mov r0, r8
007eed60  01 80 ec eb                                      bl #0x30ed6c
007eed64  00 10 a0 e1                                      mov r1, r0
007eed68  07 00 a0 e1                                      mov r0, r7
007eed6c  8c 7f ec eb                                      bl #0x30eba4
007eed70  10 10 95 e5                                      ldr r1, [r5, #0x10]
007eed74  00 70 a0 e1                                      mov r7, r0
007eed78  0a 00 a0 e1                                      mov r0, sl
007eed7c  fa 7f ec eb                                      bl #0x30ed6c
007eed80  18 10 95 e5                                      ldr r1, [r5, #0x18]
007eed84  00 a0 a0 e1                                      mov sl, r0
007eed88  08 00 a0 e1                                      mov r0, r8
007eed8c  f6 7f ec eb                                      bl #0x30ed6c
007eed90  00 10 a0 e1                                      mov r1, r0
007eed94  0a 00 a0 e1                                      mov r0, sl
007eed98  81 7f ec eb                                      bl #0x30eba4
007eed9c  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
007eeda0  00 80 a0 e1                                      mov r8, r0
007eeda4  08 00 9d e5                                      ldr r0, [sp, #8]
007eeda8  7d 7f ec eb                                      bl #0x30eba4
007eedac  30 10 94 e5                                      ldr r1, [r4, #0x30]
007eedb0  00 90 a0 e1                                      mov sb, r0
007eedb4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007eedb8  79 7f ec eb                                      bl #0x30eba4
007eedbc  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
007eedc0  00 30 a0 e1                                      mov r3, r0
007eedc4  07 00 a0 e1                                      mov r0, r7
007eedc8  00 30 8d e5                                      str r3, [sp]
007eedcc  74 7f ec eb                                      bl #0x30eba4
007eedd0  30 10 95 e5                                      ldr r1, [r5, #0x30]
007eedd4  00 b0 a0 e1                                      mov fp, r0
007eedd8  08 00 a0 e1                                      mov r0, r8
007eeddc  70 7f ec eb                                      bl #0x30eba4
007eede0  09 10 a0 e1                                      mov r1, sb
007eede4  00 a0 a0 e1                                      mov sl, r0
007eede8  0b 00 a0 e1                                      mov r0, fp
007eedec  6e 7d ec eb                                      bl #0x30e3ac
007eedf0  00 30 9d e5                                      ldr r3, [sp]
007eedf4  00 b0 a0 e1                                      mov fp, r0
007eedf8  0a 00 a0 e1                                      mov r0, sl
007eedfc  03 10 a0 e1                                      mov r1, r3
007eee00  69 7d ec eb                                      bl #0x30e3ac
007eee04  04 20 9d e5                                      ldr r2, [sp, #4]
007eee08  54 90 96 e5                                      ldr sb, [r6, #0x54]
007eee0c  00 c0 a0 e1                                      mov ip, r0
007eee10  02 00 a0 e1                                      mov r0, r2
007eee14  09 10 a0 e1                                      mov r1, sb
007eee18  58 60 96 e5                                      ldr r6, [r6, #0x58]
007eee1c  04 c0 8d e5                                      str ip, [sp, #4]
007eee20  d1 7f ec eb                                      bl #0x30ed6c
007eee24  06 10 a0 e1                                      mov r1, r6
007eee28  00 a0 a0 e1                                      mov sl, r0
007eee2c  14 00 94 e5                                      ldr r0, [r4, #0x14]
007eee30  cd 7f ec eb                                      bl #0x30ed6c
007eee34  00 10 a0 e1                                      mov r1, r0
007eee38  0a 00 a0 e1                                      mov r0, sl
007eee3c  58 7f ec eb                                      bl #0x30eba4
007eee40  09 10 a0 e1                                      mov r1, sb
007eee44  00 a0 a0 e1                                      mov sl, r0
007eee48  10 00 94 e5                                      ldr r0, [r4, #0x10]
007eee4c  c6 7f ec eb                                      bl #0x30ed6c
007eee50  06 10 a0 e1                                      mov r1, r6
007eee54  00 90 a0 e1                                      mov sb, r0
007eee58  18 00 94 e5                                      ldr r0, [r4, #0x18]
007eee5c  c2 7f ec eb                                      bl #0x30ed6c
007eee60  00 10 a0 e1                                      mov r1, r0
007eee64  09 00 a0 e1                                      mov r0, sb
007eee68  4d 7f ec eb                                      bl #0x30eba4
007eee6c  48 60 94 e5                                      ldr r6, [r4, #0x48]
007eee70  00 00 8d e5                                      str r0, [sp]
007eee74  02 91 86 e2                                      add sb, r6, #0x80000000
007eee78  09 10 a0 e1                                      mov r1, sb
007eee7c  ba 7f ec eb                                      bl #0x30ed6c
007eee80  00 10 a0 e1                                      mov r1, r0
007eee84  0b 00 a0 e1                                      mov r0, fp
007eee88  b7 7f ec eb                                      bl #0x30ed6c
007eee8c  0a 10 a0 e1                                      mov r1, sl
007eee90  00 b0 a0 e1                                      mov fp, r0
007eee94  06 00 a0 e1                                      mov r0, r6
007eee98  b3 7f ec eb                                      bl #0x30ed6c
007eee9c  04 c0 9d e5                                      ldr ip, [sp, #4]
007eeea0  00 10 a0 e1                                      mov r1, r0
007eeea4  0c 00 a0 e1                                      mov r0, ip
007eeea8  af 7f ec eb                                      bl #0x30ed6c
007eeeac  00 10 a0 e1                                      mov r1, r0
007eeeb0  0b 00 a0 e1                                      mov r0, fp
007eeeb4  3a 7f ec eb                                      bl #0x30eba4
007eeeb8  48 20 95 e5                                      ldr r2, [r5, #0x48]
007eeebc  00 b0 a0 e1                                      mov fp, r0
007eeec0  08 00 a0 e1                                      mov r0, r8
007eeec4  02 11 82 e2                                      add r1, r2, #0x80000000
007eeec8  a7 7f ec eb                                      bl #0x30ed6c
007eeecc  07 10 a0 e1                                      mov r1, r7
007eeed0  00 80 a0 e1                                      mov r8, r0
007eeed4  48 00 95 e5                                      ldr r0, [r5, #0x48]
007eeed8  a3 7f ec eb                                      bl #0x30ed6c
007eeedc  40 10 95 e5                                      ldr r1, [r5, #0x40]
007eeee0  00 70 a0 e1                                      mov r7, r0
007eeee4  08 00 a0 e1                                      mov r0, r8
007eeee8  2d 7f ec eb                                      bl #0x30eba4
007eeeec  44 80 95 e5                                      ldr r8, [r5, #0x44]
007eeef0  07 10 a0 e1                                      mov r1, r7
007eeef4  00 50 a0 e1                                      mov r5, r0
007eeef8  08 00 a0 e1                                      mov r0, r8
007eeefc  28 7f ec eb                                      bl #0x30eba4
007eef00  40 80 94 e5                                      ldr r8, [r4, #0x40]
007eef04  00 70 a0 e1                                      mov r7, r0
007eef08  05 00 a0 e1                                      mov r0, r5
007eef0c  08 10 a0 e1                                      mov r1, r8
007eef10  25 7d ec eb                                      bl #0x30e3ac
007eef14  44 50 94 e5                                      ldr r5, [r4, #0x44]
007eef18  00 40 a0 e1                                      mov r4, r0
007eef1c  07 00 a0 e1                                      mov r0, r7
007eef20  05 10 a0 e1                                      mov r1, r5
007eef24  20 7d ec eb                                      bl #0x30e3ac
007eef28  09 10 a0 e1                                      mov r1, sb
007eef2c  00 50 a0 e1                                      mov r5, r0
007eef30  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007eef34  8c 7f ec eb                                      bl #0x30ed6c
007eef38  08 10 9d e5                                      ldr r1, [sp, #8]
007eef3c  00 70 a0 e1                                      mov r7, r0
007eef40  06 00 a0 e1                                      mov r0, r6
007eef44  88 7f ec eb                                      bl #0x30ed6c
007eef48  07 10 a0 e1                                      mov r1, r7
007eef4c  00 60 a0 e1                                      mov r6, r0
007eef50  04 00 a0 e1                                      mov r0, r4
007eef54  14 7d ec eb                                      bl #0x30e3ac
007eef58  00 10 a0 e1                                      mov r1, r0
007eef5c  0a 00 a0 e1                                      mov r0, sl
007eef60  81 7f ec eb                                      bl #0x30ed6c
007eef64  06 10 a0 e1                                      mov r1, r6
007eef68  00 40 a0 e1                                      mov r4, r0
007eef6c  05 00 a0 e1                                      mov r0, r5
007eef70  0d 7d ec eb                                      bl #0x30e3ac
007eef74  00 30 9d e5                                      ldr r3, [sp]
007eef78  00 10 a0 e1                                      mov r1, r0
007eef7c  03 00 a0 e1                                      mov r0, r3
007eef80  79 7f ec eb                                      bl #0x30ed6c
007eef84  00 10 a0 e1                                      mov r1, r0
007eef88  04 00 a0 e1                                      mov r0, r4
007eef8c  04 7f ec eb                                      bl #0x30eba4
007eef90  00 10 a0 e1                                      mov r1, r0
007eef94  0b 00 a0 e1                                      mov r0, fp
007eef98  01 7f ec eb                                      bl #0x30eba4
007eef9c  14 d0 8d e2                                      add sp, sp, #0x14
007eefa0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x007eefa4, declared_size=8, range_size=8, mode=arm
; class-group: b2PrismaticJoint
; alias: _ZNK16b2PrismaticJoint14IsLimitEnabledEv
; demangled: b2PrismaticJoint::IsLimitEnabled() const
; decoder-mode: arm
007eefa4  c8 00 d0 e5                                      ldrb r0, [r0, #0xc8]
007eefa8  1e ff 2f e1                                      bx lr

; FUNCTION 0x007eefac, declared_size=8, range_size=8, mode=arm
; class-group: b2PrismaticJoint
; alias: _ZN16b2PrismaticJoint11EnableLimitEb
; demangled: b2PrismaticJoint::EnableLimit(bool)
; decoder-mode: arm
007eefac  c8 10 c0 e5                                      strb r1, [r0, #0xc8]
007eefb0  1e ff 2f e1                                      bx lr

; FUNCTION 0x007eefb4, declared_size=8, range_size=8, mode=arm
; class-group: b2PrismaticJoint
; alias: _ZNK16b2PrismaticJoint13GetLowerLimitEv
; demangled: b2PrismaticJoint::GetLowerLimit() const
; decoder-mode: arm
007eefb4  b8 00 90 e5                                      ldr r0, [r0, #0xb8]
007eefb8  1e ff 2f e1                                      bx lr

; FUNCTION 0x007eefbc, declared_size=8, range_size=8, mode=arm
; class-group: b2PrismaticJoint
; alias: _ZNK16b2PrismaticJoint13GetUpperLimitEv
; demangled: b2PrismaticJoint::GetUpperLimit() const
; decoder-mode: arm
007eefbc  bc 00 90 e5                                      ldr r0, [r0, #0xbc]
007eefc0  1e ff 2f e1                                      bx lr

; FUNCTION 0x007eefc4, declared_size=12, range_size=12, mode=arm
; class-group: b2PrismaticJoint
; alias: _ZN16b2PrismaticJoint9SetLimitsEff
; demangled: b2PrismaticJoint::SetLimits(float, float)
; decoder-mode: arm
007eefc4  bc 20 80 e5                                      str r2, [r0, #0xbc]
007eefc8  b8 10 80 e5                                      str r1, [r0, #0xb8]
007eefcc  1e ff 2f e1                                      bx lr

; FUNCTION 0x007eefd0, declared_size=8, range_size=8, mode=arm
; class-group: b2PrismaticJoint
; alias: _ZNK16b2PrismaticJoint14IsMotorEnabledEv
; demangled: b2PrismaticJoint::IsMotorEnabled() const
; decoder-mode: arm
007eefd0  c9 00 d0 e5                                      ldrb r0, [r0, #0xc9]
007eefd4  1e ff 2f e1                                      bx lr

; FUNCTION 0x007eefd8, declared_size=8, range_size=8, mode=arm
; class-group: b2PrismaticJoint
; alias: _ZN16b2PrismaticJoint11EnableMotorEb
; demangled: b2PrismaticJoint::EnableMotor(bool)
; decoder-mode: arm
007eefd8  c9 10 c0 e5                                      strb r1, [r0, #0xc9]
007eefdc  1e ff 2f e1                                      bx lr

; FUNCTION 0x007eefe0, declared_size=8, range_size=8, mode=arm
; class-group: b2PrismaticJoint
; alias: _ZN16b2PrismaticJoint13SetMotorSpeedEf
; demangled: b2PrismaticJoint::SetMotorSpeed(float)
; decoder-mode: arm
007eefe0  c4 10 80 e5                                      str r1, [r0, #0xc4]
007eefe4  1e ff 2f e1                                      bx lr

; FUNCTION 0x007eefe8, declared_size=8, range_size=8, mode=arm
; class-group: b2PrismaticJoint
; alias: _ZN16b2PrismaticJoint16SetMaxMotorForceEf
; demangled: b2PrismaticJoint::SetMaxMotorForce(float)
; decoder-mode: arm
007eefe8  c0 10 80 e5                                      str r1, [r0, #0xc0]
007eefec  1e ff 2f e1                                      bx lr

; FUNCTION 0x007eeff0, declared_size=8, range_size=8, mode=arm
; class-group: b2PrismaticJoint
; alias: _ZNK16b2PrismaticJoint13GetMotorForceEv
; demangled: b2PrismaticJoint::GetMotorForce() const
; decoder-mode: arm
007eeff0  ac 00 90 e5                                      ldr r0, [r0, #0xac]
007eeff4  1e ff 2f e1                                      bx lr

; FUNCTION 0x007eeff8, declared_size=4, range_size=4, mode=arm
; class-group: b2PrismaticJoint
; alias: _ZN16b2PrismaticJointD1Ev
; demangled: b2PrismaticJoint::~b2PrismaticJoint()
; decoder-mode: arm
007eeff8  1e ff 2f e1                                      bx lr

; FUNCTION 0x007eeffc, declared_size=20, range_size=20, mode=arm
; class-group: b2PrismaticJoint
; alias: _ZN16b2PrismaticJointD0Ev
; demangled: b2PrismaticJoint::~b2PrismaticJoint()
; decoder-mode: arm
007eeffc  10 40 2d e9                                      push {r4, lr}
007ef000  00 40 a0 e1                                      mov r4, r0
007ef004  a9 7c ec eb                                      bl #0x30e2b0
007ef008  04 00 a0 e1                                      mov r0, r4
007ef00c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007ef010, declared_size=2552, range_size=2552, mode=arm
; class-group: b2PrismaticJoint
; alias: _ZN16b2PrismaticJoint24SolvePositionConstraintsEv
; demangled: b2PrismaticJoint::SolvePositionConstraints()
; decoder-mode: arm
007ef010  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007ef014  30 50 90 e5                                      ldr r5, [r0, #0x30]
007ef018  2c d0 4d e2                                      sub sp, sp, #0x2c
007ef01c  00 60 a0 e1                                      mov r6, r0
007ef020  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
007ef024  44 00 90 e5                                      ldr r0, [r0, #0x44]
007ef028  df 7c ec eb                                      bl #0x30e3ac
007ef02c  20 10 95 e5                                      ldr r1, [r5, #0x20]
007ef030  00 80 a0 e1                                      mov r8, r0
007ef034  48 00 96 e5                                      ldr r0, [r6, #0x48]
007ef038  db 7c ec eb                                      bl #0x30e3ac
007ef03c  0c 20 95 e5                                      ldr r2, [r5, #0xc]
007ef040  00 70 a0 e1                                      mov r7, r0
007ef044  08 00 a0 e1                                      mov r0, r8
007ef048  02 10 a0 e1                                      mov r1, r2
007ef04c  34 40 96 e5                                      ldr r4, [r6, #0x34]
007ef050  08 20 8d e5                                      str r2, [sp, #8]
007ef054  44 7f ec eb                                      bl #0x30ed6c
007ef058  14 10 95 e5                                      ldr r1, [r5, #0x14]
007ef05c  00 a0 a0 e1                                      mov sl, r0
007ef060  07 00 a0 e1                                      mov r0, r7
007ef064  40 7f ec eb                                      bl #0x30ed6c
007ef068  00 10 a0 e1                                      mov r1, r0
007ef06c  0a 00 a0 e1                                      mov r0, sl
007ef070  cb 7e ec eb                                      bl #0x30eba4
007ef074  10 c0 95 e5                                      ldr ip, [r5, #0x10]
007ef078  00 90 a0 e1                                      mov sb, r0
007ef07c  08 00 a0 e1                                      mov r0, r8
007ef080  0c 10 a0 e1                                      mov r1, ip
007ef084  04 c0 8d e5                                      str ip, [sp, #4]
007ef088  37 7f ec eb                                      bl #0x30ed6c
007ef08c  18 10 95 e5                                      ldr r1, [r5, #0x18]
007ef090  00 80 a0 e1                                      mov r8, r0
007ef094  07 00 a0 e1                                      mov r0, r7
007ef098  33 7f ec eb                                      bl #0x30ed6c
007ef09c  00 10 a0 e1                                      mov r1, r0
007ef0a0  08 00 a0 e1                                      mov r0, r8
007ef0a4  be 7e ec eb                                      bl #0x30eba4
007ef0a8  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
007ef0ac  00 80 a0 e1                                      mov r8, r0
007ef0b0  4c 00 96 e5                                      ldr r0, [r6, #0x4c]
007ef0b4  bc 7c ec eb                                      bl #0x30e3ac
007ef0b8  20 10 94 e5                                      ldr r1, [r4, #0x20]
007ef0bc  00 a0 a0 e1                                      mov sl, r0
007ef0c0  50 00 96 e5                                      ldr r0, [r6, #0x50]
007ef0c4  b8 7c ec eb                                      bl #0x30e3ac
007ef0c8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007ef0cc  00 70 a0 e1                                      mov r7, r0
007ef0d0  0a 00 a0 e1                                      mov r0, sl
007ef0d4  24 7f ec eb                                      bl #0x30ed6c
007ef0d8  14 10 94 e5                                      ldr r1, [r4, #0x14]
007ef0dc  00 b0 a0 e1                                      mov fp, r0
007ef0e0  07 00 a0 e1                                      mov r0, r7
007ef0e4  20 7f ec eb                                      bl #0x30ed6c
007ef0e8  00 10 a0 e1                                      mov r1, r0
007ef0ec  0b 00 a0 e1                                      mov r0, fp
007ef0f0  ab 7e ec eb                                      bl #0x30eba4
007ef0f4  10 10 94 e5                                      ldr r1, [r4, #0x10]
007ef0f8  00 b0 a0 e1                                      mov fp, r0
007ef0fc  0a 00 a0 e1                                      mov r0, sl
007ef100  19 7f ec eb                                      bl #0x30ed6c
007ef104  18 10 94 e5                                      ldr r1, [r4, #0x18]
007ef108  00 a0 a0 e1                                      mov sl, r0
007ef10c  07 00 a0 e1                                      mov r0, r7
007ef110  15 7f ec eb                                      bl #0x30ed6c
007ef114  00 10 a0 e1                                      mov r1, r0
007ef118  0a 00 a0 e1                                      mov r0, sl
007ef11c  a0 7e ec eb                                      bl #0x30eba4
007ef120  2c 70 95 e5                                      ldr r7, [r5, #0x2c]
007ef124  78 10 95 e5                                      ldr r1, [r5, #0x78]
007ef128  00 a0 a0 e1                                      mov sl, r0
007ef12c  09 00 a0 e1                                      mov r0, sb
007ef130  20 10 8d e5                                      str r1, [sp, #0x20]
007ef134  07 10 a0 e1                                      mov r1, r7
007ef138  99 7e ec eb                                      bl #0x30eba4
007ef13c  30 10 95 e5                                      ldr r1, [r5, #0x30]
007ef140  00 90 a0 e1                                      mov sb, r0
007ef144  08 00 a0 e1                                      mov r0, r8
007ef148  95 7e ec eb                                      bl #0x30eba4
007ef14c  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
007ef150  00 80 a0 e1                                      mov r8, r0
007ef154  0b 00 a0 e1                                      mov r0, fp
007ef158  91 7e ec eb                                      bl #0x30eba4
007ef15c  30 10 94 e5                                      ldr r1, [r4, #0x30]
007ef160  00 b0 a0 e1                                      mov fp, r0
007ef164  0a 00 a0 e1                                      mov r0, sl
007ef168  8d 7e ec eb                                      bl #0x30eba4
007ef16c  09 10 a0 e1                                      mov r1, sb
007ef170  00 a0 a0 e1                                      mov sl, r0
007ef174  0b 00 a0 e1                                      mov r0, fp
007ef178  8b 7c ec eb                                      bl #0x30e3ac
007ef17c  08 10 a0 e1                                      mov r1, r8
007ef180  00 90 a0 e1                                      mov sb, r0
007ef184  0a 00 a0 e1                                      mov r0, sl
007ef188  87 7c ec eb                                      bl #0x30e3ac
007ef18c  08 20 9d e5                                      ldr r2, [sp, #8]
007ef190  5c a0 96 e5                                      ldr sl, [r6, #0x5c]
007ef194  00 30 a0 e1                                      mov r3, r0
007ef198  02 00 a0 e1                                      mov r0, r2
007ef19c  0a 10 a0 e1                                      mov r1, sl
007ef1a0  60 80 96 e5                                      ldr r8, [r6, #0x60]
007ef1a4  00 30 8d e5                                      str r3, [sp]
007ef1a8  ef 7e ec eb                                      bl #0x30ed6c
007ef1ac  08 10 a0 e1                                      mov r1, r8
007ef1b0  00 b0 a0 e1                                      mov fp, r0
007ef1b4  14 00 95 e5                                      ldr r0, [r5, #0x14]
007ef1b8  eb 7e ec eb                                      bl #0x30ed6c
007ef1bc  00 10 a0 e1                                      mov r1, r0
007ef1c0  0b 00 a0 e1                                      mov r0, fp
007ef1c4  76 7e ec eb                                      bl #0x30eba4
007ef1c8  00 10 a0 e1                                      mov r1, r0
007ef1cc  09 00 a0 e1                                      mov r0, sb
007ef1d0  e5 7e ec eb                                      bl #0x30ed6c
007ef1d4  04 c0 9d e5                                      ldr ip, [sp, #4]
007ef1d8  0a 10 a0 e1                                      mov r1, sl
007ef1dc  00 90 a0 e1                                      mov sb, r0
007ef1e0  0c 00 a0 e1                                      mov r0, ip
007ef1e4  e0 7e ec eb                                      bl #0x30ed6c
007ef1e8  08 10 a0 e1                                      mov r1, r8
007ef1ec  00 a0 a0 e1                                      mov sl, r0
007ef1f0  18 00 95 e5                                      ldr r0, [r5, #0x18]
007ef1f4  dc 7e ec eb                                      bl #0x30ed6c
007ef1f8  00 10 a0 e1                                      mov r1, r0
007ef1fc  0a 00 a0 e1                                      mov r0, sl
007ef200  67 7e ec eb                                      bl #0x30eba4
007ef204  00 30 9d e5                                      ldr r3, [sp]
007ef208  00 10 a0 e1                                      mov r1, r0
007ef20c  03 00 a0 e1                                      mov r0, r3
007ef210  d5 7e ec eb                                      bl #0x30ed6c
007ef214  00 10 a0 e1                                      mov r1, r0
007ef218  09 00 a0 e1                                      mov r0, sb
007ef21c  60 7e ec eb                                      bl #0x30eba4
007ef220  cd 1c 0c e3                                      movw r1, #0xcccd
007ef224  4c 1e 43 e3                                      movt r1, #0x3e4c
007ef228  00 80 a0 e1                                      mov r8, r0
007ef22c  36 7d ec eb                                      bl #0x30e70c
007ef230  78 30 94 e5                                      ldr r3, [r4, #0x78]
007ef234  00 00 50 e3                                      cmp r0, #0
007ef238  cd 8c 0c 03                                      movweq r8, #0xcccd
007ef23c  1c 30 8d e5                                      str r3, [sp, #0x1c]
007ef240  80 10 95 e5                                      ldr r1, [r5, #0x80]
007ef244  4c 8e 43 03                                      movteq r8, #0x3e4c
007ef248  10 10 8d e5                                      str r1, [sp, #0x10]
007ef24c  80 30 94 e5                                      ldr r3, [r4, #0x80]
007ef250  0c 30 8d e5                                      str r3, [sp, #0xc]
007ef254  94 00 00 0a                                      beq #0x7ef4ac
007ef258  cd 1c 0c e3                                      movw r1, #0xcccd
007ef25c  08 00 a0 e1                                      mov r0, r8
007ef260  4c 1e 4b e3                                      movt r1, #0xbe4c
007ef264  28 7d ec eb                                      bl #0x30e70c
007ef268  00 00 50 e3                                      cmp r0, #0
007ef26c  cd 8c 0c 13                                      movwne r8, #0xcccd
007ef270  00 30 a0 13                                      movne r3, #0
007ef274  4c 8e 4b 13                                      movtne r8, #0xbe4c
007ef278  8b 00 00 0a                                      beq #0x7ef4ac
007ef27c  80 00 96 e5                                      ldr r0, [r6, #0x80]
007ef280  08 10 a0 e1                                      mov r1, r8
007ef284  00 30 8d e5                                      str r3, [sp]
007ef288  02 01 80 e2                                      add r0, r0, #0x80000000
007ef28c  b6 7e ec eb                                      bl #0x30ed6c
007ef290  00 a0 a0 e1                                      mov sl, r0
007ef294  0a 10 a0 e1                                      mov r1, sl
007ef298  20 00 9d e5                                      ldr r0, [sp, #0x20]
007ef29c  b2 7e ec eb                                      bl #0x30ed6c
007ef2a0  6c 10 96 e5                                      ldr r1, [r6, #0x6c]
007ef2a4  00 b0 a0 e1                                      mov fp, r0
007ef2a8  af 7e ec eb                                      bl #0x30ed6c
007ef2ac  68 10 96 e5                                      ldr r1, [r6, #0x68]
007ef2b0  00 90 a0 e1                                      mov sb, r0
007ef2b4  0b 00 a0 e1                                      mov r0, fp
007ef2b8  ab 7e ec eb                                      bl #0x30ed6c
007ef2bc  00 10 a0 e1                                      mov r1, r0
007ef2c0  07 00 a0 e1                                      mov r0, r7
007ef2c4  36 7e ec eb                                      bl #0x30eba4
007ef2c8  09 10 a0 e1                                      mov r1, sb
007ef2cc  2c 00 85 e5                                      str r0, [r5, #0x2c]
007ef2d0  30 00 95 e5                                      ldr r0, [r5, #0x30]
007ef2d4  32 7e ec eb                                      bl #0x30eba4
007ef2d8  30 00 85 e5                                      str r0, [r5, #0x30]
007ef2dc  10 00 9d e5                                      ldr r0, [sp, #0x10]
007ef2e0  0a 10 a0 e1                                      mov r1, sl
007ef2e4  a0 7e ec eb                                      bl #0x30ed6c
007ef2e8  70 10 96 e5                                      ldr r1, [r6, #0x70]
007ef2ec  9e 7e ec eb                                      bl #0x30ed6c
007ef2f0  00 10 a0 e1                                      mov r1, r0
007ef2f4  38 00 95 e5                                      ldr r0, [r5, #0x38]
007ef2f8  29 7e ec eb                                      bl #0x30eba4
007ef2fc  38 00 85 e5                                      str r0, [r5, #0x38]
007ef300  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007ef304  0a 10 a0 e1                                      mov r1, sl
007ef308  97 7e ec eb                                      bl #0x30ed6c
007ef30c  78 10 96 e5                                      ldr r1, [r6, #0x78]
007ef310  00 90 a0 e1                                      mov sb, r0
007ef314  94 7e ec eb                                      bl #0x30ed6c
007ef318  74 10 96 e5                                      ldr r1, [r6, #0x74]
007ef31c  00 70 a0 e1                                      mov r7, r0
007ef320  09 00 a0 e1                                      mov r0, sb
007ef324  90 7e ec eb                                      bl #0x30ed6c
007ef328  00 10 a0 e1                                      mov r1, r0
007ef32c  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
007ef330  1b 7e ec eb                                      bl #0x30eba4
007ef334  07 10 a0 e1                                      mov r1, r7
007ef338  2c 00 84 e5                                      str r0, [r4, #0x2c]
007ef33c  30 00 94 e5                                      ldr r0, [r4, #0x30]
007ef340  17 7e ec eb                                      bl #0x30eba4
007ef344  30 00 84 e5                                      str r0, [r4, #0x30]
007ef348  0a 10 a0 e1                                      mov r1, sl
007ef34c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007ef350  85 7e ec eb                                      bl #0x30ed6c
007ef354  7c 10 96 e5                                      ldr r1, [r6, #0x7c]
007ef358  83 7e ec eb                                      bl #0x30ed6c
007ef35c  38 10 94 e5                                      ldr r1, [r4, #0x38]
007ef360  0f 7e ec eb                                      bl #0x30eba4
007ef364  00 30 9d e5                                      ldr r3, [sp]
007ef368  38 00 84 e5                                      str r0, [r4, #0x38]
007ef36c  38 a0 95 e5                                      ldr sl, [r5, #0x38]
007ef370  00 00 53 e3                                      cmp r3, #0
007ef374  02 81 88 02                                      addeq r8, r8, #0x80000000
007ef378  0a 10 a0 e1                                      mov r1, sl
007ef37c  0a 7c ec eb                                      bl #0x30e3ac
007ef380  64 10 96 e5                                      ldr r1, [r6, #0x64]
007ef384  08 7c ec eb                                      bl #0x30e3ac
007ef388  36 1a 0f e3                                      movw r1, #0xfa36
007ef38c  0e 1e 43 e3                                      movt r1, #0x3e0e
007ef390  00 70 a0 e1                                      mov r7, r0
007ef394  dc 7c ec eb                                      bl #0x30e70c
007ef398  00 00 50 e3                                      cmp r0, #0
007ef39c  36 7a 0f 03                                      movweq r7, #0xfa36
007ef3a0  0e 7e 43 03                                      movteq r7, #0x3e0e
007ef3a4  38 00 00 0a                                      beq #0x7ef48c
007ef3a8  36 1a 0f e3                                      movw r1, #0xfa36
007ef3ac  07 00 a0 e1                                      mov r0, r7
007ef3b0  0e 1e 4b e3                                      movt r1, #0xbe0e
007ef3b4  d4 7c ec eb                                      bl #0x30e70c
007ef3b8  00 00 50 e3                                      cmp r0, #0
007ef3bc  36 7a 0f 13                                      movwne r7, #0xfa36
007ef3c0  00 90 a0 13                                      movne sb, #0
007ef3c4  0e 7e 4b 13                                      movtne r7, #0xbe0e
007ef3c8  2f 00 00 0a                                      beq #0x7ef48c
007ef3cc  88 00 96 e5                                      ldr r0, [r6, #0x88]
007ef3d0  07 10 a0 e1                                      mov r1, r7
007ef3d4  02 01 80 e2                                      add r0, r0, #0x80000000
007ef3d8  63 7e ec eb                                      bl #0x30ed6c
007ef3dc  80 10 95 e5                                      ldr r1, [r5, #0x80]
007ef3e0  00 b0 a0 e1                                      mov fp, r0
007ef3e4  60 7e ec eb                                      bl #0x30ed6c
007ef3e8  00 10 a0 e1                                      mov r1, r0
007ef3ec  0a 00 a0 e1                                      mov r0, sl
007ef3f0  ed 7b ec eb                                      bl #0x30e3ac
007ef3f4  38 00 85 e5                                      str r0, [r5, #0x38]
007ef3f8  80 10 94 e5                                      ldr r1, [r4, #0x80]
007ef3fc  0b 00 a0 e1                                      mov r0, fp
007ef400  59 7e ec eb                                      bl #0x30ed6c
007ef404  00 10 a0 e1                                      mov r1, r0
007ef408  38 00 94 e5                                      ldr r0, [r4, #0x38]
007ef40c  e4 7d ec eb                                      bl #0x30eba4
007ef410  38 00 84 e5                                      str r0, [r4, #0x38]
007ef414  05 00 a0 e1                                      mov r0, r5
007ef418  7f e0 ff eb                                      bl #0x7e761c
007ef41c  04 00 a0 e1                                      mov r0, r4
007ef420  7d e0 ff eb                                      bl #0x7e761c
007ef424  c8 30 d6 e5                                      ldrb r3, [r6, #0xc8]
007ef428  00 00 59 e3                                      cmp sb, #0
007ef42c  02 11 87 02                                      addeq r1, r7, #0x80000000
007ef430  07 b0 a0 11                                      movne fp, r7
007ef434  01 b0 a0 01                                      moveq fp, r1
007ef438  00 00 53 e3                                      cmp r3, #0
007ef43c  02 00 00 0a                                      beq #0x7ef44c
007ef440  cc a0 96 e5                                      ldr sl, [r6, #0xcc]
007ef444  00 00 5a e3                                      cmp sl, #0
007ef448  1f 00 00 1a                                      bne #0x7ef4cc
007ef44c  0a 17 0d e3                                      movw r1, #0xd70a
007ef450  08 00 a0 e1                                      mov r0, r8
007ef454  a3 1b 43 e3                                      movt r1, #0x3ba3
007ef458  53 7d ec eb                                      bl #0x30e9ac
007ef45c  00 00 50 e3                                      cmp r0, #0
007ef460  07 00 00 0a                                      beq #0x7ef484
007ef464  36 1a 0f e3                                      movw r1, #0xfa36
007ef468  0b 00 a0 e1                                      mov r0, fp
007ef46c  0e 1d 43 e3                                      movt r1, #0x3d0e
007ef470  4d 7d ec eb                                      bl #0x30e9ac
007ef474  00 00 50 e3                                      cmp r0, #0
007ef478  00 00 a0 e3                                      mov r0, #0
007ef47c  01 00 a0 13                                      movne r0, #1
007ef480  70 00 ef e6                                      uxtb r0, r0
007ef484  2c d0 8d e2                                      add sp, sp, #0x2c
007ef488  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007ef48c  07 00 a0 e1                                      mov r0, r7
007ef490  00 10 a0 e3                                      mov r1, #0
007ef494  97 7b ec eb                                      bl #0x30e2f8
007ef498  00 00 50 e3                                      cmp r0, #0
007ef49c  00 90 a0 e3                                      mov sb, #0
007ef4a0  01 90 a0 13                                      movne sb, #1
007ef4a4  79 90 ef e6                                      uxtb sb, sb
007ef4a8  c7 ff ff ea                                      b #0x7ef3cc
007ef4ac  08 00 a0 e1                                      mov r0, r8
007ef4b0  00 10 a0 e3                                      mov r1, #0
007ef4b4  8f 7b ec eb                                      bl #0x30e2f8
007ef4b8  00 00 50 e3                                      cmp r0, #0
007ef4bc  00 30 a0 e3                                      mov r3, #0
007ef4c0  01 30 a0 13                                      movne r3, #1
007ef4c4  73 30 ef e6                                      uxtb r3, r3
007ef4c8  6b ff ff ea                                      b #0x7ef27c
007ef4cc  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
007ef4d0  44 00 96 e5                                      ldr r0, [r6, #0x44]
007ef4d4  b4 7b ec eb                                      bl #0x30e3ac
007ef4d8  18 00 8d e5                                      str r0, [sp, #0x18]
007ef4dc  20 10 95 e5                                      ldr r1, [r5, #0x20]
007ef4e0  48 00 96 e5                                      ldr r0, [r6, #0x48]
007ef4e4  b0 7b ec eb                                      bl #0x30e3ac
007ef4e8  14 00 8d e5                                      str r0, [sp, #0x14]
007ef4ec  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007ef4f0  18 00 9d e5                                      ldr r0, [sp, #0x18]
007ef4f4  1c 7e ec eb                                      bl #0x30ed6c
007ef4f8  14 10 95 e5                                      ldr r1, [r5, #0x14]
007ef4fc  00 30 a0 e1                                      mov r3, r0
007ef500  14 00 9d e5                                      ldr r0, [sp, #0x14]
007ef504  00 30 8d e5                                      str r3, [sp]
007ef508  17 7e ec eb                                      bl #0x30ed6c
007ef50c  00 30 9d e5                                      ldr r3, [sp]
007ef510  00 10 a0 e1                                      mov r1, r0
007ef514  03 00 a0 e1                                      mov r0, r3
007ef518  a1 7d ec eb                                      bl #0x30eba4
007ef51c  10 10 95 e5                                      ldr r1, [r5, #0x10]
007ef520  00 c0 a0 e1                                      mov ip, r0
007ef524  18 00 9d e5                                      ldr r0, [sp, #0x18]
007ef528  04 c0 8d e5                                      str ip, [sp, #4]
007ef52c  0e 7e ec eb                                      bl #0x30ed6c
007ef530  18 10 95 e5                                      ldr r1, [r5, #0x18]
007ef534  00 30 a0 e1                                      mov r3, r0
007ef538  14 00 9d e5                                      ldr r0, [sp, #0x14]
007ef53c  00 30 8d e5                                      str r3, [sp]
007ef540  09 7e ec eb                                      bl #0x30ed6c
007ef544  00 30 9d e5                                      ldr r3, [sp]
007ef548  00 10 a0 e1                                      mov r1, r0
007ef54c  03 00 a0 e1                                      mov r0, r3
007ef550  93 7d ec eb                                      bl #0x30eba4
007ef554  24 00 8d e5                                      str r0, [sp, #0x24]
007ef558  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
007ef55c  4c 00 96 e5                                      ldr r0, [r6, #0x4c]
007ef560  91 7b ec eb                                      bl #0x30e3ac
007ef564  18 00 8d e5                                      str r0, [sp, #0x18]
007ef568  20 10 94 e5                                      ldr r1, [r4, #0x20]
007ef56c  50 00 96 e5                                      ldr r0, [r6, #0x50]
007ef570  8d 7b ec eb                                      bl #0x30e3ac
007ef574  14 00 8d e5                                      str r0, [sp, #0x14]
007ef578  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007ef57c  18 00 9d e5                                      ldr r0, [sp, #0x18]
007ef580  f9 7d ec eb                                      bl #0x30ed6c
007ef584  14 10 94 e5                                      ldr r1, [r4, #0x14]
007ef588  00 30 a0 e1                                      mov r3, r0
007ef58c  14 00 9d e5                                      ldr r0, [sp, #0x14]
007ef590  00 30 8d e5                                      str r3, [sp]
007ef594  f4 7d ec eb                                      bl #0x30ed6c
007ef598  00 30 9d e5                                      ldr r3, [sp]
007ef59c  00 10 a0 e1                                      mov r1, r0
007ef5a0  03 00 a0 e1                                      mov r0, r3
007ef5a4  7e 7d ec eb                                      bl #0x30eba4
007ef5a8  10 10 94 e5                                      ldr r1, [r4, #0x10]
007ef5ac  00 20 a0 e1                                      mov r2, r0
007ef5b0  18 00 9d e5                                      ldr r0, [sp, #0x18]
007ef5b4  08 20 8d e5                                      str r2, [sp, #8]
007ef5b8  eb 7d ec eb                                      bl #0x30ed6c
007ef5bc  18 10 94 e5                                      ldr r1, [r4, #0x18]
007ef5c0  00 30 a0 e1                                      mov r3, r0
007ef5c4  14 00 9d e5                                      ldr r0, [sp, #0x14]
007ef5c8  00 30 8d e5                                      str r3, [sp]
007ef5cc  e6 7d ec eb                                      bl #0x30ed6c
007ef5d0  00 30 9d e5                                      ldr r3, [sp]
007ef5d4  00 10 a0 e1                                      mov r1, r0
007ef5d8  03 00 a0 e1                                      mov r0, r3
007ef5dc  70 7d ec eb                                      bl #0x30eba4
007ef5e0  04 c0 9d e5                                      ldr ip, [sp, #4]
007ef5e4  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
007ef5e8  00 30 a0 e1                                      mov r3, r0
007ef5ec  0c 00 a0 e1                                      mov r0, ip
007ef5f0  00 30 8d e5                                      str r3, [sp]
007ef5f4  18 10 8d e5                                      str r1, [sp, #0x18]
007ef5f8  69 7d ec eb                                      bl #0x30eba4
007ef5fc  30 10 95 e5                                      ldr r1, [r5, #0x30]
007ef600  00 c0 a0 e1                                      mov ip, r0
007ef604  24 00 9d e5                                      ldr r0, [sp, #0x24]
007ef608  04 c0 8d e5                                      str ip, [sp, #4]
007ef60c  64 7d ec eb                                      bl #0x30eba4
007ef610  08 20 9d e5                                      ldr r2, [sp, #8]
007ef614  14 00 8d e5                                      str r0, [sp, #0x14]
007ef618  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
007ef61c  02 00 a0 e1                                      mov r0, r2
007ef620  5f 7d ec eb                                      bl #0x30eba4
007ef624  00 30 9d e5                                      ldr r3, [sp]
007ef628  30 10 94 e5                                      ldr r1, [r4, #0x30]
007ef62c  00 20 a0 e1                                      mov r2, r0
007ef630  03 00 a0 e1                                      mov r0, r3
007ef634  08 20 8d e5                                      str r2, [sp, #8]
007ef638  59 7d ec eb                                      bl #0x30eba4
007ef63c  08 20 9d e5                                      ldr r2, [sp, #8]
007ef640  04 c0 9d e5                                      ldr ip, [sp, #4]
007ef644  00 30 a0 e1                                      mov r3, r0
007ef648  02 00 a0 e1                                      mov r0, r2
007ef64c  0c 10 a0 e1                                      mov r1, ip
007ef650  00 30 8d e5                                      str r3, [sp]
007ef654  54 7b ec eb                                      bl #0x30e3ac
007ef658  00 30 9d e5                                      ldr r3, [sp]
007ef65c  00 c0 a0 e1                                      mov ip, r0
007ef660  14 10 9d e5                                      ldr r1, [sp, #0x14]
007ef664  03 00 a0 e1                                      mov r0, r3
007ef668  04 c0 8d e5                                      str ip, [sp, #4]
007ef66c  4e 7b ec eb                                      bl #0x30e3ac
007ef670  14 00 8d e5                                      str r0, [sp, #0x14]
007ef674  54 20 96 e5                                      ldr r2, [r6, #0x54]
007ef678  0c 00 95 e5                                      ldr r0, [r5, #0xc]
007ef67c  02 10 a0 e1                                      mov r1, r2
007ef680  08 20 8d e5                                      str r2, [sp, #8]
007ef684  b8 7d ec eb                                      bl #0x30ed6c
007ef688  58 10 96 e5                                      ldr r1, [r6, #0x58]
007ef68c  00 30 a0 e1                                      mov r3, r0
007ef690  14 00 95 e5                                      ldr r0, [r5, #0x14]
007ef694  00 30 8d e5                                      str r3, [sp]
007ef698  b3 7d ec eb                                      bl #0x30ed6c
007ef69c  00 30 9d e5                                      ldr r3, [sp]
007ef6a0  00 10 a0 e1                                      mov r1, r0
007ef6a4  03 00 a0 e1                                      mov r0, r3
007ef6a8  3d 7d ec eb                                      bl #0x30eba4
007ef6ac  04 c0 9d e5                                      ldr ip, [sp, #4]
007ef6b0  00 10 a0 e1                                      mov r1, r0
007ef6b4  0c 00 a0 e1                                      mov r0, ip
007ef6b8  ab 7d ec eb                                      bl #0x30ed6c
007ef6bc  08 20 9d e5                                      ldr r2, [sp, #8]
007ef6c0  00 c0 a0 e1                                      mov ip, r0
007ef6c4  10 00 95 e5                                      ldr r0, [r5, #0x10]
007ef6c8  02 10 a0 e1                                      mov r1, r2
007ef6cc  04 c0 8d e5                                      str ip, [sp, #4]
007ef6d0  a5 7d ec eb                                      bl #0x30ed6c
007ef6d4  58 10 96 e5                                      ldr r1, [r6, #0x58]
007ef6d8  00 30 a0 e1                                      mov r3, r0
007ef6dc  18 00 95 e5                                      ldr r0, [r5, #0x18]
007ef6e0  00 30 8d e5                                      str r3, [sp]
007ef6e4  a0 7d ec eb                                      bl #0x30ed6c
007ef6e8  00 30 9d e5                                      ldr r3, [sp]
007ef6ec  00 10 a0 e1                                      mov r1, r0
007ef6f0  03 00 a0 e1                                      mov r0, r3
007ef6f4  2a 7d ec eb                                      bl #0x30eba4
007ef6f8  00 10 a0 e1                                      mov r1, r0
007ef6fc  14 00 9d e5                                      ldr r0, [sp, #0x14]
007ef700  99 7d ec eb                                      bl #0x30ed6c
007ef704  04 c0 9d e5                                      ldr ip, [sp, #4]
007ef708  00 10 a0 e1                                      mov r1, r0
007ef70c  0c 00 a0 e1                                      mov r0, ip
007ef710  23 7d ec eb                                      bl #0x30eba4
007ef714  03 00 5a e3                                      cmp sl, #3
007ef718  3e 00 00 0a                                      beq #0x7ef818
007ef71c  01 00 5a e3                                      cmp sl, #1
007ef720  5b 00 00 0a                                      beq #0x7ef894
007ef724  02 00 5a e3                                      cmp sl, #2
007ef728  00 a0 a0 13                                      movne sl, #0
007ef72c  89 00 00 0a                                      beq #0x7ef958
007ef730  20 00 9d e5                                      ldr r0, [sp, #0x20]
007ef734  0a 10 a0 e1                                      mov r1, sl
007ef738  8b 7d ec eb                                      bl #0x30ed6c
007ef73c  94 10 96 e5                                      ldr r1, [r6, #0x94]
007ef740  00 70 a0 e1                                      mov r7, r0
007ef744  88 7d ec eb                                      bl #0x30ed6c
007ef748  90 10 96 e5                                      ldr r1, [r6, #0x90]
007ef74c  00 90 a0 e1                                      mov sb, r0
007ef750  07 00 a0 e1                                      mov r0, r7
007ef754  84 7d ec eb                                      bl #0x30ed6c
007ef758  18 10 9d e5                                      ldr r1, [sp, #0x18]
007ef75c  10 7d ec eb                                      bl #0x30eba4
007ef760  09 10 a0 e1                                      mov r1, sb
007ef764  2c 00 85 e5                                      str r0, [r5, #0x2c]
007ef768  30 00 95 e5                                      ldr r0, [r5, #0x30]
007ef76c  0c 7d ec eb                                      bl #0x30eba4
007ef770  30 00 85 e5                                      str r0, [r5, #0x30]
007ef774  10 00 9d e5                                      ldr r0, [sp, #0x10]
007ef778  0a 10 a0 e1                                      mov r1, sl
007ef77c  7a 7d ec eb                                      bl #0x30ed6c
007ef780  98 10 96 e5                                      ldr r1, [r6, #0x98]
007ef784  78 7d ec eb                                      bl #0x30ed6c
007ef788  00 10 a0 e1                                      mov r1, r0
007ef78c  38 00 95 e5                                      ldr r0, [r5, #0x38]
007ef790  03 7d ec eb                                      bl #0x30eba4
007ef794  38 00 85 e5                                      str r0, [r5, #0x38]
007ef798  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007ef79c  0a 10 a0 e1                                      mov r1, sl
007ef7a0  71 7d ec eb                                      bl #0x30ed6c
007ef7a4  a0 10 96 e5                                      ldr r1, [r6, #0xa0]
007ef7a8  00 70 a0 e1                                      mov r7, r0
007ef7ac  6e 7d ec eb                                      bl #0x30ed6c
007ef7b0  9c 10 96 e5                                      ldr r1, [r6, #0x9c]
007ef7b4  00 90 a0 e1                                      mov sb, r0
007ef7b8  07 00 a0 e1                                      mov r0, r7
007ef7bc  6a 7d ec eb                                      bl #0x30ed6c
007ef7c0  00 10 a0 e1                                      mov r1, r0
007ef7c4  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
007ef7c8  f5 7c ec eb                                      bl #0x30eba4
007ef7cc  09 10 a0 e1                                      mov r1, sb
007ef7d0  2c 00 84 e5                                      str r0, [r4, #0x2c]
007ef7d4  30 00 94 e5                                      ldr r0, [r4, #0x30]
007ef7d8  f1 7c ec eb                                      bl #0x30eba4
007ef7dc  30 00 84 e5                                      str r0, [r4, #0x30]
007ef7e0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007ef7e4  0a 10 a0 e1                                      mov r1, sl
007ef7e8  5f 7d ec eb                                      bl #0x30ed6c
007ef7ec  a4 10 96 e5                                      ldr r1, [r6, #0xa4]
007ef7f0  5d 7d ec eb                                      bl #0x30ed6c
007ef7f4  00 10 a0 e1                                      mov r1, r0
007ef7f8  38 00 94 e5                                      ldr r0, [r4, #0x38]
007ef7fc  e8 7c ec eb                                      bl #0x30eba4
007ef800  38 00 84 e5                                      str r0, [r4, #0x38]
007ef804  05 00 a0 e1                                      mov r0, r5
007ef808  83 df ff eb                                      bl #0x7e761c
007ef80c  04 00 a0 e1                                      mov r0, r4
007ef810  81 df ff eb                                      bl #0x7e761c
007ef814  0c ff ff ea                                      b #0x7ef44c
007ef818  cd 1c 0c e3                                      movw r1, #0xcccd
007ef81c  4c 1e 43 e3                                      movt r1, #0x3e4c
007ef820  00 00 8d e5                                      str r0, [sp]
007ef824  b8 7b ec eb                                      bl #0x30e70c
007ef828  00 30 9d e5                                      ldr r3, [sp]
007ef82c  00 00 50 e3                                      cmp r0, #0
007ef830  cd 3c 0c 03                                      movweq r3, #0xcccd
007ef834  4c 3e 43 03                                      movteq r3, #0x3e4c
007ef838  3c 00 00 0a                                      beq #0x7ef930
007ef83c  cd 1c 0c e3                                      movw r1, #0xcccd
007ef840  4c 1e 4b e3                                      movt r1, #0xbe4c
007ef844  03 00 a0 e1                                      mov r0, r3
007ef848  00 30 8d e5                                      str r3, [sp]
007ef84c  ae 7b ec eb                                      bl #0x30e70c
007ef850  00 00 50 e3                                      cmp r0, #0
007ef854  cd 1c 0c 13                                      movwne r1, #0xcccd
007ef858  00 30 9d e5                                      ldr r3, [sp]
007ef85c  4c 1e 4b 13                                      movtne r1, #0xbe4c
007ef860  32 00 00 0a                                      beq #0x7ef930
007ef864  a8 00 96 e5                                      ldr r0, [r6, #0xa8]
007ef868  02 01 80 e2                                      add r0, r0, #0x80000000
007ef86c  3e 7d ec eb                                      bl #0x30ed6c
007ef870  00 00 59 e3                                      cmp sb, #0
007ef874  02 71 87 02                                      addeq r7, r7, #0x80000000
007ef878  00 a0 a0 e1                                      mov sl, r0
007ef87c  07 10 a0 e1                                      mov r1, r7
007ef880  08 00 a0 e1                                      mov r0, r8
007ef884  9b 7a ec eb                                      bl #0x30e2f8
007ef888  00 00 50 e3                                      cmp r0, #0
007ef88c  07 80 a0 01                                      moveq r8, r7
007ef890  a6 ff ff ea                                      b #0x7ef730
007ef894  b8 10 96 e5                                      ldr r1, [r6, #0xb8]
007ef898  c3 7a ec eb                                      bl #0x30e3ac
007ef89c  02 71 80 e2                                      add r7, r0, #0x80000000
007ef8a0  08 10 a0 e1                                      mov r1, r8
007ef8a4  00 a0 a0 e1                                      mov sl, r0
007ef8a8  07 00 a0 e1                                      mov r0, r7
007ef8ac  96 7b ec eb                                      bl #0x30e70c
007ef8b0  0a 17 0d e3                                      movw r1, #0xd70a
007ef8b4  00 00 50 e3                                      cmp r0, #0
007ef8b8  a3 1b 43 e3                                      movt r1, #0x3ba3
007ef8bc  0a 00 a0 e1                                      mov r0, sl
007ef8c0  07 80 a0 01                                      moveq r8, r7
007ef8c4  b6 7c ec eb                                      bl #0x30eba4
007ef8c8  00 10 a0 e3                                      mov r1, #0
007ef8cc  00 70 a0 e1                                      mov r7, r0
007ef8d0  8d 7b ec eb                                      bl #0x30e70c
007ef8d4  00 00 50 e3                                      cmp r0, #0
007ef8d8  00 70 a0 03                                      moveq r7, #0
007ef8dc  15 00 00 1a                                      bne #0x7ef938
007ef8e0  a8 00 96 e5                                      ldr r0, [r6, #0xa8]
007ef8e4  b4 a0 96 e5                                      ldr sl, [r6, #0xb4]
007ef8e8  07 10 a0 e1                                      mov r1, r7
007ef8ec  02 01 80 e2                                      add r0, r0, #0x80000000
007ef8f0  1d 7d ec eb                                      bl #0x30ed6c
007ef8f4  0a 10 a0 e1                                      mov r1, sl
007ef8f8  a9 7c ec eb                                      bl #0x30eba4
007ef8fc  00 10 a0 e3                                      mov r1, #0
007ef900  00 70 a0 e1                                      mov r7, r0
007ef904  7b 7a ec eb                                      bl #0x30e2f8
007ef908  00 00 50 e3                                      cmp r0, #0
007ef90c  00 70 a0 03                                      moveq r7, #0
007ef910  0a 10 a0 e1                                      mov r1, sl
007ef914  b4 70 86 e5                                      str r7, [r6, #0xb4]
007ef918  07 00 a0 e1                                      mov r0, r7
007ef91c  a2 7a ec eb                                      bl #0x30e3ac
007ef920  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
007ef924  00 a0 a0 e1                                      mov sl, r0
007ef928  18 30 8d e5                                      str r3, [sp, #0x18]
007ef92c  7f ff ff ea                                      b #0x7ef730
007ef930  03 10 a0 e1                                      mov r1, r3
007ef934  ca ff ff ea                                      b #0x7ef864
007ef938  cd 1c 0c e3                                      movw r1, #0xcccd
007ef93c  07 00 a0 e1                                      mov r0, r7
007ef940  4c 1e 4b e3                                      movt r1, #0xbe4c
007ef944  70 7b ec eb                                      bl #0x30e70c
007ef948  00 00 50 e3                                      cmp r0, #0
007ef94c  cd 7c 0c 13                                      movwne r7, #0xcccd
007ef950  4c 7e 4b 13                                      movtne r7, #0xbe4c
007ef954  e1 ff ff ea                                      b #0x7ef8e0
007ef958  bc 10 96 e5                                      ldr r1, [r6, #0xbc]
007ef95c  92 7a ec eb                                      bl #0x30e3ac
007ef960  08 10 a0 e1                                      mov r1, r8
007ef964  00 70 a0 e1                                      mov r7, r0
007ef968  67 7b ec eb                                      bl #0x30e70c
007ef96c  0a 17 0d e3                                      movw r1, #0xd70a
007ef970  00 00 50 e3                                      cmp r0, #0
007ef974  a3 1b 43 e3                                      movt r1, #0x3ba3
007ef978  07 00 a0 e1                                      mov r0, r7
007ef97c  07 80 a0 01                                      moveq r8, r7
007ef980  89 7a ec eb                                      bl #0x30e3ac
007ef984  cd 1c 0c e3                                      movw r1, #0xcccd
007ef988  4c 1e 43 e3                                      movt r1, #0x3e4c
007ef98c  00 70 a0 e1                                      mov r7, r0
007ef990  5d 7b ec eb                                      bl #0x30e70c
007ef994  00 00 50 e3                                      cmp r0, #0
007ef998  cd 7c 0c 03                                      movweq r7, #0xcccd
007ef99c  4c 7e 43 03                                      movteq r7, #0x3e4c
007ef9a0  04 00 00 0a                                      beq #0x7ef9b8
007ef9a4  07 00 a0 e1                                      mov r0, r7
007ef9a8  00 10 a0 e3                                      mov r1, #0
007ef9ac  56 7b ec eb                                      bl #0x30e70c
007ef9b0  00 00 50 e3                                      cmp r0, #0
007ef9b4  00 70 a0 13                                      movne r7, #0
007ef9b8  a8 00 96 e5                                      ldr r0, [r6, #0xa8]
007ef9bc  b4 a0 96 e5                                      ldr sl, [r6, #0xb4]
007ef9c0  07 10 a0 e1                                      mov r1, r7
007ef9c4  02 01 80 e2                                      add r0, r0, #0x80000000
007ef9c8  e7 7c ec eb                                      bl #0x30ed6c
007ef9cc  0a 10 a0 e1                                      mov r1, sl
007ef9d0  73 7c ec eb                                      bl #0x30eba4
007ef9d4  00 10 a0 e3                                      mov r1, #0
007ef9d8  00 70 a0 e1                                      mov r7, r0
007ef9dc  4a 7b ec eb                                      bl #0x30e70c
007ef9e0  00 00 50 e3                                      cmp r0, #0
007ef9e4  00 70 a0 03                                      moveq r7, #0
007ef9e8  0a 10 a0 e1                                      mov r1, sl
007ef9ec  b4 70 86 e5                                      str r7, [r6, #0xb4]
007ef9f0  07 00 a0 e1                                      mov r0, r7
007ef9f4  6c 7a ec eb                                      bl #0x30e3ac
007ef9f8  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
007ef9fc  00 a0 a0 e1                                      mov sl, r0
007efa00  18 10 8d e5                                      str r1, [sp, #0x18]
007efa04  49 ff ff ea                                      b #0x7ef730

; FUNCTION 0x007efa08, declared_size=260, range_size=260, mode=arm
; class-group: b2PrismaticJoint
; alias: _ZN16b2PrismaticJointC1EPK19b2PrismaticJointDef
; demangled: b2PrismaticJoint::b2PrismaticJoint(b2PrismaticJointDef const*)
; decoder-mode: arm
007efa08  70 40 2d e9                                      push {r4, r5, r6, lr}
007efa0c  f0 60 9f e5                                      ldr r6, [pc, #0xf0]
007efa10  00 40 a0 e1                                      mov r4, r0
007efa14  01 50 a0 e1                                      mov r5, r1
007efa18  f0 ed ff eb                                      bl #0x7eb1e0
007efa1c  e4 20 9f e5                                      ldr r2, [pc, #0xe4]
007efa20  06 60 8f e0                                      add r6, pc, r6
007efa24  00 30 a0 e3                                      mov r3, #0
007efa28  02 20 96 e7                                      ldr r2, [r6, r2]
007efa2c  04 00 a0 e1                                      mov r0, r4
007efa30  08 20 82 e2                                      add r2, r2, #8
007efa34  00 20 84 e5                                      str r2, [r4]
007efa38  14 20 95 e5                                      ldr r2, [r5, #0x14]
007efa3c  44 20 84 e5                                      str r2, [r4, #0x44]
007efa40  18 20 95 e5                                      ldr r2, [r5, #0x18]
007efa44  48 20 84 e5                                      str r2, [r4, #0x48]
007efa48  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
007efa4c  4c 20 84 e5                                      str r2, [r4, #0x4c]
007efa50  20 20 95 e5                                      ldr r2, [r5, #0x20]
007efa54  50 20 84 e5                                      str r2, [r4, #0x50]
007efa58  24 20 95 e5                                      ldr r2, [r5, #0x24]
007efa5c  54 20 84 e5                                      str r2, [r4, #0x54]
007efa60  28 20 95 e5                                      ldr r2, [r5, #0x28]
007efa64  54 c0 94 e5                                      ldr ip, [r4, #0x54]
007efa68  02 11 82 e2                                      add r1, r2, #0x80000000
007efa6c  60 c0 84 e5                                      str ip, [r4, #0x60]
007efa70  5c 10 84 e5                                      str r1, [r4, #0x5c]
007efa74  58 20 84 e5                                      str r2, [r4, #0x58]
007efa78  2c 20 95 e5                                      ldr r2, [r5, #0x2c]
007efa7c  68 30 84 e5                                      str r3, [r4, #0x68]
007efa80  6c 30 84 e5                                      str r3, [r4, #0x6c]
007efa84  70 30 84 e5                                      str r3, [r4, #0x70]
007efa88  74 30 84 e5                                      str r3, [r4, #0x74]
007efa8c  78 30 84 e5                                      str r3, [r4, #0x78]
007efa90  7c 30 84 e5                                      str r3, [r4, #0x7c]
007efa94  80 30 84 e5                                      str r3, [r4, #0x80]
007efa98  84 30 84 e5                                      str r3, [r4, #0x84]
007efa9c  88 30 84 e5                                      str r3, [r4, #0x88]
007efaa0  8c 30 84 e5                                      str r3, [r4, #0x8c]
007efaa4  90 30 84 e5                                      str r3, [r4, #0x90]
007efaa8  94 30 84 e5                                      str r3, [r4, #0x94]
007efaac  98 30 84 e5                                      str r3, [r4, #0x98]
007efab0  9c 30 84 e5                                      str r3, [r4, #0x9c]
007efab4  64 20 84 e5                                      str r2, [r4, #0x64]
007efab8  a0 30 84 e5                                      str r3, [r4, #0xa0]
007efabc  b4 30 84 e5                                      str r3, [r4, #0xb4]
007efac0  a4 30 84 e5                                      str r3, [r4, #0xa4]
007efac4  a8 30 84 e5                                      str r3, [r4, #0xa8]
007efac8  ac 30 84 e5                                      str r3, [r4, #0xac]
007efacc  b0 30 84 e5                                      str r3, [r4, #0xb0]
007efad0  34 30 95 e5                                      ldr r3, [r5, #0x34]
007efad4  b8 30 84 e5                                      str r3, [r4, #0xb8]
007efad8  38 30 95 e5                                      ldr r3, [r5, #0x38]
007efadc  bc 30 84 e5                                      str r3, [r4, #0xbc]
007efae0  40 30 95 e5                                      ldr r3, [r5, #0x40]
007efae4  c0 30 84 e5                                      str r3, [r4, #0xc0]
007efae8  44 30 95 e5                                      ldr r3, [r5, #0x44]
007efaec  c4 30 84 e5                                      str r3, [r4, #0xc4]
007efaf0  30 30 d5 e5                                      ldrb r3, [r5, #0x30]
007efaf4  c8 30 c4 e5                                      strb r3, [r4, #0xc8]
007efaf8  3c 30 d5 e5                                      ldrb r3, [r5, #0x3c]
007efafc  c9 30 c4 e5                                      strb r3, [r4, #0xc9]
007efb00  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007efb04  70 50 1a 00 ac 06 00 00                          .byte 0x70, 0x50, 0x1a, 0x00, 0xac, 0x06, 0x00, 0x00

; FUNCTION 0x007efb0c, declared_size=260, range_size=260, mode=arm
; class-group: b2PrismaticJoint
; alias: _ZN16b2PrismaticJointC2EPK19b2PrismaticJointDef
; demangled: b2PrismaticJoint::b2PrismaticJoint(b2PrismaticJointDef const*)
; decoder-mode: arm
007efb0c  70 40 2d e9                                      push {r4, r5, r6, lr}
007efb10  f0 60 9f e5                                      ldr r6, [pc, #0xf0]
007efb14  00 40 a0 e1                                      mov r4, r0
007efb18  01 50 a0 e1                                      mov r5, r1
007efb1c  af ed ff eb                                      bl #0x7eb1e0
007efb20  e4 20 9f e5                                      ldr r2, [pc, #0xe4]
007efb24  06 60 8f e0                                      add r6, pc, r6
007efb28  00 30 a0 e3                                      mov r3, #0
007efb2c  02 20 96 e7                                      ldr r2, [r6, r2]
007efb30  04 00 a0 e1                                      mov r0, r4
007efb34  08 20 82 e2                                      add r2, r2, #8
007efb38  00 20 84 e5                                      str r2, [r4]
007efb3c  14 20 95 e5                                      ldr r2, [r5, #0x14]
007efb40  44 20 84 e5                                      str r2, [r4, #0x44]
007efb44  18 20 95 e5                                      ldr r2, [r5, #0x18]
007efb48  48 20 84 e5                                      str r2, [r4, #0x48]
007efb4c  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
007efb50  4c 20 84 e5                                      str r2, [r4, #0x4c]
007efb54  20 20 95 e5                                      ldr r2, [r5, #0x20]
007efb58  50 20 84 e5                                      str r2, [r4, #0x50]
007efb5c  24 20 95 e5                                      ldr r2, [r5, #0x24]
007efb60  54 20 84 e5                                      str r2, [r4, #0x54]
007efb64  28 20 95 e5                                      ldr r2, [r5, #0x28]
007efb68  54 c0 94 e5                                      ldr ip, [r4, #0x54]
007efb6c  02 11 82 e2                                      add r1, r2, #0x80000000
007efb70  60 c0 84 e5                                      str ip, [r4, #0x60]
007efb74  5c 10 84 e5                                      str r1, [r4, #0x5c]
007efb78  58 20 84 e5                                      str r2, [r4, #0x58]
007efb7c  2c 20 95 e5                                      ldr r2, [r5, #0x2c]
007efb80  68 30 84 e5                                      str r3, [r4, #0x68]
007efb84  6c 30 84 e5                                      str r3, [r4, #0x6c]
007efb88  70 30 84 e5                                      str r3, [r4, #0x70]
007efb8c  74 30 84 e5                                      str r3, [r4, #0x74]
007efb90  78 30 84 e5                                      str r3, [r4, #0x78]
007efb94  7c 30 84 e5                                      str r3, [r4, #0x7c]
007efb98  80 30 84 e5                                      str r3, [r4, #0x80]
007efb9c  84 30 84 e5                                      str r3, [r4, #0x84]
007efba0  88 30 84 e5                                      str r3, [r4, #0x88]
007efba4  8c 30 84 e5                                      str r3, [r4, #0x8c]
007efba8  90 30 84 e5                                      str r3, [r4, #0x90]
007efbac  94 30 84 e5                                      str r3, [r4, #0x94]
007efbb0  98 30 84 e5                                      str r3, [r4, #0x98]
007efbb4  9c 30 84 e5                                      str r3, [r4, #0x9c]
007efbb8  64 20 84 e5                                      str r2, [r4, #0x64]
007efbbc  a0 30 84 e5                                      str r3, [r4, #0xa0]
007efbc0  b4 30 84 e5                                      str r3, [r4, #0xb4]
007efbc4  a4 30 84 e5                                      str r3, [r4, #0xa4]
007efbc8  a8 30 84 e5                                      str r3, [r4, #0xa8]
007efbcc  ac 30 84 e5                                      str r3, [r4, #0xac]
007efbd0  b0 30 84 e5                                      str r3, [r4, #0xb0]
007efbd4  34 30 95 e5                                      ldr r3, [r5, #0x34]
007efbd8  b8 30 84 e5                                      str r3, [r4, #0xb8]
007efbdc  38 30 95 e5                                      ldr r3, [r5, #0x38]
007efbe0  bc 30 84 e5                                      str r3, [r4, #0xbc]
007efbe4  40 30 95 e5                                      ldr r3, [r5, #0x40]
007efbe8  c0 30 84 e5                                      str r3, [r4, #0xc0]
007efbec  44 30 95 e5                                      ldr r3, [r5, #0x44]
007efbf0  c4 30 84 e5                                      str r3, [r4, #0xc4]
007efbf4  30 30 d5 e5                                      ldrb r3, [r5, #0x30]
007efbf8  c8 30 c4 e5                                      strb r3, [r4, #0xc8]
007efbfc  3c 30 d5 e5                                      ldrb r3, [r5, #0x3c]
007efc00  c9 30 c4 e5                                      strb r3, [r4, #0xc9]
007efc04  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007efc08  6c 4f 1a 00 ac 06 00 00                          .byte 0x6c, 0x4f, 0x1a, 0x00, 0xac, 0x06, 0x00, 0x00
