; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007c732c, declared_size=404, range_size=404, mode=arm
; class-group: gameswf::button_character_definition::sound_info
; alias: _ZN7gameswf27button_character_definition10sound_info4readEPNS_6streamE
; demangled: gameswf::button_character_definition::sound_info::read(gameswf::stream*)
; decoder-mode: arm
007c732c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007c7330  00 30 a0 e3                                      mov r3, #0
007c7334  01 50 a0 e1                                      mov r5, r1
007c7338  08 30 80 e5                                      str r3, [r0, #8]
007c733c  b0 31 c0 e1                                      strh r3, [r0, #0x10]
007c7340  0c 30 80 e5                                      str r3, [r0, #0xc]
007c7344  00 40 a0 e1                                      mov r4, r0
007c7348  02 10 a0 e3                                      mov r1, #2
007c734c  05 00 a0 e1                                      mov r0, r5
007c7350  93 f1 fe eb                                      bl #0x7839a4
007c7354  01 10 a0 e3                                      mov r1, #1
007c7358  05 00 a0 e1                                      mov r0, r5
007c735c  90 f1 fe eb                                      bl #0x7839a4
007c7360  00 00 50 e2                                      subs r0, r0, #0
007c7364  01 00 a0 13                                      movne r0, #1
007c7368  01 00 c4 e5                                      strb r0, [r4, #1]
007c736c  01 10 a0 e3                                      mov r1, #1
007c7370  05 00 a0 e1                                      mov r0, r5
007c7374  8a f1 fe eb                                      bl #0x7839a4
007c7378  00 00 50 e2                                      subs r0, r0, #0
007c737c  01 00 a0 13                                      movne r0, #1
007c7380  00 00 c4 e5                                      strb r0, [r4]
007c7384  01 10 a0 e3                                      mov r1, #1
007c7388  05 00 a0 e1                                      mov r0, r5
007c738c  84 f1 fe eb                                      bl #0x7839a4
007c7390  00 00 50 e2                                      subs r0, r0, #0
007c7394  01 00 a0 13                                      movne r0, #1
007c7398  02 00 c4 e5                                      strb r0, [r4, #2]
007c739c  01 10 a0 e3                                      mov r1, #1
007c73a0  05 00 a0 e1                                      mov r0, r5
007c73a4  7e f1 fe eb                                      bl #0x7839a4
007c73a8  00 00 50 e2                                      subs r0, r0, #0
007c73ac  01 00 a0 13                                      movne r0, #1
007c73b0  03 00 c4 e5                                      strb r0, [r4, #3]
007c73b4  01 10 a0 e3                                      mov r1, #1
007c73b8  05 00 a0 e1                                      mov r0, r5
007c73bc  78 f1 fe eb                                      bl #0x7839a4
007c73c0  00 00 50 e2                                      subs r0, r0, #0
007c73c4  01 00 a0 13                                      movne r0, #1
007c73c8  04 00 c4 e5                                      strb r0, [r4, #4]
007c73cc  01 10 a0 e3                                      mov r1, #1
007c73d0  05 00 a0 e1                                      mov r0, r5
007c73d4  72 f1 fe eb                                      bl #0x7839a4
007c73d8  00 00 50 e2                                      subs r0, r0, #0
007c73dc  01 00 a0 13                                      movne r0, #1
007c73e0  00 00 50 e3                                      cmp r0, #0
007c73e4  05 00 c4 e5                                      strb r0, [r4, #5]
007c73e8  30 00 00 1a                                      bne #0x7c74b0
007c73ec  04 30 d4 e5                                      ldrb r3, [r4, #4]
007c73f0  00 00 53 e3                                      cmp r3, #0
007c73f4  29 00 00 1a                                      bne #0x7c74a0
007c73f8  03 30 d4 e5                                      ldrb r3, [r4, #3]
007c73fc  00 00 53 e3                                      cmp r3, #0
007c7400  22 00 00 1a                                      bne #0x7c7490
007c7404  02 10 d4 e5                                      ldrb r1, [r4, #2]
007c7408  00 00 51 e3                                      cmp r1, #0
007c740c  1c 00 00 0a                                      beq #0x7c7484
007c7410  05 00 a0 e1                                      mov r0, r5
007c7414  c3 f1 fe eb                                      bl #0x783b28
007c7418  00 60 a0 e1                                      mov r6, r0
007c741c  00 10 a0 e1                                      mov r1, r0
007c7420  14 00 84 e2                                      add r0, r4, #0x14
007c7424  24 d6 fe eb                                      bl #0x77ccbc
007c7428  00 00 56 e3                                      cmp r6, #0
007c742c  13 00 00 0a                                      beq #0x7c7480
007c7430  00 70 a0 e3                                      mov r7, #0
007c7434  05 00 a0 e1                                      mov r0, r5
007c7438  14 80 94 e5                                      ldr r8, [r4, #0x14]
007c743c  b6 f2 fe eb                                      bl #0x783f1c
007c7440  87 01 88 e7                                      str r0, [r8, r7, lsl #3]
007c7444  05 00 a0 e1                                      mov r0, r5
007c7448  14 a0 94 e5                                      ldr sl, [r4, #0x14]
007c744c  f0 f1 fe eb                                      bl #0x783c14
007c7450  87 81 a0 e1                                      lsl r8, r7, #3
007c7454  08 a0 8a e0                                      add sl, sl, r8
007c7458  b4 00 ca e1                                      strh r0, [sl, #4]
007c745c  14 30 94 e5                                      ldr r3, [r4, #0x14]
007c7460  05 00 a0 e1                                      mov r0, r5
007c7464  01 70 87 e2                                      add r7, r7, #1
007c7468  08 80 83 e0                                      add r8, r3, r8
007c746c  e8 f1 fe eb                                      bl #0x783c14
007c7470  07 00 56 e1                                      cmp r6, r7
007c7474  b6 00 c8 e1                                      strh r0, [r8, #6]
007c7478  ed ff ff ca                                      bgt #0x7c7434
007c747c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007c7480  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007c7484  14 00 84 e2                                      add r0, r4, #0x14
007c7488  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
007c748c  0a d6 fe ea                                      b #0x77ccbc
007c7490  05 00 a0 e1                                      mov r0, r5
007c7494  de f1 fe eb                                      bl #0x783c14
007c7498  b0 01 c4 e1                                      strh r0, [r4, #0x10]
007c749c  d8 ff ff ea                                      b #0x7c7404
007c74a0  05 00 a0 e1                                      mov r0, r5
007c74a4  9c f2 fe eb                                      bl #0x783f1c
007c74a8  0c 00 84 e5                                      str r0, [r4, #0xc]
007c74ac  d1 ff ff ea                                      b #0x7c73f8
007c74b0  05 00 a0 e1                                      mov r0, r5
007c74b4  98 f2 fe eb                                      bl #0x783f1c
007c74b8  08 00 84 e5                                      str r0, [r4, #8]
007c74bc  ca ff ff ea                                      b #0x7c73ec
