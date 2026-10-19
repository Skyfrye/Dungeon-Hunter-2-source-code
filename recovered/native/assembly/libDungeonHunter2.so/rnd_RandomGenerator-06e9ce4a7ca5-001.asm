; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00483a94, declared_size=52, range_size=52, mode=arm
; class-group: rnd::RandomGenerator
; alias: _ZN3rnd15RandomGenerator7NextIntEv
; demangled: rnd::RandomGenerator::NextInt()
; decoder-mode: arm
00483a94  10 40 2d e9                                      push {r4, lr}
00483a98  00 40 a0 e1                                      mov r4, r0
00483a9c  00 00 90 e5                                      ldr r0, [r0]
00483aa0  c1 30 06 e3                                      movw r3, #0x60c1
00483aa4  a8 30 41 e3                                      movt r3, #0x10a8
00483aa8  01 00 80 e2                                      add r0, r0, #1
00483aac  90 03 81 e0                                      umull r0, r1, r0, r3
00483ab0  04 20 e0 e3                                      mvn r2, #4
00483ab4  00 30 a0 e3                                      mov r3, #0
00483ab8  85 2b fa eb                                      bl #0x30e8d4
00483abc  00 20 84 e5                                      str r2, [r4]
00483ac0  02 00 a0 e1                                      mov r0, r2
00483ac4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00483ac8, declared_size=48, range_size=48, mode=arm
; class-group: rnd::RandomGenerator
; alias: _ZN3rnd15RandomGenerator6GetIntEii
; demangled: rnd::RandomGenerator::GetInt(int, int)
; decoder-mode: arm
00483ac8  02 00 51 e1                                      cmp r1, r2
00483acc  70 40 2d e9                                      push {r4, r5, r6, lr}
00483ad0  01 40 a0 e1                                      mov r4, r1
00483ad4  02 50 a0 e1                                      mov r5, r2
00483ad8  01 00 00 ba                                      blt #0x483ae4
00483adc  01 00 a0 e1                                      mov r0, r1
00483ae0  70 80 bd e8                                      pop {r4, r5, r6, pc}
00483ae4  ea ff ff eb                                      bl #0x483a94
00483ae8  05 10 64 e0                                      rsb r1, r4, r5
00483aec  0e 2c fa eb                                      bl #0x30eb2c
00483af0  04 00 81 e0                                      add r0, r1, r4
00483af4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00483af8, declared_size=28, range_size=28, mode=arm
; class-group: rnd::RandomGenerator
; alias: _ZN3rnd15RandomGeneratorclEj
; demangled: rnd::RandomGenerator::operator()(unsigned int)
; decoder-mode: arm
00483af8  10 40 2d e9                                      push {r4, lr}
00483afc  01 40 a0 e1                                      mov r4, r1
00483b00  e3 ff ff eb                                      bl #0x483a94
00483b04  04 10 a0 e1                                      mov r1, r4
00483b08  07 2c fa eb                                      bl #0x30eb2c
00483b0c  01 00 a0 e1                                      mov r0, r1
00483b10  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00483b14, declared_size=44, range_size=44, mode=arm
; class-group: rnd::RandomGenerator
; alias: _ZN3rnd15RandomGenerator4HashEPh
; demangled: rnd::RandomGenerator::Hash(unsigned char*)
; decoder-mode: arm
00483b14  00 30 d1 e5                                      ldrb r3, [r1]
00483b18  00 00 53 e3                                      cmp r3, #0
00483b1c  05 05 01 03                                      movweq r0, #0x1505
00483b20  1e ff 2f 01                                      bxeq lr
00483b24  05 05 01 e3                                      movw r0, #0x1505
00483b28  80 22 83 e0                                      add r2, r3, r0, lsl #5
00483b2c  01 30 f1 e5                                      ldrb r3, [r1, #1]!
00483b30  02 00 80 e0                                      add r0, r0, r2
00483b34  00 00 53 e3                                      cmp r3, #0
00483b38  fa ff ff 1a                                      bne #0x483b28
00483b3c  1e ff 2f e1                                      bx lr

; FUNCTION 0x004843a0, declared_size=36, range_size=36, mode=arm
; class-group: rnd::RandomGenerator
; alias: _ZN3rnd15RandomGenerator11UnloadTilesEv
; demangled: rnd::RandomGenerator::UnloadTiles()
; decoder-mode: arm
004843a0  10 40 2d e9                                      push {r4, lr}
004843a4  00 40 a0 e1                                      mov r4, r0
004843a8  14 01 90 e5                                      ldr r0, [r0, #0x114]
004843ac  00 00 50 e3                                      cmp r0, #0
004843b0  02 00 00 0a                                      beq #0x4843c0
004843b4  3b 35 00 eb                                      bl #0x4918a8
004843b8  00 30 a0 e3                                      mov r3, #0
004843bc  14 31 84 e5                                      str r3, [r4, #0x114]
004843c0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00484438, declared_size=52, range_size=52, mode=arm
; class-group: rnd::RandomGenerator
; alias: _ZNK3rnd15RandomGenerator7GetListEPKc
; demangled: rnd::RandomGenerator::GetList(char const*) const
; decoder-mode: arm
00484438  10 40 2d e9                                      push {r4, lr}
0048443c  08 d0 4d e2                                      sub sp, sp, #8
00484440  08 30 8d e2                                      add r3, sp, #8
00484444  04 10 23 e5                                      str r1, [r3, #-4]!
00484448  54 40 80 e2                                      add r4, r0, #0x54
0048444c  03 10 a0 e1                                      mov r1, r3
00484450  04 00 a0 e1                                      mov r0, r4
00484454  da ff ff eb                                      bl #0x4843c4
00484458  04 00 50 e1                                      cmp r0, r4
0048445c  00 00 a0 03                                      moveq r0, #0
00484460  14 00 90 15                                      ldrne r0, [r0, #0x14]
00484464  08 d0 8d e2                                      add sp, sp, #8
00484468  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00484554, declared_size=124, range_size=124, mode=arm
; class-group: rnd::RandomGenerator
; alias: _ZN3rnd15RandomGenerator9ValidListEPKc
; demangled: rnd::RandomGenerator::ValidList(char const*)
; decoder-mode: arm
00484554  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
00484558  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
0048455c  70 40 2d e9                                      push {r4, r5, r6, lr}
00484560  03 30 8f e0                                      add r3, pc, r3
00484564  02 60 93 e7                                      ldr r6, [r3, r2]
00484568  82 df 4d e2                                      sub sp, sp, #0x208
0048456c  04 40 8d e2                                      add r4, sp, #4
00484570  00 20 96 e5                                      ldr r2, [r6]
00484574  00 50 a0 e1                                      mov r5, r0
00484578  04 00 a0 e1                                      mov r0, r4
0048457c  54 50 85 e2                                      add r5, r5, #0x54
00484580  04 22 8d e5                                      str r2, [sp, #0x204]
00484584  e5 27 fa eb                                      bl #0x30e520
00484588  00 20 e0 e3                                      mvn r2, #0
0048458c  04 00 a0 e1                                      mov r0, r4
00484590  00 10 a0 e3                                      mov r1, #0
00484594  9e 27 fb eb                                      bl #0x34e414
00484598  04 10 a0 e1                                      mov r1, r4
0048459c  05 00 a0 e1                                      mov r0, r5
004845a0  b1 ff ff eb                                      bl #0x48446c
004845a4  04 22 9d e5                                      ldr r2, [sp, #0x204]
004845a8  00 30 96 e5                                      ldr r3, [r6]
004845ac  00 00 55 e0                                      subs r0, r5, r0
004845b0  01 00 a0 13                                      movne r0, #1
004845b4  03 00 52 e1                                      cmp r2, r3
004845b8  01 00 00 1a                                      bne #0x4845c4
004845bc  82 df 8d e2                                      add sp, sp, #0x208
004845c0  70 80 bd e8                                      pop {r4, r5, r6, pc}
004845c4  51 27 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004845c8  30 05 51 00 ac 40 00 00                          .byte 0x30, 0x05, 0x51, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x004845d0, declared_size=124, range_size=124, mode=arm
; class-group: rnd::RandomGenerator
; alias: _ZN3rnd15RandomGenerator10ValidBlockEPKc
; demangled: rnd::RandomGenerator::ValidBlock(char const*)
; decoder-mode: arm
004845d0  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
004845d4  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
004845d8  70 40 2d e9                                      push {r4, r5, r6, lr}
004845dc  03 30 8f e0                                      add r3, pc, r3
004845e0  02 60 93 e7                                      ldr r6, [r3, r2]
004845e4  82 df 4d e2                                      sub sp, sp, #0x208
004845e8  04 40 8d e2                                      add r4, sp, #4
004845ec  00 20 96 e5                                      ldr r2, [r6]
004845f0  00 50 a0 e1                                      mov r5, r0
004845f4  04 00 a0 e1                                      mov r0, r4
004845f8  3c 50 85 e2                                      add r5, r5, #0x3c
004845fc  04 22 8d e5                                      str r2, [sp, #0x204]
00484600  c6 27 fa eb                                      bl #0x30e520
00484604  00 20 e0 e3                                      mvn r2, #0
00484608  04 00 a0 e1                                      mov r0, r4
0048460c  00 10 a0 e3                                      mov r1, #0
00484610  7f 27 fb eb                                      bl #0x34e414
00484614  04 10 a0 e1                                      mov r1, r4
00484618  05 00 a0 e1                                      mov r0, r5
0048461c  af ff ff eb                                      bl #0x4844e0
00484620  04 22 9d e5                                      ldr r2, [sp, #0x204]
00484624  00 30 96 e5                                      ldr r3, [r6]
00484628  00 00 55 e0                                      subs r0, r5, r0
0048462c  01 00 a0 13                                      movne r0, #1
00484630  03 00 52 e1                                      cmp r2, r3
00484634  01 00 00 1a                                      bne #0x484640
00484638  82 df 8d e2                                      add sp, sp, #0x208
0048463c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00484640  32 27 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00484644  b4 04 51 00 ac 40 00 00                          .byte 0xb4, 0x04, 0x51, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00484820, declared_size=208, range_size=208, mode=arm
; class-group: rnd::RandomGenerator
; alias: _ZN3rnd15RandomGenerator8PrintMapEv
; demangled: rnd::RandomGenerator::PrintMap()
; decoder-mode: arm
00484820  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00484824  30 d0 4d e2                                      sub sp, sp, #0x30
00484828  24 90 80 e2                                      add sb, r0, #0x24
0048482c  14 50 80 e2                                      add r5, r0, #0x14
00484830  0d a0 a0 e1                                      mov sl, sp
00484834  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
00484838  0f 00 8a e8                                      stm sl, {r0, r1, r2, r3}
0048483c  09 00 a0 e1                                      mov r0, sb
00484840  0d 10 a0 e1                                      mov r1, sp
00484844  1c fd ff eb                                      bl #0x483cbc
00484848  00 80 a0 e3                                      mov r8, #0
0048484c  00 00 58 e1                                      cmp r8, r0
00484850  20 40 8d e2                                      add r4, sp, #0x20
00484854  10 60 8d e2                                      add r6, sp, #0x10
00484858  22 00 00 aa                                      bge #0x4848e8
0048485c  00 70 a0 e3                                      mov r7, #0
00484860  0b 00 00 ea                                      b #0x484894
00484864  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
00484868  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
0048486c  04 00 a0 e1                                      mov r0, r4
00484870  08 10 a0 e1                                      mov r1, r8
00484874  76 fd ff eb                                      bl #0x483e54
00484878  20 30 9d e5                                      ldr r3, [sp, #0x20]
0048487c  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
00484880  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
00484884  07 10 a0 e1                                      mov r1, r7
00484888  04 00 a0 e1                                      mov r0, r4
0048488c  38 fd ff eb                                      bl #0x483d74
00484890  01 70 87 e2                                      add r7, r7, #1
00484894  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
00484898  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
0048489c  04 00 a0 e1                                      mov r0, r4
004848a0  00 10 a0 e3                                      mov r1, #0
004848a4  6a fd ff eb                                      bl #0x483e54
004848a8  20 c0 9d e5                                      ldr ip, [sp, #0x20]
004848ac  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
004848b0  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
004848b4  10 00 8c e2                                      add r0, ip, #0x10
004848b8  06 10 a0 e1                                      mov r1, r6
004848bc  1b fd ff eb                                      bl #0x483d30
004848c0  00 00 57 e1                                      cmp r7, r0
004848c4  e6 ff ff ba                                      blt #0x484864
004848c8  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
004848cc  0f 00 8a e8                                      stm sl, {r0, r1, r2, r3}
004848d0  09 00 a0 e1                                      mov r0, sb
004848d4  0d 10 a0 e1                                      mov r1, sp
004848d8  f7 fc ff eb                                      bl #0x483cbc
004848dc  01 80 88 e2                                      add r8, r8, #1
004848e0  00 00 58 e1                                      cmp r8, r0
004848e4  dc ff ff ba                                      blt #0x48485c
004848e8  30 d0 8d e2                                      add sp, sp, #0x30
004848ec  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00485a34, declared_size=108, range_size=108, mode=arm
; class-group: rnd::RandomGenerator
; alias: _ZN3rnd15RandomGenerator15UnloadRoomPoolsEv
; demangled: rnd::RandomGenerator::UnloadRoomPools()
; decoder-mode: arm
00485a34  70 40 2d e9                                      push {r4, r5, r6, lr}
00485a38  00 50 a0 e1                                      mov r5, r0
00485a3c  1c 31 95 e5                                      ldr r3, [r5, #0x11c]
00485a40  18 01 90 e5                                      ldr r0, [r0, #0x118]
00485a44  03 00 50 e1                                      cmp r0, r3
00485a48  13 00 00 0a                                      beq #0x485a9c
00485a4c  00 10 a0 e1                                      mov r1, r0
00485a50  04 40 91 e4                                      ldr r4, [r1], #4
00485a54  03 00 51 e1                                      cmp r1, r3
00485a58  03 00 00 0a                                      beq #0x485a6c
00485a5c  01 20 53 e0                                      subs r2, r3, r1
00485a60  01 00 00 0a                                      beq #0x485a6c
00485a64  33 21 fa eb                                      bl #0x30df38
00485a68  1c 31 95 e5                                      ldr r3, [r5, #0x11c]
00485a6c  04 30 43 e2                                      sub r3, r3, #4
00485a70  00 00 54 e3                                      cmp r4, #0
00485a74  04 00 a0 e1                                      mov r0, r4
00485a78  1c 31 85 e5                                      str r3, [r5, #0x11c]
00485a7c  03 00 00 0a                                      beq #0x485a90
00485a80  e1 ff ff eb                                      bl #0x485a0c
00485a84  04 00 a0 e1                                      mov r0, r4
00485a88  6c 2a fa eb                                      bl #0x310440
00485a8c  1c 31 95 e5                                      ldr r3, [r5, #0x11c]
00485a90  18 01 95 e5                                      ldr r0, [r5, #0x118]
00485a94  00 00 53 e1                                      cmp r3, r0
00485a98  eb ff ff 1a                                      bne #0x485a4c
00485a9c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00485cdc, declared_size=364, range_size=364, mode=arm
; class-group: rnd::RandomGenerator
; alias: _ZN3rnd15RandomGenerator13LoadRoomPoolsEP9TiXmlNode
; demangled: rnd::RandomGenerator::LoadRoomPools(TiXmlNode*)
; decoder-mode: arm
00485cdc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00485ce0  5c a1 9f e5                                      ldr sl, [pc, #0x15c]
00485ce4  14 d0 4d e2                                      sub sp, sp, #0x14
00485ce8  00 50 a0 e1                                      mov r5, r0
00485cec  0a a0 8f e0                                      add sl, pc, sl
00485cf0  01 00 a0 e1                                      mov r0, r1
00485cf4  0a 10 a0 e1                                      mov r1, sl
00485cf8  26 3c 02 eb                                      bl #0x514d98
00485cfc  00 80 50 e2                                      subs r8, r0, #0
00485d00  1b 00 00 0a                                      beq #0x485d74
00485d04  0c 30 8d e2                                      add r3, sp, #0xc
00485d08  12 be 85 e2                                      add fp, r5, #0x120
00485d0c  00 60 a0 e3                                      mov r6, #0
00485d10  04 30 8d e5                                      str r3, [sp, #4]
00485d14  00 10 a0 e3                                      mov r1, #0
00485d18  14 00 a0 e3                                      mov r0, #0x14
00485d1c  13 2a fa eb                                      bl #0x310570
00485d20  08 10 a0 e1                                      mov r1, r8
00485d24  00 60 80 e5                                      str r6, [r0]
00485d28  04 60 80 e5                                      str r6, [r0, #4]
00485d2c  08 60 80 e5                                      str r6, [r0, #8]
00485d30  0c 60 80 e5                                      str r6, [r0, #0xc]
00485d34  10 50 80 e5                                      str r5, [r0, #0x10]
00485d38  00 40 a0 e1                                      mov r4, r0
00485d3c  5f 1b 00 eb                                      bl #0x48cac0
00485d40  1c 71 95 e5                                      ldr r7, [r5, #0x11c]
00485d44  20 31 95 e5                                      ldr r3, [r5, #0x120]
00485d48  03 00 57 e1                                      cmp r7, r3
00485d4c  0b 00 00 0a                                      beq #0x485d80
00485d50  00 40 87 e5                                      str r4, [r7]
00485d54  1c 31 95 e5                                      ldr r3, [r5, #0x11c]
00485d58  04 30 83 e2                                      add r3, r3, #4
00485d5c  1c 31 85 e5                                      str r3, [r5, #0x11c]
00485d60  08 00 a0 e1                                      mov r0, r8
00485d64  0a 10 a0 e1                                      mov r1, sl
00485d68  d6 3b 02 eb                                      bl #0x514cc8
00485d6c  00 80 50 e2                                      subs r8, r0, #0
00485d70  e7 ff ff 1a                                      bne #0x485d14
00485d74  01 00 a0 e3                                      mov r0, #1
00485d78  14 d0 8d e2                                      add sp, sp, #0x14
00485d7c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00485d80  18 21 95 e5                                      ldr r2, [r5, #0x118]
00485d84  07 20 62 e0                                      rsb r2, r2, r7
00485d88  42 21 a0 e1                                      asr r2, r2, #2
00485d8c  01 00 52 e3                                      cmp r2, #1
00485d90  02 30 82 20                                      addhs r3, r2, r2
00485d94  01 30 82 32                                      addlo r3, r2, #1
00485d98  07 01 73 e3                                      cmn r3, #0xc0000001
00485d9c  1a 00 00 9a                                      bls #0x485e0c
00485da0  03 31 e0 e3                                      mvn r3, #0xc0000000
00485da4  03 10 a0 e1                                      mov r1, r3
00485da8  0b 00 a0 e1                                      mov r0, fp
00485dac  04 20 9d e5                                      ldr r2, [sp, #4]
00485db0  0c 30 8d e5                                      str r3, [sp, #0xc]
00485db4  cf fb ff eb                                      bl #0x484cf8
00485db8  18 11 95 e5                                      ldr r1, [r5, #0x118]
00485dbc  00 90 a0 e1                                      mov sb, r0
00485dc0  01 70 57 e0                                      subs r7, r7, r1
00485dc4  00 70 a0 01                                      moveq r7, r0
00485dc8  12 00 00 1a                                      bne #0x485e18
00485dcc  04 40 87 e4                                      str r4, [r7], #4
00485dd0  18 01 95 e5                                      ldr r0, [r5, #0x118]
00485dd4  20 11 95 e5                                      ldr r1, [r5, #0x120]
00485dd8  00 00 50 e3                                      cmp r0, #0
00485ddc  04 00 00 0a                                      beq #0x485df4
00485de0  01 10 60 e0                                      rsb r1, r0, r1
00485de4  03 10 c1 e3                                      bic r1, r1, #3
00485de8  80 00 51 e3                                      cmp r1, #0x80
00485dec  0d 00 00 8a                                      bhi #0x485e28
00485df0  42 0c 0a eb                                      bl #0x708f00
00485df4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00485df8  18 91 85 e5                                      str sb, [r5, #0x118]
00485dfc  1c 71 85 e5                                      str r7, [r5, #0x11c]
00485e00  03 91 89 e0                                      add sb, sb, r3, lsl #2
00485e04  20 91 85 e5                                      str sb, [r5, #0x120]
00485e08  d4 ff ff ea                                      b #0x485d60
00485e0c  03 00 52 e1                                      cmp r2, r3
00485e10  e3 ff ff 9a                                      bls #0x485da4
00485e14  e1 ff ff ea                                      b #0x485da0
00485e18  07 20 a0 e1                                      mov r2, r7
00485e1c  45 20 fa eb                                      bl #0x30df38
00485e20  07 70 80 e0                                      add r7, r0, r7
00485e24  e8 ff ff ea                                      b #0x485dcc
00485e28  84 29 fa eb                                      bl #0x310440
00485e2c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00485e30  18 91 85 e5                                      str sb, [r5, #0x118]
00485e34  1c 71 85 e5                                      str r7, [r5, #0x11c]
00485e38  03 91 89 e0                                      add sb, sb, r3, lsl #2
00485e3c  20 91 85 e5                                      str sb, [r5, #0x120]
00485e40  c6 ff ff ea                                      b #0x485d60
; mapping-symbol data/literal pool
00485e44  f4 ee 44 00                                      .byte 0xf4, 0xee, 0x44, 0x00

; FUNCTION 0x004865f0, declared_size=208, range_size=208, mode=arm
; class-group: rnd::RandomGenerator
; alias: _ZN3rnd15RandomGenerator13LoadListRulesEP9TiXmlNode
; demangled: rnd::RandomGenerator::LoadListRules(TiXmlNode*)
; decoder-mode: arm
004865f0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004865f4  bc a0 9f e5                                      ldr sl, [pc, #0xbc]
004865f8  24 d0 4d e2                                      sub sp, sp, #0x24
004865fc  00 70 a0 e1                                      mov r7, r0
00486600  0a a0 8f e0                                      add sl, pc, sl
00486604  01 00 a0 e1                                      mov r0, r1
00486608  0a 10 a0 e1                                      mov r1, sl
0048660c  e1 39 02 eb                                      bl #0x514d98
00486610  00 50 50 e2                                      subs r5, r0, #0
00486614  24 00 00 0a                                      beq #0x4866ac
00486618  9c 90 9f e5                                      ldr sb, [pc, #0x9c]
0048661c  0c 30 8d e2                                      add r3, sp, #0xc
00486620  04 30 8d e5                                      str r3, [sp, #4]
00486624  14 30 8d e2                                      add r3, sp, #0x14
00486628  54 80 87 e2                                      add r8, r7, #0x54
0048662c  09 90 8f e0                                      add sb, pc, sb
00486630  1c b0 8d e2                                      add fp, sp, #0x1c
00486634  00 30 8d e5                                      str r3, [sp]
00486638  00 60 a0 e3                                      mov r6, #0
0048663c  00 10 a0 e3                                      mov r1, #0
00486640  2c 00 a0 e3                                      mov r0, #0x2c
00486644  c9 27 fa eb                                      bl #0x310570
00486648  0b 20 a0 e1                                      mov r2, fp
0048664c  09 10 a0 e1                                      mov r1, sb
00486650  00 40 a0 e1                                      mov r4, r0
00486654  a4 36 fa eb                                      bl #0x3140ec
00486658  01 30 a0 e3                                      mov r3, #1
0048665c  05 10 a0 e1                                      mov r1, r5
00486660  18 30 c4 e5                                      strb r3, [r4, #0x18]
00486664  04 00 a0 e1                                      mov r0, r4
00486668  1c 60 84 e5                                      str r6, [r4, #0x1c]
0048666c  20 60 84 e5                                      str r6, [r4, #0x20]
00486670  24 60 84 e5                                      str r6, [r4, #0x24]
00486674  28 70 84 e5                                      str r7, [r4, #0x28]
00486678  ab 21 00 eb                                      bl #0x48ed2c
0048667c  14 30 94 e5                                      ldr r3, [r4, #0x14]
00486680  00 20 9d e5                                      ldr r2, [sp]
00486684  04 00 9d e5                                      ldr r0, [sp, #4]
00486688  08 10 a0 e1                                      mov r1, r8
0048668c  14 30 8d e5                                      str r3, [sp, #0x14]
00486690  18 40 8d e5                                      str r4, [sp, #0x18]
00486694  6c ff ff eb                                      bl #0x48644c
00486698  05 00 a0 e1                                      mov r0, r5
0048669c  0a 10 a0 e1                                      mov r1, sl
004866a0  88 39 02 eb                                      bl #0x514cc8
004866a4  00 50 50 e2                                      subs r5, r0, #0
004866a8  e3 ff ff 1a                                      bne #0x48663c
004866ac  01 00 a0 e3                                      mov r0, #1
004866b0  24 d0 8d e2                                      add sp, sp, #0x24
004866b4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
004866b8  18 6c 46 00 dc 51 44 00                          .byte 0x18, 0x6c, 0x46, 0x00, 0xdc, 0x51, 0x44, 0x00

; FUNCTION 0x00487e84, declared_size=344, range_size=344, mode=arm
; class-group: rnd::RandomGenerator
; alias: _ZN3rnd15RandomGeneratorC1Ev
; demangled: rnd::RandomGenerator::RandomGenerator()
; decoder-mode: arm
00487e84  30 40 2d e9                                      push {r4, r5, lr}
00487e88  00 40 a0 e1                                      mov r4, r0
00487e8c  0c d0 4d e2                                      sub sp, sp, #0xc
00487e90  08 00 80 e2                                      add r0, r0, #8
00487e94  00 50 a0 e3                                      mov r5, #0
00487e98  ce ff ff eb                                      bl #0x487dd8
00487e9c  04 20 a0 e1                                      mov r2, r4
00487ea0  04 30 a0 e1                                      mov r3, r4
00487ea4  40 50 84 e5                                      str r5, [r4, #0x40]
00487ea8  3c 50 e2 e5                                      strb r5, [r2, #0x3c]!
00487eac  48 20 84 e5                                      str r2, [r4, #0x48]
00487eb0  44 20 84 e5                                      str r2, [r4, #0x44]
00487eb4  4c 50 84 e5                                      str r5, [r4, #0x4c]
00487eb8  58 50 84 e5                                      str r5, [r4, #0x58]
00487ebc  54 50 e3 e5                                      strb r5, [r3, #0x54]!
00487ec0  60 30 84 e5                                      str r3, [r4, #0x60]
00487ec4  5c 30 84 e5                                      str r3, [r4, #0x5c]
00487ec8  64 50 84 e5                                      str r5, [r4, #0x64]
00487ecc  04 10 a0 e1                                      mov r1, r4
00487ed0  6c 00 84 e2                                      add r0, r4, #0x6c
00487ed4  47 18 00 eb                                      bl #0x48dff8
00487ed8  fc 30 84 e2                                      add r3, r4, #0xfc
00487edc  03 00 a0 e1                                      mov r0, r3
00487ee0  0c 31 84 e5                                      str r3, [r4, #0x10c]
00487ee4  10 31 84 e5                                      str r3, [r4, #0x110]
00487ee8  10 10 a0 e3                                      mov r1, #0x10
00487eec  e2 25 fa eb                                      bl #0x31167c
00487ef0  0c 21 94 e5                                      ldr r2, [r4, #0x10c]
00487ef4  4b 3f 84 e2                                      add r3, r4, #0x12c
00487ef8  03 00 a0 e1                                      mov r0, r3
00487efc  00 50 c2 e5                                      strb r5, [r2]
00487f00  10 10 a0 e3                                      mov r1, #0x10
00487f04  14 51 84 e5                                      str r5, [r4, #0x114]
00487f08  18 51 84 e5                                      str r5, [r4, #0x118]
00487f0c  1c 51 84 e5                                      str r5, [r4, #0x11c]
00487f10  20 51 84 e5                                      str r5, [r4, #0x120]
00487f14  24 51 84 e5                                      str r5, [r4, #0x124]
00487f18  28 51 84 e5                                      str r5, [r4, #0x128]
00487f1c  3c 31 84 e5                                      str r3, [r4, #0x13c]
00487f20  40 31 84 e5                                      str r3, [r4, #0x140]
00487f24  d4 25 fa eb                                      bl #0x31167c
00487f28  3c 21 94 e5                                      ldr r2, [r4, #0x13c]
00487f2c  51 3f 84 e2                                      add r3, r4, #0x144
00487f30  03 00 a0 e1                                      mov r0, r3
00487f34  00 50 c2 e5                                      strb r5, [r2]
00487f38  10 10 a0 e3                                      mov r1, #0x10
00487f3c  54 31 84 e5                                      str r3, [r4, #0x154]
00487f40  58 31 84 e5                                      str r3, [r4, #0x158]
00487f44  cc 25 fa eb                                      bl #0x31167c
00487f48  54 31 94 e5                                      ldr r3, [r4, #0x154]
00487f4c  80 10 9f e5                                      ldr r1, [pc, #0x80]
00487f50  04 20 8d e2                                      add r2, sp, #4
00487f54  00 50 c3 e5                                      strb r5, [r3]
00487f58  01 10 8f e0                                      add r1, pc, r1
00487f5c  57 0f 84 e2                                      add r0, r4, #0x15c
00487f60  61 30 fa eb                                      bl #0x3140ec
00487f64  5d 3f 84 e2                                      add r3, r4, #0x174
00487f68  03 00 a0 e1                                      mov r0, r3
00487f6c  84 31 84 e5                                      str r3, [r4, #0x184]
00487f70  88 31 84 e5                                      str r3, [r4, #0x188]
00487f74  10 10 a0 e3                                      mov r1, #0x10
00487f78  bf 25 fa eb                                      bl #0x31167c
00487f7c  84 31 94 e5                                      ldr r3, [r4, #0x184]
00487f80  05 10 a0 e1                                      mov r1, r5
00487f84  c6 0f a0 e3                                      mov r0, #0x318
00487f88  00 50 c3 e5                                      strb r5, [r3]
00487f8c  8c 51 84 e5                                      str r5, [r4, #0x18c]
00487f90  76 21 fa eb                                      bl #0x310570
00487f94  04 10 a0 e3                                      mov r1, #4
00487f98  00 50 a0 e1                                      mov r5, r0
00487f9c  81 b4 fd eb                                      bl #0x3f51a8
00487fa0  30 30 9f e5                                      ldr r3, [pc, #0x30]
00487fa4  8c 51 84 e5                                      str r5, [r4, #0x18c]
00487fa8  03 30 8f e0                                      add r3, pc, r3
00487fac  20 30 85 e5                                      str r3, [r5, #0x20]
00487fb0  8c 01 94 e5                                      ldr r0, [r4, #0x18c]
00487fb4  04 00 80 e2                                      add r0, r0, #4
00487fb8  6e 2f 02 eb                                      bl #0x513d78
00487fbc  8c 01 94 e5                                      ldr r0, [r4, #0x18c]
00487fc0  04 00 80 e2                                      add r0, r0, #4
00487fc4  c8 2d 02 eb                                      bl #0x5136ec
00487fc8  04 00 a0 e1                                      mov r0, r4
00487fcc  0c d0 8d e2                                      add sp, sp, #0xc
00487fd0  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
00487fd4  80 ec 43 00 c8 84 43 00                          .byte 0x80, 0xec, 0x43, 0x00, 0xc8, 0x84, 0x43, 0x00

; FUNCTION 0x00487fdc, declared_size=344, range_size=344, mode=arm
; class-group: rnd::RandomGenerator
; alias: _ZN3rnd15RandomGeneratorC2Ev
; demangled: rnd::RandomGenerator::RandomGenerator()
; decoder-mode: arm
00487fdc  30 40 2d e9                                      push {r4, r5, lr}
00487fe0  00 40 a0 e1                                      mov r4, r0
00487fe4  0c d0 4d e2                                      sub sp, sp, #0xc
00487fe8  08 00 80 e2                                      add r0, r0, #8
00487fec  00 50 a0 e3                                      mov r5, #0
00487ff0  78 ff ff eb                                      bl #0x487dd8
00487ff4  04 20 a0 e1                                      mov r2, r4
00487ff8  04 30 a0 e1                                      mov r3, r4
00487ffc  40 50 84 e5                                      str r5, [r4, #0x40]
00488000  3c 50 e2 e5                                      strb r5, [r2, #0x3c]!
00488004  48 20 84 e5                                      str r2, [r4, #0x48]
00488008  44 20 84 e5                                      str r2, [r4, #0x44]
0048800c  4c 50 84 e5                                      str r5, [r4, #0x4c]
00488010  58 50 84 e5                                      str r5, [r4, #0x58]
00488014  54 50 e3 e5                                      strb r5, [r3, #0x54]!
00488018  60 30 84 e5                                      str r3, [r4, #0x60]
0048801c  5c 30 84 e5                                      str r3, [r4, #0x5c]
00488020  64 50 84 e5                                      str r5, [r4, #0x64]
00488024  04 10 a0 e1                                      mov r1, r4
00488028  6c 00 84 e2                                      add r0, r4, #0x6c
0048802c  f1 17 00 eb                                      bl #0x48dff8
00488030  fc 30 84 e2                                      add r3, r4, #0xfc
00488034  03 00 a0 e1                                      mov r0, r3
00488038  0c 31 84 e5                                      str r3, [r4, #0x10c]
0048803c  10 31 84 e5                                      str r3, [r4, #0x110]
00488040  10 10 a0 e3                                      mov r1, #0x10
00488044  8c 25 fa eb                                      bl #0x31167c
00488048  0c 21 94 e5                                      ldr r2, [r4, #0x10c]
0048804c  4b 3f 84 e2                                      add r3, r4, #0x12c
00488050  03 00 a0 e1                                      mov r0, r3
00488054  00 50 c2 e5                                      strb r5, [r2]
00488058  10 10 a0 e3                                      mov r1, #0x10
0048805c  14 51 84 e5                                      str r5, [r4, #0x114]
00488060  18 51 84 e5                                      str r5, [r4, #0x118]
00488064  1c 51 84 e5                                      str r5, [r4, #0x11c]
00488068  20 51 84 e5                                      str r5, [r4, #0x120]
0048806c  24 51 84 e5                                      str r5, [r4, #0x124]
00488070  28 51 84 e5                                      str r5, [r4, #0x128]
00488074  3c 31 84 e5                                      str r3, [r4, #0x13c]
00488078  40 31 84 e5                                      str r3, [r4, #0x140]
0048807c  7e 25 fa eb                                      bl #0x31167c
00488080  3c 21 94 e5                                      ldr r2, [r4, #0x13c]
00488084  51 3f 84 e2                                      add r3, r4, #0x144
00488088  03 00 a0 e1                                      mov r0, r3
0048808c  00 50 c2 e5                                      strb r5, [r2]
00488090  10 10 a0 e3                                      mov r1, #0x10
00488094  54 31 84 e5                                      str r3, [r4, #0x154]
00488098  58 31 84 e5                                      str r3, [r4, #0x158]
0048809c  76 25 fa eb                                      bl #0x31167c
004880a0  54 31 94 e5                                      ldr r3, [r4, #0x154]
004880a4  80 10 9f e5                                      ldr r1, [pc, #0x80]
004880a8  04 20 8d e2                                      add r2, sp, #4
004880ac  00 50 c3 e5                                      strb r5, [r3]
004880b0  01 10 8f e0                                      add r1, pc, r1
004880b4  57 0f 84 e2                                      add r0, r4, #0x15c
004880b8  0b 30 fa eb                                      bl #0x3140ec
004880bc  5d 3f 84 e2                                      add r3, r4, #0x174
004880c0  03 00 a0 e1                                      mov r0, r3
004880c4  84 31 84 e5                                      str r3, [r4, #0x184]
004880c8  88 31 84 e5                                      str r3, [r4, #0x188]
004880cc  10 10 a0 e3                                      mov r1, #0x10
004880d0  69 25 fa eb                                      bl #0x31167c
004880d4  84 31 94 e5                                      ldr r3, [r4, #0x184]
004880d8  05 10 a0 e1                                      mov r1, r5
004880dc  c6 0f a0 e3                                      mov r0, #0x318
004880e0  00 50 c3 e5                                      strb r5, [r3]
004880e4  8c 51 84 e5                                      str r5, [r4, #0x18c]
004880e8  20 21 fa eb                                      bl #0x310570
004880ec  04 10 a0 e3                                      mov r1, #4
004880f0  00 50 a0 e1                                      mov r5, r0
004880f4  2b b4 fd eb                                      bl #0x3f51a8
004880f8  30 30 9f e5                                      ldr r3, [pc, #0x30]
004880fc  8c 51 84 e5                                      str r5, [r4, #0x18c]
00488100  03 30 8f e0                                      add r3, pc, r3
00488104  20 30 85 e5                                      str r3, [r5, #0x20]
00488108  8c 01 94 e5                                      ldr r0, [r4, #0x18c]
0048810c  04 00 80 e2                                      add r0, r0, #4
00488110  18 2f 02 eb                                      bl #0x513d78
00488114  8c 01 94 e5                                      ldr r0, [r4, #0x18c]
00488118  04 00 80 e2                                      add r0, r0, #4
0048811c  72 2d 02 eb                                      bl #0x5136ec
00488120  04 00 a0 e1                                      mov r0, r4
00488124  0c d0 8d e2                                      add sp, sp, #0xc
00488128  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
0048812c  28 eb 43 00 70 83 43 00                          .byte 0x28, 0xeb, 0x43, 0x00, 0x70, 0x83, 0x43, 0x00

; FUNCTION 0x00488134, declared_size=156, range_size=156, mode=arm
; class-group: rnd::RandomGenerator
; alias: _ZN3rnd15RandomGenerator8GenerateEi
; demangled: rnd::RandomGenerator::Generate(int)
; decoder-mode: arm
00488134  70 40 2d e9                                      push {r4, r5, r6, lr}
00488138  08 50 80 e2                                      add r5, r0, #8
0048813c  48 d0 4d e2                                      sub sp, sp, #0x48
00488140  00 40 a0 e1                                      mov r4, r0
00488144  05 00 a0 e1                                      mov r0, r5
00488148  01 60 a0 e1                                      mov r6, r1
0048814c  97 fe ff eb                                      bl #0x487bb0
00488150  04 10 a0 e1                                      mov r1, r4
00488154  04 60 84 e5                                      str r6, [r4, #4]
00488158  0d 00 a0 e1                                      mov r0, sp
0048815c  6c 60 81 e4                                      str r6, [r1], #0x6c
00488160  d3 13 00 eb                                      bl #0x48d0b4
00488164  05 10 a0 e1                                      mov r1, r5
00488168  0d 00 a0 e1                                      mov r0, sp
0048816c  ce 19 00 eb                                      bl #0x48e8ac
00488170  50 50 9f e5                                      ldr r5, [pc, #0x50]
00488174  00 00 50 e3                                      cmp r0, #0
00488178  14 01 84 e5                                      str r0, [r4, #0x114]
0048817c  0d 60 a0 e1                                      mov r6, sp
00488180  05 50 8f e0                                      add r5, pc, r5
00488184  04 00 00 0a                                      beq #0x48819c
00488188  04 00 a0 e1                                      mov r0, r4
0048818c  a3 f1 ff eb                                      bl #0x484820
00488190  14 01 94 e5                                      ldr r0, [r4, #0x114]
00488194  c4 24 00 eb                                      bl #0x4914ac
00488198  14 01 94 e5                                      ldr r0, [r4, #0x114]
0048819c  28 30 9f e5                                      ldr r3, [pc, #0x28]
004881a0  00 40 50 e2                                      subs r4, r0, #0
004881a4  01 40 a0 13                                      movne r4, #1
004881a8  0d 00 a0 e1                                      mov r0, sp
004881ac  03 30 95 e7                                      ldr r3, [r5, r3]
004881b0  08 30 83 e2                                      add r3, r3, #8
004881b4  00 30 8d e5                                      str r3, [sp]
004881b8  41 14 00 eb                                      bl #0x48d2c4
004881bc  04 00 a0 e1                                      mov r0, r4
004881c0  48 d0 8d e2                                      add sp, sp, #0x48
004881c4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004881c8  10 c9 50 00 ac 07 00 00                          .byte 0x10, 0xc9, 0x50, 0x00, 0xac, 0x07, 0x00, 0x00

; FUNCTION 0x00488300, declared_size=308, range_size=308, mode=arm
; class-group: rnd::RandomGenerator
; alias: _ZN3rnd15RandomGenerator11UnloadRulesEv
; demangled: rnd::RandomGenerator::UnloadRules()
; decoder-mode: arm
00488300  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00488304  00 50 a0 e1                                      mov r5, r0
00488308  28 01 90 e5                                      ldr r0, [r0, #0x128]
0048830c  0c d0 4d e2                                      sub sp, sp, #0xc
00488310  00 00 50 e3                                      cmp r0, #0
00488314  00 00 00 0a                                      beq #0x48831c
00488318  f4 16 fa eb                                      bl #0x30def0
0048831c  24 31 95 e5                                      ldr r3, [r5, #0x124]
00488320  00 20 a0 e3                                      mov r2, #0
00488324  28 21 85 e5                                      str r2, [r5, #0x128]
00488328  02 00 53 e1                                      cmp r3, r2
0048832c  03 00 00 0a                                      beq #0x488340
00488330  03 00 a0 e1                                      mov r0, r3
00488334  00 30 93 e5                                      ldr r3, [r3]
00488338  0f e0 a0 e1                                      mov lr, pc
0048833c  04 f0 93 e5                                      ldr pc, [r3, #4]
00488340  00 30 a0 e3                                      mov r3, #0
00488344  24 31 85 e5                                      str r3, [r5, #0x124]
00488348  5c 30 95 e5                                      ldr r3, [r5, #0x5c]
0048834c  54 60 85 e2                                      add r6, r5, #0x54
00488350  04 70 8d e2                                      add r7, sp, #4
00488354  03 00 56 e1                                      cmp r6, r3
00488358  07 10 a0 e1                                      mov r1, r7
0048835c  06 00 a0 e1                                      mov r0, r6
00488360  18 00 00 0a                                      beq #0x4883c8
00488364  14 40 93 e5                                      ldr r4, [r3, #0x14]
00488368  04 30 8d e5                                      str r3, [sp, #4]
0048836c  5f f3 ff eb                                      bl #0x4850f0
00488370  00 00 54 e3                                      cmp r4, #0
00488374  1c 00 84 e2                                      add r0, r4, #0x1c
00488378  0d 00 00 0a                                      beq #0x4883b4
0048837c  bf ff ff eb                                      bl #0x488280
00488380  14 30 94 e5                                      ldr r3, [r4, #0x14]
00488384  04 00 53 e1                                      cmp r3, r4
00488388  03 00 a0 e1                                      mov r0, r3
0048838c  06 00 00 0a                                      beq #0x4883ac
00488390  00 00 53 e3                                      cmp r3, #0
00488394  04 00 00 0a                                      beq #0x4883ac
00488398  00 10 94 e5                                      ldr r1, [r4]
0048839c  01 10 63 e0                                      rsb r1, r3, r1
004883a0  80 00 51 e3                                      cmp r1, #0x80
004883a4  20 00 00 8a                                      bhi #0x48842c
004883a8  d4 02 0a eb                                      bl #0x708f00
004883ac  04 00 a0 e1                                      mov r0, r4
004883b0  22 20 fa eb                                      bl #0x310440
004883b4  5c 30 95 e5                                      ldr r3, [r5, #0x5c]
004883b8  07 10 a0 e1                                      mov r1, r7
004883bc  06 00 a0 e1                                      mov r0, r6
004883c0  03 00 56 e1                                      cmp r6, r3
004883c4  e6 ff ff 1a                                      bne #0x488364
004883c8  6c 00 85 e2                                      add r0, r5, #0x6c
004883cc  4b 0e 00 eb                                      bl #0x48bd00
004883d0  44 30 95 e5                                      ldr r3, [r5, #0x44]
004883d4  3c 60 85 e2                                      add r6, r5, #0x3c
004883d8  0d 70 a0 e1                                      mov r7, sp
004883dc  03 00 56 e1                                      cmp r6, r3
004883e0  06 00 a0 e1                                      mov r0, r6
004883e4  0d 10 a0 e1                                      mov r1, sp
004883e8  0d 00 00 0a                                      beq #0x488424
004883ec  14 40 93 e5                                      ldr r4, [r3, #0x14]
004883f0  00 30 8d e5                                      str r3, [sp]
004883f4  4c f3 ff eb                                      bl #0x48512c
004883f8  00 00 54 e3                                      cmp r4, #0
004883fc  04 00 a0 e1                                      mov r0, r4
00488400  02 00 00 0a                                      beq #0x488410
00488404  00 30 94 e5                                      ldr r3, [r4]
00488408  0f e0 a0 e1                                      mov lr, pc
0048840c  04 f0 93 e5                                      ldr pc, [r3, #4]
00488410  44 30 95 e5                                      ldr r3, [r5, #0x44]
00488414  06 00 a0 e1                                      mov r0, r6
00488418  0d 10 a0 e1                                      mov r1, sp
0048841c  03 00 56 e1                                      cmp r6, r3
00488420  f1 ff ff 1a                                      bne #0x4883ec
00488424  0c d0 8d e2                                      add sp, sp, #0xc
00488428  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0048842c  03 20 fa eb                                      bl #0x310440
00488430  dd ff ff ea                                      b #0x4883ac

; FUNCTION 0x00488504, declared_size=512, range_size=512, mode=arm
; class-group: rnd::RandomGenerator
; alias: _ZN3rnd15RandomGeneratorD1Ev
; demangled: rnd::RandomGenerator::~RandomGenerator()
; decoder-mode: arm
00488504  70 40 2d e9                                      push {r4, r5, r6, lr}
00488508  00 40 a0 e1                                      mov r4, r0
0048850c  a3 ef ff eb                                      bl #0x4843a0
00488510  04 00 a0 e1                                      mov r0, r4
00488514  79 ff ff eb                                      bl #0x488300
00488518  04 00 a0 e1                                      mov r0, r4
0048851c  44 f5 ff eb                                      bl #0x485a34
00488520  8c 31 94 e5                                      ldr r3, [r4, #0x18c]
00488524  00 00 53 e3                                      cmp r3, #0
00488528  05 00 00 0a                                      beq #0x488544
0048852c  03 00 a0 e1                                      mov r0, r3
00488530  00 30 93 e5                                      ldr r3, [r3]
00488534  0f e0 a0 e1                                      mov lr, pc
00488538  04 f0 93 e5                                      ldr pc, [r3, #4]
0048853c  00 30 a0 e3                                      mov r3, #0
00488540  8c 31 84 e5                                      str r3, [r4, #0x18c]
00488544  5d 3f 84 e2                                      add r3, r4, #0x174
00488548  14 00 93 e5                                      ldr r0, [r3, #0x14]
0048854c  03 00 50 e1                                      cmp r0, r3
00488550  06 00 00 0a                                      beq #0x488570
00488554  00 00 50 e3                                      cmp r0, #0
00488558  04 00 00 0a                                      beq #0x488570
0048855c  74 11 94 e5                                      ldr r1, [r4, #0x174]
00488560  01 10 60 e0                                      rsb r1, r0, r1
00488564  80 00 51 e3                                      cmp r1, #0x80
00488568  63 00 00 8a                                      bhi #0x4886fc
0048856c  63 02 0a eb                                      bl #0x708f00
00488570  57 3f 84 e2                                      add r3, r4, #0x15c
00488574  14 00 93 e5                                      ldr r0, [r3, #0x14]
00488578  03 00 50 e1                                      cmp r0, r3
0048857c  06 00 00 0a                                      beq #0x48859c
00488580  00 00 50 e3                                      cmp r0, #0
00488584  04 00 00 0a                                      beq #0x48859c
00488588  5c 11 94 e5                                      ldr r1, [r4, #0x15c]
0048858c  01 10 60 e0                                      rsb r1, r0, r1
00488590  80 00 51 e3                                      cmp r1, #0x80
00488594  50 00 00 8a                                      bhi #0x4886dc
00488598  58 02 0a eb                                      bl #0x708f00
0048859c  51 3f 84 e2                                      add r3, r4, #0x144
004885a0  14 00 93 e5                                      ldr r0, [r3, #0x14]
004885a4  03 00 50 e1                                      cmp r0, r3
004885a8  06 00 00 0a                                      beq #0x4885c8
004885ac  00 00 50 e3                                      cmp r0, #0
004885b0  04 00 00 0a                                      beq #0x4885c8
004885b4  44 11 94 e5                                      ldr r1, [r4, #0x144]
004885b8  01 10 60 e0                                      rsb r1, r0, r1
004885bc  80 00 51 e3                                      cmp r1, #0x80
004885c0  47 00 00 8a                                      bhi #0x4886e4
004885c4  4d 02 0a eb                                      bl #0x708f00
004885c8  4b 3f 84 e2                                      add r3, r4, #0x12c
004885cc  14 00 93 e5                                      ldr r0, [r3, #0x14]
004885d0  03 00 50 e1                                      cmp r0, r3
004885d4  06 00 00 0a                                      beq #0x4885f4
004885d8  00 00 50 e3                                      cmp r0, #0
004885dc  04 00 00 0a                                      beq #0x4885f4
004885e0  2c 11 94 e5                                      ldr r1, [r4, #0x12c]
004885e4  01 10 60 e0                                      rsb r1, r0, r1
004885e8  80 00 51 e3                                      cmp r1, #0x80
004885ec  3e 00 00 8a                                      bhi #0x4886ec
004885f0  42 02 0a eb                                      bl #0x708f00
004885f4  18 01 94 e5                                      ldr r0, [r4, #0x118]
004885f8  46 3f 84 e2                                      add r3, r4, #0x118
004885fc  00 00 50 e3                                      cmp r0, #0
00488600  05 00 00 0a                                      beq #0x48861c
00488604  08 10 93 e5                                      ldr r1, [r3, #8]
00488608  01 10 60 e0                                      rsb r1, r0, r1
0048860c  03 10 c1 e3                                      bic r1, r1, #3
00488610  80 00 51 e3                                      cmp r1, #0x80
00488614  2e 00 00 8a                                      bhi #0x4886d4
00488618  38 02 0a eb                                      bl #0x708f00
0048861c  fc 30 84 e2                                      add r3, r4, #0xfc
00488620  14 00 93 e5                                      ldr r0, [r3, #0x14]
00488624  03 00 50 e1                                      cmp r0, r3
00488628  06 00 00 0a                                      beq #0x488648
0048862c  00 00 50 e3                                      cmp r0, #0
00488630  04 00 00 0a                                      beq #0x488648
00488634  fc 10 94 e5                                      ldr r1, [r4, #0xfc]
00488638  01 10 60 e0                                      rsb r1, r0, r1
0048863c  80 00 51 e3                                      cmp r1, #0x80
00488640  2b 00 00 8a                                      bhi #0x4886f4
00488644  2d 02 0a eb                                      bl #0x708f00
00488648  6c 00 84 e2                                      add r0, r4, #0x6c
0048864c  13 14 00 eb                                      bl #0x48d6a0
00488650  64 30 94 e5                                      ldr r3, [r4, #0x64]
00488654  00 00 53 e3                                      cmp r3, #0
00488658  13 00 00 1a                                      bne #0x4886ac
0048865c  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
00488660  00 00 53 e3                                      cmp r3, #0
00488664  03 00 00 1a                                      bne #0x488678
00488668  14 00 84 e2                                      add r0, r4, #0x14
0048866c  75 f4 ff eb                                      bl #0x485848
00488670  04 00 a0 e1                                      mov r0, r4
00488674  70 80 bd e8                                      pop {r4, r5, r6, pc}
00488678  3c 50 84 e2                                      add r5, r4, #0x3c
0048867c  05 00 a0 e1                                      mov r0, r5
00488680  40 10 94 e5                                      ldr r1, [r4, #0x40]
00488684  8b f2 ff eb                                      bl #0x4850b8
00488688  00 30 a0 e3                                      mov r3, #0
0048868c  48 50 84 e5                                      str r5, [r4, #0x48]
00488690  4c 30 84 e5                                      str r3, [r4, #0x4c]
00488694  44 50 84 e5                                      str r5, [r4, #0x44]
00488698  40 30 84 e5                                      str r3, [r4, #0x40]
0048869c  14 00 84 e2                                      add r0, r4, #0x14
004886a0  68 f4 ff eb                                      bl #0x485848
004886a4  04 00 a0 e1                                      mov r0, r4
004886a8  70 80 bd e8                                      pop {r4, r5, r6, pc}
004886ac  54 50 84 e2                                      add r5, r4, #0x54
004886b0  05 00 a0 e1                                      mov r0, r5
004886b4  58 10 94 e5                                      ldr r1, [r4, #0x58]
004886b8  aa f1 ff eb                                      bl #0x484d68
004886bc  00 30 a0 e3                                      mov r3, #0
004886c0  60 50 84 e5                                      str r5, [r4, #0x60]
004886c4  64 30 84 e5                                      str r3, [r4, #0x64]
004886c8  5c 50 84 e5                                      str r5, [r4, #0x5c]
004886cc  58 30 84 e5                                      str r3, [r4, #0x58]
004886d0  e1 ff ff ea                                      b #0x48865c
004886d4  59 1f fa eb                                      bl #0x310440
004886d8  cf ff ff ea                                      b #0x48861c
004886dc  57 1f fa eb                                      bl #0x310440
004886e0  ad ff ff ea                                      b #0x48859c
004886e4  55 1f fa eb                                      bl #0x310440
004886e8  b6 ff ff ea                                      b #0x4885c8
004886ec  53 1f fa eb                                      bl #0x310440
004886f0  bf ff ff ea                                      b #0x4885f4
004886f4  51 1f fa eb                                      bl #0x310440
004886f8  d2 ff ff ea                                      b #0x488648
004886fc  4f 1f fa eb                                      bl #0x310440
00488700  9a ff ff ea                                      b #0x488570

; FUNCTION 0x00488704, declared_size=512, range_size=512, mode=arm
; class-group: rnd::RandomGenerator
; alias: _ZN3rnd15RandomGeneratorD2Ev
; demangled: rnd::RandomGenerator::~RandomGenerator()
; decoder-mode: arm
00488704  70 40 2d e9                                      push {r4, r5, r6, lr}
00488708  00 40 a0 e1                                      mov r4, r0
0048870c  23 ef ff eb                                      bl #0x4843a0
00488710  04 00 a0 e1                                      mov r0, r4
00488714  f9 fe ff eb                                      bl #0x488300
00488718  04 00 a0 e1                                      mov r0, r4
0048871c  c4 f4 ff eb                                      bl #0x485a34
00488720  8c 31 94 e5                                      ldr r3, [r4, #0x18c]
00488724  00 00 53 e3                                      cmp r3, #0
00488728  05 00 00 0a                                      beq #0x488744
0048872c  03 00 a0 e1                                      mov r0, r3
00488730  00 30 93 e5                                      ldr r3, [r3]
00488734  0f e0 a0 e1                                      mov lr, pc
00488738  04 f0 93 e5                                      ldr pc, [r3, #4]
0048873c  00 30 a0 e3                                      mov r3, #0
00488740  8c 31 84 e5                                      str r3, [r4, #0x18c]
00488744  5d 3f 84 e2                                      add r3, r4, #0x174
00488748  14 00 93 e5                                      ldr r0, [r3, #0x14]
0048874c  03 00 50 e1                                      cmp r0, r3
00488750  06 00 00 0a                                      beq #0x488770
00488754  00 00 50 e3                                      cmp r0, #0
00488758  04 00 00 0a                                      beq #0x488770
0048875c  74 11 94 e5                                      ldr r1, [r4, #0x174]
00488760  01 10 60 e0                                      rsb r1, r0, r1
00488764  80 00 51 e3                                      cmp r1, #0x80
00488768  63 00 00 8a                                      bhi #0x4888fc
0048876c  e3 01 0a eb                                      bl #0x708f00
00488770  57 3f 84 e2                                      add r3, r4, #0x15c
00488774  14 00 93 e5                                      ldr r0, [r3, #0x14]
00488778  03 00 50 e1                                      cmp r0, r3
0048877c  06 00 00 0a                                      beq #0x48879c
00488780  00 00 50 e3                                      cmp r0, #0
00488784  04 00 00 0a                                      beq #0x48879c
00488788  5c 11 94 e5                                      ldr r1, [r4, #0x15c]
0048878c  01 10 60 e0                                      rsb r1, r0, r1
00488790  80 00 51 e3                                      cmp r1, #0x80
00488794  50 00 00 8a                                      bhi #0x4888dc
00488798  d8 01 0a eb                                      bl #0x708f00
0048879c  51 3f 84 e2                                      add r3, r4, #0x144
004887a0  14 00 93 e5                                      ldr r0, [r3, #0x14]
004887a4  03 00 50 e1                                      cmp r0, r3
004887a8  06 00 00 0a                                      beq #0x4887c8
004887ac  00 00 50 e3                                      cmp r0, #0
004887b0  04 00 00 0a                                      beq #0x4887c8
004887b4  44 11 94 e5                                      ldr r1, [r4, #0x144]
004887b8  01 10 60 e0                                      rsb r1, r0, r1
004887bc  80 00 51 e3                                      cmp r1, #0x80
004887c0  47 00 00 8a                                      bhi #0x4888e4
004887c4  cd 01 0a eb                                      bl #0x708f00
004887c8  4b 3f 84 e2                                      add r3, r4, #0x12c
004887cc  14 00 93 e5                                      ldr r0, [r3, #0x14]
004887d0  03 00 50 e1                                      cmp r0, r3
004887d4  06 00 00 0a                                      beq #0x4887f4
004887d8  00 00 50 e3                                      cmp r0, #0
004887dc  04 00 00 0a                                      beq #0x4887f4
004887e0  2c 11 94 e5                                      ldr r1, [r4, #0x12c]
004887e4  01 10 60 e0                                      rsb r1, r0, r1
004887e8  80 00 51 e3                                      cmp r1, #0x80
004887ec  3e 00 00 8a                                      bhi #0x4888ec
004887f0  c2 01 0a eb                                      bl #0x708f00
004887f4  18 01 94 e5                                      ldr r0, [r4, #0x118]
004887f8  46 3f 84 e2                                      add r3, r4, #0x118
004887fc  00 00 50 e3                                      cmp r0, #0
00488800  05 00 00 0a                                      beq #0x48881c
00488804  08 10 93 e5                                      ldr r1, [r3, #8]
00488808  01 10 60 e0                                      rsb r1, r0, r1
0048880c  03 10 c1 e3                                      bic r1, r1, #3
00488810  80 00 51 e3                                      cmp r1, #0x80
00488814  2e 00 00 8a                                      bhi #0x4888d4
00488818  b8 01 0a eb                                      bl #0x708f00
0048881c  fc 30 84 e2                                      add r3, r4, #0xfc
00488820  14 00 93 e5                                      ldr r0, [r3, #0x14]
00488824  03 00 50 e1                                      cmp r0, r3
00488828  06 00 00 0a                                      beq #0x488848
0048882c  00 00 50 e3                                      cmp r0, #0
00488830  04 00 00 0a                                      beq #0x488848
00488834  fc 10 94 e5                                      ldr r1, [r4, #0xfc]
00488838  01 10 60 e0                                      rsb r1, r0, r1
0048883c  80 00 51 e3                                      cmp r1, #0x80
00488840  2b 00 00 8a                                      bhi #0x4888f4
00488844  ad 01 0a eb                                      bl #0x708f00
00488848  6c 00 84 e2                                      add r0, r4, #0x6c
0048884c  93 13 00 eb                                      bl #0x48d6a0
00488850  64 30 94 e5                                      ldr r3, [r4, #0x64]
00488854  00 00 53 e3                                      cmp r3, #0
00488858  13 00 00 1a                                      bne #0x4888ac
0048885c  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
00488860  00 00 53 e3                                      cmp r3, #0
00488864  03 00 00 1a                                      bne #0x488878
00488868  14 00 84 e2                                      add r0, r4, #0x14
0048886c  f5 f3 ff eb                                      bl #0x485848
00488870  04 00 a0 e1                                      mov r0, r4
00488874  70 80 bd e8                                      pop {r4, r5, r6, pc}
00488878  3c 50 84 e2                                      add r5, r4, #0x3c
0048887c  05 00 a0 e1                                      mov r0, r5
00488880  40 10 94 e5                                      ldr r1, [r4, #0x40]
00488884  0b f2 ff eb                                      bl #0x4850b8
00488888  00 30 a0 e3                                      mov r3, #0
0048888c  48 50 84 e5                                      str r5, [r4, #0x48]
00488890  4c 30 84 e5                                      str r3, [r4, #0x4c]
00488894  44 50 84 e5                                      str r5, [r4, #0x44]
00488898  40 30 84 e5                                      str r3, [r4, #0x40]
0048889c  14 00 84 e2                                      add r0, r4, #0x14
004888a0  e8 f3 ff eb                                      bl #0x485848
004888a4  04 00 a0 e1                                      mov r0, r4
004888a8  70 80 bd e8                                      pop {r4, r5, r6, pc}
004888ac  54 50 84 e2                                      add r5, r4, #0x54
004888b0  05 00 a0 e1                                      mov r0, r5
004888b4  58 10 94 e5                                      ldr r1, [r4, #0x58]
004888b8  2a f1 ff eb                                      bl #0x484d68
004888bc  00 30 a0 e3                                      mov r3, #0
004888c0  60 50 84 e5                                      str r5, [r4, #0x60]
004888c4  64 30 84 e5                                      str r3, [r4, #0x64]
004888c8  5c 50 84 e5                                      str r5, [r4, #0x5c]
004888cc  58 30 84 e5                                      str r3, [r4, #0x58]
004888d0  e1 ff ff ea                                      b #0x48885c
004888d4  d9 1e fa eb                                      bl #0x310440
004888d8  cf ff ff ea                                      b #0x48881c
004888dc  d7 1e fa eb                                      bl #0x310440
004888e0  ad ff ff ea                                      b #0x48879c
004888e4  d5 1e fa eb                                      bl #0x310440
004888e8  b6 ff ff ea                                      b #0x4887c8
004888ec  d3 1e fa eb                                      bl #0x310440
004888f0  bf ff ff ea                                      b #0x4887f4
004888f4  d1 1e fa eb                                      bl #0x310440
004888f8  d2 ff ff ea                                      b #0x488848
004888fc  cf 1e fa eb                                      bl #0x310440
00488900  9a ff ff ea                                      b #0x488770

; FUNCTION 0x00488904, declared_size=640, range_size=640, mode=arm
; class-group: rnd::RandomGenerator
; alias: _ZN3rnd15RandomGenerator8GetFilesEPKcRSt6vectorISsSaISsEE
; demangled: rnd::RandomGenerator::GetFiles(char const*, std::vector<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >&)
; decoder-mode: arm
00488904  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00488908  64 02 9f e5                                      ldr r0, [pc, #0x264]
0048890c  64 32 9f e5                                      ldr r3, [pc, #0x264]
00488910  74 d0 4d e2                                      sub sp, sp, #0x74
00488914  00 00 8f e0                                      add r0, pc, r0
00488918  08 00 8d e5                                      str r0, [sp, #8]
0048891c  0c 30 8d e5                                      str r3, [sp, #0xc]
00488920  08 c0 9d e5                                      ldr ip, [sp, #8]
00488924  03 30 90 e7                                      ldr r3, [r0, r3]
00488928  4c 02 9f e5                                      ldr r0, [pc, #0x24c]
0048892c  02 80 a0 e1                                      mov r8, r2
00488930  00 20 a0 e3                                      mov r2, #0
00488934  00 60 9c e7                                      ldr r6, [ip, r0]
00488938  00 00 93 e5                                      ldr r0, [r3]
0048893c  54 40 8d e2                                      add r4, sp, #0x54
00488940  10 30 96 e5                                      ldr r3, [r6, #0x10]
00488944  6c 00 8d e5                                      str r0, [sp, #0x6c]
00488948  34 c0 93 e5                                      ldr ip, [r3, #0x34]
0048894c  02 30 a0 e1                                      mov r3, r2
00488950  0c 00 a0 e1                                      mov r0, ip
00488954  00 c0 9c e5                                      ldr ip, [ip]
00488958  0f e0 a0 e1                                      mov lr, pc
0048895c  88 f0 9c e5                                      ldr pc, [ip, #0x88]
00488960  14 00 8d e5                                      str r0, [sp, #0x14]
00488964  00 30 90 e5                                      ldr r3, [r0]
00488968  0f e0 a0 e1                                      mov lr, pc
0048896c  08 f0 93 e5                                      ldr pc, [r3, #8]
00488970  00 10 a0 e3                                      mov r1, #0
00488974  01 00 80 e2                                      add r0, r0, #1
00488978  fb 1e fa eb                                      bl #0x31056c
0048897c  14 a0 9d e5                                      ldr sl, [sp, #0x14]
00488980  00 50 a0 e1                                      mov r5, r0
00488984  00 30 9a e5                                      ldr r3, [sl]
00488988  0a 00 a0 e1                                      mov r0, sl
0048898c  18 70 93 e5                                      ldr r7, [r3, #0x18]
00488990  0f e0 a0 e1                                      mov lr, pc
00488994  08 f0 93 e5                                      ldr pc, [r3, #8]
00488998  00 20 a0 e1                                      mov r2, r0
0048899c  01 30 a0 e1                                      mov r3, r1
004889a0  0a 00 a0 e1                                      mov r0, sl
004889a4  05 10 a0 e1                                      mov r1, r5
004889a8  37 ff 2f e1                                      blx r7
004889ac  70 70 8d e2                                      add r7, sp, #0x70
004889b0  5c 30 37 e5                                      ldr r3, [r7, #-0x5c]!
004889b4  03 00 a0 e1                                      mov r0, r3
004889b8  00 30 93 e5                                      ldr r3, [r3]
004889bc  0f e0 a0 e1                                      mov lr, pc
004889c0  08 f0 93 e5                                      ldr pc, [r3, #8]
004889c4  00 30 a0 e3                                      mov r3, #0
004889c8  00 30 c5 e7                                      strb r3, [r5, r0]
004889cc  10 30 96 e5                                      ldr r3, [r6, #0x10]
004889d0  07 10 a0 e1                                      mov r1, r7
004889d4  34 30 93 e5                                      ldr r3, [r3, #0x34]
004889d8  03 00 a0 e1                                      mov r0, r3
004889dc  00 30 93 e5                                      ldr r3, [r3]
004889e0  0f e0 a0 e1                                      mov lr, pc
004889e4  78 f0 93 e5                                      ldr pc, [r3, #0x78]
004889e8  04 00 a0 e1                                      mov r0, r4
004889ec  05 10 a0 e1                                      mov r1, r5
004889f0  20 20 8d e2                                      add r2, sp, #0x20
004889f4  bc 2d fa eb                                      bl #0x3140ec
004889f8  00 00 55 e3                                      cmp r5, #0
004889fc  01 00 00 0a                                      beq #0x488a08
00488a00  05 00 a0 e1                                      mov r0, r5
00488a04  8d 1e fa eb                                      bl #0x310440
00488a08  70 a1 9f e5                                      ldr sl, [pc, #0x170]
00488a0c  04 00 a0 e1                                      mov r0, r4
00488a10  0a a0 8f e0                                      add sl, pc, sl
00488a14  0a 10 a0 e1                                      mov r1, sl
00488a18  42 ef ff eb                                      bl #0x484728
00488a1c  01 00 70 e3                                      cmn r0, #1
00488a20  00 50 a0 e1                                      mov r5, r0
00488a24  3c 00 00 0a                                      beq #0x488b1c
00488a28  3c 60 8d e2                                      add r6, sp, #0x3c
00488a2c  1c 90 8d e2                                      add sb, sp, #0x1c
00488a30  24 70 8d e2                                      add r7, sp, #0x24
00488a34  18 b0 8d e2                                      add fp, sp, #0x18
00488a38  1c 00 00 ea                                      b #0x488ab0
00488a3c  2f 01 0a eb                                      bl #0x708f00
00488a40  64 00 9d e5                                      ldr r0, [sp, #0x64]
00488a44  68 30 9d e5                                      ldr r3, [sp, #0x68]
00488a48  01 20 85 e2                                      add r2, r5, #1
00488a4c  04 10 a0 e1                                      mov r1, r4
00488a50  00 30 63 e0                                      rsb r3, r3, r0
00488a54  07 00 a0 e1                                      mov r0, r7
00488a58  00 b0 8d e5                                      str fp, [sp]
00488a5c  9d 34 fe eb                                      bl #0x415cd8
00488a60  04 00 a0 e1                                      mov r0, r4
00488a64  38 10 9d e5                                      ldr r1, [sp, #0x38]
00488a68  34 20 9d e5                                      ldr r2, [sp, #0x34]
00488a6c  db 1f fa eb                                      bl #0x3109e0
00488a70  38 00 9d e5                                      ldr r0, [sp, #0x38]
00488a74  07 00 50 e1                                      cmp r0, r7
00488a78  06 00 00 0a                                      beq #0x488a98
00488a7c  00 00 50 e3                                      cmp r0, #0
00488a80  04 00 00 0a                                      beq #0x488a98
00488a84  24 10 9d e5                                      ldr r1, [sp, #0x24]
00488a88  01 10 60 e0                                      rsb r1, r0, r1
00488a8c  80 00 51 e3                                      cmp r1, #0x80
00488a90  1a 00 00 8a                                      bhi #0x488b00
00488a94  19 01 0a eb                                      bl #0x708f00
00488a98  04 00 a0 e1                                      mov r0, r4
00488a9c  0a 10 a0 e1                                      mov r1, sl
00488aa0  20 ef ff eb                                      bl #0x484728
00488aa4  01 00 70 e3                                      cmn r0, #1
00488aa8  00 50 a0 e1                                      mov r5, r0
00488aac  1a 00 00 0a                                      beq #0x488b1c
00488ab0  00 20 a0 e3                                      mov r2, #0
00488ab4  01 30 45 e2                                      sub r3, r5, #1
00488ab8  04 10 a0 e1                                      mov r1, r4
00488abc  06 00 a0 e1                                      mov r0, r6
00488ac0  00 90 8d e5                                      str sb, [sp]
00488ac4  83 34 fe eb                                      bl #0x415cd8
00488ac8  08 00 a0 e1                                      mov r0, r8
00488acc  06 10 a0 e1                                      mov r1, r6
00488ad0  00 8c fa eb                                      bl #0x32bad8
00488ad4  50 00 9d e5                                      ldr r0, [sp, #0x50]
00488ad8  06 00 50 e1                                      cmp r0, r6
00488adc  d7 ff ff 0a                                      beq #0x488a40
00488ae0  00 00 50 e3                                      cmp r0, #0
00488ae4  d5 ff ff 0a                                      beq #0x488a40
00488ae8  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
00488aec  01 10 60 e0                                      rsb r1, r0, r1
00488af0  80 00 51 e3                                      cmp r1, #0x80
00488af4  d0 ff ff 9a                                      bls #0x488a3c
00488af8  50 1e fa eb                                      bl #0x310440
00488afc  cf ff ff ea                                      b #0x488a40
00488b00  4e 1e fa eb                                      bl #0x310440
00488b04  04 00 a0 e1                                      mov r0, r4
00488b08  0a 10 a0 e1                                      mov r1, sl
00488b0c  05 ef ff eb                                      bl #0x484728
00488b10  01 00 70 e3                                      cmn r0, #1
00488b14  00 50 a0 e1                                      mov r5, r0
00488b18  e4 ff ff 1a                                      bne #0x488ab0
00488b1c  68 00 9d e5                                      ldr r0, [sp, #0x68]
00488b20  04 00 50 e1                                      cmp r0, r4
00488b24  06 00 00 0a                                      beq #0x488b44
00488b28  00 00 50 e3                                      cmp r0, #0
00488b2c  04 00 00 0a                                      beq #0x488b44
00488b30  54 10 9d e5                                      ldr r1, [sp, #0x54]
00488b34  01 10 60 e0                                      rsb r1, r0, r1
00488b38  80 00 51 e3                                      cmp r1, #0x80
00488b3c  09 00 00 8a                                      bhi #0x488b68
00488b40  ee 00 0a eb                                      bl #0x708f00
00488b44  08 10 9d e5                                      ldr r1, [sp, #8]
00488b48  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00488b4c  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
00488b50  00 30 91 e7                                      ldr r3, [r1, r0]
00488b54  00 30 93 e5                                      ldr r3, [r3]
00488b58  03 00 52 e1                                      cmp r2, r3
00488b5c  03 00 00 1a                                      bne #0x488b70
00488b60  74 d0 8d e2                                      add sp, sp, #0x74
00488b64  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00488b68  34 1e fa eb                                      bl #0x310440
00488b6c  f4 ff ff ea                                      b #0x488b44
00488b70  e6 15 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00488b74  7c c1 50 00 ac 40 00 00 f4 37 00 00 e0 2f 44 00  .byte 0x7c, 0xc1, 0x50, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xe0, 0x2f, 0x44, 0x00

; FUNCTION 0x00488b84, declared_size=716, range_size=716, mode=arm
; class-group: rnd::RandomGenerator
; alias: _ZN3rnd15RandomGenerator24SaveModularLevelToStreamER12StreamBuffer
; demangled: rnd::RandomGenerator::SaveModularLevelToStream(StreamBuffer&)
; decoder-mode: arm
00488b84  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00488b88  8c 52 9f e5                                      ldr r5, [pc, #0x28c]
00488b8c  8c 22 9f e5                                      ldr r2, [pc, #0x28c]
00488b90  57 df 4d e2                                      sub sp, sp, #0x15c
00488b94  05 50 8f e0                                      add r5, pc, r5
00488b98  02 30 95 e7                                      ldr r3, [r5, r2]
00488b9c  90 40 8d e2                                      add r4, sp, #0x90
00488ba0  00 70 a0 e1                                      mov r7, r0
00488ba4  00 30 93 e5                                      ldr r3, [r3]
00488ba8  04 00 a0 e1                                      mov r0, r4
00488bac  0c 20 8d e5                                      str r2, [sp, #0xc]
00488bb0  54 31 8d e5                                      str r3, [sp, #0x154]
00488bb4  01 90 a0 e1                                      mov sb, r1
00488bb8  c1 38 02 eb                                      bl #0x516ec4
00488bbc  00 10 a0 e3                                      mov r1, #0
00488bc0  88 00 a0 e3                                      mov r0, #0x88
00488bc4  69 1e fa eb                                      bl #0x310570
00488bc8  54 12 9f e5                                      ldr r1, [pc, #0x254]
00488bcc  54 22 9f e5                                      ldr r2, [pc, #0x254]
00488bd0  54 32 9f e5                                      ldr r3, [pc, #0x254]
00488bd4  00 80 a0 e1                                      mov r8, r0
00488bd8  02 20 8f e0                                      add r2, pc, r2
00488bdc  03 30 8f e0                                      add r3, pc, r3
00488be0  01 10 8f e0                                      add r1, pc, r1
00488be4  a9 3a 02 eb                                      bl #0x517690
00488be8  08 10 a0 e1                                      mov r1, r8
00488bec  04 00 a0 e1                                      mov r0, r4
00488bf0  5b 33 02 eb                                      bl #0x515964
00488bf4  00 10 a0 e3                                      mov r1, #0
00488bf8  40 00 a0 e3                                      mov r0, #0x40
00488bfc  5b 1e fa eb                                      bl #0x310570
00488c00  28 a2 9f e5                                      ldr sl, [pc, #0x228]
00488c04  02 10 a0 e3                                      mov r1, #2
00488c08  00 b0 a0 e1                                      mov fp, r0
00488c0c  81 34 02 eb                                      bl #0x515e18
00488c10  0a a0 95 e7                                      ldr sl, [r5, sl]
00488c14  18 12 9f e5                                      ldr r1, [pc, #0x218]
00488c18  0b 00 a0 e1                                      mov r0, fp
00488c1c  08 a0 8a e2                                      add sl, sl, #8
00488c20  01 10 8f e0                                      add r1, pc, r1
00488c24  40 20 81 e2                                      add r2, r1, #0x40
00488c28  20 a0 80 e4                                      str sl, [r0], #0x20
00488c2c  6b 1f fa eb                                      bl #0x3109e0
00488c30  00 10 a0 e3                                      mov r1, #0
00488c34  40 00 a0 e3                                      mov r0, #0x40
00488c38  4c 1e fa eb                                      bl #0x310570
00488c3c  02 10 a0 e3                                      mov r1, #2
00488c40  08 00 8d e5                                      str r0, [sp, #8]
00488c44  73 34 02 eb                                      bl #0x515e18
00488c48  e8 11 9f e5                                      ldr r1, [pc, #0x1e8]
00488c4c  08 00 9d e5                                      ldr r0, [sp, #8]
00488c50  10 60 8d e2                                      add r6, sp, #0x10
00488c54  01 10 8f e0                                      add r1, pc, r1
00488c58  17 20 81 e2                                      add r2, r1, #0x17
00488c5c  20 a0 80 e4                                      str sl, [r0], #0x20
00488c60  5e 1f fa eb                                      bl #0x3109e0
00488c64  d0 11 9f e5                                      ldr r1, [pc, #0x1d0]
00488c68  88 21 97 e5                                      ldr r2, [r7, #0x188]
00488c6c  06 00 a0 e1                                      mov r0, r6
00488c70  01 10 8f e0                                      add r1, pc, r1
00488c74  9a 17 fa eb                                      bl #0x30eae4
00488c78  00 10 a0 e3                                      mov r1, #0
00488c7c  40 00 a0 e3                                      mov r0, #0x40
00488c80  3a 1e fa eb                                      bl #0x310570
00488c84  02 10 a0 e3                                      mov r1, #2
00488c88  00 80 a0 e1                                      mov r8, r0
00488c8c  04 00 8d e5                                      str r0, [sp, #4]
00488c90  60 34 02 eb                                      bl #0x515e18
00488c94  20 a0 88 e4                                      str sl, [r8], #0x20
00488c98  06 00 a0 e1                                      mov r0, r6
00488c9c  6c 14 fa eb                                      bl #0x30de54
00488ca0  06 10 a0 e1                                      mov r1, r6
00488ca4  00 20 86 e0                                      add r2, r6, r0
00488ca8  08 00 a0 e1                                      mov r0, r8
00488cac  4b 1f fa eb                                      bl #0x3109e0
00488cb0  0b 10 a0 e1                                      mov r1, fp
00488cb4  04 00 a0 e1                                      mov r0, r4
00488cb8  29 33 02 eb                                      bl #0x515964
00488cbc  08 10 9d e5                                      ldr r1, [sp, #8]
00488cc0  04 00 a0 e1                                      mov r0, r4
00488cc4  26 33 02 eb                                      bl #0x515964
00488cc8  04 30 9d e5                                      ldr r3, [sp, #4]
00488ccc  04 00 a0 e1                                      mov r0, r4
00488cd0  03 10 a0 e1                                      mov r1, r3
00488cd4  22 33 02 eb                                      bl #0x515964
00488cd8  00 10 a0 e3                                      mov r1, #0
00488cdc  8c 00 a0 e3                                      mov r0, #0x8c
00488ce0  22 1e fa eb                                      bl #0x310570
00488ce4  54 11 9f e5                                      ldr r1, [pc, #0x154]
00488ce8  00 60 a0 e1                                      mov r6, r0
00488cec  01 10 8f e0                                      add r1, pc, r1
00488cf0  d9 39 02 eb                                      bl #0x51745c
00488cf4  06 10 a0 e1                                      mov r1, r6
00488cf8  04 00 a0 e1                                      mov r0, r4
00488cfc  18 33 02 eb                                      bl #0x515964
00488d00  8c 01 97 e5                                      ldr r0, [r7, #0x18c]
00488d04  06 10 a0 e1                                      mov r1, r6
00488d08  00 20 a0 e3                                      mov r2, #0
00488d0c  04 00 80 e2                                      add r0, r0, #4
00488d10  f6 29 02 eb                                      bl #0x5134f0
00488d14  14 01 97 e5                                      ldr r0, [r7, #0x114]
00488d18  00 00 50 e3                                      cmp r0, #0
00488d1c  02 00 00 0a                                      beq #0x488d2c
00488d20  06 10 a0 e1                                      mov r1, r6
00488d24  00 20 a0 e3                                      mov r2, #0
00488d28  18 24 00 eb                                      bl #0x491d90
00488d2c  01 6c 8d e2                                      add r6, sp, #0x100
00488d30  0c 71 9f e5                                      ldr r7, [pc, #0x10c]
00488d34  06 00 a0 e1                                      mov r0, r6
00488d38  58 f3 ff eb                                      bl #0x485aa0
00488d3c  04 11 9f e5                                      ldr r1, [pc, #0x104]
00488d40  07 70 95 e7                                      ldr r7, [r5, r7]
00488d44  3c 00 86 e2                                      add r0, r6, #0x3c
00488d48  01 10 8f e0                                      add r1, pc, r1
00488d4c  02 20 81 e2                                      add r2, r1, #2
00488d50  08 70 87 e2                                      add r7, r7, #8
00488d54  00 71 8d e5                                      str r7, [sp, #0x100]
00488d58  20 1f fa eb                                      bl #0x3109e0
00488d5c  06 10 a0 e1                                      mov r1, r6
00488d60  04 00 a0 e1                                      mov r0, r4
00488d64  17 2e 02 eb                                      bl #0x5145c8
00488d68  1c 11 9d e5                                      ldr r1, [sp, #0x11c]
00488d6c  20 21 9d e5                                      ldr r2, [sp, #0x120]
00488d70  09 00 a0 e1                                      mov r0, sb
00488d74  00 30 a0 e3                                      mov r3, #0
00488d78  01 20 62 e0                                      rsb r2, r2, r1
00488d7c  ff 38 fa eb                                      bl #0x317180
00488d80  20 11 9d e5                                      ldr r1, [sp, #0x120]
00488d84  1c 21 9d e5                                      ldr r2, [sp, #0x11c]
00488d88  00 30 a0 e3                                      mov r3, #0
00488d8c  00 c0 99 e5                                      ldr ip, [sb]
00488d90  02 20 61 e0                                      rsb r2, r1, r2
00488d94  09 00 a0 e1                                      mov r0, sb
00488d98  0f e0 a0 e1                                      mov lr, pc
00488d9c  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
00488da0  06 00 a0 e1                                      mov r0, r6
00488da4  00 71 8d e5                                      str r7, [sp, #0x100]
00488da8  a1 fd ff eb                                      bl #0x488434
00488dac  98 30 9f e5                                      ldr r3, [pc, #0x98]
00488db0  ec 00 9d e5                                      ldr r0, [sp, #0xec]
00488db4  48 20 84 e2                                      add r2, r4, #0x48
00488db8  03 30 95 e7                                      ldr r3, [r5, r3]
00488dbc  02 00 50 e1                                      cmp r0, r2
00488dc0  08 30 83 e2                                      add r3, r3, #8
00488dc4  90 30 8d e5                                      str r3, [sp, #0x90]
00488dc8  06 00 00 0a                                      beq #0x488de8
00488dcc  00 00 50 e3                                      cmp r0, #0
00488dd0  04 00 00 0a                                      beq #0x488de8
00488dd4  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
00488dd8  01 10 60 e0                                      rsb r1, r0, r1
00488ddc  80 00 51 e3                                      cmp r1, #0x80
00488de0  0a 00 00 8a                                      bhi #0x488e10
00488de4  45 00 0a eb                                      bl #0x708f00
00488de8  04 00 a0 e1                                      mov r0, r4
00488dec  30 2f 02 eb                                      bl #0x514ab4
00488df0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00488df4  02 30 95 e7                                      ldr r3, [r5, r2]
00488df8  54 21 9d e5                                      ldr r2, [sp, #0x154]
00488dfc  00 30 93 e5                                      ldr r3, [r3]
00488e00  03 00 52 e1                                      cmp r2, r3
00488e04  03 00 00 1a                                      bne #0x488e18
00488e08  57 df 8d e2                                      add sp, sp, #0x15c
00488e0c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00488e10  8a 1d fa eb                                      bl #0x310440
00488e14  f3 ff ff ea                                      b #0x488de8
00488e18  3c 15 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00488e1c  fc be 50 00 ac 40 00 00 08 c0 44 00 18 c0 44 00  .byte 0xfc, 0xbe, 0x50, 0x00, 0xac, 0x40, 0x00, 0x00, 0x08, 0xc0, 0x44, 0x00, 0x18, 0xc0, 0x44, 0x00
00488e2c  2c 2c 44 00 84 0e 00 00 d8 bf 44 00 ec bf 44 00  .byte 0x2c, 0x2c, 0x44, 0x00, 0x84, 0x0e, 0x00, 0x00, 0xd8, 0xbf, 0x44, 0x00, 0xec, 0xbf, 0x44, 0x00
00488e3c  e8 bf 44 00 c4 da 43 00 ec 42 00 00 b8 72 43 00  .byte 0xe8, 0xbf, 0x44, 0x00, 0xc4, 0xda, 0x43, 0x00, 0xec, 0x42, 0x00, 0x00, 0xb8, 0x72, 0x43, 0x00
00488e4c  30 09 00 00                                      .byte 0x30, 0x09, 0x00, 0x00

; FUNCTION 0x00488e50, declared_size=1180, range_size=1180, mode=arm
; class-group: rnd::RandomGenerator
; alias: _ZN3rnd15RandomGenerator19SaveModularLevelXmlEv
; demangled: rnd::RandomGenerator::SaveModularLevelXml()
; decoder-mode: arm
00488e50  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00488e54  48 44 9f e5                                      ldr r4, [pc, #0x448]
00488e58  48 24 9f e5                                      ldr r2, [pc, #0x448]
00488e5c  4b df 4d e2                                      sub sp, sp, #0x12c
00488e60  04 40 8f e0                                      add r4, pc, r4
00488e64  02 30 94 e7                                      ldr r3, [r4, r2]
00488e68  20 80 8d e2                                      add r8, sp, #0x20
00488e6c  01 a0 a0 e1                                      mov sl, r1
00488e70  00 30 93 e5                                      ldr r3, [r3]
00488e74  0c 00 8d e5                                      str r0, [sp, #0xc]
00488e78  08 00 a0 e1                                      mov r0, r8
00488e7c  43 5f 8d e2                                      add r5, sp, #0x10c
00488e80  24 31 8d e5                                      str r3, [sp, #0x124]
00488e84  10 20 8d e5                                      str r2, [sp, #0x10]
00488e88  ab 37 fa eb                                      bl #0x316d3c
00488e8c  0a 00 a0 e1                                      mov r0, sl
00488e90  08 10 a0 e1                                      mov r1, r8
00488e94  3a ff ff eb                                      bl #0x488b84
00488e98  70 11 9a e5                                      ldr r1, [sl, #0x170]
00488e9c  6c 21 9a e5                                      ldr r2, [sl, #0x16c]
00488ea0  05 00 a0 e1                                      mov r0, r5
00488ea4  1c 51 8d e5                                      str r5, [sp, #0x11c]
00488ea8  20 51 8d e5                                      str r5, [sp, #0x120]
00488eac  0d 22 fa eb                                      bl #0x3116e8
00488eb0  88 11 9a e5                                      ldr r1, [sl, #0x188]
00488eb4  84 21 9a e5                                      ldr r2, [sl, #0x184]
00488eb8  05 00 a0 e1                                      mov r0, r5
00488ebc  50 1e fa eb                                      bl #0x310804
00488ec0  e4 13 9f e5                                      ldr r1, [pc, #0x3e4]
00488ec4  05 00 a0 e1                                      mov r0, r5
00488ec8  01 10 8f e0                                      add r1, pc, r1
00488ecc  15 ee ff eb                                      bl #0x484728
00488ed0  01 00 70 e3                                      cmn r0, #1
00488ed4  00 70 a0 e1                                      mov r7, r0
00488ed8  91 00 00 0a                                      beq #0x489124
00488edc  5c 60 8d e2                                      add r6, sp, #0x5c
00488ee0  48 30 86 e2                                      add r3, r6, #0x48
00488ee4  03 00 a0 e1                                      mov r0, r3
00488ee8  1c 30 8d e5                                      str r3, [sp, #0x1c]
00488eec  13 00 0a eb                                      bl #0x708f40
00488ef0  b8 23 9f e5                                      ldr r2, [pc, #0x3b8]
00488ef4  b8 33 9f e5                                      ldr r3, [pc, #0x3b8]
00488ef8  00 90 a0 e3                                      mov sb, #0
00488efc  02 b0 94 e7                                      ldr fp, [r4, r2]
00488f00  03 30 94 e7                                      ldr r3, [r4, r3]
00488f04  e8 90 cd e5                                      strb sb, [sp, #0xe8]
00488f08  08 20 9b e5                                      ldr r2, [fp, #8]
00488f0c  08 30 83 e2                                      add r3, r3, #8
00488f10  ec 90 8d e5                                      str sb, [sp, #0xec]
00488f14  5c 20 8d e5                                      str r2, [sp, #0x5c]
00488f18  f0 90 8d e5                                      str sb, [sp, #0xf0]
00488f1c  a4 30 8d e5                                      str r3, [sp, #0xa4]
00488f20  0c 30 12 e5                                      ldr r3, [r2, #-0xc]
00488f24  0c 20 9b e5                                      ldr r2, [fp, #0xc]
00488f28  08 00 86 e2                                      add r0, r6, #8
00488f2c  14 00 8d e5                                      str r0, [sp, #0x14]
00488f30  03 20 86 e7                                      str r2, [r6, r3]
00488f34  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
00488f38  f4 20 8d e2                                      add r2, sp, #0xf4
00488f3c  60 90 8d e5                                      str sb, [sp, #0x60]
00488f40  18 20 8d e5                                      str r2, [sp, #0x18]
00488f44  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00488f48  09 10 a0 e1                                      mov r1, sb
00488f4c  00 00 86 e0                                      add r0, r6, r0
00488f50  53 68 fa eb                                      bl #0x3230a4
00488f54  10 30 9b e5                                      ldr r3, [fp, #0x10]
00488f58  14 20 9b e5                                      ldr r2, [fp, #0x14]
00488f5c  14 00 9d e5                                      ldr r0, [sp, #0x14]
00488f60  64 30 8d e5                                      str r3, [sp, #0x64]
00488f64  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00488f68  09 10 a0 e1                                      mov r1, sb
00488f6c  03 20 80 e7                                      str r2, [r0, r3]
00488f70  64 30 9d e5                                      ldr r3, [sp, #0x64]
00488f74  14 20 9d e5                                      ldr r2, [sp, #0x14]
00488f78  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00488f7c  00 00 82 e0                                      add r0, r2, r0
00488f80  47 68 fa eb                                      bl #0x3230a4
00488f84  04 30 9b e5                                      ldr r3, [fp, #4]
00488f88  18 00 9b e5                                      ldr r0, [fp, #0x18]
00488f8c  1c 20 9b e5                                      ldr r2, [fp, #0x1c]
00488f90  5c 30 8d e5                                      str r3, [sp, #0x5c]
00488f94  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00488f98  09 10 a0 e1                                      mov r1, sb
00488f9c  03 00 86 e7                                      str r0, [r6, r3]
00488fa0  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
00488fa4  64 20 8d e5                                      str r2, [sp, #0x64]
00488fa8  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00488fac  00 00 86 e0                                      add r0, r6, r0
00488fb0  3b 68 fa eb                                      bl #0x3230a4
00488fb4  fc 32 9f e5                                      ldr r3, [pc, #0x2fc]
00488fb8  fc 22 9f e5                                      ldr r2, [pc, #0x2fc]
00488fbc  28 00 86 e2                                      add r0, r6, #0x28
00488fc0  03 30 94 e7                                      ldr r3, [r4, r3]
00488fc4  02 20 94 e7                                      ldr r2, [r4, r2]
00488fc8  6c 90 8d e5                                      str sb, [sp, #0x6c]
00488fcc  20 c0 83 e2                                      add ip, r3, #0x20
00488fd0  08 10 82 e2                                      add r1, r2, #8
00488fd4  0c 20 83 e2                                      add r2, r3, #0xc
00488fd8  34 30 83 e2                                      add r3, r3, #0x34
00488fdc  64 c0 8d e5                                      str ip, [sp, #0x64]
00488fe0  5c 20 8d e5                                      str r2, [sp, #0x5c]
00488fe4  a4 30 8d e5                                      str r3, [sp, #0xa4]
00488fe8  68 10 8d e5                                      str r1, [sp, #0x68]
00488fec  70 90 8d e5                                      str sb, [sp, #0x70]
00488ff0  74 90 8d e5                                      str sb, [sp, #0x74]
00488ff4  78 90 8d e5                                      str sb, [sp, #0x78]
00488ff8  7c 90 8d e5                                      str sb, [sp, #0x7c]
00488ffc  80 90 8d e5                                      str sb, [sp, #0x80]
00489000  92 ff 09 eb                                      bl #0x708e50
00489004  b4 22 9f e5                                      ldr r2, [pc, #0x2b4]
00489008  30 30 86 e2                                      add r3, r6, #0x30
0048900c  03 00 a0 e1                                      mov r0, r3
00489010  02 20 94 e7                                      ldr r2, [r4, r2]
00489014  10 10 a0 e3                                      mov r1, #0x10
00489018  9c 30 8d e5                                      str r3, [sp, #0x9c]
0048901c  08 20 82 e2                                      add r2, r2, #8
00489020  68 20 8d e5                                      str r2, [sp, #0x68]
00489024  18 20 a0 e3                                      mov r2, #0x18
00489028  88 20 8d e5                                      str r2, [sp, #0x88]
0048902c  a0 30 8d e5                                      str r3, [sp, #0xa0]
00489030  91 21 fa eb                                      bl #0x31167c
00489034  9c 30 9d e5                                      ldr r3, [sp, #0x9c]
00489038  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0048903c  0c 10 86 e2                                      add r1, r6, #0xc
00489040  00 90 c3 e5                                      strb sb, [r3]
00489044  16 68 fa eb                                      bl #0x3230a4
00489048  74 12 9f e5                                      ldr r1, [pc, #0x274]
0048904c  14 00 9d e5                                      ldr r0, [sp, #0x14]
00489050  01 10 8f e0                                      add r1, pc, r1
00489054  4f 28 fa eb                                      bl #0x313198
00489058  04 10 9a e5                                      ldr r1, [sl, #4]
0048905c  14 00 9d e5                                      ldr r0, [sp, #0x14]
00489060  b1 ee ff eb                                      bl #0x484b2c
00489064  5c 12 9f e5                                      ldr r1, [pc, #0x25c]
00489068  01 10 8f e0                                      add r1, pc, r1
0048906c  49 28 fa eb                                      bl #0x313198
00489070  18 00 9d e5                                      ldr r0, [sp, #0x18]
00489074  a0 10 9d e5                                      ldr r1, [sp, #0xa0]
00489078  9c 20 9d e5                                      ldr r2, [sp, #0x9c]
0048907c  04 01 8d e5                                      str r0, [sp, #0x104]
00489080  08 01 8d e5                                      str r0, [sp, #0x108]
00489084  97 21 fa eb                                      bl #0x3116e8
00489088  20 31 9d e5                                      ldr r3, [sp, #0x120]
0048908c  1c 91 9d e5                                      ldr sb, [sp, #0x11c]
00489090  09 90 63 e0                                      rsb sb, r3, sb
00489094  09 00 57 e1                                      cmp r7, sb
00489098  7a 00 00 8a                                      bhi #0x489288
0048909c  04 c1 9d e5                                      ldr ip, [sp, #0x104]
004890a0  08 31 9d e5                                      ldr r3, [sp, #0x108]
004890a4  fe 2f 0f e3                                      movw r2, #0xfffe
004890a8  ff 2f 4f e3                                      movt r2, #0xffff
004890ac  09 a0 67 e0                                      rsb sl, r7, sb
004890b0  04 00 5a e3                                      cmp sl, #4
004890b4  04 a0 a0 23                                      movhs sl, #4
004890b8  02 20 69 e0                                      rsb r2, sb, r2
004890bc  0a 20 82 e0                                      add r2, r2, sl
004890c0  0c 10 63 e0                                      rsb r1, r3, ip
004890c4  02 00 51 e1                                      cmp r1, r2
004890c8  68 00 00 8a                                      bhi #0x489270
004890cc  20 11 9d e5                                      ldr r1, [sp, #0x120]
004890d0  07 20 8a e0                                      add r2, sl, r7
004890d4  00 c0 8d e5                                      str ip, [sp]
004890d8  02 20 81 e0                                      add r2, r1, r2
004890dc  00 c0 a0 e3                                      mov ip, #0
004890e0  07 10 81 e0                                      add r1, r1, r7
004890e4  05 00 a0 e1                                      mov r0, r5
004890e8  04 c0 8d e5                                      str ip, [sp, #4]
004890ec  53 a3 fd eb                                      bl #0x3f1e40
004890f0  08 01 9d e5                                      ldr r0, [sp, #0x108]
004890f4  18 20 9d e5                                      ldr r2, [sp, #0x18]
004890f8  02 00 50 e1                                      cmp r0, r2
004890fc  06 00 00 0a                                      beq #0x48911c
00489100  00 00 50 e3                                      cmp r0, #0
00489104  04 00 00 0a                                      beq #0x48911c
00489108  f4 10 9d e5                                      ldr r1, [sp, #0xf4]
0048910c  01 10 60 e0                                      rsb r1, r0, r1
00489110  80 00 51 e3                                      cmp r1, #0x80
00489114  5f 00 00 8a                                      bhi #0x489298
00489118  78 ff 09 eb                                      bl #0x708f00
0048911c  06 00 a0 e1                                      mov r0, r6
00489120  87 00 fc eb                                      bl #0x389344
00489124  a0 31 9f e5                                      ldr r3, [pc, #0x1a0]
00489128  20 11 9d e5                                      ldr r1, [sp, #0x120]
0048912c  01 20 a0 e3                                      mov r2, #1
00489130  03 30 94 e7                                      ldr r3, [r4, r3]
00489134  10 30 93 e5                                      ldr r3, [r3, #0x10]
00489138  34 60 93 e5                                      ldr r6, [r3, #0x34]
0048913c  00 30 96 e5                                      ldr r3, [r6]
00489140  06 00 a0 e1                                      mov r0, r6
00489144  0f e0 a0 e1                                      mov lr, pc
00489148  94 f0 93 e5                                      ldr pc, [r3, #0x94]
0048914c  00 00 50 e3                                      cmp r0, #0
00489150  00 70 a0 e1                                      mov r7, r0
00489154  54 00 8d e5                                      str r0, [sp, #0x54]
00489158  0f 00 00 0a                                      beq #0x48919c
0048915c  4c 30 dd e5                                      ldrb r3, [sp, #0x4c]
00489160  00 20 90 e5                                      ldr r2, [r0]
00489164  00 00 53 e3                                      cmp r3, #0
00489168  1c a0 92 e5                                      ldr sl, [r2, #0x1c]
0048916c  28 00 00 0a                                      beq #0x489214
00489170  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
00489174  07 00 a0 e1                                      mov r0, r7
00489178  48 20 9d e5                                      ldr r2, [sp, #0x48]
0048917c  00 10 93 e5                                      ldr r1, [r3]
00489180  00 30 a0 e3                                      mov r3, #0
00489184  3a ff 2f e1                                      blx sl
00489188  06 00 a0 e1                                      mov r0, r6
0048918c  00 30 96 e5                                      ldr r3, [r6]
00489190  54 10 8d e2                                      add r1, sp, #0x54
00489194  0f e0 a0 e1                                      mov lr, pc
00489198  78 f0 93 e5                                      ldr pc, [r3, #0x78]
0048919c  05 00 a0 e1                                      mov r0, r5
004891a0  81 ed ff eb                                      bl #0x4847ac
004891a4  58 c0 8d e2                                      add ip, sp, #0x58
004891a8  01 20 80 e2                                      add r2, r0, #1
004891ac  05 10 a0 e1                                      mov r1, r5
004891b0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
004891b4  00 30 e0 e3                                      mvn r3, #0
004891b8  00 c0 8d e5                                      str ip, [sp]
004891bc  c5 32 fe eb                                      bl #0x415cd8
004891c0  20 01 9d e5                                      ldr r0, [sp, #0x120]
004891c4  05 00 50 e1                                      cmp r0, r5
004891c8  06 00 00 0a                                      beq #0x4891e8
004891cc  00 00 50 e3                                      cmp r0, #0
004891d0  04 00 00 0a                                      beq #0x4891e8
004891d4  0c 11 9d e5                                      ldr r1, [sp, #0x10c]
004891d8  01 10 60 e0                                      rsb r1, r0, r1
004891dc  80 00 51 e3                                      cmp r1, #0x80
004891e0  20 00 00 8a                                      bhi #0x489268
004891e4  45 ff 09 eb                                      bl #0x708f00
004891e8  08 00 a0 e1                                      mov r0, r8
004891ec  f4 35 fa eb                                      bl #0x3169c4
004891f0  10 20 9d e5                                      ldr r2, [sp, #0x10]
004891f4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
004891f8  02 30 94 e7                                      ldr r3, [r4, r2]
004891fc  24 21 9d e5                                      ldr r2, [sp, #0x124]
00489200  00 30 93 e5                                      ldr r3, [r3]
00489204  03 00 52 e1                                      cmp r2, r3
00489208  24 00 00 1a                                      bne #0x4892a0
0048920c  4b df 8d e2                                      add sp, sp, #0x12c
00489210  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00489214  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
00489218  02 20 94 e7                                      ldr r2, [r4, r2]
0048921c  00 20 92 e5                                      ldr r2, [r2]
00489220  02 00 52 e3                                      cmp r2, #2
00489224  00 30 83 05                                      streq r3, [r3]
00489228  d0 ff ff 0a                                      beq #0x489170
0048922c  01 00 52 e3                                      cmp r2, #1
00489230  ce ff ff 1a                                      bne #0x489170
00489234  98 00 9f e5                                      ldr r0, [pc, #0x98]
00489238  98 10 9f e5                                      ldr r1, [pc, #0x98]
0048923c  98 20 9f e5                                      ldr r2, [pc, #0x98]
00489240  00 00 94 e7                                      ldr r0, [r4, r0]
00489244  94 30 9f e5                                      ldr r3, [pc, #0x94]
00489248  82 c0 a0 e3                                      mov ip, #0x82
0048924c  01 10 8f e0                                      add r1, pc, r1
00489250  02 20 8f e0                                      add r2, pc, r2
00489254  03 30 8f e0                                      add r3, pc, r3
00489258  a8 00 80 e2                                      add r0, r0, #0xa8
0048925c  00 c0 8d e5                                      str ip, [sp]
00489260  67 13 fa eb                                      bl #0x30e004
00489264  c1 ff ff ea                                      b #0x489170
00489268  74 1c fa eb                                      bl #0x310440
0048926c  dd ff ff ea                                      b #0x4891e8
00489270  6c 00 9f e5                                      ldr r0, [pc, #0x6c]
00489274  00 00 8f e0                                      add r0, pc, r0
00489278  f0 fe 09 eb                                      bl #0x708e40
0048927c  08 31 9d e5                                      ldr r3, [sp, #0x108]
00489280  04 c1 9d e5                                      ldr ip, [sp, #0x104]
00489284  90 ff ff ea                                      b #0x4890cc
00489288  58 00 9f e5                                      ldr r0, [pc, #0x58]
0048928c  00 00 8f e0                                      add r0, pc, r0
00489290  06 ff 09 eb                                      bl #0x708eb0
00489294  80 ff ff ea                                      b #0x48909c
00489298  68 1c fa eb                                      bl #0x310440
0048929c  9e ff ff ea                                      b #0x48911c
004892a0  1a 14 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004892a4  30 bc 50 00 ac 40 00 00 a0 68 43 00 cc 38 00 00  .byte 0x30, 0xbc, 0x50, 0x00, 0xac, 0x40, 0x00, 0x00, 0xa0, 0x68, 0x43, 0x00, 0xcc, 0x38, 0x00, 0x00
004892b4  30 37 00 00 40 0e 00 00 b4 07 00 00 50 4a 00 00  .byte 0x30, 0x37, 0x00, 0x00, 0x40, 0x0e, 0x00, 0x00, 0xb4, 0x07, 0x00, 0x00, 0x50, 0x4a, 0x00, 0x00
004892c4  d0 b4 43 00 e8 66 43 00 f4 37 00 00 c0 39 00 00  .byte 0xd0, 0xb4, 0x43, 0x00, 0xe8, 0x66, 0x43, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
004892d4  c0 19 00 00 8c 51 43 00 78 53 43 00 6c d5 43 00  .byte 0xc0, 0x19, 0x00, 0x00, 0x8c, 0x51, 0x43, 0x00, 0x78, 0x53, 0x43, 0x00, 0x6c, 0xd5, 0x43, 0x00
004892e4  e4 51 43 00 cc 51 43 00                          .byte 0xe4, 0x51, 0x43, 0x00, 0xcc, 0x51, 0x43, 0x00

; FUNCTION 0x004892ec, declared_size=540, range_size=540, mode=arm
; class-group: rnd::RandomGenerator
; alias: _ZN3rnd15RandomGenerator10LoadBlocksEv
; demangled: rnd::RandomGenerator::LoadBlocks()
; decoder-mode: arm
004892ec  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004892f0  00 12 9f e5                                      ldr r1, [pc, #0x200]
004892f4  00 22 9f e5                                      ldr r2, [pc, #0x200]
004892f8  54 d0 4d e2                                      sub sp, sp, #0x54
004892fc  01 10 8f e0                                      add r1, pc, r1
00489300  02 30 91 e7                                      ldr r3, [r1, r2]
00489304  06 00 8d e9                                      stmib sp, {r1, r2}
00489308  58 21 90 e5                                      ldr r2, [r0, #0x158]
0048930c  54 11 90 e5                                      ldr r1, [r0, #0x154]
00489310  00 30 93 e5                                      ldr r3, [r3]
00489314  34 c0 8d e2                                      add ip, sp, #0x34
00489318  01 10 62 e0                                      rsb r1, r2, r1
0048931c  00 40 a0 e1                                      mov r4, r0
00489320  11 10 81 e2                                      add r1, r1, #0x11
00489324  0c 00 a0 e1                                      mov r0, ip
00489328  00 c0 8d e5                                      str ip, [sp]
0048932c  44 c0 8d e5                                      str ip, [sp, #0x44]
00489330  48 c0 8d e5                                      str ip, [sp, #0x48]
00489334  4c 30 8d e5                                      str r3, [sp, #0x4c]
00489338  cf 20 fa eb                                      bl #0x31167c
0048933c  44 30 9d e5                                      ldr r3, [sp, #0x44]
00489340  00 50 a0 e3                                      mov r5, #0
00489344  00 00 9d e5                                      ldr r0, [sp]
00489348  00 50 c3 e5                                      strb r5, [r3]
0048934c  58 11 94 e5                                      ldr r1, [r4, #0x158]
00489350  54 21 94 e5                                      ldr r2, [r4, #0x154]
00489354  2a 1d fa eb                                      bl #0x310804
00489358  a0 11 9f e5                                      ldr r1, [pc, #0x1a0]
0048935c  14 c0 8d e2                                      add ip, sp, #0x14
00489360  30 30 8d e2                                      add r3, sp, #0x30
00489364  01 10 8f e0                                      add r1, pc, r1
00489368  10 20 81 e2                                      add r2, r1, #0x10
0048936c  00 00 9d e5                                      ldr r0, [sp]
00489370  0c c0 8d e5                                      str ip, [sp, #0xc]
00489374  04 85 fa eb                                      bl #0x32a78c
00489378  04 00 a0 e1                                      mov r0, r4
0048937c  48 10 9d e5                                      ldr r1, [sp, #0x48]
00489380  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00489384  1c 50 8d e5                                      str r5, [sp, #0x1c]
00489388  14 50 8d e5                                      str r5, [sp, #0x14]
0048938c  18 50 8d e5                                      str r5, [sp, #0x18]
00489390  5b fd ff eb                                      bl #0x488904
00489394  14 50 9d e5                                      ldr r5, [sp, #0x14]
00489398  18 b0 9d e5                                      ldr fp, [sp, #0x18]
0048939c  0b 00 55 e1                                      cmp r5, fp
004893a0  3c 60 84 02                                      addeq r6, r4, #0x3c
004893a4  1b 00 00 0a                                      beq #0x489418
004893a8  54 71 9f e5                                      ldr r7, [pc, #0x154]
004893ac  3c 60 84 e2                                      add r6, r4, #0x3c
004893b0  20 a0 8d e2                                      add sl, sp, #0x20
004893b4  07 70 8f e0                                      add r7, pc, r7
004893b8  28 80 8d e2                                      add r8, sp, #0x28
004893bc  14 90 95 e5                                      ldr sb, [r5, #0x14]
004893c0  07 10 a0 e1                                      mov r1, r7
004893c4  09 00 a0 e1                                      mov r0, sb
004893c8  01 16 fa eb                                      bl #0x30ebd4
004893cc  00 00 50 e3                                      cmp r0, #0
004893d0  0d 00 00 0a                                      beq #0x48940c
004893d4  09 20 a0 e1                                      mov r2, sb
004893d8  58 01 94 e5                                      ldr r0, [r4, #0x158]
004893dc  40 11 94 e5                                      ldr r1, [r4, #0x140]
004893e0  5b 06 00 eb                                      bl #0x48ad54
004893e4  00 30 50 e2                                      subs r3, r0, #0
004893e8  06 00 00 0a                                      beq #0x489408
004893ec  18 c0 93 e5                                      ldr ip, [r3, #0x18]
004893f0  0a 00 a0 e1                                      mov r0, sl
004893f4  06 10 a0 e1                                      mov r1, r6
004893f8  08 20 a0 e1                                      mov r2, r8
004893fc  28 c0 8d e5                                      str ip, [sp, #0x28]
00489400  2c 30 8d e5                                      str r3, [sp, #0x2c]
00489404  52 f3 ff eb                                      bl #0x486154
00489408  18 b0 9d e5                                      ldr fp, [sp, #0x18]
0048940c  18 50 85 e2                                      add r5, r5, #0x18
00489410  0b 00 55 e1                                      cmp r5, fp
00489414  e8 ff ff 1a                                      bne #0x4893bc
00489418  44 40 94 e5                                      ldr r4, [r4, #0x44]
0048941c  06 00 54 e1                                      cmp r4, r6
00489420  0d 00 00 0a                                      beq #0x48945c
00489424  14 00 94 e5                                      ldr r0, [r4, #0x14]
00489428  06 10 a0 e1                                      mov r1, r6
0048942c  ae 01 00 eb                                      bl #0x489aec
00489430  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00489434  00 00 52 e3                                      cmp r2, #0
00489438  01 00 00 1a                                      bne #0x489444
0048943c  1d 00 00 ea                                      b #0x4894b8
00489440  03 20 a0 e1                                      mov r2, r3
00489444  08 30 92 e5                                      ldr r3, [r2, #8]
00489448  00 00 53 e3                                      cmp r3, #0
0048944c  fb ff ff 1a                                      bne #0x489440
00489450  02 40 a0 e1                                      mov r4, r2
00489454  06 00 54 e1                                      cmp r4, r6
00489458  f1 ff ff 1a                                      bne #0x489424
0048945c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00489460  b2 2a fa eb                                      bl #0x313f30
00489464  48 00 9d e5                                      ldr r0, [sp, #0x48]
00489468  00 10 9d e5                                      ldr r1, [sp]
0048946c  01 00 50 e1                                      cmp r0, r1
00489470  06 00 00 0a                                      beq #0x489490
00489474  00 00 50 e3                                      cmp r0, #0
00489478  04 00 00 0a                                      beq #0x489490
0048947c  34 10 9d e5                                      ldr r1, [sp, #0x34]
00489480  01 10 60 e0                                      rsb r1, r0, r1
00489484  80 00 51 e3                                      cmp r1, #0x80
00489488  17 00 00 8a                                      bhi #0x4894ec
0048948c  9b fe 09 eb                                      bl #0x708f00
00489490  08 20 9d e5                                      ldr r2, [sp, #8]
00489494  04 c0 9d e5                                      ldr ip, [sp, #4]
00489498  01 00 a0 e3                                      mov r0, #1
0048949c  02 30 9c e7                                      ldr r3, [ip, r2]
004894a0  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
004894a4  00 30 93 e5                                      ldr r3, [r3]
004894a8  03 00 52 e1                                      cmp r2, r3
004894ac  10 00 00 1a                                      bne #0x4894f4
004894b0  54 d0 8d e2                                      add sp, sp, #0x54
004894b4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004894b8  04 30 94 e5                                      ldr r3, [r4, #4]
004894bc  0c 10 93 e5                                      ldr r1, [r3, #0xc]
004894c0  01 00 54 e1                                      cmp r4, r1
004894c4  05 00 00 1a                                      bne #0x4894e0
004894c8  03 40 a0 e1                                      mov r4, r3
004894cc  04 30 93 e5                                      ldr r3, [r3, #4]
004894d0  0c 20 93 e5                                      ldr r2, [r3, #0xc]
004894d4  04 00 52 e1                                      cmp r2, r4
004894d8  fa ff ff 0a                                      beq #0x4894c8
004894dc  0c 20 94 e5                                      ldr r2, [r4, #0xc]
004894e0  03 00 52 e1                                      cmp r2, r3
004894e4  03 40 a0 11                                      movne r4, r3
004894e8  cb ff ff ea                                      b #0x48941c
004894ec  d3 1b fa eb                                      bl #0x310440
004894f0  e6 ff ff ea                                      b #0x489490
004894f4  85 13 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004894f8  94 b7 50 00 ac 40 00 00 0c b9 44 00 74 d4 43 00  .byte 0x94, 0xb7, 0x50, 0x00, 0xac, 0x40, 0x00, 0x00, 0x0c, 0xb9, 0x44, 0x00, 0x74, 0xd4, 0x43, 0x00

; FUNCTION 0x00489508, declared_size=1152, range_size=1152, mode=arm
; class-group: rnd::RandomGenerator
; alias: _ZN3rnd15RandomGenerator12LoadRuleFileEPKc
; demangled: rnd::RandomGenerator::LoadRuleFile(char const*)
; decoder-mode: arm
00489508  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0048950c  34 54 9f e5                                      ldr r5, [pc, #0x434]
00489510  34 24 9f e5                                      ldr r2, [pc, #0x434]
00489514  64 d0 4d e2                                      sub sp, sp, #0x64
00489518  05 50 8f e0                                      add r5, pc, r5
0048951c  02 30 95 e7                                      ldr r3, [r5, r2]
00489520  00 40 a0 e1                                      mov r4, r0
00489524  01 00 a0 e1                                      mov r0, r1
00489528  00 30 93 e5                                      ldr r3, [r3]
0048952c  01 80 a0 e1                                      mov r8, r1
00489530  08 20 8d e5                                      str r2, [sp, #8]
00489534  5c 30 8d e5                                      str r3, [sp, #0x5c]
00489538  45 12 fa eb                                      bl #0x30de54
0048953c  5d 6f 84 e2                                      add r6, r4, #0x174
00489540  00 20 88 e0                                      add r2, r8, r0
00489544  08 10 a0 e1                                      mov r1, r8
00489548  06 00 a0 e1                                      mov r0, r6
0048954c  23 1d fa eb                                      bl #0x3109e0
00489550  f8 33 9f e5                                      ldr r3, [pc, #0x3f8]
00489554  06 00 a0 e1                                      mov r0, r6
00489558  03 30 95 e7                                      ldr r3, [r5, r3]
0048955c  10 30 93 e5                                      ldr r3, [r3, #0x10]
00489560  34 70 93 e5                                      ldr r7, [r3, #0x34]
00489564  90 ec ff eb                                      bl #0x4847ac
00489568  01 00 70 e3                                      cmn r0, #1
0048956c  dd 00 00 0a                                      beq #0x4898e8
00489570  01 90 80 e2                                      add sb, r0, #1
00489574  44 a0 8d e2                                      add sl, sp, #0x44
00489578  28 c0 8d e2                                      add ip, sp, #0x28
0048957c  57 bf 84 e2                                      add fp, r4, #0x15c
00489580  0a 00 a0 e1                                      mov r0, sl
00489584  06 10 a0 e1                                      mov r1, r6
00489588  00 20 a0 e3                                      mov r2, #0
0048958c  09 30 a0 e1                                      mov r3, sb
00489590  00 c0 8d e5                                      str ip, [sp]
00489594  cf 31 fe eb                                      bl #0x415cd8
00489598  0a 00 5b e1                                      cmp fp, sl
0048959c  03 00 00 0a                                      beq #0x4895b0
004895a0  0b 00 a0 e1                                      mov r0, fp
004895a4  58 10 9d e5                                      ldr r1, [sp, #0x58]
004895a8  54 20 9d e5                                      ldr r2, [sp, #0x54]
004895ac  0b 1d fa eb                                      bl #0x3109e0
004895b0  58 00 9d e5                                      ldr r0, [sp, #0x58]
004895b4  0a 00 50 e1                                      cmp r0, sl
004895b8  06 00 00 0a                                      beq #0x4895d8
004895bc  00 00 50 e3                                      cmp r0, #0
004895c0  04 00 00 0a                                      beq #0x4895d8
004895c4  44 10 9d e5                                      ldr r1, [sp, #0x44]
004895c8  01 10 60 e0                                      rsb r1, r0, r1
004895cc  80 00 51 e3                                      cmp r1, #0x80
004895d0  d1 00 00 8a                                      bhi #0x48991c
004895d4  49 fe 09 eb                                      bl #0x708f00
004895d8  2c a0 8d e2                                      add sl, sp, #0x2c
004895dc  24 c0 8d e2                                      add ip, sp, #0x24
004895e0  09 20 a0 e1                                      mov r2, sb
004895e4  0a 00 a0 e1                                      mov r0, sl
004895e8  06 10 a0 e1                                      mov r1, r6
004895ec  00 30 e0 e3                                      mvn r3, #0
004895f0  00 c0 8d e5                                      str ip, [sp]
004895f4  b7 31 fe eb                                      bl #0x415cd8
004895f8  0a 00 56 e1                                      cmp r6, sl
004895fc  03 00 00 0a                                      beq #0x489610
00489600  06 00 a0 e1                                      mov r0, r6
00489604  40 10 9d e5                                      ldr r1, [sp, #0x40]
00489608  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
0048960c  f3 1c fa eb                                      bl #0x3109e0
00489610  40 00 9d e5                                      ldr r0, [sp, #0x40]
00489614  0a 00 50 e1                                      cmp r0, sl
00489618  06 00 00 0a                                      beq #0x489638
0048961c  00 00 50 e3                                      cmp r0, #0
00489620  04 00 00 0a                                      beq #0x489638
00489624  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00489628  01 10 60 e0                                      rsb r1, r0, r1
0048962c  80 00 51 e3                                      cmp r1, #0x80
00489630  b7 00 00 8a                                      bhi #0x489914
00489634  31 fe 09 eb                                      bl #0x708f00
00489638  00 20 a0 e3                                      mov r2, #0
0048963c  08 10 a0 e1                                      mov r1, r8
00489640  02 30 a0 e1                                      mov r3, r2
00489644  00 c0 97 e5                                      ldr ip, [r7]
00489648  07 00 a0 e1                                      mov r0, r7
0048964c  0f e0 a0 e1                                      mov lr, pc
00489650  88 f0 9c e5                                      ldr pc, [ip, #0x88]
00489654  00 00 50 e3                                      cmp r0, #0
00489658  00 30 a0 e1                                      mov r3, r0
0048965c  20 00 8d e5                                      str r0, [sp, #0x20]
00489660  95 00 00 0a                                      beq #0x4898bc
00489664  00 30 93 e5                                      ldr r3, [r3]
00489668  0f e0 a0 e1                                      mov lr, pc
0048966c  08 f0 93 e5                                      ldr pc, [r3, #8]
00489670  00 80 a0 e1                                      mov r8, r0
00489674  1e 14 fa eb                                      bl #0x30e6f4
00489678  60 60 8d e2                                      add r6, sp, #0x60
0048967c  40 c0 36 e5                                      ldr ip, [r6, #-0x40]!
00489680  28 01 84 e5                                      str r0, [r4, #0x128]
00489684  08 20 a0 e1                                      mov r2, r8
00489688  c2 3f a0 e1                                      asr r3, r2, #0x1f
0048968c  00 10 a0 e1                                      mov r1, r0
00489690  0c 00 a0 e1                                      mov r0, ip
00489694  00 c0 9c e5                                      ldr ip, [ip]
00489698  0f e0 a0 e1                                      mov lr, pc
0048969c  18 f0 9c e5                                      ldr pc, [ip, #0x18]
004896a0  00 30 97 e5                                      ldr r3, [r7]
004896a4  07 00 a0 e1                                      mov r0, r7
004896a8  06 10 a0 e1                                      mov r1, r6
004896ac  0f e0 a0 e1                                      mov lr, pc
004896b0  78 f0 93 e5                                      ldr pc, [r3, #0x78]
004896b4  00 10 a0 e3                                      mov r1, #0
004896b8  70 00 a0 e3                                      mov r0, #0x70
004896bc  ab 1b fa eb                                      bl #0x310570
004896c0  00 60 a0 e1                                      mov r6, r0
004896c4  fe 35 02 eb                                      bl #0x516ec4
004896c8  08 20 a0 e1                                      mov r2, r8
004896cc  24 61 84 e5                                      str r6, [r4, #0x124]
004896d0  06 00 a0 e1                                      mov r0, r6
004896d4  28 11 94 e5                                      ldr r1, [r4, #0x128]
004896d8  00 30 a0 e3                                      mov r3, #0
004896dc  71 33 02 eb                                      bl #0x5164a8
004896e0  6c 22 9f e5                                      ldr r2, [pc, #0x26c]
004896e4  24 c1 94 e5                                      ldr ip, [r4, #0x124]
004896e8  18 60 8d e2                                      add r6, sp, #0x18
004896ec  02 20 8f e0                                      add r2, pc, r2
004896f0  1c 10 8d e2                                      add r1, sp, #0x1c
004896f4  00 30 a0 e3                                      mov r3, #0
004896f8  06 00 a0 e1                                      mov r0, r6
004896fc  1c c0 8d e5                                      str ip, [sp, #0x1c]
00489700  b4 2d 02 eb                                      bl #0x514dd8
00489704  06 00 a0 e1                                      mov r0, r6
00489708  ce e8 ff eb                                      bl #0x483a48
0048970c  00 70 50 e2                                      subs r7, r0, #0
00489710  69 00 00 0a                                      beq #0x4898bc
00489714  8c 01 94 e5                                      ldr r0, [r4, #0x18c]
00489718  00 00 50 e3                                      cmp r0, #0
0048971c  02 00 00 0a                                      beq #0x48972c
00489720  04 00 80 e2                                      add r0, r0, #4
00489724  07 10 a0 e1                                      mov r1, r7
00489728  b4 28 02 eb                                      bl #0x513a00
0048972c  24 82 9f e5                                      ldr r8, [pc, #0x224]
00489730  07 00 a0 e1                                      mov r0, r7
00489734  4b af 84 e2                                      add sl, r4, #0x12c
00489738  08 80 8f e0                                      add r8, pc, r8
0048973c  08 10 a0 e1                                      mov r1, r8
00489740  4a 2d 02 eb                                      bl #0x514c70
00489744  00 00 50 e3                                      cmp r0, #0
00489748  75 00 00 0a                                      beq #0x489924
0048974c  08 10 a0 e1                                      mov r1, r8
00489750  07 00 a0 e1                                      mov r0, r7
00489754  45 2d 02 eb                                      bl #0x514c70
00489758  00 90 a0 e1                                      mov sb, r0
0048975c  bc 11 fa eb                                      bl #0x30de54
00489760  00 20 89 e0                                      add r2, sb, r0
00489764  f0 81 9f e5                                      ldr r8, [pc, #0x1f0]
00489768  09 10 a0 e1                                      mov r1, sb
0048976c  0a 00 a0 e1                                      mov r0, sl
00489770  08 80 8f e0                                      add r8, pc, r8
00489774  99 1c fa eb                                      bl #0x3109e0
00489778  07 00 a0 e1                                      mov r0, r7
0048977c  08 10 a0 e1                                      mov r1, r8
00489780  3a 2d 02 eb                                      bl #0x514c70
00489784  00 00 50 e3                                      cmp r0, #0
00489788  51 af 84 e2                                      add sl, r4, #0x144
0048978c  68 00 00 0a                                      beq #0x489934
00489790  08 10 a0 e1                                      mov r1, r8
00489794  07 00 a0 e1                                      mov r0, r7
00489798  34 2d 02 eb                                      bl #0x514c70
0048979c  00 70 a0 e1                                      mov r7, r0
004897a0  ab 11 fa eb                                      bl #0x30de54
004897a4  00 20 87 e0                                      add r2, r7, r0
004897a8  07 10 a0 e1                                      mov r1, r7
004897ac  0a 00 a0 e1                                      mov r0, sl
004897b0  8a 1c fa eb                                      bl #0x3109e0
004897b4  04 00 a0 e1                                      mov r0, r4
004897b8  cb fe ff eb                                      bl #0x4892ec
004897bc  18 10 9d e5                                      ldr r1, [sp, #0x18]
004897c0  00 80 a0 e1                                      mov r8, r0
004897c4  04 00 a0 e1                                      mov r0, r4
004897c8  88 f3 ff eb                                      bl #0x4865f0
004897cc  18 10 9d e5                                      ldr r1, [sp, #0x18]
004897d0  08 80 00 e0                                      and r8, r0, r8
004897d4  04 00 a0 e1                                      mov r0, r4
004897d8  3f f1 ff eb                                      bl #0x485cdc
004897dc  7c 21 9f e5                                      ldr r2, [pc, #0x17c]
004897e0  00 00 58 e3                                      cmp r8, #0
004897e4  00 80 a0 03                                      moveq r8, #0
004897e8  01 80 00 12                                      andne r8, r0, #1
004897ec  00 30 a0 e3                                      mov r3, #0
004897f0  02 20 8f e0                                      add r2, pc, r2
004897f4  06 10 a0 e1                                      mov r1, r6
004897f8  14 00 8d e2                                      add r0, sp, #0x14
004897fc  75 2d 02 eb                                      bl #0x514dd8
00489800  6c 00 84 e2                                      add r0, r4, #0x6c
00489804  14 10 9d e5                                      ldr r1, [sp, #0x14]
00489808  ef 1e 00 eb                                      bl #0x4913cc
0048980c  18 31 94 e5                                      ldr r3, [r4, #0x118]
00489810  1c 21 94 e5                                      ldr r2, [r4, #0x11c]
00489814  00 80 08 e0                                      and r8, r8, r0
00489818  02 20 63 e0                                      rsb r2, r3, r2
0048981c  22 21 b0 e1                                      lsrs r2, r2, #2
00489820  1c 00 00 0a                                      beq #0x489898
00489824  38 11 9f e5                                      ldr r1, [pc, #0x138]
00489828  38 91 9f e5                                      ldr sb, [pc, #0x138]
0048982c  38 b1 9f e5                                      ldr fp, [pc, #0x138]
00489830  38 71 9f e5                                      ldr r7, [pc, #0x138]
00489834  38 a1 9f e5                                      ldr sl, [pc, #0x138]
00489838  00 20 a0 e3                                      mov r2, #0
0048983c  01 10 8f e0                                      add r1, pc, r1
00489840  09 90 8f e0                                      add sb, pc, sb
00489844  0b b0 8f e0                                      add fp, pc, fp
00489848  0c 10 8d e5                                      str r1, [sp, #0xc]
0048984c  02 60 a0 e1                                      mov r6, r2
00489850  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
00489854  2a 1c 00 eb                                      bl #0x490904
00489858  00 00 50 e3                                      cmp r0, #0
0048985c  06 00 00 1a                                      bne #0x48987c
00489860  07 30 95 e7                                      ldr r3, [r5, r7]
00489864  00 30 93 e5                                      ldr r3, [r3]
00489868  02 00 53 e3                                      cmp r3, #2
0048986c  00 00 80 05                                      streq r0, [r0]
00489870  01 00 00 0a                                      beq #0x48987c
00489874  01 00 53 e3                                      cmp r3, #1
00489878  11 00 00 0a                                      beq #0x4898c4
0048987c  18 31 94 e5                                      ldr r3, [r4, #0x118]
00489880  1c 11 94 e5                                      ldr r1, [r4, #0x11c]
00489884  01 60 86 e2                                      add r6, r6, #1
00489888  06 20 a0 e1                                      mov r2, r6
0048988c  01 10 63 e0                                      rsb r1, r3, r1
00489890  41 01 56 e1                                      cmp r6, r1, asr #2
00489894  ed ff ff 3a                                      blo #0x489850
00489898  08 20 9d e5                                      ldr r2, [sp, #8]
0048989c  08 00 a0 e1                                      mov r0, r8
004898a0  02 30 95 e7                                      ldr r3, [r5, r2]
004898a4  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
004898a8  00 30 93 e5                                      ldr r3, [r3]
004898ac  03 00 52 e1                                      cmp r2, r3
004898b0  23 00 00 1a                                      bne #0x489944
004898b4  64 d0 8d e2                                      add sp, sp, #0x64
004898b8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004898bc  00 80 a0 e3                                      mov r8, #0
004898c0  f4 ff ff ea                                      b #0x489898
004898c4  0a 00 95 e7                                      ldr r0, [r5, sl]
004898c8  a6 c0 a0 e3                                      mov ip, #0xa6
004898cc  09 10 a0 e1                                      mov r1, sb
004898d0  0b 20 a0 e1                                      mov r2, fp
004898d4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
004898d8  a8 00 80 e2                                      add r0, r0, #0xa8
004898dc  00 c0 8d e5                                      str ip, [sp]
004898e0  c7 11 fa eb                                      bl #0x30e004
004898e4  e4 ff ff ea                                      b #0x48987c
004898e8  88 60 9f e5                                      ldr r6, [pc, #0x88]
004898ec  88 10 9f e5                                      ldr r1, [pc, #0x88]
004898f0  08 20 a0 e1                                      mov r2, r8
004898f4  06 60 8f e0                                      add r6, pc, r6
004898f8  0c 60 86 e2                                      add r6, r6, #0xc
004898fc  01 10 8f e0                                      add r1, pc, r1
00489900  06 00 a0 e1                                      mov r0, r6
00489904  76 14 fa eb                                      bl #0x30eae4
00489908  00 20 a0 e3                                      mov r2, #0
0048990c  06 10 a0 e1                                      mov r1, r6
00489910  4a ff ff ea                                      b #0x489640
00489914  c9 1a fa eb                                      bl #0x310440
00489918  46 ff ff ea                                      b #0x489638
0048991c  c7 1a fa eb                                      bl #0x310440
00489920  2c ff ff ea                                      b #0x4895d8
00489924  54 20 9f e5                                      ldr r2, [pc, #0x54]
00489928  02 20 8f e0                                      add r2, pc, r2
0048992c  02 90 a0 e1                                      mov sb, r2
00489930  8b ff ff ea                                      b #0x489764
00489934  48 20 9f e5                                      ldr r2, [pc, #0x48]
00489938  02 20 8f e0                                      add r2, pc, r2
0048993c  02 70 a0 e1                                      mov r7, r2
00489940  98 ff ff ea                                      b #0x4897a8
00489944  71 12 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00489948  78 b5 50 00 ac 40 00 00 f4 37 00 00 ac b5 44 00  .byte 0x78, 0xb5, 0x50, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xac, 0xb5, 0x44, 0x00
00489958  58 29 48 00 30 b5 44 00 b8 b4 44 00 7c b4 44 00  .byte 0x58, 0x29, 0x48, 0x00, 0x30, 0xb5, 0x44, 0x00, 0xb8, 0xb4, 0x44, 0x00, 0x7c, 0xb4, 0x44, 0x00
00489968  98 4b 43 00 24 4d 43 00 c0 39 00 00 c0 19 00 00  .byte 0x98, 0x4b, 0x43, 0x00, 0x24, 0x4d, 0x43, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
00489978  04 c9 51 00 8c b3 44 00 e0 1e 44 00 d0 1e 44 00  .byte 0x04, 0xc9, 0x51, 0x00, 0x8c, 0xb3, 0x44, 0x00, 0xe0, 0x1e, 0x44, 0x00, 0xd0, 0x1e, 0x44, 0x00

; FUNCTION 0x0048e184, declared_size=240, range_size=240, mode=arm
; class-group: rnd::RandomGenerator
; alias: _ZNK3rnd15RandomGenerator8GetBlockEPKc
; demangled: rnd::RandomGenerator::GetBlock(char const*) const
; decoder-mode: arm
0048e184  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0048e188  d8 40 9f e5                                      ldr r4, [pc, #0xd8]
0048e18c  d8 50 9f e5                                      ldr r5, [pc, #0xd8]
0048e190  2c d0 4d e2                                      sub sp, sp, #0x2c
0048e194  04 40 8f e0                                      add r4, pc, r4
0048e198  05 30 94 e7                                      ldr r3, [r4, r5]
0048e19c  0c 60 8d e2                                      add r6, sp, #0xc
0048e1a0  08 20 8d e2                                      add r2, sp, #8
0048e1a4  00 30 93 e5                                      ldr r3, [r3]
0048e1a8  00 70 a0 e1                                      mov r7, r0
0048e1ac  06 00 a0 e1                                      mov r0, r6
0048e1b0  24 30 8d e5                                      str r3, [sp, #0x24]
0048e1b4  cc 17 fa eb                                      bl #0x3140ec
0048e1b8  20 20 9d e5                                      ldr r2, [sp, #0x20]
0048e1bc  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0048e1c0  00 00 52 e1                                      cmp r2, r0
0048e1c4  0a 00 00 0a                                      beq #0x48e1f4
0048e1c8  a0 c0 9f e5                                      ldr ip, [pc, #0xa0]
0048e1cc  d0 30 d2 e1                                      ldrsb r3, [r2]
0048e1d0  ff 00 53 e3                                      cmp r3, #0xff
0048e1d4  0c 10 94 97                                      ldrls r1, [r4, ip]
0048e1d8  00 10 91 95                                      ldrls r1, [r1]
0048e1dc  83 30 81 90                                      addls r3, r1, r3, lsl #1
0048e1e0  f2 30 d3 91                                      ldrshls r3, [r3, #2]
0048e1e4  01 30 c2 e4                                      strb r3, [r2], #1
0048e1e8  00 00 52 e1                                      cmp r2, r0
0048e1ec  f6 ff ff 1a                                      bne #0x48e1cc
0048e1f0  20 00 9d e5                                      ldr r0, [sp, #0x20]
0048e1f4  3c 70 87 e2                                      add r7, r7, #0x3c
0048e1f8  28 10 8d e2                                      add r1, sp, #0x28
0048e1fc  24 00 21 e5                                      str r0, [r1, #-0x24]!
0048e200  07 00 a0 e1                                      mov r0, r7
0048e204  83 f8 ff eb                                      bl #0x48c418
0048e208  07 00 50 e1                                      cmp r0, r7
0048e20c  14 70 90 15                                      ldrne r7, [r0, #0x14]
0048e210  20 00 9d e5                                      ldr r0, [sp, #0x20]
0048e214  00 70 a0 03                                      moveq r7, #0
0048e218  06 00 50 e1                                      cmp r0, r6
0048e21c  06 00 00 0a                                      beq #0x48e23c
0048e220  00 00 50 e3                                      cmp r0, #0
0048e224  04 00 00 0a                                      beq #0x48e23c
0048e228  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0048e22c  01 10 60 e0                                      rsb r1, r0, r1
0048e230  80 00 51 e3                                      cmp r1, #0x80
0048e234  08 00 00 8a                                      bhi #0x48e25c
0048e238  30 eb 09 eb                                      bl #0x708f00
0048e23c  05 30 94 e7                                      ldr r3, [r4, r5]
0048e240  24 20 9d e5                                      ldr r2, [sp, #0x24]
0048e244  07 00 a0 e1                                      mov r0, r7
0048e248  00 30 93 e5                                      ldr r3, [r3]
0048e24c  03 00 52 e1                                      cmp r2, r3
0048e250  03 00 00 1a                                      bne #0x48e264
0048e254  2c d0 8d e2                                      add sp, sp, #0x2c
0048e258  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0048e25c  77 08 fa eb                                      bl #0x310440
0048e260  f5 ff ff ea                                      b #0x48e23c
0048e264  29 00 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0048e268  fc 68 50 00 ac 40 00 00 e0 36 00 00              .byte 0xfc, 0x68, 0x50, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe0, 0x36, 0x00, 0x00
