; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00759b14, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::place_object_2
; alias: _ZNK7gameswf14place_object_29get_depthEv
; demangled: gameswf::place_object_2::get_depth() const
; decoder-mode: arm
00759b14  bc 00 d0 e1                                      ldrh r0, [r0, #0xc]
00759b18  1e ff 2f e1                                      bx lr

; FUNCTION 0x00759b1c, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::place_object_2
; alias: _ZNK7gameswf14place_object_212is_place_tagEv
; demangled: gameswf::place_object_2::is_place_tag() const
; decoder-mode: arm
00759b1c  01 00 a0 e3                                      mov r0, #1
00759b20  1e ff 2f e1                                      bx lr

; FUNCTION 0x00759de4, declared_size=20, range_size=20, mode=arm
; class-group: gameswf::place_object_2
; alias: _ZN7gameswf14place_object_213execute_stateEPNS_9characterE
; demangled: gameswf::place_object_2::execute_state(gameswf::character*)
; decoder-mode: arm
00759de4  10 40 2d e9                                      push {r4, lr}
00759de8  00 30 90 e5                                      ldr r3, [r0]
00759dec  0f e0 a0 e1                                      mov lr, pc
00759df0  08 f0 93 e5                                      ldr pc, [r3, #8]
00759df4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00759df8, declared_size=48, range_size=48, mode=arm
; class-group: gameswf::place_object_2
; alias: _ZNK7gameswf14place_object_234get_depth_id_of_replace_or_add_tagEv
; demangled: gameswf::place_object_2::get_depth_id_of_replace_or_add_tag() const
; decoder-mode: arm
00759df8  09 30 d0 e5                                      ldrb r3, [r0, #9]
00759dfc  00 00 53 e3                                      cmp r3, #0
00759e00  02 00 53 13                                      cmpne r3, #2
00759e04  00 00 e0 13                                      mvnne r0, #0
00759e08  1e ff 2f 11                                      bxne lr
00759e0c  b2 31 d0 e1                                      ldrh r3, [r0, #0x12]
00759e10  04 00 53 e3                                      cmp r3, #4
00759e14  be 20 d0 01                                      ldrheq r2, [r0, #0xe]
00759e18  bc 30 d0 e1                                      ldrh r3, [r0, #0xc]
00759e1c  ff 2f 0f 13                                      movwne r2, #0xffff
00759e20  03 08 82 e1                                      orr r0, r2, r3, lsl #16
00759e24  1e ff 2f e1                                      bx lr

; FUNCTION 0x0075a648, declared_size=344, range_size=344, mode=arm
; class-group: gameswf::place_object_2
; alias: _ZN7gameswf14place_object_221execute_state_reverseEPNS_9characterEi
; demangled: gameswf::place_object_2::execute_state_reverse(gameswf::character*, int)
; decoder-mode: arm
0075a648  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0075a64c  00 40 a0 e1                                      mov r4, r0
0075a650  09 00 d0 e5                                      ldrb r0, [r0, #9]
0075a654  34 31 9f e5                                      ldr r3, [pc, #0x134]
0075a658  10 d0 4d e2                                      sub sp, sp, #0x10
0075a65c  01 00 50 e3                                      cmp r0, #1
0075a660  01 50 a0 e1                                      mov r5, r1
0075a664  03 30 8f e0                                      add r3, pc, r3
0075a668  02 60 a0 e1                                      mov r6, r2
0075a66c  0e 00 00 0a                                      beq #0x75a6ac
0075a670  03 00 00 3a                                      blo #0x75a684
0075a674  02 00 50 e3                                      cmp r0, #2
0075a678  29 00 00 0a                                      beq #0x75a724
0075a67c  10 d0 8d e2                                      add sp, sp, #0x10
0075a680  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0075a684  b2 21 d4 e1                                      ldrh r2, [r4, #0x12]
0075a688  00 30 91 e5                                      ldr r3, [r1]
0075a68c  05 00 a0 e1                                      mov r0, r5
0075a690  04 00 52 e3                                      cmp r2, #4
0075a694  bc 10 d4 e1                                      ldrh r1, [r4, #0xc]
0075a698  c4 30 93 e5                                      ldr r3, [r3, #0xc4]
0075a69c  00 20 e0 13                                      mvnne r2, #0
0075a6a0  be 20 d4 01                                      ldrheq r2, [r4, #0xe]
0075a6a4  33 ff 2f e1                                      blx r3
0075a6a8  f3 ff ff ea                                      b #0x75a67c
0075a6ac  14 80 94 e5                                      ldr r8, [r4, #0x14]
0075a6b0  00 20 91 e5                                      ldr r2, [r1]
0075a6b4  bc a0 d4 e1                                      ldrh sl, [r4, #0xc]
0075a6b8  00 00 58 e3                                      cmp r8, #0
0075a6bc  b8 60 92 e5                                      ldr r6, [r2, #0xb8]
0075a6c0  2f 00 00 0a                                      beq #0x75a784
0075a6c4  18 70 94 e5                                      ldr r7, [r4, #0x18]
0075a6c8  00 00 57 e3                                      cmp r7, #0
0075a6cc  29 00 00 0a                                      beq #0x75a778
0075a6d0  07 90 d4 e5                                      ldrb sb, [r4, #7]
0075a6d4  ba 00 d4 e1                                      ldrh r0, [r4, #0xa]
0075a6d8  00 00 59 e3                                      cmp sb, #0
0075a6dc  09 90 84 10                                      addne sb, r4, sb
0075a6e0  00 00 50 e3                                      cmp r0, #0
0075a6e4  00 00 a0 03                                      moveq r0, #0
0075a6e8  03 00 00 0a                                      beq #0x75a6fc
0075a6ec  fb ce ee eb                                      bl #0x30e2e0
0075a6f0  00 1f 0f e3                                      movw r1, #0xff00
0075a6f4  7f 17 44 e3                                      movt r1, #0x477f
0075a6f8  65 d1 ee eb                                      bl #0x30ec94
0075a6fc  b0 31 d4 e1                                      ldrh r3, [r4, #0x10]
0075a700  0a 10 a0 e1                                      mov r1, sl
0075a704  04 00 8d e5                                      str r0, [sp, #4]
0075a708  08 30 8d e5                                      str r3, [sp, #8]
0075a70c  00 90 8d e5                                      str sb, [sp]
0075a710  05 00 a0 e1                                      mov r0, r5
0075a714  08 20 a0 e1                                      mov r2, r8
0075a718  07 30 a0 e1                                      mov r3, r7
0075a71c  36 ff 2f e1                                      blx r6
0075a720  d5 ff ff ea                                      b #0x75a67c
0075a724  00 c0 91 e5                                      ldr ip, [r1]
0075a728  01 00 a0 e1                                      mov r0, r1
0075a72c  00 30 e0 e3                                      mvn r3, #0
0075a730  02 10 a0 e1                                      mov r1, r2
0075a734  bc 20 d4 e1                                      ldrh r2, [r4, #0xc]
0075a738  0f e0 a0 e1                                      mov lr, pc
0075a73c  a0 f0 9c e5                                      ldr pc, [ip, #0xa0]
0075a740  00 30 50 e2                                      subs r3, r0, #0
0075a744  04 00 00 0a                                      beq #0x75a75c
0075a748  00 30 93 e5                                      ldr r3, [r3]
0075a74c  05 10 a0 e1                                      mov r1, r5
0075a750  0f e0 a0 e1                                      mov lr, pc
0075a754  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0075a758  c7 ff ff ea                                      b #0x75a67c
0075a75c  30 00 9f e5                                      ldr r0, [pc, #0x30]
0075a760  bc 20 d4 e1                                      ldrh r2, [r4, #0xc]
0075a764  06 10 a0 e1                                      mov r1, r6
0075a768  00 00 8f e0                                      add r0, pc, r0
0075a76c  10 d0 8d e2                                      add sp, sp, #0x10
0075a770  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
0075a774  82 1a 00 ea                                      b #0x761184
0075a778  18 20 9f e5                                      ldr r2, [pc, #0x18]
0075a77c  02 70 93 e7                                      ldr r7, [r3, r2]
0075a780  d2 ff ff ea                                      b #0x75a6d0
0075a784  10 20 9f e5                                      ldr r2, [pc, #0x10]
0075a788  02 80 93 e7                                      ldr r8, [r3, r2]
0075a78c  cc ff ff ea                                      b #0x75a6c4
; mapping-symbol data/literal pool
0075a790  2c a4 23 00 b8 e2 1a 00 c8 40 00 00 84 34 00 00  .byte 0x2c, 0xa4, 0x23, 0x00, 0xb8, 0xe2, 0x1a, 0x00, 0xc8, 0x40, 0x00, 0x00, 0x84, 0x34, 0x00, 0x00

; FUNCTION 0x0075cb6c, declared_size=3376, range_size=3376, mode=arm
; class-group: gameswf::place_object_2
; alias: _ZN7gameswf14place_object_24readEPNS_6playerEPNS_6streamEiiPNS_20movie_definition_subE
; demangled: gameswf::place_object_2::read(gameswf::player*, gameswf::stream*, int, int, gameswf::movie_definition_sub*)
; decoder-mode: arm
0075cb6c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0075cb70  08 4d 9f e5                                      ldr r4, [pc, #0xd08]
0075cb74  08 cd 9f e5                                      ldr ip, [pc, #0xd08]
0075cb78  41 df 4d e2                                      sub sp, sp, #0x104
0075cb7c  04 40 8f e0                                      add r4, pc, r4
0075cb80  24 c0 8d e5                                      str ip, [sp, #0x24]
0075cb84  0c c0 94 e7                                      ldr ip, [r4, ip]
0075cb88  70 a0 8d e2                                      add sl, sp, #0x70
0075cb8c  08 e0 8a e2                                      add lr, sl, #8
0075cb90  00 50 9c e5                                      ldr r5, [ip]
0075cb94  1c 40 8d e5                                      str r4, [sp, #0x1c]
0075cb98  00 40 a0 e3                                      mov r4, #0
0075cb9c  fc 50 8d e5                                      str r5, [sp, #0xfc]
0075cba0  04 40 8e e4                                      str r4, [lr], #4
0075cba4  04 40 8e e4                                      str r4, [lr], #4
0075cba8  04 40 8e e4                                      str r4, [lr], #4
0075cbac  00 40 8e e5                                      str r4, [lr]
0075cbb0  f8 70 9d e5                                      ldr r7, [sp, #0xf8]
0075cbb4  02 50 a0 e1                                      mov r5, r2
0075cbb8  00 20 e0 e3                                      mvn r2, #0
0075cbbc  12 70 d7 e7                                      bfi r7, r2, #0, #0x18
0075cbc0  27 2c a0 e1                                      lsr r2, r7, #0x18
0075cbc4  fe c5 a0 e3                                      mov ip, #0x3f800000
0075cbc8  00 e0 a0 e3                                      mov lr, #0
0075cbcc  14 20 c0 e7                                      bfi r2, r4, #0, #1
0075cbd0  01 60 a0 e3                                      mov r6, #1
0075cbd4  04 00 55 e3                                      cmp r5, #4
0075cbd8  f8 70 8d e5                                      str r7, [sp, #0xf8]
0075cbdc  68 c0 8d e5                                      str ip, [sp, #0x68]
0075cbe0  6c e0 8d e5                                      str lr, [sp, #0x6c]
0075cbe4  fb 20 cd e5                                      strb r2, [sp, #0xfb]
0075cbe8  20 00 8d e5                                      str r0, [sp, #0x20]
0075cbec  0c 10 8d e5                                      str r1, [sp, #0xc]
0075cbf0  30 30 8d e5                                      str r3, [sp, #0x30]
0075cbf4  74 40 8d e5                                      str r4, [sp, #0x74]
0075cbf8  70 c0 8d e5                                      str ip, [sp, #0x70]
0075cbfc  80 c0 8d e5                                      str ip, [sp, #0x80]
0075cc00  50 c0 8d e5                                      str ip, [sp, #0x50]
0075cc04  58 c0 8d e5                                      str ip, [sp, #0x58]
0075cc08  60 c0 8d e5                                      str ip, [sp, #0x60]
0075cc0c  54 e0 8d e5                                      str lr, [sp, #0x54]
0075cc10  5c e0 8d e5                                      str lr, [sp, #0x5c]
0075cc14  64 e0 8d e5                                      str lr, [sp, #0x64]
0075cc18  88 40 8d e5                                      str r4, [sp, #0x88]
0075cc1c  8c 40 8d e5                                      str r4, [sp, #0x8c]
0075cc20  90 40 8d e5                                      str r4, [sp, #0x90]
0075cc24  94 40 8d e5                                      str r4, [sp, #0x94]
0075cc28  98 40 cd e5                                      strb r4, [sp, #0x98]
0075cc2c  e8 60 cd e5                                      strb r6, [sp, #0xe8]
0075cc30  e9 40 cd e5                                      strb r4, [sp, #0xe9]
0075cc34  28 71 9d e5                                      ldr r7, [sp, #0x128]
0075cc38  74 00 00 1a                                      bne #0x75ce10
0075cc3c  01 00 a0 e1                                      mov r0, r1
0075cc40  f3 9b 00 eb                                      bl #0x783c14
0075cc44  00 90 a0 e1                                      mov sb, r0
0075cc48  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0075cc4c  f0 9b 00 eb                                      bl #0x783c14
0075cc50  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0075cc54  00 50 a0 e1                                      mov r5, r0
0075cc58  0a 00 a0 e1                                      mov r0, sl
0075cc5c  5c e6 00 eb                                      bl #0x7965d4
0075cc60  34 60 87 e2                                      add r6, r7, #0x34
0075cc64  01 1c 8d e2                                      add r1, sp, #0x100
0075cc68  1c 50 21 e5                                      str r5, [r1, #-0x1c]!
0075cc6c  06 00 a0 e1                                      mov r0, r6
0075cc70  7c f4 ff eb                                      bl #0x759e68
0075cc74  00 00 50 e3                                      cmp r0, #0
0075cc78  34 30 97 a5                                      ldrge r3, [r7, #0x34]
0075cc7c  01 1c 8d e2                                      add r1, sp, #0x100
0075cc80  04 b0 a0 b1                                      movlt fp, r4
0075cc84  00 02 83 a0                                      addge r0, r3, r0, lsl #4
0075cc88  30 40 87 e2                                      add r4, r7, #0x30
0075cc8c  14 b0 90 a5                                      ldrge fp, [r0, #0x14]
0075cc90  20 50 21 e5                                      str r5, [r1, #-0x20]!
0075cc94  04 00 a0 e1                                      mov r0, r4
0075cc98  a2 f4 ff eb                                      bl #0x759f28
0075cc9c  00 00 50 e3                                      cmp r0, #0
0075cca0  30 30 97 a5                                      ldrge r3, [r7, #0x30]
0075cca4  00 70 a0 b3                                      movlt r7, #0
0075cca8  00 02 83 a0                                      addge r0, r3, r0, lsl #4
0075ccac  14 70 90 a5                                      ldrge r7, [r0, #0x14]
0075ccb0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0075ccb4  f0 9b 00 eb                                      bl #0x783c7c
0075ccb8  00 80 a0 e1                                      mov r8, r0
0075ccbc  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0075ccc0  fd 9b 00 eb                                      bl #0x783cbc
0075ccc4  00 00 58 e1                                      cmp r8, r0
0075ccc8  50 e0 8d a2                                      addge lr, sp, #0x50
0075cccc  08 e0 8d a5                                      strge lr, [sp, #8]
0075ccd0  f9 01 00 ba                                      blt #0x75d4bc
0075ccd4  00 10 a0 e3                                      mov r1, #0
0075ccd8  54 00 a0 e3                                      mov r0, #0x54
0075ccdc  ae d7 ff eb                                      bl #0x752b9c
0075cce0  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0075cce4  9c 2b 9f e5                                      ldr r2, [pc, #0xb9c]
0075cce8  00 30 a0 e3                                      mov r3, #0
0075ccec  b0 31 c0 e1                                      strh r3, [r0, #0x10]
0075ccf0  02 20 91 e7                                      ldr r2, [r1, r2]
0075ccf4  be 90 c0 e1                                      strh sb, [r0, #0xe]
0075ccf8  18 b0 80 e5                                      str fp, [r0, #0x18]
0075ccfc  08 20 82 e2                                      add r2, r2, #8
0075cd00  00 20 80 e5                                      str r2, [r0]
0075cd04  1c 20 a0 e3                                      mov r2, #0x1c
0075cd08  06 20 c0 e5                                      strb r2, [r0, #6]
0075cd0c  04 20 a0 e3                                      mov r2, #4
0075cd10  14 70 80 e5                                      str r7, [r0, #0x14]
0075cd14  05 30 c0 e5                                      strb r3, [r0, #5]
0075cd18  04 30 c0 e5                                      strb r3, [r0, #4]
0075cd1c  07 30 c0 e5                                      strb r3, [r0, #7]
0075cd20  08 30 c0 e5                                      strb r3, [r0, #8]
0075cd24  09 30 c0 e5                                      strb r3, [r0, #9]
0075cd28  ba 30 c0 e1                                      strh r3, [r0, #0xa]
0075cd2c  b2 21 c0 e1                                      strh r2, [r0, #0x12]
0075cd30  bc 50 c0 e1                                      strh r5, [r0, #0xc]
0075cd34  1c c0 80 e2                                      add ip, r0, #0x1c
0075cd38  00 80 a0 e1                                      mov r8, r0
0075cd3c  0f 00 ba e8                                      ldm sl!, {r0, r1, r2, r3}
0075cd40  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0075cd44  03 00 9a e8                                      ldm sl, {r0, r1}
0075cd48  34 30 a0 e3                                      mov r3, #0x34
0075cd4c  03 00 8c e8                                      stm ip, {r0, r1}
0075cd50  05 30 c8 e5                                      strb r3, [r8, #5]
0075cd54  08 e0 9d e5                                      ldr lr, [sp, #8]
0075cd58  03 c0 88 e0                                      add ip, r8, r3
0075cd5c  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
0075cd60  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0075cd64  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
0075cd68  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0075cd6c  dc 50 8d e5                                      str r5, [sp, #0xdc]
0075cd70  06 30 d8 e5                                      ldrb r3, [r8, #6]
0075cd74  06 00 a0 e1                                      mov r0, r6
0075cd78  dc 10 8d e2                                      add r1, sp, #0xdc
0075cd7c  00 00 53 e3                                      cmp r3, #0
0075cd80  03 30 88 10                                      addne r3, r8, r3
0075cd84  d8 20 8d e2                                      add r2, sp, #0xd8
0075cd88  d8 30 8d e5                                      str r3, [sp, #0xd8]
0075cd8c  15 fc ff eb                                      bl #0x75bde8
0075cd90  d4 50 8d e5                                      str r5, [sp, #0xd4]
0075cd94  05 30 d8 e5                                      ldrb r3, [r8, #5]
0075cd98  04 00 a0 e1                                      mov r0, r4
0075cd9c  d4 10 8d e2                                      add r1, sp, #0xd4
0075cda0  00 00 53 e3                                      cmp r3, #0
0075cda4  03 30 88 10                                      addne r3, r8, r3
0075cda8  d0 20 8d e2                                      add r2, sp, #0xd0
0075cdac  d0 30 8d e5                                      str r3, [sp, #0xd0]
0075cdb0  ea f7 ff eb                                      bl #0x75ad60
0075cdb4  88 30 8d e2                                      add r3, sp, #0x88
0075cdb8  2c 30 8d e5                                      str r3, [sp, #0x2c]
0075cdbc  d8 3e dd e1                                      ldrsb r3, [sp, #0xe8]
0075cdc0  01 00 73 e3                                      cmn r3, #1
0075cdc4  b8 01 00 0a                                      beq #0x75d4ac
0075cdc8  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
0075cdcc  00 10 a0 e3                                      mov r1, #0
0075cdd0  04 40 8c e2                                      add r4, ip, #4
0075cdd4  04 00 a0 e1                                      mov r0, r4
0075cdd8  3e e3 ff eb                                      bl #0x755ad8
0075cddc  04 00 a0 e1                                      mov r0, r4
0075cde0  00 10 a0 e3                                      mov r1, #0
0075cde4  37 d8 ff eb                                      bl #0x752ec8
0075cde8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0075cdec  24 10 9d e5                                      ldr r1, [sp, #0x24]
0075cdf0  08 00 a0 e1                                      mov r0, r8
0075cdf4  01 30 92 e7                                      ldr r3, [r2, r1]
0075cdf8  fc 20 9d e5                                      ldr r2, [sp, #0xfc]
0075cdfc  00 30 93 e5                                      ldr r3, [r3]
0075ce00  03 00 52 e1                                      cmp r2, r3
0075ce04  9c 02 00 1a                                      bne #0x75d87c
0075ce08  41 df 8d e2                                      add sp, sp, #0x104
0075ce0c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0075ce10  46 00 55 e3                                      cmp r5, #0x46
0075ce14  00 40 a0 13                                      movne r4, #0
0075ce18  01 40 a0 03                                      moveq r4, #1
0075ce1c  1a 00 55 e3                                      cmp r5, #0x1a
0075ce20  04 80 a0 11                                      movne r8, r4
0075ce24  01 80 84 03                                      orreq r8, r4, #1
0075ce28  00 00 58 e3                                      cmp r8, #0
0075ce2c  88 40 8d 02                                      addeq r4, sp, #0x88
0075ce30  2c 40 8d 05                                      streq r4, [sp, #0x2c]
0075ce34  e0 ff ff 0a                                      beq #0x75cdbc
0075ce38  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0075ce3c  35 9b 00 eb                                      bl #0x783b18
0075ce40  06 10 a0 e1                                      mov r1, r6
0075ce44  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0075ce48  d5 9a 00 eb                                      bl #0x7839a4
0075ce4c  00 00 50 e2                                      subs r0, r0, #0
0075ce50  01 00 a0 13                                      movne r0, #1
0075ce54  18 00 8d e5                                      str r0, [sp, #0x18]
0075ce58  06 10 a0 e1                                      mov r1, r6
0075ce5c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0075ce60  cf 9a 00 eb                                      bl #0x7839a4
0075ce64  06 10 a0 e1                                      mov r1, r6
0075ce68  10 00 8d e5                                      str r0, [sp, #0x10]
0075ce6c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0075ce70  cb 9a 00 eb                                      bl #0x7839a4
0075ce74  06 10 a0 e1                                      mov r1, r6
0075ce78  2c 00 8d e5                                      str r0, [sp, #0x2c]
0075ce7c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0075ce80  c7 9a 00 eb                                      bl #0x7839a4
0075ce84  06 10 a0 e1                                      mov r1, r6
0075ce88  08 00 8d e5                                      str r0, [sp, #8]
0075ce8c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0075ce90  c3 9a 00 eb                                      bl #0x7839a4
0075ce94  06 10 a0 e1                                      mov r1, r6
0075ce98  14 00 8d e5                                      str r0, [sp, #0x14]
0075ce9c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0075cea0  bf 9a 00 eb                                      bl #0x7839a4
0075cea4  06 10 a0 e1                                      mov r1, r6
0075cea8  00 b0 a0 e1                                      mov fp, r0
0075ceac  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0075ceb0  bb 9a 00 eb                                      bl #0x7839a4
0075ceb4  00 00 50 e2                                      subs r0, r0, #0
0075ceb8  01 00 a0 13                                      movne r0, #1
0075cebc  3c 00 8d e5                                      str r0, [sp, #0x3c]
0075cec0  06 10 a0 e1                                      mov r1, r6
0075cec4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0075cec8  b5 9a 00 eb                                      bl #0x7839a4
0075cecc  00 00 50 e2                                      subs r0, r0, #0
0075ced0  01 00 a0 13                                      movne r0, #1
0075ced4  00 00 54 e3                                      cmp r4, #0
0075ced8  04 80 a0 01                                      moveq r8, r4
0075cedc  40 00 8d e5                                      str r0, [sp, #0x40]
0075cee0  34 80 8d 05                                      streq r8, [sp, #0x34]
0075cee4  4c 02 00 1a                                      bne #0x75d81c
0075cee8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0075ceec  48 9b 00 eb                                      bl #0x783c14
0075cef0  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
0075cef4  00 90 a0 e1                                      mov sb, r0
0075cef8  00 00 5c e3                                      cmp ip, #0
0075cefc  48 c0 8d 05                                      streq ip, [sp, #0x48]
0075cf00  1b 02 00 1a                                      bne #0x75d774
0075cf04  00 00 5b e3                                      cmp fp, #0
0075cf08  39 02 00 1a                                      bne #0x75d7f4
0075cf0c  00 e0 e0 e3                                      mvn lr, #0
0075cf10  0b 40 a0 e1                                      mov r4, fp
0075cf14  38 e0 8d e5                                      str lr, [sp, #0x38]
0075cf18  0b 60 a0 e1                                      mov r6, fp
0075cf1c  14 10 9d e5                                      ldr r1, [sp, #0x14]
0075cf20  00 00 51 e3                                      cmp r1, #0
0075cf24  00 20 e0 03                                      mvneq r2, #0
0075cf28  06 b0 a0 01                                      moveq fp, r6
0075cf2c  28 20 8d 05                                      streq r2, [sp, #0x28]
0075cf30  28 02 00 1a                                      bne #0x75d7d8
0075cf34  08 30 9d e5                                      ldr r3, [sp, #8]
0075cf38  00 00 53 e3                                      cmp r3, #0
0075cf3c  21 02 00 1a                                      bne #0x75d7c8
0075cf40  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
0075cf44  00 00 5c e3                                      cmp ip, #0
0075cf48  0b 60 a0 01                                      moveq r6, fp
0075cf4c  00 b0 e0 03                                      mvneq fp, #0
0075cf50  16 02 00 1a                                      bne #0x75d7b0
0075cf54  10 e0 9d e5                                      ldr lr, [sp, #0x10]
0075cf58  00 00 5e e3                                      cmp lr, #0
0075cf5c  0f 02 00 1a                                      bne #0x75d7a0
0075cf60  00 00 58 e3                                      cmp r8, #0
0075cf64  59 01 00 1a                                      bne #0x75d4d0
0075cf68  34 00 9d e5                                      ldr r0, [sp, #0x34]
0075cf6c  00 00 50 e3                                      cmp r0, #0
0075cf70  00 10 e0 03                                      mvneq r1, #0
0075cf74  14 10 8d 05                                      streq r1, [sp, #0x14]
0075cf78  54 01 00 1a                                      bne #0x75d4d0
0075cf7c  18 20 9d e5                                      ldr r2, [sp, #0x18]
0075cf80  00 00 52 e3                                      cmp r2, #0
0075cf84  00 30 e0 03                                      mvneq r3, #0
0075cf88  4c 60 8d 15                                      strne r6, [sp, #0x4c]
0075cf8c  10 60 86 12                                      addne r6, r6, #0x10
0075cf90  44 60 8d 05                                      streq r6, [sp, #0x44]
0075cf94  4c 30 8d 05                                      streq r3, [sp, #0x4c]
0075cf98  44 60 8d 15                                      strne r6, [sp, #0x44]
0075cf9c  00 00 58 e3                                      cmp r8, #0
0075cfa0  88 40 8d 02                                      addeq r4, sp, #0x88
0075cfa4  2c 40 8d 05                                      streq r4, [sp, #0x2c]
0075cfa8  f6 01 00 1a                                      bne #0x75d788
0075cfac  34 e0 9d e5                                      ldr lr, [sp, #0x34]
0075cfb0  00 00 5e e3                                      cmp lr, #0
0075cfb4  ea 01 00 1a                                      bne #0x75d764
0075cfb8  01 1c 8d e2                                      add r1, sp, #0x100
0075cfbc  34 40 87 e2                                      add r4, r7, #0x34
0075cfc0  34 90 21 e5                                      str sb, [r1, #-0x34]!
0075cfc4  04 00 a0 e1                                      mov r0, r4
0075cfc8  a6 f3 ff eb                                      bl #0x759e68
0075cfcc  00 00 50 e3                                      cmp r0, #0
0075cfd0  34 30 97 a5                                      ldrge r3, [r7, #0x34]
0075cfd4  00 00 a0 b3                                      movlt r0, #0
0075cfd8  01 1c 8d e2                                      add r1, sp, #0x100
0075cfdc  00 32 83 a0                                      addge r3, r3, r0, lsl #4
0075cfe0  14 30 93 a5                                      ldrge r3, [r3, #0x14]
0075cfe4  30 60 87 e2                                      add r6, r7, #0x30
0075cfe8  34 00 8d b5                                      strlt r0, [sp, #0x34]
0075cfec  34 30 8d a5                                      strge r3, [sp, #0x34]
0075cff0  06 00 a0 e1                                      mov r0, r6
0075cff4  38 90 21 e5                                      str sb, [r1, #-0x38]!
0075cff8  ca f3 ff eb                                      bl #0x759f28
0075cffc  00 00 50 e3                                      cmp r0, #0
0075d000  30 30 97 a5                                      ldrge r3, [r7, #0x30]
0075d004  44 10 9d e5                                      ldr r1, [sp, #0x44]
0075d008  00 70 a0 b3                                      movlt r7, #0
0075d00c  00 32 83 a0                                      addge r3, r3, r0, lsl #4
0075d010  1c 00 81 e2                                      add r0, r1, #0x1c
0075d014  00 10 a0 e3                                      mov r1, #0
0075d018  14 70 93 a5                                      ldrge r7, [r3, #0x14]
0075d01c  de d6 ff eb                                      bl #0x752b9c
0075d020  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0075d024  5c 28 9f e5                                      ldr r2, [pc, #0x85c]
0075d028  38 30 9d e5                                      ldr r3, [sp, #0x38]
0075d02c  b2 51 c0 e1                                      strh r5, [r0, #0x12]
0075d030  02 20 9c e7                                      ldr r2, [ip, r2]
0075d034  00 00 53 e3                                      cmp r3, #0
0075d038  00 30 a0 e3                                      mov r3, #0
0075d03c  08 20 82 e2                                      add r2, r2, #8
0075d040  09 30 c0 e5                                      strb r3, [r0, #9]
0075d044  00 20 80 e5                                      str r2, [r0]
0075d048  48 e0 9d e5                                      ldr lr, [sp, #0x48]
0075d04c  00 80 a0 e1                                      mov r8, r0
0075d050  be e0 c0 e1                                      strh lr, [r0, #0xe]
0075d054  34 00 9d e5                                      ldr r0, [sp, #0x34]
0075d058  14 70 88 e5                                      str r7, [r8, #0x14]
0075d05c  18 00 88 e5                                      str r0, [r8, #0x18]
0075d060  10 10 9d e5                                      ldr r1, [sp, #0x10]
0075d064  b0 11 c8 e1                                      strh r1, [r8, #0x10]
0075d068  08 20 9d e5                                      ldr r2, [sp, #8]
0075d06c  04 30 c8 e5                                      strb r3, [r8, #4]
0075d070  05 30 c8 e5                                      strb r3, [r8, #5]
0075d074  ba 20 c8 e1                                      strh r2, [r8, #0xa]
0075d078  06 30 c8 e5                                      strb r3, [r8, #6]
0075d07c  07 30 c8 e5                                      strb r3, [r8, #7]
0075d080  08 30 c8 e5                                      strb r3, [r8, #8]
0075d084  bc 90 c8 e1                                      strh sb, [r8, #0xc]
0075d088  10 00 00 1a                                      bne #0x75d0d0
0075d08c  1c 30 a0 e3                                      mov r3, #0x1c
0075d090  06 30 c8 e5                                      strb r3, [r8, #6]
0075d094  03 c0 88 e0                                      add ip, r8, r3
0075d098  0f 00 ba e8                                      ldm sl!, {r0, r1, r2, r3}
0075d09c  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0075d0a0  03 00 9a e8                                      ldm sl, {r0, r1}
0075d0a4  c0 20 8d e2                                      add r2, sp, #0xc0
0075d0a8  03 00 8c e8                                      stm ip, {r0, r1}
0075d0ac  c4 90 8d e5                                      str sb, [sp, #0xc4]
0075d0b0  06 30 d8 e5                                      ldrb r3, [r8, #6]
0075d0b4  04 00 a0 e1                                      mov r0, r4
0075d0b8  c4 10 8d e2                                      add r1, sp, #0xc4
0075d0bc  00 00 53 e3                                      cmp r3, #0
0075d0c0  38 30 9d 05                                      ldreq r3, [sp, #0x38]
0075d0c4  03 30 88 10                                      addne r3, r8, r3
0075d0c8  c0 30 8d e5                                      str r3, [sp, #0xc0]
0075d0cc  45 fb ff eb                                      bl #0x75bde8
0075d0d0  28 30 9d e5                                      ldr r3, [sp, #0x28]
0075d0d4  01 00 73 e3                                      cmn r3, #1
0075d0d8  11 00 00 0a                                      beq #0x75d124
0075d0dc  1c e0 83 e2                                      add lr, r3, #0x1c
0075d0e0  7e e0 ef e6                                      uxtb lr, lr
0075d0e4  05 e0 c8 e5                                      strb lr, [r8, #5]
0075d0e8  50 c0 8d e2                                      add ip, sp, #0x50
0075d0ec  0e e0 88 e0                                      add lr, r8, lr
0075d0f0  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
0075d0f4  0f 00 ae e8                                      stm lr!, {r0, r1, r2, r3}
0075d0f8  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
0075d0fc  0f 00 8e e8                                      stm lr, {r0, r1, r2, r3}
0075d100  bc 90 8d e5                                      str sb, [sp, #0xbc]
0075d104  05 30 d8 e5                                      ldrb r3, [r8, #5]
0075d108  06 00 a0 e1                                      mov r0, r6
0075d10c  bc 10 8d e2                                      add r1, sp, #0xbc
0075d110  00 00 53 e3                                      cmp r3, #0
0075d114  03 30 88 10                                      addne r3, r8, r3
0075d118  b8 20 8d e2                                      add r2, sp, #0xb8
0075d11c  b8 30 8d e5                                      str r3, [sp, #0xb8]
0075d120  0e f7 ff eb                                      bl #0x75ad60
0075d124  01 00 7b e3                                      cmn fp, #1
0075d128  07 00 00 0a                                      beq #0x75d14c
0075d12c  1c 40 8b e2                                      add r4, fp, #0x1c
0075d130  74 40 ef e6                                      uxtb r4, r4
0075d134  04 40 c8 e5                                      strb r4, [r8, #4]
0075d138  20 c0 9d e5                                      ldr ip, [sp, #0x20]
0075d13c  e8 10 8d e2                                      add r1, sp, #0xe8
0075d140  2c 00 8c e2                                      add r0, ip, #0x2c
0075d144  60 fc ff eb                                      bl #0x75c2cc
0075d148  04 00 88 e7                                      str r0, [r8, r4]
0075d14c  14 e0 9d e5                                      ldr lr, [sp, #0x14]
0075d150  01 00 7e e3                                      cmn lr, #1
0075d154  28 00 00 0a                                      beq #0x75d1fc
0075d158  1c 10 8e e2                                      add r1, lr, #0x1c
0075d15c  71 10 ef e6                                      uxtb r1, r1
0075d160  00 30 a0 e3                                      mov r3, #0
0075d164  01 20 88 e0                                      add r2, r8, r1
0075d168  07 10 c8 e5                                      strb r1, [r8, #7]
0075d16c  01 30 88 e7                                      str r3, [r8, r1]
0075d170  10 30 c2 e5                                      strb r3, [r2, #0x10]
0075d174  04 30 82 e5                                      str r3, [r2, #4]
0075d178  08 30 82 e5                                      str r3, [r2, #8]
0075d17c  0c 30 82 e5                                      str r3, [r2, #0xc]
0075d180  07 30 d8 e5                                      ldrb r3, [r8, #7]
0075d184  88 20 9d e5                                      ldr r2, [sp, #0x88]
0075d188  00 00 53 e3                                      cmp r3, #0
0075d18c  03 30 88 10                                      addne r3, r8, r3
0075d190  00 20 83 e5                                      str r2, [r3]
0075d194  07 40 d8 e5                                      ldrb r4, [r8, #7]
0075d198  90 10 9d e5                                      ldr r1, [sp, #0x90]
0075d19c  00 00 54 e3                                      cmp r4, #0
0075d1a0  04 40 88 10                                      addne r4, r8, r4
0075d1a4  04 00 84 e2                                      add r0, r4, #4
0075d1a8  4a e2 ff eb                                      bl #0x755ad8
0075d1ac  08 30 94 e5                                      ldr r3, [r4, #8]
0075d1b0  00 00 53 e3                                      cmp r3, #0
0075d1b4  10 00 00 da                                      ble #0x75d1fc
0075d1b8  00 50 a0 e3                                      mov r5, #0
0075d1bc  05 60 a0 e1                                      mov r6, r5
0075d1c0  04 c0 94 e5                                      ldr ip, [r4, #4]
0075d1c4  8c e0 9d e5                                      ldr lr, [sp, #0x8c]
0075d1c8  01 60 86 e2                                      add r6, r6, #1
0075d1cc  05 c0 8c e0                                      add ip, ip, r5
0075d1d0  05 e0 8e e0                                      add lr, lr, r5
0075d1d4  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
0075d1d8  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0075d1dc  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
0075d1e0  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0075d1e4  07 00 9e e8                                      ldm lr, {r0, r1, r2}
0075d1e8  07 00 8c e8                                      stm ip, {r0, r1, r2}
0075d1ec  08 30 94 e5                                      ldr r3, [r4, #8]
0075d1f0  2c 50 85 e2                                      add r5, r5, #0x2c
0075d1f4  03 00 56 e1                                      cmp r6, r3
0075d1f8  f0 ff ff ba                                      blt #0x75d1c0
0075d1fc  18 00 9d e5                                      ldr r0, [sp, #0x18]
0075d200  00 00 50 e3                                      cmp r0, #0
0075d204  bd 00 00 0a                                      beq #0x75d500
0075d208  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
0075d20c  00 20 a0 e3                                      mov r2, #0
0075d210  1c 30 81 e2                                      add r3, r1, #0x1c
0075d214  73 30 ef e6                                      uxtb r3, r3
0075d218  00 00 53 e3                                      cmp r3, #0
0075d21c  08 30 c8 e5                                      strb r3, [r8, #8]
0075d220  03 30 88 10                                      addne r3, r8, r3
0075d224  0c 20 c3 e5                                      strb r2, [r3, #0xc]
0075d228  00 20 83 e5                                      str r2, [r3]
0075d22c  04 20 83 e5                                      str r2, [r3, #4]
0075d230  08 20 83 e5                                      str r2, [r3, #8]
0075d234  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0075d238  75 9a 00 eb                                      bl #0x783c14
0075d23c  30 20 9d e5                                      ldr r2, [sp, #0x30]
0075d240  05 00 52 e3                                      cmp r2, #5
0075d244  bc 00 00 ca                                      bgt #0x75d53c
0075d248  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0075d24c  70 9a 00 eb                                      bl #0x783c14
0075d250  34 36 9f e5                                      ldr r3, [pc, #0x634]
0075d254  34 26 9f e5                                      ldr r2, [pc, #0x634]
0075d258  14 80 8d e5                                      str r8, [sp, #0x14]
0075d25c  03 30 8f e0                                      add r3, pc, r3
0075d260  10 30 8d e5                                      str r3, [sp, #0x10]
0075d264  28 36 9f e5                                      ldr r3, [pc, #0x628]
0075d268  10 40 9d e5                                      ldr r4, [sp, #0x10]
0075d26c  02 20 8f e0                                      add r2, pc, r2
0075d270  03 30 8f e0                                      add r3, pc, r3
0075d274  24 30 83 e2                                      add r3, r3, #0x24
0075d278  20 40 84 e2                                      add r4, r4, #0x20
0075d27c  34 20 8d e5                                      str r2, [sp, #0x34]
0075d280  38 40 8d e5                                      str r4, [sp, #0x38]
0075d284  03 90 a0 e1                                      mov sb, r3
0075d288  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0075d28c  21 9a 00 eb                                      bl #0x783b18
0075d290  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0075d294  78 9a 00 eb                                      bl #0x783c7c
0075d298  30 c0 9d e5                                      ldr ip, [sp, #0x30]
0075d29c  00 50 a0 e1                                      mov r5, r0
0075d2a0  05 00 5c e3                                      cmp ip, #5
0075d2a4  7c 00 00 da                                      ble #0x75d49c
0075d2a8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0075d2ac  1a 9b 00 eb                                      bl #0x783f1c
0075d2b0  00 80 a0 e1                                      mov r8, r0
0075d2b4  00 00 58 e3                                      cmp r8, #0
0075d2b8  55 01 00 0a                                      beq #0x75d814
0075d2bc  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0075d2c0  15 9b 00 eb                                      bl #0x783f1c
0075d2c4  02 38 18 e2                                      ands r3, r8, #0x20000
0075d2c8  00 40 a0 e1                                      mov r4, r0
0075d2cc  28 30 8d 05                                      streq r3, [sp, #0x28]
0075d2d0  b3 00 00 1a                                      bne #0x75d5a4
0075d2d4  ac e0 8d e2                                      add lr, sp, #0xac
0075d2d8  0e 00 a0 e1                                      mov r0, lr
0075d2dc  18 e0 8d e5                                      str lr, [sp, #0x18]
0075d2e0  c8 76 01 eb                                      bl #0x7bae08
0075d2e4  18 00 9d e5                                      ldr r0, [sp, #0x18]
0075d2e8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0075d2ec  2c 77 01 eb                                      bl #0x7bafa4
0075d2f0  ac 30 9d e5                                      ldr r3, [sp, #0xac]
0075d2f4  b4 50 8d e5                                      str r5, [sp, #0xb4]
0075d2f8  00 20 93 e5                                      ldr r2, [r3]
0075d2fc  02 00 54 e1                                      cmp r4, r2
0075d300  75 00 00 1a                                      bne #0x75d4dc
0075d304  10 00 9d e5                                      ldr r0, [sp, #0x10]
0075d308  20 40 90 e5                                      ldr r4, [r0, #0x20]
0075d30c  01 40 14 e2                                      ands r4, r4, #1
0075d310  ac 00 00 0a                                      beq #0x75d5c8
0075d314  02 07 58 e3                                      cmp r8, #0x80000
0075d318  a6 00 00 8a                                      bhi #0x75d5b8
0075d31c  00 50 a0 e3                                      mov r5, #0
0075d320  9c e0 8d e2                                      add lr, sp, #0x9c
0075d324  01 70 a0 e3                                      mov r7, #1
0075d328  05 40 a0 e1                                      mov r4, r5
0075d32c  08 e0 8d e5                                      str lr, [sp, #8]
0075d330  03 00 00 ea                                      b #0x75d344
0075d334  01 50 85 e2                                      add r5, r5, #1
0075d338  13 00 55 e3                                      cmp r5, #0x13
0075d33c  4a 00 00 0a                                      beq #0x75d46c
0075d340  87 70 a0 e1                                      lsl r7, r7, #1
0075d344  08 00 17 e1                                      tst r7, r8
0075d348  f9 ff ff 0a                                      beq #0x75d334
0075d34c  00 10 a0 e3                                      mov r1, #0
0075d350  14 00 a0 e3                                      mov r0, #0x14
0075d354  13 d6 ff eb                                      bl #0x752ba8
0075d358  00 40 c0 e5                                      strb r4, [r0]
0075d35c  01 40 c0 e5                                      strb r4, [r0, #1]
0075d360  00 60 a0 e1                                      mov r6, r0
0075d364  00 00 a0 e3                                      mov r0, #0
0075d368  b2 00 c6 e1                                      strh r0, [r6, #2]
0075d36c  04 40 86 e5                                      str r4, [r6, #4]
0075d370  08 40 c6 e5                                      strb r4, [r6, #8]
0075d374  09 40 c6 e5                                      strb r4, [r6, #9]
0075d378  85 21 99 e7                                      ldr r2, [sb, r5, lsl #3]
0075d37c  85 31 89 e0                                      add r3, sb, r5, lsl #3
0075d380  11 00 55 e3                                      cmp r5, #0x11
0075d384  00 20 86 e5                                      str r2, [r6]
0075d388  04 30 93 e5                                      ldr r3, [r3, #4]
0075d38c  7c 00 a0 e3                                      mov r0, #0x7c
0075d390  04 30 86 e5                                      str r3, [r6, #4]
0075d394  28 10 9d 05                                      ldreq r1, [sp, #0x28]
0075d398  01 10 c6 05                                      strbeq r1, [r6, #1]
0075d39c  04 10 a0 e1                                      mov r1, r4
0075d3a0  9c 40 8d e5                                      str r4, [sp, #0x9c]
0075d3a4  a0 40 8d e5                                      str r4, [sp, #0xa0]
0075d3a8  a4 40 8d e5                                      str r4, [sp, #0xa4]
0075d3ac  a8 40 cd e5                                      strb r4, [sp, #0xa8]
0075d3b0  fc d5 ff eb                                      bl #0x752ba8
0075d3b4  08 c0 9d e5                                      ldr ip, [sp, #8]
0075d3b8  18 20 9d e5                                      ldr r2, [sp, #0x18]
0075d3bc  20 10 9d e5                                      ldr r1, [sp, #0x20]
0075d3c0  04 30 a0 e1                                      mov r3, r4
0075d3c4  00 a0 a0 e1                                      mov sl, r0
0075d3c8  00 c0 8d e5                                      str ip, [sp]
0075d3cc  99 d6 01 eb                                      bl #0x7d2e38
0075d3d0  ac 30 9d e5                                      ldr r3, [sp, #0xac]
0075d3d4  08 00 86 e2                                      add r0, r6, #8
0075d3d8  0a 10 a0 e1                                      mov r1, sl
0075d3dc  00 30 93 e5                                      ldr r3, [r3]
0075d3e0  5c 30 8a e5                                      str r3, [sl, #0x5c]
0075d3e4  99 e7 00 eb                                      bl #0x797250
0075d3e8  14 e0 9d e5                                      ldr lr, [sp, #0x14]
0075d3ec  08 a0 de e5                                      ldrb sl, [lr, #8]
0075d3f0  00 00 5a e3                                      cmp sl, #0
0075d3f4  14 00 9d 15                                      ldrne r0, [sp, #0x14]
0075d3f8  04 a0 a0 01                                      moveq sl, r4
0075d3fc  0a a0 80 10                                      addne sl, r0, sl
0075d400  04 30 9a e5                                      ldr r3, [sl, #4]
0075d404  08 20 9a e5                                      ldr r2, [sl, #8]
0075d408  01 b0 83 e2                                      add fp, r3, #1
0075d40c  02 00 5b e1                                      cmp fp, r2
0075d410  4c 00 00 ca                                      bgt #0x75d548
0075d414  00 20 9a e5                                      ldr r2, [sl]
0075d418  03 61 82 e7                                      str r6, [r2, r3, lsl #2]
0075d41c  04 b0 8a e5                                      str fp, [sl, #4]
0075d420  a0 60 9d e5                                      ldr r6, [sp, #0xa0]
0075d424  00 00 56 e3                                      cmp r6, #0
0075d428  4f 00 00 da                                      ble #0x75d56c
0075d42c  00 a0 a0 e3                                      mov sl, #0
0075d430  9c 30 9d e5                                      ldr r3, [sp, #0x9c]
0075d434  8a 01 93 e7                                      ldr r0, [r3, sl, lsl #3]
0075d438  00 00 50 e3                                      cmp r0, #0
0075d43c  00 00 00 0a                                      beq #0x75d444
0075d440  7e f3 ff eb                                      bl #0x75a240
0075d444  01 a0 8a e2                                      add sl, sl, #1
0075d448  06 00 5a e1                                      cmp sl, r6
0075d44c  f7 ff ff 1a                                      bne #0x75d430
0075d450  08 00 9d e5                                      ldr r0, [sp, #8]
0075d454  04 10 a0 e1                                      mov r1, r4
0075d458  a0 40 8d e5                                      str r4, [sp, #0xa0]
0075d45c  ac f3 ff eb                                      bl #0x75a314
0075d460  01 50 85 e2                                      add r5, r5, #1
0075d464  13 00 55 e3                                      cmp r5, #0x13
0075d468  b4 ff ff 1a                                      bne #0x75d340
0075d46c  ac 00 9d e5                                      ldr r0, [sp, #0xac]
0075d470  00 00 50 e3                                      cmp r0, #0
0075d474  83 ff ff 0a                                      beq #0x75d288
0075d478  5d f9 ff eb                                      bl #0x75b9f4
0075d47c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0075d480  a4 99 00 eb                                      bl #0x783b18
0075d484  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0075d488  fb 99 00 eb                                      bl #0x783c7c
0075d48c  30 c0 9d e5                                      ldr ip, [sp, #0x30]
0075d490  00 50 a0 e1                                      mov r5, r0
0075d494  05 00 5c e3                                      cmp ip, #5
0075d498  82 ff ff ca                                      bgt #0x75d2a8
0075d49c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0075d4a0  db 99 00 eb                                      bl #0x783c14
0075d4a4  00 80 a0 e1                                      mov r8, r0
0075d4a8  81 ff ff ea                                      b #0x75d2b4
0075d4ac  f4 00 9d e5                                      ldr r0, [sp, #0xf4]
0075d4b0  f0 10 9d e5                                      ldr r1, [sp, #0xf0]
0075d4b4  9f d5 ff eb                                      bl #0x752b38
0075d4b8  42 fe ff ea                                      b #0x75cdc8
0075d4bc  50 00 8d e2                                      add r0, sp, #0x50
0075d4c0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0075d4c4  08 00 8d e5                                      str r0, [sp, #8]
0075d4c8  a2 e3 00 eb                                      bl #0x796358
0075d4cc  00 fe ff ea                                      b #0x75ccd4
0075d4d0  14 60 8d e5                                      str r6, [sp, #0x14]
0075d4d4  14 60 84 e2                                      add r6, r4, #0x14
0075d4d8  a7 fe ff ea                                      b #0x75cf7c
0075d4dc  b4 03 9f e5                                      ldr r0, [pc, #0x3b4]
0075d4e0  04 10 a0 e1                                      mov r1, r4
0075d4e4  14 80 9d e5                                      ldr r8, [sp, #0x14]
0075d4e8  00 00 8f e0                                      add r0, pc, r0
0075d4ec  24 0f 00 eb                                      bl #0x761184
0075d4f0  ac 00 9d e5                                      ldr r0, [sp, #0xac]
0075d4f4  00 00 50 e3                                      cmp r0, #0
0075d4f8  00 00 00 0a                                      beq #0x75d500
0075d4fc  3c f9 ff eb                                      bl #0x75b9f4
0075d500  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
0075d504  00 00 51 e3                                      cmp r1, #0
0075d508  04 00 00 1a                                      bne #0x75d520
0075d50c  40 30 9d e5                                      ldr r3, [sp, #0x40]
0075d510  00 00 53 e3                                      cmp r3, #0
0075d514  01 30 a0 13                                      movne r3, #1
0075d518  09 30 c8 15                                      strbne r3, [r8, #9]
0075d51c  26 fe ff ea                                      b #0x75cdbc
0075d520  40 20 9d e5                                      ldr r2, [sp, #0x40]
0075d524  00 00 52 e3                                      cmp r2, #0
0075d528  02 30 a0 13                                      movne r3, #2
0075d52c  09 30 c8 15                                      strbne r3, [r8, #9]
0075d530  40 40 9d 05                                      ldreq r4, [sp, #0x40]
0075d534  09 40 c8 05                                      strbeq r4, [r8, #9]
0075d538  1f fe ff ea                                      b #0x75cdbc
0075d53c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0075d540  75 9a 00 eb                                      bl #0x783f1c
0075d544  41 ff ff ea                                      b #0x75d250
0075d548  0a 00 a0 e1                                      mov r0, sl
0075d54c  cb 10 8b e0                                      add r1, fp, fp, asr #1
0075d550  50 f3 ff eb                                      bl #0x75a298
0075d554  0c 00 9a e8                                      ldm sl, {r2, r3}
0075d558  03 61 82 e7                                      str r6, [r2, r3, lsl #2]
0075d55c  04 b0 8a e5                                      str fp, [sl, #4]
0075d560  a0 60 9d e5                                      ldr r6, [sp, #0xa0]
0075d564  00 00 56 e3                                      cmp r6, #0
0075d568  af ff ff ca                                      bgt #0x75d42c
0075d56c  b7 ff ff aa                                      bge #0x75d450
0075d570  86 31 a0 e1                                      lsl r3, r6, #3
0075d574  9c 20 9d e5                                      ldr r2, [sp, #0x9c]
0075d578  01 60 96 e2                                      adds r6, r6, #1
0075d57c  03 10 82 e0                                      add r1, r2, r3
0075d580  03 40 82 e7                                      str r4, [r2, r3]
0075d584  04 40 81 e5                                      str r4, [r1, #4]
0075d588  08 30 83 e2                                      add r3, r3, #8
0075d58c  f8 ff ff 1a                                      bne #0x75d574
0075d590  08 00 9d e5                                      ldr r0, [sp, #8]
0075d594  04 10 a0 e1                                      mov r1, r4
0075d598  a0 40 8d e5                                      str r4, [sp, #0xa0]
0075d59c  5c f3 ff eb                                      bl #0x75a314
0075d5a0  ae ff ff ea                                      b #0x75d460
0075d5a4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0075d5a8  5e 99 00 eb                                      bl #0x783b28
0075d5ac  01 40 44 e2                                      sub r4, r4, #1
0075d5b0  28 00 8d e5                                      str r0, [sp, #0x28]
0075d5b4  46 ff ff ea                                      b #0x75d2d4
0075d5b8  34 00 9d e5                                      ldr r0, [sp, #0x34]
0075d5bc  08 10 a0 e1                                      mov r1, r8
0075d5c0  ef 0e 00 eb                                      bl #0x761184
0075d5c4  54 ff ff ea                                      b #0x75d31c
0075d5c8  38 00 9d e5                                      ldr r0, [sp, #0x38]
0075d5cc  66 c4 ee eb                                      bl #0x30e76c
0075d5d0  00 00 50 e3                                      cmp r0, #0
0075d5d4  4e ff ff 0a                                      beq #0x75d314
0075d5d8  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0075d5dc  0a 10 a0 e3                                      mov r1, #0xa
0075d5e0  11 20 a0 e3                                      mov r2, #0x11
0075d5e4  24 10 cc e5                                      strb r1, [ip, #0x24]
0075d5e8  0c 10 a0 e3                                      mov r1, #0xc
0075d5ec  2c 10 cc e5                                      strb r1, [ip, #0x2c]
0075d5f0  0b 10 a0 e3                                      mov r1, #0xb
0075d5f4  34 10 cc e5                                      strb r1, [ip, #0x34]
0075d5f8  0f 10 a0 e3                                      mov r1, #0xf
0075d5fc  3c 10 cc e5                                      strb r1, [ip, #0x3c]
0075d600  0d 10 a0 e3                                      mov r1, #0xd
0075d604  44 10 cc e5                                      strb r1, [ip, #0x44]
0075d608  0e 10 a0 e3                                      mov r1, #0xe
0075d60c  4c 10 cc e5                                      strb r1, [ip, #0x4c]
0075d610  10 10 a0 e3                                      mov r1, #0x10
0075d614  54 10 cc e5                                      strb r1, [ip, #0x54]
0075d618  12 10 a0 e3                                      mov r1, #0x12
0075d61c  64 10 cc e5                                      strb r1, [ip, #0x64]
0075d620  09 10 a0 e3                                      mov r1, #9
0075d624  25 40 cc e5                                      strb r4, [ip, #0x25]
0075d628  b6 42 cc e1                                      strh r4, [ip, #0x26]
0075d62c  28 40 8c e5                                      str r4, [ip, #0x28]
0075d630  2d 40 cc e5                                      strb r4, [ip, #0x2d]
0075d634  be 42 cc e1                                      strh r4, [ip, #0x2e]
0075d638  30 40 8c e5                                      str r4, [ip, #0x30]
0075d63c  35 40 cc e5                                      strb r4, [ip, #0x35]
0075d640  b6 43 cc e1                                      strh r4, [ip, #0x36]
0075d644  38 40 8c e5                                      str r4, [ip, #0x38]
0075d648  3d 40 cc e5                                      strb r4, [ip, #0x3d]
0075d64c  be 43 cc e1                                      strh r4, [ip, #0x3e]
0075d650  40 40 8c e5                                      str r4, [ip, #0x40]
0075d654  45 40 cc e5                                      strb r4, [ip, #0x45]
0075d658  b6 44 cc e1                                      strh r4, [ip, #0x46]
0075d65c  48 40 8c e5                                      str r4, [ip, #0x48]
0075d660  4d 40 cc e5                                      strb r4, [ip, #0x4d]
0075d664  be 44 cc e1                                      strh r4, [ip, #0x4e]
0075d668  50 40 8c e5                                      str r4, [ip, #0x50]
0075d66c  55 40 cc e5                                      strb r4, [ip, #0x55]
0075d670  b6 45 cc e1                                      strh r4, [ip, #0x56]
0075d674  58 40 8c e5                                      str r4, [ip, #0x58]
0075d678  5c 20 cc e5                                      strb r2, [ip, #0x5c]
0075d67c  5d 40 cc e5                                      strb r4, [ip, #0x5d]
0075d680  be 45 cc e1                                      strh r4, [ip, #0x5e]
0075d684  60 40 8c e5                                      str r4, [ip, #0x60]
0075d688  6c 10 cc e5                                      strb r1, [ip, #0x6c]
0075d68c  01 10 a0 e3                                      mov r1, #1
0075d690  74 10 cc e5                                      strb r1, [ip, #0x74]
0075d694  02 10 a0 e3                                      mov r1, #2
0075d698  7c 10 cc e5                                      strb r1, [ip, #0x7c]
0075d69c  03 10 a0 e3                                      mov r1, #3
0075d6a0  84 10 cc e5                                      strb r1, [ip, #0x84]
0075d6a4  04 10 a0 e3                                      mov r1, #4
0075d6a8  8c 10 cc e5                                      strb r1, [ip, #0x8c]
0075d6ac  05 10 a0 e3                                      mov r1, #5
0075d6b0  94 10 cc e5                                      strb r1, [ip, #0x94]
0075d6b4  06 10 a0 e3                                      mov r1, #6
0075d6b8  9c 10 cc e5                                      strb r1, [ip, #0x9c]
0075d6bc  07 10 a0 e3                                      mov r1, #7
0075d6c0  65 40 cc e5                                      strb r4, [ip, #0x65]
0075d6c4  a4 10 cc e5                                      strb r1, [ip, #0xa4]
0075d6c8  b6 46 cc e1                                      strh r4, [ip, #0x66]
0075d6cc  68 40 8c e5                                      str r4, [ip, #0x68]
0075d6d0  6d 40 cc e5                                      strb r4, [ip, #0x6d]
0075d6d4  be 46 cc e1                                      strh r4, [ip, #0x6e]
0075d6d8  70 40 8c e5                                      str r4, [ip, #0x70]
0075d6dc  75 40 cc e5                                      strb r4, [ip, #0x75]
0075d6e0  b6 47 cc e1                                      strh r4, [ip, #0x76]
0075d6e4  78 40 8c e5                                      str r4, [ip, #0x78]
0075d6e8  7d 40 cc e5                                      strb r4, [ip, #0x7d]
0075d6ec  be 47 cc e1                                      strh r4, [ip, #0x7e]
0075d6f0  80 40 8c e5                                      str r4, [ip, #0x80]
0075d6f4  85 40 cc e5                                      strb r4, [ip, #0x85]
0075d6f8  b6 48 cc e1                                      strh r4, [ip, #0x86]
0075d6fc  88 40 8c e5                                      str r4, [ip, #0x88]
0075d700  8d 40 cc e5                                      strb r4, [ip, #0x8d]
0075d704  be 48 cc e1                                      strh r4, [ip, #0x8e]
0075d708  90 40 8c e5                                      str r4, [ip, #0x90]
0075d70c  95 40 cc e5                                      strb r4, [ip, #0x95]
0075d710  b6 49 cc e1                                      strh r4, [ip, #0x96]
0075d714  98 40 8c e5                                      str r4, [ip, #0x98]
0075d718  9d 40 cc e5                                      strb r4, [ip, #0x9d]
0075d71c  be 49 cc e1                                      strh r4, [ip, #0x9e]
0075d720  a0 40 8c e5                                      str r4, [ip, #0xa0]
0075d724  a5 40 cc e5                                      strb r4, [ip, #0xa5]
0075d728  08 10 a0 e3                                      mov r1, #8
0075d72c  b6 4a cc e1                                      strh r4, [ip, #0xa6]
0075d730  ad 20 cc e5                                      strb r2, [ip, #0xad]
0075d734  13 20 a0 e3                                      mov r2, #0x13
0075d738  a8 40 8c e5                                      str r4, [ip, #0xa8]
0075d73c  ac 10 cc e5                                      strb r1, [ip, #0xac]
0075d740  b4 20 cc e5                                      strb r2, [ip, #0xb4]
0075d744  b5 40 cc e5                                      strb r4, [ip, #0xb5]
0075d748  b8 40 8c e5                                      str r4, [ip, #0xb8]
0075d74c  be 4a cc e1                                      strh r4, [ip, #0xae]
0075d750  b0 40 8c e5                                      str r4, [ip, #0xb0]
0075d754  b6 4b cc e1                                      strh r4, [ip, #0xb6]
0075d758  38 00 9d e5                                      ldr r0, [sp, #0x38]
0075d75c  b6 c4 ee eb                                      bl #0x30ea3c
0075d760  eb fe ff ea                                      b #0x75d314
0075d764  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0075d768  ee 98 00 eb                                      bl #0x783b28
0075d76c  88 00 8d e5                                      str r0, [sp, #0x88]
0075d770  10 fe ff ea                                      b #0x75cfb8
0075d774  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0075d778  25 99 00 eb                                      bl #0x783c14
0075d77c  70 00 ff e6                                      uxth r0, r0
0075d780  48 00 8d e5                                      str r0, [sp, #0x48]
0075d784  de fd ff ea                                      b #0x75cf04
0075d788  88 c0 8d e2                                      add ip, sp, #0x88
0075d78c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0075d790  0c 10 a0 e1                                      mov r1, ip
0075d794  2c c0 8d e5                                      str ip, [sp, #0x2c]
0075d798  42 ed ff eb                                      bl #0x758ca8
0075d79c  02 fe ff ea                                      b #0x75cfac
0075d7a0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0075d7a4  1a 99 00 eb                                      bl #0x783c14
0075d7a8  10 00 8d e5                                      str r0, [sp, #0x10]
0075d7ac  eb fd ff ea                                      b #0x75cf60
0075d7b0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0075d7b4  e8 10 8d e2                                      add r1, sp, #0xe8
0075d7b8  04 60 84 e2                                      add r6, r4, #4
0075d7bc  81 9a 00 eb                                      bl #0x7841c8
0075d7c0  06 40 a0 e1                                      mov r4, r6
0075d7c4  e2 fd ff ea                                      b #0x75cf54
0075d7c8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0075d7cc  10 99 00 eb                                      bl #0x783c14
0075d7d0  08 00 8d e5                                      str r0, [sp, #8]
0075d7d4  d9 fd ff ea                                      b #0x75cf40
0075d7d8  50 00 8d e2                                      add r0, sp, #0x50
0075d7dc  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0075d7e0  20 b0 84 e2                                      add fp, r4, #0x20
0075d7e4  1e e2 00 eb                                      bl #0x796064
0075d7e8  0b 40 a0 e1                                      mov r4, fp
0075d7ec  28 60 8d e5                                      str r6, [sp, #0x28]
0075d7f0  cf fd ff ea                                      b #0x75cf34
0075d7f4  0a 00 a0 e1                                      mov r0, sl
0075d7f8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0075d7fc  74 e3 00 eb                                      bl #0x7965d4
0075d800  18 40 a0 e3                                      mov r4, #0x18
0075d804  00 00 a0 e3                                      mov r0, #0
0075d808  38 00 8d e5                                      str r0, [sp, #0x38]
0075d80c  04 60 a0 e1                                      mov r6, r4
0075d810  c1 fd ff ea                                      b #0x75cf1c
0075d814  14 80 9d e5                                      ldr r8, [sp, #0x14]
0075d818  38 ff ff ea                                      b #0x75d500
0075d81c  03 10 a0 e3                                      mov r1, #3
0075d820  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0075d824  5e 98 00 eb                                      bl #0x7839a4
0075d828  06 10 a0 e1                                      mov r1, r6
0075d82c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0075d830  5b 98 00 eb                                      bl #0x7839a4
0075d834  06 10 a0 e1                                      mov r1, r6
0075d838  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0075d83c  58 98 00 eb                                      bl #0x7839a4
0075d840  06 10 a0 e1                                      mov r1, r6
0075d844  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0075d848  55 98 00 eb                                      bl #0x7839a4
0075d84c  06 10 a0 e1                                      mov r1, r6
0075d850  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0075d854  52 98 00 eb                                      bl #0x7839a4
0075d858  00 00 50 e2                                      subs r0, r0, #0
0075d85c  01 00 a0 13                                      movne r0, #1
0075d860  34 00 8d e5                                      str r0, [sp, #0x34]
0075d864  06 10 a0 e1                                      mov r1, r6
0075d868  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0075d86c  4c 98 00 eb                                      bl #0x7839a4
0075d870  00 80 50 e2                                      subs r8, r0, #0
0075d874  01 80 a0 13                                      movne r8, #1
0075d878  9a fd ff ea                                      b #0x75cee8
0075d87c  a3 c2 ee eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0075d880  14 7f 23 00 ac 40 00 00 4c 09 00 00 5c f2 29 00  .byte 0x14, 0x7f, 0x23, 0x00, 0xac, 0x40, 0x00, 0x00, 0x4c, 0x09, 0x00, 0x00, 0x5c, 0xf2, 0x29, 0x00
0075d890  d4 b9 1a 00 48 f2 29 00 20 b7 1a 00              .byte 0xd4, 0xb9, 0x1a, 0x00, 0x48, 0xf2, 0x29, 0x00, 0x20, 0xb7, 0x1a, 0x00

; FUNCTION 0x0075d8d8, declared_size=780, range_size=780, mode=arm
; class-group: gameswf::place_object_2
; alias: _ZN7gameswf14place_object_27executeEPNS_9characterE
; demangled: gameswf::place_object_2::execute(gameswf::character*)
; decoder-mode: arm
0075d8d8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0075d8dc  09 30 d0 e5                                      ldrb r3, [r0, #9]
0075d8e0  44 d0 4d e2                                      sub sp, sp, #0x44
0075d8e4  00 50 a0 e1                                      mov r5, r0
0075d8e8  01 00 53 e3                                      cmp r3, #1
0075d8ec  01 60 a0 e1                                      mov r6, r1
0075d8f0  3f 00 00 0a                                      beq #0x75d9f4
0075d8f4  03 00 00 3a                                      blo #0x75d908
0075d8f8  02 00 53 e3                                      cmp r3, #2
0075d8fc  5a 00 00 0a                                      beq #0x75da6c
0075d900  44 d0 8d e2                                      add sp, sp, #0x44
0075d904  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0075d908  04 30 d0 e5                                      ldrb r3, [r0, #4]
0075d90c  00 10 91 e5                                      ldr r1, [r1]
0075d910  be 20 d0 e1                                      ldrh r2, [r0, #0xe]
0075d914  00 00 53 e3                                      cmp r3, #0
0075d918  b4 c0 91 e5                                      ldr ip, [r1, #0xb4]
0075d91c  7e 00 00 1a                                      bne #0x75db1c
0075d920  b4 72 9f e5                                      ldr r7, [pc, #0x2b4]
0075d924  08 a0 d5 e5                                      ldrb sl, [r5, #8]
0075d928  07 70 8f e0                                      add r7, pc, r7
0075d92c  00 00 5a e3                                      cmp sl, #0
0075d930  0c 70 87 e2                                      add r7, r7, #0xc
0075d934  7e 00 00 1a                                      bne #0x75db34
0075d938  3c a0 cd e5                                      strb sl, [sp, #0x3c]
0075d93c  30 a0 8d e5                                      str sl, [sp, #0x30]
0075d940  34 a0 8d e5                                      str sl, [sp, #0x34]
0075d944  38 a0 8d e5                                      str sl, [sp, #0x38]
0075d948  30 40 8d e2                                      add r4, sp, #0x30
0075d94c  05 a0 d5 e5                                      ldrb sl, [r5, #5]
0075d950  b2 91 d5 e1                                      ldrh sb, [r5, #0x12]
0075d954  06 80 d5 e5                                      ldrb r8, [r5, #6]
0075d958  07 30 d5 e5                                      ldrb r3, [r5, #7]
0075d95c  ba 00 d5 e1                                      ldrh r0, [r5, #0xa]
0075d960  04 90 59 e2                                      subs sb, sb, #4
0075d964  01 90 a0 13                                      movne sb, #1
0075d968  00 00 5a e3                                      cmp sl, #0
0075d96c  0a a0 85 10                                      addne sl, r5, sl
0075d970  00 00 58 e3                                      cmp r8, #0
0075d974  08 80 85 10                                      addne r8, r5, r8
0075d978  00 00 53 e3                                      cmp r3, #0
0075d97c  03 30 85 10                                      addne r3, r5, r3
0075d980  00 00 50 e3                                      cmp r0, #0
0075d984  bc b0 d5 e1                                      ldrh fp, [r5, #0xc]
0075d988  00 00 a0 03                                      moveq r0, #0
0075d98c  09 00 00 0a                                      beq #0x75d9b8
0075d990  28 20 8d e5                                      str r2, [sp, #0x28]
0075d994  2c 30 8d e5                                      str r3, [sp, #0x2c]
0075d998  24 c0 8d e5                                      str ip, [sp, #0x24]
0075d99c  4f c2 ee eb                                      bl #0x30e2e0
0075d9a0  00 1f 0f e3                                      movw r1, #0xff00
0075d9a4  7f 17 44 e3                                      movt r1, #0x477f
0075d9a8  b9 c4 ee eb                                      bl #0x30ec94
0075d9ac  24 c0 9d e5                                      ldr ip, [sp, #0x24]
0075d9b0  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0075d9b4  28 20 9d e5                                      ldr r2, [sp, #0x28]
0075d9b8  b0 11 d5 e1                                      ldrh r1, [r5, #0x10]
0075d9bc  10 30 8d e5                                      str r3, [sp, #0x10]
0075d9c0  14 00 8d e5                                      str r0, [sp, #0x14]
0075d9c4  18 10 8d e5                                      str r1, [sp, #0x18]
0075d9c8  00 b0 8d e5                                      str fp, [sp]
0075d9cc  02 10 a0 e1                                      mov r1, r2
0075d9d0  00 06 8d e9                                      stmib sp, {sb, sl}
0075d9d4  0c 80 8d e5                                      str r8, [sp, #0xc]
0075d9d8  06 00 a0 e1                                      mov r0, r6
0075d9dc  07 20 a0 e1                                      mov r2, r7
0075d9e0  04 30 a0 e1                                      mov r3, r4
0075d9e4  3c ff 2f e1                                      blx ip
0075d9e8  04 00 a0 e1                                      mov r0, r4
0075d9ec  aa ff ff eb                                      bl #0x75d89c
0075d9f0  c2 ff ff ea                                      b #0x75d900
0075d9f4  05 80 d0 e5                                      ldrb r8, [r0, #5]
0075d9f8  06 70 d0 e5                                      ldrb r7, [r0, #6]
0075d9fc  07 90 d0 e5                                      ldrb sb, [r0, #7]
0075da00  00 00 58 e3                                      cmp r8, #0
0075da04  08 80 80 10                                      addne r8, r0, r8
0075da08  00 00 57 e3                                      cmp r7, #0
0075da0c  07 70 80 10                                      addne r7, r0, r7
0075da10  00 00 59 e3                                      cmp sb, #0
0075da14  09 90 80 10                                      addne sb, r0, sb
0075da18  bc a0 d0 e1                                      ldrh sl, [r0, #0xc]
0075da1c  ba 00 d0 e1                                      ldrh r0, [r0, #0xa]
0075da20  00 30 91 e5                                      ldr r3, [r1]
0075da24  00 00 50 e3                                      cmp r0, #0
0075da28  b8 40 93 e5                                      ldr r4, [r3, #0xb8]
0075da2c  00 00 a0 03                                      moveq r0, #0
0075da30  03 00 00 0a                                      beq #0x75da44
0075da34  29 c2 ee eb                                      bl #0x30e2e0
0075da38  00 1f 0f e3                                      movw r1, #0xff00
0075da3c  7f 17 44 e3                                      movt r1, #0x477f
0075da40  93 c4 ee eb                                      bl #0x30ec94
0075da44  b0 31 d5 e1                                      ldrh r3, [r5, #0x10]
0075da48  0a 10 a0 e1                                      mov r1, sl
0075da4c  04 00 8d e5                                      str r0, [sp, #4]
0075da50  08 30 8d e5                                      str r3, [sp, #8]
0075da54  00 90 8d e5                                      str sb, [sp]
0075da58  06 00 a0 e1                                      mov r0, r6
0075da5c  08 20 a0 e1                                      mov r2, r8
0075da60  07 30 a0 e1                                      mov r3, r7
0075da64  34 ff 2f e1                                      blx r4
0075da68  a4 ff ff ea                                      b #0x75d900
0075da6c  04 30 d0 e5                                      ldrb r3, [r0, #4]
0075da70  00 20 91 e5                                      ldr r2, [r1]
0075da74  be 80 d0 e1                                      ldrh r8, [r0, #0xe]
0075da78  00 00 53 e3                                      cmp r3, #0
0075da7c  bc c0 92 e5                                      ldr ip, [r2, #0xbc]
0075da80  37 00 00 1a                                      bne #0x75db64
0075da84  54 71 9f e5                                      ldr r7, [pc, #0x154]
0075da88  07 70 8f e0                                      add r7, pc, r7
0075da8c  0c 70 87 e2                                      add r7, r7, #0xc
0075da90  d0 30 d7 e1                                      ldrsb r3, [r7]
0075da94  05 b0 d5 e5                                      ldrb fp, [r5, #5]
0075da98  06 90 d5 e5                                      ldrb sb, [r5, #6]
0075da9c  01 00 73 e3                                      cmn r3, #1
0075daa0  07 a0 d5 e5                                      ldrb sl, [r5, #7]
0075daa4  ba 00 d5 e1                                      ldrh r0, [r5, #0xa]
0075daa8  01 70 87 12                                      addne r7, r7, #1
0075daac  0c 70 97 05                                      ldreq r7, [r7, #0xc]
0075dab0  00 00 5b e3                                      cmp fp, #0
0075dab4  0b b0 85 10                                      addne fp, r5, fp
0075dab8  00 00 59 e3                                      cmp sb, #0
0075dabc  09 90 85 10                                      addne sb, r5, sb
0075dac0  00 00 5a e3                                      cmp sl, #0
0075dac4  0a a0 85 10                                      addne sl, r5, sl
0075dac8  00 00 50 e3                                      cmp r0, #0
0075dacc  bc 40 d5 e1                                      ldrh r4, [r5, #0xc]
0075dad0  00 00 a0 03                                      moveq r0, #0
0075dad4  05 00 00 0a                                      beq #0x75daf0
0075dad8  24 c0 8d e5                                      str ip, [sp, #0x24]
0075dadc  ff c1 ee eb                                      bl #0x30e2e0
0075dae0  00 1f 0f e3                                      movw r1, #0xff00
0075dae4  7f 17 44 e3                                      movt r1, #0x477f
0075dae8  69 c4 ee eb                                      bl #0x30ec94
0075daec  24 c0 9d e5                                      ldr ip, [sp, #0x24]
0075daf0  b0 31 d5 e1                                      ldrh r3, [r5, #0x10]
0075daf4  08 10 a0 e1                                      mov r1, r8
0075daf8  0c 00 8d e5                                      str r0, [sp, #0xc]
0075dafc  10 30 8d e5                                      str r3, [sp, #0x10]
0075db00  00 b0 8d e5                                      str fp, [sp]
0075db04  00 06 8d e9                                      stmib sp, {sb, sl}
0075db08  06 00 a0 e1                                      mov r0, r6
0075db0c  07 20 a0 e1                                      mov r2, r7
0075db10  04 30 a0 e1                                      mov r3, r4
0075db14  3c ff 2f e1                                      blx ip
0075db18  78 ff ff ea                                      b #0x75d900
0075db1c  03 70 90 e7                                      ldr r7, [r0, r3]
0075db20  00 00 57 e3                                      cmp r7, #0
0075db24  7d ff ff 0a                                      beq #0x75d920
0075db28  08 a0 d5 e5                                      ldrb sl, [r5, #8]
0075db2c  00 00 5a e3                                      cmp sl, #0
0075db30  80 ff ff 0a                                      beq #0x75d938
0075db34  0a a0 85 e0                                      add sl, r5, sl
0075db38  04 80 9a e5                                      ldr r8, [sl, #4]
0075db3c  00 90 a0 e3                                      mov sb, #0
0075db40  30 90 8d e5                                      str sb, [sp, #0x30]
0075db44  09 00 58 e1                                      cmp r8, sb
0075db48  34 90 8d e5                                      str sb, [sp, #0x34]
0075db4c  38 90 8d e5                                      str sb, [sp, #0x38]
0075db50  3c 90 cd e5                                      strb sb, [sp, #0x3c]
0075db54  06 00 00 aa                                      bge #0x75db74
0075db58  34 80 8d e5                                      str r8, [sp, #0x34]
0075db5c  30 40 8d e2                                      add r4, sp, #0x30
0075db60  79 ff ff ea                                      b #0x75d94c
0075db64  03 70 90 e7                                      ldr r7, [r0, r3]
0075db68  00 00 57 e3                                      cmp r7, #0
0075db6c  c7 ff ff 1a                                      bne #0x75da90
0075db70  c3 ff ff ea                                      b #0x75da84
0075db74  f7 ff ff 0a                                      beq #0x75db58
0075db78  f6 ff ff da                                      ble #0x75db58
0075db7c  30 40 8d e2                                      add r4, sp, #0x30
0075db80  04 00 a0 e1                                      mov r0, r4
0075db84  c8 10 88 e0                                      add r1, r8, r8, asr #1
0075db88  28 20 8d e5                                      str r2, [sp, #0x28]
0075db8c  24 c0 8d e5                                      str ip, [sp, #0x24]
0075db90  c0 f1 ff eb                                      bl #0x75a298
0075db94  24 c0 9d e5                                      ldr ip, [sp, #0x24]
0075db98  28 20 9d e5                                      ldr r2, [sp, #0x28]
0075db9c  09 30 a0 e1                                      mov r3, sb
0075dba0  30 10 9d e5                                      ldr r1, [sp, #0x30]
0075dba4  09 31 81 e7                                      str r3, [r1, sb, lsl #2]
0075dba8  01 90 89 e2                                      add sb, sb, #1
0075dbac  08 00 59 e1                                      cmp sb, r8
0075dbb0  fa ff ff 1a                                      bne #0x75dba0
0075dbb4  34 90 8d e5                                      str sb, [sp, #0x34]
0075dbb8  00 10 9a e5                                      ldr r1, [sl]
0075dbbc  03 01 91 e7                                      ldr r0, [r1, r3, lsl #2]
0075dbc0  30 10 9d e5                                      ldr r1, [sp, #0x30]
0075dbc4  03 01 81 e7                                      str r0, [r1, r3, lsl #2]
0075dbc8  34 10 9d e5                                      ldr r1, [sp, #0x34]
0075dbcc  01 30 83 e2                                      add r3, r3, #1
0075dbd0  01 00 53 e1                                      cmp r3, r1
0075dbd4  f7 ff ff ba                                      blt #0x75dbb8
0075dbd8  5b ff ff ea                                      b #0x75d94c
; mapping-symbol data/literal pool
0075dbdc  90 eb 29 00 30 ea 29 00                          .byte 0x90, 0xeb, 0x29, 0x00, 0x30, 0xea, 0x29, 0x00

; FUNCTION 0x0075e230, declared_size=264, range_size=264, mode=arm
; class-group: gameswf::place_object_2
; alias: _ZN7gameswf14place_object_2D1Ev
; demangled: gameswf::place_object_2::~place_object_2()
; decoder-mode: arm
0075e230  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0075e234  f4 30 9f e5                                      ldr r3, [pc, #0xf4]
0075e238  f4 20 9f e5                                      ldr r2, [pc, #0xf4]
0075e23c  07 10 d0 e5                                      ldrb r1, [r0, #7]
0075e240  03 30 8f e0                                      add r3, pc, r3
0075e244  02 20 93 e7                                      ldr r2, [r3, r2]
0075e248  00 00 51 e3                                      cmp r1, #0
0075e24c  00 70 a0 e1                                      mov r7, r0
0075e250  08 20 82 e2                                      add r2, r2, #8
0075e254  00 20 80 e5                                      str r2, [r0]
0075e258  0d 00 00 0a                                      beq #0x75e294
0075e25c  01 10 80 e0                                      add r1, r0, r1
0075e260  04 00 81 e2                                      add r0, r1, #4
0075e264  00 10 a0 e3                                      mov r1, #0
0075e268  1a de ff eb                                      bl #0x755ad8
0075e26c  07 40 d7 e5                                      ldrb r4, [r7, #7]
0075e270  00 10 a0 e3                                      mov r1, #0
0075e274  00 00 54 e3                                      cmp r4, #0
0075e278  04 40 87 10                                      addne r4, r7, r4
0075e27c  04 40 84 e2                                      add r4, r4, #4
0075e280  04 00 a0 e1                                      mov r0, r4
0075e284  13 de ff eb                                      bl #0x755ad8
0075e288  04 00 a0 e1                                      mov r0, r4
0075e28c  00 10 a0 e3                                      mov r1, #0
0075e290  0c d3 ff eb                                      bl #0x752ec8
0075e294  08 60 d7 e5                                      ldrb r6, [r7, #8]
0075e298  00 00 56 e3                                      cmp r6, #0
0075e29c  17 00 00 0a                                      beq #0x75e300
0075e2a0  06 60 87 e0                                      add r6, r7, r6
0075e2a4  04 40 96 e5                                      ldr r4, [r6, #4]
0075e2a8  00 00 54 e3                                      cmp r4, #0
0075e2ac  15 00 00 da                                      ble #0x75e308
0075e2b0  00 50 a0 e3                                      mov r5, #0
0075e2b4  00 30 96 e5                                      ldr r3, [r6]
0075e2b8  05 81 93 e7                                      ldr r8, [r3, r5, lsl #2]
0075e2bc  01 50 85 e2                                      add r5, r5, #1
0075e2c0  00 00 58 e3                                      cmp r8, #0
0075e2c4  08 00 88 e2                                      add r0, r8, #8
0075e2c8  03 00 00 0a                                      beq #0x75e2dc
0075e2cc  94 e3 00 eb                                      bl #0x797124
0075e2d0  08 00 a0 e1                                      mov r0, r8
0075e2d4  00 10 a0 e3                                      mov r1, #0
0075e2d8  16 d2 ff eb                                      bl #0x752b38
0075e2dc  04 00 55 e1                                      cmp r5, r4
0075e2e0  f3 ff ff 1a                                      bne #0x75e2b4
0075e2e4  04 40 96 e5                                      ldr r4, [r6, #4]
0075e2e8  00 00 54 e3                                      cmp r4, #0
0075e2ec  05 00 00 da                                      ble #0x75e308
0075e2f0  00 10 a0 e3                                      mov r1, #0
0075e2f4  04 10 86 e5                                      str r1, [r6, #4]
0075e2f8  06 00 a0 e1                                      mov r0, r6
0075e2fc  e5 ef ff eb                                      bl #0x75a298
0075e300  07 00 a0 e1                                      mov r0, r7
0075e304  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0075e308  00 00 54 e3                                      cmp r4, #0
0075e30c  f7 ff ff aa                                      bge #0x75e2f0
0075e310  04 31 a0 e1                                      lsl r3, r4, #2
0075e314  00 10 a0 e3                                      mov r1, #0
0075e318  00 20 96 e5                                      ldr r2, [r6]
0075e31c  01 40 94 e2                                      adds r4, r4, #1
0075e320  03 10 82 e7                                      str r1, [r2, r3]
0075e324  04 30 83 e2                                      add r3, r3, #4
0075e328  fa ff ff 1a                                      bne #0x75e318
0075e32c  ef ff ff ea                                      b #0x75e2f0
; mapping-symbol data/literal pool
0075e330  50 68 23 00 4c 09 00 00                          .byte 0x50, 0x68, 0x23, 0x00, 0x4c, 0x09, 0x00, 0x00

; FUNCTION 0x0075e338, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::place_object_2
; alias: _ZN7gameswf14place_object_2D0Ev
; demangled: gameswf::place_object_2::~place_object_2()
; decoder-mode: arm
0075e338  10 40 2d e9                                      push {r4, lr}
0075e33c  00 40 a0 e1                                      mov r4, r0
0075e340  ba ff ff eb                                      bl #0x75e230
0075e344  04 00 a0 e1                                      mov r0, r4
0075e348  d8 bf ee eb                                      bl #0x30e2b0
0075e34c  04 00 a0 e1                                      mov r0, r4
0075e350  10 80 bd e8                                      pop {r4, pc}
