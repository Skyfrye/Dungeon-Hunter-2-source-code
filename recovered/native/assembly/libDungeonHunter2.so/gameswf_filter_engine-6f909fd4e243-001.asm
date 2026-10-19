; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00756d88, declared_size=400, range_size=400, mode=arm
; class-group: gameswf::filter_engine
; alias: _ZN7gameswf13filter_engine5blendERNS0_6rasterES2_
; demangled: gameswf::filter_engine::blend(gameswf::filter_engine::raster&, gameswf::filter_engine::raster&)
; decoder-mode: arm
00756d88  f0 0f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp}
00756d8c  00 20 91 e5                                      ldr r2, [r1]
00756d90  18 d0 4d e2                                      sub sp, sp, #0x18
00756d94  00 b0 a0 e1                                      mov fp, r0
00756d98  10 00 90 e5                                      ldr r0, [r0, #0x10]
00756d9c  08 20 8d e5                                      str r2, [sp, #8]
00756da0  00 30 9b e5                                      ldr r3, [fp]
00756da4  0c c0 9b e5                                      ldr ip, [fp, #0xc]
00756da8  00 00 50 e3                                      cmp r0, #0
00756dac  0c 30 8d e5                                      str r3, [sp, #0xc]
00756db0  14 10 91 e5                                      ldr r1, [r1, #0x14]
00756db4  14 10 8d e5                                      str r1, [sp, #0x14]
00756db8  53 00 00 da                                      ble #0x756f0c
00756dbc  81 40 08 e3                                      movw r4, #0x8081
00756dc0  0c 51 a0 e1                                      lsl r5, ip, #2
00756dc4  00 70 a0 e3                                      mov r7, #0
00756dc8  80 40 48 e3                                      movt r4, #0x8080
00756dcc  10 50 8d e5                                      str r5, [sp, #0x10]
00756dd0  04 70 8d e5                                      str r7, [sp, #4]
00756dd4  00 00 5c e3                                      cmp ip, #0
00756dd8  00 10 a0 c3                                      movgt r1, #0
00756ddc  01 00 00 ca                                      bgt #0x756de8
00756de0  39 00 00 ea                                      b #0x756ecc
00756de4  04 20 82 e2                                      add r2, r2, #4
00756de8  03 00 d3 e5                                      ldrb r0, [r3, #3]
00756dec  00 80 d3 e5                                      ldrb r8, [r3]
00756df0  01 70 d3 e5                                      ldrb r7, [r3, #1]
00756df4  00 00 50 e3                                      cmp r0, #0
00756df8  02 60 d3 e5                                      ldrb r6, [r3, #2]
00756dfc  04 30 83 e2                                      add r3, r3, #4
00756e00  2d 00 00 0a                                      beq #0x756ebc
00756e04  00 50 d2 e5                                      ldrb r5, [r2]
00756e08  ff c0 60 e2                                      rsb ip, r0, #0xff
00756e0c  95 0c 05 e0                                      mul r5, r5, ip
00756e10  94 a5 c9 e0                                      smull sl, sb, r4, r5
00756e14  c5 af a0 e1                                      asr sl, r5, #0x1f
00756e18  05 50 89 e0                                      add r5, sb, r5
00756e1c  c5 53 6a e0                                      rsb r5, sl, r5, asr #7
00756e20  08 80 85 e0                                      add r8, r5, r8
00756e24  01 50 d2 e5                                      ldrb r5, [r2, #1]
00756e28  fe 00 58 e3                                      cmp r8, #0xfe
00756e2c  ff 80 a0 c3                                      movgt r8, #0xff
00756e30  95 0c 05 e0                                      mul r5, r5, ip
00756e34  78 80 ef d6                                      uxtble r8, r8
00756e38  00 80 c2 e5                                      strb r8, [r2]
00756e3c  94 85 ca e0                                      smull r8, sl, r4, r5
00756e40  c5 8f a0 e1                                      asr r8, r5, #0x1f
00756e44  05 50 8a e0                                      add r5, sl, r5
00756e48  c5 53 68 e0                                      rsb r5, r8, r5, asr #7
00756e4c  07 70 85 e0                                      add r7, r5, r7
00756e50  02 50 d2 e5                                      ldrb r5, [r2, #2]
00756e54  fe 00 57 e3                                      cmp r7, #0xfe
00756e58  ff 70 a0 c3                                      movgt r7, #0xff
00756e5c  95 0c 05 e0                                      mul r5, r5, ip
00756e60  77 70 ef d6                                      uxtble r7, r7
00756e64  94 a5 c8 e0                                      smull sl, r8, r4, r5
00756e68  01 70 c2 e5                                      strb r7, [r2, #1]
00756e6c  c5 7f a0 e1                                      asr r7, r5, #0x1f
00756e70  05 50 88 e0                                      add r5, r8, r5
00756e74  03 80 d2 e5                                      ldrb r8, [r2, #3]
00756e78  c5 53 67 e0                                      rsb r5, r7, r5, asr #7
00756e7c  06 50 85 e0                                      add r5, r5, r6
00756e80  98 0c 0c e0                                      mul ip, r8, ip
00756e84  fe 00 55 e3                                      cmp r5, #0xfe
00756e88  ff 50 a0 c3                                      movgt r5, #0xff
00756e8c  75 50 ef d6                                      uxtble r5, r5
00756e90  02 50 c2 e5                                      strb r5, [r2, #2]
00756e94  94 5c c6 e0                                      smull r5, r6, r4, ip
00756e98  cc 5f a0 e1                                      asr r5, ip, #0x1f
00756e9c  0c c0 86 e0                                      add ip, r6, ip
00756ea0  cc c3 65 e0                                      rsb ip, r5, ip, asr #7
00756ea4  00 00 8c e0                                      add r0, ip, r0
00756ea8  fe 00 50 e3                                      cmp r0, #0xfe
00756eac  ff 00 a0 c3                                      movgt r0, #0xff
00756eb0  70 00 ef d6                                      uxtble r0, r0
00756eb4  03 00 c2 e5                                      strb r0, [r2, #3]
00756eb8  0c c0 9b e5                                      ldr ip, [fp, #0xc]
00756ebc  01 10 81 e2                                      add r1, r1, #1
00756ec0  01 00 5c e1                                      cmp ip, r1
00756ec4  c6 ff ff ca                                      bgt #0x756de4
00756ec8  10 00 9b e5                                      ldr r0, [fp, #0x10]
00756ecc  04 70 9d e5                                      ldr r7, [sp, #4]
00756ed0  01 70 87 e2                                      add r7, r7, #1
00756ed4  07 00 50 e1                                      cmp r0, r7
00756ed8  04 70 8d e5                                      str r7, [sp, #4]
00756edc  0a 00 00 da                                      ble #0x756f0c
00756ee0  0c 80 9d e5                                      ldr r8, [sp, #0xc]
00756ee4  08 10 9d e5                                      ldr r1, [sp, #8]
00756ee8  14 20 9d e5                                      ldr r2, [sp, #0x14]
00756eec  10 a0 9d e5                                      ldr sl, [sp, #0x10]
00756ef0  02 10 81 e0                                      add r1, r1, r2
00756ef4  0a 80 88 e0                                      add r8, r8, sl
00756ef8  0c 80 8d e5                                      str r8, [sp, #0xc]
00756efc  08 10 8d e5                                      str r1, [sp, #8]
00756f00  08 30 a0 e1                                      mov r3, r8
00756f04  01 20 a0 e1                                      mov r2, r1
00756f08  b1 ff ff ea                                      b #0x756dd4
00756f0c  18 d0 8d e2                                      add sp, sp, #0x18
00756f10  f0 0f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp}
00756f14  1e ff 2f e1                                      bx lr

; FUNCTION 0x00756f18, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::filter_engine
; alias: _ZN7gameswf13filter_engine10apply_glowERNS0_6paramsE
; demangled: gameswf::filter_engine::apply_glow(gameswf::filter_engine::params&)
; decoder-mode: arm
00756f18  1e ff 2f e1                                      bx lr

; FUNCTION 0x007572a0, declared_size=484, range_size=484, mode=arm
; class-group: gameswf::filter_engine
; alias: _ZN7gameswf13filter_engine17read_frame_bufferEiiii
; demangled: gameswf::filter_engine::read_frame_buffer(int, int, int, int)
; decoder-mode: arm
007572a0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007572a4  1c d0 4d e2                                      sub sp, sp, #0x1c
007572a8  40 b0 9d e5                                      ldr fp, [sp, #0x40]
007572ac  54 50 90 e5                                      ldr r5, [r0, #0x54]
007572b0  c0 41 9f e5                                      ldr r4, [pc, #0x1c0]
007572b4  93 0b 07 e0                                      mul r7, r3, fp
007572b8  00 80 a0 e1                                      mov r8, r0
007572bc  07 61 a0 e1                                      lsl r6, r7, #2
007572c0  05 00 56 e1                                      cmp r6, r5
007572c4  04 40 8f e0                                      add r4, pc, r4
007572c8  01 90 a0 e1                                      mov sb, r1
007572cc  53 00 00 ca                                      bgt #0x757420
007572d0  a4 01 9f e5                                      ldr r0, [pc, #0x1a4]
007572d4  50 50 98 e5                                      ldr r5, [r8, #0x50]
007572d8  09 10 a0 e1                                      mov r1, sb
007572dc  00 00 94 e7                                      ldr r0, [r4, r0]
007572e0  00 c0 90 e5                                      ldr ip, [r0]
007572e4  0c 00 a0 e1                                      mov r0, ip
007572e8  00 c0 9c e5                                      ldr ip, [ip]
007572ec  00 b0 8d e5                                      str fp, [sp]
007572f0  04 50 8d e5                                      str r5, [sp, #4]
007572f4  0f e0 a0 e1                                      mov lr, pc
007572f8  3c f0 9c e5                                      ldr pc, [ip, #0x3c]
007572fc  01 00 57 e3                                      cmp r7, #1
00757300  44 00 00 0a                                      beq #0x757418
00757304  74 21 9f e5                                      ldr r2, [pc, #0x174]
00757308  04 50 85 e2                                      add r5, r5, #4
0075730c  14 20 8d e5                                      str r2, [sp, #0x14]
00757310  30 00 00 ea                                      b #0x7573d8
00757314  14 20 9d e5                                      ldr r2, [sp, #0x14]
00757318  01 70 47 e2                                      sub r7, r7, #1
0075731c  02 30 94 e7                                      ldr r3, [r4, r2]
00757320  06 00 d3 e7                                      ldrb r0, [r3, r6]
00757324  8e dd ee eb                                      bl #0x30e964
00757328  00 10 a0 e1                                      mov r1, r0
0075732c  43 04 a0 e3                                      mov r0, #0x43000000
00757330  7f 08 80 e2                                      add r0, r0, #0x7f0000
00757334  56 de ee eb                                      bl #0x30ec94
00757338  00 80 a0 e1                                      mov r8, r0
0075733c  0b 00 a0 e1                                      mov r0, fp
00757340  87 dd ee eb                                      bl #0x30e964
00757344  08 10 a0 e1                                      mov r1, r8
00757348  87 de ee eb                                      bl #0x30ed6c
0075734c  5e dc ee eb                                      bl #0x30e4cc
00757350  fe 00 50 e3                                      cmp r0, #0xfe
00757354  ff 00 a0 c3                                      movgt r0, #0xff
00757358  70 00 ef d6                                      uxtble r0, r0
0075735c  04 00 45 e5                                      strb r0, [r5, #-4]
00757360  09 00 a0 e1                                      mov r0, sb
00757364  7e dd ee eb                                      bl #0x30e964
00757368  08 10 a0 e1                                      mov r1, r8
0075736c  7e de ee eb                                      bl #0x30ed6c
00757370  55 dc ee eb                                      bl #0x30e4cc
00757374  fe 00 50 e3                                      cmp r0, #0xfe
00757378  ff 00 a0 c3                                      movgt r0, #0xff
0075737c  70 00 ef d6                                      uxtble r0, r0
00757380  03 00 45 e5                                      strb r0, [r5, #-3]
00757384  0a 00 a0 e1                                      mov r0, sl
00757388  75 dd ee eb                                      bl #0x30e964
0075738c  08 10 a0 e1                                      mov r1, r8
00757390  75 de ee eb                                      bl #0x30ed6c
00757394  4c dc ee eb                                      bl #0x30e4cc
00757398  fe 00 50 e3                                      cmp r0, #0xfe
0075739c  ff 00 a0 c3                                      movgt r0, #0xff
007573a0  70 00 ef d6                                      uxtble r0, r0
007573a4  02 00 45 e5                                      strb r0, [r5, #-2]
007573a8  06 00 a0 e1                                      mov r0, r6
007573ac  6c dd ee eb                                      bl #0x30e964
007573b0  08 10 a0 e1                                      mov r1, r8
007573b4  6c de ee eb                                      bl #0x30ed6c
007573b8  43 dc ee eb                                      bl #0x30e4cc
007573bc  fe 00 50 e3                                      cmp r0, #0xfe
007573c0  ff 00 a0 c3                                      movgt r0, #0xff
007573c4  70 00 ef d6                                      uxtble r0, r0
007573c8  01 00 57 e3                                      cmp r7, #1
007573cc  01 00 45 e5                                      strb r0, [r5, #-1]
007573d0  04 50 85 e2                                      add r5, r5, #4
007573d4  0f 00 00 0a                                      beq #0x757418
007573d8  01 60 55 e5                                      ldrb r6, [r5, #-1]
007573dc  04 a0 55 e5                                      ldrb sl, [r5, #-4]
007573e0  03 90 55 e5                                      ldrb sb, [r5, #-3]
007573e4  01 30 46 e2                                      sub r3, r6, #1
007573e8  73 30 ef e6                                      uxtb r3, r3
007573ec  fd 00 53 e3                                      cmp r3, #0xfd
007573f0  02 b0 55 e5                                      ldrb fp, [r5, #-2]
007573f4  c6 ff ff 9a                                      bls #0x757314
007573f8  01 70 47 e2                                      sub r7, r7, #1
007573fc  01 00 57 e3                                      cmp r7, #1
00757400  04 b0 45 e5                                      strb fp, [r5, #-4]
00757404  03 90 45 e5                                      strb sb, [r5, #-3]
00757408  02 a0 45 e5                                      strb sl, [r5, #-2]
0075740c  01 60 45 e5                                      strb r6, [r5, #-1]
00757410  04 50 85 e2                                      add r5, r5, #4
00757414  ef ff ff 1a                                      bne #0x7573d8
00757418  1c d0 8d e2                                      add sp, sp, #0x1c
0075741c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00757420  00 00 56 e3                                      cmp r6, #0
00757424  50 a0 80 e2                                      add sl, r0, #0x50
00757428  07 00 00 1a                                      bne #0x75744c
0075742c  00 00 a0 e3                                      mov r0, #0
00757430  00 10 9a e5                                      ldr r1, [sl]
00757434  05 00 c1 e7                                      strb r0, [r1, r5]
00757438  01 50 85 e2                                      add r5, r5, #1
0075743c  06 00 55 e1                                      cmp r5, r6
00757440  fa ff ff 1a                                      bne #0x757430
00757444  54 50 88 e5                                      str r5, [r8, #0x54]
00757448  a0 ff ff ea                                      b #0x7572d0
0075744c  58 10 90 e5                                      ldr r1, [r0, #0x58]
00757450  01 00 56 e1                                      cmp r6, r1
00757454  f4 ff ff da                                      ble #0x75742c
00757458  0a 00 a0 e1                                      mov r0, sl
0075745c  c6 10 86 e0                                      add r1, r6, r6, asr #1
00757460  10 20 8d e5                                      str r2, [sp, #0x10]
00757464  0c 30 8d e5                                      str r3, [sp, #0xc]
00757468  6f ff ff eb                                      bl #0x75722c
0075746c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00757470  10 20 9d e5                                      ldr r2, [sp, #0x10]
00757474  ec ff ff ea                                      b #0x75742c
; mapping-symbol data/literal pool
00757478  cc d7 23 00 b4 39 00 00 90 1e 00 00              .byte 0xcc, 0xd7, 0x23, 0x00, 0xb4, 0x39, 0x00, 0x00, 0x90, 0x1e, 0x00, 0x00

; FUNCTION 0x00757500, declared_size=108, range_size=108, mode=arm
; class-group: gameswf::filter_engine
; alias: _ZN7gameswf13filter_engineC1Ev
; demangled: gameswf::filter_engine::filter_engine()
; decoder-mode: arm
00757500  30 40 2d e9                                      push {r4, r5, lr}
00757504  01 1c a0 e3                                      mov r1, #0x100
00757508  00 40 a0 e1                                      mov r4, r0
0075750c  00 50 a0 e3                                      mov r5, #0
00757510  0c d0 4d e2                                      sub sp, sp, #0xc
00757514  01 20 a0 e1                                      mov r2, r1
00757518  04 30 a0 e3                                      mov r3, #4
0075751c  00 50 8d e5                                      str r5, [sp]
00757520  26 f3 00 eb                                      bl #0x7941c0
00757524  34 30 94 e5                                      ldr r3, [r4, #0x34]
00757528  64 50 84 e5                                      str r5, [r4, #0x64]
0075752c  40 50 84 e5                                      str r5, [r4, #0x40]
00757530  44 50 84 e5                                      str r5, [r4, #0x44]
00757534  48 50 84 e5                                      str r5, [r4, #0x48]
00757538  4c 50 c4 e5                                      strb r5, [r4, #0x4c]
0075753c  50 50 84 e5                                      str r5, [r4, #0x50]
00757540  54 50 84 e5                                      str r5, [r4, #0x54]
00757544  58 50 84 e5                                      str r5, [r4, #0x58]
00757548  5c 50 c4 e5                                      strb r5, [r4, #0x5c]
0075754c  60 50 84 e5                                      str r5, [r4, #0x60]
00757550  03 00 a0 e1                                      mov r0, r3
00757554  00 30 93 e5                                      ldr r3, [r3]
00757558  0f e0 a0 e1                                      mov lr, pc
0075755c  08 f0 93 e5                                      ldr pc, [r3, #8]
00757560  04 00 a0 e1                                      mov r0, r4
00757564  0c d0 8d e2                                      add sp, sp, #0xc
00757568  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x007575b0, declared_size=292, range_size=292, mode=arm
; class-group: gameswf::filter_engine
; alias: _ZN7gameswf13filter_engine7prepareERNS0_6paramsE
; demangled: gameswf::filter_engine::prepare(gameswf::filter_engine::params&)
; decoder-mode: arm
007575b0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007575b4  10 60 90 e5                                      ldr r6, [r0, #0x10]
007575b8  14 70 90 e5                                      ldr r7, [r0, #0x14]
007575bc  00 50 90 e5                                      ldr r5, [r0]
007575c0  00 30 a0 e3                                      mov r3, #0
007575c4  28 30 80 e5                                      str r3, [r0, #0x28]
007575c8  24 30 80 e5                                      str r3, [r0, #0x24]
007575cc  2c 60 80 e5                                      str r6, [r0, #0x2c]
007575d0  30 70 80 e5                                      str r7, [r0, #0x30]
007575d4  00 30 95 e5                                      ldr r3, [r5]
007575d8  00 40 a0 e1                                      mov r4, r0
007575dc  00 00 53 e3                                      cmp r3, #0
007575e0  34 00 00 1a                                      bne #0x7576b8
007575e4  08 00 95 e5                                      ldr r0, [r5, #8]
007575e8  59 dc ee eb                                      bl #0x30e754
007575ec  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007575f0  dd dd ee eb                                      bl #0x30ed6c
007575f4  3f 14 a0 e3                                      mov r1, #0x3f000000
007575f8  69 dd ee eb                                      bl #0x30eba4
007575fc  b2 db ee eb                                      bl #0x30e4cc
00757600  24 00 84 e5                                      str r0, [r4, #0x24]
00757604  00 80 a0 e1                                      mov r8, r0
00757608  08 00 95 e5                                      ldr r0, [r5, #8]
0075760c  3d dd ee eb                                      bl #0x30eb08
00757610  0c 10 95 e5                                      ldr r1, [r5, #0xc]
00757614  d4 dd ee eb                                      bl #0x30ed6c
00757618  3f 14 a0 e3                                      mov r1, #0x3f000000
0075761c  60 dd ee eb                                      bl #0x30eba4
00757620  a9 db ee eb                                      bl #0x30e4cc
00757624  c8 2f 28 e0                                      eor r2, r8, r8, asr #31
00757628  c8 2f 42 e0                                      sub r2, r2, r8, asr #31
0075762c  c0 3f 20 e0                                      eor r3, r0, r0, asr #31
00757630  c0 3f 43 e0                                      sub r3, r3, r0, asr #31
00757634  02 60 86 e0                                      add r6, r6, r2
00757638  07 70 83 e0                                      add r7, r3, r7
0075763c  30 70 84 e5                                      str r7, [r4, #0x30]
00757640  28 00 84 e5                                      str r0, [r4, #0x28]
00757644  2c 60 84 e5                                      str r6, [r4, #0x2c]
00757648  20 00 95 e5                                      ldr r0, [r5, #0x20]
0075764c  3f 14 a0 e3                                      mov r1, #0x3f000000
00757650  53 dd ee eb                                      bl #0x30eba4
00757654  9c db ee eb                                      bl #0x30e4cc
00757658  00 00 86 e0                                      add r0, r6, r0
0075765c  2c 00 84 e5                                      str r0, [r4, #0x2c]
00757660  24 00 95 e5                                      ldr r0, [r5, #0x24]
00757664  3f 14 a0 e3                                      mov r1, #0x3f000000
00757668  4d dd ee eb                                      bl #0x30eba4
0075766c  96 db ee eb                                      bl #0x30e4cc
00757670  30 30 94 e5                                      ldr r3, [r4, #0x30]
00757674  3f 14 a0 e3                                      mov r1, #0x3f000000
00757678  00 30 83 e0                                      add r3, r3, r0
0075767c  30 30 84 e5                                      str r3, [r4, #0x30]
00757680  20 00 95 e5                                      ldr r0, [r5, #0x20]
00757684  b8 dd ee eb                                      bl #0x30ed6c
00757688  8f db ee eb                                      bl #0x30e4cc
0075768c  24 30 94 e5                                      ldr r3, [r4, #0x24]
00757690  3f 14 a0 e3                                      mov r1, #0x3f000000
00757694  03 30 60 e0                                      rsb r3, r0, r3
00757698  24 30 84 e5                                      str r3, [r4, #0x24]
0075769c  24 00 95 e5                                      ldr r0, [r5, #0x24]
007576a0  b1 dd ee eb                                      bl #0x30ed6c
007576a4  88 db ee eb                                      bl #0x30e4cc
007576a8  28 30 94 e5                                      ldr r3, [r4, #0x28]
007576ac  03 30 60 e0                                      rsb r3, r0, r3
007576b0  28 30 84 e5                                      str r3, [r4, #0x28]
007576b4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007576b8  02 00 53 e3                                      cmp r3, #2
007576bc  e1 ff ff 1a                                      bne #0x757648
007576c0  02 60 86 e2                                      add r6, r6, #2
007576c4  02 70 87 e2                                      add r7, r7, #2
007576c8  30 70 80 e5                                      str r7, [r0, #0x30]
007576cc  2c 60 80 e5                                      str r6, [r0, #0x2c]
007576d0  dc ff ff ea                                      b #0x757648

; FUNCTION 0x007576d4, declared_size=364, range_size=364, mode=arm
; class-group: gameswf::filter_engine
; alias: _ZN7gameswf13filter_engine12apply_shadowERNS0_6paramsE
; demangled: gameswf::filter_engine::apply_shadow(gameswf::filter_engine::params&)
; decoder-mode: arm
007576d4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007576d8  00 40 90 e5                                      ldr r4, [r0]
007576dc  00 50 a0 e1                                      mov r5, r0
007576e0  0c d0 4d e2                                      sub sp, sp, #0xc
007576e4  08 60 94 e5                                      ldr r6, [r4, #8]
007576e8  0c 90 94 e5                                      ldr sb, [r4, #0xc]
007576ec  06 00 a0 e1                                      mov r0, r6
007576f0  17 dc ee eb                                      bl #0x30e754
007576f4  00 b0 a0 e1                                      mov fp, r0
007576f8  06 00 a0 e1                                      mov r0, r6
007576fc  01 dd ee eb                                      bl #0x30eb08
00757700  04 00 8d e5                                      str r0, [sp, #4]
00757704  14 70 95 e5                                      ldr r7, [r5, #0x14]
00757708  04 20 95 e5                                      ldr r2, [r5, #4]
0075770c  0c 60 95 e5                                      ldr r6, [r5, #0xc]
00757710  00 00 57 e3                                      cmp r7, #0
00757714  18 a0 95 e5                                      ldr sl, [r5, #0x18]
00757718  08 00 95 e5                                      ldr r0, [r5, #8]
0075771c  20 c0 95 e5                                      ldr ip, [r5, #0x20]
00757720  28 10 95 e5                                      ldr r1, [r5, #0x28]
00757724  34 80 95 e5                                      ldr r8, [r5, #0x34]
00757728  24 30 95 e5                                      ldr r3, [r5, #0x24]
0075772c  39 00 00 da                                      ble #0x757818
00757730  91 38 23 e0                                      mla r3, r1, r8, r3
00757734  96 0a 26 e0                                      mla r6, r6, sl, r0
00757738  03 30 8c e0                                      add r3, ip, r3
0075773c  0b 10 a0 e1                                      mov r1, fp
00757740  09 00 a0 e1                                      mov r0, sb
00757744  06 60 82 e0                                      add r6, r2, r6
00757748  00 30 8d e5                                      str r3, [sp]
0075774c  86 dd ee eb                                      bl #0x30ed6c
00757750  5d db ee eb                                      bl #0x30e4cc
00757754  04 10 9d e5                                      ldr r1, [sp, #4]
00757758  00 b1 a0 e1                                      lsl fp, r0, #2
0075775c  09 00 a0 e1                                      mov r0, sb
00757760  81 dd ee eb                                      bl #0x30ed6c
00757764  58 db ee eb                                      bl #0x30e4cc
00757768  00 30 9d e5                                      ldr r3, [sp]
0075776c  98 b0 20 e0                                      mla r0, r8, r0, fp
00757770  81 c0 08 e3                                      movw ip, #0x8081
00757774  00 30 83 e0                                      add r3, r3, r0
00757778  10 00 95 e5                                      ldr r0, [r5, #0x10]
0075777c  80 c0 48 e3                                      movt ip, #0x8080
00757780  03 20 a0 e1                                      mov r2, r3
00757784  06 10 a0 e1                                      mov r1, r6
00757788  00 90 a0 e3                                      mov sb, #0
0075778c  00 00 50 e3                                      cmp r0, #0
00757790  00 70 a0 c3                                      movgt r7, #0
00757794  17 00 00 da                                      ble #0x7577f8
00757798  03 80 d1 e5                                      ldrb r8, [r1, #3]
0075779c  01 70 87 e2                                      add r7, r7, #1
007577a0  04 10 81 e2                                      add r1, r1, #4
007577a4  00 00 58 e3                                      cmp r8, #0
007577a8  0c 00 00 0a                                      beq #0x7577e0
007577ac  04 00 d4 e5                                      ldrb r0, [r4, #4]
007577b0  00 00 c2 e5                                      strb r0, [r2]
007577b4  05 00 d4 e5                                      ldrb r0, [r4, #5]
007577b8  01 00 c2 e5                                      strb r0, [r2, #1]
007577bc  06 00 d4 e5                                      ldrb r0, [r4, #6]
007577c0  02 00 c2 e5                                      strb r0, [r2, #2]
007577c4  07 00 d4 e5                                      ldrb r0, [r4, #7]
007577c8  90 08 08 e0                                      mul r8, r0, r8
007577cc  9c a8 c0 e0                                      smull sl, r0, ip, r8
007577d0  08 80 80 e0                                      add r8, r0, r8
007577d4  c8 83 a0 e1                                      asr r8, r8, #7
007577d8  03 80 c2 e5                                      strb r8, [r2, #3]
007577dc  10 00 95 e5                                      ldr r0, [r5, #0x10]
007577e0  07 00 50 e1                                      cmp r0, r7
007577e4  04 20 82 e2                                      add r2, r2, #4
007577e8  ea ff ff ca                                      bgt #0x757798
007577ec  18 a0 95 e5                                      ldr sl, [r5, #0x18]
007577f0  34 80 95 e5                                      ldr r8, [r5, #0x34]
007577f4  14 70 95 e5                                      ldr r7, [r5, #0x14]
007577f8  01 90 89 e2                                      add sb, sb, #1
007577fc  09 00 57 e1                                      cmp r7, sb
00757800  04 00 00 da                                      ble #0x757818
00757804  0a 60 86 e0                                      add r6, r6, sl
00757808  08 30 83 e0                                      add r3, r3, r8
0075780c  06 10 a0 e1                                      mov r1, r6
00757810  03 20 a0 e1                                      mov r2, r3
00757814  dc ff ff ea                                      b #0x75778c
00757818  18 30 94 e5                                      ldr r3, [r4, #0x18]
0075781c  20 00 13 e3                                      tst r3, #0x20
00757820  01 00 00 1a                                      bne #0x75782c
00757824  0c d0 8d e2                                      add sp, sp, #0xc
00757828  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0075782c  20 10 85 e2                                      add r1, r5, #0x20
00757830  04 00 85 e2                                      add r0, r5, #4
00757834  0c d0 8d e2                                      add sp, sp, #0xc
00757838  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0075783c  51 fd ff ea                                      b #0x756d88

; FUNCTION 0x0075792c, declared_size=940, range_size=940, mode=arm
; class-group: gameswf::filter_engine
; alias: _ZN7gameswf13filter_engine12apply_blur_vERNS0_6paramsE
; demangled: gameswf::filter_engine::apply_blur_v(gameswf::filter_engine::params&)
; decoder-mode: arm
0075792c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00757930  43 de 4d e2                                      sub sp, sp, #0x430
00757934  0c d0 4d e2                                      sub sp, sp, #0xc
00757938  10 00 8d e5                                      str r0, [sp, #0x10]
0075793c  00 30 90 e5                                      ldr r3, [r0]
00757940  38 00 8d e2                                      add r0, sp, #0x38
00757944  20 00 8d e5                                      str r0, [sp, #0x20]
00757948  24 40 93 e5                                      ldr r4, [r3, #0x24]
0075794c  04 00 a0 e1                                      mov r0, r4
00757950  dd da ee eb                                      bl #0x30e4cc
00757954  10 20 9d e5                                      ldr r2, [sp, #0x10]
00757958  18 00 8d e5                                      str r0, [sp, #0x18]
0075795c  00 10 a0 e1                                      mov r1, r0
00757960  1c 20 92 e5                                      ldr r2, [r2, #0x1c]
00757964  20 00 9d e5                                      ldr r0, [sp, #0x20]
00757968  2c 20 8d e5                                      str r2, [sp, #0x2c]
0075796c  b3 ff ff eb                                      bl #0x757840
00757970  04 10 a0 e1                                      mov r1, r4
00757974  04 00 a0 e1                                      mov r0, r4
00757978  89 dc ee eb                                      bl #0x30eba4
0075797c  d2 da ee eb                                      bl #0x30e4cc
00757980  10 30 9d e5                                      ldr r3, [sp, #0x10]
00757984  00 00 50 e3                                      cmp r0, #0
00757988  04 20 93 e5                                      ldr r2, [r3, #4]
0075798c  0c c0 93 e5                                      ldr ip, [r3, #0xc]
00757990  18 a0 93 e5                                      ldr sl, [r3, #0x18]
00757994  08 00 93 e5                                      ldr r0, [r3, #8]
00757998  20 10 93 e5                                      ldr r1, [r3, #0x20]
0075799c  28 60 93 e5                                      ldr r6, [r3, #0x28]
007579a0  34 50 93 e5                                      ldr r5, [r3, #0x34]
007579a4  24 40 93 e5                                      ldr r4, [r3, #0x24]
007579a8  c2 00 00 da                                      ble #0x757cb8
007579ac  10 30 93 e5                                      ldr r3, [r3, #0x10]
007579b0  00 00 53 e3                                      cmp r3, #0
007579b4  bf 00 00 da                                      ble #0x757cb8
007579b8  9c 0a 20 e0                                      mla r0, ip, sl, r0
007579bc  96 45 24 e0                                      mla r4, r6, r5, r4
007579c0  00 00 82 e0                                      add r0, r2, r0
007579c4  34 00 8d e5                                      str r0, [sp, #0x34]
007579c8  1c 00 8d e5                                      str r0, [sp, #0x1c]
007579cc  18 00 9d e5                                      ldr r0, [sp, #0x18]
007579d0  10 c0 9d e5                                      ldr ip, [sp, #0x10]
007579d4  04 40 81 e0                                      add r4, r1, r4
007579d8  00 70 a0 e3                                      mov r7, #0
007579dc  30 40 8d e5                                      str r4, [sp, #0x30]
007579e0  14 40 8d e5                                      str r4, [sp, #0x14]
007579e4  28 70 8d e5                                      str r7, [sp, #0x28]
007579e8  00 00 60 e2                                      rsb r0, r0, #0
007579ec  14 20 9c e5                                      ldr r2, [ip, #0x14]
007579f0  24 00 8d e5                                      str r0, [sp, #0x24]
007579f4  00 00 52 e3                                      cmp r2, #0
007579f8  00 00 a0 c3                                      movgt r0, #0
007579fc  0c 00 8d c5                                      strgt r0, [sp, #0xc]
00757a00  40 00 00 da                                      ble #0x757b08
00757a04  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00757a08  18 70 9d e5                                      ldr r7, [sp, #0x18]
00757a0c  18 00 9d e5                                      ldr r0, [sp, #0x18]
00757a10  01 30 67 e0                                      rsb r3, r7, r1
00757a14  00 00 53 e3                                      cmp r3, #0
00757a18  0c 70 9d e5                                      ldr r7, [sp, #0xc]
00757a1c  0c c0 9d b5                                      ldrlt ip, [sp, #0xc]
00757a20  24 30 9d a5                                      ldrge r3, [sp, #0x24]
00757a24  07 10 80 e0                                      add r1, r0, r7
00757a28  00 30 6c b2                                      rsblt r3, ip, #0
00757a2c  01 00 52 e1                                      cmp r2, r1
00757a30  00 20 a0 c1                                      movgt r2, r0
00757a34  10 00 9d e5                                      ldr r0, [sp, #0x10]
00757a38  0c c0 9d d5                                      ldrle ip, [sp, #0xc]
00757a3c  01 20 42 d2                                      suble r2, r2, #1
00757a40  1c 10 90 e5                                      ldr r1, [r0, #0x1c]
00757a44  02 20 6c d0                                      rsble r2, ip, r2
00757a48  04 00 51 e3                                      cmp r1, #4
00757a4c  39 00 00 0a                                      beq #0x757b38
00757a50  02 00 53 e1                                      cmp r3, r2
00757a54  00 50 a0 c3                                      movgt r5, #0
00757a58  16 00 00 ca                                      bgt #0x757ab8
00757a5c  1c 70 9d e5                                      ldr r7, [sp, #0x1c]
00757a60  18 c0 9d e5                                      ldr ip, [sp, #0x18]
00757a64  03 1f 63 e0                                      rsb r1, r3, r3, lsl #30
00757a68  20 00 9d e5                                      ldr r0, [sp, #0x20]
00757a6c  01 10 81 e2                                      add r1, r1, #1
00757a70  9a 73 26 e0                                      mla r6, sl, r3, r7
00757a74  02 20 81 e0                                      add r2, r1, r2
00757a78  03 30 8c e0                                      add r3, ip, r3
00757a7c  00 50 a0 e3                                      mov r5, #0
00757a80  02 81 a0 e1                                      lsl r8, r2, #2
00757a84  03 71 80 e0                                      add r7, r0, r3, lsl #2
00757a88  00 40 a0 e3                                      mov r4, #0
00757a8c  0a 00 d6 e6                                      ldrb r0, [r6], sl
00757a90  12 da ee eb                                      bl #0x30e2e0
00757a94  04 10 97 e7                                      ldr r1, [r7, r4]
00757a98  b3 dc ee eb                                      bl #0x30ed6c
00757a9c  00 10 a0 e1                                      mov r1, r0
00757aa0  05 00 a0 e1                                      mov r0, r5
00757aa4  3e dc ee eb                                      bl #0x30eba4
00757aa8  04 40 84 e2                                      add r4, r4, #4
00757aac  08 00 54 e1                                      cmp r4, r8
00757ab0  00 50 a0 e1                                      mov r5, r0
00757ab4  f4 ff ff 1a                                      bne #0x757a8c
00757ab8  05 00 a0 e1                                      mov r0, r5
00757abc  f7 99 05 eb                                      bl #0x8be2a0
00757ac0  14 10 9d e5                                      ldr r1, [sp, #0x14]
00757ac4  00 00 c1 e5                                      strb r0, [r1]
00757ac8  10 20 9d e5                                      ldr r2, [sp, #0x10]
00757acc  1c 70 9d e5                                      ldr r7, [sp, #0x1c]
00757ad0  18 a0 92 e5                                      ldr sl, [r2, #0x18]
00757ad4  34 30 92 e5                                      ldr r3, [r2, #0x34]
00757ad8  0a 70 87 e0                                      add r7, r7, sl
00757adc  03 10 81 e0                                      add r1, r1, r3
00757ae0  1c 70 8d e5                                      str r7, [sp, #0x1c]
00757ae4  14 10 8d e5                                      str r1, [sp, #0x14]
00757ae8  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00757aec  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00757af0  14 20 9c e5                                      ldr r2, [ip, #0x14]
00757af4  01 00 80 e2                                      add r0, r0, #1
00757af8  0c 00 8d e5                                      str r0, [sp, #0xc]
00757afc  00 00 52 e1                                      cmp r2, r0
00757b00  bf ff ff ca                                      bgt #0x757a04
00757b04  10 30 9c e5                                      ldr r3, [ip, #0x10]
00757b08  28 10 9d e5                                      ldr r1, [sp, #0x28]
00757b0c  01 10 81 e2                                      add r1, r1, #1
00757b10  01 00 53 e1                                      cmp r3, r1
00757b14  28 10 8d e5                                      str r1, [sp, #0x28]
00757b18  66 00 00 da                                      ble #0x757cb8
00757b1c  34 70 9d e5                                      ldr r7, [sp, #0x34]
00757b20  30 c0 9d e5                                      ldr ip, [sp, #0x30]
00757b24  01 70 87 e0                                      add r7, r7, r1
00757b28  01 c0 8c e0                                      add ip, ip, r1
00757b2c  1c 70 8d e5                                      str r7, [sp, #0x1c]
00757b30  14 c0 8d e5                                      str ip, [sp, #0x14]
00757b34  ae ff ff ea                                      b #0x7579f4
00757b38  02 00 53 e1                                      cmp r3, r2
00757b3c  60 00 00 ca                                      bgt #0x757cc4
00757b40  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00757b44  1c 70 9d e5                                      ldr r7, [sp, #0x1c]
00757b48  18 c0 9d e5                                      ldr ip, [sp, #0x18]
00757b4c  20 00 9d e5                                      ldr r0, [sp, #0x20]
00757b50  91 73 21 e0                                      mla r1, r1, r3, r7
00757b54  02 20 63 e0                                      rsb r2, r3, r2
00757b58  04 10 8d e5                                      str r1, [sp, #4]
00757b5c  04 40 9d e5                                      ldr r4, [sp, #4]
00757b60  04 10 81 e2                                      add r1, r1, #4
00757b64  00 80 a0 e3                                      mov r8, #0
00757b68  03 30 8c e0                                      add r3, ip, r3
00757b6c  02 21 81 e0                                      add r2, r1, r2, lsl #2
00757b70  08 20 8d e5                                      str r2, [sp, #8]
00757b74  03 31 80 e0                                      add r3, r0, r3, lsl #2
00757b78  00 50 a0 e3                                      mov r5, #0
00757b7c  08 a0 a0 e1                                      mov sl, r8
00757b80  08 90 a0 e1                                      mov sb, r8
00757b84  08 b0 a0 e1                                      mov fp, r8
00757b88  03 70 d4 e5                                      ldrb r7, [r4, #3]
00757b8c  00 30 8d e5                                      str r3, [sp]
00757b90  07 00 a0 e1                                      mov r0, r7
00757b94  d1 d9 ee eb                                      bl #0x30e2e0
00757b98  00 30 9d e5                                      ldr r3, [sp]
00757b9c  00 10 a0 e1                                      mov r1, r0
00757ba0  05 00 93 e7                                      ldr r0, [r3, r5]
00757ba4  70 dc ee eb                                      bl #0x30ed6c
00757ba8  43 14 a0 e3                                      mov r1, #0x43000000
00757bac  7f 18 81 e2                                      add r1, r1, #0x7f0000
00757bb0  37 dc ee eb                                      bl #0x30ec94
00757bb4  04 10 9d e5                                      ldr r1, [sp, #4]
00757bb8  00 60 a0 e1                                      mov r6, r0
00757bbc  05 00 d1 e7                                      ldrb r0, [r1, r5]
00757bc0  67 db ee eb                                      bl #0x30e964
00757bc4  06 10 a0 e1                                      mov r1, r6
00757bc8  67 dc ee eb                                      bl #0x30ed6c
00757bcc  00 10 a0 e1                                      mov r1, r0
00757bd0  0b 00 a0 e1                                      mov r0, fp
00757bd4  f2 db ee eb                                      bl #0x30eba4
00757bd8  00 b0 a0 e1                                      mov fp, r0
00757bdc  01 00 d4 e5                                      ldrb r0, [r4, #1]
00757be0  5f db ee eb                                      bl #0x30e964
00757be4  06 10 a0 e1                                      mov r1, r6
00757be8  5f dc ee eb                                      bl #0x30ed6c
00757bec  00 10 a0 e1                                      mov r1, r0
00757bf0  09 00 a0 e1                                      mov r0, sb
00757bf4  ea db ee eb                                      bl #0x30eba4
00757bf8  00 90 a0 e1                                      mov sb, r0
00757bfc  02 00 d4 e5                                      ldrb r0, [r4, #2]
00757c00  57 db ee eb                                      bl #0x30e964
00757c04  06 10 a0 e1                                      mov r1, r6
00757c08  57 dc ee eb                                      bl #0x30ed6c
00757c0c  00 10 a0 e1                                      mov r1, r0
00757c10  0a 00 a0 e1                                      mov r0, sl
00757c14  e2 db ee eb                                      bl #0x30eba4
00757c18  00 a0 a0 e1                                      mov sl, r0
00757c1c  07 00 a0 e1                                      mov r0, r7
00757c20  4f db ee eb                                      bl #0x30e964
00757c24  00 30 9d e5                                      ldr r3, [sp]
00757c28  00 10 a0 e1                                      mov r1, r0
00757c2c  04 40 84 e2                                      add r4, r4, #4
00757c30  05 00 93 e7                                      ldr r0, [r3, r5]
00757c34  4c dc ee eb                                      bl #0x30ed6c
00757c38  00 10 a0 e1                                      mov r1, r0
00757c3c  08 00 a0 e1                                      mov r0, r8
00757c40  d7 db ee eb                                      bl #0x30eba4
00757c44  08 20 9d e5                                      ldr r2, [sp, #8]
00757c48  00 80 a0 e1                                      mov r8, r0
00757c4c  04 50 85 e2                                      add r5, r5, #4
00757c50  02 00 54 e1                                      cmp r4, r2
00757c54  00 30 9d e5                                      ldr r3, [sp]
00757c58  ca ff ff 1a                                      bne #0x757b88
00757c5c  0b 00 a0 e1                                      mov r0, fp
00757c60  8e 99 05 eb                                      bl #0x8be2a0
00757c64  14 30 9d e5                                      ldr r3, [sp, #0x14]
00757c68  00 00 c3 e5                                      strb r0, [r3]
00757c6c  09 00 a0 e1                                      mov r0, sb
00757c70  8a 99 05 eb                                      bl #0x8be2a0
00757c74  14 70 9d e5                                      ldr r7, [sp, #0x14]
00757c78  01 00 c7 e5                                      strb r0, [r7, #1]
00757c7c  0a 00 a0 e1                                      mov r0, sl
00757c80  86 99 05 eb                                      bl #0x8be2a0
00757c84  02 00 c7 e5                                      strb r0, [r7, #2]
00757c88  08 00 a0 e1                                      mov r0, r8
00757c8c  83 99 05 eb                                      bl #0x8be2a0
00757c90  03 00 c7 e5                                      strb r0, [r7, #3]
00757c94  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00757c98  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00757c9c  18 a0 9c e5                                      ldr sl, [ip, #0x18]
00757ca0  34 30 9c e5                                      ldr r3, [ip, #0x34]
00757ca4  0a 00 80 e0                                      add r0, r0, sl
00757ca8  03 70 87 e0                                      add r7, r7, r3
00757cac  1c 00 8d e5                                      str r0, [sp, #0x1c]
00757cb0  14 70 8d e5                                      str r7, [sp, #0x14]
00757cb4  8b ff ff ea                                      b #0x757ae8
00757cb8  3c d0 8d e2                                      add sp, sp, #0x3c
00757cbc  01 db 8d e2                                      add sp, sp, #0x400
00757cc0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00757cc4  00 80 a0 e3                                      mov r8, #0
00757cc8  08 a0 a0 e1                                      mov sl, r8
00757ccc  08 90 a0 e1                                      mov sb, r8
00757cd0  08 b0 a0 e1                                      mov fp, r8
00757cd4  e0 ff ff ea                                      b #0x757c5c

; FUNCTION 0x00757cd8, declared_size=932, range_size=932, mode=arm
; class-group: gameswf::filter_engine
; alias: _ZN7gameswf13filter_engine12apply_blur_hERNS0_6paramsE
; demangled: gameswf::filter_engine::apply_blur_h(gameswf::filter_engine::params&)
; decoder-mode: arm
00757cd8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00757cdc  43 de 4d e2                                      sub sp, sp, #0x430
00757ce0  0c d0 4d e2                                      sub sp, sp, #0xc
00757ce4  14 00 8d e5                                      str r0, [sp, #0x14]
00757ce8  00 30 90 e5                                      ldr r3, [r0]
00757cec  38 00 8d e2                                      add r0, sp, #0x38
00757cf0  20 00 8d e5                                      str r0, [sp, #0x20]
00757cf4  20 40 93 e5                                      ldr r4, [r3, #0x20]
00757cf8  04 00 a0 e1                                      mov r0, r4
00757cfc  f2 d9 ee eb                                      bl #0x30e4cc
00757d00  14 20 9d e5                                      ldr r2, [sp, #0x14]
00757d04  10 00 8d e5                                      str r0, [sp, #0x10]
00757d08  00 10 a0 e1                                      mov r1, r0
00757d0c  1c 20 92 e5                                      ldr r2, [r2, #0x1c]
00757d10  20 00 9d e5                                      ldr r0, [sp, #0x20]
00757d14  34 20 8d e5                                      str r2, [sp, #0x34]
00757d18  c8 fe ff eb                                      bl #0x757840
00757d1c  04 10 a0 e1                                      mov r1, r4
00757d20  04 00 a0 e1                                      mov r0, r4
00757d24  9e db ee eb                                      bl #0x30eba4
00757d28  e7 d9 ee eb                                      bl #0x30e4cc
00757d2c  14 30 9d e5                                      ldr r3, [sp, #0x14]
00757d30  14 80 9d e5                                      ldr r8, [sp, #0x14]
00757d34  00 00 50 e3                                      cmp r0, #0
00757d38  04 c0 93 e5                                      ldr ip, [r3, #4]
00757d3c  0c 70 93 e5                                      ldr r7, [r3, #0xc]
00757d40  18 10 93 e5                                      ldr r1, [r3, #0x18]
00757d44  08 60 93 e5                                      ldr r6, [r3, #8]
00757d48  28 50 98 e5                                      ldr r5, [r8, #0x28]
00757d4c  20 30 93 e5                                      ldr r3, [r3, #0x20]
00757d50  34 20 98 e5                                      ldr r2, [r8, #0x34]
00757d54  24 40 98 e5                                      ldr r4, [r8, #0x24]
00757d58  bf 00 00 da                                      ble #0x75805c
00757d5c  14 00 98 e5                                      ldr r0, [r8, #0x14]
00757d60  00 00 50 e3                                      cmp r0, #0
00757d64  bc 00 00 da                                      ble #0x75805c
00757d68  97 61 26 e0                                      mla r6, r7, r1, r6
00757d6c  95 42 24 e0                                      mla r4, r5, r2, r4
00757d70  06 60 8c e0                                      add r6, ip, r6
00757d74  04 40 83 e0                                      add r4, r3, r4
00757d78  00 c0 a0 e3                                      mov ip, #0
00757d7c  2c 60 8d e5                                      str r6, [sp, #0x2c]
00757d80  28 40 8d e5                                      str r4, [sp, #0x28]
00757d84  1c 40 8d e5                                      str r4, [sp, #0x1c]
00757d88  18 60 8d e5                                      str r6, [sp, #0x18]
00757d8c  30 c0 8d e5                                      str ip, [sp, #0x30]
00757d90  10 30 98 e5                                      ldr r3, [r8, #0x10]
00757d94  10 80 9d e5                                      ldr r8, [sp, #0x10]
00757d98  00 80 68 e2                                      rsb r8, r8, #0
00757d9c  24 80 8d e5                                      str r8, [sp, #0x24]
00757da0  00 00 53 e3                                      cmp r3, #0
00757da4  00 c0 a0 c3                                      movgt ip, #0
00757da8  0c c0 8d c5                                      strgt ip, [sp, #0xc]
00757dac  3c 00 00 da                                      ble #0x757ea4
00757db0  10 00 9d e5                                      ldr r0, [sp, #0x10]
00757db4  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00757db8  10 80 9d e5                                      ldr r8, [sp, #0x10]
00757dbc  0c 20 60 e0                                      rsb r2, r0, ip
00757dc0  00 00 52 e3                                      cmp r2, #0
00757dc4  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00757dc8  0c 10 9d b5                                      ldrlt r1, [sp, #0xc]
00757dcc  24 60 9d a5                                      ldrge r6, [sp, #0x24]
00757dd0  0c 20 88 e0                                      add r2, r8, ip
00757dd4  00 60 61 b2                                      rsblt r6, r1, #0
00757dd8  02 00 53 e1                                      cmp r3, r2
00757ddc  0c 00 9d d5                                      ldrle r0, [sp, #0xc]
00757de0  14 10 9d e5                                      ldr r1, [sp, #0x14]
00757de4  01 30 43 d2                                      suble r3, r3, #1
00757de8  03 20 60 d0                                      rsble r2, r0, r3
00757dec  1c 30 91 e5                                      ldr r3, [r1, #0x1c]
00757df0  08 20 a0 c1                                      movgt r2, r8
00757df4  04 00 53 e3                                      cmp r3, #4
00757df8  37 00 00 0a                                      beq #0x757edc
00757dfc  02 00 56 e1                                      cmp r6, r2
00757e00  00 50 a0 c3                                      movgt r5, #0
00757e04  14 00 00 ca                                      bgt #0x757e5c
00757e08  10 80 9d e5                                      ldr r8, [sp, #0x10]
00757e0c  20 c0 9d e5                                      ldr ip, [sp, #0x20]
00757e10  18 00 9d e5                                      ldr r0, [sp, #0x18]
00757e14  06 30 88 e0                                      add r3, r8, r6
00757e18  01 80 66 e2                                      rsb r8, r6, #1
00757e1c  00 50 a0 e3                                      mov r5, #0
00757e20  02 80 88 e0                                      add r8, r8, r2
00757e24  03 71 8c e0                                      add r7, ip, r3, lsl #2
00757e28  06 60 80 e0                                      add r6, r0, r6
00757e2c  00 40 a0 e3                                      mov r4, #0
00757e30  04 00 d6 e7                                      ldrb r0, [r6, r4]
00757e34  29 d9 ee eb                                      bl #0x30e2e0
00757e38  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
00757e3c  ca db ee eb                                      bl #0x30ed6c
00757e40  00 10 a0 e1                                      mov r1, r0
00757e44  05 00 a0 e1                                      mov r0, r5
00757e48  55 db ee eb                                      bl #0x30eba4
00757e4c  01 40 84 e2                                      add r4, r4, #1
00757e50  08 00 54 e1                                      cmp r4, r8
00757e54  00 50 a0 e1                                      mov r5, r0
00757e58  f4 ff ff 1a                                      bne #0x757e30
00757e5c  05 00 a0 e1                                      mov r0, r5
00757e60  0e 99 05 eb                                      bl #0x8be2a0
00757e64  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00757e68  01 00 c1 e4                                      strb r0, [r1], #1
00757e6c  18 20 9d e5                                      ldr r2, [sp, #0x18]
00757e70  1c 10 8d e5                                      str r1, [sp, #0x1c]
00757e74  01 20 82 e2                                      add r2, r2, #1
00757e78  18 20 8d e5                                      str r2, [sp, #0x18]
00757e7c  14 80 9d e5                                      ldr r8, [sp, #0x14]
00757e80  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00757e84  10 30 98 e5                                      ldr r3, [r8, #0x10]
00757e88  01 c0 8c e2                                      add ip, ip, #1
00757e8c  0c c0 8d e5                                      str ip, [sp, #0xc]
00757e90  0c 00 53 e1                                      cmp r3, ip
00757e94  c5 ff ff ca                                      bgt #0x757db0
00757e98  18 10 98 e5                                      ldr r1, [r8, #0x18]
00757e9c  34 20 98 e5                                      ldr r2, [r8, #0x34]
00757ea0  14 00 98 e5                                      ldr r0, [r8, #0x14]
00757ea4  30 80 9d e5                                      ldr r8, [sp, #0x30]
00757ea8  01 80 88 e2                                      add r8, r8, #1
00757eac  08 00 50 e1                                      cmp r0, r8
00757eb0  30 80 8d e5                                      str r8, [sp, #0x30]
00757eb4  68 00 00 da                                      ble #0x75805c
00757eb8  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
00757ebc  28 80 9d e5                                      ldr r8, [sp, #0x28]
00757ec0  01 c0 8c e0                                      add ip, ip, r1
00757ec4  02 80 88 e0                                      add r8, r8, r2
00757ec8  2c c0 8d e5                                      str ip, [sp, #0x2c]
00757ecc  28 80 8d e5                                      str r8, [sp, #0x28]
00757ed0  18 c0 8d e5                                      str ip, [sp, #0x18]
00757ed4  1c 80 8d e5                                      str r8, [sp, #0x1c]
00757ed8  b0 ff ff ea                                      b #0x757da0
00757edc  02 00 56 e1                                      cmp r6, r2
00757ee0  60 00 00 ca                                      bgt #0x758068
00757ee4  18 80 9d e5                                      ldr r8, [sp, #0x18]
00757ee8  34 30 9d e5                                      ldr r3, [sp, #0x34]
00757eec  02 20 66 e0                                      rsb r2, r6, r2
00757ef0  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00757ef4  93 86 23 e0                                      mla r3, r3, r6, r8
00757ef8  00 80 a0 e3                                      mov r8, #0
00757efc  04 30 8d e5                                      str r3, [sp, #4]
00757f00  04 00 9d e5                                      ldr r0, [sp, #4]
00757f04  06 30 8c e0                                      add r3, ip, r6
00757f08  00 50 a0 e3                                      mov r5, #0
00757f0c  04 10 80 e2                                      add r1, r0, #4
00757f10  02 21 81 e0                                      add r2, r1, r2, lsl #2
00757f14  20 10 9d e5                                      ldr r1, [sp, #0x20]
00757f18  08 20 8d e5                                      str r2, [sp, #8]
00757f1c  00 40 a0 e1                                      mov r4, r0
00757f20  03 31 81 e0                                      add r3, r1, r3, lsl #2
00757f24  08 a0 a0 e1                                      mov sl, r8
00757f28  08 90 a0 e1                                      mov sb, r8
00757f2c  08 b0 a0 e1                                      mov fp, r8
00757f30  03 70 d4 e5                                      ldrb r7, [r4, #3]
00757f34  00 30 8d e5                                      str r3, [sp]
00757f38  07 00 a0 e1                                      mov r0, r7
00757f3c  e7 d8 ee eb                                      bl #0x30e2e0
00757f40  00 30 9d e5                                      ldr r3, [sp]
00757f44  00 10 a0 e1                                      mov r1, r0
00757f48  05 00 93 e7                                      ldr r0, [r3, r5]
00757f4c  86 db ee eb                                      bl #0x30ed6c
00757f50  43 14 a0 e3                                      mov r1, #0x43000000
00757f54  7f 18 81 e2                                      add r1, r1, #0x7f0000
00757f58  4d db ee eb                                      bl #0x30ec94
00757f5c  04 20 9d e5                                      ldr r2, [sp, #4]
00757f60  00 60 a0 e1                                      mov r6, r0
00757f64  05 00 d2 e7                                      ldrb r0, [r2, r5]
00757f68  7d da ee eb                                      bl #0x30e964
00757f6c  06 10 a0 e1                                      mov r1, r6
00757f70  7d db ee eb                                      bl #0x30ed6c
00757f74  00 10 a0 e1                                      mov r1, r0
00757f78  0b 00 a0 e1                                      mov r0, fp
00757f7c  08 db ee eb                                      bl #0x30eba4
00757f80  00 b0 a0 e1                                      mov fp, r0
00757f84  01 00 d4 e5                                      ldrb r0, [r4, #1]
00757f88  75 da ee eb                                      bl #0x30e964
00757f8c  06 10 a0 e1                                      mov r1, r6
00757f90  75 db ee eb                                      bl #0x30ed6c
00757f94  00 10 a0 e1                                      mov r1, r0
00757f98  09 00 a0 e1                                      mov r0, sb
00757f9c  00 db ee eb                                      bl #0x30eba4
00757fa0  00 90 a0 e1                                      mov sb, r0
00757fa4  02 00 d4 e5                                      ldrb r0, [r4, #2]
00757fa8  6d da ee eb                                      bl #0x30e964
00757fac  06 10 a0 e1                                      mov r1, r6
00757fb0  6d db ee eb                                      bl #0x30ed6c
00757fb4  00 10 a0 e1                                      mov r1, r0
00757fb8  0a 00 a0 e1                                      mov r0, sl
00757fbc  f8 da ee eb                                      bl #0x30eba4
00757fc0  00 a0 a0 e1                                      mov sl, r0
00757fc4  07 00 a0 e1                                      mov r0, r7
00757fc8  65 da ee eb                                      bl #0x30e964
00757fcc  00 30 9d e5                                      ldr r3, [sp]
00757fd0  00 10 a0 e1                                      mov r1, r0
00757fd4  04 40 84 e2                                      add r4, r4, #4
00757fd8  05 00 93 e7                                      ldr r0, [r3, r5]
00757fdc  62 db ee eb                                      bl #0x30ed6c
00757fe0  00 10 a0 e1                                      mov r1, r0
00757fe4  08 00 a0 e1                                      mov r0, r8
00757fe8  ed da ee eb                                      bl #0x30eba4
00757fec  08 c0 9d e5                                      ldr ip, [sp, #8]
00757ff0  00 80 a0 e1                                      mov r8, r0
00757ff4  04 50 85 e2                                      add r5, r5, #4
00757ff8  0c 00 54 e1                                      cmp r4, ip
00757ffc  00 30 9d e5                                      ldr r3, [sp]
00758000  ca ff ff 1a                                      bne #0x757f30
00758004  0b 00 a0 e1                                      mov r0, fp
00758008  a4 98 05 eb                                      bl #0x8be2a0
0075800c  1c 40 9d e5                                      ldr r4, [sp, #0x1c]
00758010  01 00 c4 e4                                      strb r0, [r4], #1
00758014  09 00 a0 e1                                      mov r0, sb
00758018  a0 98 05 eb                                      bl #0x8be2a0
0075801c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00758020  01 00 c1 e5                                      strb r0, [r1, #1]
00758024  0a 00 a0 e1                                      mov r0, sl
00758028  9c 98 05 eb                                      bl #0x8be2a0
0075802c  01 00 c4 e5                                      strb r0, [r4, #1]
00758030  08 00 a0 e1                                      mov r0, r8
00758034  99 98 05 eb                                      bl #0x8be2a0
00758038  01 40 84 e2                                      add r4, r4, #1
0075803c  01 00 c4 e5                                      strb r0, [r4, #1]
00758040  18 20 9d e5                                      ldr r2, [sp, #0x18]
00758044  01 30 84 e2                                      add r3, r4, #1
00758048  01 30 83 e2                                      add r3, r3, #1
0075804c  04 20 82 e2                                      add r2, r2, #4
00758050  1c 30 8d e5                                      str r3, [sp, #0x1c]
00758054  18 20 8d e5                                      str r2, [sp, #0x18]
00758058  87 ff ff ea                                      b #0x757e7c
0075805c  3c d0 8d e2                                      add sp, sp, #0x3c
00758060  01 db 8d e2                                      add sp, sp, #0x400
00758064  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00758068  00 80 a0 e3                                      mov r8, #0
0075806c  08 a0 a0 e1                                      mov sl, r8
00758070  08 90 a0 e1                                      mov sb, r8
00758074  08 b0 a0 e1                                      mov fp, r8
00758078  e1 ff ff ea                                      b #0x758004

; FUNCTION 0x0075807c, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::filter_engine
; alias: _ZN7gameswf13filter_engine4copyERNS0_6rasterES2_
; demangled: gameswf::filter_engine::copy(gameswf::filter_engine::raster&, gameswf::filter_engine::raster&)
; decoder-mode: arm
0075807c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00758080  10 30 90 e5                                      ldr r3, [r0, #0x10]
00758084  00 40 a0 e1                                      mov r4, r0
00758088  14 a0 94 e5                                      ldr sl, [r4, #0x14]
0075808c  00 00 53 e3                                      cmp r3, #0
00758090  04 00 91 e5                                      ldr r0, [r1, #4]
00758094  00 20 94 e5                                      ldr r2, [r4]
00758098  08 70 94 e5                                      ldr r7, [r4, #8]
0075809c  04 c0 94 e5                                      ldr ip, [r4, #4]
007580a0  14 80 91 e5                                      ldr r8, [r1, #0x14]
007580a4  00 30 91 e5                                      ldr r3, [r1]
007580a8  08 60 91 e5                                      ldr r6, [r1, #8]
007580ac  10 00 00 da                                      ble #0x7580f4
007580b0  9a c7 27 e0                                      mla r7, sl, r7, ip
007580b4  98 06 26 e0                                      mla r6, r8, r6, r0
007580b8  07 70 82 e0                                      add r7, r2, r7
007580bc  06 60 83 e0                                      add r6, r3, r6
007580c0  00 50 a0 e3                                      mov r5, #0
007580c4  18 30 94 e5                                      ldr r3, [r4, #0x18]
007580c8  0c 20 94 e5                                      ldr r2, [r4, #0xc]
007580cc  06 00 a0 e1                                      mov r0, r6
007580d0  07 10 a0 e1                                      mov r1, r7
007580d4  92 03 02 e0                                      mul r2, r2, r3
007580d8  e2 d9 ee eb                                      bl #0x30e868
007580dc  10 30 94 e5                                      ldr r3, [r4, #0x10]
007580e0  01 50 85 e2                                      add r5, r5, #1
007580e4  0a 70 87 e0                                      add r7, r7, sl
007580e8  05 00 53 e1                                      cmp r3, r5
007580ec  08 60 86 e0                                      add r6, r6, r8
007580f0  f3 ff ff ca                                      bgt #0x7580c4
007580f4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x007580f8, declared_size=72, range_size=72, mode=arm
; class-group: gameswf::filter_engine
; alias: _ZN7gameswf13filter_engine5clearERNS0_6rasterE
; demangled: gameswf::filter_engine::clear(gameswf::filter_engine::raster&)
; decoder-mode: arm
007580f8  70 40 2d e9                                      push {r4, r5, r6, lr}
007580fc  10 30 90 e5                                      ldr r3, [r0, #0x10]
00758100  00 60 a0 e1                                      mov r6, r0
00758104  00 40 90 e5                                      ldr r4, [r0]
00758108  00 00 53 e3                                      cmp r3, #0
0075810c  0a 00 00 da                                      ble #0x75813c
00758110  14 20 90 e5                                      ldr r2, [r0, #0x14]
00758114  00 50 a0 e3                                      mov r5, #0
00758118  04 00 a0 e1                                      mov r0, r4
0075811c  00 10 a0 e3                                      mov r1, #0
00758120  ce d8 ee eb                                      bl #0x30e460
00758124  10 30 96 e5                                      ldr r3, [r6, #0x10]
00758128  14 20 96 e5                                      ldr r2, [r6, #0x14]
0075812c  01 50 85 e2                                      add r5, r5, #1
00758130  05 00 53 e1                                      cmp r3, r5
00758134  02 40 84 e0                                      add r4, r4, r2
00758138  f6 ff ff ca                                      bgt #0x758118
0075813c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00758140, declared_size=460, range_size=460, mode=arm
; class-group: gameswf::filter_engine
; alias: _ZN7gameswf13filter_engine5applyERNS0_6paramsE
; demangled: gameswf::filter_engine::apply(gameswf::filter_engine::params&)
; decoder-mode: arm
00758140  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00758144  00 80 90 e5                                      ldr r8, [r0]
00758148  20 d0 4d e2                                      sub sp, sp, #0x20
0075814c  00 40 a0 e1                                      mov r4, r0
00758150  00 30 98 e5                                      ldr r3, [r8]
00758154  01 00 53 e3                                      cmp r3, #1
00758158  08 00 00 0a                                      beq #0x758180
0075815c  02 00 53 e3                                      cmp r3, #2
00758160  24 00 00 0a                                      beq #0x7581f8
00758164  00 00 53 e3                                      cmp r3, #0
00758168  20 00 00 1a                                      bne #0x7581f0
0075816c  20 10 80 e2                                      add r1, r0, #0x20
00758170  04 00 80 e2                                      add r0, r0, #4
00758174  20 d0 8d e2                                      add sp, sp, #0x20
00758178  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0075817c  be ff ff ea                                      b #0x75807c
00758180  20 00 98 e5                                      ldr r0, [r8, #0x20]
00758184  00 10 a0 e3                                      mov r1, #0
00758188  5a d8 ee eb                                      bl #0x30e2f8
0075818c  00 00 50 e3                                      cmp r0, #0
00758190  2f 00 00 1a                                      bne #0x758254
00758194  04 70 84 e2                                      add r7, r4, #4
00758198  20 50 84 e2                                      add r5, r4, #0x20
0075819c  04 60 8d e2                                      add r6, sp, #4
007581a0  24 00 98 e5                                      ldr r0, [r8, #0x24]
007581a4  00 10 a0 e3                                      mov r1, #0
007581a8  52 d8 ee eb                                      bl #0x30e2f8
007581ac  00 00 50 e3                                      cmp r0, #0
007581b0  40 00 00 1a                                      bne #0x7582b8
007581b4  0f 00 b7 e8                                      ldm r7!, {r0, r1, r2, r3}
007581b8  0f 00 a6 e8                                      stm r6!, {r0, r1, r2, r3}
007581bc  07 00 97 e8                                      ldm r7, {r0, r1, r2}
007581c0  07 00 86 e8                                      stm r6, {r0, r1, r2}
007581c4  04 c0 84 e2                                      add ip, r4, #4
007581c8  0f 00 b5 e8                                      ldm r5!, {r0, r1, r2, r3}
007581cc  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
007581d0  07 00 95 e8                                      ldm r5, {r0, r1, r2}
007581d4  07 00 8c e8                                      stm ip, {r0, r1, r2}
007581d8  20 40 84 e2                                      add r4, r4, #0x20
007581dc  04 c0 8d e2                                      add ip, sp, #4
007581e0  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
007581e4  0f 00 a4 e8                                      stm r4!, {r0, r1, r2, r3}
007581e8  07 00 9c e8                                      ldm ip, {r0, r1, r2}
007581ec  07 00 84 e8                                      stm r4, {r0, r1, r2}
007581f0  20 d0 8d e2                                      add sp, sp, #0x20
007581f4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007581f8  46 fb ff eb                                      bl #0x756f18
007581fc  04 50 8d e2                                      add r5, sp, #4
00758200  04 60 84 e2                                      add r6, r4, #4
00758204  0f 00 b6 e8                                      ldm r6!, {r0, r1, r2, r3}
00758208  0f 00 a5 e8                                      stm r5!, {r0, r1, r2, r3}
0075820c  07 00 96 e8                                      ldm r6, {r0, r1, r2}
00758210  07 00 85 e8                                      stm r5, {r0, r1, r2}
00758214  04 70 84 e2                                      add r7, r4, #4
00758218  20 c0 84 e2                                      add ip, r4, #0x20
0075821c  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
00758220  0f 00 a7 e8                                      stm r7!, {r0, r1, r2, r3}
00758224  07 00 9c e8                                      ldm ip, {r0, r1, r2}
00758228  07 00 86 e8                                      stm r6, {r0, r1, r2}
0075822c  20 70 84 e2                                      add r7, r4, #0x20
00758230  04 60 8d e2                                      add r6, sp, #4
00758234  0f 00 b6 e8                                      ldm r6!, {r0, r1, r2, r3}
00758238  0f 00 a7 e8                                      stm r7!, {r0, r1, r2, r3}
0075823c  07 00 95 e8                                      ldm r5, {r0, r1, r2}
00758240  07 00 8c e8                                      stm ip, {r0, r1, r2}
00758244  20 00 84 e2                                      add r0, r4, #0x20
00758248  20 d0 8d e2                                      add sp, sp, #0x20
0075824c  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00758250  a8 ff ff ea                                      b #0x7580f8
00758254  04 00 a0 e1                                      mov r0, r4
00758258  9e fe ff eb                                      bl #0x757cd8
0075825c  04 c0 8d e2                                      add ip, sp, #4
00758260  04 e0 84 e2                                      add lr, r4, #4
00758264  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00758268  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0075826c  07 00 9e e8                                      ldm lr, {r0, r1, r2}
00758270  07 00 8c e8                                      stm ip, {r0, r1, r2}
00758274  04 70 84 e2                                      add r7, r4, #4
00758278  20 80 84 e2                                      add r8, r4, #0x20
0075827c  07 50 a0 e1                                      mov r5, r7
00758280  0f 00 b8 e8                                      ldm r8!, {r0, r1, r2, r3}
00758284  0f 00 a5 e8                                      stm r5!, {r0, r1, r2, r3}
00758288  07 00 98 e8                                      ldm r8, {r0, r1, r2}
0075828c  07 00 8e e8                                      stm lr, {r0, r1, r2}
00758290  04 60 8d e2                                      add r6, sp, #4
00758294  20 50 84 e2                                      add r5, r4, #0x20
00758298  06 e0 a0 e1                                      mov lr, r6
0075829c  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
007582a0  05 e0 a0 e1                                      mov lr, r5
007582a4  0f 00 ae e8                                      stm lr!, {r0, r1, r2, r3}
007582a8  07 00 9c e8                                      ldm ip, {r0, r1, r2}
007582ac  07 00 88 e8                                      stm r8, {r0, r1, r2}
007582b0  00 80 94 e5                                      ldr r8, [r4]
007582b4  b9 ff ff ea                                      b #0x7581a0
007582b8  04 00 a0 e1                                      mov r0, r4
007582bc  9a fd ff eb                                      bl #0x75792c
007582c0  0f 00 b7 e8                                      ldm r7!, {r0, r1, r2, r3}
007582c4  0f 00 a6 e8                                      stm r6!, {r0, r1, r2, r3}
007582c8  07 00 97 e8                                      ldm r7, {r0, r1, r2}
007582cc  07 00 86 e8                                      stm r6, {r0, r1, r2}
007582d0  04 70 84 e2                                      add r7, r4, #4
007582d4  07 80 a0 e1                                      mov r8, r7
007582d8  0f 00 b5 e8                                      ldm r5!, {r0, r1, r2, r3}
007582dc  0f 00 a8 e8                                      stm r8!, {r0, r1, r2, r3}
007582e0  07 00 95 e8                                      ldm r5, {r0, r1, r2}
007582e4  07 00 88 e8                                      stm r8, {r0, r1, r2}
007582e8  20 50 84 e2                                      add r5, r4, #0x20
007582ec  04 60 8d e2                                      add r6, sp, #4
007582f0  06 c0 a0 e1                                      mov ip, r6
007582f4  05 80 a0 e1                                      mov r8, r5
007582f8  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
007582fc  0f 00 a8 e8                                      stm r8!, {r0, r1, r2, r3}
00758300  07 00 9c e8                                      ldm ip, {r0, r1, r2}
00758304  07 00 88 e8                                      stm r8, {r0, r1, r2}
00758308  a9 ff ff ea                                      b #0x7581b4

; FUNCTION 0x0075830c, declared_size=204, range_size=204, mode=arm
; class-group: gameswf::filter_engine
; alias: _ZN7gameswf13filter_engine27collect_filtered_charactersEPNS_9characterE
; demangled: gameswf::filter_engine::collect_filtered_characters(gameswf::character*)
; decoder-mode: arm
0075830c  70 40 2d e9                                      push {r4, r5, r6, lr}
00758310  9b 30 d1 e5                                      ldrb r3, [r1, #0x9b]
00758314  01 50 a0 e1                                      mov r5, r1
00758318  00 60 a0 e1                                      mov r6, r0
0075831c  00 00 53 e3                                      cmp r3, #0
00758320  00 00 00 1a                                      bne #0x758328
00758324  70 80 bd e8                                      pop {r4, r5, r6, pc}
00758328  01 00 a0 e1                                      mov r0, r1
0075832c  e3 ee ff eb                                      bl #0x753ec0
00758330  00 10 a0 e3                                      mov r1, #0
00758334  18 00 90 e5                                      ldr r0, [r0, #0x18]
00758338  13 d7 ee eb                                      bl #0x30df8c
0075833c  00 00 50 e3                                      cmp r0, #0
00758340  f7 ff ff 1a                                      bne #0x758324
00758344  50 30 95 e5                                      ldr r3, [r5, #0x50]
00758348  08 30 93 e5                                      ldr r3, [r3, #8]
0075834c  00 00 53 e3                                      cmp r3, #0
00758350  07 00 00 0a                                      beq #0x758374
00758354  44 30 96 e5                                      ldr r3, [r6, #0x44]
00758358  48 20 96 e5                                      ldr r2, [r6, #0x48]
0075835c  01 40 83 e2                                      add r4, r3, #1
00758360  02 00 54 e1                                      cmp r4, r2
00758364  16 00 00 ca                                      bgt #0x7583c4
00758368  40 20 96 e5                                      ldr r2, [r6, #0x40]
0075836c  03 51 82 e7                                      str r5, [r2, r3, lsl #2]
00758370  44 40 86 e5                                      str r4, [r6, #0x44]
00758374  00 30 95 e5                                      ldr r3, [r5]
00758378  05 00 a0 e1                                      mov r0, r5
0075837c  02 10 a0 e3                                      mov r1, #2
00758380  0f e0 a0 e1                                      mov lr, pc
00758384  08 f0 93 e5                                      ldr pc, [r3, #8]
00758388  00 00 50 e3                                      cmp r0, #0
0075838c  e4 ff ff 0a                                      beq #0x758324
00758390  ac 30 95 e5                                      ldr r3, [r5, #0xac]
00758394  00 00 53 e3                                      cmp r3, #0
00758398  e1 ff ff da                                      ble #0x758324
0075839c  00 40 a0 e3                                      mov r4, #0
007583a0  a8 30 95 e5                                      ldr r3, [r5, #0xa8]
007583a4  06 00 a0 e1                                      mov r0, r6
007583a8  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
007583ac  d6 ff ff eb                                      bl #0x75830c
007583b0  ac 30 95 e5                                      ldr r3, [r5, #0xac]
007583b4  01 40 84 e2                                      add r4, r4, #1
007583b8  03 00 54 e1                                      cmp r4, r3
007583bc  f7 ff ff ba                                      blt #0x7583a0
007583c0  70 80 bd e8                                      pop {r4, r5, r6, pc}
007583c4  40 00 86 e2                                      add r0, r6, #0x40
007583c8  c4 10 84 e0                                      add r1, r4, r4, asr #1
007583cc  90 ee f2 eb                                      bl #0x413e14
007583d0  44 30 96 e5                                      ldr r3, [r6, #0x44]
007583d4  e3 ff ff ea                                      b #0x758368

; FUNCTION 0x00758434, declared_size=644, range_size=644, mode=arm
; class-group: gameswf::filter_engine
; alias: _ZN7gameswf13filter_engine14display_cachedEPNS_9characterE
; demangled: gameswf::filter_engine::display_cached(gameswf::character*)
; decoder-mode: arm
00758434  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00758438  64 20 90 e5                                      ldr r2, [r0, #0x64]
0075843c  6c 52 9f e5                                      ldr r5, [pc, #0x26c]
00758440  9c d0 4d e2                                      sub sp, sp, #0x9c
00758444  00 30 a0 e3                                      mov r3, #0
00758448  01 60 a0 e3                                      mov r6, #1
0075844c  01 00 52 e1                                      cmp r2, r1
00758450  05 50 8f e0                                      add r5, pc, r5
00758454  00 40 a0 e1                                      mov r4, r0
00758458  4c 30 8d e5                                      str r3, [sp, #0x4c]
0075845c  14 10 8d e5                                      str r1, [sp, #0x14]
00758460  38 30 8d e5                                      str r3, [sp, #0x38]
00758464  50 60 cd e5                                      strb r6, [sp, #0x50]
00758468  8d 00 00 0a                                      beq #0x7586a4
0075846c  60 00 80 e2                                      add r0, r0, #0x60
00758470  14 10 8d e2                                      add r1, sp, #0x14
00758474  38 20 8d e2                                      add r2, sp, #0x38
00758478  d6 ff ff eb                                      bl #0x7583d8
0075847c  00 00 50 e3                                      cmp r0, #0
00758480  87 00 00 0a                                      beq #0x7586a4
00758484  4c 70 9d e5                                      ldr r7, [sp, #0x4c]
00758488  00 00 57 e3                                      cmp r7, #0
0075848c  84 00 00 0a                                      beq #0x7586a4
00758490  00 80 a0 e3                                      mov r8, #0
00758494  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
00758498  40 00 9d e5                                      ldr r0, [sp, #0x40]
0075849c  7c 80 8d e5                                      str r8, [sp, #0x7c]
007584a0  c1 d7 ee eb                                      bl #0x30e3ac
007584a4  44 10 9d e5                                      ldr r1, [sp, #0x44]
007584a8  80 00 8d e5                                      str r0, [sp, #0x80]
007584ac  48 00 9d e5                                      ldr r0, [sp, #0x48]
007584b0  84 80 8d e5                                      str r8, [sp, #0x84]
007584b4  bc d7 ee eb                                      bl #0x30e3ac
007584b8  6c 80 8d e2                                      add r8, sp, #0x6c
007584bc  08 20 a0 e1                                      mov r2, r8
007584c0  07 10 a0 e1                                      mov r1, r7
007584c4  88 00 8d e5                                      str r0, [sp, #0x88]
007584c8  04 00 a0 e1                                      mov r0, r4
007584cc  d7 f9 ff eb                                      bl #0x756c30
007584d0  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
007584d4  40 00 9d e5                                      ldr r0, [sp, #0x40]
007584d8  b3 d7 ee eb                                      bl #0x30e3ac
007584dc  41 14 a0 e3                                      mov r1, #0x41000000
007584e0  0a 16 81 e2                                      add r1, r1, #0xa00000
007584e4  ea d9 ee eb                                      bl #0x30ec94
007584e8  00 10 a0 e1                                      mov r1, r0
007584ec  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
007584f0  ab d9 ee eb                                      bl #0x30eba4
007584f4  44 10 9d e5                                      ldr r1, [sp, #0x44]
007584f8  70 00 8d e5                                      str r0, [sp, #0x70]
007584fc  48 00 9d e5                                      ldr r0, [sp, #0x48]
00758500  a9 d7 ee eb                                      bl #0x30e3ac
00758504  41 14 a0 e3                                      mov r1, #0x41000000
00758508  0a 16 81 e2                                      add r1, r1, #0xa00000
0075850c  e0 d9 ee eb                                      bl #0x30ec94
00758510  00 10 a0 e1                                      mov r1, r0
00758514  74 00 9d e5                                      ldr r0, [sp, #0x74]
00758518  a1 d9 ee eb                                      bl #0x30eba4
0075851c  34 30 94 e5                                      ldr r3, [r4, #0x34]
00758520  78 00 8d e5                                      str r0, [sp, #0x78]
00758524  6c 70 9d e5                                      ldr r7, [sp, #0x6c]
00758528  03 00 a0 e1                                      mov r0, r3
0075852c  00 30 93 e5                                      ldr r3, [r3]
00758530  0f e0 a0 e1                                      mov lr, pc
00758534  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00758538  09 d9 ee eb                                      bl #0x30e964
0075853c  00 10 a0 e1                                      mov r1, r0
00758540  07 00 a0 e1                                      mov r0, r7
00758544  d2 d9 ee eb                                      bl #0x30ec94
00758548  34 30 94 e5                                      ldr r3, [r4, #0x34]
0075854c  6c 00 8d e5                                      str r0, [sp, #0x6c]
00758550  70 70 9d e5                                      ldr r7, [sp, #0x70]
00758554  03 00 a0 e1                                      mov r0, r3
00758558  00 30 93 e5                                      ldr r3, [r3]
0075855c  0f e0 a0 e1                                      mov lr, pc
00758560  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00758564  fe d8 ee eb                                      bl #0x30e964
00758568  00 10 a0 e1                                      mov r1, r0
0075856c  07 00 a0 e1                                      mov r0, r7
00758570  c7 d9 ee eb                                      bl #0x30ec94
00758574  34 30 94 e5                                      ldr r3, [r4, #0x34]
00758578  70 00 8d e5                                      str r0, [sp, #0x70]
0075857c  74 70 9d e5                                      ldr r7, [sp, #0x74]
00758580  03 00 a0 e1                                      mov r0, r3
00758584  00 30 93 e5                                      ldr r3, [r3]
00758588  0f e0 a0 e1                                      mov lr, pc
0075858c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00758590  f3 d8 ee eb                                      bl #0x30e964
00758594  00 10 a0 e1                                      mov r1, r0
00758598  07 00 a0 e1                                      mov r0, r7
0075859c  bc d9 ee eb                                      bl #0x30ec94
007585a0  34 30 94 e5                                      ldr r3, [r4, #0x34]
007585a4  74 00 8d e5                                      str r0, [sp, #0x74]
007585a8  78 70 9d e5                                      ldr r7, [sp, #0x78]
007585ac  03 00 a0 e1                                      mov r0, r3
007585b0  00 30 93 e5                                      ldr r3, [r3]
007585b4  0f e0 a0 e1                                      mov lr, pc
007585b8  28 f0 93 e5                                      ldr pc, [r3, #0x28]
007585bc  e8 d8 ee eb                                      bl #0x30e964
007585c0  00 10 a0 e1                                      mov r1, r0
007585c4  07 00 a0 e1                                      mov r0, r7
007585c8  b1 d9 ee eb                                      bl #0x30ec94
007585cc  78 00 8d e5                                      str r0, [sp, #0x78]
007585d0  38 00 9d e5                                      ldr r0, [sp, #0x38]
007585d4  39 ee ff eb                                      bl #0x753ec0
007585d8  18 c0 8d e2                                      add ip, sp, #0x18
007585dc  00 e0 a0 e1                                      mov lr, r0
007585e0  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
007585e4  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
007585e8  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
007585ec  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
007585f0  00 30 e0 e3                                      mvn r3, #0
007585f4  93 30 cd e5                                      strb r3, [sp, #0x93]
007585f8  90 30 cd e5                                      strb r3, [sp, #0x90]
007585fc  91 30 cd e5                                      strb r3, [sp, #0x91]
00758600  92 30 cd e5                                      strb r3, [sp, #0x92]
00758604  90 10 9d e5                                      ldr r1, [sp, #0x90]
00758608  18 00 8d e2                                      add r0, sp, #0x18
0075860c  5e f2 00 eb                                      bl #0x794f8c
00758610  50 14 e7 e7                                      ubfx r1, r0, #8, #8
00758614  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00758618  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0075861c  09 10 cd e5                                      strb r1, [sp, #9]
00758620  0a 20 cd e5                                      strb r2, [sp, #0xa]
00758624  08 00 cd e5                                      strb r0, [sp, #8]
00758628  0b 30 cd e5                                      strb r3, [sp, #0xb]
0075862c  08 30 9d e5                                      ldr r3, [sp, #8]
00758630  38 00 9d e5                                      ldr r0, [sp, #0x38]
00758634  94 30 8d e5                                      str r3, [sp, #0x94]
00758638  4d ee ff eb                                      bl #0x753f74
0075863c  54 c0 8d e2                                      add ip, sp, #0x54
00758640  00 70 a0 e1                                      mov r7, r0
00758644  0c a0 a0 e1                                      mov sl, ip
00758648  0f 00 b7 e8                                      ldm r7!, {r0, r1, r2, r3}
0075864c  0f 00 aa e8                                      stm sl!, {r0, r1, r2, r3}
00758650  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
00758654  03 00 97 e8                                      ldm r7, {r0, r1}
00758658  02 20 95 e7                                      ldr r2, [r5, r2]
0075865c  94 70 9d e5                                      ldr r7, [sp, #0x94]
00758660  04 10 8a e5                                      str r1, [sl, #4]
00758664  00 50 92 e5                                      ldr r5, [r2]
00758668  00 00 8a e5                                      str r0, [sl]
0075866c  34 20 94 e5                                      ldr r2, [r4, #0x34]
00758670  00 00 55 e3                                      cmp r5, #0
00758674  8c 70 8d e5                                      str r7, [sp, #0x8c]
00758678  07 00 00 0a                                      beq #0x75869c
0075867c  0c 10 a0 e1                                      mov r1, ip
00758680  05 00 a0 e1                                      mov r0, r5
00758684  00 c0 95 e5                                      ldr ip, [r5]
00758688  7c 30 8d e2                                      add r3, sp, #0x7c
0075868c  00 80 8d e5                                      str r8, [sp]
00758690  04 70 8d e5                                      str r7, [sp, #4]
00758694  0f e0 a0 e1                                      mov lr, pc
00758698  80 f0 9c e5                                      ldr pc, [ip, #0x80]
0075869c  06 00 a0 e1                                      mov r0, r6
007586a0  00 00 00 ea                                      b #0x7586a8
007586a4  00 00 a0 e3                                      mov r0, #0
007586a8  9c d0 8d e2                                      add sp, sp, #0x9c
007586ac  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
007586b0  40 c6 23 00 b4 39 00 00                          .byte 0x40, 0xc6, 0x23, 0x00, 0xb4, 0x39, 0x00, 0x00

; FUNCTION 0x007590a4, declared_size=156, range_size=156, mode=arm
; class-group: gameswf::filter_engine
; alias: _ZN7gameswf13filter_engineD1Ev
; demangled: gameswf::filter_engine::~filter_engine()
; decoder-mode: arm
007590a4  70 40 2d e9                                      push {r4, r5, r6, lr}
007590a8  00 40 a0 e1                                      mov r4, r0
007590ac  60 00 80 e2                                      add r0, r0, #0x60
007590b0  1c f8 ff eb                                      bl #0x757128
007590b4  54 30 94 e5                                      ldr r3, [r4, #0x54]
007590b8  50 00 84 e2                                      add r0, r4, #0x50
007590bc  00 00 53 e3                                      cmp r3, #0
007590c0  0f 00 00 da                                      ble #0x759104
007590c4  00 50 a0 e3                                      mov r5, #0
007590c8  54 50 84 e5                                      str r5, [r4, #0x54]
007590cc  05 10 a0 e1                                      mov r1, r5
007590d0  55 f8 ff eb                                      bl #0x75722c
007590d4  44 30 94 e5                                      ldr r3, [r4, #0x44]
007590d8  40 00 84 e2                                      add r0, r4, #0x40
007590dc  05 00 53 e1                                      cmp r3, r5
007590e0  0e 00 00 da                                      ble #0x759120
007590e4  00 30 a0 e3                                      mov r3, #0
007590e8  03 10 a0 e1                                      mov r1, r3
007590ec  44 30 84 e5                                      str r3, [r4, #0x44]
007590f0  47 eb f2 eb                                      bl #0x413e14
007590f4  04 00 a0 e1                                      mov r0, r4
007590f8  a3 fe ff eb                                      bl #0x758b8c
007590fc  04 00 a0 e1                                      mov r0, r4
00759100  70 80 bd e8                                      pop {r4, r5, r6, pc}
00759104  ee ff ff aa                                      bge #0x7590c4
00759108  00 10 a0 e3                                      mov r1, #0
0075910c  00 20 90 e5                                      ldr r2, [r0]
00759110  03 10 c2 e7                                      strb r1, [r2, r3]
00759114  01 30 93 e2                                      adds r3, r3, #1
00759118  fb ff ff 1a                                      bne #0x75910c
0075911c  e8 ff ff ea                                      b #0x7590c4
00759120  ef ff ff aa                                      bge #0x7590e4
00759124  03 21 a0 e1                                      lsl r2, r3, #2
00759128  40 10 94 e5                                      ldr r1, [r4, #0x40]
0075912c  01 30 93 e2                                      adds r3, r3, #1
00759130  02 50 81 e7                                      str r5, [r1, r2]
00759134  04 20 82 e2                                      add r2, r2, #4
00759138  fa ff ff 1a                                      bne #0x759128
0075913c  e8 ff ff ea                                      b #0x7590e4

; FUNCTION 0x0075918c, declared_size=2060, range_size=2060, mode=arm
; class-group: gameswf::filter_engine
; alias: _ZN7gameswf13filter_engine3runEPNS_4rootE
; demangled: gameswf::filter_engine::run(gameswf::root*)
; decoder-mode: arm
0075918c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00759190  00 40 a0 e1                                      mov r4, r0
00759194  44 30 90 e5                                      ldr r3, [r0, #0x44]
00759198  ec 07 9f e5                                      ldr r0, [pc, #0x7ec]
0075919c  45 df 4d e2                                      sub sp, sp, #0x114
007591a0  00 00 53 e3                                      cmp r3, #0
007591a4  00 00 8f e0                                      add r0, pc, r0
007591a8  38 10 8d e5                                      str r1, [sp, #0x38]
007591ac  34 00 8d e5                                      str r0, [sp, #0x34]
007591b0  e7 01 00 da                                      ble #0x759954
007591b4  00 50 a0 e3                                      mov r5, #0
007591b8  44 50 84 e5                                      str r5, [r4, #0x44]
007591bc  38 20 9d e5                                      ldr r2, [sp, #0x38]
007591c0  04 00 a0 e1                                      mov r0, r4
007591c4  10 10 92 e5                                      ldr r1, [r2, #0x10]
007591c8  4f fc ff eb                                      bl #0x75830c
007591cc  44 30 94 e5                                      ldr r3, [r4, #0x44]
007591d0  05 00 53 e1                                      cmp r3, r5
007591d4  4e 00 00 0a                                      beq #0x759314
007591d8  e6 01 00 da                                      ble #0x759978
007591dc  e0 80 8d e2                                      add r8, sp, #0xe0
007591e0  60 70 84 e2                                      add r7, r4, #0x60
007591e4  04 c0 88 e2                                      add ip, r8, #4
007591e8  30 70 8d e5                                      str r7, [sp, #0x30]
007591ec  05 b0 a0 e1                                      mov fp, r5
007591f0  05 70 a0 e1                                      mov r7, r5
007591f4  24 c0 8d e5                                      str ip, [sp, #0x24]
007591f8  40 10 94 e5                                      ldr r1, [r4, #0x40]
007591fc  05 61 a0 e1                                      lsl r6, r5, #2
00759200  01 e0 a0 e3                                      mov lr, #1
00759204  06 10 81 e0                                      add r1, r1, r6
00759208  08 20 a0 e1                                      mov r2, r8
0075920c  30 00 9d e5                                      ldr r0, [sp, #0x30]
00759210  e0 70 8d e5                                      str r7, [sp, #0xe0]
00759214  f4 70 8d e5                                      str r7, [sp, #0xf4]
00759218  f8 e0 cd e5                                      strb lr, [sp, #0xf8]
0075921c  6d fc ff eb                                      bl #0x7583d8
00759220  00 00 50 e3                                      cmp r0, #0
00759224  24 10 9d e5                                      ldr r1, [sp, #0x24]
00759228  01 50 85 e2                                      add r5, r5, #1
0075922c  02 00 00 0a                                      beq #0x75923c
00759230  f8 30 dd e5                                      ldrb r3, [sp, #0xf8]
00759234  00 00 53 e3                                      cmp r3, #0
00759238  25 00 00 0a                                      beq #0x7592d4
0075923c  40 30 94 e5                                      ldr r3, [r4, #0x40]
00759240  06 30 93 e7                                      ldr r3, [r3, r6]
00759244  03 00 a0 e1                                      mov r0, r3
00759248  00 30 93 e5                                      ldr r3, [r3]
0075924c  0f e0 a0 e1                                      mov lr, pc
00759250  2c f1 93 e5                                      ldr pc, [r3, #0x12c]
00759254  40 30 94 e5                                      ldr r3, [r4, #0x40]
00759258  e4 10 9d e5                                      ldr r1, [sp, #0xe4]
0075925c  e8 00 9d e5                                      ldr r0, [sp, #0xe8]
00759260  06 a0 93 e7                                      ldr sl, [r3, r6]
00759264  50 d4 ee eb                                      bl #0x30e3ac
00759268  41 14 a0 e3                                      mov r1, #0x41000000
0075926c  0a 16 81 e2                                      add r1, r1, #0xa00000
00759270  87 d6 ee eb                                      bl #0x30ec94
00759274  94 d4 ee eb                                      bl #0x30e4cc
00759278  ec 10 9d e5                                      ldr r1, [sp, #0xec]
0075927c  00 90 a0 e1                                      mov sb, r0
00759280  f0 00 9d e5                                      ldr r0, [sp, #0xf0]
00759284  48 d4 ee eb                                      bl #0x30e3ac
00759288  41 14 a0 e3                                      mov r1, #0x41000000
0075928c  0a 16 81 e2                                      add r1, r1, #0xa00000
00759290  7f d6 ee eb                                      bl #0x30ec94
00759294  8c d4 ee eb                                      bl #0x30e4cc
00759298  0a 10 a0 e1                                      mov r1, sl
0075929c  00 30 a0 e1                                      mov r3, r0
007592a0  09 20 a0 e1                                      mov r2, sb
007592a4  04 00 a0 e1                                      mov r0, r4
007592a8  f4 fd ff eb                                      bl #0x758a80
007592ac  40 10 94 e5                                      ldr r1, [r4, #0x40]
007592b0  f4 00 8d e5                                      str r0, [sp, #0xf4]
007592b4  00 c0 a0 e1                                      mov ip, r0
007592b8  06 30 b1 e7                                      ldr r3, [r1, r6]!
007592bc  00 00 5c e3                                      cmp ip, #0
007592c0  30 00 9d e5                                      ldr r0, [sp, #0x30]
007592c4  08 20 a0 e1                                      mov r2, r8
007592c8  01 b0 a0 03                                      moveq fp, #1
007592cc  e0 30 8d e5                                      str r3, [sp, #0xe0]
007592d0  d3 fd ff eb                                      bl #0x758a24
007592d4  44 30 94 e5                                      ldr r3, [r4, #0x44]
007592d8  03 00 55 e1                                      cmp r5, r3
007592dc  c5 ff ff ba                                      blt #0x7591f8
007592e0  00 00 5b e3                                      cmp fp, #0
007592e4  24 01 00 1a                                      bne #0x75977c
007592e8  60 10 94 e5                                      ldr r1, [r4, #0x60]
007592ec  00 00 51 e3                                      cmp r1, #0
007592f0  07 00 00 0a                                      beq #0x759314
007592f4  04 20 91 e5                                      ldr r2, [r1, #4]
007592f8  00 00 52 e3                                      cmp r2, #0
007592fc  00 00 a0 b3                                      movlt r0, #0
00759300  24 00 8d b5                                      strlt r0, [sp, #0x24]
00759304  04 00 00 aa                                      bge #0x75931c
00759308  30 20 9d e5                                      ldr r2, [sp, #0x30]
0075930c  00 00 52 e3                                      cmp r2, #0
00759310  14 00 00 1a                                      bne #0x759368
00759314  45 df 8d e2                                      add sp, sp, #0x114
00759318  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0075931c  00 70 a0 e3                                      mov r7, #0
00759320  08 30 a0 e3                                      mov r3, #8
00759324  24 70 8d e5                                      str r7, [sp, #0x24]
00759328  03 00 91 e7                                      ldr r0, [r1, r3]
0075932c  03 c0 81 e0                                      add ip, r1, r3
00759330  28 30 83 e2                                      add r3, r3, #0x28
00759334  02 00 70 e3                                      cmn r0, #2
00759338  02 00 00 0a                                      beq #0x759348
0075933c  04 00 9c e5                                      ldr r0, [ip, #4]
00759340  01 00 70 e3                                      cmn r0, #1
00759344  ef ff ff 1a                                      bne #0x759308
00759348  24 c0 9d e5                                      ldr ip, [sp, #0x24]
0075934c  01 c0 8c e2                                      add ip, ip, #1
00759350  0c 00 52 e1                                      cmp r2, ip
00759354  24 c0 8d e5                                      str ip, [sp, #0x24]
00759358  f2 ff ff aa                                      bge #0x759328
0075935c  30 20 9d e5                                      ldr r2, [sp, #0x30]
00759360  00 00 52 e3                                      cmp r2, #0
00759364  ea ff ff 0a                                      beq #0x759314
00759368  20 36 9f e5                                      ldr r3, [pc, #0x620]
0075936c  e0 70 8d e2                                      add r7, sp, #0xe0
00759370  6c c0 8d e2                                      add ip, sp, #0x6c
00759374  4c 00 8d e2                                      add r0, sp, #0x4c
00759378  fc 20 8d e2                                      add r2, sp, #0xfc
0075937c  3c 30 8d e5                                      str r3, [sp, #0x3c]
00759380  28 70 8d e5                                      str r7, [sp, #0x28]
00759384  2c c0 8d e5                                      str ip, [sp, #0x2c]
00759388  40 00 8d e5                                      str r0, [sp, #0x40]
0075938c  44 20 8d e5                                      str r2, [sp, #0x44]
00759390  04 b0 a0 e1                                      mov fp, r4
00759394  00 00 51 e3                                      cmp r1, #0
00759398  dd ff ff 0a                                      beq #0x759314
0075939c  04 20 91 e5                                      ldr r2, [r1, #4]
007593a0  24 30 9d e5                                      ldr r3, [sp, #0x24]
007593a4  03 00 52 e1                                      cmp r2, r3
007593a8  d9 ff ff ba                                      blt #0x759314
007593ac  24 30 9d e5                                      ldr r3, [sp, #0x24]
007593b0  03 41 83 e0                                      add r4, r3, r3, lsl #2
007593b4  01 40 84 e2                                      add r4, r4, #1
007593b8  84 41 81 e0                                      add r4, r1, r4, lsl #3
007593bc  20 70 94 e5                                      ldr r7, [r4, #0x20]
007593c0  00 00 57 e3                                      cmp r7, #0
007593c4  02 00 00 0a                                      beq #0x7593d4
007593c8  24 30 d4 e5                                      ldrb r3, [r4, #0x24]
007593cc  00 00 53 e3                                      cmp r3, #0
007593d0  15 00 00 1a                                      bne #0x75942c
007593d4  24 70 9d e5                                      ldr r7, [sp, #0x24]
007593d8  01 70 87 e2                                      add r7, r7, #1
007593dc  07 00 52 e1                                      cmp r2, r7
007593e0  24 70 8d e5                                      str r7, [sp, #0x24]
007593e4  ea ff ff ba                                      blt #0x759394
007593e8  07 31 87 e0                                      add r3, r7, r7, lsl #2
007593ec  01 30 83 e2                                      add r3, r3, #1
007593f0  83 31 a0 e1                                      lsl r3, r3, #3
007593f4  03 00 91 e7                                      ldr r0, [r1, r3]
007593f8  03 c0 81 e0                                      add ip, r1, r3
007593fc  28 30 83 e2                                      add r3, r3, #0x28
00759400  02 00 70 e3                                      cmn r0, #2
00759404  02 00 00 0a                                      beq #0x759414
00759408  04 00 9c e5                                      ldr r0, [ip, #4]
0075940c  01 00 70 e3                                      cmn r0, #1
00759410  df ff ff 1a                                      bne #0x759394
00759414  24 c0 9d e5                                      ldr ip, [sp, #0x24]
00759418  01 c0 8c e2                                      add ip, ip, #1
0075941c  0c 00 52 e1                                      cmp r2, ip
00759420  24 c0 8d e5                                      str ip, [sp, #0x24]
00759424  f2 ff ff aa                                      bge #0x7593f4
00759428  d9 ff ff ea                                      b #0x759394
0075942c  34 00 9d e5                                      ldr r0, [sp, #0x34]
00759430  3c e0 9d e5                                      ldr lr, [sp, #0x3c]
00759434  0e 30 90 e7                                      ldr r3, [r0, lr]
00759438  00 50 93 e5                                      ldr r5, [r3]
0075943c  05 00 a0 e1                                      mov r0, r5
00759440  00 30 95 e5                                      ldr r3, [r5]
00759444  0f e0 a0 e1                                      mov lr, pc
00759448  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0075944c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00759450  28 e0 9d e5                                      ldr lr, [sp, #0x28]
00759454  4c c0 93 e5                                      ldr ip, [r3, #0x4c]
00759458  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
0075945c  0f 00 ae e8                                      stm lr!, {r0, r1, r2, r3}
00759460  03 00 9c e8                                      ldm ip, {r0, r1}
00759464  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
00759468  03 00 8e e8                                      stm lr, {r0, r1}
0075946c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00759470  48 e0 93 e5                                      ldr lr, [r3, #0x48]
00759474  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00759478  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0075947c  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
00759480  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00759484  0c 80 94 e5                                      ldr r8, [r4, #0xc]
00759488  40 60 98 e5                                      ldr r6, [r8, #0x40]
0075948c  00 00 56 e3                                      cmp r6, #0
00759490  03 00 00 0a                                      beq #0x7594a4
00759494  3c 00 98 e5                                      ldr r0, [r8, #0x3c]
00759498  04 30 d0 e5                                      ldrb r3, [r0, #4]
0075949c  00 00 53 e3                                      cmp r3, #0
007594a0  aa 00 00 0a                                      beq #0x759750
007594a4  3c 00 88 e2                                      add r0, r8, #0x3c
007594a8  00 10 a0 e3                                      mov r1, #0
007594ac  bd 39 f3 eb                                      bl #0x427ba8
007594b0  0c 00 94 e5                                      ldr r0, [r4, #0xc]
007594b4  fe 25 a0 e3                                      mov r2, #0x3f800000
007594b8  00 30 a0 e3                                      mov r3, #0
007594bc  40 10 9d e5                                      ldr r1, [sp, #0x40]
007594c0  4c 20 8d e5                                      str r2, [sp, #0x4c]
007594c4  54 20 8d e5                                      str r2, [sp, #0x54]
007594c8  5c 20 8d e5                                      str r2, [sp, #0x5c]
007594cc  64 20 8d e5                                      str r2, [sp, #0x64]
007594d0  50 30 8d e5                                      str r3, [sp, #0x50]
007594d4  58 30 8d e5                                      str r3, [sp, #0x58]
007594d8  60 30 8d e5                                      str r3, [sp, #0x60]
007594dc  68 30 8d e5                                      str r3, [sp, #0x68]
007594e0  1d e8 ff eb                                      bl #0x75355c
007594e4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
007594e8  44 20 9d e5                                      ldr r2, [sp, #0x44]
007594ec  07 10 a0 e1                                      mov r1, r7
007594f0  64 30 8b e5                                      str r3, [fp, #0x64]
007594f4  0b 00 a0 e1                                      mov r0, fp
007594f8  cc f5 ff eb                                      bl #0x756c30
007594fc  10 10 94 e5                                      ldr r1, [r4, #0x10]
00759500  14 00 94 e5                                      ldr r0, [r4, #0x14]
00759504  a8 d3 ee eb                                      bl #0x30e3ac
00759508  41 14 a0 e3                                      mov r1, #0x41000000
0075950c  0a 16 81 e2                                      add r1, r1, #0xa00000
00759510  df d5 ee eb                                      bl #0x30ec94
00759514  fc 10 9d e5                                      ldr r1, [sp, #0xfc]
00759518  a1 d5 ee eb                                      bl #0x30eba4
0075951c  00 01 8d e5                                      str r0, [sp, #0x100]
00759520  18 10 94 e5                                      ldr r1, [r4, #0x18]
00759524  00 a0 a0 e1                                      mov sl, r0
00759528  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
0075952c  9e d3 ee eb                                      bl #0x30e3ac
00759530  41 14 a0 e3                                      mov r1, #0x41000000
00759534  0a 16 81 e2                                      add r1, r1, #0xa00000
00759538  d5 d5 ee eb                                      bl #0x30ec94
0075953c  04 11 9d e5                                      ldr r1, [sp, #0x104]
00759540  97 d5 ee eb                                      bl #0x30eba4
00759544  08 01 8d e5                                      str r0, [sp, #0x108]
00759548  00 30 95 e5                                      ldr r3, [r5]
0075954c  fc 10 9d e5                                      ldr r1, [sp, #0xfc]
00759550  00 e0 e0 e3                                      mvn lr, #0
00759554  28 c0 93 e5                                      ldr ip, [r3, #0x28]
00759558  00 70 a0 e1                                      mov r7, r0
0075955c  01 00 a0 e1                                      mov r0, r1
00759560  0c e1 cd e5                                      strb lr, [sp, #0x10c]
00759564  0d e1 cd e5                                      strb lr, [sp, #0x10d]
00759568  0e e1 cd e5                                      strb lr, [sp, #0x10e]
0075956c  0f e1 cd e5                                      strb lr, [sp, #0x10f]
00759570  1c c0 8d e5                                      str ip, [sp, #0x1c]
00759574  20 10 8d e5                                      str r1, [sp, #0x20]
00759578  d3 d3 ee eb                                      bl #0x30e4cc
0075957c  04 81 9d e5                                      ldr r8, [sp, #0x104]
00759580  00 90 a0 e1                                      mov sb, r0
00759584  08 00 a0 e1                                      mov r0, r8
00759588  cf d3 ee eb                                      bl #0x30e4cc
0075958c  20 10 9d e5                                      ldr r1, [sp, #0x20]
00759590  00 30 a0 e1                                      mov r3, r0
00759594  0a 00 a0 e1                                      mov r0, sl
00759598  20 30 8d e5                                      str r3, [sp, #0x20]
0075959c  82 d3 ee eb                                      bl #0x30e3ac
007595a0  c9 d3 ee eb                                      bl #0x30e4cc
007595a4  08 10 a0 e1                                      mov r1, r8
007595a8  00 00 8d e5                                      str r0, [sp]
007595ac  07 00 a0 e1                                      mov r0, r7
007595b0  7d d3 ee eb                                      bl #0x30e3ac
007595b4  c4 d3 ee eb                                      bl #0x30e4cc
007595b8  04 00 8d e5                                      str r0, [sp, #4]
007595bc  10 10 94 e5                                      ldr r1, [r4, #0x10]
007595c0  09 20 a0 e1                                      mov r2, sb
007595c4  20 30 9d e5                                      ldr r3, [sp, #0x20]
007595c8  08 10 8d e5                                      str r1, [sp, #8]
007595cc  14 e0 94 e5                                      ldr lr, [r4, #0x14]
007595d0  0c 11 9d e5                                      ldr r1, [sp, #0x10c]
007595d4  05 00 a0 e1                                      mov r0, r5
007595d8  0c e0 8d e5                                      str lr, [sp, #0xc]
007595dc  1c e0 94 e5                                      ldr lr, [r4, #0x1c]
007595e0  10 e0 8d e5                                      str lr, [sp, #0x10]
007595e4  18 e0 94 e5                                      ldr lr, [r4, #0x18]
007595e8  14 e0 8d e5                                      str lr, [sp, #0x14]
007595ec  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
007595f0  3c ff 2f e1                                      blx ip
007595f4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
007595f8  03 00 a0 e1                                      mov r0, r3
007595fc  00 30 93 e5                                      ldr r3, [r3]
00759600  0f e0 a0 e1                                      mov lr, pc
00759604  20 f1 93 e5                                      ldr pc, [r3, #0x120]
00759608  00 30 95 e5                                      ldr r3, [r5]
0075960c  05 00 a0 e1                                      mov r0, r5
00759610  0f e0 a0 e1                                      mov lr, pc
00759614  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00759618  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0075961c  28 10 9d e5                                      ldr r1, [sp, #0x28]
00759620  f4 e2 f2 eb                                      bl #0x4121f8
00759624  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00759628  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0075962c  ca e7 ff eb                                      bl #0x75355c
00759630  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00759634  06 10 a0 e1                                      mov r1, r6
00759638  3c 00 80 e2                                      add r0, r0, #0x3c
0075963c  59 39 f3 eb                                      bl #0x427ba8
00759640  fc 60 9d e5                                      ldr r6, [sp, #0xfc]
00759644  00 00 a0 e3                                      mov r0, #0
00759648  64 00 8b e5                                      str r0, [fp, #0x64]
0075964c  06 10 a0 e1                                      mov r1, r6
00759650  00 01 9d e5                                      ldr r0, [sp, #0x100]
00759654  54 d3 ee eb                                      bl #0x30e3ac
00759658  9b d3 ee eb                                      bl #0x30e4cc
0075965c  04 51 9d e5                                      ldr r5, [sp, #0x104]
00759660  00 80 a0 e1                                      mov r8, r0
00759664  08 01 9d e5                                      ldr r0, [sp, #0x108]
00759668  05 10 a0 e1                                      mov r1, r5
0075966c  4e d3 ee eb                                      bl #0x30e3ac
00759670  95 d3 ee eb                                      bl #0x30e4cc
00759674  00 90 a0 e1                                      mov sb, r0
00759678  06 00 a0 e1                                      mov r0, r6
0075967c  92 d3 ee eb                                      bl #0x30e4cc
00759680  38 10 9d e5                                      ldr r1, [sp, #0x38]
00759684  00 60 a0 e1                                      mov r6, r0
00759688  05 00 a0 e1                                      mov r0, r5
0075968c  20 30 91 e5                                      ldr r3, [r1, #0x20]
00759690  03 50 69 e0                                      rsb r5, sb, r3
00759694  8c d3 ee eb                                      bl #0x30e4cc
00759698  06 10 a0 e1                                      mov r1, r6
0075969c  05 20 60 e0                                      rsb r2, r0, r5
007596a0  08 30 a0 e1                                      mov r3, r8
007596a4  0b 00 a0 e1                                      mov r0, fp
007596a8  00 90 8d e5                                      str sb, [sp]
007596ac  fb f6 ff eb                                      bl #0x7572a0
007596b0  34 30 9b e5                                      ldr r3, [fp, #0x34]
007596b4  03 00 a0 e1                                      mov r0, r3
007596b8  00 30 93 e5                                      ldr r3, [r3]
007596bc  0f e0 a0 e1                                      mov lr, pc
007596c0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
007596c4  34 30 9b e5                                      ldr r3, [fp, #0x34]
007596c8  00 70 a0 e1                                      mov r7, r0
007596cc  50 50 9b e5                                      ldr r5, [fp, #0x50]
007596d0  03 00 a0 e1                                      mov r0, r3
007596d4  00 30 93 e5                                      ldr r3, [r3]
007596d8  0f e0 a0 e1                                      mov lr, pc
007596dc  24 f0 93 e5                                      ldr pc, [r3, #0x24]
007596e0  00 00 59 e3                                      cmp sb, #0
007596e4  0b 00 00 da                                      ble #0x759718
007596e8  08 81 a0 e1                                      lsl r8, r8, #2
007596ec  00 a1 a0 e1                                      lsl sl, r0, #2
007596f0  00 60 a0 e3                                      mov r6, #0
007596f4  07 00 a0 e1                                      mov r0, r7
007596f8  05 10 a0 e1                                      mov r1, r5
007596fc  01 60 86 e2                                      add r6, r6, #1
00759700  08 20 a0 e1                                      mov r2, r8
00759704  57 d4 ee eb                                      bl #0x30e868
00759708  09 00 56 e1                                      cmp r6, sb
0075970c  08 50 85 e0                                      add r5, r5, r8
00759710  0a 70 87 e0                                      add r7, r7, sl
00759714  f6 ff ff 1a                                      bne #0x7596f4
00759718  34 30 9b e5                                      ldr r3, [fp, #0x34]
0075971c  03 00 a0 e1                                      mov r0, r3
00759720  00 30 93 e5                                      ldr r3, [r3]
00759724  0f e0 a0 e1                                      mov lr, pc
00759728  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0075972c  00 30 a0 e3                                      mov r3, #0
00759730  24 30 c4 e5                                      strb r3, [r4, #0x24]
00759734  30 20 9d e5                                      ldr r2, [sp, #0x30]
00759738  24 30 9d e5                                      ldr r3, [sp, #0x24]
0075973c  00 10 92 e5                                      ldr r1, [r2]
00759740  04 20 91 e5                                      ldr r2, [r1, #4]
00759744  03 00 52 e1                                      cmp r2, r3
00759748  f1 fe ff ba                                      blt #0x759314
0075974c  20 ff ff ea                                      b #0x7593d4
00759750  00 10 90 e5                                      ldr r1, [r0]
00759754  01 10 41 e2                                      sub r1, r1, #1
00759758  00 00 51 e3                                      cmp r1, #0
0075975c  00 10 80 e5                                      str r1, [r0]
00759760  00 00 00 1a                                      bne #0x759768
00759764  f3 e4 ff eb                                      bl #0x752b38
00759768  00 60 a0 e3                                      mov r6, #0
0075976c  40 60 88 e5                                      str r6, [r8, #0x40]
00759770  3c 60 88 e5                                      str r6, [r8, #0x3c]
00759774  0c 80 94 e5                                      ldr r8, [r4, #0xc]
00759778  49 ff ff ea                                      b #0x7594a4
0075977c  04 00 a0 e1                                      mov r0, r4
00759780  d4 e9 00 eb                                      bl #0x793ed8
00759784  60 10 94 e5                                      ldr r1, [r4, #0x60]
00759788  00 00 51 e3                                      cmp r1, #0
0075978c  d6 fe ff 0a                                      beq #0x7592ec
00759790  04 20 91 e5                                      ldr r2, [r1, #4]
00759794  00 00 52 e3                                      cmp r2, #0
00759798  00 50 a0 b3                                      movlt r5, #0
0075979c  5e 00 00 aa                                      bge #0x75991c
007597a0  30 20 9d e5                                      ldr r2, [sp, #0x30]
007597a4  00 00 52 e3                                      cmp r2, #0
007597a8  cf fe ff 0a                                      beq #0x7592ec
007597ac  e0 31 9f e5                                      ldr r3, [pc, #0x1e0]
007597b0  01 c0 a0 e1                                      mov ip, r1
007597b4  c4 a0 8d e2                                      add sl, sp, #0xc4
007597b8  03 30 8f e0                                      add r3, pc, r3
007597bc  2c 30 8d e5                                      str r3, [sp, #0x2c]
007597c0  8c 30 8d e2                                      add r3, sp, #0x8c
007597c4  a8 b0 8d e2                                      add fp, sp, #0xa8
007597c8  24 30 8d e5                                      str r3, [sp, #0x24]
007597cc  00 00 5c e3                                      cmp ip, #0
007597d0  c4 fe ff 0a                                      beq #0x7592e8
007597d4  04 30 9c e5                                      ldr r3, [ip, #4]
007597d8  05 00 53 e1                                      cmp r3, r5
007597dc  c1 fe ff ba                                      blt #0x7592e8
007597e0  05 81 85 e0                                      add r8, r5, r5, lsl #2
007597e4  01 80 88 e2                                      add r8, r8, #1
007597e8  88 81 a0 e1                                      lsl r8, r8, #3
007597ec  08 70 8c e0                                      add r7, ip, r8
007597f0  08 c0 97 e5                                      ldr ip, [r7, #8]
007597f4  0c 60 87 e2                                      add r6, r7, #0xc
007597f8  0a e0 a0 e1                                      mov lr, sl
007597fc  28 c0 8d e5                                      str ip, [sp, #0x28]
00759800  0f 00 b6 e8                                      ldm r6!, {r0, r1, r2, r3}
00759804  0f 00 ae e8                                      stm lr!, {r0, r1, r2, r3}
00759808  07 00 96 e8                                      ldm r6, {r0, r1, r2}
0075980c  03 00 8e e8                                      stm lr, {r0, r1}
00759810  18 20 ca e5                                      strb r2, [sl, #0x18]
00759814  c8 10 9d e5                                      ldr r1, [sp, #0xc8]
00759818  cc 00 9d e5                                      ldr r0, [sp, #0xcc]
0075981c  e2 d2 ee eb                                      bl #0x30e3ac
00759820  41 14 a0 e3                                      mov r1, #0x41000000
00759824  0a 16 81 e2                                      add r1, r1, #0xa00000
00759828  19 d5 ee eb                                      bl #0x30ec94
0075982c  26 d3 ee eb                                      bl #0x30e4cc
00759830  0c c0 87 e2                                      add ip, r7, #0xc
00759834  00 90 a0 e1                                      mov sb, r0
00759838  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
0075983c  0b c0 a0 e1                                      mov ip, fp
00759840  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00759844  07 00 96 e8                                      ldm r6, {r0, r1, r2}
00759848  03 00 8c e8                                      stm ip, {r0, r1}
0075984c  18 20 cb e5                                      strb r2, [fp, #0x18]
00759850  b4 10 9d e5                                      ldr r1, [sp, #0xb4]
00759854  b8 00 9d e5                                      ldr r0, [sp, #0xb8]
00759858  d3 d2 ee eb                                      bl #0x30e3ac
0075985c  41 14 a0 e3                                      mov r1, #0x41000000
00759860  0a 16 81 e2                                      add r1, r1, #0xa00000
00759864  0a d5 ee eb                                      bl #0x30ec94
00759868  17 d3 ee eb                                      bl #0x30e4cc
0075986c  28 10 9d e5                                      ldr r1, [sp, #0x28]
00759870  00 30 a0 e1                                      mov r3, r0
00759874  09 20 a0 e1                                      mov r2, sb
00759878  04 00 a0 e1                                      mov r0, r4
0075987c  7f fc ff eb                                      bl #0x758a80
00759880  20 00 87 e5                                      str r0, [r7, #0x20]
00759884  30 00 9d e5                                      ldr r0, [sp, #0x30]
00759888  24 70 9d e5                                      ldr r7, [sp, #0x24]
0075988c  00 c0 90 e5                                      ldr ip, [r0]
00759890  08 60 8c e0                                      add r6, ip, r8
00759894  0c 60 86 e2                                      add r6, r6, #0xc
00759898  0f 00 b6 e8                                      ldm r6!, {r0, r1, r2, r3}
0075989c  0f 00 a7 e8                                      stm r7!, {r0, r1, r2, r3}
007598a0  07 00 96 e8                                      ldm r6, {r0, r1, r2}
007598a4  03 00 87 e8                                      stm r7, {r0, r1}
007598a8  24 00 9d e5                                      ldr r0, [sp, #0x24]
007598ac  00 00 51 e3                                      cmp r1, #0
007598b0  18 20 c0 e5                                      strb r2, [r0, #0x18]
007598b4  03 00 00 1a                                      bne #0x7598c8
007598b8  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
007598bc  30 1e 00 eb                                      bl #0x761184
007598c0  30 00 9d e5                                      ldr r0, [sp, #0x30]
007598c4  00 c0 90 e5                                      ldr ip, [r0]
007598c8  04 30 9c e5                                      ldr r3, [ip, #4]
007598cc  05 00 53 e1                                      cmp r3, r5
007598d0  84 fe ff ba                                      blt #0x7592e8
007598d4  01 50 85 e2                                      add r5, r5, #1
007598d8  05 00 53 e1                                      cmp r3, r5
007598dc  ba ff ff ba                                      blt #0x7597cc
007598e0  05 21 85 e0                                      add r2, r5, r5, lsl #2
007598e4  01 20 82 e2                                      add r2, r2, #1
007598e8  82 21 a0 e1                                      lsl r2, r2, #3
007598ec  02 10 9c e7                                      ldr r1, [ip, r2]
007598f0  02 00 8c e0                                      add r0, ip, r2
007598f4  28 20 82 e2                                      add r2, r2, #0x28
007598f8  02 00 71 e3                                      cmn r1, #2
007598fc  02 00 00 0a                                      beq #0x75990c
00759900  04 10 90 e5                                      ldr r1, [r0, #4]
00759904  01 00 71 e3                                      cmn r1, #1
00759908  af ff ff 1a                                      bne #0x7597cc
0075990c  01 50 85 e2                                      add r5, r5, #1
00759910  05 00 53 e1                                      cmp r3, r5
00759914  f4 ff ff aa                                      bge #0x7598ec
00759918  ab ff ff ea                                      b #0x7597cc
0075991c  08 30 a0 e3                                      mov r3, #8
00759920  00 50 a0 e3                                      mov r5, #0
00759924  03 00 91 e7                                      ldr r0, [r1, r3]
00759928  03 c0 81 e0                                      add ip, r1, r3
0075992c  28 30 83 e2                                      add r3, r3, #0x28
00759930  02 00 70 e3                                      cmn r0, #2
00759934  02 00 00 0a                                      beq #0x759944
00759938  04 00 9c e5                                      ldr r0, [ip, #4]
0075993c  01 00 70 e3                                      cmn r0, #1
00759940  96 ff ff 1a                                      bne #0x7597a0
00759944  01 50 85 e2                                      add r5, r5, #1
00759948  05 00 52 e1                                      cmp r2, r5
0075994c  f4 ff ff aa                                      bge #0x759924
00759950  92 ff ff ea                                      b #0x7597a0
00759954  16 fe ff aa                                      bge #0x7591b4
00759958  03 21 a0 e1                                      lsl r2, r3, #2
0075995c  00 00 a0 e3                                      mov r0, #0
00759960  40 10 94 e5                                      ldr r1, [r4, #0x40]
00759964  01 30 93 e2                                      adds r3, r3, #1
00759968  02 00 81 e7                                      str r0, [r1, r2]
0075996c  04 20 82 e2                                      add r2, r2, #4
00759970  fa ff ff 1a                                      bne #0x759960
00759974  0e fe ff ea                                      b #0x7591b4
00759978  30 40 8d e5                                      str r4, [sp, #0x30]
0075997c  04 30 a0 e1                                      mov r3, r4
00759980  60 10 b3 e5                                      ldr r1, [r3, #0x60]!
00759984  30 30 8d e5                                      str r3, [sp, #0x30]
00759988  57 fe ff ea                                      b #0x7592ec
; mapping-symbol data/literal pool
0075998c  ec b8 23 00 b4 39 00 00 00 f2 1a 00              .byte 0xec, 0xb8, 0x23, 0x00, 0xb4, 0x39, 0x00, 0x00, 0x00, 0xf2, 0x1a, 0x00
