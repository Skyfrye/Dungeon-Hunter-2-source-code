; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0086fce8, declared_size=112, range_size=112, mode=arm
; class-group: vox::DecoderMPC8Cursor
; alias: _ZN3vox17DecoderMPC8Cursor7HasDataEv
; demangled: vox::DecoderMPC8Cursor::HasData()
; decoder-mode: arm
0086fce8  10 40 2d e9                                      push {r4, lr}
0086fcec  18 30 90 e5                                      ldr r3, [r0, #0x18]
0086fcf0  00 40 a0 e1                                      mov r4, r0
0086fcf4  00 00 53 e3                                      cmp r3, #0
0086fcf8  14 00 00 0a                                      beq #0x86fd50
0086fcfc  20 20 90 e5                                      ldr r2, [r0, #0x20]
0086fd00  10 30 90 e5                                      ldr r3, [r0, #0x10]
0086fd04  03 00 52 e1                                      cmp r2, r3
0086fd08  02 00 00 3a                                      blo #0x86fd18
0086fd0c  1c 10 d0 e5                                      ldrb r1, [r0, #0x1c]
0086fd10  00 00 51 e3                                      cmp r1, #0
0086fd14  03 00 00 1a                                      bne #0x86fd28
0086fd18  03 00 52 e1                                      cmp r2, r3
0086fd1c  00 00 a0 23                                      movhs r0, #0
0086fd20  01 00 a0 33                                      movlo r0, #1
0086fd24  10 80 bd e8                                      pop {r4, pc}
0086fd28  00 30 90 e5                                      ldr r3, [r0]
0086fd2c  00 10 a0 e3                                      mov r1, #0
0086fd30  0f e0 a0 e1                                      mov lr, pc
0086fd34  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0086fd38  10 30 94 e5                                      ldr r3, [r4, #0x10]
0086fd3c  20 20 94 e5                                      ldr r2, [r4, #0x20]
0086fd40  03 00 52 e1                                      cmp r2, r3
0086fd44  00 00 a0 23                                      movhs r0, #0
0086fd48  01 00 a0 33                                      movlo r0, #1
0086fd4c  10 80 bd e8                                      pop {r4, pc}
0086fd50  03 00 a0 e1                                      mov r0, r3
0086fd54  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0086fd58, declared_size=100, range_size=100, mode=arm
; class-group: vox::DecoderMPC8Cursor
; alias: _ZN3vox17DecoderMPC8Cursor19ConvertFloatToShortEPsPfi
; demangled: vox::DecoderMPC8Cursor::ConvertFloatToShort(short*, float*, int)
; decoder-mode: arm
0086fd58  00 00 53 e3                                      cmp r3, #0
0086fd5c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0086fd60  01 40 a0 e1                                      mov r4, r1
0086fd64  02 60 a0 e1                                      mov r6, r2
0086fd68  12 00 00 da                                      ble #0x86fdb8
0086fd6c  83 80 a0 e1                                      lsl r8, r3, #1
0086fd70  00 50 a0 e3                                      mov r5, #0
0086fd74  ff 7f 0f e3                                      movw r7, #0xffff
0086fd78  ff af 07 e3                                      movw sl, #0x7fff
0086fd7c  85 00 96 e7                                      ldr r0, [r6, r5, lsl #1]
0086fd80  47 14 a0 e3                                      mov r1, #0x47000000
0086fd84  f8 7b ea eb                                      bl #0x30ed6c
0086fd88  cf 79 ea eb                                      bl #0x30e4cc
0086fd8c  02 39 80 e2                                      add r3, r0, #0x8000
0086fd90  07 00 53 e1                                      cmp r3, r7
0086fd94  b5 00 84 91                                      strhls r0, [r4, r5]
0086fd98  03 00 00 9a                                      bls #0x86fdac
0086fd9c  00 00 50 e3                                      cmp r0, #0
0086fda0  0a 00 a0 a1                                      movge r0, sl
0086fda4  02 09 a0 b3                                      movlt r0, #0x8000
0086fda8  b5 00 84 e1                                      strh r0, [r4, r5]
0086fdac  02 50 85 e2                                      add r5, r5, #2
0086fdb0  08 00 55 e1                                      cmp r5, r8
0086fdb4  f0 ff ff 1a                                      bne #0x86fd7c
0086fdb8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0086fdbc, declared_size=4, range_size=4, mode=arm
; class-group: vox::DecoderMPC8Cursor
; alias: _ZN3vox17DecoderMPC8Cursor19ConvertFixedToShortEPsPii
; demangled: vox::DecoderMPC8Cursor::ConvertFixedToShort(short*, int*, int)
; decoder-mode: arm
0086fdbc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0086fe00, declared_size=56, range_size=56, mode=arm
; class-group: vox::DecoderMPC8Cursor
; alias: _ZN3vox17DecoderMPC8Cursor4SeekEj
; demangled: vox::DecoderMPC8Cursor::Seek(unsigned int)
; decoder-mode: arm
0086fe00  00 00 51 e3                                      cmp r1, #0
0086fe04  10 40 2d e9                                      push {r4, lr}
0086fe08  00 40 a0 e1                                      mov r4, r0
0086fe0c  01 00 00 1a                                      bne #0x86fe18
0086fe10  00 00 e0 e3                                      mvn r0, #0
0086fe14  10 80 bd e8                                      pop {r4, pc}
0086fe18  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
0086fe1c  00 20 a0 e3                                      mov r2, #0
0086fe20  00 30 a0 e3                                      mov r3, #0
0086fe24  20 3e 00 eb                                      bl #0x87f6ac
0086fe28  00 00 50 e3                                      cmp r0, #0
0086fe2c  f7 ff ff 1a                                      bne #0x86fe10
0086fe30  20 00 84 e5                                      str r0, [r4, #0x20]
0086fe34  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0086fe38, declared_size=620, range_size=620, mode=arm
; class-group: vox::DecoderMPC8Cursor
; alias: _ZN3vox17DecoderMPC8Cursor6DecodeEPvi
; demangled: vox::DecoderMPC8Cursor::Decode(void*, int)
; decoder-mode: arm
0086fe38  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0086fe3c  0c a0 90 e5                                      ldr sl, [r0, #0xc]
0086fe40  04 50 90 e5                                      ldr r5, [r0, #4]
0086fe44  01 70 a0 e1                                      mov r7, r1
0086fe48  ca 11 a0 e1                                      asr r1, sl, #3
0086fe4c  00 40 a0 e1                                      mov r4, r0
0086fe50  95 01 01 e0                                      mul r1, r5, r1
0086fe54  14 d0 4d e2                                      sub sp, sp, #0x14
0086fe58  02 00 a0 e1                                      mov r0, r2
0086fe5c  10 79 ea eb                                      bl #0x30e2a4
0086fe60  28 10 94 e5                                      ldr r1, [r4, #0x28]
0086fe64  24 80 94 e5                                      ldr r8, [r4, #0x24]
0086fe68  00 60 a0 e1                                      mov r6, r0
0086fe6c  08 00 51 e1                                      cmp r1, r8
0086fe70  00 50 a0 a1                                      movge r5, r0
0086fe74  2a 00 00 aa                                      bge #0x86ff24
0086fe78  08 80 61 e0                                      rsb r8, r1, r8
0086fe7c  08 00 50 e1                                      cmp r0, r8
0086fe80  17 00 00 aa                                      bge #0x86fee4
0086fe84  20 00 5a e3                                      cmp sl, #0x20
0086fe88  75 00 00 0a                                      beq #0x870064
0086fe8c  95 01 00 e0                                      mul r0, r5, r1
0086fe90  48 20 94 e5                                      ldr r2, [r4, #0x48]
0086fe94  07 10 a0 e1                                      mov r1, r7
0086fe98  95 06 03 e0                                      mul r3, r5, r6
0086fe9c  00 21 82 e0                                      add r2, r2, r0, lsl #2
0086fea0  04 00 a0 e1                                      mov r0, r4
0086fea4  ab ff ff eb                                      bl #0x86fd58
0086fea8  28 20 94 e5                                      ldr r2, [r4, #0x28]
0086feac  20 30 94 e5                                      ldr r3, [r4, #0x20]
0086feb0  00 50 a0 e3                                      mov r5, #0
0086feb4  06 20 82 e0                                      add r2, r2, r6
0086feb8  06 30 83 e0                                      add r3, r3, r6
0086febc  28 20 84 e5                                      str r2, [r4, #0x28]
0086fec0  20 30 84 e5                                      str r3, [r4, #0x20]
0086fec4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0086fec8  04 20 94 e5                                      ldr r2, [r4, #4]
0086fecc  06 00 65 e0                                      rsb r0, r5, r6
0086fed0  c3 31 a0 e1                                      asr r3, r3, #3
0086fed4  92 03 03 e0                                      mul r3, r2, r3
0086fed8  90 03 00 e0                                      mul r0, r0, r3
0086fedc  14 d0 8d e2                                      add sp, sp, #0x14
0086fee0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0086fee4  20 00 5a e3                                      cmp sl, #0x20
0086fee8  65 00 00 0a                                      beq #0x870084
0086feec  95 01 01 e0                                      mul r1, r5, r1
0086fef0  48 20 94 e5                                      ldr r2, [r4, #0x48]
0086fef4  95 08 03 e0                                      mul r3, r5, r8
0086fef8  01 21 82 e0                                      add r2, r2, r1, lsl #2
0086fefc  04 00 a0 e1                                      mov r0, r4
0086ff00  07 10 a0 e1                                      mov r1, r7
0086ff04  93 ff ff eb                                      bl #0x86fd58
0086ff08  28 30 94 e5                                      ldr r3, [r4, #0x28]
0086ff0c  20 20 94 e5                                      ldr r2, [r4, #0x20]
0086ff10  06 50 68 e0                                      rsb r5, r8, r6
0086ff14  08 30 83 e0                                      add r3, r3, r8
0086ff18  08 80 82 e0                                      add r8, r2, r8
0086ff1c  28 30 84 e5                                      str r3, [r4, #0x28]
0086ff20  20 80 84 e5                                      str r8, [r4, #0x20]
0086ff24  48 30 94 e5                                      ldr r3, [r4, #0x48]
0086ff28  00 00 55 e3                                      cmp r5, #0
0086ff2c  08 30 8d e5                                      str r3, [sp, #8]
0086ff30  e3 ff ff da                                      ble #0x86fec4
0086ff34  0d 80 a0 e1                                      mov r8, sp
0086ff38  00 a0 a0 e3                                      mov sl, #0
0086ff3c  13 00 00 ea                                      b #0x86ff90
0086ff40  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0086ff44  20 00 52 e3                                      cmp r2, #0x20
0086ff48  39 00 00 0a                                      beq #0x870034
0086ff4c  81 10 87 e0                                      add r1, r7, r1, lsl #1
0086ff50  93 05 03 e0                                      mul r3, r3, r5
0086ff54  04 00 a0 e1                                      mov r0, r4
0086ff58  08 20 9d e5                                      ldr r2, [sp, #8]
0086ff5c  7d ff ff eb                                      bl #0x86fd58
0086ff60  28 20 94 e5                                      ldr r2, [r4, #0x28]
0086ff64  20 30 94 e5                                      ldr r3, [r4, #0x20]
0086ff68  05 20 82 e0                                      add r2, r2, r5
0086ff6c  28 20 84 e5                                      str r2, [r4, #0x28]
0086ff70  10 20 94 e5                                      ldr r2, [r4, #0x10]
0086ff74  03 30 85 e0                                      add r3, r5, r3
0086ff78  20 30 84 e5                                      str r3, [r4, #0x20]
0086ff7c  03 00 52 e1                                      cmp r2, r3
0086ff80  00 50 a0 e3                                      mov r5, #0
0086ff84  1f 00 00 0a                                      beq #0x870008
0086ff88  00 00 55 e3                                      cmp r5, #0
0086ff8c  cc ff ff da                                      ble #0x86fec4
0086ff90  0d 10 a0 e1                                      mov r1, sp
0086ff94  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
0086ff98  c8 3e 00 eb                                      bl #0x87fac0
0086ff9c  00 20 9d e5                                      ldr r2, [sp]
0086ffa0  04 30 94 e5                                      ldr r3, [r4, #4]
0086ffa4  06 10 65 e0                                      rsb r1, r5, r6
0086ffa8  05 00 52 e1                                      cmp r2, r5
0086ffac  28 a0 84 e5                                      str sl, [r4, #0x28]
0086ffb0  24 20 84 e5                                      str r2, [r4, #0x24]
0086ffb4  93 01 01 e0                                      mul r1, r3, r1
0086ffb8  e0 ff ff ca                                      bgt #0x86ff40
0086ffbc  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0086ffc0  20 00 50 e3                                      cmp r0, #0x20
0086ffc4  20 00 00 0a                                      beq #0x87004c
0086ffc8  93 02 03 e0                                      mul r3, r3, r2
0086ffcc  81 10 87 e0                                      add r1, r7, r1, lsl #1
0086ffd0  04 00 a0 e1                                      mov r0, r4
0086ffd4  08 20 9d e5                                      ldr r2, [sp, #8]
0086ffd8  5e ff ff eb                                      bl #0x86fd58
0086ffdc  24 30 94 e5                                      ldr r3, [r4, #0x24]
0086ffe0  28 20 94 e5                                      ldr r2, [r4, #0x28]
0086ffe4  20 10 94 e5                                      ldr r1, [r4, #0x20]
0086ffe8  05 50 63 e0                                      rsb r5, r3, r5
0086ffec  03 20 82 e0                                      add r2, r2, r3
0086fff0  28 20 84 e5                                      str r2, [r4, #0x28]
0086fff4  10 20 94 e5                                      ldr r2, [r4, #0x10]
0086fff8  01 30 83 e0                                      add r3, r3, r1
0086fffc  20 30 84 e5                                      str r3, [r4, #0x20]
00870000  03 00 52 e1                                      cmp r2, r3
00870004  df ff ff 1a                                      bne #0x86ff88
00870008  1c 30 d4 e5                                      ldrb r3, [r4, #0x1c]
0087000c  00 00 53 e3                                      cmp r3, #0
00870010  ab ff ff 0a                                      beq #0x86fec4
00870014  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
00870018  00 20 a0 e3                                      mov r2, #0
0087001c  00 30 a0 e3                                      mov r3, #0
00870020  a1 3d 00 eb                                      bl #0x87f6ac
00870024  00 00 50 e3                                      cmp r0, #0
00870028  a5 ff ff 1a                                      bne #0x86fec4
0087002c  20 00 84 e5                                      str r0, [r4, #0x20]
00870030  d4 ff ff ea                                      b #0x86ff88
00870034  93 05 03 e0                                      mul r3, r3, r5
00870038  01 01 87 e0                                      add r0, r7, r1, lsl #2
0087003c  03 21 a0 e1                                      lsl r2, r3, #2
00870040  08 10 9d e5                                      ldr r1, [sp, #8]
00870044  07 7a ea eb                                      bl #0x30e868
00870048  c4 ff ff ea                                      b #0x86ff60
0087004c  93 02 03 e0                                      mul r3, r3, r2
00870050  01 01 87 e0                                      add r0, r7, r1, lsl #2
00870054  03 21 a0 e1                                      lsl r2, r3, #2
00870058  08 10 9d e5                                      ldr r1, [sp, #8]
0087005c  01 7a ea eb                                      bl #0x30e868
00870060  dd ff ff ea                                      b #0x86ffdc
00870064  95 00 02 e0                                      mul r2, r5, r0
00870068  95 01 01 e0                                      mul r1, r5, r1
0087006c  48 30 94 e5                                      ldr r3, [r4, #0x48]
00870070  07 00 a0 e1                                      mov r0, r7
00870074  02 21 a0 e1                                      lsl r2, r2, #2
00870078  01 11 83 e0                                      add r1, r3, r1, lsl #2
0087007c  f9 79 ea eb                                      bl #0x30e868
00870080  88 ff ff ea                                      b #0x86fea8
00870084  95 01 01 e0                                      mul r1, r5, r1
00870088  95 08 02 e0                                      mul r2, r5, r8
0087008c  48 30 94 e5                                      ldr r3, [r4, #0x48]
00870090  02 21 a0 e1                                      lsl r2, r2, #2
00870094  07 00 a0 e1                                      mov r0, r7
00870098  01 11 83 e0                                      add r1, r3, r1, lsl #2
0087009c  f1 79 ea eb                                      bl #0x30e868
008700a0  98 ff ff ea                                      b #0x86ff08

; FUNCTION 0x008700a4, declared_size=80, range_size=80, mode=arm
; class-group: vox::DecoderMPC8Cursor
; alias: _ZN3vox17DecoderMPC8CursorD1Ev
; demangled: vox::DecoderMPC8Cursor::~DecoderMPC8Cursor()
; decoder-mode: arm
008700a4  10 40 2d e9                                      push {r4, lr}
008700a8  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
008700ac  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
008700b0  00 40 a0 e1                                      mov r4, r0
008700b4  03 30 8f e0                                      add r3, pc, r3
008700b8  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
008700bc  02 20 93 e7                                      ldr r2, [r3, r2]
008700c0  00 00 50 e3                                      cmp r0, #0
008700c4  08 20 82 e2                                      add r2, r2, #8
008700c8  00 20 84 e5                                      str r2, [r4]
008700cc  00 00 00 0a                                      beq #0x8700d4
008700d0  93 3f 00 eb                                      bl #0x87ff24
008700d4  48 00 94 e5                                      ldr r0, [r4, #0x48]
008700d8  00 00 50 e3                                      cmp r0, #0
008700dc  00 00 00 0a                                      beq #0x8700e4
008700e0  d7 80 ea eb                                      bl #0x310444
008700e4  04 00 a0 e1                                      mov r0, r4
008700e8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
008700ec  dc 49 12 00 8c 1b 00 00                          .byte 0xdc, 0x49, 0x12, 0x00, 0x8c, 0x1b, 0x00, 0x00

; FUNCTION 0x008700f4, declared_size=28, range_size=28, mode=arm
; class-group: vox::DecoderMPC8Cursor
; alias: _ZN3vox17DecoderMPC8CursorD0Ev
; demangled: vox::DecoderMPC8Cursor::~DecoderMPC8Cursor()
; decoder-mode: arm
008700f4  10 40 2d e9                                      push {r4, lr}
008700f8  00 40 a0 e1                                      mov r4, r0
008700fc  e8 ff ff eb                                      bl #0x8700a4
00870100  04 00 a0 e1                                      mov r0, r4
00870104  69 78 ea eb                                      bl #0x30e2b0
00870108  04 00 a0 e1                                      mov r0, r4
0087010c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00870110, declared_size=80, range_size=80, mode=arm
; class-group: vox::DecoderMPC8Cursor
; alias: _ZN3vox17DecoderMPC8CursorD2Ev
; demangled: vox::DecoderMPC8Cursor::~DecoderMPC8Cursor()
; decoder-mode: arm
00870110  10 40 2d e9                                      push {r4, lr}
00870114  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00870118  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0087011c  00 40 a0 e1                                      mov r4, r0
00870120  03 30 8f e0                                      add r3, pc, r3
00870124  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
00870128  02 20 93 e7                                      ldr r2, [r3, r2]
0087012c  00 00 50 e3                                      cmp r0, #0
00870130  08 20 82 e2                                      add r2, r2, #8
00870134  00 20 84 e5                                      str r2, [r4]
00870138  00 00 00 0a                                      beq #0x870140
0087013c  78 3f 00 eb                                      bl #0x87ff24
00870140  48 00 94 e5                                      ldr r0, [r4, #0x48]
00870144  00 00 50 e3                                      cmp r0, #0
00870148  00 00 00 0a                                      beq #0x870150
0087014c  bc 80 ea eb                                      bl #0x310444
00870150  04 00 a0 e1                                      mov r0, r4
00870154  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00870158  70 49 12 00 8c 1b 00 00                          .byte 0x70, 0x49, 0x12, 0x00, 0x8c, 0x1b, 0x00, 0x00

; FUNCTION 0x0087018c, declared_size=400, range_size=400, mode=arm
; class-group: vox::DecoderMPC8Cursor
; alias: _ZN3vox17DecoderMPC8CursorC1EPNS_16DecoderInterfaceEPNS_21StreamCursorInterfaceE
; demangled: vox::DecoderMPC8Cursor::DecoderMPC8Cursor(vox::DecoderInterface*, vox::StreamCursorInterface*)
; decoder-mode: arm
0087018c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00870190  64 51 9f e5                                      ldr r5, [pc, #0x164]
00870194  64 c1 9f e5                                      ldr ip, [pc, #0x164]
00870198  64 71 9f e5                                      ldr r7, [pc, #0x164]
0087019c  05 50 8f e0                                      add r5, pc, r5
008701a0  0c 80 95 e7                                      ldr r8, [r5, ip]
008701a4  5c c1 9f e5                                      ldr ip, [pc, #0x15c]
008701a8  5c 61 9f e5                                      ldr r6, [pc, #0x15c]
008701ac  5c 31 9f e5                                      ldr r3, [pc, #0x15c]
008701b0  0c e0 95 e7                                      ldr lr, [r5, ip]
008701b4  07 b0 95 e7                                      ldr fp, [r5, r7]
008701b8  54 c1 9f e5                                      ldr ip, [pc, #0x154]
008701bc  54 71 9f e5                                      ldr r7, [pc, #0x154]
008701c0  06 40 95 e7                                      ldr r4, [r5, r6]
008701c4  03 30 95 e7                                      ldr r3, [r5, r3]
008701c8  07 a0 95 e7                                      ldr sl, [r5, r7]
008701cc  0c c0 95 e7                                      ldr ip, [r5, ip]
008701d0  00 90 94 e5                                      ldr sb, [r4]
008701d4  01 70 a0 e1                                      mov r7, r1
008701d8  08 30 83 e2                                      add r3, r3, #8
008701dc  00 10 a0 e3                                      mov r1, #0
008701e0  00 40 a0 e1                                      mov r4, r0
008701e4  00 30 80 e5                                      str r3, [r0]
008701e8  48 10 80 e5                                      str r1, [r0, #0x48]
008701ec  30 80 80 e5                                      str r8, [r0, #0x30]
008701f0  34 e0 80 e5                                      str lr, [r0, #0x34]
008701f4  38 c0 80 e5                                      str ip, [r0, #0x38]
008701f8  40 b0 80 e5                                      str fp, [r0, #0x40]
008701fc  3c a0 80 e5                                      str sl, [r0, #0x3c]
00870200  44 20 80 e5                                      str r2, [r0, #0x44]
00870204  04 10 80 e5                                      str r1, [r0, #4]
00870208  08 10 80 e5                                      str r1, [r0, #8]
0087020c  0c 10 80 e5                                      str r1, [r0, #0xc]
00870210  10 10 80 e5                                      str r1, [r0, #0x10]
00870214  14 70 80 e5                                      str r7, [r0, #0x14]
00870218  18 20 80 e5                                      str r2, [r0, #0x18]
0087021c  1c 10 c0 e5                                      strb r1, [r0, #0x1c]
00870220  20 10 80 e5                                      str r1, [r0, #0x20]
00870224  24 10 80 e5                                      str r1, [r0, #0x24]
00870228  28 10 80 e5                                      str r1, [r0, #0x28]
0087022c  2c 10 80 e5                                      str r1, [r0, #0x2c]
00870230  5d df 4d e2                                      sub sp, sp, #0x174
00870234  12 0b a0 e3                                      mov r0, #0x4800
00870238  6c 91 8d e5                                      str sb, [sp, #0x16c]
0087023c  ad 80 ea eb                                      bl #0x3104f8
00870240  00 00 50 e3                                      cmp r0, #0
00870244  48 00 84 e5                                      str r0, [r4, #0x48]
00870248  2c 00 94 05                                      ldreq r0, [r4, #0x2c]
0087024c  02 00 00 0a                                      beq #0x87025c
00870250  30 00 84 e2                                      add r0, r4, #0x30
00870254  f8 40 00 eb                                      bl #0x88063c
00870258  2c 00 84 e5                                      str r0, [r4, #0x2c]
0087025c  00 00 50 e3                                      cmp r0, #0
00870260  1f 00 00 0a                                      beq #0x8702e4
00870264  04 30 90 e5                                      ldr r3, [r0, #4]
00870268  00 00 53 e3                                      cmp r3, #0
0087026c  16 00 00 0a                                      beq #0x8702cc
00870270  00 30 90 e5                                      ldr r3, [r0]
00870274  00 00 53 e3                                      cmp r3, #0
00870278  13 00 00 0a                                      beq #0x8702cc
0087027c  0d 10 a0 e1                                      mov r1, sp
00870280  22 3f 00 eb                                      bl #0x87ff10
00870284  04 30 9d e5                                      ldr r3, [sp, #4]
00870288  10 20 a0 e3                                      mov r2, #0x10
0087028c  0c 20 84 e5                                      str r2, [r4, #0xc]
00870290  04 30 84 e5                                      str r3, [r4, #4]
00870294  04 30 97 e5                                      ldr r3, [r7, #4]
00870298  00 00 53 e3                                      cmp r3, #0
0087029c  00 30 9d d5                                      ldrle r3, [sp]
008702a0  08 30 84 e5                                      str r3, [r4, #8]
008702a4  38 30 9d e5                                      ldr r3, [sp, #0x38]
008702a8  10 30 84 e5                                      str r3, [r4, #0x10]
008702ac  06 30 95 e7                                      ldr r3, [r5, r6]
008702b0  6c 21 9d e5                                      ldr r2, [sp, #0x16c]
008702b4  04 00 a0 e1                                      mov r0, r4
008702b8  00 30 93 e5                                      ldr r3, [r3]
008702bc  03 00 52 e1                                      cmp r2, r3
008702c0  0c 00 00 1a                                      bne #0x8702f8
008702c4  5d df 8d e2                                      add sp, sp, #0x174
008702c8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
008702cc  00 30 a0 e3                                      mov r3, #0
008702d0  10 30 84 e5                                      str r3, [r4, #0x10]
008702d4  04 30 84 e5                                      str r3, [r4, #4]
008702d8  08 30 84 e5                                      str r3, [r4, #8]
008702dc  0c 30 84 e5                                      str r3, [r4, #0xc]
008702e0  f1 ff ff ea                                      b #0x8702ac
008702e4  10 00 84 e5                                      str r0, [r4, #0x10]
008702e8  04 00 84 e5                                      str r0, [r4, #4]
008702ec  08 00 84 e5                                      str r0, [r4, #8]
008702f0  0c 00 84 e5                                      str r0, [r4, #0xc]
008702f4  ec ff ff ea                                      b #0x8702ac
008702f8  04 78 ea eb                                      bl #0x30e310
; mapping-symbol data/literal pool
008702fc  f4 48 12 00 c0 26 00 00 68 25 00 00 0c 2d 00 00  .byte 0xf4, 0x48, 0x12, 0x00, 0xc0, 0x26, 0x00, 0x00, 0x68, 0x25, 0x00, 0x00, 0x0c, 0x2d, 0x00, 0x00
0087030c  ac 40 00 00 8c 1b 00 00 44 11 00 00 30 06 00 00  .byte 0xac, 0x40, 0x00, 0x00, 0x8c, 0x1b, 0x00, 0x00, 0x44, 0x11, 0x00, 0x00, 0x30, 0x06, 0x00, 0x00

; FUNCTION 0x0087031c, declared_size=400, range_size=400, mode=arm
; class-group: vox::DecoderMPC8Cursor
; alias: _ZN3vox17DecoderMPC8CursorC2EPNS_16DecoderInterfaceEPNS_21StreamCursorInterfaceE
; demangled: vox::DecoderMPC8Cursor::DecoderMPC8Cursor(vox::DecoderInterface*, vox::StreamCursorInterface*)
; decoder-mode: arm
0087031c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00870320  64 51 9f e5                                      ldr r5, [pc, #0x164]
00870324  64 c1 9f e5                                      ldr ip, [pc, #0x164]
00870328  64 71 9f e5                                      ldr r7, [pc, #0x164]
0087032c  05 50 8f e0                                      add r5, pc, r5
00870330  0c 80 95 e7                                      ldr r8, [r5, ip]
00870334  5c c1 9f e5                                      ldr ip, [pc, #0x15c]
00870338  5c 61 9f e5                                      ldr r6, [pc, #0x15c]
0087033c  5c 31 9f e5                                      ldr r3, [pc, #0x15c]
00870340  0c e0 95 e7                                      ldr lr, [r5, ip]
00870344  07 b0 95 e7                                      ldr fp, [r5, r7]
00870348  54 c1 9f e5                                      ldr ip, [pc, #0x154]
0087034c  54 71 9f e5                                      ldr r7, [pc, #0x154]
00870350  06 40 95 e7                                      ldr r4, [r5, r6]
00870354  03 30 95 e7                                      ldr r3, [r5, r3]
00870358  07 a0 95 e7                                      ldr sl, [r5, r7]
0087035c  0c c0 95 e7                                      ldr ip, [r5, ip]
00870360  00 90 94 e5                                      ldr sb, [r4]
00870364  01 70 a0 e1                                      mov r7, r1
00870368  08 30 83 e2                                      add r3, r3, #8
0087036c  00 10 a0 e3                                      mov r1, #0
00870370  00 40 a0 e1                                      mov r4, r0
00870374  00 30 80 e5                                      str r3, [r0]
00870378  48 10 80 e5                                      str r1, [r0, #0x48]
0087037c  30 80 80 e5                                      str r8, [r0, #0x30]
00870380  34 e0 80 e5                                      str lr, [r0, #0x34]
00870384  38 c0 80 e5                                      str ip, [r0, #0x38]
00870388  40 b0 80 e5                                      str fp, [r0, #0x40]
0087038c  3c a0 80 e5                                      str sl, [r0, #0x3c]
00870390  44 20 80 e5                                      str r2, [r0, #0x44]
00870394  04 10 80 e5                                      str r1, [r0, #4]
00870398  08 10 80 e5                                      str r1, [r0, #8]
0087039c  0c 10 80 e5                                      str r1, [r0, #0xc]
008703a0  10 10 80 e5                                      str r1, [r0, #0x10]
008703a4  14 70 80 e5                                      str r7, [r0, #0x14]
008703a8  18 20 80 e5                                      str r2, [r0, #0x18]
008703ac  1c 10 c0 e5                                      strb r1, [r0, #0x1c]
008703b0  20 10 80 e5                                      str r1, [r0, #0x20]
008703b4  24 10 80 e5                                      str r1, [r0, #0x24]
008703b8  28 10 80 e5                                      str r1, [r0, #0x28]
008703bc  2c 10 80 e5                                      str r1, [r0, #0x2c]
008703c0  5d df 4d e2                                      sub sp, sp, #0x174
008703c4  12 0b a0 e3                                      mov r0, #0x4800
008703c8  6c 91 8d e5                                      str sb, [sp, #0x16c]
008703cc  49 80 ea eb                                      bl #0x3104f8
008703d0  00 00 50 e3                                      cmp r0, #0
008703d4  48 00 84 e5                                      str r0, [r4, #0x48]
008703d8  2c 00 94 05                                      ldreq r0, [r4, #0x2c]
008703dc  02 00 00 0a                                      beq #0x8703ec
008703e0  30 00 84 e2                                      add r0, r4, #0x30
008703e4  94 40 00 eb                                      bl #0x88063c
008703e8  2c 00 84 e5                                      str r0, [r4, #0x2c]
008703ec  00 00 50 e3                                      cmp r0, #0
008703f0  1f 00 00 0a                                      beq #0x870474
008703f4  04 30 90 e5                                      ldr r3, [r0, #4]
008703f8  00 00 53 e3                                      cmp r3, #0
008703fc  16 00 00 0a                                      beq #0x87045c
00870400  00 30 90 e5                                      ldr r3, [r0]
00870404  00 00 53 e3                                      cmp r3, #0
00870408  13 00 00 0a                                      beq #0x87045c
0087040c  0d 10 a0 e1                                      mov r1, sp
00870410  be 3e 00 eb                                      bl #0x87ff10
00870414  04 30 9d e5                                      ldr r3, [sp, #4]
00870418  10 20 a0 e3                                      mov r2, #0x10
0087041c  0c 20 84 e5                                      str r2, [r4, #0xc]
00870420  04 30 84 e5                                      str r3, [r4, #4]
00870424  04 30 97 e5                                      ldr r3, [r7, #4]
00870428  00 00 53 e3                                      cmp r3, #0
0087042c  00 30 9d d5                                      ldrle r3, [sp]
00870430  08 30 84 e5                                      str r3, [r4, #8]
00870434  38 30 9d e5                                      ldr r3, [sp, #0x38]
00870438  10 30 84 e5                                      str r3, [r4, #0x10]
0087043c  06 30 95 e7                                      ldr r3, [r5, r6]
00870440  6c 21 9d e5                                      ldr r2, [sp, #0x16c]
00870444  04 00 a0 e1                                      mov r0, r4
00870448  00 30 93 e5                                      ldr r3, [r3]
0087044c  03 00 52 e1                                      cmp r2, r3
00870450  0c 00 00 1a                                      bne #0x870488
00870454  5d df 8d e2                                      add sp, sp, #0x174
00870458  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0087045c  00 30 a0 e3                                      mov r3, #0
00870460  10 30 84 e5                                      str r3, [r4, #0x10]
00870464  04 30 84 e5                                      str r3, [r4, #4]
00870468  08 30 84 e5                                      str r3, [r4, #8]
0087046c  0c 30 84 e5                                      str r3, [r4, #0xc]
00870470  f1 ff ff ea                                      b #0x87043c
00870474  10 00 84 e5                                      str r0, [r4, #0x10]
00870478  04 00 84 e5                                      str r0, [r4, #4]
0087047c  08 00 84 e5                                      str r0, [r4, #8]
00870480  0c 00 84 e5                                      str r0, [r4, #0xc]
00870484  ec ff ff ea                                      b #0x87043c
00870488  a0 77 ea eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0087048c  64 47 12 00 c0 26 00 00 68 25 00 00 0c 2d 00 00  .byte 0x64, 0x47, 0x12, 0x00, 0xc0, 0x26, 0x00, 0x00, 0x68, 0x25, 0x00, 0x00, 0x0c, 0x2d, 0x00, 0x00
0087049c  ac 40 00 00 8c 1b 00 00 44 11 00 00 30 06 00 00  .byte 0xac, 0x40, 0x00, 0x00, 0x8c, 0x1b, 0x00, 0x00, 0x44, 0x11, 0x00, 0x00, 0x30, 0x06, 0x00, 0x00
