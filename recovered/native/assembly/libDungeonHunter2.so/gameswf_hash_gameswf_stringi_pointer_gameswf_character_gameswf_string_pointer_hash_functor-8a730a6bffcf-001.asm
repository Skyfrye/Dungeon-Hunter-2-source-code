; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007550a0, declared_size=236, range_size=236, mode=arm
; class-group: gameswf::hash<gameswf::stringi_pointer, gameswf::character*, gameswf::string_pointer_hash_functor<gameswf::stringi_pointer> >
; alias: _ZN7gameswf4hashINS_15stringi_pointerEPNS_9characterENS_27string_pointer_hash_functorIS1_EEE5eraseERKNS6_8iteratorE
; demangled: gameswf::hash<gameswf::stringi_pointer, gameswf::character*, gameswf::string_pointer_hash_functor<gameswf::stringi_pointer> >::erase(gameswf::hash<gameswf::stringi_pointer, gameswf::character*, gameswf::string_pointer_hash_functor<gameswf::stringi_pointer> >::iterator const&)
; decoder-mode: arm
007550a0  70 00 2d e9                                      push {r4, r5, r6}
007550a4  00 30 91 e5                                      ldr r3, [r1]
007550a8  00 00 53 e3                                      cmp r3, #0
007550ac  06 00 00 0a                                      beq #0x7550cc
007550b0  00 c0 93 e5                                      ldr ip, [r3]
007550b4  00 00 5c e3                                      cmp ip, #0
007550b8  03 00 00 0a                                      beq #0x7550cc
007550bc  04 40 91 e5                                      ldr r4, [r1, #4]
007550c0  04 20 9c e5                                      ldr r2, [ip, #4]
007550c4  02 00 54 e1                                      cmp r4, r2
007550c8  01 00 00 da                                      ble #0x7550d4
007550cc  70 00 bd e8                                      pop {r4, r5, r6}
007550d0  1e ff 2f e1                                      bx lr
007550d4  03 00 50 e1                                      cmp r0, r3
007550d8  fb ff ff 1a                                      bne #0x7550cc
007550dc  84 50 a0 e1                                      lsl r5, r4, #1
007550e0  01 50 85 e2                                      add r5, r5, #1
007550e4  85 61 8c e0                                      add r6, ip, r5, lsl #3
007550e8  04 30 96 e5                                      ldr r3, [r6, #4]
007550ec  03 20 02 e0                                      and r2, r2, r3
007550f0  04 00 52 e1                                      cmp r2, r4
007550f4  1c 00 00 0a                                      beq #0x75516c
007550f8  82 20 a0 e1                                      lsl r2, r2, #1
007550fc  01 20 82 e2                                      add r2, r2, #1
00755100  82 31 9c e7                                      ldr r3, [ip, r2, lsl #3]
00755104  82 21 8c e0                                      add r2, ip, r2, lsl #3
00755108  03 00 54 e1                                      cmp r4, r3
0075510c  05 00 00 0a                                      beq #0x755128
00755110  83 30 a0 e1                                      lsl r3, r3, #1
00755114  01 20 83 e2                                      add r2, r3, #1
00755118  82 31 9c e7                                      ldr r3, [ip, r2, lsl #3]
0075511c  82 21 8c e0                                      add r2, ip, r2, lsl #3
00755120  04 00 53 e1                                      cmp r3, r4
00755124  f9 ff ff 1a                                      bne #0x755110
00755128  85 31 9c e7                                      ldr r3, [ip, r5, lsl #3]
0075512c  01 c0 e0 e3                                      mvn ip, #1
00755130  00 30 82 e5                                      str r3, [r2]
00755134  00 30 91 e5                                      ldr r3, [r1]
00755138  04 20 91 e5                                      ldr r2, [r1, #4]
0075513c  00 30 93 e5                                      ldr r3, [r3]
00755140  82 20 a0 e1                                      lsl r2, r2, #1
00755144  01 20 82 e2                                      add r2, r2, #1
00755148  82 11 83 e0                                      add r1, r3, r2, lsl #3
0075514c  82 c1 83 e7                                      str ip, [r3, r2, lsl #3]
00755150  00 30 a0 e3                                      mov r3, #0
00755154  04 30 81 e5                                      str r3, [r1, #4]
00755158  00 30 90 e5                                      ldr r3, [r0]
0075515c  00 20 93 e5                                      ldr r2, [r3]
00755160  01 20 42 e2                                      sub r2, r2, #1
00755164  00 20 83 e5                                      str r2, [r3]
00755168  d7 ff ff ea                                      b #0x7550cc
0075516c  85 31 9c e7                                      ldr r3, [ip, r5, lsl #3]
00755170  01 00 73 e3                                      cmn r3, #1
00755174  01 30 e0 03                                      mvneq r3, #1
00755178  85 31 8c 07                                      streq r3, [ip, r5, lsl #3]
0075517c  00 30 e0 13                                      mvnne r3, #0
00755180  00 30 a0 03                                      moveq r3, #0
00755184  04 30 86 e5                                      str r3, [r6, #4]
00755188  f2 ff ff ea                                      b #0x755158

; FUNCTION 0x007554ac, declared_size=128, range_size=128, mode=arm
; class-group: gameswf::hash<gameswf::stringi_pointer, gameswf::character*, gameswf::string_pointer_hash_functor<gameswf::stringi_pointer> >
; alias: _ZN7gameswf4hashINS_15stringi_pointerEPNS_9characterENS_27string_pointer_hash_functorIS1_EEE5clearEv
; demangled: gameswf::hash<gameswf::stringi_pointer, gameswf::character*, gameswf::string_pointer_hash_functor<gameswf::stringi_pointer> >::clear()
; decoder-mode: arm
007554ac  70 40 2d e9                                      push {r4, r5, r6, lr}
007554b0  00 40 a0 e1                                      mov r4, r0
007554b4  00 00 90 e5                                      ldr r0, [r0]
007554b8  00 00 50 e3                                      cmp r0, #0
007554bc  19 00 00 0a                                      beq #0x755528
007554c0  04 10 90 e5                                      ldr r1, [r0, #4]
007554c4  00 00 51 e3                                      cmp r1, #0
007554c8  11 00 00 ba                                      blt #0x755514
007554cc  00 20 a0 e3                                      mov r2, #0
007554d0  08 30 a0 e3                                      mov r3, #8
007554d4  01 60 e0 e3                                      mvn r6, #1
007554d8  02 50 a0 e1                                      mov r5, r2
007554dc  03 e0 90 e7                                      ldr lr, [r0, r3]
007554e0  01 20 82 e2                                      add r2, r2, #1
007554e4  03 c0 80 e0                                      add ip, r0, r3
007554e8  02 00 7e e3                                      cmn lr, #2
007554ec  04 00 00 0a                                      beq #0x755504
007554f0  04 e0 9c e5                                      ldr lr, [ip, #4]
007554f4  01 00 7e e3                                      cmn lr, #1
007554f8  04 50 8c 15                                      strne r5, [ip, #4]
007554fc  00 60 8c 15                                      strne r6, [ip]
00755500  00 00 94 15                                      ldrne r0, [r4]
00755504  02 00 51 e1                                      cmp r1, r2
00755508  10 30 83 e2                                      add r3, r3, #0x10
0075550c  f2 ff ff aa                                      bge #0x7554dc
00755510  04 10 90 e5                                      ldr r1, [r0, #4]
00755514  01 12 a0 e1                                      lsl r1, r1, #4
00755518  18 10 81 e2                                      add r1, r1, #0x18
0075551c  85 f5 ff eb                                      bl #0x752b38
00755520  00 30 a0 e3                                      mov r3, #0
00755524  00 30 84 e5                                      str r3, [r4]
00755528  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00755da0, declared_size=352, range_size=352, mode=arm
; class-group: gameswf::hash<gameswf::stringi_pointer, gameswf::character*, gameswf::string_pointer_hash_functor<gameswf::stringi_pointer> >
; alias: _ZNK7gameswf4hashINS_15stringi_pointerEPNS_9characterENS_27string_pointer_hash_functorIS1_EEE10find_indexERKS1_
; demangled: gameswf::hash<gameswf::stringi_pointer, gameswf::character*, gameswf::string_pointer_hash_functor<gameswf::stringi_pointer> >::find_index(gameswf::stringi_pointer const&) const
; decoder-mode: arm
00755da0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00755da4  00 30 90 e5                                      ldr r3, [r0]
00755da8  00 50 a0 e1                                      mov r5, r0
00755dac  01 60 a0 e1                                      mov r6, r1
00755db0  00 00 53 e3                                      cmp r3, #0
00755db4  02 00 00 1a                                      bne #0x755dc4
00755db8  00 40 e0 e3                                      mvn r4, #0
00755dbc  04 00 a0 e1                                      mov r0, r4
00755dc0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00755dc4  00 40 91 e5                                      ldr r4, [r1]
00755dc8  ff 24 e0 e3                                      mvn r2, #0xff000000
00755dcc  10 c0 94 e5                                      ldr ip, [r4, #0x10]
00755dd0  ff 14 cc e3                                      bic r1, ip, #0xff000000
00755dd4  02 00 51 e1                                      cmp r1, r2
00755dd8  5c 70 b7 17                                      sbfxne r7, ip, #0, #0x18
00755ddc  2a 00 00 0a                                      beq #0x755e8c
00755de0  04 20 93 e5                                      ldr r2, [r3, #4]
00755de4  01 00 77 e3                                      cmn r7, #1
00755de8  02 79 e0 03                                      mvneq r7, #0x8000
00755dec  02 40 07 e0                                      and r4, r7, r2
00755df0  84 80 a0 e1                                      lsl r8, r4, #1
00755df4  01 80 88 e2                                      add r8, r8, #1
00755df8  88 11 93 e7                                      ldr r1, [r3, r8, lsl #3]
00755dfc  88 81 83 e0                                      add r8, r3, r8, lsl #3
00755e00  02 00 71 e3                                      cmn r1, #2
00755e04  eb ff ff 0a                                      beq #0x755db8
00755e08  04 30 98 e5                                      ldr r3, [r8, #4]
00755e0c  01 00 73 e3                                      cmn r3, #1
00755e10  0b 00 00 0a                                      beq #0x755e44
00755e14  03 20 02 e0                                      and r2, r2, r3
00755e18  04 00 52 e1                                      cmp r2, r4
00755e1c  e5 ff ff 1a                                      bne #0x755db8
00755e20  07 00 00 ea                                      b #0x755e44
00755e24  00 40 98 e5                                      ldr r4, [r8]
00755e28  01 00 74 e3                                      cmn r4, #1
00755e2c  e2 ff ff 0a                                      beq #0x755dbc
00755e30  00 30 95 e5                                      ldr r3, [r5]
00755e34  04 82 a0 e1                                      lsl r8, r4, #4
00755e38  08 80 88 e2                                      add r8, r8, #8
00755e3c  08 80 83 e0                                      add r8, r3, r8
00755e40  04 30 98 e5                                      ldr r3, [r8, #4]
00755e44  03 00 57 e1                                      cmp r7, r3
00755e48  f5 ff ff 1a                                      bne #0x755e24
00755e4c  08 00 98 e5                                      ldr r0, [r8, #8]
00755e50  00 10 96 e5                                      ldr r1, [r6]
00755e54  01 00 50 e1                                      cmp r0, r1
00755e58  d7 ff ff 0a                                      beq #0x755dbc
00755e5c  d0 30 d0 e1                                      ldrsb r3, [r0]
00755e60  01 00 73 e3                                      cmn r3, #1
00755e64  d0 30 d1 e1                                      ldrsb r3, [r1]
00755e68  01 00 80 12                                      addne r0, r0, #1
00755e6c  0c 00 90 05                                      ldreq r0, [r0, #0xc]
00755e70  01 00 73 e3                                      cmn r3, #1
00755e74  01 10 81 12                                      addne r1, r1, #1
00755e78  0c 10 91 05                                      ldreq r1, [r1, #0xc]
00755e7c  a3 ef ff eb                                      bl #0x751d10
00755e80  00 00 50 e3                                      cmp r0, #0
00755e84  e6 ff ff 1a                                      bne #0x755e24
00755e88  cb ff ff ea                                      b #0x755dbc
00755e8c  d0 30 d4 e1                                      ldrsb r3, [r4]
00755e90  01 00 73 e3                                      cmn r3, #1
00755e94  04 30 94 05                                      ldreq r3, [r4, #4]
00755e98  0c 70 94 05                                      ldreq r7, [r4, #0xc]
00755e9c  01 30 43 12                                      subne r3, r3, #1
00755ea0  01 30 43 02                                      subeq r3, r3, #1
00755ea4  01 70 84 12                                      addne r7, r4, #1
00755ea8  00 00 53 e3                                      cmp r3, #0
00755eac  05 75 01 d3                                      movwle r7, #0x1505
00755eb0  07 20 a0 d1                                      movle r2, r7
00755eb4  0d 00 00 da                                      ble #0x755ef0
00755eb8  03 30 87 e0                                      add r3, r7, r3
00755ebc  05 25 01 e3                                      movw r2, #0x1505
00755ec0  01 10 53 e5                                      ldrb r1, [r3, #-1]
00755ec4  01 30 43 e2                                      sub r3, r3, #1
00755ec8  82 22 82 e0                                      add r2, r2, r2, lsl #5
00755ecc  41 00 41 e2                                      sub r0, r1, #0x41
00755ed0  70 00 ef e6                                      uxtb r0, r0
00755ed4  19 00 50 e3                                      cmp r0, #0x19
00755ed8  20 10 81 92                                      addls r1, r1, #0x20
00755edc  07 00 53 e1                                      cmp r3, r7
00755ee0  02 20 21 e0                                      eor r2, r1, r2
00755ee4  f5 ff ff 1a                                      bne #0x755ec0
00755ee8  52 20 b7 e7                                      sbfx r2, r2, #0, #0x18
00755eec  02 70 a0 e1                                      mov r7, r2
00755ef0  12 c0 d7 e7                                      bfi ip, r2, #0, #0x18
00755ef4  10 c0 84 e5                                      str ip, [r4, #0x10]
00755ef8  00 30 95 e5                                      ldr r3, [r5]
00755efc  b7 ff ff ea                                      b #0x755de0

; FUNCTION 0x00755f00, declared_size=88, range_size=88, mode=arm
; class-group: gameswf::hash<gameswf::stringi_pointer, gameswf::character*, gameswf::string_pointer_hash_functor<gameswf::stringi_pointer> >
; alias: _ZN7gameswf4hashINS_15stringi_pointerEPNS_9characterENS_27string_pointer_hash_functorIS1_EEE5eraseERKS1_
; demangled: gameswf::hash<gameswf::stringi_pointer, gameswf::character*, gameswf::string_pointer_hash_functor<gameswf::stringi_pointer> >::erase(gameswf::stringi_pointer const&)
; decoder-mode: arm
00755f00  10 40 2d e9                                      push {r4, lr}
00755f04  08 d0 4d e2                                      sub sp, sp, #8
00755f08  00 40 a0 e1                                      mov r4, r0
00755f0c  a3 ff ff eb                                      bl #0x755da0
00755f10  00 00 50 e3                                      cmp r0, #0
00755f14  09 00 00 ba                                      blt #0x755f40
00755f18  00 00 54 e3                                      cmp r4, #0
00755f1c  00 40 8d e5                                      str r4, [sp]
00755f20  04 00 8d e5                                      str r0, [sp, #4]
00755f24  05 00 00 0a                                      beq #0x755f40
00755f28  00 30 94 e5                                      ldr r3, [r4]
00755f2c  00 00 53 e3                                      cmp r3, #0
00755f30  02 00 00 0a                                      beq #0x755f40
00755f34  04 30 93 e5                                      ldr r3, [r3, #4]
00755f38  03 00 50 e1                                      cmp r0, r3
00755f3c  01 00 00 da                                      ble #0x755f48
00755f40  08 d0 8d e2                                      add sp, sp, #8
00755f44  10 80 bd e8                                      pop {r4, pc}
00755f48  04 00 a0 e1                                      mov r0, r4
00755f4c  0d 10 a0 e1                                      mov r1, sp
00755f50  52 fc ff eb                                      bl #0x7550a0
00755f54  f9 ff ff ea                                      b #0x755f40

; FUNCTION 0x00755f94, declared_size=344, range_size=344, mode=arm
; class-group: gameswf::hash<gameswf::stringi_pointer, gameswf::character*, gameswf::string_pointer_hash_functor<gameswf::stringi_pointer> >
; alias: _ZN7gameswf4hashINS_15stringi_pointerEPNS_9characterENS_27string_pointer_hash_functorIS1_EEE16set_raw_capacityEi
; demangled: gameswf::hash<gameswf::stringi_pointer, gameswf::character*, gameswf::string_pointer_hash_functor<gameswf::stringi_pointer> >::set_raw_capacity(int)
; decoder-mode: arm
00755f94  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00755f98  00 00 51 e3                                      cmp r1, #0
00755f9c  0c d0 4d e2                                      sub sp, sp, #0xc
00755fa0  00 80 a0 e1                                      mov r8, r0
00755fa4  4d 00 00 da                                      ble #0x7560e0
00755fa8  01 00 41 e2                                      sub r0, r1, #1
00755fac  6c e2 ee eb                                      bl #0x30e964
00755fb0  bf df ee eb                                      bl #0x30deb4
00755fb4  18 12 07 e3                                      movw r1, #0x7218
00755fb8  31 1f 43 e3                                      movt r1, #0x3f31
00755fbc  34 e3 ee eb                                      bl #0x30ec94
00755fc0  fe 15 a0 e3                                      mov r1, #0x3f800000
00755fc4  f6 e2 ee eb                                      bl #0x30eba4
00755fc8  3f e1 ee eb                                      bl #0x30e4cc
00755fcc  01 40 a0 e3                                      mov r4, #1
00755fd0  14 40 a0 e1                                      lsl r4, r4, r0
00755fd4  00 30 98 e5                                      ldr r3, [r8]
00755fd8  04 00 54 e3                                      cmp r4, #4
00755fdc  04 40 a0 b3                                      movlt r4, #4
00755fe0  00 00 53 e3                                      cmp r3, #0
00755fe4  03 00 00 0a                                      beq #0x755ff8
00755fe8  04 30 93 e5                                      ldr r3, [r3, #4]
00755fec  01 30 83 e2                                      add r3, r3, #1
00755ff0  04 00 53 e1                                      cmp r3, r4
00755ff4  3a 00 00 0a                                      beq #0x7560e4
00755ff8  00 50 a0 e3                                      mov r5, #0
00755ffc  04 02 a0 e1                                      lsl r0, r4, #4
00756000  08 00 80 e2                                      add r0, r0, #8
00756004  05 10 a0 e1                                      mov r1, r5
00756008  04 50 8d e5                                      str r5, [sp, #4]
0075600c  e2 f2 ff eb                                      bl #0x752b9c
00756010  04 00 8d e5                                      str r0, [sp, #4]
00756014  00 50 80 e5                                      str r5, [r0]
00756018  04 30 9d e5                                      ldr r3, [sp, #4]
0075601c  01 20 44 e2                                      sub r2, r4, #1
00756020  01 90 e0 e3                                      mvn sb, #1
00756024  04 20 83 e5                                      str r2, [r3, #4]
00756028  08 30 a0 e3                                      mov r3, #8
0075602c  04 20 9d e5                                      ldr r2, [sp, #4]
00756030  01 50 85 e2                                      add r5, r5, #1
00756034  05 00 54 e1                                      cmp r4, r5
00756038  03 90 82 e7                                      str sb, [r2, r3]
0075603c  10 30 83 e2                                      add r3, r3, #0x10
00756040  f9 ff ff ca                                      bgt #0x75602c
00756044  00 30 98 e5                                      ldr r3, [r8]
00756048  00 00 53 e3                                      cmp r3, #0
0075604c  04 a0 8d 02                                      addeq sl, sp, #4
00756050  1d 00 00 0a                                      beq #0x7560cc
00756054  04 70 93 e5                                      ldr r7, [r3, #4]
00756058  00 00 57 e3                                      cmp r7, #0
0075605c  04 a0 8d b2                                      addlt sl, sp, #4
00756060  15 00 00 ba                                      blt #0x7560bc
00756064  00 60 a0 e3                                      mov r6, #0
00756068  08 40 a0 e3                                      mov r4, #8
0075606c  04 a0 8d e2                                      add sl, sp, #4
00756070  06 b0 a0 e1                                      mov fp, r6
00756074  04 20 93 e7                                      ldr r2, [r3, r4]
00756078  01 60 86 e2                                      add r6, r6, #1
0075607c  04 50 83 e0                                      add r5, r3, r4
00756080  02 00 72 e3                                      cmn r2, #2
00756084  08 00 00 0a                                      beq #0x7560ac
00756088  04 20 95 e5                                      ldr r2, [r5, #4]
0075608c  0a 00 a0 e1                                      mov r0, sl
00756090  08 10 85 e2                                      add r1, r5, #8
00756094  01 00 72 e3                                      cmn r2, #1
00756098  03 00 00 0a                                      beq #0x7560ac
0075609c  0c 20 85 e2                                      add r2, r5, #0xc
007560a0  1e 00 00 eb                                      bl #0x756120
007560a4  00 0a 85 e8                                      stm r5, {sb, fp}
007560a8  00 30 98 e5                                      ldr r3, [r8]
007560ac  06 00 57 e1                                      cmp r7, r6
007560b0  10 40 84 e2                                      add r4, r4, #0x10
007560b4  ee ff ff aa                                      bge #0x756074
007560b8  04 70 93 e5                                      ldr r7, [r3, #4]
007560bc  07 12 a0 e1                                      lsl r1, r7, #4
007560c0  03 00 a0 e1                                      mov r0, r3
007560c4  18 10 81 e2                                      add r1, r1, #0x18
007560c8  9a f2 ff eb                                      bl #0x752b38
007560cc  04 30 9d e5                                      ldr r3, [sp, #4]
007560d0  0a 00 a0 e1                                      mov r0, sl
007560d4  00 30 88 e5                                      str r3, [r8]
007560d8  00 30 a0 e3                                      mov r3, #0
007560dc  04 30 8d e5                                      str r3, [sp, #4]
007560e0  f1 fc ff eb                                      bl #0x7554ac
007560e4  0c d0 8d e2                                      add sp, sp, #0xc
007560e8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x007560ec, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::hash<gameswf::stringi_pointer, gameswf::character*, gameswf::string_pointer_hash_functor<gameswf::stringi_pointer> >
; alias: _ZN7gameswf4hashINS_15stringi_pointerEPNS_9characterENS_27string_pointer_hash_functorIS1_EEE12check_expandEv
; demangled: gameswf::hash<gameswf::stringi_pointer, gameswf::character*, gameswf::string_pointer_hash_functor<gameswf::stringi_pointer> >::check_expand()
; decoder-mode: arm
007560ec  00 30 90 e5                                      ldr r3, [r0]
007560f0  00 00 53 e3                                      cmp r3, #0
007560f4  07 00 00 0a                                      beq #0x756118
007560f8  04 10 93 e5                                      ldr r1, [r3, #4]
007560fc  00 30 93 e5                                      ldr r3, [r3]
00756100  01 10 81 e2                                      add r1, r1, #1
00756104  81 10 a0 e1                                      lsl r1, r1, #1
00756108  83 30 83 e0                                      add r3, r3, r3, lsl #1
0075610c  01 00 53 e1                                      cmp r3, r1
00756110  1e ff 2f d1                                      bxle lr
00756114  9e ff ff ea                                      b #0x755f94
00756118  08 10 a0 e3                                      mov r1, #8
0075611c  9c ff ff ea                                      b #0x755f94

; FUNCTION 0x00756120, declared_size=456, range_size=456, mode=arm
; class-group: gameswf::hash<gameswf::stringi_pointer, gameswf::character*, gameswf::string_pointer_hash_functor<gameswf::stringi_pointer> >
; alias: _ZN7gameswf4hashINS_15stringi_pointerEPNS_9characterENS_27string_pointer_hash_functorIS1_EEE3addERKS1_RKS3_
; demangled: gameswf::hash<gameswf::stringi_pointer, gameswf::character*, gameswf::string_pointer_hash_functor<gameswf::stringi_pointer> >::add(gameswf::stringi_pointer const&, gameswf::character* const&)
; decoder-mode: arm
00756120  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00756124  00 60 a0 e1                                      mov r6, r0
00756128  01 40 a0 e1                                      mov r4, r1
0075612c  02 50 a0 e1                                      mov r5, r2
00756130  ed ff ff eb                                      bl #0x7560ec
00756134  00 30 96 e5                                      ldr r3, [r6]
00756138  00 20 93 e5                                      ldr r2, [r3]
0075613c  01 20 82 e2                                      add r2, r2, #1
00756140  00 20 83 e5                                      str r2, [r3]
00756144  00 70 94 e5                                      ldr r7, [r4]
00756148  ff 34 e0 e3                                      mvn r3, #0xff000000
0075614c  10 c0 97 e5                                      ldr ip, [r7, #0x10]
00756150  ff 24 cc e3                                      bic r2, ip, #0xff000000
00756154  03 00 52 e1                                      cmp r2, r3
00756158  5c 80 b7 17                                      sbfxne r8, ip, #0, #0x18
0075615c  37 00 00 0a                                      beq #0x756240
00756160  00 30 96 e5                                      ldr r3, [r6]
00756164  01 00 78 e3                                      cmn r8, #1
00756168  02 89 e0 03                                      mvneq r8, #0x8000
0075616c  04 60 93 e5                                      ldr r6, [r3, #4]
00756170  06 c0 08 e0                                      and ip, r8, r6
00756174  8c a0 a0 e1                                      lsl sl, ip, #1
00756178  01 a0 8a e2                                      add sl, sl, #1
0075617c  8a 91 93 e7                                      ldr sb, [r3, sl, lsl #3]
00756180  8a 71 83 e0                                      add r7, r3, sl, lsl #3
00756184  02 00 79 e3                                      cmn sb, #2
00756188  00 20 e0 03                                      mvneq r2, #0
0075618c  8a 21 83 07                                      streq r2, [r3, sl, lsl #3]
00756190  24 00 00 0a                                      beq #0x756228
00756194  04 b0 97 e5                                      ldr fp, [r7, #4]
00756198  01 00 7b e3                                      cmn fp, #1
0075619c  0c 20 a0 11                                      movne r2, ip
007561a0  20 00 00 0a                                      beq #0x756228
007561a4  01 20 82 e2                                      add r2, r2, #1
007561a8  06 20 02 e0                                      and r2, r2, r6
007561ac  82 10 a0 e1                                      lsl r1, r2, #1
007561b0  01 10 81 e2                                      add r1, r1, #1
007561b4  81 01 93 e7                                      ldr r0, [r3, r1, lsl #3]
007561b8  81 11 83 e0                                      add r1, r3, r1, lsl #3
007561bc  02 00 70 e3                                      cmn r0, #2
007561c0  f7 ff ff 1a                                      bne #0x7561a4
007561c4  0b 60 06 e0                                      and r6, r6, fp
007561c8  0c 00 56 e1                                      cmp r6, ip
007561cc  37 00 00 0a                                      beq #0x7562b0
007561d0  86 60 a0 e1                                      lsl r6, r6, #1
007561d4  01 b0 86 e2                                      add fp, r6, #1
007561d8  8b 61 93 e7                                      ldr r6, [r3, fp, lsl #3]
007561dc  8b b1 83 e0                                      add fp, r3, fp, lsl #3
007561e0  0c 00 56 e1                                      cmp r6, ip
007561e4  f9 ff ff 1a                                      bne #0x7561d0
007561e8  00 90 81 e5                                      str sb, [r1]
007561ec  04 00 97 e5                                      ldr r0, [r7, #4]
007561f0  04 00 81 e5                                      str r0, [r1, #4]
007561f4  08 00 97 e5                                      ldr r0, [r7, #8]
007561f8  08 00 81 e5                                      str r0, [r1, #8]
007561fc  0c 00 97 e5                                      ldr r0, [r7, #0xc]
00756200  0c 00 81 e5                                      str r0, [r1, #0xc]
00756204  00 20 8b e5                                      str r2, [fp]
00756208  00 20 94 e5                                      ldr r2, [r4]
0075620c  08 20 87 e5                                      str r2, [r7, #8]
00756210  00 20 95 e5                                      ldr r2, [r5]
00756214  04 80 87 e5                                      str r8, [r7, #4]
00756218  0c 20 87 e5                                      str r2, [r7, #0xc]
0075621c  00 20 e0 e3                                      mvn r2, #0
00756220  8a 21 83 e7                                      str r2, [r3, sl, lsl #3]
00756224  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00756228  04 80 87 e5                                      str r8, [r7, #4]
0075622c  00 30 94 e5                                      ldr r3, [r4]
00756230  08 30 87 e5                                      str r3, [r7, #8]
00756234  00 30 95 e5                                      ldr r3, [r5]
00756238  0c 30 87 e5                                      str r3, [r7, #0xc]
0075623c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00756240  d0 30 d7 e1                                      ldrsb r3, [r7]
00756244  01 00 73 e3                                      cmn r3, #1
00756248  04 30 97 05                                      ldreq r3, [r7, #4]
0075624c  0c 80 97 05                                      ldreq r8, [r7, #0xc]
00756250  01 30 43 12                                      subne r3, r3, #1
00756254  01 30 43 02                                      subeq r3, r3, #1
00756258  01 80 87 12                                      addne r8, r7, #1
0075625c  00 00 53 e3                                      cmp r3, #0
00756260  05 85 01 d3                                      movwle r8, #0x1505
00756264  08 20 a0 d1                                      movle r2, r8
00756268  0d 00 00 da                                      ble #0x7562a4
0075626c  03 30 88 e0                                      add r3, r8, r3
00756270  05 25 01 e3                                      movw r2, #0x1505
00756274  01 10 53 e5                                      ldrb r1, [r3, #-1]
00756278  01 30 43 e2                                      sub r3, r3, #1
0075627c  82 22 82 e0                                      add r2, r2, r2, lsl #5
00756280  41 00 41 e2                                      sub r0, r1, #0x41
00756284  70 00 ef e6                                      uxtb r0, r0
00756288  19 00 50 e3                                      cmp r0, #0x19
0075628c  20 10 81 92                                      addls r1, r1, #0x20
00756290  08 00 53 e1                                      cmp r3, r8
00756294  02 20 21 e0                                      eor r2, r1, r2
00756298  f5 ff ff 1a                                      bne #0x756274
0075629c  52 20 b7 e7                                      sbfx r2, r2, #0, #0x18
007562a0  02 80 a0 e1                                      mov r8, r2
007562a4  12 c0 d7 e7                                      bfi ip, r2, #0, #0x18
007562a8  10 c0 87 e5                                      str ip, [r7, #0x10]
007562ac  ab ff ff ea                                      b #0x756160
007562b0  00 90 81 e5                                      str sb, [r1]
007562b4  04 00 97 e5                                      ldr r0, [r7, #4]
007562b8  04 00 81 e5                                      str r0, [r1, #4]
007562bc  08 00 97 e5                                      ldr r0, [r7, #8]
007562c0  08 00 81 e5                                      str r0, [r1, #8]
007562c4  0c 00 97 e5                                      ldr r0, [r7, #0xc]
007562c8  0c 00 81 e5                                      str r0, [r1, #0xc]
007562cc  00 10 94 e5                                      ldr r1, [r4]
007562d0  08 10 87 e5                                      str r1, [r7, #8]
007562d4  00 10 95 e5                                      ldr r1, [r5]
007562d8  0c 10 87 e5                                      str r1, [r7, #0xc]
007562dc  8a 21 83 e7                                      str r2, [r3, sl, lsl #3]
007562e0  04 80 87 e5                                      str r8, [r7, #4]
007562e4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
