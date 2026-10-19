; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0075700c, declared_size=196, range_size=196, mode=arm
; class-group: gameswf::hash<gameswf::character*, gameswf::filter_cache_infos, gameswf::fixed_size_hash<gameswf::character*> >
; alias: _ZNK7gameswf4hashIPNS_9characterENS_18filter_cache_infosENS_15fixed_size_hashIS2_EEE10find_indexERKS2_
; demangled: gameswf::hash<gameswf::character*, gameswf::filter_cache_infos, gameswf::fixed_size_hash<gameswf::character*> >::find_index(gameswf::character* const&) const
; decoder-mode: arm
0075700c  30 00 2d e9                                      push {r4, r5}
00757010  00 30 90 e5                                      ldr r3, [r0]
00757014  00 00 53 e3                                      cmp r3, #0
00757018  02 00 00 1a                                      bne #0x757028
0075701c  00 00 e0 e3                                      mvn r0, #0
00757020  30 00 bd e8                                      pop {r4, r5}
00757024  1e ff 2f e1                                      bx lr
00757028  05 25 01 e3                                      movw r2, #0x1505
0075702c  04 00 a0 e3                                      mov r0, #4
00757030  01 00 40 e2                                      sub r0, r0, #1
00757034  00 40 d1 e7                                      ldrb r4, [r1, r0]
00757038  02 c3 a0 e1                                      lsl ip, r2, #6
0075703c  02 c8 8c e0                                      add ip, ip, r2, lsl #16
00757040  04 c0 8c e0                                      add ip, ip, r4
00757044  00 00 50 e3                                      cmp r0, #0
00757048  0c 20 62 e0                                      rsb r2, r2, ip
0075704c  f7 ff ff 1a                                      bne #0x757030
00757050  04 00 93 e5                                      ldr r0, [r3, #4]
00757054  01 00 72 e3                                      cmn r2, #1
00757058  02 29 e0 03                                      mvneq r2, #0x8000
0075705c  00 40 02 e0                                      and r4, r2, r0
00757060  04 c1 84 e0                                      add ip, r4, r4, lsl #2
00757064  01 c0 8c e2                                      add ip, ip, #1
00757068  8c 51 93 e7                                      ldr r5, [r3, ip, lsl #3]
0075706c  8c c1 83 e0                                      add ip, r3, ip, lsl #3
00757070  02 00 75 e3                                      cmn r5, #2
00757074  e8 ff ff 0a                                      beq #0x75701c
00757078  04 50 9c e5                                      ldr r5, [ip, #4]
0075707c  01 00 75 e3                                      cmn r5, #1
00757080  04 00 a0 01                                      moveq r0, r4
00757084  07 00 00 0a                                      beq #0x7570a8
00757088  05 00 00 e0                                      and r0, r0, r5
0075708c  04 00 50 e1                                      cmp r0, r4
00757090  e1 ff ff 1a                                      bne #0x75701c
00757094  03 00 00 ea                                      b #0x7570a8
00757098  00 c1 80 e0                                      add ip, r0, r0, lsl #2
0075709c  01 c0 8c e2                                      add ip, ip, #1
007570a0  8c c1 83 e0                                      add ip, r3, ip, lsl #3
007570a4  04 50 9c e5                                      ldr r5, [ip, #4]
007570a8  05 00 52 e1                                      cmp r2, r5
007570ac  03 00 00 1a                                      bne #0x7570c0
007570b0  08 50 9c e5                                      ldr r5, [ip, #8]
007570b4  00 40 91 e5                                      ldr r4, [r1]
007570b8  04 00 55 e1                                      cmp r5, r4
007570bc  d7 ff ff 0a                                      beq #0x757020
007570c0  00 00 9c e5                                      ldr r0, [ip]
007570c4  01 00 70 e3                                      cmn r0, #1
007570c8  f2 ff ff 1a                                      bne #0x757098
007570cc  d3 ff ff ea                                      b #0x757020

; FUNCTION 0x00757128, declared_size=132, range_size=132, mode=arm
; class-group: gameswf::hash<gameswf::character*, gameswf::filter_cache_infos, gameswf::fixed_size_hash<gameswf::character*> >
; alias: _ZN7gameswf4hashIPNS_9characterENS_18filter_cache_infosENS_15fixed_size_hashIS2_EEE5clearEv
; demangled: gameswf::hash<gameswf::character*, gameswf::filter_cache_infos, gameswf::fixed_size_hash<gameswf::character*> >::clear()
; decoder-mode: arm
00757128  70 40 2d e9                                      push {r4, r5, r6, lr}
0075712c  00 40 a0 e1                                      mov r4, r0
00757130  00 00 90 e5                                      ldr r0, [r0]
00757134  00 00 50 e3                                      cmp r0, #0
00757138  1a 00 00 0a                                      beq #0x7571a8
0075713c  04 10 90 e5                                      ldr r1, [r0, #4]
00757140  00 00 51 e3                                      cmp r1, #0
00757144  11 00 00 ba                                      blt #0x757190
00757148  00 20 a0 e3                                      mov r2, #0
0075714c  08 30 a0 e3                                      mov r3, #8
00757150  01 60 e0 e3                                      mvn r6, #1
00757154  02 50 a0 e1                                      mov r5, r2
00757158  03 e0 90 e7                                      ldr lr, [r0, r3]
0075715c  01 20 82 e2                                      add r2, r2, #1
00757160  03 c0 80 e0                                      add ip, r0, r3
00757164  02 00 7e e3                                      cmn lr, #2
00757168  04 00 00 0a                                      beq #0x757180
0075716c  04 e0 9c e5                                      ldr lr, [ip, #4]
00757170  01 00 7e e3                                      cmn lr, #1
00757174  04 50 8c 15                                      strne r5, [ip, #4]
00757178  00 60 8c 15                                      strne r6, [ip]
0075717c  00 00 94 15                                      ldrne r0, [r4]
00757180  02 00 51 e1                                      cmp r1, r2
00757184  28 30 83 e2                                      add r3, r3, #0x28
00757188  f2 ff ff aa                                      bge #0x757158
0075718c  04 10 90 e5                                      ldr r1, [r0, #4]
00757190  01 11 81 e0                                      add r1, r1, r1, lsl #2
00757194  06 10 81 e2                                      add r1, r1, #6
00757198  81 11 a0 e1                                      lsl r1, r1, #3
0075719c  65 ee ff eb                                      bl #0x752b38
007571a0  00 30 a0 e3                                      mov r3, #0
007571a4  00 30 84 e5                                      str r3, [r4]
007571a8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007583d8, declared_size=92, range_size=92, mode=arm
; class-group: gameswf::hash<gameswf::character*, gameswf::filter_cache_infos, gameswf::fixed_size_hash<gameswf::character*> >
; alias: _ZNK7gameswf4hashIPNS_9characterENS_18filter_cache_infosENS_15fixed_size_hashIS2_EEE3getERKS2_PS3_
; demangled: gameswf::hash<gameswf::character*, gameswf::filter_cache_infos, gameswf::fixed_size_hash<gameswf::character*> >::get(gameswf::character* const&, gameswf::filter_cache_infos*) const
; decoder-mode: arm
007583d8  70 40 2d e9                                      push {r4, r5, r6, lr}
007583dc  00 50 a0 e1                                      mov r5, r0
007583e0  02 40 a0 e1                                      mov r4, r2
007583e4  08 fb ff eb                                      bl #0x75700c
007583e8  00 00 50 e3                                      cmp r0, #0
007583ec  00 50 a0 b3                                      movlt r5, #0
007583f0  0d 00 00 ba                                      blt #0x75842c
007583f4  00 00 54 e3                                      cmp r4, #0
007583f8  01 50 a0 03                                      moveq r5, #1
007583fc  0a 00 00 0a                                      beq #0x75842c
00758400  00 30 95 e5                                      ldr r3, [r5]
00758404  00 01 80 e0                                      add r0, r0, r0, lsl #2
00758408  04 60 a0 e1                                      mov r6, r4
0075840c  80 c1 83 e0                                      add ip, r3, r0, lsl #3
00758410  14 c0 8c e2                                      add ip, ip, #0x14
00758414  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
00758418  0f 00 a6 e8                                      stm r6!, {r0, r1, r2, r3}
0075841c  01 50 a0 e3                                      mov r5, #1
00758420  07 00 9c e8                                      ldm ip, {r0, r1, r2}
00758424  03 00 86 e8                                      stm r6, {r0, r1}
00758428  18 20 c4 e5                                      strb r2, [r4, #0x18]
0075842c  05 00 a0 e1                                      mov r0, r5
00758430  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007586b8, declared_size=352, range_size=352, mode=arm
; class-group: gameswf::hash<gameswf::character*, gameswf::filter_cache_infos, gameswf::fixed_size_hash<gameswf::character*> >
; alias: _ZN7gameswf4hashIPNS_9characterENS_18filter_cache_infosENS_15fixed_size_hashIS2_EEE16set_raw_capacityEi
; demangled: gameswf::hash<gameswf::character*, gameswf::filter_cache_infos, gameswf::fixed_size_hash<gameswf::character*> >::set_raw_capacity(int)
; decoder-mode: arm
007586b8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007586bc  00 00 51 e3                                      cmp r1, #0
007586c0  0c d0 4d e2                                      sub sp, sp, #0xc
007586c4  00 80 a0 e1                                      mov r8, r0
007586c8  4f 00 00 da                                      ble #0x75880c
007586cc  01 00 41 e2                                      sub r0, r1, #1
007586d0  a3 d8 ee eb                                      bl #0x30e964
007586d4  f6 d5 ee eb                                      bl #0x30deb4
007586d8  18 12 07 e3                                      movw r1, #0x7218
007586dc  31 1f 43 e3                                      movt r1, #0x3f31
007586e0  6b d9 ee eb                                      bl #0x30ec94
007586e4  fe 15 a0 e3                                      mov r1, #0x3f800000
007586e8  2d d9 ee eb                                      bl #0x30eba4
007586ec  76 d7 ee eb                                      bl #0x30e4cc
007586f0  01 40 a0 e3                                      mov r4, #1
007586f4  14 40 a0 e1                                      lsl r4, r4, r0
007586f8  00 30 98 e5                                      ldr r3, [r8]
007586fc  04 00 54 e3                                      cmp r4, #4
00758700  04 40 a0 b3                                      movlt r4, #4
00758704  00 00 53 e3                                      cmp r3, #0
00758708  03 00 00 0a                                      beq #0x75871c
0075870c  04 30 93 e5                                      ldr r3, [r3, #4]
00758710  01 30 83 e2                                      add r3, r3, #1
00758714  04 00 53 e1                                      cmp r3, r4
00758718  3c 00 00 0a                                      beq #0x758810
0075871c  04 01 84 e0                                      add r0, r4, r4, lsl #2
00758720  00 50 a0 e3                                      mov r5, #0
00758724  01 00 80 e2                                      add r0, r0, #1
00758728  80 01 a0 e1                                      lsl r0, r0, #3
0075872c  05 10 a0 e1                                      mov r1, r5
00758730  04 50 8d e5                                      str r5, [sp, #4]
00758734  18 e9 ff eb                                      bl #0x752b9c
00758738  04 00 8d e5                                      str r0, [sp, #4]
0075873c  00 50 80 e5                                      str r5, [r0]
00758740  04 30 9d e5                                      ldr r3, [sp, #4]
00758744  01 20 44 e2                                      sub r2, r4, #1
00758748  01 90 e0 e3                                      mvn sb, #1
0075874c  04 20 83 e5                                      str r2, [r3, #4]
00758750  08 30 a0 e3                                      mov r3, #8
00758754  04 20 9d e5                                      ldr r2, [sp, #4]
00758758  01 50 85 e2                                      add r5, r5, #1
0075875c  05 00 54 e1                                      cmp r4, r5
00758760  03 90 82 e7                                      str sb, [r2, r3]
00758764  28 30 83 e2                                      add r3, r3, #0x28
00758768  f9 ff ff ca                                      bgt #0x758754
0075876c  00 30 98 e5                                      ldr r3, [r8]
00758770  00 00 53 e3                                      cmp r3, #0
00758774  04 a0 8d 02                                      addeq sl, sp, #4
00758778  1e 00 00 0a                                      beq #0x7587f8
0075877c  04 70 93 e5                                      ldr r7, [r3, #4]
00758780  00 00 57 e3                                      cmp r7, #0
00758784  04 a0 8d b2                                      addlt sl, sp, #4
00758788  15 00 00 ba                                      blt #0x7587e4
0075878c  00 60 a0 e3                                      mov r6, #0
00758790  08 40 a0 e3                                      mov r4, #8
00758794  04 a0 8d e2                                      add sl, sp, #4
00758798  06 b0 a0 e1                                      mov fp, r6
0075879c  04 20 93 e7                                      ldr r2, [r3, r4]
007587a0  01 60 86 e2                                      add r6, r6, #1
007587a4  04 50 83 e0                                      add r5, r3, r4
007587a8  02 00 72 e3                                      cmn r2, #2
007587ac  08 00 00 0a                                      beq #0x7587d4
007587b0  04 20 95 e5                                      ldr r2, [r5, #4]
007587b4  0a 00 a0 e1                                      mov r0, sl
007587b8  08 10 85 e2                                      add r1, r5, #8
007587bc  01 00 72 e3                                      cmn r2, #1
007587c0  03 00 00 0a                                      beq #0x7587d4
007587c4  0c 20 85 e2                                      add r2, r5, #0xc
007587c8  1f 00 00 eb                                      bl #0x75884c
007587cc  00 0a 85 e8                                      stm r5, {sb, fp}
007587d0  00 30 98 e5                                      ldr r3, [r8]
007587d4  06 00 57 e1                                      cmp r7, r6
007587d8  28 40 84 e2                                      add r4, r4, #0x28
007587dc  ee ff ff aa                                      bge #0x75879c
007587e0  04 70 93 e5                                      ldr r7, [r3, #4]
007587e4  07 71 87 e0                                      add r7, r7, r7, lsl #2
007587e8  06 10 87 e2                                      add r1, r7, #6
007587ec  03 00 a0 e1                                      mov r0, r3
007587f0  81 11 a0 e1                                      lsl r1, r1, #3
007587f4  cf e8 ff eb                                      bl #0x752b38
007587f8  04 30 9d e5                                      ldr r3, [sp, #4]
007587fc  0a 00 a0 e1                                      mov r0, sl
00758800  00 30 88 e5                                      str r3, [r8]
00758804  00 30 a0 e3                                      mov r3, #0
00758808  04 30 8d e5                                      str r3, [sp, #4]
0075880c  45 fa ff eb                                      bl #0x757128
00758810  0c d0 8d e2                                      add sp, sp, #0xc
00758814  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00758818, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::hash<gameswf::character*, gameswf::filter_cache_infos, gameswf::fixed_size_hash<gameswf::character*> >
; alias: _ZN7gameswf4hashIPNS_9characterENS_18filter_cache_infosENS_15fixed_size_hashIS2_EEE12check_expandEv
; demangled: gameswf::hash<gameswf::character*, gameswf::filter_cache_infos, gameswf::fixed_size_hash<gameswf::character*> >::check_expand()
; decoder-mode: arm
00758818  00 30 90 e5                                      ldr r3, [r0]
0075881c  00 00 53 e3                                      cmp r3, #0
00758820  07 00 00 0a                                      beq #0x758844
00758824  04 10 93 e5                                      ldr r1, [r3, #4]
00758828  00 30 93 e5                                      ldr r3, [r3]
0075882c  01 10 81 e2                                      add r1, r1, #1
00758830  81 10 a0 e1                                      lsl r1, r1, #1
00758834  83 30 83 e0                                      add r3, r3, r3, lsl #1
00758838  01 00 53 e1                                      cmp r3, r1
0075883c  1e ff 2f d1                                      bxle lr
00758840  9c ff ff ea                                      b #0x7586b8
00758844  08 10 a0 e3                                      mov r1, #8
00758848  9a ff ff ea                                      b #0x7586b8

; FUNCTION 0x0075884c, declared_size=472, range_size=472, mode=arm
; class-group: gameswf::hash<gameswf::character*, gameswf::filter_cache_infos, gameswf::fixed_size_hash<gameswf::character*> >
; alias: _ZN7gameswf4hashIPNS_9characterENS_18filter_cache_infosENS_15fixed_size_hashIS2_EEE3addERKS2_RKS3_
; demangled: gameswf::hash<gameswf::character*, gameswf::filter_cache_infos, gameswf::fixed_size_hash<gameswf::character*> >::add(gameswf::character* const&, gameswf::filter_cache_infos const&)
; decoder-mode: arm
0075884c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00758850  00 50 a0 e1                                      mov r5, r0
00758854  0c d0 4d e2                                      sub sp, sp, #0xc
00758858  01 70 a0 e1                                      mov r7, r1
0075885c  00 20 8d e5                                      str r2, [sp]
00758860  ec ff ff eb                                      bl #0x758818
00758864  00 20 95 e5                                      ldr r2, [r5]
00758868  05 45 01 e3                                      movw r4, #0x1505
0075886c  04 30 a0 e3                                      mov r3, #4
00758870  00 10 92 e5                                      ldr r1, [r2]
00758874  01 10 81 e2                                      add r1, r1, #1
00758878  00 10 82 e5                                      str r1, [r2]
0075887c  01 30 43 e2                                      sub r3, r3, #1
00758880  03 10 d7 e7                                      ldrb r1, [r7, r3]
00758884  04 23 a0 e1                                      lsl r2, r4, #6
00758888  04 28 82 e0                                      add r2, r2, r4, lsl #16
0075888c  01 20 82 e0                                      add r2, r2, r1
00758890  00 00 53 e3                                      cmp r3, #0
00758894  02 40 64 e0                                      rsb r4, r4, r2
00758898  f7 ff ff 1a                                      bne #0x75887c
0075889c  00 c0 95 e5                                      ldr ip, [r5]
007588a0  01 00 74 e3                                      cmn r4, #1
007588a4  02 49 e0 03                                      mvneq r4, #0x8000
007588a8  04 00 9c e5                                      ldr r0, [ip, #4]
007588ac  00 30 04 e0                                      and r3, r4, r0
007588b0  03 a1 83 e0                                      add sl, r3, r3, lsl #2
007588b4  01 a0 8a e2                                      add sl, sl, #1
007588b8  8a 91 9c e7                                      ldr sb, [ip, sl, lsl #3]
007588bc  8a 61 8c e0                                      add r6, ip, sl, lsl #3
007588c0  02 00 79 e3                                      cmn sb, #2
007588c4  00 30 e0 03                                      mvneq r3, #0
007588c8  8a 31 8c 07                                      streq r3, [ip, sl, lsl #3]
007588cc  30 00 00 0a                                      beq #0x758994
007588d0  04 80 96 e5                                      ldr r8, [r6, #4]
007588d4  01 00 78 e3                                      cmn r8, #1
007588d8  03 50 a0 11                                      movne r5, r3
007588dc  2c 00 00 0a                                      beq #0x758994
007588e0  01 50 85 e2                                      add r5, r5, #1
007588e4  00 50 05 e0                                      and r5, r5, r0
007588e8  05 11 85 e0                                      add r1, r5, r5, lsl #2
007588ec  01 10 81 e2                                      add r1, r1, #1
007588f0  81 21 9c e7                                      ldr r2, [ip, r1, lsl #3]
007588f4  81 11 8c e0                                      add r1, ip, r1, lsl #3
007588f8  02 00 72 e3                                      cmn r2, #2
007588fc  f7 ff ff 1a                                      bne #0x7588e0
00758900  08 00 00 e0                                      and r0, r0, r8
00758904  03 00 50 e1                                      cmp r0, r3
00758908  2c 00 00 0a                                      beq #0x7589c0
0075890c  00 01 80 e0                                      add r0, r0, r0, lsl #2
00758910  01 80 80 e2                                      add r8, r0, #1
00758914  88 01 9c e7                                      ldr r0, [ip, r8, lsl #3]
00758918  88 81 8c e0                                      add r8, ip, r8, lsl #3
0075891c  03 00 50 e1                                      cmp r0, r3
00758920  f9 ff ff 1a                                      bne #0x75890c
00758924  00 90 81 e5                                      str sb, [r1]
00758928  04 30 96 e5                                      ldr r3, [r6, #4]
0075892c  0c b0 86 e2                                      add fp, r6, #0xc
00758930  0c 90 81 e2                                      add sb, r1, #0xc
00758934  04 30 81 e5                                      str r3, [r1, #4]
00758938  08 30 96 e5                                      ldr r3, [r6, #8]
0075893c  04 b0 8d e5                                      str fp, [sp, #4]
00758940  08 30 81 e5                                      str r3, [r1, #8]
00758944  0f 00 bb e8                                      ldm fp!, {r0, r1, r2, r3}
00758948  0f 00 a9 e8                                      stm sb!, {r0, r1, r2, r3}
0075894c  07 00 9b e8                                      ldm fp, {r0, r1, r2}
00758950  08 20 c9 e5                                      strb r2, [sb, #8]
00758954  03 00 89 e8                                      stm sb, {r0, r1}
00758958  00 50 88 e5                                      str r5, [r8]
0075895c  00 30 97 e5                                      ldr r3, [r7]
00758960  08 30 86 e5                                      str r3, [r6, #8]
00758964  a0 00 9d e8                                      ldm sp, {r5, r7}
00758968  0f 00 b5 e8                                      ldm r5!, {r0, r1, r2, r3}
0075896c  0f 00 a7 e8                                      stm r7!, {r0, r1, r2, r3}
00758970  07 00 95 e8                                      ldm r5, {r0, r1, r2}
00758974  03 00 8b e8                                      stm fp, {r0, r1}
00758978  04 80 9d e5                                      ldr r8, [sp, #4]
0075897c  00 30 e0 e3                                      mvn r3, #0
00758980  18 20 c8 e5                                      strb r2, [r8, #0x18]
00758984  04 40 86 e5                                      str r4, [r6, #4]
00758988  8a 31 8c e7                                      str r3, [ip, sl, lsl #3]
0075898c  0c d0 8d e2                                      add sp, sp, #0xc
00758990  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00758994  04 40 86 e5                                      str r4, [r6, #4]
00758998  00 30 97 e5                                      ldr r3, [r7]
0075899c  0c c0 86 e2                                      add ip, r6, #0xc
007589a0  08 30 86 e5                                      str r3, [r6, #8]
007589a4  00 40 9d e5                                      ldr r4, [sp]
007589a8  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
007589ac  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
007589b0  07 00 94 e8                                      ldm r4, {r0, r1, r2}
007589b4  08 20 cc e5                                      strb r2, [ip, #8]
007589b8  03 00 8c e8                                      stm ip, {r0, r1}
007589bc  f2 ff ff ea                                      b #0x75898c
007589c0  00 90 81 e5                                      str sb, [r1]
007589c4  04 30 96 e5                                      ldr r3, [r6, #4]
007589c8  0c 80 81 e2                                      add r8, r1, #0xc
007589cc  0c 90 86 e2                                      add sb, r6, #0xc
007589d0  04 30 81 e5                                      str r3, [r1, #4]
007589d4  08 30 96 e5                                      ldr r3, [r6, #8]
007589d8  09 b0 a0 e1                                      mov fp, sb
007589dc  08 30 81 e5                                      str r3, [r1, #8]
007589e0  0f 00 b9 e8                                      ldm sb!, {r0, r1, r2, r3}
007589e4  0f 00 a8 e8                                      stm r8!, {r0, r1, r2, r3}
007589e8  07 00 99 e8                                      ldm sb, {r0, r1, r2}
007589ec  08 20 c8 e5                                      strb r2, [r8, #8]
007589f0  03 00 88 e8                                      stm r8, {r0, r1}
007589f4  00 30 97 e5                                      ldr r3, [r7]
007589f8  0b 80 a0 e1                                      mov r8, fp
007589fc  08 30 86 e5                                      str r3, [r6, #8]
00758a00  00 70 9d e5                                      ldr r7, [sp]
00758a04  0f 00 b7 e8                                      ldm r7!, {r0, r1, r2, r3}
00758a08  0f 00 a8 e8                                      stm r8!, {r0, r1, r2, r3}
00758a0c  07 00 97 e8                                      ldm r7, {r0, r1, r2}
00758a10  03 00 89 e8                                      stm sb, {r0, r1}
00758a14  18 20 cb e5                                      strb r2, [fp, #0x18]
00758a18  8a 51 8c e7                                      str r5, [ip, sl, lsl #3]
00758a1c  04 40 86 e5                                      str r4, [r6, #4]
00758a20  d9 ff ff ea                                      b #0x75898c

; FUNCTION 0x00758a24, declared_size=92, range_size=92, mode=arm
; class-group: gameswf::hash<gameswf::character*, gameswf::filter_cache_infos, gameswf::fixed_size_hash<gameswf::character*> >
; alias: _ZN7gameswf4hashIPNS_9characterENS_18filter_cache_infosENS_15fixed_size_hashIS2_EEE3setERKS2_RKS3_
; demangled: gameswf::hash<gameswf::character*, gameswf::filter_cache_infos, gameswf::fixed_size_hash<gameswf::character*> >::set(gameswf::character* const&, gameswf::filter_cache_infos const&)
; decoder-mode: arm
00758a24  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00758a28  02 40 a0 e1                                      mov r4, r2
00758a2c  00 60 a0 e1                                      mov r6, r0
00758a30  01 70 a0 e1                                      mov r7, r1
00758a34  74 f9 ff eb                                      bl #0x75700c
00758a38  00 00 50 e3                                      cmp r0, #0
00758a3c  0a 00 00 ba                                      blt #0x758a6c
00758a40  00 30 96 e5                                      ldr r3, [r6]
00758a44  00 01 80 e0                                      add r0, r0, r0, lsl #2
00758a48  01 50 80 e2                                      add r5, r0, #1
00758a4c  85 51 83 e0                                      add r5, r3, r5, lsl #3
00758a50  0c c0 85 e2                                      add ip, r5, #0xc
00758a54  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
00758a58  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00758a5c  07 00 94 e8                                      ldm r4, {r0, r1, r2}
00758a60  03 00 8c e8                                      stm ip, {r0, r1}
00758a64  24 20 c5 e5                                      strb r2, [r5, #0x24]
00758a68  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00758a6c  06 00 a0 e1                                      mov r0, r6
00758a70  07 10 a0 e1                                      mov r1, r7
00758a74  04 20 a0 e1                                      mov r2, r4
00758a78  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00758a7c  72 ff ff ea                                      b #0x75884c
