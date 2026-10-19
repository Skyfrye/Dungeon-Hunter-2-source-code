; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00763b60, declared_size=192, range_size=192, mode=arm
; class-group: gameswf::hash<int, gameswf::smart_ptr<gameswf::sound_sample>, gameswf::fixed_size_hash<int> >
; alias: _ZNK7gameswf4hashIiNS_9smart_ptrINS_12sound_sampleEEENS_15fixed_size_hashIiEEE10find_indexERKi
; demangled: gameswf::hash<int, gameswf::smart_ptr<gameswf::sound_sample>, gameswf::fixed_size_hash<int> >::find_index(int const&) const
; decoder-mode: arm
00763b60  30 00 2d e9                                      push {r4, r5}
00763b64  00 30 90 e5                                      ldr r3, [r0]
00763b68  00 00 53 e3                                      cmp r3, #0
00763b6c  02 00 00 1a                                      bne #0x763b7c
00763b70  00 00 e0 e3                                      mvn r0, #0
00763b74  30 00 bd e8                                      pop {r4, r5}
00763b78  1e ff 2f e1                                      bx lr
00763b7c  05 25 01 e3                                      movw r2, #0x1505
00763b80  04 00 a0 e3                                      mov r0, #4
00763b84  01 00 40 e2                                      sub r0, r0, #1
00763b88  00 40 d1 e7                                      ldrb r4, [r1, r0]
00763b8c  02 c3 a0 e1                                      lsl ip, r2, #6
00763b90  02 c8 8c e0                                      add ip, ip, r2, lsl #16
00763b94  04 c0 8c e0                                      add ip, ip, r4
00763b98  00 00 50 e3                                      cmp r0, #0
00763b9c  0c 20 62 e0                                      rsb r2, r2, ip
00763ba0  f7 ff ff 1a                                      bne #0x763b84
00763ba4  04 00 93 e5                                      ldr r0, [r3, #4]
00763ba8  01 00 72 e3                                      cmn r2, #1
00763bac  02 29 e0 03                                      mvneq r2, #0x8000
00763bb0  00 40 02 e0                                      and r4, r2, r0
00763bb4  84 c0 a0 e1                                      lsl ip, r4, #1
00763bb8  01 c0 8c e2                                      add ip, ip, #1
00763bbc  8c 51 93 e7                                      ldr r5, [r3, ip, lsl #3]
00763bc0  8c c1 83 e0                                      add ip, r3, ip, lsl #3
00763bc4  02 00 75 e3                                      cmn r5, #2
00763bc8  e8 ff ff 0a                                      beq #0x763b70
00763bcc  04 50 9c e5                                      ldr r5, [ip, #4]
00763bd0  01 00 75 e3                                      cmn r5, #1
00763bd4  04 00 a0 01                                      moveq r0, r4
00763bd8  06 00 00 0a                                      beq #0x763bf8
00763bdc  05 00 00 e0                                      and r0, r0, r5
00763be0  04 00 50 e1                                      cmp r0, r4
00763be4  e1 ff ff 1a                                      bne #0x763b70
00763be8  02 00 00 ea                                      b #0x763bf8
00763bec  00 c2 83 e0                                      add ip, r3, r0, lsl #4
00763bf0  08 c0 8c e2                                      add ip, ip, #8
00763bf4  04 50 9c e5                                      ldr r5, [ip, #4]
00763bf8  05 00 52 e1                                      cmp r2, r5
00763bfc  03 00 00 1a                                      bne #0x763c10
00763c00  08 50 9c e5                                      ldr r5, [ip, #8]
00763c04  00 40 91 e5                                      ldr r4, [r1]
00763c08  04 00 55 e1                                      cmp r5, r4
00763c0c  d8 ff ff 0a                                      beq #0x763b74
00763c10  00 00 9c e5                                      ldr r0, [ip]
00763c14  01 00 70 e3                                      cmn r0, #1
00763c18  f3 ff ff 1a                                      bne #0x763bec
00763c1c  d4 ff ff ea                                      b #0x763b74

; FUNCTION 0x00763e98, declared_size=144, range_size=144, mode=arm
; class-group: gameswf::hash<int, gameswf::smart_ptr<gameswf::sound_sample>, gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiNS_9smart_ptrINS_12sound_sampleEEENS_15fixed_size_hashIiEEE5clearEv
; demangled: gameswf::hash<int, gameswf::smart_ptr<gameswf::sound_sample>, gameswf::fixed_size_hash<int> >::clear()
; decoder-mode: arm
00763e98  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00763e9c  00 40 a0 e1                                      mov r4, r0
00763ea0  00 00 90 e5                                      ldr r0, [r0]
00763ea4  00 00 50 e3                                      cmp r0, #0
00763ea8  1d 00 00 0a                                      beq #0x763f24
00763eac  04 80 90 e5                                      ldr r8, [r0, #4]
00763eb0  00 00 58 e3                                      cmp r8, #0
00763eb4  15 00 00 ba                                      blt #0x763f10
00763eb8  00 70 a0 e3                                      mov r7, #0
00763ebc  08 50 a0 e3                                      mov r5, #8
00763ec0  01 90 e0 e3                                      mvn sb, #1
00763ec4  07 a0 a0 e1                                      mov sl, r7
00763ec8  05 30 90 e7                                      ldr r3, [r0, r5]
00763ecc  01 70 87 e2                                      add r7, r7, #1
00763ed0  05 60 80 e0                                      add r6, r0, r5
00763ed4  02 00 73 e3                                      cmn r3, #2
00763ed8  08 00 00 0a                                      beq #0x763f00
00763edc  04 30 96 e5                                      ldr r3, [r6, #4]
00763ee0  01 00 73 e3                                      cmn r3, #1
00763ee4  05 00 00 0a                                      beq #0x763f00
00763ee8  0c 00 96 e5                                      ldr r0, [r6, #0xc]
00763eec  00 00 50 e3                                      cmp r0, #0
00763ef0  00 00 00 0a                                      beq #0x763ef8
00763ef4  d1 d8 ff eb                                      bl #0x75a240
00763ef8  00 06 86 e8                                      stm r6, {sb, sl}
00763efc  00 00 94 e5                                      ldr r0, [r4]
00763f00  07 00 58 e1                                      cmp r8, r7
00763f04  10 50 85 e2                                      add r5, r5, #0x10
00763f08  ee ff ff aa                                      bge #0x763ec8
00763f0c  04 80 90 e5                                      ldr r8, [r0, #4]
00763f10  08 12 a0 e1                                      lsl r1, r8, #4
00763f14  18 10 81 e2                                      add r1, r1, #0x18
00763f18  06 bb ff eb                                      bl #0x752b38
00763f1c  00 30 a0 e3                                      mov r3, #0
00763f20  00 30 84 e5                                      str r3, [r4]
00763f24  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00764114, declared_size=76, range_size=76, mode=arm
; class-group: gameswf::hash<int, gameswf::smart_ptr<gameswf::sound_sample>, gameswf::fixed_size_hash<int> >
; alias: _ZNK7gameswf4hashIiNS_9smart_ptrINS_12sound_sampleEEENS_15fixed_size_hashIiEEE3getERKiPS3_
; demangled: gameswf::hash<int, gameswf::smart_ptr<gameswf::sound_sample>, gameswf::fixed_size_hash<int> >::get(int const&, gameswf::smart_ptr<gameswf::sound_sample>*) const
; decoder-mode: arm
00764114  70 40 2d e9                                      push {r4, r5, r6, lr}
00764118  02 40 a0 e1                                      mov r4, r2
0076411c  00 50 a0 e1                                      mov r5, r0
00764120  8e fe ff eb                                      bl #0x763b60
00764124  00 30 50 e2                                      subs r3, r0, #0
00764128  08 00 00 ba                                      blt #0x764150
0076412c  00 00 54 e3                                      cmp r4, #0
00764130  08 00 00 0a                                      beq #0x764158
00764134  00 20 95 e5                                      ldr r2, [r5]
00764138  04 00 a0 e1                                      mov r0, r4
0076413c  03 32 82 e0                                      add r3, r2, r3, lsl #4
00764140  14 10 93 e5                                      ldr r1, [r3, #0x14]
00764144  e2 ff ff eb                                      bl #0x7640d4
00764148  01 00 a0 e3                                      mov r0, #1
0076414c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00764150  00 00 a0 e3                                      mov r0, #0
00764154  70 80 bd e8                                      pop {r4, r5, r6, pc}
00764158  01 00 a0 e3                                      mov r0, #1
0076415c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007665dc, declared_size=360, range_size=360, mode=arm
; class-group: gameswf::hash<int, gameswf::smart_ptr<gameswf::sound_sample>, gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiNS_9smart_ptrINS_12sound_sampleEEENS_15fixed_size_hashIiEEE16set_raw_capacityEi
; demangled: gameswf::hash<int, gameswf::smart_ptr<gameswf::sound_sample>, gameswf::fixed_size_hash<int> >::set_raw_capacity(int)
; decoder-mode: arm
007665dc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007665e0  00 00 51 e3                                      cmp r1, #0
007665e4  0c d0 4d e2                                      sub sp, sp, #0xc
007665e8  00 a0 a0 e1                                      mov sl, r0
007665ec  51 00 00 da                                      ble #0x766738
007665f0  01 00 41 e2                                      sub r0, r1, #1
007665f4  da a0 ee eb                                      bl #0x30e964
007665f8  2d 9e ee eb                                      bl #0x30deb4
007665fc  18 12 07 e3                                      movw r1, #0x7218
00766600  31 1f 43 e3                                      movt r1, #0x3f31
00766604  a2 a1 ee eb                                      bl #0x30ec94
00766608  fe 15 a0 e3                                      mov r1, #0x3f800000
0076660c  64 a1 ee eb                                      bl #0x30eba4
00766610  ad 9f ee eb                                      bl #0x30e4cc
00766614  01 40 a0 e3                                      mov r4, #1
00766618  14 40 a0 e1                                      lsl r4, r4, r0
0076661c  00 30 9a e5                                      ldr r3, [sl]
00766620  04 00 54 e3                                      cmp r4, #4
00766624  04 40 a0 b3                                      movlt r4, #4
00766628  00 00 53 e3                                      cmp r3, #0
0076662c  03 00 00 0a                                      beq #0x766640
00766630  04 30 93 e5                                      ldr r3, [r3, #4]
00766634  01 30 83 e2                                      add r3, r3, #1
00766638  04 00 53 e1                                      cmp r3, r4
0076663c  3e 00 00 0a                                      beq #0x76673c
00766640  00 50 a0 e3                                      mov r5, #0
00766644  04 02 a0 e1                                      lsl r0, r4, #4
00766648  08 00 80 e2                                      add r0, r0, #8
0076664c  05 10 a0 e1                                      mov r1, r5
00766650  04 50 8d e5                                      str r5, [sp, #4]
00766654  50 b1 ff eb                                      bl #0x752b9c
00766658  04 00 8d e5                                      str r0, [sp, #4]
0076665c  00 50 80 e5                                      str r5, [r0]
00766660  04 30 9d e5                                      ldr r3, [sp, #4]
00766664  01 20 44 e2                                      sub r2, r4, #1
00766668  01 90 e0 e3                                      mvn sb, #1
0076666c  04 20 83 e5                                      str r2, [r3, #4]
00766670  08 30 a0 e3                                      mov r3, #8
00766674  04 20 9d e5                                      ldr r2, [sp, #4]
00766678  01 50 85 e2                                      add r5, r5, #1
0076667c  05 00 54 e1                                      cmp r4, r5
00766680  03 90 82 e7                                      str sb, [r2, r3]
00766684  10 30 83 e2                                      add r3, r3, #0x10
00766688  f9 ff ff ca                                      bgt #0x766674
0076668c  00 30 9a e5                                      ldr r3, [sl]
00766690  00 00 53 e3                                      cmp r3, #0
00766694  04 80 8d 02                                      addeq r8, sp, #4
00766698  21 00 00 0a                                      beq #0x766724
0076669c  04 70 93 e5                                      ldr r7, [r3, #4]
007666a0  00 00 57 e3                                      cmp r7, #0
007666a4  04 80 8d b2                                      addlt r8, sp, #4
007666a8  19 00 00 ba                                      blt #0x766714
007666ac  00 60 a0 e3                                      mov r6, #0
007666b0  08 50 a0 e3                                      mov r5, #8
007666b4  04 80 8d e2                                      add r8, sp, #4
007666b8  06 b0 a0 e1                                      mov fp, r6
007666bc  05 c0 93 e7                                      ldr ip, [r3, r5]
007666c0  05 40 83 e0                                      add r4, r3, r5
007666c4  08 00 a0 e1                                      mov r0, r8
007666c8  02 00 7c e3                                      cmn ip, #2
007666cc  01 60 86 e2                                      add r6, r6, #1
007666d0  08 10 84 e2                                      add r1, r4, #8
007666d4  0c 20 84 e2                                      add r2, r4, #0xc
007666d8  09 00 00 0a                                      beq #0x766704
007666dc  04 c0 94 e5                                      ldr ip, [r4, #4]
007666e0  01 00 7c e3                                      cmn ip, #1
007666e4  06 00 00 0a                                      beq #0x766704
007666e8  22 00 00 eb                                      bl #0x766778
007666ec  0c 00 94 e5                                      ldr r0, [r4, #0xc]
007666f0  00 00 50 e3                                      cmp r0, #0
007666f4  00 00 00 0a                                      beq #0x7666fc
007666f8  d0 ce ff eb                                      bl #0x75a240
007666fc  00 0a 84 e8                                      stm r4, {sb, fp}
00766700  00 30 9a e5                                      ldr r3, [sl]
00766704  06 00 57 e1                                      cmp r7, r6
00766708  10 50 85 e2                                      add r5, r5, #0x10
0076670c  ea ff ff aa                                      bge #0x7666bc
00766710  04 70 93 e5                                      ldr r7, [r3, #4]
00766714  07 12 a0 e1                                      lsl r1, r7, #4
00766718  03 00 a0 e1                                      mov r0, r3
0076671c  18 10 81 e2                                      add r1, r1, #0x18
00766720  04 b1 ff eb                                      bl #0x752b38
00766724  04 30 9d e5                                      ldr r3, [sp, #4]
00766728  08 00 a0 e1                                      mov r0, r8
0076672c  00 30 8a e5                                      str r3, [sl]
00766730  00 30 a0 e3                                      mov r3, #0
00766734  04 30 8d e5                                      str r3, [sp, #4]
00766738  d6 f5 ff eb                                      bl #0x763e98
0076673c  0c d0 8d e2                                      add sp, sp, #0xc
00766740  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00766744, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::hash<int, gameswf::smart_ptr<gameswf::sound_sample>, gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiNS_9smart_ptrINS_12sound_sampleEEENS_15fixed_size_hashIiEEE12check_expandEv
; demangled: gameswf::hash<int, gameswf::smart_ptr<gameswf::sound_sample>, gameswf::fixed_size_hash<int> >::check_expand()
; decoder-mode: arm
00766744  00 30 90 e5                                      ldr r3, [r0]
00766748  00 00 53 e3                                      cmp r3, #0
0076674c  07 00 00 0a                                      beq #0x766770
00766750  04 10 93 e5                                      ldr r1, [r3, #4]
00766754  00 30 93 e5                                      ldr r3, [r3]
00766758  01 10 81 e2                                      add r1, r1, #1
0076675c  81 10 a0 e1                                      lsl r1, r1, #1
00766760  83 30 83 e0                                      add r3, r3, r3, lsl #1
00766764  01 00 53 e1                                      cmp r3, r1
00766768  1e ff 2f d1                                      bxle lr
0076676c  9a ff ff ea                                      b #0x7665dc
00766770  08 10 a0 e3                                      mov r1, #8
00766774  98 ff ff ea                                      b #0x7665dc

; FUNCTION 0x00766778, declared_size=412, range_size=412, mode=arm
; class-group: gameswf::hash<int, gameswf::smart_ptr<gameswf::sound_sample>, gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiNS_9smart_ptrINS_12sound_sampleEEENS_15fixed_size_hashIiEEE3addERKiRKS3_
; demangled: gameswf::hash<int, gameswf::smart_ptr<gameswf::sound_sample>, gameswf::fixed_size_hash<int> >::add(int const&, gameswf::smart_ptr<gameswf::sound_sample> const&)
; decoder-mode: arm
00766778  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0076677c  00 40 a0 e1                                      mov r4, r0
00766780  04 d0 4d e2                                      sub sp, sp, #4
00766784  01 80 a0 e1                                      mov r8, r1
00766788  02 b0 a0 e1                                      mov fp, r2
0076678c  ec ff ff eb                                      bl #0x766744
00766790  00 20 94 e5                                      ldr r2, [r4]
00766794  05 55 01 e3                                      movw r5, #0x1505
00766798  04 30 a0 e3                                      mov r3, #4
0076679c  00 10 92 e5                                      ldr r1, [r2]
007667a0  01 10 81 e2                                      add r1, r1, #1
007667a4  00 10 82 e5                                      str r1, [r2]
007667a8  01 30 43 e2                                      sub r3, r3, #1
007667ac  03 10 d8 e7                                      ldrb r1, [r8, r3]
007667b0  05 23 a0 e1                                      lsl r2, r5, #6
007667b4  05 28 82 e0                                      add r2, r2, r5, lsl #16
007667b8  01 20 82 e0                                      add r2, r2, r1
007667bc  00 00 53 e3                                      cmp r3, #0
007667c0  02 50 65 e0                                      rsb r5, r5, r2
007667c4  f7 ff ff 1a                                      bne #0x7667a8
007667c8  00 40 94 e5                                      ldr r4, [r4]
007667cc  01 00 75 e3                                      cmn r5, #1
007667d0  02 59 e0 03                                      mvneq r5, #0x8000
007667d4  04 20 94 e5                                      ldr r2, [r4, #4]
007667d8  02 30 05 e0                                      and r3, r5, r2
007667dc  83 a0 a0 e1                                      lsl sl, r3, #1
007667e0  01 a0 8a e2                                      add sl, sl, #1
007667e4  8a 11 94 e7                                      ldr r1, [r4, sl, lsl #3]
007667e8  8a 71 84 e0                                      add r7, r4, sl, lsl #3
007667ec  02 00 71 e3                                      cmn r1, #2
007667f0  00 30 e0 03                                      mvneq r3, #0
007667f4  8a 31 84 07                                      streq r3, [r4, sl, lsl #3]
007667f8  29 00 00 0a                                      beq #0x7668a4
007667fc  04 00 97 e5                                      ldr r0, [r7, #4]
00766800  01 00 70 e3                                      cmn r0, #1
00766804  03 60 a0 11                                      movne r6, r3
00766808  25 00 00 0a                                      beq #0x7668a4
0076680c  01 60 86 e2                                      add r6, r6, #1
00766810  02 60 06 e0                                      and r6, r6, r2
00766814  86 c0 a0 e1                                      lsl ip, r6, #1
00766818  01 c0 8c e2                                      add ip, ip, #1
0076681c  8c e1 94 e7                                      ldr lr, [r4, ip, lsl #3]
00766820  8c c1 84 e0                                      add ip, r4, ip, lsl #3
00766824  02 00 7e e3                                      cmn lr, #2
00766828  f7 ff ff 1a                                      bne #0x76680c
0076682c  00 20 02 e0                                      and r2, r2, r0
00766830  03 00 52 e1                                      cmp r2, r3
00766834  24 00 00 0a                                      beq #0x7668cc
00766838  82 20 a0 e1                                      lsl r2, r2, #1
0076683c  01 90 82 e2                                      add sb, r2, #1
00766840  89 21 94 e7                                      ldr r2, [r4, sb, lsl #3]
00766844  89 91 84 e0                                      add sb, r4, sb, lsl #3
00766848  03 00 52 e1                                      cmp r2, r3
0076684c  f9 ff ff 1a                                      bne #0x766838
00766850  00 10 8c e5                                      str r1, [ip]
00766854  04 30 97 e5                                      ldr r3, [r7, #4]
00766858  04 30 8c e5                                      str r3, [ip, #4]
0076685c  08 30 97 e5                                      ldr r3, [r7, #8]
00766860  08 30 8c e5                                      str r3, [ip, #8]
00766864  0c 00 97 e5                                      ldr r0, [r7, #0xc]
00766868  00 00 50 e3                                      cmp r0, #0
0076686c  0c 00 8c e5                                      str r0, [ip, #0xc]
00766870  00 00 00 0a                                      beq #0x766878
00766874  fa cc ff eb                                      bl #0x759c64
00766878  00 60 89 e5                                      str r6, [sb]
0076687c  00 30 98 e5                                      ldr r3, [r8]
00766880  0c 00 87 e2                                      add r0, r7, #0xc
00766884  08 30 87 e5                                      str r3, [r7, #8]
00766888  00 10 9b e5                                      ldr r1, [fp]
0076688c  10 f6 ff eb                                      bl #0x7640d4
00766890  00 30 e0 e3                                      mvn r3, #0
00766894  04 50 87 e5                                      str r5, [r7, #4]
00766898  8a 31 84 e7                                      str r3, [r4, sl, lsl #3]
0076689c  04 d0 8d e2                                      add sp, sp, #4
007668a0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007668a4  04 50 87 e5                                      str r5, [r7, #4]
007668a8  00 30 98 e5                                      ldr r3, [r8]
007668ac  08 30 87 e5                                      str r3, [r7, #8]
007668b0  00 00 9b e5                                      ldr r0, [fp]
007668b4  00 00 50 e3                                      cmp r0, #0
007668b8  0c 00 87 e5                                      str r0, [r7, #0xc]
007668bc  f6 ff ff 0a                                      beq #0x76689c
007668c0  04 d0 8d e2                                      add sp, sp, #4
007668c4  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007668c8  e5 cc ff ea                                      b #0x759c64
007668cc  00 10 8c e5                                      str r1, [ip]
007668d0  04 30 97 e5                                      ldr r3, [r7, #4]
007668d4  04 30 8c e5                                      str r3, [ip, #4]
007668d8  08 30 97 e5                                      ldr r3, [r7, #8]
007668dc  08 30 8c e5                                      str r3, [ip, #8]
007668e0  0c 00 97 e5                                      ldr r0, [r7, #0xc]
007668e4  00 00 50 e3                                      cmp r0, #0
007668e8  0c 00 8c e5                                      str r0, [ip, #0xc]
007668ec  00 00 00 0a                                      beq #0x7668f4
007668f0  db cc ff eb                                      bl #0x759c64
007668f4  00 30 98 e5                                      ldr r3, [r8]
007668f8  0c 00 87 e2                                      add r0, r7, #0xc
007668fc  08 30 87 e5                                      str r3, [r7, #8]
00766900  00 10 9b e5                                      ldr r1, [fp]
00766904  f2 f5 ff eb                                      bl #0x7640d4
00766908  8a 61 84 e7                                      str r6, [r4, sl, lsl #3]
0076690c  04 50 87 e5                                      str r5, [r7, #4]
00766910  e1 ff ff ea                                      b #0x76689c
