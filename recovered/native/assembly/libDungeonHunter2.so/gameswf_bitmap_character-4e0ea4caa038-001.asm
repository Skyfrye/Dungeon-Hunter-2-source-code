; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00759a14, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::bitmap_character
; alias: _ZNK7gameswf16bitmap_character2isEi
; demangled: gameswf::bitmap_character::is(int) const
; decoder-mode: arm
00759a14  21 00 51 e3                                      cmp r1, #0x21
00759a18  01 00 a0 03                                      moveq r0, #1
00759a1c  1e ff 2f 01                                      bxeq lr
00759a20  0a 00 51 e3                                      cmp r1, #0xa
00759a24  00 00 a0 13                                      movne r0, #0
00759a28  01 00 a0 03                                      moveq r0, #1
00759a2c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00759a30, declared_size=120, range_size=120, mode=arm
; class-group: gameswf::bitmap_character
; alias: _ZN7gameswf16bitmap_character16point_test_localEff
; demangled: gameswf::bitmap_character::point_test_local(float, float)
; decoder-mode: arm
00759a30  70 40 2d e9                                      push {r4, r5, r6, lr}
00759a34  00 40 a0 e1                                      mov r4, r0
00759a38  01 50 a0 e1                                      mov r5, r1
00759a3c  01 00 a0 e1                                      mov r0, r1
00759a40  24 10 94 e5                                      ldr r1, [r4, #0x24]
00759a44  02 60 a0 e1                                      mov r6, r2
00759a48  2f d3 ee eb                                      bl #0x30e70c
00759a4c  00 00 50 e3                                      cmp r0, #0
00759a50  04 00 00 1a                                      bne #0x759a68
00759a54  05 00 a0 e1                                      mov r0, r5
00759a58  28 10 94 e5                                      ldr r1, [r4, #0x28]
00759a5c  25 d2 ee eb                                      bl #0x30e2f8
00759a60  00 00 50 e3                                      cmp r0, #0
00759a64  01 00 00 0a                                      beq #0x759a70
00759a68  00 00 a0 e3                                      mov r0, #0
00759a6c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00759a70  06 00 a0 e1                                      mov r0, r6
00759a74  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
00759a78  23 d3 ee eb                                      bl #0x30e70c
00759a7c  00 00 50 e3                                      cmp r0, #0
00759a80  f8 ff ff 1a                                      bne #0x759a68
00759a84  06 00 a0 e1                                      mov r0, r6
00759a88  30 10 94 e5                                      ldr r1, [r4, #0x30]
00759a8c  19 d2 ee eb                                      bl #0x30e2f8
00759a90  00 00 50 e3                                      cmp r0, #0
00759a94  00 00 a0 e3                                      mov r0, #0
00759a98  01 00 a0 13                                      movne r0, #1
00759a9c  01 00 20 e2                                      eor r0, r0, #1
00759aa0  70 00 ef e6                                      uxtb r0, r0
00759aa4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00759aa8, declared_size=20, range_size=20, mode=arm
; class-group: gameswf::bitmap_character
; alias: _ZN7gameswf16bitmap_character9get_boundEPNS_4rectE
; demangled: gameswf::bitmap_character::get_bound(gameswf::rect*)
; decoder-mode: arm
00759aa8  01 c0 a0 e1                                      mov ip, r1
00759aac  24 00 80 e2                                      add r0, r0, #0x24
00759ab0  0f 00 90 e8                                      ldm r0, {r0, r1, r2, r3}
00759ab4  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00759ab8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00759abc, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::bitmap_character
; alias: _ZN7gameswf16bitmap_character15get_bitmap_infoEv
; demangled: gameswf::bitmap_character::get_bitmap_info()
; decoder-mode: arm
00759abc  20 00 90 e5                                      ldr r0, [r0, #0x20]
00759ac0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0075aea0, declared_size=272, range_size=272, mode=arm
; class-group: gameswf::bitmap_character
; alias: _ZN7gameswf16bitmap_character7displayEPNS_9characterE
; demangled: gameswf::bitmap_character::display(gameswf::character*)
; decoder-mode: arm
0075aea0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0075aea4  00 20 a0 e3                                      mov r2, #0
0075aea8  6c d0 4d e2                                      sub sp, sp, #0x6c
0075aeac  fe 35 a0 e3                                      mov r3, #0x3f800000
0075aeb0  00 50 a0 e1                                      mov r5, r0
0075aeb4  01 00 a0 e1                                      mov r0, r1
0075aeb8  01 40 a0 e1                                      mov r4, r1
0075aebc  54 20 8d e5                                      str r2, [sp, #0x54]
0075aec0  58 30 8d e5                                      str r3, [sp, #0x58]
0075aec4  4c 20 8d e5                                      str r2, [sp, #0x4c]
0075aec8  50 30 8d e5                                      str r3, [sp, #0x50]
0075aecc  fb e3 ff eb                                      bl #0x753ec0
0075aed0  14 c0 8d e2                                      add ip, sp, #0x14
0075aed4  00 e0 a0 e1                                      mov lr, r0
0075aed8  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
0075aedc  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0075aee0  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
0075aee4  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0075aee8  00 30 e0 e3                                      mvn r3, #0
0075aeec  63 30 cd e5                                      strb r3, [sp, #0x63]
0075aef0  60 30 cd e5                                      strb r3, [sp, #0x60]
0075aef4  61 30 cd e5                                      strb r3, [sp, #0x61]
0075aef8  62 30 cd e5                                      strb r3, [sp, #0x62]
0075aefc  60 10 9d e5                                      ldr r1, [sp, #0x60]
0075af00  14 00 8d e2                                      add r0, sp, #0x14
0075af04  20 e8 00 eb                                      bl #0x794f8c
0075af08  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0075af0c  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0075af10  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0075af14  09 10 cd e5                                      strb r1, [sp, #9]
0075af18  0a 20 cd e5                                      strb r2, [sp, #0xa]
0075af1c  08 00 cd e5                                      strb r0, [sp, #8]
0075af20  0b 30 cd e5                                      strb r3, [sp, #0xb]
0075af24  08 30 9d e5                                      ldr r3, [sp, #8]
0075af28  04 00 a0 e1                                      mov r0, r4
0075af2c  74 40 9f e5                                      ldr r4, [pc, #0x74]
0075af30  64 30 8d e5                                      str r3, [sp, #0x64]
0075af34  0e e4 ff eb                                      bl #0x753f74
0075af38  34 c0 8d e2                                      add ip, sp, #0x34
0075af3c  00 60 a0 e1                                      mov r6, r0
0075af40  0c 70 a0 e1                                      mov r7, ip
0075af44  0f 00 b6 e8                                      ldm r6!, {r0, r1, r2, r3}
0075af48  0f 00 a7 e8                                      stm r7!, {r0, r1, r2, r3}
0075af4c  58 20 9f e5                                      ldr r2, [pc, #0x58]
0075af50  04 40 8f e0                                      add r4, pc, r4
0075af54  04 10 96 e5                                      ldr r1, [r6, #4]
0075af58  02 20 94 e7                                      ldr r2, [r4, r2]
0075af5c  00 00 96 e5                                      ldr r0, [r6]
0075af60  64 60 9d e5                                      ldr r6, [sp, #0x64]
0075af64  00 40 92 e5                                      ldr r4, [r2]
0075af68  03 00 87 e8                                      stm r7, {r0, r1}
0075af6c  5c 60 8d e5                                      str r6, [sp, #0x5c]
0075af70  00 00 54 e3                                      cmp r4, #0
0075af74  20 20 95 e5                                      ldr r2, [r5, #0x20]
0075af78  08 00 00 0a                                      beq #0x75afa0
0075af7c  4c e0 8d e2                                      add lr, sp, #0x4c
0075af80  0c 10 a0 e1                                      mov r1, ip
0075af84  04 00 a0 e1                                      mov r0, r4
0075af88  00 c0 94 e5                                      ldr ip, [r4]
0075af8c  24 30 85 e2                                      add r3, r5, #0x24
0075af90  00 e0 8d e5                                      str lr, [sp]
0075af94  04 60 8d e5                                      str r6, [sp, #4]
0075af98  0f e0 a0 e1                                      mov lr, pc
0075af9c  80 f0 9c e5                                      ldr pc, [ip, #0x80]
0075afa0  6c d0 8d e2                                      add sp, sp, #0x6c
0075afa4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
0075afa8  40 9b 23 00 b4 39 00 00                          .byte 0x40, 0x9b, 0x23, 0x00, 0xb4, 0x39, 0x00, 0x00

; FUNCTION 0x0075df40, declared_size=92, range_size=92, mode=arm
; class-group: gameswf::bitmap_character
; alias: _ZN7gameswf16bitmap_characterD1Ev
; demangled: gameswf::bitmap_character::~bitmap_character()
; decoder-mode: arm
0075df40  70 40 2d e9                                      push {r4, r5, r6, lr}
0075df44  44 50 9f e5                                      ldr r5, [pc, #0x44]
0075df48  44 30 9f e5                                      ldr r3, [pc, #0x44]
0075df4c  00 40 a0 e1                                      mov r4, r0
0075df50  05 50 8f e0                                      add r5, pc, r5
0075df54  20 00 90 e5                                      ldr r0, [r0, #0x20]
0075df58  03 30 95 e7                                      ldr r3, [r5, r3]
0075df5c  00 00 50 e3                                      cmp r0, #0
0075df60  08 30 83 e2                                      add r3, r3, #8
0075df64  00 30 84 e5                                      str r3, [r4]
0075df68  00 00 00 0a                                      beq #0x75df70
0075df6c  b3 f0 ff eb                                      bl #0x75a240
0075df70  20 30 9f e5                                      ldr r3, [pc, #0x20]
0075df74  04 00 a0 e1                                      mov r0, r4
0075df78  03 30 95 e7                                      ldr r3, [r5, r3]
0075df7c  08 30 83 e2                                      add r3, r3, #8
0075df80  00 30 84 e5                                      str r3, [r4]
0075df84  bb ff ff eb                                      bl #0x75de78
0075df88  04 00 a0 e1                                      mov r0, r4
0075df8c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0075df90  40 6b 23 00 1c 0f 00 00 58 43 00 00              .byte 0x40, 0x6b, 0x23, 0x00, 0x1c, 0x0f, 0x00, 0x00, 0x58, 0x43, 0x00, 0x00

; FUNCTION 0x0075dfd8, declared_size=100, range_size=100, mode=arm
; class-group: gameswf::bitmap_character
; alias: _ZN7gameswf16bitmap_characterD0Ev
; demangled: gameswf::bitmap_character::~bitmap_character()
; decoder-mode: arm
0075dfd8  70 40 2d e9                                      push {r4, r5, r6, lr}
0075dfdc  4c 50 9f e5                                      ldr r5, [pc, #0x4c]
0075dfe0  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
0075dfe4  00 40 a0 e1                                      mov r4, r0
0075dfe8  05 50 8f e0                                      add r5, pc, r5
0075dfec  20 00 90 e5                                      ldr r0, [r0, #0x20]
0075dff0  03 30 95 e7                                      ldr r3, [r5, r3]
0075dff4  00 00 50 e3                                      cmp r0, #0
0075dff8  08 30 83 e2                                      add r3, r3, #8
0075dffc  00 30 84 e5                                      str r3, [r4]
0075e000  00 00 00 0a                                      beq #0x75e008
0075e004  8d f0 ff eb                                      bl #0x75a240
0075e008  28 30 9f e5                                      ldr r3, [pc, #0x28]
0075e00c  04 00 a0 e1                                      mov r0, r4
0075e010  03 30 95 e7                                      ldr r3, [r5, r3]
0075e014  08 30 83 e2                                      add r3, r3, #8
0075e018  00 30 84 e5                                      str r3, [r4]
0075e01c  95 ff ff eb                                      bl #0x75de78
0075e020  04 00 a0 e1                                      mov r0, r4
0075e024  a1 c0 ee eb                                      bl #0x30e2b0
0075e028  04 00 a0 e1                                      mov r0, r4
0075e02c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0075e030  a8 6a 23 00 1c 0f 00 00 58 43 00 00              .byte 0xa8, 0x6a, 0x23, 0x00, 0x1c, 0x0f, 0x00, 0x00, 0x58, 0x43, 0x00, 0x00

; FUNCTION 0x0075eaa4, declared_size=168, range_size=168, mode=arm
; class-group: gameswf::bitmap_character
; alias: _ZN7gameswf16bitmap_characterC1EPNS_6playerEPNS_11bitmap_infoEPNS_4rectE.clone.1
; demangled: gameswf::bitmap_character::bitmap_character(gameswf::player*, gameswf::bitmap_info*, gameswf::rect*) [clone .clone.1]
; decoder-mode: arm
0075eaa4  70 40 2d e9                                      push {r4, r5, r6, lr}
0075eaa8  94 40 9f e5                                      ldr r4, [pc, #0x94]
0075eaac  02 60 a0 e1                                      mov r6, r2
0075eab0  00 50 a0 e1                                      mov r5, r0
0075eab4  e2 ff ff eb                                      bl #0x75ea44
0075eab8  88 30 9f e5                                      ldr r3, [pc, #0x88]
0075eabc  04 40 8f e0                                      add r4, pc, r4
0075eac0  00 00 56 e3                                      cmp r6, #0
0075eac4  03 30 94 e7                                      ldr r3, [r4, r3]
0075eac8  20 60 85 e5                                      str r6, [r5, #0x20]
0075eacc  08 30 83 e2                                      add r3, r3, #8
0075ead0  00 30 85 e5                                      str r3, [r5]
0075ead4  01 00 00 0a                                      beq #0x75eae0
0075ead8  06 00 a0 e1                                      mov r0, r6
0075eadc  60 ec ff eb                                      bl #0x759c64
0075eae0  20 30 95 e5                                      ldr r3, [r5, #0x20]
0075eae4  00 20 a0 e3                                      mov r2, #0
0075eae8  24 20 85 e5                                      str r2, [r5, #0x24]
0075eaec  2c 20 85 e5                                      str r2, [r5, #0x2c]
0075eaf0  03 00 a0 e1                                      mov r0, r3
0075eaf4  00 30 93 e5                                      ldr r3, [r3]
0075eaf8  0f e0 a0 e1                                      mov lr, pc
0075eafc  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0075eb00  97 bf ee eb                                      bl #0x30e964
0075eb04  41 14 a0 e3                                      mov r1, #0x41000000
0075eb08  0a 16 81 e2                                      add r1, r1, #0xa00000
0075eb0c  96 c0 ee eb                                      bl #0x30ed6c
0075eb10  20 30 95 e5                                      ldr r3, [r5, #0x20]
0075eb14  28 00 85 e5                                      str r0, [r5, #0x28]
0075eb18  03 00 a0 e1                                      mov r0, r3
0075eb1c  00 30 93 e5                                      ldr r3, [r3]
0075eb20  0f e0 a0 e1                                      mov lr, pc
0075eb24  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0075eb28  8d bf ee eb                                      bl #0x30e964
0075eb2c  41 14 a0 e3                                      mov r1, #0x41000000
0075eb30  0a 16 81 e2                                      add r1, r1, #0xa00000
0075eb34  8c c0 ee eb                                      bl #0x30ed6c
0075eb38  30 00 85 e5                                      str r0, [r5, #0x30]
0075eb3c  05 00 a0 e1                                      mov r0, r5
0075eb40  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0075eb44  d4 5f 23 00 1c 0f 00 00                          .byte 0xd4, 0x5f, 0x23, 0x00, 0x1c, 0x0f, 0x00, 0x00

; FUNCTION 0x007ae1c8, declared_size=188, range_size=188, mode=arm
; class-group: gameswf::bitmap_character
; alias: _ZN7gameswf16bitmap_characterC1EPNS_6playerEPNS_11bitmap_infoEPNS_4rectE
; demangled: gameswf::bitmap_character::bitmap_character(gameswf::player*, gameswf::bitmap_info*, gameswf::rect*)
; decoder-mode: arm
007ae1c8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007ae1cc  a8 50 9f e5                                      ldr r5, [pc, #0xa8]
007ae1d0  02 60 a0 e1                                      mov r6, r2
007ae1d4  00 40 a0 e1                                      mov r4, r0
007ae1d8  03 70 a0 e1                                      mov r7, r3
007ae1dc  18 c2 fe eb                                      bl #0x75ea44
007ae1e0  98 30 9f e5                                      ldr r3, [pc, #0x98]
007ae1e4  05 50 8f e0                                      add r5, pc, r5
007ae1e8  00 00 56 e3                                      cmp r6, #0
007ae1ec  03 30 95 e7                                      ldr r3, [r5, r3]
007ae1f0  20 60 84 e5                                      str r6, [r4, #0x20]
007ae1f4  08 30 83 e2                                      add r3, r3, #8
007ae1f8  00 30 84 e5                                      str r3, [r4]
007ae1fc  01 00 00 0a                                      beq #0x7ae208
007ae200  06 00 a0 e1                                      mov r0, r6
007ae204  96 ae fe eb                                      bl #0x759c64
007ae208  20 30 94 e5                                      ldr r3, [r4, #0x20]
007ae20c  00 20 a0 e3                                      mov r2, #0
007ae210  24 20 84 e5                                      str r2, [r4, #0x24]
007ae214  2c 20 84 e5                                      str r2, [r4, #0x2c]
007ae218  03 00 a0 e1                                      mov r0, r3
007ae21c  00 30 93 e5                                      ldr r3, [r3]
007ae220  0f e0 a0 e1                                      mov lr, pc
007ae224  24 f0 93 e5                                      ldr pc, [r3, #0x24]
007ae228  cd 81 ed eb                                      bl #0x30e964
007ae22c  41 14 a0 e3                                      mov r1, #0x41000000
007ae230  0a 16 81 e2                                      add r1, r1, #0xa00000
007ae234  cc 82 ed eb                                      bl #0x30ed6c
007ae238  20 30 94 e5                                      ldr r3, [r4, #0x20]
007ae23c  28 00 84 e5                                      str r0, [r4, #0x28]
007ae240  03 00 a0 e1                                      mov r0, r3
007ae244  00 30 93 e5                                      ldr r3, [r3]
007ae248  0f e0 a0 e1                                      mov lr, pc
007ae24c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
007ae250  c3 81 ed eb                                      bl #0x30e964
007ae254  41 14 a0 e3                                      mov r1, #0x41000000
007ae258  0a 16 81 e2                                      add r1, r1, #0xa00000
007ae25c  c2 82 ed eb                                      bl #0x30ed6c
007ae260  00 00 57 e3                                      cmp r7, #0
007ae264  30 00 84 e5                                      str r0, [r4, #0x30]
007ae268  24 c0 84 12                                      addne ip, r4, #0x24
007ae26c  0f 00 97 18                                      ldmne r7, {r0, r1, r2, r3}
007ae270  0f 00 8c 18                                      stmne ip, {r0, r1, r2, r3}
007ae274  04 00 a0 e1                                      mov r0, r4
007ae278  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
007ae27c  ac 68 1e 00 1c 0f 00 00                          .byte 0xac, 0x68, 0x1e, 0x00, 0x1c, 0x0f, 0x00, 0x00
