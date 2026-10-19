; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00754e80, declared_size=232, range_size=232, mode=arm
; class-group: gameswf::display_list
; alias: _ZN7gameswf12display_list18find_display_indexEi
; demangled: gameswf::display_list::find_display_index(int)
; decoder-mode: arm
00754e80  30 00 2d e9                                      push {r4, r5}
00754e84  04 30 90 e5                                      ldr r3, [r0, #4]
00754e88  00 00 53 e3                                      cmp r3, #0
00754e8c  20 00 00 0a                                      beq #0x754f14
00754e90  c3 20 a0 e1                                      asr r2, r3, #1
00754e94  00 40 90 e5                                      ldr r4, [r0]
00754e98  01 50 43 e2                                      sub r5, r3, #1
00754e9c  02 00 a0 e1                                      mov r0, r2
00754ea0  00 c1 94 e7                                      ldr ip, [r4, r0, lsl #2]
00754ea4  c2 20 a0 e1                                      asr r2, r2, #1
00754ea8  01 00 52 e3                                      cmp r2, #1
00754eac  01 20 a0 b3                                      movlt r2, #1
00754eb0  b4 c9 dc e1                                      ldrh ip, [ip, #0x94]
00754eb4  01 00 5c e1                                      cmp ip, r1
00754eb8  09 00 00 aa                                      bge #0x754ee4
00754ebc  00 00 55 e1                                      cmp r5, r0
00754ec0  13 00 00 0a                                      beq #0x754f14
00754ec4  02 00 80 e0                                      add r0, r0, r2
00754ec8  00 c1 94 e7                                      ldr ip, [r4, r0, lsl #2]
00754ecc  c2 20 a0 e1                                      asr r2, r2, #1
00754ed0  01 00 52 e3                                      cmp r2, #1
00754ed4  01 20 a0 b3                                      movlt r2, #1
00754ed8  b4 c9 dc e1                                      ldrh ip, [ip, #0x94]
00754edc  01 00 5c e1                                      cmp ip, r1
00754ee0  f5 ff ff ba                                      blt #0x754ebc
00754ee4  01 c0 40 e2                                      sub ip, r0, #1
00754ee8  0b 00 00 da                                      ble #0x754f1c
00754eec  00 00 50 e3                                      cmp r0, #0
00754ef0  01 00 00 1a                                      bne #0x754efc
00754ef4  30 00 bd e8                                      pop {r4, r5}
00754ef8  1e ff 2f e1                                      bx lr
00754efc  0c c1 94 e7                                      ldr ip, [r4, ip, lsl #2]
00754f00  b4 c9 dc e1                                      ldrh ip, [ip, #0x94]
00754f04  0c 00 51 e1                                      cmp r1, ip
00754f08  f9 ff ff ca                                      bgt #0x754ef4
00754f0c  00 00 62 e0                                      rsb r0, r2, r0
00754f10  e2 ff ff ea                                      b #0x754ea0
00754f14  03 00 a0 e1                                      mov r0, r3
00754f18  f5 ff ff ea                                      b #0x754ef4
00754f1c  00 00 50 e3                                      cmp r0, #0
00754f20  f3 ff ff 0a                                      beq #0x754ef4
00754f24  01 30 40 e2                                      sub r3, r0, #1
00754f28  03 21 94 e7                                      ldr r2, [r4, r3, lsl #2]
00754f2c  b4 29 d2 e1                                      ldrh r2, [r2, #0x94]
00754f30  02 00 51 e1                                      cmp r1, r2
00754f34  ee ff ff ca                                      bgt #0x754ef4
00754f38  02 20 40 e2                                      sub r2, r0, #2
00754f3c  02 21 a0 e1                                      lsl r2, r2, #2
00754f40  00 00 53 e3                                      cmp r3, #0
00754f44  03 00 a0 e1                                      mov r0, r3
00754f48  e9 ff ff 0a                                      beq #0x754ef4
00754f4c  02 c0 94 e7                                      ldr ip, [r4, r2]
00754f50  01 30 43 e2                                      sub r3, r3, #1
00754f54  04 20 42 e2                                      sub r2, r2, #4
00754f58  b4 c9 dc e1                                      ldrh ip, [ip, #0x94]
00754f5c  0c 00 51 e1                                      cmp r1, ip
00754f60  f6 ff ff da                                      ble #0x754f40
00754f64  e2 ff ff ea                                      b #0x754ef4

; FUNCTION 0x00754f68, declared_size=56, range_size=56, mode=arm
; class-group: gameswf::display_list
; alias: _ZN7gameswf12display_list17get_display_indexEi
; demangled: gameswf::display_list::get_display_index(int)
; decoder-mode: arm
00754f68  70 40 2d e9                                      push {r4, r5, r6, lr}
00754f6c  00 40 a0 e1                                      mov r4, r0
00754f70  01 50 a0 e1                                      mov r5, r1
00754f74  c1 ff ff eb                                      bl #0x754e80
00754f78  04 30 94 e5                                      ldr r3, [r4, #4]
00754f7c  03 00 50 e1                                      cmp r0, r3
00754f80  04 00 00 aa                                      bge #0x754f98
00754f84  00 30 94 e5                                      ldr r3, [r4]
00754f88  00 31 93 e7                                      ldr r3, [r3, r0, lsl #2]
00754f8c  b4 39 d3 e1                                      ldrh r3, [r3, #0x94]
00754f90  05 00 53 e1                                      cmp r3, r5
00754f94  00 00 00 0a                                      beq #0x754f9c
00754f98  00 00 e0 e3                                      mvn r0, #0
00754f9c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00754fa0, declared_size=32, range_size=32, mode=arm
; class-group: gameswf::display_list
; alias: _ZN7gameswf12display_list22get_character_at_depthEi
; demangled: gameswf::display_list::get_character_at_depth(int)
; decoder-mode: arm
00754fa0  10 40 2d e9                                      push {r4, lr}
00754fa4  00 40 a0 e1                                      mov r4, r0
00754fa8  ee ff ff eb                                      bl #0x754f68
00754fac  01 00 70 e3                                      cmn r0, #1
00754fb0  00 30 94 15                                      ldrne r3, [r4]
00754fb4  00 00 a0 03                                      moveq r0, #0
00754fb8  00 01 93 17                                      ldrne r0, [r3, r0, lsl #2]
00754fbc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00754fc0, declared_size=72, range_size=72, mode=arm
; class-group: gameswf::display_list
; alias: _ZN7gameswf12display_list20get_character_by_ptrEPKNS_9characterE
; demangled: gameswf::display_list::get_character_by_ptr(gameswf::character const*)
; decoder-mode: arm
00754fc0  04 30 90 e5                                      ldr r3, [r0, #4]
00754fc4  00 00 53 e3                                      cmp r3, #0
00754fc8  0c 00 00 da                                      ble #0x755000
00754fcc  00 c0 90 e5                                      ldr ip, [r0]
00754fd0  00 20 9c e5                                      ldr r2, [ip]
00754fd4  02 00 51 e1                                      cmp r1, r2
00754fd8  00 00 a0 03                                      moveq r0, #0
00754fdc  00 00 a0 13                                      movne r0, #0
00754fe0  03 00 00 1a                                      bne #0x754ff4
00754fe4  1e ff 2f e1                                      bx lr
00754fe8  00 21 9c e7                                      ldr r2, [ip, r0, lsl #2]
00754fec  02 00 51 e1                                      cmp r1, r2
00754ff0  1e ff 2f 01                                      bxeq lr
00754ff4  01 00 80 e2                                      add r0, r0, #1
00754ff8  03 00 50 e1                                      cmp r0, r3
00754ffc  f9 ff ff 1a                                      bne #0x754fe8
00755000  00 00 e0 e3                                      mvn r0, #0
00755004  1e ff 2f e1                                      bx lr

; FUNCTION 0x00755008, declared_size=64, range_size=64, mode=arm
; class-group: gameswf::display_list
; alias: _ZN7gameswf12display_list17get_highest_depthEv
; demangled: gameswf::display_list::get_highest_depth()
; decoder-mode: arm
00755008  04 10 90 e5                                      ldr r1, [r0, #4]
0075500c  00 00 51 e3                                      cmp r1, #0
00755010  01 09 a0 d3                                      movle r0, #0x4000
00755014  1e ff 2f d1                                      bxle lr
00755018  00 c0 90 e5                                      ldr ip, [r0]
0075501c  00 30 a0 e3                                      mov r3, #0
00755020  ff 0f 03 e3                                      movw r0, #0x3fff
00755024  03 21 9c e7                                      ldr r2, [ip, r3, lsl #2]
00755028  01 30 83 e2                                      add r3, r3, #1
0075502c  b4 29 d2 e1                                      ldrh r2, [r2, #0x94]
00755030  02 00 50 e1                                      cmp r0, r2
00755034  02 00 a0 b1                                      movlt r0, r2
00755038  01 00 53 e1                                      cmp r3, r1
0075503c  f8 ff ff 1a                                      bne #0x755024
00755040  01 00 80 e2                                      add r0, r0, #1
00755044  1e ff 2f e1                                      bx lr

; FUNCTION 0x00755048, declared_size=88, range_size=88, mode=arm
; class-group: gameswf::display_list
; alias: _ZN7gameswf12display_list10clear_refsEPNS_4hashIPNS_9as_objectEbNS_15fixed_size_hashIS3_EEEES3_
; demangled: gameswf::display_list::clear_refs(gameswf::hash<gameswf::as_object*, bool, gameswf::fixed_size_hash<gameswf::as_object*> >*, gameswf::as_object*)
; decoder-mode: arm
00755048  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0075504c  04 50 90 e5                                      ldr r5, [r0, #4]
00755050  00 60 a0 e1                                      mov r6, r0
00755054  01 70 a0 e1                                      mov r7, r1
00755058  00 00 55 e3                                      cmp r5, #0
0075505c  02 80 a0 e1                                      mov r8, r2
00755060  0d 00 00 da                                      ble #0x75509c
00755064  00 40 a0 e3                                      mov r4, #0
00755068  00 30 96 e5                                      ldr r3, [r6]
0075506c  07 10 a0 e1                                      mov r1, r7
00755070  08 20 a0 e1                                      mov r2, r8
00755074  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
00755078  01 40 84 e2                                      add r4, r4, #1
0075507c  00 00 53 e3                                      cmp r3, #0
00755080  03 00 a0 e1                                      mov r0, r3
00755084  02 00 00 0a                                      beq #0x755094
00755088  00 30 93 e5                                      ldr r3, [r3]
0075508c  0f e0 a0 e1                                      mov lr, pc
00755090  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00755094  05 00 54 e1                                      cmp r4, r5
00755098  f2 ff ff 1a                                      bne #0x755068
0075509c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007551cc, declared_size=148, range_size=148, mode=arm
; class-group: gameswf::display_list
; alias: _ZN7gameswf12display_list15swap_charactersEPNS_9characterES2_
; demangled: gameswf::display_list::swap_characters(gameswf::character*, gameswf::character*)
; decoder-mode: arm
007551cc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
007551d0  01 00 52 e1                                      cmp r2, r1
007551d4  0c d0 4d e2                                      sub sp, sp, #0xc
007551d8  02 50 a0 e1                                      mov r5, r2
007551dc  00 40 a0 e1                                      mov r4, r0
007551e0  1c 00 00 0a                                      beq #0x755258
007551e4  75 ff ff eb                                      bl #0x754fc0
007551e8  05 10 a0 e1                                      mov r1, r5
007551ec  00 60 a0 e1                                      mov r6, r0
007551f0  04 00 a0 e1                                      mov r0, r4
007551f4  71 ff ff eb                                      bl #0x754fc0
007551f8  00 00 50 e3                                      cmp r0, #0
007551fc  00 00 56 a3                                      cmpge r6, #0
00755200  00 30 a0 e1                                      mov r3, r0
00755204  13 00 00 ba                                      blt #0x755258
00755208  00 20 94 e5                                      ldr r2, [r4]
0075520c  08 00 8d e2                                      add r0, sp, #8
00755210  00 10 a0 e3                                      mov r1, #0
00755214  04 10 20 e5                                      str r1, [r0, #-4]!
00755218  03 11 92 e7                                      ldr r1, [r2, r3, lsl #2]
0075521c  03 71 a0 e1                                      lsl r7, r3, #2
00755220  d9 ff ff eb                                      bl #0x75518c
00755224  00 00 94 e5                                      ldr r0, [r4]
00755228  06 51 a0 e1                                      lsl r5, r6, #2
0075522c  06 11 90 e7                                      ldr r1, [r0, r6, lsl #2]
00755230  07 00 80 e0                                      add r0, r0, r7
00755234  d4 ff ff eb                                      bl #0x75518c
00755238  00 00 94 e5                                      ldr r0, [r4]
0075523c  04 10 9d e5                                      ldr r1, [sp, #4]
00755240  05 00 80 e0                                      add r0, r0, r5
00755244  d0 ff ff eb                                      bl #0x75518c
00755248  04 00 9d e5                                      ldr r0, [sp, #4]
0075524c  00 00 50 e3                                      cmp r0, #0
00755250  00 00 00 0a                                      beq #0x755258
00755254  f9 13 00 eb                                      bl #0x75a240
00755258  0c d0 8d e2                                      add sp, sp, #0xc
0075525c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x007552ac, declared_size=512, range_size=512, mode=arm
; class-group: gameswf::display_list
; alias: _ZN7gameswf12display_list7displayEv
; demangled: gameswf::display_list::display()
; decoder-mode: arm
007552ac  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007552b0  04 70 90 e5                                      ldr r7, [r0, #4]
007552b4  e8 91 9f e5                                      ldr sb, [pc, #0x1e8]
007552b8  0c d0 4d e2                                      sub sp, sp, #0xc
007552bc  00 00 57 e3                                      cmp r7, #0
007552c0  00 60 a0 e1                                      mov r6, r0
007552c4  09 90 8f e0                                      add sb, pc, sb
007552c8  53 00 00 da                                      ble #0x75541c
007552cc  d4 b1 9f e5                                      ldr fp, [pc, #0x1d4]
007552d0  00 40 a0 e3                                      mov r4, #0
007552d4  04 40 8d e5                                      str r4, [sp, #4]
007552d8  00 40 8d e5                                      str r4, [sp]
007552dc  04 a0 a0 e1                                      mov sl, r4
007552e0  00 30 96 e5                                      ldr r3, [r6]
007552e4  04 51 93 e7                                      ldr r5, [r3, r4, lsl #2]
007552e8  9b 30 d5 e5                                      ldrb r3, [r5, #0x9b]
007552ec  00 00 53 e3                                      cmp r3, #0
007552f0  4d 00 00 0a                                      beq #0x75542c
007552f4  48 80 95 e5                                      ldr r8, [r5, #0x48]
007552f8  00 10 a0 e3                                      mov r1, #0
007552fc  18 00 98 e5                                      ldr r0, [r8, #0x18]
00755300  21 e3 ee eb                                      bl #0x30df8c
00755304  00 00 50 e3                                      cmp r0, #0
00755308  04 00 00 0a                                      beq #0x755320
0075530c  1c 00 98 e5                                      ldr r0, [r8, #0x1c]
00755310  00 10 a0 e3                                      mov r1, #0
00755314  1c e3 ee eb                                      bl #0x30df8c
00755318  00 00 50 e3                                      cmp r0, #0
0075531c  42 00 00 1a                                      bne #0x75542c
00755320  00 00 5a e3                                      cmp sl, #0
00755324  0c 00 00 0a                                      beq #0x75535c
00755328  b4 39 d5 e1                                      ldrh r3, [r5, #0x94]
0075532c  00 20 9d e5                                      ldr r2, [sp]
00755330  02 00 53 e1                                      cmp r3, r2
00755334  08 00 00 da                                      ble #0x75535c
00755338  0b 30 99 e7                                      ldr r3, [sb, fp]
0075533c  00 a0 93 e5                                      ldr sl, [r3]
00755340  00 00 5a e3                                      cmp sl, #0
00755344  04 00 00 0a                                      beq #0x75535c
00755348  0a 00 a0 e1                                      mov r0, sl
0075534c  00 30 9a e5                                      ldr r3, [sl]
00755350  0f e0 a0 e1                                      mov lr, pc
00755354  90 f0 93 e5                                      ldr pc, [r3, #0x90]
00755358  00 a0 a0 e3                                      mov sl, #0
0075535c  b6 39 d5 e1                                      ldrh r3, [r5, #0x96]
00755360  00 00 53 e3                                      cmp r3, #0
00755364  34 00 00 1a                                      bne #0x75543c
00755368  00 30 95 e5                                      ldr r3, [r5]
0075536c  05 00 a0 e1                                      mov r0, r5
00755370  0f e0 a0 e1                                      mov lr, pc
00755374  20 f1 93 e5                                      ldr pc, [r3, #0x120]
00755378  b6 29 d5 e1                                      ldrh r2, [r5, #0x96]
0075537c  00 00 52 e3                                      cmp r2, #0
00755380  16 00 00 0a                                      beq #0x7553e0
00755384  0b 30 99 e7                                      ldr r3, [sb, fp]
00755388  00 30 93 e5                                      ldr r3, [r3]
0075538c  00 00 53 e3                                      cmp r3, #0
00755390  04 00 00 0a                                      beq #0x7553a8
00755394  03 00 a0 e1                                      mov r0, r3
00755398  00 30 93 e5                                      ldr r3, [r3]
0075539c  0f e0 a0 e1                                      mov lr, pc
007553a0  8c f0 93 e5                                      ldr pc, [r3, #0x8c]
007553a4  b6 29 d5 e1                                      ldrh r2, [r5, #0x96]
007553a8  04 30 9d e5                                      ldr r3, [sp, #4]
007553ac  00 20 8d e5                                      str r2, [sp]
007553b0  00 00 53 e3                                      cmp r3, #0
007553b4  1a 00 00 0a                                      beq #0x755424
007553b8  0b 30 99 e7                                      ldr r3, [sb, fp]
007553bc  00 30 93 e5                                      ldr r3, [r3]
007553c0  00 00 53 e3                                      cmp r3, #0
007553c4  16 00 00 0a                                      beq #0x755424
007553c8  03 00 a0 e1                                      mov r0, r3
007553cc  04 10 9d e5                                      ldr r1, [sp, #4]
007553d0  00 30 93 e5                                      ldr r3, [r3]
007553d4  0f e0 a0 e1                                      mov lr, pc
007553d8  30 f0 93 e5                                      ldr pc, [r3, #0x30]
007553dc  01 a0 a0 e3                                      mov sl, #1
007553e0  04 70 96 e5                                      ldr r7, [r6, #4]
007553e4  01 40 84 e2                                      add r4, r4, #1
007553e8  07 00 54 e1                                      cmp r4, r7
007553ec  bb ff ff ba                                      blt #0x7552e0
007553f0  00 00 5a e3                                      cmp sl, #0
007553f4  08 00 00 0a                                      beq #0x75541c
007553f8  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
007553fc  03 30 99 e7                                      ldr r3, [sb, r3]
00755400  00 30 93 e5                                      ldr r3, [r3]
00755404  00 00 53 e3                                      cmp r3, #0
00755408  03 00 00 0a                                      beq #0x75541c
0075540c  03 00 a0 e1                                      mov r0, r3
00755410  00 30 93 e5                                      ldr r3, [r3]
00755414  0f e0 a0 e1                                      mov lr, pc
00755418  90 f0 93 e5                                      ldr pc, [r3, #0x90]
0075541c  0c d0 8d e2                                      add sp, sp, #0xc
00755420  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00755424  04 70 96 e5                                      ldr r7, [r6, #4]
00755428  01 a0 a0 e3                                      mov sl, #1
0075542c  01 40 84 e2                                      add r4, r4, #1
00755430  07 00 54 e1                                      cmp r4, r7
00755434  a9 ff ff ba                                      blt #0x7552e0
00755438  ec ff ff ea                                      b #0x7553f0
0075543c  2c 70 85 e2                                      add r7, r5, #0x2c
00755440  07 00 a0 e1                                      mov r0, r7
00755444  85 ff ff eb                                      bl #0x755260
00755448  30 30 95 e5                                      ldr r3, [r5, #0x30]
0075544c  a0 30 93 e5                                      ldr r3, [r3, #0xa0]
00755450  00 00 53 e3                                      cmp r3, #0
00755454  00 30 a0 d3                                      movle r3, #0
00755458  04 30 8d d5                                      strle r3, [sp, #4]
0075545c  07 00 00 da                                      ble #0x755480
00755460  07 00 a0 e1                                      mov r0, r7
00755464  7d ff ff eb                                      bl #0x755260
00755468  30 30 95 e5                                      ldr r3, [r5, #0x30]
0075546c  a0 20 93 e5                                      ldr r2, [r3, #0xa0]
00755470  9c 30 93 e5                                      ldr r3, [r3, #0x9c]
00755474  01 20 42 e2                                      sub r2, r2, #1
00755478  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
0075547c  04 30 8d e5                                      str r3, [sp, #4]
00755480  0b 30 99 e7                                      ldr r3, [sb, fp]
00755484  00 30 93 e5                                      ldr r3, [r3]
00755488  00 00 53 e3                                      cmp r3, #0
0075548c  b5 ff ff 0a                                      beq #0x755368
00755490  03 00 a0 e1                                      mov r0, r3
00755494  00 30 93 e5                                      ldr r3, [r3]
00755498  0f e0 a0 e1                                      mov lr, pc
0075549c  88 f0 93 e5                                      ldr pc, [r3, #0x88]
007554a0  b0 ff ff ea                                      b #0x755368
; mapping-symbol data/literal pool
007554a4  cc f7 23 00 b4 39 00 00                          .byte 0xcc, 0xf7, 0x23, 0x00, 0xb4, 0x39, 0x00, 0x00

; FUNCTION 0x00755728, declared_size=120, range_size=120, mode=arm
; class-group: gameswf::display_list
; alias: _ZN7gameswf12display_list22change_character_depthEPNS_9characterEi
; demangled: gameswf::display_list::change_character_depth(gameswf::character*, int)
; decoder-mode: arm
00755728  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0075572c  08 d0 4d e2                                      sub sp, sp, #8
00755730  02 60 a0 e1                                      mov r6, r2
00755734  00 50 a0 e1                                      mov r5, r0
00755738  01 70 a0 e1                                      mov r7, r1
0075573c  1f fe ff eb                                      bl #0x754fc0
00755740  08 40 8d e2                                      add r4, sp, #8
00755744  00 30 a0 e3                                      mov r3, #0
00755748  04 30 24 e5                                      str r3, [r4, #-4]!
0075574c  00 80 a0 e1                                      mov r8, r0
00755750  07 10 a0 e1                                      mov r1, r7
00755754  04 00 a0 e1                                      mov r0, r4
00755758  b4 69 c7 e1                                      strh r6, [r7, #0x94]
0075575c  8a fe ff eb                                      bl #0x75518c
00755760  05 00 a0 e1                                      mov r0, r5
00755764  08 10 a0 e1                                      mov r1, r8
00755768  b5 ff ff eb                                      bl #0x755644
0075576c  06 10 a0 e1                                      mov r1, r6
00755770  05 00 a0 e1                                      mov r0, r5
00755774  c1 fd ff eb                                      bl #0x754e80
00755778  04 20 a0 e1                                      mov r2, r4
0075577c  00 10 a0 e1                                      mov r1, r0
00755780  05 00 a0 e1                                      mov r0, r5
00755784  cb ff ff eb                                      bl #0x7556b8
00755788  04 00 9d e5                                      ldr r0, [sp, #4]
0075578c  00 00 50 e3                                      cmp r0, #0
00755790  00 00 00 0a                                      beq #0x755798
00755794  a9 12 00 eb                                      bl #0x75a240
00755798  08 d0 8d e2                                      add sp, sp, #8
0075579c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00755908, declared_size=264, range_size=264, mode=arm
; class-group: gameswf::display_list
; alias: _ZN7gameswf12display_list7advanceEf
; demangled: gameswf::display_list::advance(float)
; decoder-mode: arm
00755908  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0075590c  04 30 90 e5                                      ldr r3, [r0, #4]
00755910  0c d0 4d e2                                      sub sp, sp, #0xc
00755914  00 90 a0 e1                                      mov sb, r0
00755918  00 00 53 e3                                      cmp r3, #0
0075591c  01 a0 a0 e1                                      mov sl, r1
00755920  38 00 00 da                                      ble #0x755a08
00755924  00 30 90 e5                                      ldr r3, [r0]
00755928  00 40 93 e5                                      ldr r4, [r3]
0075592c  2c 00 84 e2                                      add r0, r4, #0x2c
00755930  4a fe ff eb                                      bl #0x755260
00755934  04 70 99 e5                                      ldr r7, [sb, #4]
00755938  30 60 94 e5                                      ldr r6, [r4, #0x30]
0075593c  01 50 57 e2                                      subs r5, r7, #1
00755940  1c 80 86 e2                                      add r8, r6, #0x1c
00755944  0c 00 00 4a                                      bmi #0x75597c
00755948  05 51 a0 e1                                      lsl r5, r5, #2
0075594c  00 40 a0 e3                                      mov r4, #0
00755950  04 b0 8d e2                                      add fp, sp, #4
00755954  00 30 99 e5                                      ldr r3, [sb]
00755958  01 40 84 e2                                      add r4, r4, #1
0075595c  08 00 a0 e1                                      mov r0, r8
00755960  05 30 93 e7                                      ldr r3, [r3, r5]
00755964  0b 10 a0 e1                                      mov r1, fp
00755968  04 50 45 e2                                      sub r5, r5, #4
0075596c  04 30 8d e5                                      str r3, [sp, #4]
00755970  a9 ff ff eb                                      bl #0x75581c
00755974  07 00 54 e1                                      cmp r4, r7
00755978  f5 ff ff 1a                                      bne #0x755954
0075597c  00 00 57 e3                                      cmp r7, #0
00755980  20 00 00 da                                      ble #0x755a08
00755984  00 50 a0 e3                                      mov r5, #0
00755988  05 90 a0 e1                                      mov sb, r5
0075598c  03 00 00 ea                                      b #0x7559a0
00755990  08 00 a0 e1                                      mov r0, r8
00755994  b4 ff ff eb                                      bl #0x75586c
00755998  07 00 55 e1                                      cmp r5, r7
0075599c  16 00 00 0a                                      beq #0x7559fc
007559a0  20 10 96 e5                                      ldr r1, [r6, #0x20]
007559a4  1c 30 96 e5                                      ldr r3, [r6, #0x1c]
007559a8  01 50 85 e2                                      add r5, r5, #1
007559ac  01 10 41 e2                                      sub r1, r1, #1
007559b0  01 41 93 e7                                      ldr r4, [r3, r1, lsl #2]
007559b4  00 00 54 e3                                      cmp r4, #0
007559b8  f4 ff ff 0a                                      beq #0x755990
007559bc  9d 30 d4 e5                                      ldrb r3, [r4, #0x9d]
007559c0  00 00 53 e3                                      cmp r3, #0
007559c4  f1 ff ff 0a                                      beq #0x755990
007559c8  04 00 a0 e1                                      mov r0, r4
007559cc  0a 10 a0 e1                                      mov r1, sl
007559d0  00 30 94 e5                                      ldr r3, [r4]
007559d4  0f e0 a0 e1                                      mov lr, pc
007559d8  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
007559dc  20 10 96 e5                                      ldr r1, [r6, #0x20]
007559e0  9d 30 d4 e5                                      ldrb r3, [r4, #0x9d]
007559e4  08 00 a0 e1                                      mov r0, r8
007559e8  01 10 41 e2                                      sub r1, r1, #1
007559ec  03 90 89 e1                                      orr sb, sb, r3
007559f0  9d ff ff eb                                      bl #0x75586c
007559f4  07 00 55 e1                                      cmp r5, r7
007559f8  e8 ff ff 1a                                      bne #0x7559a0
007559fc  09 00 a0 e1                                      mov r0, sb
00755a00  0c d0 8d e2                                      add sp, sp, #0xc
00755a04  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00755a08  00 90 a0 e3                                      mov sb, #0
00755a0c  fa ff ff ea                                      b #0x7559fc

; FUNCTION 0x00755a10, declared_size=200, range_size=200, mode=arm
; class-group: gameswf::display_list
; alias: _ZN7gameswf12display_list9constructEv
; demangled: gameswf::display_list::construct()
; decoder-mode: arm
00755a10  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00755a14  04 30 90 e5                                      ldr r3, [r0, #4]
00755a18  08 d0 4d e2                                      sub sp, sp, #8
00755a1c  00 a0 a0 e1                                      mov sl, r0
00755a20  00 00 53 e3                                      cmp r3, #0
00755a24  29 00 00 da                                      ble #0x755ad0
00755a28  00 30 90 e5                                      ldr r3, [r0]
00755a2c  00 40 93 e5                                      ldr r4, [r3]
00755a30  2c 00 84 e2                                      add r0, r4, #0x2c
00755a34  09 fe ff eb                                      bl #0x755260
00755a38  04 70 9a e5                                      ldr r7, [sl, #4]
00755a3c  30 60 94 e5                                      ldr r6, [r4, #0x30]
00755a40  01 50 57 e2                                      subs r5, r7, #1
00755a44  1c 80 86 e2                                      add r8, r6, #0x1c
00755a48  0c 00 00 4a                                      bmi #0x755a80
00755a4c  05 51 a0 e1                                      lsl r5, r5, #2
00755a50  00 40 a0 e3                                      mov r4, #0
00755a54  04 90 8d e2                                      add sb, sp, #4
00755a58  00 30 9a e5                                      ldr r3, [sl]
00755a5c  01 40 84 e2                                      add r4, r4, #1
00755a60  08 00 a0 e1                                      mov r0, r8
00755a64  05 30 93 e7                                      ldr r3, [r3, r5]
00755a68  09 10 a0 e1                                      mov r1, sb
00755a6c  04 50 45 e2                                      sub r5, r5, #4
00755a70  04 30 8d e5                                      str r3, [sp, #4]
00755a74  68 ff ff eb                                      bl #0x75581c
00755a78  07 00 54 e1                                      cmp r4, r7
00755a7c  f5 ff ff 1a                                      bne #0x755a58
00755a80  00 00 57 e3                                      cmp r7, #0
00755a84  11 00 00 da                                      ble #0x755ad0
00755a88  00 40 a0 e3                                      mov r4, #0
00755a8c  20 10 96 e5                                      ldr r1, [r6, #0x20]
00755a90  1c 30 96 e5                                      ldr r3, [r6, #0x1c]
00755a94  01 40 84 e2                                      add r4, r4, #1
00755a98  01 10 41 e2                                      sub r1, r1, #1
00755a9c  01 31 93 e7                                      ldr r3, [r3, r1, lsl #2]
00755aa0  00 00 53 e3                                      cmp r3, #0
00755aa4  05 00 00 0a                                      beq #0x755ac0
00755aa8  03 00 a0 e1                                      mov r0, r3
00755aac  00 30 93 e5                                      ldr r3, [r3]
00755ab0  0f e0 a0 e1                                      mov lr, pc
00755ab4  48 f1 93 e5                                      ldr pc, [r3, #0x148]
00755ab8  20 10 96 e5                                      ldr r1, [r6, #0x20]
00755abc  01 10 41 e2                                      sub r1, r1, #1
00755ac0  08 00 a0 e1                                      mov r0, r8
00755ac4  68 ff ff eb                                      bl #0x75586c
00755ac8  07 00 54 e1                                      cmp r4, r7
00755acc  ee ff ff 1a                                      bne #0x755a8c
00755ad0  08 d0 8d e2                                      add sp, sp, #8
00755ad4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00755b68, declared_size=72, range_size=72, mode=arm
; class-group: gameswf::display_list
; alias: _ZN7gameswf12display_list24remove_keypress_listenerEPNS_9characterE
; demangled: gameswf::display_list::remove_keypress_listener(gameswf::character*)
; decoder-mode: arm
00755b68  10 40 2d e9                                      push {r4, lr}
00755b6c  00 40 51 e2                                      subs r4, r1, #0
00755b70  0d 00 00 0a                                      beq #0x755bac
00755b74  00 30 94 e5                                      ldr r3, [r4]
00755b78  04 00 a0 e1                                      mov r0, r4
00755b7c  0f e0 a0 e1                                      mov lr, pc
00755b80  54 f0 93 e5                                      ldr pc, [r3, #0x54]
00755b84  00 00 50 e3                                      cmp r0, #0
00755b88  07 00 00 0a                                      beq #0x755bac
00755b8c  00 30 94 e5                                      ldr r3, [r4]
00755b90  04 00 a0 e1                                      mov r0, r4
00755b94  0f e0 a0 e1                                      mov lr, pc
00755b98  54 f0 93 e5                                      ldr pc, [r3, #0x54]
00755b9c  04 10 a0 e1                                      mov r1, r4
00755ba0  a8 00 80 e2                                      add r0, r0, #0xa8
00755ba4  10 40 bd e8                                      pop {r4, lr}
00755ba8  a5 2c 00 ea                                      b #0x760e44
00755bac  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00755bb0, declared_size=92, range_size=92, mode=arm
; class-group: gameswf::display_list
; alias: _ZN7gameswf12display_list21add_keypress_listenerEPNS_9characterE
; demangled: gameswf::display_list::add_keypress_listener(gameswf::character*)
; decoder-mode: arm
00755bb0  10 40 2d e9                                      push {r4, lr}
00755bb4  01 00 a0 e1                                      mov r0, r1
00755bb8  00 30 91 e5                                      ldr r3, [r1]
00755bbc  01 40 a0 e1                                      mov r4, r1
00755bc0  0f e0 a0 e1                                      mov lr, pc
00755bc4  58 f1 93 e5                                      ldr pc, [r3, #0x158]
00755bc8  00 00 50 e3                                      cmp r0, #0
00755bcc  00 00 00 1a                                      bne #0x755bd4
00755bd0  10 80 bd e8                                      pop {r4, pc}
00755bd4  00 30 94 e5                                      ldr r3, [r4]
00755bd8  04 00 a0 e1                                      mov r0, r4
00755bdc  0f e0 a0 e1                                      mov lr, pc
00755be0  54 f0 93 e5                                      ldr pc, [r3, #0x54]
00755be4  00 00 50 e3                                      cmp r0, #0
00755be8  f8 ff ff 0a                                      beq #0x755bd0
00755bec  00 30 94 e5                                      ldr r3, [r4]
00755bf0  04 00 a0 e1                                      mov r0, r4
00755bf4  0f e0 a0 e1                                      mov lr, pc
00755bf8  54 f0 93 e5                                      ldr pc, [r3, #0x54]
00755bfc  04 10 a0 e1                                      mov r1, r4
00755c00  a8 00 80 e2                                      add r0, r0, #0xa8
00755c04  10 40 bd e8                                      pop {r4, lr}
00755c08  cf 2c 00 ea                                      b #0x760f4c

; FUNCTION 0x00755c0c, declared_size=236, range_size=236, mode=arm
; class-group: gameswf::display_list
; alias: _ZN7gameswf12display_list19move_display_objectEiPKNS_6cxformEPKNS_6matrixEPKNS_6effectEft
; demangled: gameswf::display_list::move_display_object(int, gameswf::cxform const*, gameswf::matrix const*, gameswf::effect const*, float, unsigned short)
; decoder-mode: arm
00755c0c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00755c10  04 40 90 e5                                      ldr r4, [r0, #4]
00755c14  00 50 a0 e1                                      mov r5, r0
00755c18  02 60 a0 e1                                      mov r6, r2
00755c1c  00 00 54 e3                                      cmp r4, #0
00755c20  03 a0 a0 e1                                      mov sl, r3
00755c24  01 70 a0 e1                                      mov r7, r1
00755c28  20 80 9d e5                                      ldr r8, [sp, #0x20]
00755c2c  24 90 9d e5                                      ldr sb, [sp, #0x24]
00755c30  2a 00 00 da                                      ble #0x755ce0
00755c34  91 fc ff eb                                      bl #0x754e80
00755c38  04 00 50 e1                                      cmp r0, r4
00755c3c  00 40 a0 b3                                      movlt r4, #0
00755c40  01 40 a0 a3                                      movge r4, #1
00755c44  a0 4f 94 e1                                      orrs r4, r4, r0, lsr #31
00755c48  23 00 00 1a                                      bne #0x755cdc
00755c4c  00 30 95 e5                                      ldr r3, [r5]
00755c50  00 41 93 e7                                      ldr r4, [r3, r0, lsl #2]
00755c54  b4 39 d4 e1                                      ldrh r3, [r4, #0x94]
00755c58  03 00 57 e1                                      cmp r7, r3
00755c5c  04 00 00 0a                                      beq #0x755c74
00755c60  88 00 9f e5                                      ldr r0, [pc, #0x88]
00755c64  07 10 a0 e1                                      mov r1, r7
00755c68  00 00 8f e0                                      add r0, pc, r0
00755c6c  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
00755c70  43 2d 00 ea                                      b #0x761184
00755c74  00 30 94 e5                                      ldr r3, [r4]
00755c78  04 00 a0 e1                                      mov r0, r4
00755c7c  0f e0 a0 e1                                      mov lr, pc
00755c80  50 f1 93 e5                                      ldr pc, [r3, #0x150]
00755c84  00 00 50 e3                                      cmp r0, #0
00755c88  13 00 00 0a                                      beq #0x755cdc
00755c8c  00 00 56 e3                                      cmp r6, #0
00755c90  04 00 00 0a                                      beq #0x755ca8
00755c94  48 30 94 e5                                      ldr r3, [r4, #0x48]
00755c98  03 00 56 e1                                      cmp r6, r3
00755c9c  01 30 a0 13                                      movne r3, #1
00755ca0  48 60 84 15                                      strne r6, [r4, #0x48]
00755ca4  9a 30 c4 15                                      strbne r3, [r4, #0x9a]
00755ca8  00 00 5a e3                                      cmp sl, #0
00755cac  04 00 00 0a                                      beq #0x755cc4
00755cb0  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
00755cb4  03 00 5a e1                                      cmp sl, r3
00755cb8  01 30 a0 13                                      movne r3, #1
00755cbc  4c a0 84 15                                      strne sl, [r4, #0x4c]
00755cc0  99 30 c4 15                                      strbne r3, [r4, #0x99]
00755cc4  00 00 58 e3                                      cmp r8, #0
00755cc8  02 00 00 0a                                      beq #0x755cd8
00755ccc  50 30 94 e5                                      ldr r3, [r4, #0x50]
00755cd0  03 00 58 e1                                      cmp r8, r3
00755cd4  50 80 84 15                                      strne r8, [r4, #0x50]
00755cd8  90 90 84 e5                                      str sb, [r4, #0x90]
00755cdc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00755ce0  0c 00 9f e5                                      ldr r0, [pc, #0xc]
00755ce4  00 00 8f e0                                      add r0, pc, r0
00755ce8  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
00755cec  24 2d 00 ea                                      b #0x761184
; mapping-symbol data/literal pool
00755cf0  a8 2c 1b 00 ec 2b 1b 00                          .byte 0xa8, 0x2c, 0x1b, 0x00, 0xec, 0x2b, 0x1b, 0x00

; FUNCTION 0x00755f58, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::display_list
; alias: _ZN7gameswf12display_list23get_character_by_name_iERKNS_10tu_stringiE
; demangled: gameswf::display_list::get_character_by_name_i(gameswf::tu_stringi const&)
; decoder-mode: arm
00755f58  10 40 2d e9                                      push {r4, lr}
00755f5c  08 d0 4d e2                                      sub sp, sp, #8
00755f60  08 30 8d e2                                      add r3, sp, #8
00755f64  04 10 23 e5                                      str r1, [r3, #-4]!
00755f68  00 40 a0 e1                                      mov r4, r0
00755f6c  03 10 a0 e1                                      mov r1, r3
00755f70  10 00 80 e2                                      add r0, r0, #0x10
00755f74  89 ff ff eb                                      bl #0x755da0
00755f78  00 00 50 e3                                      cmp r0, #0
00755f7c  10 30 94 a5                                      ldrge r3, [r4, #0x10]
00755f80  00 00 a0 b3                                      movlt r0, #0
00755f84  00 02 83 a0                                      addge r0, r3, r0, lsl #4
00755f88  14 00 90 a5                                      ldrge r0, [r0, #0x14]
00755f8c  08 d0 8d e2                                      add sp, sp, #8
00755f90  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007562e8, declared_size=272, range_size=272, mode=arm
; class-group: gameswf::display_list
; alias: _ZN7gameswf12display_list6removeEi
; demangled: gameswf::display_list::remove(int)
; decoder-mode: arm
007562e8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007562ec  00 50 90 e5                                      ldr r5, [r0]
007562f0  18 d0 4d e2                                      sub sp, sp, #0x18
007562f4  01 40 a0 e1                                      mov r4, r1
007562f8  01 31 95 e7                                      ldr r3, [r5, r1, lsl #2]
007562fc  00 70 a0 e1                                      mov r7, r0
00756300  01 81 85 e0                                      add r8, r5, r1, lsl #2
00756304  03 00 a0 e1                                      mov r0, r3
00756308  00 30 93 e5                                      ldr r3, [r3]
0075630c  0f e0 a0 e1                                      mov lr, pc
00756310  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00756314  04 01 95 e7                                      ldr r0, [r5, r4, lsl #2]
00756318  00 60 a0 e3                                      mov r6, #0
0075631c  15 20 a0 e3                                      mov r2, #0x15
00756320  00 30 90 e5                                      ldr r3, [r0]
00756324  0c 10 8d e2                                      add r1, sp, #0xc
00756328  2c 30 93 e5                                      ldr r3, [r3, #0x2c]
0075632c  0c 20 cd e5                                      strb r2, [sp, #0xc]
00756330  0d 60 cd e5                                      strb r6, [sp, #0xd]
00756334  be 60 cd e1                                      strh r6, [sp, #0xe]
00756338  10 60 8d e5                                      str r6, [sp, #0x10]
0075633c  33 ff 2f e1                                      blx r3
00756340  04 01 95 e7                                      ldr r0, [r5, r4, lsl #2]
00756344  0b 20 a0 e3                                      mov r2, #0xb
00756348  04 10 8d e2                                      add r1, sp, #4
0075634c  00 30 90 e5                                      ldr r3, [r0]
00756350  2c 30 93 e5                                      ldr r3, [r3, #0x2c]
00756354  04 20 cd e5                                      strb r2, [sp, #4]
00756358  05 60 cd e5                                      strb r6, [sp, #5]
0075635c  b6 60 cd e1                                      strh r6, [sp, #6]
00756360  08 60 8d e5                                      str r6, [sp, #8]
00756364  33 ff 2f e1                                      blx r3
00756368  04 31 95 e7                                      ldr r3, [r5, r4, lsl #2]
0075636c  07 00 a0 e1                                      mov r0, r7
00756370  b4 69 c3 e1                                      strh r6, [r3, #0x94]
00756374  04 11 95 e7                                      ldr r1, [r5, r4, lsl #2]
00756378  fa fd ff eb                                      bl #0x755b68
0075637c  04 61 95 e7                                      ldr r6, [r5, r4, lsl #2]
00756380  00 00 56 e3                                      cmp r6, #0
00756384  06 30 a0 01                                      moveq r3, r6
00756388  02 00 00 0a                                      beq #0x756398
0075638c  06 00 a0 e1                                      mov r0, r6
00756390  33 0e 00 eb                                      bl #0x759c64
00756394  04 31 95 e7                                      ldr r3, [r5, r4, lsl #2]
00756398  44 30 93 e5                                      ldr r3, [r3, #0x44]
0075639c  18 10 8d e2                                      add r1, sp, #0x18
007563a0  10 00 87 e2                                      add r0, r7, #0x10
007563a4  04 30 21 e5                                      str r3, [r1, #-4]!
007563a8  d4 fe ff eb                                      bl #0x755f00
007563ac  08 00 a0 e1                                      mov r0, r8
007563b0  00 10 a0 e3                                      mov r1, #0
007563b4  74 fb ff eb                                      bl #0x75518c
007563b8  07 00 a0 e1                                      mov r0, r7
007563bc  04 10 a0 e1                                      mov r1, r4
007563c0  9f fc ff eb                                      bl #0x755644
007563c4  04 30 96 e5                                      ldr r3, [r6, #4]
007563c8  02 00 53 e3                                      cmp r3, #2
007563cc  03 00 00 da                                      ble #0x7563e0
007563d0  06 00 a0 e1                                      mov r0, r6
007563d4  99 0f 00 eb                                      bl #0x75a240
007563d8  18 d0 8d e2                                      add sp, sp, #0x18
007563dc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007563e0  2c 00 86 e2                                      add r0, r6, #0x2c
007563e4  9d fb ff eb                                      bl #0x755260
007563e8  30 00 96 e5                                      ldr r0, [r6, #0x30]
007563ec  06 10 a0 e1                                      mov r1, r6
007563f0  9c 73 00 eb                                      bl #0x773268
007563f4  f5 ff ff ea                                      b #0x7563d0

; FUNCTION 0x007563f8, declared_size=132, range_size=132, mode=arm
; class-group: gameswf::display_list
; alias: _ZN7gameswf12display_list16clear_unaffectedERNS_5arrayIiEE
; demangled: gameswf::display_list::clear_unaffected(gameswf::array<int>&)
; decoder-mode: arm
007563f8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007563fc  04 70 90 e5                                      ldr r7, [r0, #4]
00756400  00 60 a0 e1                                      mov r6, r0
00756404  01 50 a0 e1                                      mov r5, r1
00756408  00 40 a0 e3                                      mov r4, #0
0075640c  07 00 54 e1                                      cmp r4, r7
00756410  13 00 00 aa                                      bge #0x756464
00756414  00 30 96 e5                                      ldr r3, [r6]
00756418  04 10 95 e5                                      ldr r1, [r5, #4]
0075641c  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
00756420  00 00 51 e3                                      cmp r1, #0
00756424  b4 09 d3 e1                                      ldrh r0, [r3, #0x94]
00756428  0e 00 00 da                                      ble #0x756468
0075642c  00 c0 95 e5                                      ldr ip, [r5]
00756430  00 30 9c e5                                      ldr r3, [ip]
00756434  03 00 50 e1                                      cmp r0, r3
00756438  00 30 a0 13                                      movne r3, #0
0075643c  05 00 00 0a                                      beq #0x756458
00756440  01 30 83 e2                                      add r3, r3, #1
00756444  01 00 53 e1                                      cmp r3, r1
00756448  06 00 00 0a                                      beq #0x756468
0075644c  03 21 9c e7                                      ldr r2, [ip, r3, lsl #2]
00756450  02 00 50 e1                                      cmp r0, r2
00756454  f9 ff ff 1a                                      bne #0x756440
00756458  01 40 84 e2                                      add r4, r4, #1
0075645c  07 00 54 e1                                      cmp r4, r7
00756460  eb ff ff ba                                      blt #0x756414
00756464  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00756468  06 00 a0 e1                                      mov r0, r6
0075646c  04 10 a0 e1                                      mov r1, r4
00756470  9c ff ff eb                                      bl #0x7562e8
00756474  04 70 96 e5                                      ldr r7, [r6, #4]
00756478  e3 ff ff ea                                      b #0x75640c

; FUNCTION 0x0075647c, declared_size=48, range_size=48, mode=arm
; class-group: gameswf::display_list
; alias: _ZN7gameswf12display_list5clearEv
; demangled: gameswf::display_list::clear()
; decoder-mode: arm
0075647c  10 40 2d e9                                      push {r4, lr}
00756480  04 30 90 e5                                      ldr r3, [r0, #4]
00756484  00 40 a0 e1                                      mov r4, r0
00756488  00 00 53 e3                                      cmp r3, #0
0075648c  05 00 00 da                                      ble #0x7564a8
00756490  04 00 a0 e1                                      mov r0, r4
00756494  00 10 a0 e3                                      mov r1, #0
00756498  92 ff ff eb                                      bl #0x7562e8
0075649c  04 30 94 e5                                      ldr r3, [r4, #4]
007564a0  00 00 53 e3                                      cmp r3, #0
007564a4  f9 ff ff ca                                      bgt #0x756490
007564a8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007564ac, declared_size=184, range_size=184, mode=arm
; class-group: gameswf::display_list
; alias: _ZN7gameswf12display_list21remove_display_objectEii
; demangled: gameswf::display_list::remove_display_object(int, int)
; decoder-mode: arm
007564ac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007564b0  04 40 90 e5                                      ldr r4, [r0, #4]
007564b4  00 50 a0 e1                                      mov r5, r0
007564b8  02 60 a0 e1                                      mov r6, r2
007564bc  00 00 54 e3                                      cmp r4, #0
007564c0  01 70 a0 e1                                      mov r7, r1
007564c4  0b 00 00 da                                      ble #0x7564f8
007564c8  6c fa ff eb                                      bl #0x754e80
007564cc  04 00 50 e1                                      cmp r0, r4
007564d0  00 20 a0 b3                                      movlt r2, #0
007564d4  01 20 a0 a3                                      movge r2, #1
007564d8  a0 2f 92 e1                                      orrs r2, r2, r0, lsr #31
007564dc  00 30 a0 e1                                      mov r3, r0
007564e0  04 00 00 1a                                      bne #0x7564f8
007564e4  00 80 95 e5                                      ldr r8, [r5]
007564e8  00 21 98 e7                                      ldr r2, [r8, r0, lsl #2]
007564ec  b4 19 d2 e1                                      ldrh r1, [r2, #0x94]
007564f0  07 00 51 e1                                      cmp r1, r7
007564f4  00 00 00 0a                                      beq #0x7564fc
007564f8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007564fc  01 00 76 e3                                      cmn r6, #1
00756500  01 00 80 12                                      addne r0, r0, #1
00756504  00 01 a0 11                                      lslne r0, r0, #2
00756508  10 00 00 0a                                      beq #0x756550
0075650c  38 20 92 e5                                      ldr r2, [r2, #0x38]
00756510  02 00 56 e1                                      cmp r6, r2
00756514  0d 00 00 0a                                      beq #0x756550
00756518  01 30 83 e2                                      add r3, r3, #1
0075651c  04 00 53 e1                                      cmp r3, r4
00756520  04 00 00 ba                                      blt #0x756538
00756524  34 00 9f e5                                      ldr r0, [pc, #0x34]
00756528  06 20 a0 e1                                      mov r2, r6
0075652c  00 00 8f e0                                      add r0, pc, r0
00756530  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00756534  12 2b 00 ea                                      b #0x761184
00756538  00 20 98 e7                                      ldr r2, [r8, r0]
0075653c  04 00 80 e2                                      add r0, r0, #4
00756540  b4 c9 d2 e1                                      ldrh ip, [r2, #0x94]
00756544  0c 00 51 e1                                      cmp r1, ip
00756548  f5 ff ff 1a                                      bne #0x756524
0075654c  ee ff ff ea                                      b #0x75650c
00756550  05 00 a0 e1                                      mov r0, r5
00756554  03 10 a0 e1                                      mov r1, r3
00756558  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0075655c  61 ff ff ea                                      b #0x7562e8
; mapping-symbol data/literal pool
00756560  1c 24 1b 00                                      .byte 0x1c, 0x24, 0x1b, 0x00

; FUNCTION 0x00756564, declared_size=36, range_size=36, mode=arm
; class-group: gameswf::display_list
; alias: _ZN7gameswf12display_list21remove_display_objectEPNS_9characterE
; demangled: gameswf::display_list::remove_display_object(gameswf::character*)
; decoder-mode: arm
00756564  10 40 2d e9                                      push {r4, lr}
00756568  00 40 a0 e1                                      mov r4, r0
0075656c  93 fa ff eb                                      bl #0x754fc0
00756570  00 10 50 e2                                      subs r1, r0, #0
00756574  02 00 00 ba                                      blt #0x756584
00756578  04 00 a0 e1                                      mov r0, r4
0075657c  10 40 bd e8                                      pop {r4, lr}
00756580  58 ff ff ea                                      b #0x7562e8
00756584  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00756588, declared_size=580, range_size=580, mode=arm
; class-group: gameswf::display_list
; alias: _ZN7gameswf12display_list18add_display_objectEPNS_9characterEibPKNS_6cxformEPKNS_6matrixEPKNS_6effectEft
; demangled: gameswf::display_list::add_display_object(gameswf::character*, int, bool, gameswf::cxform const*, gameswf::matrix const*, gameswf::effect const*, float, unsigned short)
; decoder-mode: arm
00756588  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0075658c  1c d0 4d e2                                      sub sp, sp, #0x1c
00756590  02 70 a0 e1                                      mov r7, r2
00756594  01 40 a0 e1                                      mov r4, r1
00756598  02 10 a0 e1                                      mov r1, r2
0075659c  b0 25 dd e1                                      ldrh r2, [sp, #0x50]
007565a0  03 80 a0 e1                                      mov r8, r3
007565a4  00 50 a0 e1                                      mov r5, r0
007565a8  00 20 8d e5                                      str r2, [sp]
007565ac  04 30 90 e5                                      ldr r3, [r0, #4]
007565b0  40 90 9d e5                                      ldr sb, [sp, #0x40]
007565b4  44 a0 9d e5                                      ldr sl, [sp, #0x44]
007565b8  04 30 8d e5                                      str r3, [sp, #4]
007565bc  2f fa ff eb                                      bl #0x754e80
007565c0  f4 61 9f e5                                      ldr r6, [pc, #0x1f4]
007565c4  00 00 58 e3                                      cmp r8, #0
007565c8  00 b0 a0 e1                                      mov fp, r0
007565cc  06 60 8f e0                                      add r6, pc, r6
007565d0  07 00 00 0a                                      beq #0x7565f4
007565d4  04 10 9d e5                                      ldr r1, [sp, #4]
007565d8  01 00 50 e1                                      cmp r0, r1
007565dc  00 30 a0 a3                                      movge r3, #0
007565e0  01 30 a0 b3                                      movlt r3, #1
007565e4  00 00 50 e3                                      cmp r0, #0
007565e8  00 30 a0 b3                                      movlt r3, #0
007565ec  00 00 53 e3                                      cmp r3, #0
007565f0  50 00 00 1a                                      bne #0x756738
007565f4  00 30 a0 e3                                      mov r3, #0
007565f8  18 80 8d e2                                      add r8, sp, #0x18
007565fc  04 30 28 e5                                      str r3, [r8, #-4]!
00756600  77 70 ff e6                                      uxth r7, r7
00756604  b4 79 c4 e1                                      strh r7, [r4, #0x94]
00756608  08 00 a0 e1                                      mov r0, r8
0075660c  04 10 a0 e1                                      mov r1, r4
00756610  dd fa ff eb                                      bl #0x75518c
00756614  14 30 9d e5                                      ldr r3, [sp, #0x14]
00756618  00 00 59 e3                                      cmp sb, #0
0075661c  b4 79 c3 e1                                      strh r7, [r3, #0x94]
00756620  14 30 9d e5                                      ldr r3, [sp, #0x14]
00756624  4c 00 00 0a                                      beq #0x75675c
00756628  48 20 93 e5                                      ldr r2, [r3, #0x48]
0075662c  02 00 59 e1                                      cmp sb, r2
00756630  01 20 a0 13                                      movne r2, #1
00756634  9a 20 c3 15                                      strbne r2, [r3, #0x9a]
00756638  48 90 83 15                                      strne sb, [r3, #0x48]
0075663c  14 30 9d 15                                      ldrne r3, [sp, #0x14]
00756640  00 00 5a e3                                      cmp sl, #0
00756644  4e 00 00 0a                                      beq #0x756784
00756648  4c 20 93 e5                                      ldr r2, [r3, #0x4c]
0075664c  02 00 5a e1                                      cmp sl, r2
00756650  01 20 a0 13                                      movne r2, #1
00756654  99 20 c3 15                                      strbne r2, [r3, #0x99]
00756658  4c a0 83 15                                      strne sl, [r3, #0x4c]
0075665c  14 30 9d 15                                      ldrne r3, [sp, #0x14]
00756660  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
00756664  90 20 83 e5                                      str r2, [r3, #0x90]
00756668  48 20 9d e5                                      ldr r2, [sp, #0x48]
0075666c  14 30 9d e5                                      ldr r3, [sp, #0x14]
00756670  00 10 9d e5                                      ldr r1, [sp]
00756674  00 00 52 e3                                      cmp r2, #0
00756678  b6 19 c3 e1                                      strh r1, [r3, #0x96]
0075667c  14 30 9d e5                                      ldr r3, [sp, #0x14]
00756680  42 00 00 0a                                      beq #0x756790
00756684  50 20 93 e5                                      ldr r2, [r3, #0x50]
00756688  48 10 9d e5                                      ldr r1, [sp, #0x48]
0075668c  05 00 a0 e1                                      mov r0, r5
00756690  02 00 51 e1                                      cmp r1, r2
00756694  50 10 83 15                                      strne r1, [r3, #0x50]
00756698  08 20 a0 e1                                      mov r2, r8
0075669c  0b 10 a0 e1                                      mov r1, fp
007566a0  04 fc ff eb                                      bl #0x7556b8
007566a4  14 30 9d e5                                      ldr r3, [sp, #0x14]
007566a8  44 30 93 e5                                      ldr r3, [r3, #0x44]
007566ac  10 30 8d e5                                      str r3, [sp, #0x10]
007566b0  d0 20 d3 e1                                      ldrsb r2, [r3]
007566b4  01 00 72 e3                                      cmn r2, #1
007566b8  04 20 93 05                                      ldreq r2, [r3, #4]
007566bc  01 20 42 e2                                      sub r2, r2, #1
007566c0  00 00 52 e3                                      cmp r2, #0
007566c4  0c 00 00 da                                      ble #0x7566fc
007566c8  10 70 85 e2                                      add r7, r5, #0x10
007566cc  10 60 8d e2                                      add r6, sp, #0x10
007566d0  07 00 a0 e1                                      mov r0, r7
007566d4  06 10 a0 e1                                      mov r1, r6
007566d8  b0 fd ff eb                                      bl #0x755da0
007566dc  00 00 50 e3                                      cmp r0, #0
007566e0  2e 00 00 ba                                      blt #0x7567a0
007566e4  10 30 95 e5                                      ldr r3, [r5, #0x10]
007566e8  00 00 53 e3                                      cmp r3, #0
007566ec  2b 00 00 0a                                      beq #0x7567a0
007566f0  04 30 93 e5                                      ldr r3, [r3, #4]
007566f4  03 00 50 e1                                      cmp r0, r3
007566f8  28 00 00 ca                                      bgt #0x7567a0
007566fc  00 10 a0 e3                                      mov r1, #0
00756700  01 20 a0 e1                                      mov r2, r1
00756704  00 30 94 e5                                      ldr r3, [r4]
00756708  04 00 a0 e1                                      mov r0, r4
0075670c  0f e0 a0 e1                                      mov lr, pc
00756710  c8 f0 93 e5                                      ldr pc, [r3, #0xc8]
00756714  05 00 a0 e1                                      mov r0, r5
00756718  04 10 a0 e1                                      mov r1, r4
0075671c  23 fd ff eb                                      bl #0x755bb0
00756720  14 00 9d e5                                      ldr r0, [sp, #0x14]
00756724  00 00 50 e3                                      cmp r0, #0
00756728  00 00 00 0a                                      beq #0x756730
0075672c  c3 0e 00 eb                                      bl #0x75a240
00756730  1c d0 8d e2                                      add sp, sp, #0x1c
00756734  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00756738  00 30 95 e5                                      ldr r3, [r5]
0075673c  00 31 93 e7                                      ldr r3, [r3, r0, lsl #2]
00756740  b4 39 d3 e1                                      ldrh r3, [r3, #0x94]
00756744  03 00 57 e1                                      cmp r7, r3
00756748  a9 ff ff 1a                                      bne #0x7565f4
0075674c  05 00 a0 e1                                      mov r0, r5
00756750  0b 10 a0 e1                                      mov r1, fp
00756754  e3 fe ff eb                                      bl #0x7562e8
00756758  a5 ff ff ea                                      b #0x7565f4
0075675c  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
00756760  02 90 96 e7                                      ldr sb, [r6, r2]
00756764  48 20 93 e5                                      ldr r2, [r3, #0x48]
00756768  02 00 59 e1                                      cmp sb, r2
0075676c  01 20 a0 13                                      movne r2, #1
00756770  9a 20 c3 15                                      strbne r2, [r3, #0x9a]
00756774  48 90 83 15                                      strne sb, [r3, #0x48]
00756778  14 30 9d 15                                      ldrne r3, [sp, #0x14]
0075677c  00 00 5a e3                                      cmp sl, #0
00756780  b0 ff ff 1a                                      bne #0x756648
00756784  38 20 9f e5                                      ldr r2, [pc, #0x38]
00756788  02 a0 96 e7                                      ldr sl, [r6, r2]
0075678c  ad ff ff ea                                      b #0x756648
00756790  30 20 9f e5                                      ldr r2, [pc, #0x30]
00756794  02 20 96 e7                                      ldr r2, [r6, r2]
00756798  48 20 8d e5                                      str r2, [sp, #0x48]
0075679c  b8 ff ff ea                                      b #0x756684
007567a0  14 30 9d e5                                      ldr r3, [sp, #0x14]
007567a4  18 20 8d e2                                      add r2, sp, #0x18
007567a8  07 00 a0 e1                                      mov r0, r7
007567ac  0c 30 22 e5                                      str r3, [r2, #-0xc]!
007567b0  06 10 a0 e1                                      mov r1, r6
007567b4  59 fe ff eb                                      bl #0x756120
007567b8  cf ff ff ea                                      b #0x7566fc
; mapping-symbol data/literal pool
007567bc  c4 e4 23 00 84 34 00 00 c8 40 00 00 e4 3d 00 00  .byte 0xc4, 0xe4, 0x23, 0x00, 0x84, 0x34, 0x00, 0x00, 0xc8, 0x40, 0x00, 0x00, 0xe4, 0x3d, 0x00, 0x00

; FUNCTION 0x007567cc, declared_size=668, range_size=668, mode=arm
; class-group: gameswf::display_list
; alias: _ZN7gameswf12display_list22replace_display_objectEPNS_9characterEiPKNS_6cxformEPKNS_6matrixEPKNS_6effectEft
; demangled: gameswf::display_list::replace_display_object(gameswf::character*, int, gameswf::cxform const*, gameswf::matrix const*, gameswf::effect const*, float, unsigned short)
; decoder-mode: arm
007567cc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007567d0  7c d0 4d e2                                      sub sp, sp, #0x7c
007567d4  02 a0 a0 e1                                      mov sl, r2
007567d8  01 90 a0 e1                                      mov sb, r1
007567dc  02 10 a0 e1                                      mov r1, r2
007567e0  bc 2a dd e1                                      ldrh r2, [sp, #0xac]
007567e4  04 40 90 e5                                      ldr r4, [r0, #4]
007567e8  00 80 a0 e1                                      mov r8, r0
007567ec  03 b0 a0 e1                                      mov fp, r3
007567f0  24 20 8d e5                                      str r2, [sp, #0x24]
007567f4  a1 f9 ff eb                                      bl #0x754e80
007567f8  a0 6f a0 e1                                      lsr r6, r0, #0x1f
007567fc  04 00 50 e1                                      cmp r0, r4
00756800  01 60 86 a3                                      orrge r6, r6, #1
00756804  00 00 56 e3                                      cmp r6, #0
00756808  5f 00 00 1a                                      bne #0x75698c
0075680c  00 30 98 e5                                      ldr r3, [r8]
00756810  4c 10 8d e2                                      add r1, sp, #0x4c
00756814  2c 20 8d e2                                      add r2, sp, #0x2c
00756818  18 10 8d e5                                      str r1, [sp, #0x18]
0075681c  1c 20 8d e5                                      str r2, [sp, #0x1c]
00756820  00 51 93 e7                                      ldr r5, [r3, r0, lsl #2]
00756824  64 30 8d e2                                      add r3, sp, #0x64
00756828  20 30 8d e5                                      str r3, [sp, #0x20]
0075682c  4c c0 95 e5                                      ldr ip, [r5, #0x4c]
00756830  18 e0 9d e5                                      ldr lr, [sp, #0x18]
00756834  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
00756838  0f 00 ae e8                                      stm lr!, {r0, r1, r2, r3}
0075683c  03 00 9c e8                                      ldm ip, {r0, r1}
00756840  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00756844  03 00 8e e8                                      stm lr, {r0, r1}
00756848  48 e0 95 e5                                      ldr lr, [r5, #0x48]
0075684c  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00756850  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00756854  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
00756858  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0075685c  50 40 95 e5                                      ldr r4, [r5, #0x50]
00756860  20 10 9d e5                                      ldr r1, [sp, #0x20]
00756864  00 30 94 e5                                      ldr r3, [r4]
00756868  68 60 8d e5                                      str r6, [sp, #0x68]
0075686c  6c 60 8d e5                                      str r6, [sp, #0x6c]
00756870  64 30 8d e5                                      str r3, [sp, #0x64]
00756874  70 60 8d e5                                      str r6, [sp, #0x70]
00756878  74 60 cd e5                                      strb r6, [sp, #0x74]
0075687c  04 00 81 e2                                      add r0, r1, #4
00756880  08 10 94 e5                                      ldr r1, [r4, #8]
00756884  93 fc ff eb                                      bl #0x755ad8
00756888  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
0075688c  00 00 53 e3                                      cmp r3, #0
00756890  0f 00 00 da                                      ble #0x7568d4
00756894  06 70 a0 e1                                      mov r7, r6
00756898  04 e0 94 e5                                      ldr lr, [r4, #4]
0075689c  68 c0 9d e5                                      ldr ip, [sp, #0x68]
007568a0  01 70 87 e2                                      add r7, r7, #1
007568a4  06 e0 8e e0                                      add lr, lr, r6
007568a8  06 c0 8c e0                                      add ip, ip, r6
007568ac  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
007568b0  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
007568b4  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
007568b8  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
007568bc  07 00 9e e8                                      ldm lr, {r0, r1, r2}
007568c0  07 00 8c e8                                      stm ip, {r0, r1, r2}
007568c4  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
007568c8  2c 60 86 e2                                      add r6, r6, #0x2c
007568cc  03 00 57 e1                                      cmp r7, r3
007568d0  f0 ff ff ba                                      blt #0x756898
007568d4  54 30 95 e5                                      ldr r3, [r5, #0x54]
007568d8  00 00 53 e3                                      cmp r3, #0
007568dc  3f 00 00 0a                                      beq #0x7569e0
007568e0  4c 40 95 e5                                      ldr r4, [r5, #0x4c]
007568e4  48 70 95 e5                                      ldr r7, [r5, #0x48]
007568e8  18 c0 9d e5                                      ldr ip, [sp, #0x18]
007568ec  20 20 83 e2                                      add r2, r3, #0x20
007568f0  50 60 95 e5                                      ldr r6, [r5, #0x50]
007568f4  02 00 54 e1                                      cmp r4, r2
007568f8  20 e0 9d e5                                      ldr lr, [sp, #0x20]
007568fc  0c 40 a0 01                                      moveq r4, ip
00756900  03 00 57 e1                                      cmp r7, r3
00756904  38 30 83 e2                                      add r3, r3, #0x38
00756908  1c 70 9d 05                                      ldreq r7, [sp, #0x1c]
0075690c  03 00 56 e1                                      cmp r6, r3
00756910  0e 60 a0 01                                      moveq r6, lr
00756914  a8 c0 9d e5                                      ldr ip, [sp, #0xa8]
00756918  24 e0 9d e5                                      ldr lr, [sp, #0x24]
0075691c  08 00 a0 e1                                      mov r0, r8
00756920  0c c0 8d e5                                      str ip, [sp, #0xc]
00756924  10 e0 8d e5                                      str lr, [sp, #0x10]
00756928  a0 c0 9d e5                                      ldr ip, [sp, #0xa0]
0075692c  a4 e0 9d e5                                      ldr lr, [sp, #0xa4]
00756930  0a 20 a0 e1                                      mov r2, sl
00756934  09 10 a0 e1                                      mov r1, sb
00756938  01 30 a0 e3                                      mov r3, #1
0075693c  00 58 8d e8                                      stm sp, {fp, ip, lr}
00756940  10 ff ff eb                                      bl #0x756588
00756944  00 00 5b e3                                      cmp fp, #0
00756948  28 00 00 0a                                      beq #0x7569f0
0075694c  a0 20 9d e5                                      ldr r2, [sp, #0xa0]
00756950  00 00 52 e3                                      cmp r2, #0
00756954  2e 00 00 0a                                      beq #0x756a14
00756958  a4 c0 9d e5                                      ldr ip, [sp, #0xa4]
0075695c  00 00 5c e3                                      cmp ip, #0
00756960  17 00 00 0a                                      beq #0x7569c4
00756964  20 10 9d e5                                      ldr r1, [sp, #0x20]
00756968  04 40 81 e2                                      add r4, r1, #4
0075696c  04 00 a0 e1                                      mov r0, r4
00756970  00 10 a0 e3                                      mov r1, #0
00756974  57 fc ff eb                                      bl #0x755ad8
00756978  04 00 a0 e1                                      mov r0, r4
0075697c  00 10 a0 e3                                      mov r1, #0
00756980  50 f1 ff eb                                      bl #0x752ec8
00756984  7c d0 8d e2                                      add sp, sp, #0x7c
00756988  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0075698c  a0 c0 9d e5                                      ldr ip, [sp, #0xa0]
00756990  a4 e0 9d e5                                      ldr lr, [sp, #0xa4]
00756994  08 00 a0 e1                                      mov r0, r8
00756998  00 50 8d e9                                      stmib sp, {ip, lr}
0075699c  a8 c0 9d e5                                      ldr ip, [sp, #0xa8]
007569a0  24 e0 9d e5                                      ldr lr, [sp, #0x24]
007569a4  09 10 a0 e1                                      mov r1, sb
007569a8  0a 20 a0 e1                                      mov r2, sl
007569ac  01 30 a0 e3                                      mov r3, #1
007569b0  00 b0 8d e5                                      str fp, [sp]
007569b4  0c c0 8d e5                                      str ip, [sp, #0xc]
007569b8  10 e0 8d e5                                      str lr, [sp, #0x10]
007569bc  f1 fe ff eb                                      bl #0x756588
007569c0  ef ff ff ea                                      b #0x756984
007569c4  20 e0 9d e5                                      ldr lr, [sp, #0x20]
007569c8  0e 00 56 e1                                      cmp r6, lr
007569cc  19 00 00 0a                                      beq #0x756a38
007569d0  50 30 99 e5                                      ldr r3, [sb, #0x50]
007569d4  03 00 56 e1                                      cmp r6, r3
007569d8  50 60 89 15                                      strne r6, [sb, #0x50]
007569dc  e0 ff ff ea                                      b #0x756964
007569e0  50 60 95 e5                                      ldr r6, [r5, #0x50]
007569e4  4c 40 95 e5                                      ldr r4, [r5, #0x4c]
007569e8  48 70 95 e5                                      ldr r7, [r5, #0x48]
007569ec  c8 ff ff ea                                      b #0x756914
007569f0  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
007569f4  01 00 57 e1                                      cmp r7, r1
007569f8  16 00 00 0a                                      beq #0x756a58
007569fc  48 30 99 e5                                      ldr r3, [sb, #0x48]
00756a00  03 00 57 e1                                      cmp r7, r3
00756a04  01 30 a0 13                                      movne r3, #1
00756a08  48 70 89 15                                      strne r7, [sb, #0x48]
00756a0c  9a 30 c9 15                                      strbne r3, [sb, #0x9a]
00756a10  cd ff ff ea                                      b #0x75694c
00756a14  18 30 9d e5                                      ldr r3, [sp, #0x18]
00756a18  03 00 54 e1                                      cmp r4, r3
00756a1c  09 00 00 0a                                      beq #0x756a48
00756a20  4c 30 99 e5                                      ldr r3, [sb, #0x4c]
00756a24  03 00 54 e1                                      cmp r4, r3
00756a28  01 30 a0 13                                      movne r3, #1
00756a2c  4c 40 89 15                                      strne r4, [sb, #0x4c]
00756a30  99 30 c9 15                                      strbne r3, [sb, #0x99]
00756a34  c7 ff ff ea                                      b #0x756958
00756a38  09 00 a0 e1                                      mov r0, sb
00756a3c  0e 10 a0 e1                                      mov r1, lr
00756a40  ac fc ff eb                                      bl #0x755cf8
00756a44  c6 ff ff ea                                      b #0x756964
00756a48  04 10 a0 e1                                      mov r1, r4
00756a4c  09 00 a0 e1                                      mov r0, sb
00756a50  e8 ed f2 eb                                      bl #0x4121f8
00756a54  bf ff ff ea                                      b #0x756958
00756a58  07 10 a0 e1                                      mov r1, r7
00756a5c  09 00 a0 e1                                      mov r0, sb
00756a60  bd f2 ff eb                                      bl #0x75355c
00756a64  b8 ff ff ea                                      b #0x75694c

; FUNCTION 0x00756a68, declared_size=120, range_size=120, mode=arm
; class-group: gameswf::display_list
; alias: _ZN7gameswf12display_list21get_character_by_nameERKNS_9tu_stringE
; demangled: gameswf::display_list::get_character_by_name(gameswf::tu_string const&)
; decoder-mode: arm
00756a68  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00756a6c  04 70 90 e5                                      ldr r7, [r0, #4]
00756a70  01 90 a0 e1                                      mov sb, r1
00756a74  00 00 57 e3                                      cmp r7, #0
00756a78  15 00 00 da                                      ble #0x756ad4
00756a7c  01 60 a0 e1                                      mov r6, r1
00756a80  00 a0 90 e5                                      ldr sl, [r0]
00756a84  d1 80 d6 e0                                      ldrsb r8, [r6], #1
00756a88  00 40 a0 e3                                      mov r4, #0
00756a8c  01 00 00 ea                                      b #0x756a98
00756a90  07 00 54 e1                                      cmp r4, r7
00756a94  0e 00 00 0a                                      beq #0x756ad4
00756a98  04 51 9a e7                                      ldr r5, [sl, r4, lsl #2]
00756a9c  01 00 78 e3                                      cmn r8, #1
00756aa0  06 10 a0 e1                                      mov r1, r6
00756aa4  44 30 95 e5                                      ldr r3, [r5, #0x44]
00756aa8  0c 10 99 05                                      ldreq r1, [sb, #0xc]
00756aac  01 40 84 e2                                      add r4, r4, #1
00756ab0  d0 20 d3 e1                                      ldrsb r2, [r3]
00756ab4  01 00 83 e2                                      add r0, r3, #1
00756ab8  01 00 72 e3                                      cmn r2, #1
00756abc  0c 00 93 05                                      ldreq r0, [r3, #0xc]
00756ac0  15 de ee eb                                      bl #0x30e31c
00756ac4  00 00 50 e3                                      cmp r0, #0
00756ac8  f0 ff ff 1a                                      bne #0x756a90
00756acc  05 00 a0 e1                                      mov r0, r5
00756ad0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00756ad4  00 50 a0 e3                                      mov r5, #0
00756ad8  05 00 a0 e1                                      mov r0, r5
00756adc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00756ae0, declared_size=336, range_size=336, mode=arm
; class-group: gameswf::display_list
; alias: _ZN7gameswf12display_list4dumpERNS_9tu_stringE
; demangled: gameswf::display_list::dump(gameswf::tu_string&)
; decoder-mode: arm
00756ae0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00756ae4  d0 40 d1 e1                                      ldrsb r4, [r1]
00756ae8  01 50 a0 e1                                      mov r5, r1
00756aec  00 70 a0 e1                                      mov r7, r0
00756af0  01 00 74 e3                                      cmn r4, #1
00756af4  04 40 91 05                                      ldreq r4, [r1, #4]
00756af8  01 00 a0 e1                                      mov r0, r1
00756afc  01 40 44 e2                                      sub r4, r4, #1
00756b00  02 10 84 e2                                      add r1, r4, #2
00756b04  82 ec ff eb                                      bl #0x751d14
00756b08  d0 30 d5 e1                                      ldrsb r3, [r5]
00756b0c  20 20 a0 e3                                      mov r2, #0x20
00756b10  01 00 73 e3                                      cmn r3, #1
00756b14  0c 10 95 05                                      ldreq r1, [r5, #0xc]
00756b18  01 10 85 12                                      addne r1, r5, #1
00756b1c  04 30 81 e0                                      add r3, r1, r4
00756b20  04 20 c1 e7                                      strb r2, [r1, r4]
00756b24  02 00 83 e2                                      add r0, r3, #2
00756b28  01 20 c3 e5                                      strb r2, [r3, #1]
00756b2c  00 30 a0 e3                                      mov r3, #0
00756b30  00 30 c0 e5                                      strb r3, [r0]
00756b34  10 30 95 e5                                      ldr r3, [r5, #0x10]
00756b38  d0 20 d5 e1                                      ldrsb r2, [r5]
00756b3c  e0 00 9f e5                                      ldr r0, [pc, #0xe0]
00756b40  00 10 e0 e3                                      mvn r1, #0
00756b44  11 30 d7 e7                                      bfi r3, r1, #0, #0x18
00756b48  01 00 52 e1                                      cmp r2, r1
00756b4c  01 10 85 12                                      addne r1, r5, #1
00756b50  0c 10 95 05                                      ldreq r1, [r5, #0xc]
00756b54  10 30 85 e5                                      str r3, [r5, #0x10]
00756b58  00 00 8f e0                                      add r0, pc, r0
00756b5c  c8 dc ee eb                                      bl #0x30de84
00756b60  04 60 97 e5                                      ldr r6, [r7, #4]
00756b64  00 00 56 e3                                      cmp r6, #0
00756b68  25 00 00 da                                      ble #0x756c04
00756b6c  b4 90 9f e5                                      ldr sb, [pc, #0xb4]
00756b70  b4 80 9f e5                                      ldr r8, [pc, #0xb4]
00756b74  01 a0 85 e2                                      add sl, r5, #1
00756b78  09 90 8f e0                                      add sb, pc, sb
00756b7c  08 80 8f e0                                      add r8, pc, r8
00756b80  00 40 a0 e3                                      mov r4, #0
00756b84  0b 00 00 ea                                      b #0x756bb8
00756b88  d0 10 d5 e1                                      ldrsb r1, [r5]
00756b8c  08 00 a0 e1                                      mov r0, r8
00756b90  01 40 84 e2                                      add r4, r4, #1
00756b94  01 00 71 e3                                      cmn r1, #1
00756b98  0a 10 a0 11                                      movne r1, sl
00756b9c  0c 10 95 05                                      ldreq r1, [r5, #0xc]
00756ba0  01 00 73 e3                                      cmn r3, #1
00756ba4  01 20 82 12                                      addne r2, r2, #1
00756ba8  0c 20 92 05                                      ldreq r2, [r2, #0xc]
00756bac  b4 dc ee eb                                      bl #0x30de84
00756bb0  06 00 54 e1                                      cmp r4, r6
00756bb4  12 00 00 0a                                      beq #0x756c04
00756bb8  00 30 97 e5                                      ldr r3, [r7]
00756bbc  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
00756bc0  44 20 93 e5                                      ldr r2, [r3, #0x44]
00756bc4  d0 30 d2 e1                                      ldrsb r3, [r2]
00756bc8  01 00 73 e3                                      cmn r3, #1
00756bcc  04 10 92 05                                      ldreq r1, [r2, #4]
00756bd0  03 10 a0 11                                      movne r1, r3
00756bd4  01 10 41 e2                                      sub r1, r1, #1
00756bd8  00 00 51 e3                                      cmp r1, #0
00756bdc  e9 ff ff ca                                      bgt #0x756b88
00756be0  d0 30 d5 e1                                      ldrsb r3, [r5]
00756be4  09 00 a0 e1                                      mov r0, sb
00756be8  01 40 84 e2                                      add r4, r4, #1
00756bec  01 00 73 e3                                      cmn r3, #1
00756bf0  0a 10 a0 11                                      movne r1, sl
00756bf4  0c 10 95 05                                      ldreq r1, [r5, #0xc]
00756bf8  a1 dc ee eb                                      bl #0x30de84
00756bfc  06 00 54 e1                                      cmp r4, r6
00756c00  ec ff ff 1a                                      bne #0x756bb8
00756c04  d0 10 d5 e1                                      ldrsb r1, [r5]
00756c08  05 00 a0 e1                                      mov r0, r5
00756c0c  01 00 71 e3                                      cmn r1, #1
00756c10  04 10 95 05                                      ldreq r1, [r5, #4]
00756c14  01 10 41 e2                                      sub r1, r1, #1
00756c18  02 10 41 e2                                      sub r1, r1, #2
00756c1c  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
00756c20  3b ec ff ea                                      b #0x751d14
; mapping-symbol data/literal pool
00756c24  30 1e 1b 00 30 1e 1b 00 24 1e 1b 00              .byte 0x30, 0x1e, 0x1b, 0x00, 0x30, 0x1e, 0x1b, 0x00, 0x24, 0x1e, 0x1b, 0x00

; FUNCTION 0x0077f288, declared_size=144, range_size=144, mode=arm
; class-group: gameswf::display_list
; alias: _ZN7gameswf12display_listD1Ev
; demangled: gameswf::display_list::~display_list()
; decoder-mode: arm
0077f288  70 40 2d e9                                      push {r4, r5, r6, lr}
0077f28c  00 40 a0 e1                                      mov r4, r0
0077f290  10 00 80 e2                                      add r0, r0, #0x10
0077f294  84 58 ff eb                                      bl #0x7554ac
0077f298  04 50 94 e5                                      ldr r5, [r4, #4]
0077f29c  00 00 55 e3                                      cmp r5, #0
0077f2a0  0e 00 00 da                                      ble #0x77f2e0
0077f2a4  00 60 a0 e3                                      mov r6, #0
0077f2a8  00 30 94 e5                                      ldr r3, [r4]
0077f2ac  06 01 93 e7                                      ldr r0, [r3, r6, lsl #2]
0077f2b0  01 60 86 e2                                      add r6, r6, #1
0077f2b4  00 00 50 e3                                      cmp r0, #0
0077f2b8  00 00 00 0a                                      beq #0x77f2c0
0077f2bc  df 6b ff eb                                      bl #0x75a240
0077f2c0  05 00 56 e1                                      cmp r6, r5
0077f2c4  f7 ff ff 1a                                      bne #0x77f2a8
0077f2c8  00 10 a0 e3                                      mov r1, #0
0077f2cc  04 00 a0 e1                                      mov r0, r4
0077f2d0  04 10 84 e5                                      str r1, [r4, #4]
0077f2d4  94 58 ff eb                                      bl #0x75552c
0077f2d8  04 00 a0 e1                                      mov r0, r4
0077f2dc  70 80 bd e8                                      pop {r4, r5, r6, pc}
0077f2e0  f8 ff ff aa                                      bge #0x77f2c8
0077f2e4  05 31 a0 e1                                      lsl r3, r5, #2
0077f2e8  00 10 a0 e3                                      mov r1, #0
0077f2ec  00 20 94 e5                                      ldr r2, [r4]
0077f2f0  01 50 95 e2                                      adds r5, r5, #1
0077f2f4  03 10 82 e7                                      str r1, [r2, r3]
0077f2f8  04 30 83 e2                                      add r3, r3, #4
0077f2fc  fa ff ff 1a                                      bne #0x77f2ec
0077f300  00 10 a0 e3                                      mov r1, #0
0077f304  04 00 a0 e1                                      mov r0, r4
0077f308  04 10 84 e5                                      str r1, [r4, #4]
0077f30c  86 58 ff eb                                      bl #0x75552c
0077f310  04 00 a0 e1                                      mov r0, r4
0077f314  70 80 bd e8                                      pop {r4, r5, r6, pc}
