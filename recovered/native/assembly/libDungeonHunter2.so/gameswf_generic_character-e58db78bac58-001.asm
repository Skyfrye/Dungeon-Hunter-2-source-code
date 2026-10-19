; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007599cc, declared_size=36, range_size=36, mode=arm
; class-group: gameswf::generic_character
; alias: _ZNK7gameswf17generic_character2isEi
; demangled: gameswf::generic_character::is(int) const
; decoder-mode: arm
007599cc  03 00 51 e3                                      cmp r1, #3
007599d0  04 00 00 0a                                      beq #0x7599e8
007599d4  01 00 51 e3                                      cmp r1, #1
007599d8  02 00 00 0a                                      beq #0x7599e8
007599dc  01 00 71 e2                                      rsbs r0, r1, #1
007599e0  00 00 a0 33                                      movlo r0, #0
007599e4  1e ff 2f e1                                      bx lr
007599e8  01 00 a0 e3                                      mov r0, #1
007599ec  1e ff 2f e1                                      bx lr

; FUNCTION 0x007599f0, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::generic_character
; alias: _ZN7gameswf17generic_character17get_character_defEv
; demangled: gameswf::generic_character::get_character_def()
; decoder-mode: arm
007599f0  a0 00 90 e5                                      ldr r0, [r0, #0xa0]
007599f4  1e ff 2f e1                                      bx lr

; FUNCTION 0x007599f8, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::generic_character
; alias: _ZN7gameswf17generic_character8hit_testEff
; demangled: gameswf::generic_character::hit_test(float, float)
; decoder-mode: arm
007599f8  10 40 2d e9                                      push {r4, lr}
007599fc  00 30 90 e5                                      ldr r3, [r0]
00759a00  0f e0 a0 e1                                      mov lr, pc
00759a04  68 f0 93 e5                                      ldr pc, [r3, #0x68]
00759a08  00 00 50 e2                                      subs r0, r0, #0
00759a0c  01 00 a0 13                                      movne r0, #1
00759a10  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0075b6fc, declared_size=96, range_size=96, mode=arm
; class-group: gameswf::generic_character
; alias: _ZN7gameswf17generic_character24get_topmost_mouse_entityEff
; demangled: gameswf::generic_character::get_topmost_mouse_entity(float, float)
; decoder-mode: arm
0075b6fc  10 40 2d e9                                      push {r4, lr}
0075b700  10 d0 4d e2                                      sub sp, sp, #0x10
0075b704  00 40 a0 e1                                      mov r4, r0
0075b708  00 30 a0 e3                                      mov r3, #0
0075b70c  4c 00 90 e5                                      ldr r0, [r0, #0x4c]
0075b710  00 10 8d e5                                      str r1, [sp]
0075b714  04 20 8d e5                                      str r2, [sp, #4]
0075b718  08 10 8d e2                                      add r1, sp, #8
0075b71c  0d 20 a0 e1                                      mov r2, sp
0075b720  0c 30 8d e5                                      str r3, [sp, #0xc]
0075b724  08 30 8d e5                                      str r3, [sp, #8]
0075b728  93 e1 ff eb                                      bl #0x753d7c
0075b72c  a0 30 94 e5                                      ldr r3, [r4, #0xa0]
0075b730  08 10 9d e5                                      ldr r1, [sp, #8]
0075b734  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0075b738  03 00 a0 e1                                      mov r0, r3
0075b73c  00 30 93 e5                                      ldr r3, [r3]
0075b740  0f e0 a0 e1                                      mov lr, pc
0075b744  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0075b748  00 00 50 e3                                      cmp r0, #0
0075b74c  04 00 a0 11                                      movne r0, r4
0075b750  00 00 a0 03                                      moveq r0, #0
0075b754  10 d0 8d e2                                      add sp, sp, #0x10
0075b758  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0075b75c, declared_size=108, range_size=108, mode=arm
; class-group: gameswf::generic_character
; alias: _ZN7gameswf17generic_characterC1EPNS_6playerEPNS_13character_defEPNS_9characterEi
; demangled: gameswf::generic_character::generic_character(gameswf::player*, gameswf::character_def*, gameswf::character*, int)
; decoder-mode: arm
0075b75c  70 40 2d e9                                      push {r4, r5, r6, lr}
0075b760  08 d0 4d e2                                      sub sp, sp, #8
0075b764  02 60 a0 e1                                      mov r6, r2
0075b768  03 c0 a0 e3                                      mov ip, #3
0075b76c  03 20 a0 e1                                      mov r2, r3
0075b770  48 50 9f e5                                      ldr r5, [pc, #0x48]
0075b774  18 30 9d e5                                      ldr r3, [sp, #0x18]
0075b778  00 40 a0 e1                                      mov r4, r0
0075b77c  00 c0 8d e5                                      str ip, [sp]
0075b780  e8 e4 ff eb                                      bl #0x754b28
0075b784  38 30 9f e5                                      ldr r3, [pc, #0x38]
0075b788  05 50 8f e0                                      add r5, pc, r5
0075b78c  00 00 56 e3                                      cmp r6, #0
0075b790  03 30 95 e7                                      ldr r3, [r5, r3]
0075b794  a0 60 84 e5                                      str r6, [r4, #0xa0]
0075b798  08 30 83 e2                                      add r3, r3, #8
0075b79c  00 30 84 e5                                      str r3, [r4]
0075b7a0  01 00 00 0a                                      beq #0x75b7ac
0075b7a4  06 00 a0 e1                                      mov r0, r6
0075b7a8  2d f9 ff eb                                      bl #0x759c64
0075b7ac  00 30 a0 e3                                      mov r3, #0
0075b7b0  9d 30 c4 e5                                      strb r3, [r4, #0x9d]
0075b7b4  04 00 a0 e1                                      mov r0, r4
0075b7b8  08 d0 8d e2                                      add sp, sp, #8
0075b7bc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0075b7c0  08 93 23 00 48 22 00 00                          .byte 0x08, 0x93, 0x23, 0x00, 0x48, 0x22, 0x00, 0x00

; FUNCTION 0x0075b7c8, declared_size=72, range_size=72, mode=arm
; class-group: gameswf::generic_character
; alias: _ZN7gameswf17generic_character7displayEv
; demangled: gameswf::generic_character::display()
; decoder-mode: arm
0075b7c8  10 40 2d e9                                      push {r4, lr}
0075b7cc  a0 30 90 e5                                      ldr r3, [r0, #0xa0]
0075b7d0  00 40 a0 e1                                      mov r4, r0
0075b7d4  00 10 a0 e1                                      mov r1, r0
0075b7d8  03 00 a0 e1                                      mov r0, r3
0075b7dc  00 30 93 e5                                      ldr r3, [r3]
0075b7e0  0f e0 a0 e1                                      mov lr, pc
0075b7e4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0075b7e8  54 30 94 e5                                      ldr r3, [r4, #0x54]
0075b7ec  00 00 53 e3                                      cmp r3, #0
0075b7f0  05 00 00 0a                                      beq #0x75b80c
0075b7f4  60 30 93 e5                                      ldr r3, [r3, #0x60]
0075b7f8  00 00 53 e3                                      cmp r3, #0
0075b7fc  02 00 00 0a                                      beq #0x75b80c
0075b800  04 00 a0 e1                                      mov r0, r4
0075b804  10 40 bd e8                                      pop {r4, lr}
0075b808  e3 e1 ff ea                                      b #0x753f9c
0075b80c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0075dde0, declared_size=72, range_size=72, mode=arm
; class-group: gameswf::generic_character
; alias: _ZN7gameswf17generic_characterD1Ev
; demangled: gameswf::generic_character::~generic_character()
; decoder-mode: arm
0075dde0  10 40 2d e9                                      push {r4, lr}
0075dde4  34 30 9f e5                                      ldr r3, [pc, #0x34]
0075dde8  34 20 9f e5                                      ldr r2, [pc, #0x34]
0075ddec  00 40 a0 e1                                      mov r4, r0
0075ddf0  03 30 8f e0                                      add r3, pc, r3
0075ddf4  a0 00 90 e5                                      ldr r0, [r0, #0xa0]
0075ddf8  02 20 93 e7                                      ldr r2, [r3, r2]
0075ddfc  00 00 50 e3                                      cmp r0, #0
0075de00  08 20 82 e2                                      add r2, r2, #8
0075de04  00 20 84 e5                                      str r2, [r4]
0075de08  00 00 00 0a                                      beq #0x75de10
0075de0c  0b f1 ff eb                                      bl #0x75a240
0075de10  04 00 a0 e1                                      mov r0, r4
0075de14  d6 ff ff eb                                      bl #0x75dd74
0075de18  04 00 a0 e1                                      mov r0, r4
0075de1c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0075de20  a0 6c 23 00 48 22 00 00                          .byte 0xa0, 0x6c, 0x23, 0x00, 0x48, 0x22, 0x00, 0x00

; FUNCTION 0x0075de28, declared_size=80, range_size=80, mode=arm
; class-group: gameswf::generic_character
; alias: _ZN7gameswf17generic_characterD0Ev
; demangled: gameswf::generic_character::~generic_character()
; decoder-mode: arm
0075de28  10 40 2d e9                                      push {r4, lr}
0075de2c  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0075de30  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0075de34  00 40 a0 e1                                      mov r4, r0
0075de38  03 30 8f e0                                      add r3, pc, r3
0075de3c  a0 00 90 e5                                      ldr r0, [r0, #0xa0]
0075de40  02 20 93 e7                                      ldr r2, [r3, r2]
0075de44  00 00 50 e3                                      cmp r0, #0
0075de48  08 20 82 e2                                      add r2, r2, #8
0075de4c  00 20 84 e5                                      str r2, [r4]
0075de50  00 00 00 0a                                      beq #0x75de58
0075de54  f9 f0 ff eb                                      bl #0x75a240
0075de58  04 00 a0 e1                                      mov r0, r4
0075de5c  c4 ff ff eb                                      bl #0x75dd74
0075de60  04 00 a0 e1                                      mov r0, r4
0075de64  11 c1 ee eb                                      bl #0x30e2b0
0075de68  04 00 a0 e1                                      mov r0, r4
0075de6c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0075de70  58 6c 23 00 48 22 00 00                          .byte 0x58, 0x6c, 0x23, 0x00, 0x48, 0x22, 0x00, 0x00
