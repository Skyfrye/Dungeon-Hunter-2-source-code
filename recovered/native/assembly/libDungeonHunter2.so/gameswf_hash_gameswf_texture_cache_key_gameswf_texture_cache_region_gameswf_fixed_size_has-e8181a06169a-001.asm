; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00756f1c, declared_size=240, range_size=240, mode=arm
; class-group: gameswf::hash<gameswf::texture_cache::key, gameswf::texture_cache::region*, gameswf::fixed_size_hash<gameswf::texture_cache::key> >
; alias: _ZNK7gameswf4hashINS_13texture_cache3keyEPNS1_6regionENS_15fixed_size_hashIS2_EEE10find_indexERKS2_
; demangled: gameswf::hash<gameswf::texture_cache::key, gameswf::texture_cache::region*, gameswf::fixed_size_hash<gameswf::texture_cache::key> >::find_index(gameswf::texture_cache::key const&) const
; decoder-mode: arm
00756f1c  30 00 2d e9                                      push {r4, r5}
00756f20  00 30 90 e5                                      ldr r3, [r0]
00756f24  00 00 53 e3                                      cmp r3, #0
00756f28  02 00 00 1a                                      bne #0x756f38
00756f2c  00 00 e0 e3                                      mvn r0, #0
00756f30  30 00 bd e8                                      pop {r4, r5}
00756f34  1e ff 2f e1                                      bx lr
00756f38  05 25 01 e3                                      movw r2, #0x1505
00756f3c  10 00 a0 e3                                      mov r0, #0x10
00756f40  01 00 40 e2                                      sub r0, r0, #1
00756f44  00 40 d1 e7                                      ldrb r4, [r1, r0]
00756f48  02 c3 a0 e1                                      lsl ip, r2, #6
00756f4c  02 c8 8c e0                                      add ip, ip, r2, lsl #16
00756f50  04 c0 8c e0                                      add ip, ip, r4
00756f54  00 00 50 e3                                      cmp r0, #0
00756f58  0c 20 62 e0                                      rsb r2, r2, ip
00756f5c  f7 ff ff 1a                                      bne #0x756f40
00756f60  04 00 93 e5                                      ldr r0, [r3, #4]
00756f64  01 00 72 e3                                      cmn r2, #1
00756f68  02 29 e0 03                                      mvneq r2, #0x8000
00756f6c  00 40 02 e0                                      and r4, r2, r0
00756f70  04 c1 a0 e1                                      lsl ip, r4, #2
00756f74  01 c0 8c e2                                      add ip, ip, #1
00756f78  8c 51 93 e7                                      ldr r5, [r3, ip, lsl #3]
00756f7c  8c c1 83 e0                                      add ip, r3, ip, lsl #3
00756f80  02 00 75 e3                                      cmn r5, #2
00756f84  e8 ff ff 0a                                      beq #0x756f2c
00756f88  04 50 9c e5                                      ldr r5, [ip, #4]
00756f8c  01 00 75 e3                                      cmn r5, #1
00756f90  04 00 a0 01                                      moveq r0, r4
00756f94  09 00 00 0a                                      beq #0x756fc0
00756f98  05 00 00 e0                                      and r0, r0, r5
00756f9c  04 00 50 e1                                      cmp r0, r4
00756fa0  e1 ff ff 1a                                      bne #0x756f2c
00756fa4  05 00 00 ea                                      b #0x756fc0
00756fa8  00 00 9c e5                                      ldr r0, [ip]
00756fac  01 00 70 e3                                      cmn r0, #1
00756fb0  de ff ff 0a                                      beq #0x756f30
00756fb4  80 c2 83 e0                                      add ip, r3, r0, lsl #5
00756fb8  08 c0 8c e2                                      add ip, ip, #8
00756fbc  04 50 9c e5                                      ldr r5, [ip, #4]
00756fc0  05 00 52 e1                                      cmp r2, r5
00756fc4  f7 ff ff 1a                                      bne #0x756fa8
00756fc8  08 50 9c e5                                      ldr r5, [ip, #8]
00756fcc  00 40 91 e5                                      ldr r4, [r1]
00756fd0  04 00 55 e1                                      cmp r5, r4
00756fd4  f3 ff ff 1a                                      bne #0x756fa8
00756fd8  0c 50 9c e5                                      ldr r5, [ip, #0xc]
00756fdc  04 40 91 e5                                      ldr r4, [r1, #4]
00756fe0  04 00 55 e1                                      cmp r5, r4
00756fe4  ef ff ff 1a                                      bne #0x756fa8
00756fe8  10 50 9c e5                                      ldr r5, [ip, #0x10]
00756fec  08 40 91 e5                                      ldr r4, [r1, #8]
00756ff0  04 00 55 e1                                      cmp r5, r4
00756ff4  eb ff ff 1a                                      bne #0x756fa8
00756ff8  14 50 9c e5                                      ldr r5, [ip, #0x14]
00756ffc  0c 40 91 e5                                      ldr r4, [r1, #0xc]
00757000  04 00 55 e1                                      cmp r5, r4
00757004  e7 ff ff 1a                                      bne #0x756fa8
00757008  c8 ff ff ea                                      b #0x756f30

; FUNCTION 0x007571ac, declared_size=128, range_size=128, mode=arm
; class-group: gameswf::hash<gameswf::texture_cache::key, gameswf::texture_cache::region*, gameswf::fixed_size_hash<gameswf::texture_cache::key> >
; alias: _ZN7gameswf4hashINS_13texture_cache3keyEPNS1_6regionENS_15fixed_size_hashIS2_EEE5clearEv
; demangled: gameswf::hash<gameswf::texture_cache::key, gameswf::texture_cache::region*, gameswf::fixed_size_hash<gameswf::texture_cache::key> >::clear()
; decoder-mode: arm
007571ac  70 40 2d e9                                      push {r4, r5, r6, lr}
007571b0  00 40 a0 e1                                      mov r4, r0
007571b4  00 00 90 e5                                      ldr r0, [r0]
007571b8  00 00 50 e3                                      cmp r0, #0
007571bc  19 00 00 0a                                      beq #0x757228
007571c0  04 10 90 e5                                      ldr r1, [r0, #4]
007571c4  00 00 51 e3                                      cmp r1, #0
007571c8  11 00 00 ba                                      blt #0x757214
007571cc  00 20 a0 e3                                      mov r2, #0
007571d0  08 30 a0 e3                                      mov r3, #8
007571d4  01 60 e0 e3                                      mvn r6, #1
007571d8  02 50 a0 e1                                      mov r5, r2
007571dc  03 e0 90 e7                                      ldr lr, [r0, r3]
007571e0  01 20 82 e2                                      add r2, r2, #1
007571e4  03 c0 80 e0                                      add ip, r0, r3
007571e8  02 00 7e e3                                      cmn lr, #2
007571ec  04 00 00 0a                                      beq #0x757204
007571f0  04 e0 9c e5                                      ldr lr, [ip, #4]
007571f4  01 00 7e e3                                      cmn lr, #1
007571f8  04 50 8c 15                                      strne r5, [ip, #4]
007571fc  00 60 8c 15                                      strne r6, [ip]
00757200  00 00 94 15                                      ldrne r0, [r4]
00757204  02 00 51 e1                                      cmp r1, r2
00757208  20 30 83 e2                                      add r3, r3, #0x20
0075720c  f2 ff ff aa                                      bge #0x7571dc
00757210  04 10 90 e5                                      ldr r1, [r0, #4]
00757214  81 12 a0 e1                                      lsl r1, r1, #5
00757218  28 10 81 e2                                      add r1, r1, #0x28
0075721c  45 ee ff eb                                      bl #0x752b38
00757220  00 30 a0 e3                                      mov r3, #0
00757224  00 30 84 e5                                      str r3, [r4]
00757228  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00793668, declared_size=236, range_size=236, mode=arm
; class-group: gameswf::hash<gameswf::texture_cache::key, gameswf::texture_cache::region*, gameswf::fixed_size_hash<gameswf::texture_cache::key> >
; alias: _ZN7gameswf4hashINS_13texture_cache3keyEPNS1_6regionENS_15fixed_size_hashIS2_EEE5eraseERKNS7_8iteratorE
; demangled: gameswf::hash<gameswf::texture_cache::key, gameswf::texture_cache::region*, gameswf::fixed_size_hash<gameswf::texture_cache::key> >::erase(gameswf::hash<gameswf::texture_cache::key, gameswf::texture_cache::region*, gameswf::fixed_size_hash<gameswf::texture_cache::key> >::iterator const&)
; decoder-mode: arm
00793668  70 00 2d e9                                      push {r4, r5, r6}
0079366c  00 30 91 e5                                      ldr r3, [r1]
00793670  00 00 53 e3                                      cmp r3, #0
00793674  06 00 00 0a                                      beq #0x793694
00793678  00 c0 93 e5                                      ldr ip, [r3]
0079367c  00 00 5c e3                                      cmp ip, #0
00793680  03 00 00 0a                                      beq #0x793694
00793684  04 40 91 e5                                      ldr r4, [r1, #4]
00793688  04 20 9c e5                                      ldr r2, [ip, #4]
0079368c  02 00 54 e1                                      cmp r4, r2
00793690  01 00 00 da                                      ble #0x79369c
00793694  70 00 bd e8                                      pop {r4, r5, r6}
00793698  1e ff 2f e1                                      bx lr
0079369c  03 00 50 e1                                      cmp r0, r3
007936a0  fb ff ff 1a                                      bne #0x793694
007936a4  04 51 a0 e1                                      lsl r5, r4, #2
007936a8  01 50 85 e2                                      add r5, r5, #1
007936ac  85 61 8c e0                                      add r6, ip, r5, lsl #3
007936b0  04 30 96 e5                                      ldr r3, [r6, #4]
007936b4  03 20 02 e0                                      and r2, r2, r3
007936b8  04 00 52 e1                                      cmp r2, r4
007936bc  1c 00 00 0a                                      beq #0x793734
007936c0  02 21 a0 e1                                      lsl r2, r2, #2
007936c4  01 20 82 e2                                      add r2, r2, #1
007936c8  82 31 9c e7                                      ldr r3, [ip, r2, lsl #3]
007936cc  82 21 8c e0                                      add r2, ip, r2, lsl #3
007936d0  03 00 54 e1                                      cmp r4, r3
007936d4  05 00 00 0a                                      beq #0x7936f0
007936d8  03 31 a0 e1                                      lsl r3, r3, #2
007936dc  01 20 83 e2                                      add r2, r3, #1
007936e0  82 31 9c e7                                      ldr r3, [ip, r2, lsl #3]
007936e4  82 21 8c e0                                      add r2, ip, r2, lsl #3
007936e8  04 00 53 e1                                      cmp r3, r4
007936ec  f9 ff ff 1a                                      bne #0x7936d8
007936f0  85 31 9c e7                                      ldr r3, [ip, r5, lsl #3]
007936f4  01 c0 e0 e3                                      mvn ip, #1
007936f8  00 30 82 e5                                      str r3, [r2]
007936fc  00 30 91 e5                                      ldr r3, [r1]
00793700  04 20 91 e5                                      ldr r2, [r1, #4]
00793704  00 30 93 e5                                      ldr r3, [r3]
00793708  02 21 a0 e1                                      lsl r2, r2, #2
0079370c  01 20 82 e2                                      add r2, r2, #1
00793710  82 11 83 e0                                      add r1, r3, r2, lsl #3
00793714  82 c1 83 e7                                      str ip, [r3, r2, lsl #3]
00793718  00 30 a0 e3                                      mov r3, #0
0079371c  04 30 81 e5                                      str r3, [r1, #4]
00793720  00 30 90 e5                                      ldr r3, [r0]
00793724  00 20 93 e5                                      ldr r2, [r3]
00793728  01 20 42 e2                                      sub r2, r2, #1
0079372c  00 20 83 e5                                      str r2, [r3]
00793730  d7 ff ff ea                                      b #0x793694
00793734  85 31 9c e7                                      ldr r3, [ip, r5, lsl #3]
00793738  01 00 73 e3                                      cmn r3, #1
0079373c  01 30 e0 03                                      mvneq r3, #1
00793740  85 31 8c 07                                      streq r3, [ip, r5, lsl #3]
00793744  00 30 e0 13                                      mvnne r3, #0
00793748  00 30 a0 03                                      moveq r3, #0
0079374c  04 30 86 e5                                      str r3, [r6, #4]
00793750  f2 ff ff ea                                      b #0x793720

; FUNCTION 0x00793814, declared_size=88, range_size=88, mode=arm
; class-group: gameswf::hash<gameswf::texture_cache::key, gameswf::texture_cache::region*, gameswf::fixed_size_hash<gameswf::texture_cache::key> >
; alias: _ZN7gameswf4hashINS_13texture_cache3keyEPNS1_6regionENS_15fixed_size_hashIS2_EEE5eraseERKS2_
; demangled: gameswf::hash<gameswf::texture_cache::key, gameswf::texture_cache::region*, gameswf::fixed_size_hash<gameswf::texture_cache::key> >::erase(gameswf::texture_cache::key const&)
; decoder-mode: arm
00793814  10 40 2d e9                                      push {r4, lr}
00793818  08 d0 4d e2                                      sub sp, sp, #8
0079381c  00 40 a0 e1                                      mov r4, r0
00793820  bd 0d ff eb                                      bl #0x756f1c
00793824  00 00 50 e3                                      cmp r0, #0
00793828  09 00 00 ba                                      blt #0x793854
0079382c  00 00 54 e3                                      cmp r4, #0
00793830  00 40 8d e5                                      str r4, [sp]
00793834  04 00 8d e5                                      str r0, [sp, #4]
00793838  05 00 00 0a                                      beq #0x793854
0079383c  00 30 94 e5                                      ldr r3, [r4]
00793840  00 00 53 e3                                      cmp r3, #0
00793844  02 00 00 0a                                      beq #0x793854
00793848  04 30 93 e5                                      ldr r3, [r3, #4]
0079384c  03 00 50 e1                                      cmp r0, r3
00793850  01 00 00 da                                      ble #0x79385c
00793854  08 d0 8d e2                                      add sp, sp, #8
00793858  10 80 bd e8                                      pop {r4, pc}
0079385c  04 00 a0 e1                                      mov r0, r4
00793860  0d 10 a0 e1                                      mov r1, sp
00793864  7f ff ff eb                                      bl #0x793668
00793868  f9 ff ff ea                                      b #0x793854

; FUNCTION 0x007c5020, declared_size=344, range_size=344, mode=arm
; class-group: gameswf::hash<gameswf::texture_cache::key, gameswf::texture_cache::region*, gameswf::fixed_size_hash<gameswf::texture_cache::key> >
; alias: _ZN7gameswf4hashINS_13texture_cache3keyEPNS1_6regionENS_15fixed_size_hashIS2_EEE16set_raw_capacityEi
; demangled: gameswf::hash<gameswf::texture_cache::key, gameswf::texture_cache::region*, gameswf::fixed_size_hash<gameswf::texture_cache::key> >::set_raw_capacity(int)
; decoder-mode: arm
007c5020  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007c5024  00 00 51 e3                                      cmp r1, #0
007c5028  0c d0 4d e2                                      sub sp, sp, #0xc
007c502c  00 80 a0 e1                                      mov r8, r0
007c5030  4d 00 00 da                                      ble #0x7c516c
007c5034  01 00 41 e2                                      sub r0, r1, #1
007c5038  49 26 ed eb                                      bl #0x30e964
007c503c  9c 23 ed eb                                      bl #0x30deb4
007c5040  18 12 07 e3                                      movw r1, #0x7218
007c5044  31 1f 43 e3                                      movt r1, #0x3f31
007c5048  11 27 ed eb                                      bl #0x30ec94
007c504c  fe 15 a0 e3                                      mov r1, #0x3f800000
007c5050  d3 26 ed eb                                      bl #0x30eba4
007c5054  1c 25 ed eb                                      bl #0x30e4cc
007c5058  01 40 a0 e3                                      mov r4, #1
007c505c  14 40 a0 e1                                      lsl r4, r4, r0
007c5060  00 30 98 e5                                      ldr r3, [r8]
007c5064  04 00 54 e3                                      cmp r4, #4
007c5068  04 40 a0 b3                                      movlt r4, #4
007c506c  00 00 53 e3                                      cmp r3, #0
007c5070  03 00 00 0a                                      beq #0x7c5084
007c5074  04 30 93 e5                                      ldr r3, [r3, #4]
007c5078  01 30 83 e2                                      add r3, r3, #1
007c507c  04 00 53 e1                                      cmp r3, r4
007c5080  3a 00 00 0a                                      beq #0x7c5170
007c5084  00 50 a0 e3                                      mov r5, #0
007c5088  84 02 a0 e1                                      lsl r0, r4, #5
007c508c  08 00 80 e2                                      add r0, r0, #8
007c5090  05 10 a0 e1                                      mov r1, r5
007c5094  04 50 8d e5                                      str r5, [sp, #4]
007c5098  bf 36 fe eb                                      bl #0x752b9c
007c509c  04 00 8d e5                                      str r0, [sp, #4]
007c50a0  00 50 80 e5                                      str r5, [r0]
007c50a4  04 30 9d e5                                      ldr r3, [sp, #4]
007c50a8  01 20 44 e2                                      sub r2, r4, #1
007c50ac  01 90 e0 e3                                      mvn sb, #1
007c50b0  04 20 83 e5                                      str r2, [r3, #4]
007c50b4  08 30 a0 e3                                      mov r3, #8
007c50b8  04 20 9d e5                                      ldr r2, [sp, #4]
007c50bc  01 50 85 e2                                      add r5, r5, #1
007c50c0  05 00 54 e1                                      cmp r4, r5
007c50c4  03 90 82 e7                                      str sb, [r2, r3]
007c50c8  20 30 83 e2                                      add r3, r3, #0x20
007c50cc  f9 ff ff ca                                      bgt #0x7c50b8
007c50d0  00 30 98 e5                                      ldr r3, [r8]
007c50d4  00 00 53 e3                                      cmp r3, #0
007c50d8  04 a0 8d 02                                      addeq sl, sp, #4
007c50dc  1d 00 00 0a                                      beq #0x7c5158
007c50e0  04 70 93 e5                                      ldr r7, [r3, #4]
007c50e4  00 00 57 e3                                      cmp r7, #0
007c50e8  04 a0 8d b2                                      addlt sl, sp, #4
007c50ec  15 00 00 ba                                      blt #0x7c5148
007c50f0  00 60 a0 e3                                      mov r6, #0
007c50f4  08 40 a0 e3                                      mov r4, #8
007c50f8  04 a0 8d e2                                      add sl, sp, #4
007c50fc  06 b0 a0 e1                                      mov fp, r6
007c5100  04 20 93 e7                                      ldr r2, [r3, r4]
007c5104  01 60 86 e2                                      add r6, r6, #1
007c5108  04 50 83 e0                                      add r5, r3, r4
007c510c  02 00 72 e3                                      cmn r2, #2
007c5110  08 00 00 0a                                      beq #0x7c5138
007c5114  04 20 95 e5                                      ldr r2, [r5, #4]
007c5118  0a 00 a0 e1                                      mov r0, sl
007c511c  08 10 85 e2                                      add r1, r5, #8
007c5120  01 00 72 e3                                      cmn r2, #1
007c5124  03 00 00 0a                                      beq #0x7c5138
007c5128  18 20 85 e2                                      add r2, r5, #0x18
007c512c  1e 00 00 eb                                      bl #0x7c51ac
007c5130  00 0a 85 e8                                      stm r5, {sb, fp}
007c5134  00 30 98 e5                                      ldr r3, [r8]
007c5138  06 00 57 e1                                      cmp r7, r6
007c513c  20 40 84 e2                                      add r4, r4, #0x20
007c5140  ee ff ff aa                                      bge #0x7c5100
007c5144  04 70 93 e5                                      ldr r7, [r3, #4]
007c5148  87 12 a0 e1                                      lsl r1, r7, #5
007c514c  03 00 a0 e1                                      mov r0, r3
007c5150  28 10 81 e2                                      add r1, r1, #0x28
007c5154  77 36 fe eb                                      bl #0x752b38
007c5158  04 30 9d e5                                      ldr r3, [sp, #4]
007c515c  0a 00 a0 e1                                      mov r0, sl
007c5160  00 30 88 e5                                      str r3, [r8]
007c5164  00 30 a0 e3                                      mov r3, #0
007c5168  04 30 8d e5                                      str r3, [sp, #4]
007c516c  0e 48 fe eb                                      bl #0x7571ac
007c5170  0c d0 8d e2                                      add sp, sp, #0xc
007c5174  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x007c5178, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::hash<gameswf::texture_cache::key, gameswf::texture_cache::region*, gameswf::fixed_size_hash<gameswf::texture_cache::key> >
; alias: _ZN7gameswf4hashINS_13texture_cache3keyEPNS1_6regionENS_15fixed_size_hashIS2_EEE12check_expandEv
; demangled: gameswf::hash<gameswf::texture_cache::key, gameswf::texture_cache::region*, gameswf::fixed_size_hash<gameswf::texture_cache::key> >::check_expand()
; decoder-mode: arm
007c5178  00 30 90 e5                                      ldr r3, [r0]
007c517c  00 00 53 e3                                      cmp r3, #0
007c5180  07 00 00 0a                                      beq #0x7c51a4
007c5184  04 10 93 e5                                      ldr r1, [r3, #4]
007c5188  00 30 93 e5                                      ldr r3, [r3]
007c518c  01 10 81 e2                                      add r1, r1, #1
007c5190  81 10 a0 e1                                      lsl r1, r1, #1
007c5194  83 30 83 e0                                      add r3, r3, r3, lsl #1
007c5198  01 00 53 e1                                      cmp r3, r1
007c519c  1e ff 2f d1                                      bxle lr
007c51a0  9e ff ff ea                                      b #0x7c5020
007c51a4  08 10 a0 e3                                      mov r1, #8
007c51a8  9c ff ff ea                                      b #0x7c5020

; FUNCTION 0x007c51ac, declared_size=448, range_size=448, mode=arm
; class-group: gameswf::hash<gameswf::texture_cache::key, gameswf::texture_cache::region*, gameswf::fixed_size_hash<gameswf::texture_cache::key> >
; alias: _ZN7gameswf4hashINS_13texture_cache3keyEPNS1_6regionENS_15fixed_size_hashIS2_EEE3addERKS2_RKS4_
; demangled: gameswf::hash<gameswf::texture_cache::key, gameswf::texture_cache::region*, gameswf::fixed_size_hash<gameswf::texture_cache::key> >::add(gameswf::texture_cache::key const&, gameswf::texture_cache::region* const&)
; decoder-mode: arm
007c51ac  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007c51b0  00 40 a0 e1                                      mov r4, r0
007c51b4  14 d0 4d e2                                      sub sp, sp, #0x14
007c51b8  01 50 a0 e1                                      mov r5, r1
007c51bc  0c 20 8d e5                                      str r2, [sp, #0xc]
007c51c0  ec ff ff eb                                      bl #0x7c5178
007c51c4  00 20 94 e5                                      ldr r2, [r4]
007c51c8  05 c5 01 e3                                      movw ip, #0x1505
007c51cc  10 30 a0 e3                                      mov r3, #0x10
007c51d0  00 10 92 e5                                      ldr r1, [r2]
007c51d4  01 10 81 e2                                      add r1, r1, #1
007c51d8  00 10 82 e5                                      str r1, [r2]
007c51dc  01 30 43 e2                                      sub r3, r3, #1
007c51e0  03 10 d5 e7                                      ldrb r1, [r5, r3]
007c51e4  0c 23 a0 e1                                      lsl r2, ip, #6
007c51e8  0c 28 82 e0                                      add r2, r2, ip, lsl #16
007c51ec  01 20 82 e0                                      add r2, r2, r1
007c51f0  00 00 53 e3                                      cmp r3, #0
007c51f4  02 c0 6c e0                                      rsb ip, ip, r2
007c51f8  f7 ff ff 1a                                      bne #0x7c51dc
007c51fc  00 40 94 e5                                      ldr r4, [r4]
007c5200  01 00 7c e3                                      cmn ip, #1
007c5204  02 c9 e0 03                                      mvneq ip, #0x8000
007c5208  04 10 94 e5                                      ldr r1, [r4, #4]
007c520c  01 20 0c e0                                      and r2, ip, r1
007c5210  02 b1 a0 e1                                      lsl fp, r2, #2
007c5214  01 b0 8b e2                                      add fp, fp, #1
007c5218  8b 01 94 e7                                      ldr r0, [r4, fp, lsl #3]
007c521c  8b 81 84 e0                                      add r8, r4, fp, lsl #3
007c5220  02 00 70 e3                                      cmn r0, #2
007c5224  2d 00 00 0a                                      beq #0x7c52e0
007c5228  04 60 98 e5                                      ldr r6, [r8, #4]
007c522c  01 00 76 e3                                      cmn r6, #1
007c5230  02 70 a0 11                                      movne r7, r2
007c5234  44 00 00 0a                                      beq #0x7c534c
007c5238  01 70 87 e2                                      add r7, r7, #1
007c523c  01 70 07 e0                                      and r7, r7, r1
007c5240  07 a1 a0 e1                                      lsl sl, r7, #2
007c5244  01 a0 8a e2                                      add sl, sl, #1
007c5248  8a 31 94 e7                                      ldr r3, [r4, sl, lsl #3]
007c524c  8a a1 84 e0                                      add sl, r4, sl, lsl #3
007c5250  02 00 73 e3                                      cmn r3, #2
007c5254  f7 ff ff 1a                                      bne #0x7c5238
007c5258  06 10 01 e0                                      and r1, r1, r6
007c525c  02 00 51 e1                                      cmp r1, r2
007c5260  28 00 00 0a                                      beq #0x7c5308
007c5264  01 11 a0 e1                                      lsl r1, r1, #2
007c5268  01 90 81 e2                                      add sb, r1, #1
007c526c  89 11 94 e7                                      ldr r1, [r4, sb, lsl #3]
007c5270  89 91 84 e0                                      add sb, r4, sb, lsl #3
007c5274  02 00 51 e1                                      cmp r1, r2
007c5278  f9 ff ff 1a                                      bne #0x7c5264
007c527c  00 00 8a e5                                      str r0, [sl]
007c5280  04 30 98 e5                                      ldr r3, [r8, #4]
007c5284  08 20 88 e2                                      add r2, r8, #8
007c5288  08 60 8a e2                                      add r6, sl, #8
007c528c  08 20 8d e5                                      str r2, [sp, #8]
007c5290  04 60 8d e5                                      str r6, [sp, #4]
007c5294  04 30 8a e5                                      str r3, [sl, #4]
007c5298  08 60 9d e5                                      ldr r6, [sp, #8]
007c529c  0f 00 96 e8                                      ldm r6, {r0, r1, r2, r3}
007c52a0  04 60 9d e5                                      ldr r6, [sp, #4]
007c52a4  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
007c52a8  18 30 98 e5                                      ldr r3, [r8, #0x18]
007c52ac  18 30 8a e5                                      str r3, [sl, #0x18]
007c52b0  00 70 89 e5                                      str r7, [sb]
007c52b4  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
007c52b8  08 50 9d e5                                      ldr r5, [sp, #8]
007c52bc  0f 00 85 e8                                      stm r5, {r0, r1, r2, r3}
007c52c0  0c 60 9d e5                                      ldr r6, [sp, #0xc]
007c52c4  00 30 96 e5                                      ldr r3, [r6]
007c52c8  04 c0 88 e5                                      str ip, [r8, #4]
007c52cc  18 30 88 e5                                      str r3, [r8, #0x18]
007c52d0  00 30 e0 e3                                      mvn r3, #0
007c52d4  8b 31 84 e7                                      str r3, [r4, fp, lsl #3]
007c52d8  14 d0 8d e2                                      add sp, sp, #0x14
007c52dc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007c52e0  00 30 e0 e3                                      mvn r3, #0
007c52e4  8b 31 84 e7                                      str r3, [r4, fp, lsl #3]
007c52e8  04 c0 88 e5                                      str ip, [r8, #4]
007c52ec  08 c0 88 e2                                      add ip, r8, #8
007c52f0  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
007c52f4  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
007c52f8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
007c52fc  00 30 92 e5                                      ldr r3, [r2]
007c5300  18 30 88 e5                                      str r3, [r8, #0x18]
007c5304  f3 ff ff ea                                      b #0x7c52d8
007c5308  00 00 8a e5                                      str r0, [sl]
007c530c  04 30 98 e5                                      ldr r3, [r8, #4]
007c5310  08 90 88 e2                                      add sb, r8, #8
007c5314  08 60 8a e2                                      add r6, sl, #8
007c5318  04 30 8a e5                                      str r3, [sl, #4]
007c531c  0f 00 99 e8                                      ldm sb, {r0, r1, r2, r3}
007c5320  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
007c5324  18 30 98 e5                                      ldr r3, [r8, #0x18]
007c5328  18 30 8a e5                                      str r3, [sl, #0x18]
007c532c  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
007c5330  0f 00 89 e8                                      stm sb, {r0, r1, r2, r3}
007c5334  0c 60 9d e5                                      ldr r6, [sp, #0xc]
007c5338  00 30 96 e5                                      ldr r3, [r6]
007c533c  18 30 88 e5                                      str r3, [r8, #0x18]
007c5340  8b 71 84 e7                                      str r7, [r4, fp, lsl #3]
007c5344  04 c0 88 e5                                      str ip, [r8, #4]
007c5348  e2 ff ff ea                                      b #0x7c52d8
007c534c  04 c0 88 e5                                      str ip, [r8, #4]
007c5350  08 c0 88 e2                                      add ip, r8, #8
007c5354  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
007c5358  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
007c535c  0c 50 9d e5                                      ldr r5, [sp, #0xc]
007c5360  00 30 95 e5                                      ldr r3, [r5]
007c5364  18 30 88 e5                                      str r3, [r8, #0x18]
007c5368  da ff ff ea                                      b #0x7c52d8

; FUNCTION 0x007c536c, declared_size=88, range_size=88, mode=arm
; class-group: gameswf::hash<gameswf::texture_cache::key, gameswf::texture_cache::region*, gameswf::fixed_size_hash<gameswf::texture_cache::key> >
; alias: _ZN7gameswf4hashINS_13texture_cache3keyEPNS1_6regionENS_15fixed_size_hashIS2_EEEixERKS2_
; demangled: gameswf::hash<gameswf::texture_cache::key, gameswf::texture_cache::region*, gameswf::fixed_size_hash<gameswf::texture_cache::key> >::operator[](gameswf::texture_cache::key const&)
; decoder-mode: arm
007c536c  30 40 2d e9                                      push {r4, r5, lr}
007c5370  0c d0 4d e2                                      sub sp, sp, #0xc
007c5374  00 40 a0 e1                                      mov r4, r0
007c5378  01 50 a0 e1                                      mov r5, r1
007c537c  e6 46 fe eb                                      bl #0x756f1c
007c5380  00 00 50 e3                                      cmp r0, #0
007c5384  04 00 00 ba                                      blt #0x7c539c
007c5388  00 30 94 e5                                      ldr r3, [r4]
007c538c  80 02 83 e0                                      add r0, r3, r0, lsl #5
007c5390  20 00 80 e2                                      add r0, r0, #0x20
007c5394  0c d0 8d e2                                      add sp, sp, #0xc
007c5398  30 80 bd e8                                      pop {r4, r5, pc}
007c539c  08 20 8d e2                                      add r2, sp, #8
007c53a0  00 30 a0 e3                                      mov r3, #0
007c53a4  04 30 22 e5                                      str r3, [r2, #-4]!
007c53a8  04 00 a0 e1                                      mov r0, r4
007c53ac  05 10 a0 e1                                      mov r1, r5
007c53b0  7d ff ff eb                                      bl #0x7c51ac
007c53b4  04 00 a0 e1                                      mov r0, r4
007c53b8  05 10 a0 e1                                      mov r1, r5
007c53bc  d6 46 fe eb                                      bl #0x756f1c
007c53c0  f0 ff ff ea                                      b #0x7c5388
