; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004156c0, declared_size=40, range_size=40, mode=arm
; class-group: FSCommandParamTokenizer
; alias: _ZN23FSCommandParamTokenizer12GetNumParamsEv
; demangled: FSCommandParamTokenizer::GetNumParams()
; decoder-mode: arm
004156c0  00 30 90 e5                                      ldr r3, [r0]
004156c4  04 20 90 e5                                      ldr r2, [r0, #4]
004156c8  02 30 63 e0                                      rsb r3, r3, r2
004156cc  c3 31 a0 e1                                      asr r3, r3, #3
004156d0  03 01 83 e0                                      add r0, r3, r3, lsl #2
004156d4  00 02 80 e0                                      add r0, r0, r0, lsl #4
004156d8  00 04 80 e0                                      add r0, r0, r0, lsl #8
004156dc  00 08 80 e0                                      add r0, r0, r0, lsl #16
004156e0  80 00 83 e0                                      add r0, r3, r0, lsl #1
004156e4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00415b64, declared_size=52, range_size=52, mode=arm
; class-group: FSCommandParamTokenizer
; alias: _ZN23FSCommandParamTokenizerD2Ev
; demangled: FSCommandParamTokenizer::~FSCommandParamTokenizer()
; decoder-mode: arm
00415b64  10 40 2d e9                                      push {r4, lr}
00415b68  06 00 90 e8                                      ldm r0, {r1, r2}
00415b6c  08 d0 4d e2                                      sub sp, sp, #8
00415b70  00 40 a0 e1                                      mov r4, r0
00415b74  02 00 51 e1                                      cmp r1, r2
00415b78  01 00 00 0a                                      beq #0x415b84
00415b7c  04 30 8d e2                                      add r3, sp, #4
00415b80  dd ff ff eb                                      bl #0x415afc
00415b84  04 00 a0 e1                                      mov r0, r4
00415b88  bb ff ff eb                                      bl #0x415a7c
00415b8c  04 00 a0 e1                                      mov r0, r4
00415b90  08 d0 8d e2                                      add sp, sp, #8
00415b94  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00415b98, declared_size=52, range_size=52, mode=arm
; class-group: FSCommandParamTokenizer
; alias: _ZN23FSCommandParamTokenizerD1Ev
; demangled: FSCommandParamTokenizer::~FSCommandParamTokenizer()
; decoder-mode: arm
00415b98  10 40 2d e9                                      push {r4, lr}
00415b9c  06 00 90 e8                                      ldm r0, {r1, r2}
00415ba0  08 d0 4d e2                                      sub sp, sp, #8
00415ba4  00 40 a0 e1                                      mov r4, r0
00415ba8  02 00 51 e1                                      cmp r1, r2
00415bac  01 00 00 0a                                      beq #0x415bb8
00415bb0  04 30 8d e2                                      add r3, sp, #4
00415bb4  d0 ff ff eb                                      bl #0x415afc
00415bb8  04 00 a0 e1                                      mov r0, r4
00415bbc  ae ff ff eb                                      bl #0x415a7c
00415bc0  04 00 a0 e1                                      mov r0, r4
00415bc4  08 d0 8d e2                                      add sp, sp, #8
00415bc8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00415e90, declared_size=624, range_size=624, mode=arm
; class-group: FSCommandParamTokenizer
; alias: _ZN23FSCommandParamTokenizer8TokenizeEPKc
; demangled: FSCommandParamTokenizer::Tokenize(char const*)
; decoder-mode: arm
00415e90  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00415e94  54 22 9f e5                                      ldr r2, [pc, #0x254]
00415e98  54 32 9f e5                                      ldr r3, [pc, #0x254]
00415e9c  84 d0 4d e2                                      sub sp, sp, #0x84
00415ea0  02 20 8f e0                                      add r2, pc, r2
00415ea4  14 30 8d e5                                      str r3, [sp, #0x14]
00415ea8  03 30 92 e7                                      ldr r3, [r2, r3]
00415eac  64 80 8d e2                                      add r8, sp, #0x64
00415eb0  08 20 8d e5                                      str r2, [sp, #8]
00415eb4  00 30 93 e5                                      ldr r3, [r3]
00415eb8  00 a0 a0 e1                                      mov sl, r0
00415ebc  30 20 8d e2                                      add r2, sp, #0x30
00415ec0  08 00 a0 e1                                      mov r0, r8
00415ec4  7c 30 8d e5                                      str r3, [sp, #0x7c]
00415ec8  87 f8 fb eb                                      bl #0x3140ec
00415ecc  74 10 9d e5                                      ldr r1, [sp, #0x74]
00415ed0  78 00 9d e5                                      ldr r0, [sp, #0x78]
00415ed4  00 00 51 e1                                      cmp r1, r0
00415ed8  13 00 00 1a                                      bne #0x415f2c
00415edc  08 00 51 e1                                      cmp r1, r8
00415ee0  08 00 00 0a                                      beq #0x415f08
00415ee4  00 00 51 e3                                      cmp r1, #0
00415ee8  06 00 00 0a                                      beq #0x415f08
00415eec  64 30 9d e5                                      ldr r3, [sp, #0x64]
00415ef0  03 30 61 e0                                      rsb r3, r1, r3
00415ef4  80 00 53 e3                                      cmp r3, #0x80
00415ef8  72 00 00 8a                                      bhi #0x4160c8
00415efc  01 00 a0 e1                                      mov r0, r1
00415f00  03 10 a0 e1                                      mov r1, r3
00415f04  fd cb 0b eb                                      bl #0x708f00
00415f08  14 20 9d e5                                      ldr r2, [sp, #0x14]
00415f0c  08 c0 9d e5                                      ldr ip, [sp, #8]
00415f10  02 30 9c e7                                      ldr r3, [ip, r2]
00415f14  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
00415f18  00 30 93 e5                                      ldr r3, [r3]
00415f1c  03 00 52 e1                                      cmp r2, r3
00415f20  6b 00 00 1a                                      bne #0x4160d4
00415f24  84 d0 8d e2                                      add sp, sp, #0x84
00415f28  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00415f2c  c4 41 9f e5                                      ldr r4, [pc, #0x1c4]
00415f30  20 30 8d e2                                      add r3, sp, #0x20
00415f34  04 40 8f e0                                      add r4, pc, r4
00415f38  01 40 84 e2                                      add r4, r4, #1
00415f3c  04 20 a0 e1                                      mov r2, r4
00415f40  5f fe ff eb                                      bl #0x4158c4
00415f44  74 10 9d e5                                      ldr r1, [sp, #0x74]
00415f48  01 00 50 e1                                      cmp r0, r1
00415f4c  56 00 00 0a                                      beq #0x4160ac
00415f50  78 30 9d e5                                      ldr r3, [sp, #0x78]
00415f54  00 60 63 e0                                      rsb r6, r3, r0
00415f58  01 20 63 e0                                      rsb r2, r3, r1
00415f5c  02 00 56 e1                                      cmp r6, r2
00415f60  5f 00 00 2a                                      bhs #0x4160e4
00415f64  06 00 83 e0                                      add r0, r3, r6
00415f68  04 20 a0 e1                                      mov r2, r4
00415f6c  28 30 8d e2                                      add r3, sp, #0x28
00415f70  17 fe ff eb                                      bl #0x4157d4
00415f74  74 30 9d e5                                      ldr r3, [sp, #0x74]
00415f78  03 00 50 e1                                      cmp r0, r3
00415f7c  58 00 00 0a                                      beq #0x4160e4
00415f80  78 40 9d e5                                      ldr r4, [sp, #0x78]
00415f84  00 40 64 e0                                      rsb r4, r4, r0
00415f88  01 30 94 e2                                      adds r3, r4, #1
00415f8c  01 30 a0 13                                      movne r3, #1
00415f90  01 20 96 e2                                      adds r2, r6, #1
00415f94  01 20 a0 13                                      movne r2, #1
00415f98  02 20 93 e1                                      orrs r2, r3, r2
00415f9c  42 00 00 0a                                      beq #0x4160ac
00415fa0  54 b1 9f e5                                      ldr fp, [pc, #0x154]
00415fa4  1c c0 8d e2                                      add ip, sp, #0x1c
00415fa8  24 10 8d e2                                      add r1, sp, #0x24
00415fac  0b b0 8f e0                                      add fp, pc, fp
00415fb0  4c 70 8d e2                                      add r7, sp, #0x4c
00415fb4  2c 90 8d e2                                      add sb, sp, #0x2c
00415fb8  01 b0 8b e2                                      add fp, fp, #1
00415fbc  34 50 8d e2                                      add r5, sp, #0x34
00415fc0  0c c0 8d e5                                      str ip, [sp, #0xc]
00415fc4  10 10 8d e5                                      str r1, [sp, #0x10]
00415fc8  06 20 a0 e1                                      mov r2, r6
00415fcc  04 30 66 e0                                      rsb r3, r6, r4
00415fd0  08 10 a0 e1                                      mov r1, r8
00415fd4  07 00 a0 e1                                      mov r0, r7
00415fd8  00 90 8d e5                                      str sb, [sp]
00415fdc  3d ff ff eb                                      bl #0x415cd8
00415fe0  60 10 9d e5                                      ldr r1, [sp, #0x60]
00415fe4  05 00 a0 e1                                      mov r0, r5
00415fe8  2a ff ff eb                                      bl #0x415c98
00415fec  0a 00 a0 e1                                      mov r0, sl
00415ff0  05 10 a0 e1                                      mov r1, r5
00415ff4  50 ff ff eb                                      bl #0x415d3c
00415ff8  05 00 a0 e1                                      mov r0, r5
00415ffc  6c fe ff eb                                      bl #0x4159b4
00416000  60 00 9d e5                                      ldr r0, [sp, #0x60]
00416004  07 00 50 e1                                      cmp r0, r7
00416008  06 00 00 0a                                      beq #0x416028
0041600c  00 00 50 e3                                      cmp r0, #0
00416010  04 00 00 0a                                      beq #0x416028
00416014  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
00416018  01 10 60 e0                                      rsb r1, r0, r1
0041601c  80 00 51 e3                                      cmp r1, #0x80
00416020  23 00 00 8a                                      bhi #0x4160b4
00416024  b5 cb 0b eb                                      bl #0x708f00
00416028  74 10 9d e5                                      ldr r1, [sp, #0x74]
0041602c  78 00 9d e5                                      ldr r0, [sp, #0x78]
00416030  01 30 60 e0                                      rsb r3, r0, r1
00416034  03 00 54 e1                                      cmp r4, r3
00416038  00 10 a0 21                                      movhs r1, r0
0041603c  a6 ff ff 2a                                      bhs #0x415edc
00416040  04 00 80 e0                                      add r0, r0, r4
00416044  0b 20 a0 e1                                      mov r2, fp
00416048  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0041604c  1c fe ff eb                                      bl #0x4158c4
00416050  74 10 9d e5                                      ldr r1, [sp, #0x74]
00416054  01 00 50 e1                                      cmp r0, r1
00416058  17 00 00 0a                                      beq #0x4160bc
0041605c  78 30 9d e5                                      ldr r3, [sp, #0x78]
00416060  00 60 63 e0                                      rsb r6, r3, r0
00416064  01 20 63 e0                                      rsb r2, r3, r1
00416068  02 00 56 e1                                      cmp r6, r2
0041606c  19 00 00 2a                                      bhs #0x4160d8
00416070  06 00 83 e0                                      add r0, r3, r6
00416074  0b 20 a0 e1                                      mov r2, fp
00416078  10 30 9d e5                                      ldr r3, [sp, #0x10]
0041607c  d4 fd ff eb                                      bl #0x4157d4
00416080  74 30 9d e5                                      ldr r3, [sp, #0x74]
00416084  03 00 50 e1                                      cmp r0, r3
00416088  12 00 00 0a                                      beq #0x4160d8
0041608c  78 40 9d e5                                      ldr r4, [sp, #0x78]
00416090  00 40 64 e0                                      rsb r4, r4, r0
00416094  01 30 94 e2                                      adds r3, r4, #1
00416098  01 30 a0 13                                      movne r3, #1
0041609c  01 20 96 e2                                      adds r2, r6, #1
004160a0  01 20 a0 13                                      movne r2, #1
004160a4  02 20 93 e1                                      orrs r2, r3, r2
004160a8  c6 ff ff 1a                                      bne #0x415fc8
004160ac  78 10 9d e5                                      ldr r1, [sp, #0x78]
004160b0  89 ff ff ea                                      b #0x415edc
004160b4  e1 e8 fb eb                                      bl #0x310440
004160b8  da ff ff ea                                      b #0x416028
004160bc  78 00 9d e5                                      ldr r0, [sp, #0x78]
004160c0  00 10 a0 e1                                      mov r1, r0
004160c4  84 ff ff ea                                      b #0x415edc
004160c8  01 00 a0 e1                                      mov r0, r1
004160cc  db e8 fb eb                                      bl #0x310440
004160d0  8c ff ff ea                                      b #0x415f08
004160d4  8d e0 fb eb                                      bl #0x30e310
004160d8  00 40 e0 e3                                      mvn r4, #0
004160dc  00 30 a0 e3                                      mov r3, #0
004160e0  ed ff ff ea                                      b #0x41609c
004160e4  00 30 a0 e3                                      mov r3, #0
004160e8  00 40 e0 e3                                      mvn r4, #0
004160ec  a7 ff ff ea                                      b #0x415f90
; mapping-symbol data/literal pool
004160f0  f0 eb 57 00 ac 40 00 00 b4 65 4f 00 3c 65 4f 00  .byte 0xf0, 0xeb, 0x57, 0x00, 0xac, 0x40, 0x00, 0x00, 0xb4, 0x65, 0x4f, 0x00, 0x3c, 0x65, 0x4f, 0x00

; FUNCTION 0x00416100, declared_size=48, range_size=48, mode=arm
; class-group: FSCommandParamTokenizer
; alias: _ZN23FSCommandParamTokenizerC1EPKc
; demangled: FSCommandParamTokenizer::FSCommandParamTokenizer(char const*)
; decoder-mode: arm
00416100  00 30 a0 e3                                      mov r3, #0
00416104  10 40 2d e9                                      push {r4, lr}
00416108  00 40 a0 e1                                      mov r4, r0
0041610c  10 30 80 e5                                      str r3, [r0, #0x10]
00416110  00 30 80 e5                                      str r3, [r0]
00416114  04 30 80 e5                                      str r3, [r0, #4]
00416118  08 30 80 e5                                      str r3, [r0, #8]
0041611c  5b ff ff eb                                      bl #0x415e90
00416120  00 30 94 e5                                      ldr r3, [r4]
00416124  04 00 a0 e1                                      mov r0, r4
00416128  0c 30 84 e5                                      str r3, [r4, #0xc]
0041612c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00416130, declared_size=48, range_size=48, mode=arm
; class-group: FSCommandParamTokenizer
; alias: _ZN23FSCommandParamTokenizerC2EPKc
; demangled: FSCommandParamTokenizer::FSCommandParamTokenizer(char const*)
; decoder-mode: arm
00416130  00 30 a0 e3                                      mov r3, #0
00416134  10 40 2d e9                                      push {r4, lr}
00416138  00 40 a0 e1                                      mov r4, r0
0041613c  10 30 80 e5                                      str r3, [r0, #0x10]
00416140  00 30 80 e5                                      str r3, [r0]
00416144  04 30 80 e5                                      str r3, [r0, #4]
00416148  08 30 80 e5                                      str r3, [r0, #8]
0041614c  4f ff ff eb                                      bl #0x415e90
00416150  00 30 94 e5                                      ldr r3, [r4]
00416154  04 00 a0 e1                                      mov r0, r4
00416158  0c 30 84 e5                                      str r3, [r4, #0xc]
0041615c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00416160, declared_size=104, range_size=104, mode=arm
; class-group: FSCommandParamTokenizer
; alias: _ZN23FSCommandParamTokenizer12GetLastParamEv
; demangled: FSCommandParamTokenizer::GetLastParam()
; decoder-mode: arm
00416160  10 40 2d e9                                      push {r4, lr}
00416164  0c 00 91 e8                                      ldm r1, {r2, r3}
00416168  00 40 a0 e1                                      mov r4, r0
0041616c  03 20 62 e0                                      rsb r2, r2, r3
00416170  c2 21 a0 e1                                      asr r2, r2, #3
00416174  02 11 82 e0                                      add r1, r2, r2, lsl #2
00416178  01 12 81 e0                                      add r1, r1, r1, lsl #4
0041617c  01 14 81 e0                                      add r1, r1, r1, lsl #8
00416180  01 18 81 e0                                      add r1, r1, r1, lsl #16
00416184  81 20 82 e0                                      add r2, r2, r1, lsl #1
00416188  00 00 52 e3                                      cmp r2, #0
0041618c  04 00 00 1a                                      bne #0x4161a4
00416190  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
00416194  01 10 8f e0                                      add r1, pc, r1
00416198  be fe ff eb                                      bl #0x415c98
0041619c  04 00 a0 e1                                      mov r0, r4
004161a0  10 80 bd e8                                      pop {r4, pc}
004161a4  10 00 84 e5                                      str r0, [r4, #0x10]
004161a8  14 00 84 e5                                      str r0, [r4, #0x14]
004161ac  18 30 43 e2                                      sub r3, r3, #0x18
004161b0  10 20 93 e5                                      ldr r2, [r3, #0x10]
004161b4  14 10 93 e5                                      ldr r1, [r3, #0x14]
004161b8  4a ed fb eb                                      bl #0x3116e8
004161bc  04 00 a0 e1                                      mov r0, r4
004161c0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004161c4  74 56 4b 00                                      .byte 0x74, 0x56, 0x4b, 0x00

; FUNCTION 0x004161c8, declared_size=104, range_size=104, mode=arm
; class-group: FSCommandParamTokenizer
; alias: _ZN23FSCommandParamTokenizer13GetFirstParamEv
; demangled: FSCommandParamTokenizer::GetFirstParam()
; decoder-mode: arm
004161c8  10 40 2d e9                                      push {r4, lr}
004161cc  04 20 91 e5                                      ldr r2, [r1, #4]
004161d0  00 30 91 e5                                      ldr r3, [r1]
004161d4  00 40 a0 e1                                      mov r4, r0
004161d8  02 20 63 e0                                      rsb r2, r3, r2
004161dc  c2 21 a0 e1                                      asr r2, r2, #3
004161e0  02 11 82 e0                                      add r1, r2, r2, lsl #2
004161e4  01 12 81 e0                                      add r1, r1, r1, lsl #4
004161e8  01 14 81 e0                                      add r1, r1, r1, lsl #8
004161ec  01 18 81 e0                                      add r1, r1, r1, lsl #16
004161f0  81 20 82 e0                                      add r2, r2, r1, lsl #1
004161f4  00 00 52 e3                                      cmp r2, #0
004161f8  04 00 00 1a                                      bne #0x416210
004161fc  28 10 9f e5                                      ldr r1, [pc, #0x28]
00416200  01 10 8f e0                                      add r1, pc, r1
00416204  a3 fe ff eb                                      bl #0x415c98
00416208  04 00 a0 e1                                      mov r0, r4
0041620c  10 80 bd e8                                      pop {r4, pc}
00416210  10 00 84 e5                                      str r0, [r4, #0x10]
00416214  14 00 84 e5                                      str r0, [r4, #0x14]
00416218  10 20 93 e5                                      ldr r2, [r3, #0x10]
0041621c  14 10 93 e5                                      ldr r1, [r3, #0x14]
00416220  30 ed fb eb                                      bl #0x3116e8
00416224  04 00 a0 e1                                      mov r0, r4
00416228  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0041622c  08 56 4b 00                                      .byte 0x08, 0x56, 0x4b, 0x00

; FUNCTION 0x00416230, declared_size=108, range_size=108, mode=arm
; class-group: FSCommandParamTokenizer
; alias: _ZN23FSCommandParamTokenizer8GetParamEj
; demangled: FSCommandParamTokenizer::GetParam(unsigned int)
; decoder-mode: arm
00416230  10 40 2d e9                                      push {r4, lr}
00416234  08 10 91 e8                                      ldm r1, {r3, ip}
00416238  00 40 a0 e1                                      mov r4, r0
0041623c  0c c0 63 e0                                      rsb ip, r3, ip
00416240  cc c1 a0 e1                                      asr ip, ip, #3
00416244  0c 11 8c e0                                      add r1, ip, ip, lsl #2
00416248  01 12 81 e0                                      add r1, r1, r1, lsl #4
0041624c  01 14 81 e0                                      add r1, r1, r1, lsl #8
00416250  01 18 81 e0                                      add r1, r1, r1, lsl #16
00416254  81 c0 8c e0                                      add ip, ip, r1, lsl #1
00416258  0c 00 52 e1                                      cmp r2, ip
0041625c  04 00 00 3a                                      blo #0x416274
00416260  30 10 9f e5                                      ldr r1, [pc, #0x30]
00416264  01 10 8f e0                                      add r1, pc, r1
00416268  8a fe ff eb                                      bl #0x415c98
0041626c  04 00 a0 e1                                      mov r0, r4
00416270  10 80 bd e8                                      pop {r4, pc}
00416274  18 10 a0 e3                                      mov r1, #0x18
00416278  91 32 23 e0                                      mla r3, r1, r2, r3
0041627c  10 00 84 e5                                      str r0, [r4, #0x10]
00416280  14 00 84 e5                                      str r0, [r4, #0x14]
00416284  10 20 93 e5                                      ldr r2, [r3, #0x10]
00416288  14 10 93 e5                                      ldr r1, [r3, #0x14]
0041628c  15 ed fb eb                                      bl #0x3116e8
00416290  04 00 a0 e1                                      mov r0, r4
00416294  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00416298  a4 55 4b 00                                      .byte 0xa4, 0x55, 0x4b, 0x00

; FUNCTION 0x0041629c, declared_size=128, range_size=128, mode=arm
; class-group: FSCommandParamTokenizer
; alias: _ZN23FSCommandParamTokenizer12GetPrevParamEv
; demangled: FSCommandParamTokenizer::GetPrevParam()
; decoder-mode: arm
0041629c  10 40 2d e9                                      push {r4, lr}
004162a0  00 30 91 e5                                      ldr r3, [r1]
004162a4  04 20 91 e5                                      ldr r2, [r1, #4]
004162a8  10 c0 91 e5                                      ldr ip, [r1, #0x10]
004162ac  00 40 a0 e1                                      mov r4, r0
004162b0  02 20 63 e0                                      rsb r2, r3, r2
004162b4  c2 21 a0 e1                                      asr r2, r2, #3
004162b8  02 e1 82 e0                                      add lr, r2, r2, lsl #2
004162bc  0e e2 8e e0                                      add lr, lr, lr, lsl #4
004162c0  0e e4 8e e0                                      add lr, lr, lr, lsl #8
004162c4  0e e8 8e e0                                      add lr, lr, lr, lsl #16
004162c8  8e 20 82 e0                                      add r2, r2, lr, lsl #1
004162cc  02 00 5c e1                                      cmp ip, r2
004162d0  0b 00 00 2a                                      bhs #0x416304
004162d4  00 00 5c e3                                      cmp ip, #0
004162d8  01 c0 4c 12                                      subne ip, ip, #1
004162dc  18 20 a0 13                                      movne r2, #0x18
004162e0  92 3c 23 10                                      mlane r3, r2, ip, r3
004162e4  10 c0 81 15                                      strne ip, [r1, #0x10]
004162e8  10 00 84 e5                                      str r0, [r4, #0x10]
004162ec  14 00 84 e5                                      str r0, [r4, #0x14]
004162f0  10 20 93 e5                                      ldr r2, [r3, #0x10]
004162f4  14 10 93 e5                                      ldr r1, [r3, #0x14]
004162f8  fa ec fb eb                                      bl #0x3116e8
004162fc  04 00 a0 e1                                      mov r0, r4
00416300  10 80 bd e8                                      pop {r4, pc}
00416304  0c 10 9f e5                                      ldr r1, [pc, #0xc]
00416308  01 10 8f e0                                      add r1, pc, r1
0041630c  61 fe ff eb                                      bl #0x415c98
00416310  04 00 a0 e1                                      mov r0, r4
00416314  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00416318  00 55 4b 00                                      .byte 0x00, 0x55, 0x4b, 0x00

; FUNCTION 0x0041631c, declared_size=172, range_size=172, mode=arm
; class-group: FSCommandParamTokenizer
; alias: _ZN23FSCommandParamTokenizer12GetNextParamEv
; demangled: FSCommandParamTokenizer::GetNextParam()
; decoder-mode: arm
0041631c  70 40 2d e9                                      push {r4, r5, r6, lr}
00416320  00 30 91 e5                                      ldr r3, [r1]
00416324  04 20 91 e5                                      ldr r2, [r1, #4]
00416328  10 e0 91 e5                                      ldr lr, [r1, #0x10]
0041632c  00 40 a0 e1                                      mov r4, r0
00416330  02 20 63 e0                                      rsb r2, r3, r2
00416334  c2 21 a0 e1                                      asr r2, r2, #3
00416338  02 51 82 e0                                      add r5, r2, r2, lsl #2
0041633c  05 52 85 e0                                      add r5, r5, r5, lsl #4
00416340  05 54 85 e0                                      add r5, r5, r5, lsl #8
00416344  05 58 85 e0                                      add r5, r5, r5, lsl #16
00416348  85 20 82 e0                                      add r2, r2, r5, lsl #1
0041634c  02 00 5e e1                                      cmp lr, r2
00416350  16 00 00 2a                                      bhs #0x4163b0
00416354  01 20 42 e2                                      sub r2, r2, #1
00416358  02 00 5e e1                                      cmp lr, r2
0041635c  08 00 00 3a                                      blo #0x416384
00416360  18 20 a0 e3                                      mov r2, #0x18
00416364  92 3e 23 e0                                      mla r3, r2, lr, r3
00416368  10 00 84 e5                                      str r0, [r4, #0x10]
0041636c  14 00 84 e5                                      str r0, [r4, #0x14]
00416370  10 20 93 e5                                      ldr r2, [r3, #0x10]
00416374  14 10 93 e5                                      ldr r1, [r3, #0x14]
00416378  da ec fb eb                                      bl #0x3116e8
0041637c  04 00 a0 e1                                      mov r0, r4
00416380  70 80 bd e8                                      pop {r4, r5, r6, pc}
00416384  18 c0 a0 e3                                      mov ip, #0x18
00416388  9c 3e 2c e0                                      mla ip, ip, lr, r3
0041638c  01 e0 8e e2                                      add lr, lr, #1
00416390  10 e0 81 e5                                      str lr, [r1, #0x10]
00416394  10 00 84 e5                                      str r0, [r4, #0x10]
00416398  14 00 84 e5                                      str r0, [r4, #0x14]
0041639c  10 20 9c e5                                      ldr r2, [ip, #0x10]
004163a0  14 10 9c e5                                      ldr r1, [ip, #0x14]
004163a4  cf ec fb eb                                      bl #0x3116e8
004163a8  04 00 a0 e1                                      mov r0, r4
004163ac  70 80 bd e8                                      pop {r4, r5, r6, pc}
004163b0  0c 10 9f e5                                      ldr r1, [pc, #0xc]
004163b4  01 10 8f e0                                      add r1, pc, r1
004163b8  36 fe ff eb                                      bl #0x415c98
004163bc  04 00 a0 e1                                      mov r0, r4
004163c0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004163c4  54 54 4b 00                                      .byte 0x54, 0x54, 0x4b, 0x00
