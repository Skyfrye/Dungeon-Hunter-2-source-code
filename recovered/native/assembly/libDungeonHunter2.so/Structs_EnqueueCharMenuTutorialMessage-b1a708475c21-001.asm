; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d1280, declared_size=76, range_size=76, mode=arm
; class-group: Structs::EnqueueCharMenuTutorialMessage
; alias: _ZN7Structs30EnqueueCharMenuTutorialMessage8finalizeEv
; demangled: Structs::EnqueueCharMenuTutorialMessage::finalize()
; decoder-mode: arm
004d1280  10 40 2d e9                                      push {r4, lr}
004d1284  00 40 a0 e1                                      mov r4, r0
004d1288  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d128c  00 00 50 e3                                      cmp r0, #0
004d1290  03 00 00 0a                                      beq #0x4d12a4
004d1294  69 fc f8 eb                                      bl #0x310440
004d1298  00 30 a0 e3                                      mov r3, #0
004d129c  08 30 84 e5                                      str r3, [r4, #8]
004d12a0  0c 30 84 e5                                      str r3, [r4, #0xc]
004d12a4  14 00 94 e5                                      ldr r0, [r4, #0x14]
004d12a8  00 00 50 e3                                      cmp r0, #0
004d12ac  03 00 00 0a                                      beq #0x4d12c0
004d12b0  62 fc f8 eb                                      bl #0x310440
004d12b4  00 30 a0 e3                                      mov r3, #0
004d12b8  10 30 84 e5                                      str r3, [r4, #0x10]
004d12bc  14 30 84 e5                                      str r3, [r4, #0x14]
004d12c0  04 00 a0 e1                                      mov r0, r4
004d12c4  10 40 bd e8                                      pop {r4, lr}
004d12c8  66 d6 ff ea                                      b #0x4c6c68

; FUNCTION 0x004d12cc, declared_size=88, range_size=88, mode=arm
; class-group: Structs::EnqueueCharMenuTutorialMessage
; alias: _ZN7Structs30EnqueueCharMenuTutorialMessageD1Ev
; demangled: Structs::EnqueueCharMenuTutorialMessage::~EnqueueCharMenuTutorialMessage()
; decoder-mode: arm
004d12cc  10 40 2d e9                                      push {r4, lr}
004d12d0  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d12d4  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d12d8  00 40 a0 e1                                      mov r4, r0
004d12dc  03 30 8f e0                                      add r3, pc, r3
004d12e0  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d12e4  02 20 93 e7                                      ldr r2, [r3, r2]
004d12e8  00 00 50 e3                                      cmp r0, #0
004d12ec  08 20 82 e2                                      add r2, r2, #8
004d12f0  00 20 84 e5                                      str r2, [r4]
004d12f4  00 00 00 0a                                      beq #0x4d12fc
004d12f8  50 fc f8 eb                                      bl #0x310440
004d12fc  14 00 94 e5                                      ldr r0, [r4, #0x14]
004d1300  00 00 50 e3                                      cmp r0, #0
004d1304  00 00 00 0a                                      beq #0x4d130c
004d1308  4c fc f8 eb                                      bl #0x310440
004d130c  04 00 a0 e1                                      mov r0, r4
004d1310  52 d6 ff eb                                      bl #0x4c6c60
004d1314  04 00 a0 e1                                      mov r0, r4
004d1318  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d131c  b4 37 4c 00 48 39 00 00                          .byte 0xb4, 0x37, 0x4c, 0x00, 0x48, 0x39, 0x00, 0x00

; FUNCTION 0x004d1324, declared_size=28, range_size=28, mode=arm
; class-group: Structs::EnqueueCharMenuTutorialMessage
; alias: _ZN7Structs30EnqueueCharMenuTutorialMessageD0Ev
; demangled: Structs::EnqueueCharMenuTutorialMessage::~EnqueueCharMenuTutorialMessage()
; decoder-mode: arm
004d1324  10 40 2d e9                                      push {r4, lr}
004d1328  00 40 a0 e1                                      mov r4, r0
004d132c  e6 ff ff eb                                      bl #0x4d12cc
004d1330  04 00 a0 e1                                      mov r0, r4
004d1334  41 fc f8 eb                                      bl #0x310440
004d1338  04 00 a0 e1                                      mov r0, r4
004d133c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d1340, declared_size=88, range_size=88, mode=arm
; class-group: Structs::EnqueueCharMenuTutorialMessage
; alias: _ZN7Structs30EnqueueCharMenuTutorialMessageD2Ev
; demangled: Structs::EnqueueCharMenuTutorialMessage::~EnqueueCharMenuTutorialMessage()
; decoder-mode: arm
004d1340  10 40 2d e9                                      push {r4, lr}
004d1344  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d1348  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d134c  00 40 a0 e1                                      mov r4, r0
004d1350  03 30 8f e0                                      add r3, pc, r3
004d1354  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d1358  02 20 93 e7                                      ldr r2, [r3, r2]
004d135c  00 00 50 e3                                      cmp r0, #0
004d1360  08 20 82 e2                                      add r2, r2, #8
004d1364  00 20 84 e5                                      str r2, [r4]
004d1368  00 00 00 0a                                      beq #0x4d1370
004d136c  33 fc f8 eb                                      bl #0x310440
004d1370  14 00 94 e5                                      ldr r0, [r4, #0x14]
004d1374  00 00 50 e3                                      cmp r0, #0
004d1378  00 00 00 0a                                      beq #0x4d1380
004d137c  2f fc f8 eb                                      bl #0x310440
004d1380  04 00 a0 e1                                      mov r0, r4
004d1384  35 d6 ff eb                                      bl #0x4c6c60
004d1388  04 00 a0 e1                                      mov r0, r4
004d138c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d1390  40 37 4c 00 48 39 00 00                          .byte 0x40, 0x37, 0x4c, 0x00, 0x48, 0x39, 0x00, 0x00

; FUNCTION 0x004fff54, declared_size=448, range_size=448, mode=arm
; class-group: Structs::EnqueueCharMenuTutorialMessage
; alias: _ZN7Structs30EnqueueCharMenuTutorialMessage4readEP11IStreamBase
; demangled: Structs::EnqueueCharMenuTutorialMessage::read(IStreamBase*)
; decoder-mode: arm
004fff54  70 40 2d e9                                      push {r4, r5, r6, lr}
004fff58  00 40 a0 e1                                      mov r4, r0
004fff5c  08 d0 4d e2                                      sub sp, sp, #8
004fff60  01 50 a0 e1                                      mov r5, r1
004fff64  2f fe ff eb                                      bl #0x4ff828
004fff68  05 00 a0 e1                                      mov r0, r5
004fff6c  08 10 84 e2                                      add r1, r4, #8
004fff70  8a 7c fb eb                                      bl #0x3df1a0
004fff74  01 30 a0 e3                                      mov r3, #1
004fff78  00 00 53 e3                                      cmp r3, #0
004fff7c  04 30 8d e5                                      str r3, [sp, #4]
004fff80  0f 00 00 1a                                      bne #0x4fffc4
004fff84  09 30 84 e2                                      add r3, r4, #9
004fff88  0a 20 84 e2                                      add r2, r4, #0xa
004fff8c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fff90  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fff94  02 00 53 e1                                      cmp r3, r2
004fff98  01 10 20 e0                                      eor r1, r0, r1
004fff9c  01 10 43 e5                                      strb r1, [r3, #-1]
004fffa0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fffa4  00 10 21 e0                                      eor r1, r1, r0
004fffa8  01 10 c2 e5                                      strb r1, [r2, #1]
004fffac  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fffb0  01 20 42 e2                                      sub r2, r2, #1
004fffb4  00 10 21 e0                                      eor r1, r1, r0
004fffb8  01 10 43 e5                                      strb r1, [r3, #-1]
004fffbc  01 30 83 e2                                      add r3, r3, #1
004fffc0  f1 ff ff 3a                                      blo #0x4fff8c
004fffc4  0c 00 94 e5                                      ldr r0, [r4, #0xc]
004fffc8  00 00 50 e3                                      cmp r0, #0
004fffcc  00 00 00 0a                                      beq #0x4fffd4
004fffd0  1a 41 f8 eb                                      bl #0x310440
004fffd4  08 00 94 e5                                      ldr r0, [r4, #8]
004fffd8  01 10 a0 e3                                      mov r1, #1
004fffdc  00 60 a0 e3                                      mov r6, #0
004fffe0  01 00 80 e0                                      add r0, r0, r1
004fffe4  60 41 f8 eb                                      bl #0x31056c
004fffe8  08 20 94 e5                                      ldr r2, [r4, #8]
004fffec  00 10 a0 e1                                      mov r1, r0
004ffff0  0c 00 84 e5                                      str r0, [r4, #0xc]
004ffff4  06 30 a0 e1                                      mov r3, r6
004ffff8  05 00 a0 e1                                      mov r0, r5
004ffffc  14 5d f8 eb                                      bl #0x317454
00500000  08 30 94 e5                                      ldr r3, [r4, #8]
00500004  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00500008  05 00 a0 e1                                      mov r0, r5
0050000c  10 10 84 e2                                      add r1, r4, #0x10
00500010  03 60 c2 e7                                      strb r6, [r2, r3]
00500014  61 7c fb eb                                      bl #0x3df1a0
00500018  01 30 a0 e3                                      mov r3, #1
0050001c  06 00 53 e1                                      cmp r3, r6
00500020  04 30 8d e5                                      str r3, [sp, #4]
00500024  0f 00 00 1a                                      bne #0x500068
00500028  11 30 84 e2                                      add r3, r4, #0x11
0050002c  12 20 84 e2                                      add r2, r4, #0x12
00500030  01 00 d2 e5                                      ldrb r0, [r2, #1]
00500034  01 10 53 e5                                      ldrb r1, [r3, #-1]
00500038  02 00 53 e1                                      cmp r3, r2
0050003c  01 10 20 e0                                      eor r1, r0, r1
00500040  01 10 43 e5                                      strb r1, [r3, #-1]
00500044  01 00 d2 e5                                      ldrb r0, [r2, #1]
00500048  00 10 21 e0                                      eor r1, r1, r0
0050004c  01 10 c2 e5                                      strb r1, [r2, #1]
00500050  01 00 53 e5                                      ldrb r0, [r3, #-1]
00500054  01 20 42 e2                                      sub r2, r2, #1
00500058  00 10 21 e0                                      eor r1, r1, r0
0050005c  01 10 43 e5                                      strb r1, [r3, #-1]
00500060  01 30 83 e2                                      add r3, r3, #1
00500064  f1 ff ff 3a                                      blo #0x500030
00500068  14 00 94 e5                                      ldr r0, [r4, #0x14]
0050006c  00 00 50 e3                                      cmp r0, #0
00500070  00 00 00 0a                                      beq #0x500078
00500074  f1 40 f8 eb                                      bl #0x310440
00500078  10 00 94 e5                                      ldr r0, [r4, #0x10]
0050007c  01 10 a0 e3                                      mov r1, #1
00500080  00 60 a0 e3                                      mov r6, #0
00500084  01 00 80 e0                                      add r0, r0, r1
00500088  37 41 f8 eb                                      bl #0x31056c
0050008c  10 20 94 e5                                      ldr r2, [r4, #0x10]
00500090  00 10 a0 e1                                      mov r1, r0
00500094  14 00 84 e5                                      str r0, [r4, #0x14]
00500098  06 30 a0 e1                                      mov r3, r6
0050009c  05 00 a0 e1                                      mov r0, r5
005000a0  eb 5c f8 eb                                      bl #0x317454
005000a4  10 30 94 e5                                      ldr r3, [r4, #0x10]
005000a8  14 20 94 e5                                      ldr r2, [r4, #0x14]
005000ac  05 00 a0 e1                                      mov r0, r5
005000b0  18 10 84 e2                                      add r1, r4, #0x18
005000b4  03 60 c2 e7                                      strb r6, [r2, r3]
005000b8  f4 63 fd eb                                      bl #0x459090
005000bc  01 30 a0 e3                                      mov r3, #1
005000c0  06 00 53 e1                                      cmp r3, r6
005000c4  04 30 8d e5                                      str r3, [sp, #4]
005000c8  0f 00 00 1a                                      bne #0x50010c
005000cc  1a 30 84 e2                                      add r3, r4, #0x1a
005000d0  19 40 84 e2                                      add r4, r4, #0x19
005000d4  01 10 d3 e5                                      ldrb r1, [r3, #1]
005000d8  01 20 54 e5                                      ldrb r2, [r4, #-1]
005000dc  04 00 53 e1                                      cmp r3, r4
005000e0  02 20 21 e0                                      eor r2, r1, r2
005000e4  01 20 44 e5                                      strb r2, [r4, #-1]
005000e8  01 10 d3 e5                                      ldrb r1, [r3, #1]
005000ec  01 20 22 e0                                      eor r2, r2, r1
005000f0  01 20 c3 e5                                      strb r2, [r3, #1]
005000f4  01 10 54 e5                                      ldrb r1, [r4, #-1]
005000f8  01 30 43 e2                                      sub r3, r3, #1
005000fc  01 20 22 e0                                      eor r2, r2, r1
00500100  01 20 44 e5                                      strb r2, [r4, #-1]
00500104  01 40 84 e2                                      add r4, r4, #1
00500108  f1 ff ff 8a                                      bhi #0x5000d4
0050010c  08 d0 8d e2                                      add sp, sp, #8
00500110  70 80 bd e8                                      pop {r4, r5, r6, pc}
