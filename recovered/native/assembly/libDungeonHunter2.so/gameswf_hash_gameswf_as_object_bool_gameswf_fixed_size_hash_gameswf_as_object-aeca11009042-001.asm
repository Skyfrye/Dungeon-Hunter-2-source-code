; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00768b88, declared_size=192, range_size=192, mode=arm
; class-group: gameswf::hash<gameswf::as_object*, bool, gameswf::fixed_size_hash<gameswf::as_object*> >
; alias: _ZNK7gameswf4hashIPNS_9as_objectEbNS_15fixed_size_hashIS2_EEE10find_indexERKS2_
; demangled: gameswf::hash<gameswf::as_object*, bool, gameswf::fixed_size_hash<gameswf::as_object*> >::find_index(gameswf::as_object* const&) const
; decoder-mode: arm
00768b88  30 00 2d e9                                      push {r4, r5}
00768b8c  00 30 90 e5                                      ldr r3, [r0]
00768b90  00 00 53 e3                                      cmp r3, #0
00768b94  02 00 00 1a                                      bne #0x768ba4
00768b98  00 00 e0 e3                                      mvn r0, #0
00768b9c  30 00 bd e8                                      pop {r4, r5}
00768ba0  1e ff 2f e1                                      bx lr
00768ba4  05 25 01 e3                                      movw r2, #0x1505
00768ba8  04 00 a0 e3                                      mov r0, #4
00768bac  01 00 40 e2                                      sub r0, r0, #1
00768bb0  00 40 d1 e7                                      ldrb r4, [r1, r0]
00768bb4  02 c3 a0 e1                                      lsl ip, r2, #6
00768bb8  02 c8 8c e0                                      add ip, ip, r2, lsl #16
00768bbc  04 c0 8c e0                                      add ip, ip, r4
00768bc0  00 00 50 e3                                      cmp r0, #0
00768bc4  0c 20 62 e0                                      rsb r2, r2, ip
00768bc8  f7 ff ff 1a                                      bne #0x768bac
00768bcc  04 00 93 e5                                      ldr r0, [r3, #4]
00768bd0  01 00 72 e3                                      cmn r2, #1
00768bd4  02 29 e0 03                                      mvneq r2, #0x8000
00768bd8  00 40 02 e0                                      and r4, r2, r0
00768bdc  84 c0 a0 e1                                      lsl ip, r4, #1
00768be0  01 c0 8c e2                                      add ip, ip, #1
00768be4  8c 51 93 e7                                      ldr r5, [r3, ip, lsl #3]
00768be8  8c c1 83 e0                                      add ip, r3, ip, lsl #3
00768bec  02 00 75 e3                                      cmn r5, #2
00768bf0  e8 ff ff 0a                                      beq #0x768b98
00768bf4  04 50 9c e5                                      ldr r5, [ip, #4]
00768bf8  01 00 75 e3                                      cmn r5, #1
00768bfc  04 00 a0 01                                      moveq r0, r4
00768c00  06 00 00 0a                                      beq #0x768c20
00768c04  05 00 00 e0                                      and r0, r0, r5
00768c08  04 00 50 e1                                      cmp r0, r4
00768c0c  e1 ff ff 1a                                      bne #0x768b98
00768c10  02 00 00 ea                                      b #0x768c20
00768c14  00 c2 83 e0                                      add ip, r3, r0, lsl #4
00768c18  08 c0 8c e2                                      add ip, ip, #8
00768c1c  04 50 9c e5                                      ldr r5, [ip, #4]
00768c20  05 00 52 e1                                      cmp r2, r5
00768c24  03 00 00 1a                                      bne #0x768c38
00768c28  08 50 9c e5                                      ldr r5, [ip, #8]
00768c2c  00 40 91 e5                                      ldr r4, [r1]
00768c30  04 00 55 e1                                      cmp r5, r4
00768c34  d8 ff ff 0a                                      beq #0x768b9c
00768c38  00 00 9c e5                                      ldr r0, [ip]
00768c3c  01 00 70 e3                                      cmn r0, #1
00768c40  f3 ff ff 1a                                      bne #0x768c14
00768c44  d4 ff ff ea                                      b #0x768b9c

; FUNCTION 0x00768c48, declared_size=128, range_size=128, mode=arm
; class-group: gameswf::hash<gameswf::as_object*, bool, gameswf::fixed_size_hash<gameswf::as_object*> >
; alias: _ZN7gameswf4hashIPNS_9as_objectEbNS_15fixed_size_hashIS2_EEE5clearEv
; demangled: gameswf::hash<gameswf::as_object*, bool, gameswf::fixed_size_hash<gameswf::as_object*> >::clear()
; decoder-mode: arm
00768c48  70 40 2d e9                                      push {r4, r5, r6, lr}
00768c4c  00 40 a0 e1                                      mov r4, r0
00768c50  00 00 90 e5                                      ldr r0, [r0]
00768c54  00 00 50 e3                                      cmp r0, #0
00768c58  19 00 00 0a                                      beq #0x768cc4
00768c5c  04 10 90 e5                                      ldr r1, [r0, #4]
00768c60  00 00 51 e3                                      cmp r1, #0
00768c64  11 00 00 ba                                      blt #0x768cb0
00768c68  00 20 a0 e3                                      mov r2, #0
00768c6c  08 30 a0 e3                                      mov r3, #8
00768c70  01 60 e0 e3                                      mvn r6, #1
00768c74  02 50 a0 e1                                      mov r5, r2
00768c78  03 e0 90 e7                                      ldr lr, [r0, r3]
00768c7c  01 20 82 e2                                      add r2, r2, #1
00768c80  03 c0 80 e0                                      add ip, r0, r3
00768c84  02 00 7e e3                                      cmn lr, #2
00768c88  04 00 00 0a                                      beq #0x768ca0
00768c8c  04 e0 9c e5                                      ldr lr, [ip, #4]
00768c90  01 00 7e e3                                      cmn lr, #1
00768c94  04 50 8c 15                                      strne r5, [ip, #4]
00768c98  00 60 8c 15                                      strne r6, [ip]
00768c9c  00 00 94 15                                      ldrne r0, [r4]
00768ca0  02 00 51 e1                                      cmp r1, r2
00768ca4  10 30 83 e2                                      add r3, r3, #0x10
00768ca8  f2 ff ff aa                                      bge #0x768c78
00768cac  04 10 90 e5                                      ldr r1, [r0, #4]
00768cb0  01 12 a0 e1                                      lsl r1, r1, #4
00768cb4  18 10 81 e2                                      add r1, r1, #0x18
00768cb8  9e a7 ff eb                                      bl #0x752b38
00768cbc  00 30 a0 e3                                      mov r3, #0
00768cc0  00 30 84 e5                                      str r3, [r4]
00768cc4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00769610, declared_size=344, range_size=344, mode=arm
; class-group: gameswf::hash<gameswf::as_object*, bool, gameswf::fixed_size_hash<gameswf::as_object*> >
; alias: _ZN7gameswf4hashIPNS_9as_objectEbNS_15fixed_size_hashIS2_EEE16set_raw_capacityEi
; demangled: gameswf::hash<gameswf::as_object*, bool, gameswf::fixed_size_hash<gameswf::as_object*> >::set_raw_capacity(int)
; decoder-mode: arm
00769610  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00769614  00 00 51 e3                                      cmp r1, #0
00769618  0c d0 4d e2                                      sub sp, sp, #0xc
0076961c  00 80 a0 e1                                      mov r8, r0
00769620  4d 00 00 da                                      ble #0x76975c
00769624  01 00 41 e2                                      sub r0, r1, #1
00769628  cd 94 ee eb                                      bl #0x30e964
0076962c  20 92 ee eb                                      bl #0x30deb4
00769630  18 12 07 e3                                      movw r1, #0x7218
00769634  31 1f 43 e3                                      movt r1, #0x3f31
00769638  95 95 ee eb                                      bl #0x30ec94
0076963c  fe 15 a0 e3                                      mov r1, #0x3f800000
00769640  57 95 ee eb                                      bl #0x30eba4
00769644  a0 93 ee eb                                      bl #0x30e4cc
00769648  01 40 a0 e3                                      mov r4, #1
0076964c  14 40 a0 e1                                      lsl r4, r4, r0
00769650  00 30 98 e5                                      ldr r3, [r8]
00769654  04 00 54 e3                                      cmp r4, #4
00769658  04 40 a0 b3                                      movlt r4, #4
0076965c  00 00 53 e3                                      cmp r3, #0
00769660  03 00 00 0a                                      beq #0x769674
00769664  04 30 93 e5                                      ldr r3, [r3, #4]
00769668  01 30 83 e2                                      add r3, r3, #1
0076966c  04 00 53 e1                                      cmp r3, r4
00769670  3a 00 00 0a                                      beq #0x769760
00769674  00 50 a0 e3                                      mov r5, #0
00769678  04 02 a0 e1                                      lsl r0, r4, #4
0076967c  08 00 80 e2                                      add r0, r0, #8
00769680  05 10 a0 e1                                      mov r1, r5
00769684  04 50 8d e5                                      str r5, [sp, #4]
00769688  43 a5 ff eb                                      bl #0x752b9c
0076968c  04 00 8d e5                                      str r0, [sp, #4]
00769690  00 50 80 e5                                      str r5, [r0]
00769694  04 30 9d e5                                      ldr r3, [sp, #4]
00769698  01 20 44 e2                                      sub r2, r4, #1
0076969c  01 90 e0 e3                                      mvn sb, #1
007696a0  04 20 83 e5                                      str r2, [r3, #4]
007696a4  08 30 a0 e3                                      mov r3, #8
007696a8  04 20 9d e5                                      ldr r2, [sp, #4]
007696ac  01 50 85 e2                                      add r5, r5, #1
007696b0  05 00 54 e1                                      cmp r4, r5
007696b4  03 90 82 e7                                      str sb, [r2, r3]
007696b8  10 30 83 e2                                      add r3, r3, #0x10
007696bc  f9 ff ff ca                                      bgt #0x7696a8
007696c0  00 30 98 e5                                      ldr r3, [r8]
007696c4  00 00 53 e3                                      cmp r3, #0
007696c8  04 a0 8d 02                                      addeq sl, sp, #4
007696cc  1d 00 00 0a                                      beq #0x769748
007696d0  04 70 93 e5                                      ldr r7, [r3, #4]
007696d4  00 00 57 e3                                      cmp r7, #0
007696d8  04 a0 8d b2                                      addlt sl, sp, #4
007696dc  15 00 00 ba                                      blt #0x769738
007696e0  00 60 a0 e3                                      mov r6, #0
007696e4  08 40 a0 e3                                      mov r4, #8
007696e8  04 a0 8d e2                                      add sl, sp, #4
007696ec  06 b0 a0 e1                                      mov fp, r6
007696f0  04 20 93 e7                                      ldr r2, [r3, r4]
007696f4  01 60 86 e2                                      add r6, r6, #1
007696f8  04 50 83 e0                                      add r5, r3, r4
007696fc  02 00 72 e3                                      cmn r2, #2
00769700  08 00 00 0a                                      beq #0x769728
00769704  04 20 95 e5                                      ldr r2, [r5, #4]
00769708  0a 00 a0 e1                                      mov r0, sl
0076970c  08 10 85 e2                                      add r1, r5, #8
00769710  01 00 72 e3                                      cmn r2, #1
00769714  03 00 00 0a                                      beq #0x769728
00769718  0c 20 85 e2                                      add r2, r5, #0xc
0076971c  1e 00 00 eb                                      bl #0x76979c
00769720  00 0a 85 e8                                      stm r5, {sb, fp}
00769724  00 30 98 e5                                      ldr r3, [r8]
00769728  06 00 57 e1                                      cmp r7, r6
0076972c  10 40 84 e2                                      add r4, r4, #0x10
00769730  ee ff ff aa                                      bge #0x7696f0
00769734  04 70 93 e5                                      ldr r7, [r3, #4]
00769738  07 12 a0 e1                                      lsl r1, r7, #4
0076973c  03 00 a0 e1                                      mov r0, r3
00769740  18 10 81 e2                                      add r1, r1, #0x18
00769744  fb a4 ff eb                                      bl #0x752b38
00769748  04 30 9d e5                                      ldr r3, [sp, #4]
0076974c  0a 00 a0 e1                                      mov r0, sl
00769750  00 30 88 e5                                      str r3, [r8]
00769754  00 30 a0 e3                                      mov r3, #0
00769758  04 30 8d e5                                      str r3, [sp, #4]
0076975c  39 fd ff eb                                      bl #0x768c48
00769760  0c d0 8d e2                                      add sp, sp, #0xc
00769764  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00769768, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::hash<gameswf::as_object*, bool, gameswf::fixed_size_hash<gameswf::as_object*> >
; alias: _ZN7gameswf4hashIPNS_9as_objectEbNS_15fixed_size_hashIS2_EEE12check_expandEv
; demangled: gameswf::hash<gameswf::as_object*, bool, gameswf::fixed_size_hash<gameswf::as_object*> >::check_expand()
; decoder-mode: arm
00769768  00 30 90 e5                                      ldr r3, [r0]
0076976c  00 00 53 e3                                      cmp r3, #0
00769770  07 00 00 0a                                      beq #0x769794
00769774  04 10 93 e5                                      ldr r1, [r3, #4]
00769778  00 30 93 e5                                      ldr r3, [r3]
0076977c  01 10 81 e2                                      add r1, r1, #1
00769780  81 10 a0 e1                                      lsl r1, r1, #1
00769784  83 30 83 e0                                      add r3, r3, r3, lsl #1
00769788  01 00 53 e1                                      cmp r3, r1
0076978c  1e ff 2f d1                                      bxle lr
00769790  9e ff ff ea                                      b #0x769610
00769794  08 10 a0 e3                                      mov r1, #8
00769798  9c ff ff ea                                      b #0x769610

; FUNCTION 0x0076979c, declared_size=356, range_size=356, mode=arm
; class-group: gameswf::hash<gameswf::as_object*, bool, gameswf::fixed_size_hash<gameswf::as_object*> >
; alias: _ZN7gameswf4hashIPNS_9as_objectEbNS_15fixed_size_hashIS2_EEE3addERKS2_RKb
; demangled: gameswf::hash<gameswf::as_object*, bool, gameswf::fixed_size_hash<gameswf::as_object*> >::add(gameswf::as_object* const&, bool const&)
; decoder-mode: arm
0076979c  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
007697a0  00 50 a0 e1                                      mov r5, r0
007697a4  01 40 a0 e1                                      mov r4, r1
007697a8  02 b0 a0 e1                                      mov fp, r2
007697ac  ed ff ff eb                                      bl #0x769768
007697b0  00 10 95 e5                                      ldr r1, [r5]
007697b4  05 25 01 e3                                      movw r2, #0x1505
007697b8  04 30 a0 e3                                      mov r3, #4
007697bc  00 00 91 e5                                      ldr r0, [r1]
007697c0  01 00 80 e2                                      add r0, r0, #1
007697c4  00 00 81 e5                                      str r0, [r1]
007697c8  01 30 43 e2                                      sub r3, r3, #1
007697cc  03 00 d4 e7                                      ldrb r0, [r4, r3]
007697d0  02 13 a0 e1                                      lsl r1, r2, #6
007697d4  02 18 81 e0                                      add r1, r1, r2, lsl #16
007697d8  00 10 81 e0                                      add r1, r1, r0
007697dc  00 00 53 e3                                      cmp r3, #0
007697e0  01 20 62 e0                                      rsb r2, r2, r1
007697e4  f7 ff ff 1a                                      bne #0x7697c8
007697e8  00 30 95 e5                                      ldr r3, [r5]
007697ec  01 00 72 e3                                      cmn r2, #1
007697f0  02 29 e0 03                                      mvneq r2, #0x8000
007697f4  04 60 93 e5                                      ldr r6, [r3, #4]
007697f8  06 50 02 e0                                      and r5, r2, r6
007697fc  85 80 a0 e1                                      lsl r8, r5, #1
00769800  01 80 88 e2                                      add r8, r8, #1
00769804  88 a1 93 e7                                      ldr sl, [r3, r8, lsl #3]
00769808  88 71 83 e0                                      add r7, r3, r8, lsl #3
0076980c  02 00 7a e3                                      cmn sl, #2
00769810  00 10 e0 03                                      mvneq r1, #0
00769814  88 11 83 07                                      streq r1, [r3, r8, lsl #3]
00769818  24 00 00 0a                                      beq #0x7698b0
0076981c  04 90 97 e5                                      ldr sb, [r7, #4]
00769820  01 00 79 e3                                      cmn sb, #1
00769824  05 10 a0 11                                      movne r1, r5
00769828  20 00 00 0a                                      beq #0x7698b0
0076982c  01 10 81 e2                                      add r1, r1, #1
00769830  06 10 01 e0                                      and r1, r1, r6
00769834  81 00 a0 e1                                      lsl r0, r1, #1
00769838  01 00 80 e2                                      add r0, r0, #1
0076983c  80 c1 93 e7                                      ldr ip, [r3, r0, lsl #3]
00769840  80 01 83 e0                                      add r0, r3, r0, lsl #3
00769844  02 00 7c e3                                      cmn ip, #2
00769848  f7 ff ff 1a                                      bne #0x76982c
0076984c  09 60 06 e0                                      and r6, r6, sb
00769850  05 00 56 e1                                      cmp r6, r5
00769854  1b 00 00 0a                                      beq #0x7698c8
00769858  86 60 a0 e1                                      lsl r6, r6, #1
0076985c  01 90 86 e2                                      add sb, r6, #1
00769860  89 61 93 e7                                      ldr r6, [r3, sb, lsl #3]
00769864  89 91 83 e0                                      add sb, r3, sb, lsl #3
00769868  05 00 56 e1                                      cmp r6, r5
0076986c  f9 ff ff 1a                                      bne #0x769858
00769870  00 a0 80 e5                                      str sl, [r0]
00769874  04 c0 97 e5                                      ldr ip, [r7, #4]
00769878  04 c0 80 e5                                      str ip, [r0, #4]
0076987c  08 c0 97 e5                                      ldr ip, [r7, #8]
00769880  08 c0 80 e5                                      str ip, [r0, #8]
00769884  0c c0 d7 e5                                      ldrb ip, [r7, #0xc]
00769888  0c c0 c0 e5                                      strb ip, [r0, #0xc]
0076988c  00 10 89 e5                                      str r1, [sb]
00769890  00 10 94 e5                                      ldr r1, [r4]
00769894  08 10 87 e5                                      str r1, [r7, #8]
00769898  00 10 db e5                                      ldrb r1, [fp]
0076989c  04 20 87 e5                                      str r2, [r7, #4]
007698a0  00 20 e0 e3                                      mvn r2, #0
007698a4  0c 10 c7 e5                                      strb r1, [r7, #0xc]
007698a8  88 21 83 e7                                      str r2, [r3, r8, lsl #3]
007698ac  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
007698b0  04 20 87 e5                                      str r2, [r7, #4]
007698b4  00 30 94 e5                                      ldr r3, [r4]
007698b8  08 30 87 e5                                      str r3, [r7, #8]
007698bc  00 30 db e5                                      ldrb r3, [fp]
007698c0  0c 30 c7 e5                                      strb r3, [r7, #0xc]
007698c4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
007698c8  00 a0 80 e5                                      str sl, [r0]
007698cc  04 c0 97 e5                                      ldr ip, [r7, #4]
007698d0  04 c0 80 e5                                      str ip, [r0, #4]
007698d4  08 c0 97 e5                                      ldr ip, [r7, #8]
007698d8  08 c0 80 e5                                      str ip, [r0, #8]
007698dc  0c c0 d7 e5                                      ldrb ip, [r7, #0xc]
007698e0  0c c0 c0 e5                                      strb ip, [r0, #0xc]
007698e4  00 00 94 e5                                      ldr r0, [r4]
007698e8  08 00 87 e5                                      str r0, [r7, #8]
007698ec  00 00 db e5                                      ldrb r0, [fp]
007698f0  0c 00 c7 e5                                      strb r0, [r7, #0xc]
007698f4  88 11 83 e7                                      str r1, [r3, r8, lsl #3]
007698f8  04 20 87 e5                                      str r2, [r7, #4]
007698fc  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00769900, declared_size=68, range_size=68, mode=arm
; class-group: gameswf::hash<gameswf::as_object*, bool, gameswf::fixed_size_hash<gameswf::as_object*> >
; alias: _ZN7gameswf4hashIPNS_9as_objectEbNS_15fixed_size_hashIS2_EEE3setERKS2_RKb
; demangled: gameswf::hash<gameswf::as_object*, bool, gameswf::fixed_size_hash<gameswf::as_object*> >::set(gameswf::as_object* const&, bool const&)
; decoder-mode: arm
00769900  70 40 2d e9                                      push {r4, r5, r6, lr}
00769904  02 40 a0 e1                                      mov r4, r2
00769908  00 50 a0 e1                                      mov r5, r0
0076990c  01 60 a0 e1                                      mov r6, r1
00769910  9c fc ff eb                                      bl #0x768b88
00769914  00 00 50 e3                                      cmp r0, #0
00769918  04 00 00 ba                                      blt #0x769930
0076991c  00 20 95 e5                                      ldr r2, [r5]
00769920  00 30 d4 e5                                      ldrb r3, [r4]
00769924  00 02 82 e0                                      add r0, r2, r0, lsl #4
00769928  14 30 c0 e5                                      strb r3, [r0, #0x14]
0076992c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00769930  05 00 a0 e1                                      mov r0, r5
00769934  06 10 a0 e1                                      mov r1, r6
00769938  04 20 a0 e1                                      mov r2, r4
0076993c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00769940  95 ff ff ea                                      b #0x76979c
