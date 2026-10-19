; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00591d38, declared_size=1904, range_size=1904, mode=arm
; class-group: void glitch::scene
; alias: _ZN6glitch5scene12_GLOBAL__N_115createTrianglesIfSt6vectorINS_4core10triangle3dIfEENS4_10SAllocatorIS6_LNS_6memory13E_MEMORY_HINTE0EEEEEEvPKtjRKNS_5video13SVertexStreamERT0_
; demangled: void glitch::scene::(anonymous namespace)::createTriangles<float, std::vector<glitch::core::triangle3d<float>, glitch::core::SAllocator<glitch::core::triangle3d<float>, (glitch::memory::E_MEMORY_HINT)0> > >(unsigned short const*, unsigned int, glitch::video::SVertexStream const&, std::vector<glitch::core::triangle3d<float>, glitch::core::SAllocator<glitch::core::triangle3d<float>, (glitch::memory::E_MEMORY_HINT)0> >&)
; decoder-mode: arm
00591d38  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00591d3c  02 50 a0 e1                                      mov r5, r2
00591d40  bc 20 d2 e1                                      ldrh r2, [r2, #0xc]
00591d44  f4 d0 4d e2                                      sub sp, sp, #0xf4
00591d48  00 40 a0 e1                                      mov r4, r0
00591d4c  03 00 52 e3                                      cmp r2, #3
00591d50  01 60 a0 e1                                      mov r6, r1
00591d54  03 70 a0 e1                                      mov r7, r3
00591d58  9f 00 00 0a                                      beq #0x591fdc
00591d5c  04 00 52 e3                                      cmp r2, #4
00591d60  52 00 00 0a                                      beq #0x591eb0
00591d64  02 00 52 e3                                      cmp r2, #2
00591d68  01 00 00 0a                                      beq #0x591d74
00591d6c  f4 d0 8d e2                                      add sp, sp, #0xf4
00591d70  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00591d74  00 00 95 e5                                      ldr r0, [r5]
00591d78  01 10 a0 e3                                      mov r1, #1
00591d7c  56 3f 00 eb                                      bl #0x5a1adc
00591d80  04 80 95 e5                                      ldr r8, [r5, #4]
00591d84  00 00 54 e3                                      cmp r4, #0
00591d88  08 80 80 e0                                      add r8, r0, r8
00591d8c  f3 00 00 0a                                      beq #0x592160
00591d90  86 b0 84 e0                                      add fp, r4, r6, lsl #1
00591d94  0b 00 54 e1                                      cmp r4, fp
00591d98  38 00 00 0a                                      beq #0x591e80
00591d9c  a8 00 8d e2                                      add r0, sp, #0xa8
00591da0  00 60 a0 e3                                      mov r6, #0
00591da4  0c 00 8d e5                                      str r0, [sp, #0xc]
00591da8  10 b0 8d e5                                      str fp, [sp, #0x10]
00591dac  be 20 d5 e1                                      ldrh r2, [r5, #0xe]
00591db0  b2 10 d4 e1                                      ldrh r1, [r4, #2]
00591db4  b4 00 d4 e1                                      ldrh r0, [r4, #4]
00591db8  b0 30 d4 e1                                      ldrh r3, [r4]
00591dbc  08 b0 97 e5                                      ldr fp, [r7, #8]
00591dc0  90 02 00 e0                                      mul r0, r0, r2
00591dc4  92 03 03 e0                                      mul r3, r2, r3
00591dc8  92 01 02 e0                                      mul r2, r2, r1
00591dcc  00 90 88 e0                                      add sb, r8, r0
00591dd0  04 10 97 e5                                      ldr r1, [r7, #4]
00591dd4  02 a0 88 e0                                      add sl, r8, r2
00591dd8  03 c0 88 e0                                      add ip, r8, r3
00591ddc  00 00 98 e7                                      ldr r0, [r8, r0]
00591de0  04 90 99 e5                                      ldr sb, [sb, #4]
00591de4  02 20 98 e7                                      ldr r2, [r8, r2]
00591de8  04 a0 9a e5                                      ldr sl, [sl, #4]
00591dec  03 30 98 e7                                      ldr r3, [r8, r3]
00591df0  04 c0 9c e5                                      ldr ip, [ip, #4]
00591df4  0b 00 51 e1                                      cmp r1, fp
00591df8  ac 90 8d e5                                      str sb, [sp, #0xac]
00591dfc  b4 20 8d e5                                      str r2, [sp, #0xb4]
00591e00  b8 a0 8d e5                                      str sl, [sp, #0xb8]
00591e04  c0 30 8d e5                                      str r3, [sp, #0xc0]
00591e08  c4 c0 8d e5                                      str ip, [sp, #0xc4]
00591e0c  b0 60 8d e5                                      str r6, [sp, #0xb0]
00591e10  bc 60 8d e5                                      str r6, [sp, #0xbc]
00591e14  a8 00 8d e5                                      str r0, [sp, #0xa8]
00591e18  c8 60 8d e5                                      str r6, [sp, #0xc8]
00591e1c  cb 00 00 0a                                      beq #0x592150
00591e20  00 00 81 e5                                      str r0, [r1]
00591e24  ac 30 9d e5                                      ldr r3, [sp, #0xac]
00591e28  04 30 81 e5                                      str r3, [r1, #4]
00591e2c  b0 30 9d e5                                      ldr r3, [sp, #0xb0]
00591e30  08 30 81 e5                                      str r3, [r1, #8]
00591e34  b4 30 9d e5                                      ldr r3, [sp, #0xb4]
00591e38  0c 30 81 e5                                      str r3, [r1, #0xc]
00591e3c  b8 30 9d e5                                      ldr r3, [sp, #0xb8]
00591e40  10 30 81 e5                                      str r3, [r1, #0x10]
00591e44  bc 30 9d e5                                      ldr r3, [sp, #0xbc]
00591e48  14 30 81 e5                                      str r3, [r1, #0x14]
00591e4c  c0 30 9d e5                                      ldr r3, [sp, #0xc0]
00591e50  18 30 81 e5                                      str r3, [r1, #0x18]
00591e54  c4 30 9d e5                                      ldr r3, [sp, #0xc4]
00591e58  1c 30 81 e5                                      str r3, [r1, #0x1c]
00591e5c  c8 30 9d e5                                      ldr r3, [sp, #0xc8]
00591e60  20 30 81 e5                                      str r3, [r1, #0x20]
00591e64  04 30 97 e5                                      ldr r3, [r7, #4]
00591e68  24 30 83 e2                                      add r3, r3, #0x24
00591e6c  04 30 87 e5                                      str r3, [r7, #4]
00591e70  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00591e74  06 40 84 e2                                      add r4, r4, #6
00591e78  04 00 5c e1                                      cmp ip, r4
00591e7c  ca ff ff 1a                                      bne #0x591dac
00591e80  00 00 58 e3                                      cmp r8, #0
00591e84  b8 ff ff 0a                                      beq #0x591d6c
00591e88  00 40 95 e5                                      ldr r4, [r5]
00591e8c  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
00591e90  1f 20 03 e2                                      and r2, r3, #0x1f
00591e94  01 00 52 e3                                      cmp r2, #1
00591e98  99 00 00 9a                                      bls #0x592104
00591e9c  01 20 42 e2                                      sub r2, r2, #1
00591ea0  1f 30 c3 e3                                      bic r3, r3, #0x1f
00591ea4  03 30 82 e1                                      orr r3, r2, r3
00591ea8  13 30 c4 e5                                      strb r3, [r4, #0x13]
00591eac  ae ff ff ea                                      b #0x591d6c
00591eb0  00 00 95 e5                                      ldr r0, [r5]
00591eb4  01 10 a0 e3                                      mov r1, #1
00591eb8  07 3f 00 eb                                      bl #0x5a1adc
00591ebc  04 80 95 e5                                      ldr r8, [r5, #4]
00591ec0  00 00 54 e3                                      cmp r4, #0
00591ec4  08 80 80 e0                                      add r8, r0, r8
00591ec8  e2 00 00 0a                                      beq #0x592258
00591ecc  86 60 84 e0                                      add r6, r4, r6, lsl #1
00591ed0  06 00 54 e1                                      cmp r4, r6
00591ed4  0c 60 8d e5                                      str r6, [sp, #0xc]
00591ed8  e8 ff ff 0a                                      beq #0x591e80
00591edc  18 a0 8d e2                                      add sl, sp, #0x18
00591ee0  14 a0 8d e5                                      str sl, [sp, #0x14]
00591ee4  10 50 8d e5                                      str r5, [sp, #0x10]
00591ee8  10 b0 9d e5                                      ldr fp, [sp, #0x10]
00591eec  b2 60 d4 e1                                      ldrh r6, [r4, #2]
00591ef0  b4 c0 d4 e1                                      ldrh ip, [r4, #4]
00591ef4  be 30 db e1                                      ldrh r3, [fp, #0xe]
00591ef8  b0 50 d4 e1                                      ldrh r5, [r4]
00591efc  04 10 97 e5                                      ldr r1, [r7, #4]
00591f00  93 06 06 e0                                      mul r6, r3, r6
00591f04  9c 03 0c e0                                      mul ip, ip, r3
00591f08  06 20 88 e0                                      add r2, r8, r6
00591f0c  06 60 98 e7                                      ldr r6, [r8, r6]
00591f10  0c 00 88 e0                                      add r0, r8, ip
00591f14  08 90 90 e5                                      ldr sb, [r0, #8]
00591f18  0c c0 98 e7                                      ldr ip, [r8, ip]
00591f1c  93 05 05 e0                                      mul r5, r3, r5
00591f20  04 60 8d e5                                      str r6, [sp, #4]
00591f24  04 00 90 e5                                      ldr r0, [r0, #4]
00591f28  08 a0 97 e5                                      ldr sl, [r7, #8]
00591f2c  05 30 88 e0                                      add r3, r8, r5
00591f30  08 60 92 e5                                      ldr r6, [r2, #8]
00591f34  08 b0 93 e5                                      ldr fp, [r3, #8]
00591f38  05 50 98 e7                                      ldr r5, [r8, r5]
00591f3c  04 20 92 e5                                      ldr r2, [r2, #4]
00591f40  04 30 93 e5                                      ldr r3, [r3, #4]
00591f44  1c 00 8d e5                                      str r0, [sp, #0x1c]
00591f48  04 00 9d e5                                      ldr r0, [sp, #4]
00591f4c  0a 00 51 e1                                      cmp r1, sl
00591f50  20 90 8d e5                                      str sb, [sp, #0x20]
00591f54  24 00 8d e5                                      str r0, [sp, #0x24]
00591f58  28 20 8d e5                                      str r2, [sp, #0x28]
00591f5c  2c 60 8d e5                                      str r6, [sp, #0x2c]
00591f60  30 50 8d e5                                      str r5, [sp, #0x30]
00591f64  34 30 8d e5                                      str r3, [sp, #0x34]
00591f68  38 b0 8d e5                                      str fp, [sp, #0x38]
00591f6c  18 c0 8d e5                                      str ip, [sp, #0x18]
00591f70  72 00 00 0a                                      beq #0x592140
00591f74  00 c0 81 e5                                      str ip, [r1]
00591f78  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00591f7c  04 30 81 e5                                      str r3, [r1, #4]
00591f80  20 30 9d e5                                      ldr r3, [sp, #0x20]
00591f84  08 30 81 e5                                      str r3, [r1, #8]
00591f88  24 30 9d e5                                      ldr r3, [sp, #0x24]
00591f8c  0c 30 81 e5                                      str r3, [r1, #0xc]
00591f90  28 30 9d e5                                      ldr r3, [sp, #0x28]
00591f94  10 30 81 e5                                      str r3, [r1, #0x10]
00591f98  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
00591f9c  14 30 81 e5                                      str r3, [r1, #0x14]
00591fa0  30 30 9d e5                                      ldr r3, [sp, #0x30]
00591fa4  18 30 81 e5                                      str r3, [r1, #0x18]
00591fa8  34 30 9d e5                                      ldr r3, [sp, #0x34]
00591fac  1c 30 81 e5                                      str r3, [r1, #0x1c]
00591fb0  38 30 9d e5                                      ldr r3, [sp, #0x38]
00591fb4  20 30 81 e5                                      str r3, [r1, #0x20]
00591fb8  04 30 97 e5                                      ldr r3, [r7, #4]
00591fbc  24 30 83 e2                                      add r3, r3, #0x24
00591fc0  04 30 87 e5                                      str r3, [r7, #4]
00591fc4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00591fc8  06 40 84 e2                                      add r4, r4, #6
00591fcc  04 00 52 e1                                      cmp r2, r4
00591fd0  c4 ff ff 1a                                      bne #0x591ee8
00591fd4  10 50 9d e5                                      ldr r5, [sp, #0x10]
00591fd8  a8 ff ff ea                                      b #0x591e80
00591fdc  00 00 95 e5                                      ldr r0, [r5]
00591fe0  01 10 a0 e3                                      mov r1, #1
00591fe4  bc 3e 00 eb                                      bl #0x5a1adc
00591fe8  04 80 95 e5                                      ldr r8, [r5, #4]
00591fec  00 00 54 e3                                      cmp r4, #0
00591ff0  08 80 80 e0                                      add r8, r0, r8
00591ff4  db 00 00 0a                                      beq #0x592368
00591ff8  86 60 84 e0                                      add r6, r4, r6, lsl #1
00591ffc  06 00 54 e1                                      cmp r4, r6
00592000  0c 60 8d e5                                      str r6, [sp, #0xc]
00592004  9d ff ff 0a                                      beq #0x591e80
00592008  60 00 8d e2                                      add r0, sp, #0x60
0059200c  14 00 8d e5                                      str r0, [sp, #0x14]
00592010  10 50 8d e5                                      str r5, [sp, #0x10]
00592014  10 20 9d e5                                      ldr r2, [sp, #0x10]
00592018  b2 60 d4 e1                                      ldrh r6, [r4, #2]
0059201c  b4 c0 d4 e1                                      ldrh ip, [r4, #4]
00592020  be 30 d2 e1                                      ldrh r3, [r2, #0xe]
00592024  b0 50 d4 e1                                      ldrh r5, [r4]
00592028  04 10 97 e5                                      ldr r1, [r7, #4]
0059202c  93 06 06 e0                                      mul r6, r3, r6
00592030  9c 03 0c e0                                      mul ip, ip, r3
00592034  06 20 88 e0                                      add r2, r8, r6
00592038  06 60 98 e7                                      ldr r6, [r8, r6]
0059203c  0c 00 88 e0                                      add r0, r8, ip
00592040  08 90 90 e5                                      ldr sb, [r0, #8]
00592044  0c c0 98 e7                                      ldr ip, [r8, ip]
00592048  93 05 05 e0                                      mul r5, r3, r5
0059204c  04 60 8d e5                                      str r6, [sp, #4]
00592050  04 00 90 e5                                      ldr r0, [r0, #4]
00592054  08 a0 97 e5                                      ldr sl, [r7, #8]
00592058  05 30 88 e0                                      add r3, r8, r5
0059205c  08 60 92 e5                                      ldr r6, [r2, #8]
00592060  08 b0 93 e5                                      ldr fp, [r3, #8]
00592064  05 50 98 e7                                      ldr r5, [r8, r5]
00592068  04 20 92 e5                                      ldr r2, [r2, #4]
0059206c  04 30 93 e5                                      ldr r3, [r3, #4]
00592070  64 00 8d e5                                      str r0, [sp, #0x64]
00592074  04 00 9d e5                                      ldr r0, [sp, #4]
00592078  0a 00 51 e1                                      cmp r1, sl
0059207c  68 90 8d e5                                      str sb, [sp, #0x68]
00592080  6c 00 8d e5                                      str r0, [sp, #0x6c]
00592084  70 20 8d e5                                      str r2, [sp, #0x70]
00592088  74 60 8d e5                                      str r6, [sp, #0x74]
0059208c  78 50 8d e5                                      str r5, [sp, #0x78]
00592090  7c 30 8d e5                                      str r3, [sp, #0x7c]
00592094  80 b0 8d e5                                      str fp, [sp, #0x80]
00592098  60 c0 8d e5                                      str ip, [sp, #0x60]
0059209c  23 00 00 0a                                      beq #0x592130
005920a0  00 c0 81 e5                                      str ip, [r1]
005920a4  64 30 9d e5                                      ldr r3, [sp, #0x64]
005920a8  04 30 81 e5                                      str r3, [r1, #4]
005920ac  68 30 9d e5                                      ldr r3, [sp, #0x68]
005920b0  08 30 81 e5                                      str r3, [r1, #8]
005920b4  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
005920b8  0c 30 81 e5                                      str r3, [r1, #0xc]
005920bc  70 30 9d e5                                      ldr r3, [sp, #0x70]
005920c0  10 30 81 e5                                      str r3, [r1, #0x10]
005920c4  74 30 9d e5                                      ldr r3, [sp, #0x74]
005920c8  14 30 81 e5                                      str r3, [r1, #0x14]
005920cc  78 30 9d e5                                      ldr r3, [sp, #0x78]
005920d0  18 30 81 e5                                      str r3, [r1, #0x18]
005920d4  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
005920d8  1c 30 81 e5                                      str r3, [r1, #0x1c]
005920dc  80 30 9d e5                                      ldr r3, [sp, #0x80]
005920e0  20 30 81 e5                                      str r3, [r1, #0x20]
005920e4  04 30 97 e5                                      ldr r3, [r7, #4]
005920e8  24 30 83 e2                                      add r3, r3, #0x24
005920ec  04 30 87 e5                                      str r3, [r7, #4]
005920f0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005920f4  06 40 84 e2                                      add r4, r4, #6
005920f8  04 00 52 e1                                      cmp r2, r4
005920fc  c4 ff ff 1a                                      bne #0x592014
00592100  b3 ff ff ea                                      b #0x591fd4
00592104  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
00592108  20 00 13 e3                                      tst r3, #0x20
0059210c  02 00 00 1a                                      bne #0x59211c
00592110  00 30 a0 e3                                      mov r3, #0
00592114  13 30 c4 e5                                      strb r3, [r4, #0x13]
00592118  13 ff ff ea                                      b #0x591d6c
0059211c  00 30 94 e5                                      ldr r3, [r4]
00592120  04 00 a0 e1                                      mov r0, r4
00592124  0f e0 a0 e1                                      mov lr, pc
00592128  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0059212c  f7 ff ff ea                                      b #0x592110
00592130  07 00 a0 e1                                      mov r0, r7
00592134  14 20 9d e5                                      ldr r2, [sp, #0x14]
00592138  3e fc ff eb                                      bl #0x591238
0059213c  eb ff ff ea                                      b #0x5920f0
00592140  07 00 a0 e1                                      mov r0, r7
00592144  14 20 9d e5                                      ldr r2, [sp, #0x14]
00592148  3a fc ff eb                                      bl #0x591238
0059214c  9c ff ff ea                                      b #0x591fc4
00592150  07 00 a0 e1                                      mov r0, r7
00592154  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00592158  36 fc ff eb                                      bl #0x591238
0059215c  43 ff ff ea                                      b #0x591e70
00592160  00 00 56 e3                                      cmp r6, #0
00592164  45 ff ff 0a                                      beq #0x591e80
00592168  be c0 d5 e1                                      ldrh ip, [r5, #0xe]
0059216c  cc 00 8d e2                                      add r0, sp, #0xcc
00592170  00 a0 a0 e3                                      mov sl, #0
00592174  0c 00 8d e5                                      str r0, [sp, #0xc]
00592178  0c 20 a0 e1                                      mov r2, ip
0059217c  06 b0 a0 e1                                      mov fp, r6
00592180  10 50 8d e5                                      str r5, [sp, #0x10]
00592184  01 00 00 ea                                      b #0x592190
00592188  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0059218c  be 20 dc e1                                      ldrh r2, [ip, #0xe]
00592190  02 00 84 e2                                      add r0, r4, #2
00592194  94 02 03 e0                                      mul r3, r4, r2
00592198  92 00 00 e0                                      mul r0, r2, r0
0059219c  94 22 22 e0                                      mla r2, r4, r2, r2
005921a0  22 00 97 e9                                      ldmib r7, {r1, r5}
005921a4  00 90 88 e0                                      add sb, r8, r0
005921a8  02 60 88 e0                                      add r6, r8, r2
005921ac  03 c0 88 e0                                      add ip, r8, r3
005921b0  00 00 98 e7                                      ldr r0, [r8, r0]
005921b4  04 90 99 e5                                      ldr sb, [sb, #4]
005921b8  02 20 98 e7                                      ldr r2, [r8, r2]
005921bc  04 60 96 e5                                      ldr r6, [r6, #4]
005921c0  03 30 98 e7                                      ldr r3, [r8, r3]
005921c4  04 c0 9c e5                                      ldr ip, [ip, #4]
005921c8  05 00 51 e1                                      cmp r1, r5
005921cc  d0 90 8d e5                                      str sb, [sp, #0xd0]
005921d0  d8 20 8d e5                                      str r2, [sp, #0xd8]
005921d4  dc 60 8d e5                                      str r6, [sp, #0xdc]
005921d8  e4 30 8d e5                                      str r3, [sp, #0xe4]
005921dc  e8 c0 8d e5                                      str ip, [sp, #0xe8]
005921e0  d4 a0 8d e5                                      str sl, [sp, #0xd4]
005921e4  e0 a0 8d e5                                      str sl, [sp, #0xe0]
005921e8  ec a0 8d e5                                      str sl, [sp, #0xec]
005921ec  cc 00 8d e5                                      str r0, [sp, #0xcc]
005921f0  a0 00 00 0a                                      beq #0x592478
005921f4  00 00 81 e5                                      str r0, [r1]
005921f8  d0 30 9d e5                                      ldr r3, [sp, #0xd0]
005921fc  04 30 81 e5                                      str r3, [r1, #4]
00592200  d4 30 9d e5                                      ldr r3, [sp, #0xd4]
00592204  08 30 81 e5                                      str r3, [r1, #8]
00592208  d8 30 9d e5                                      ldr r3, [sp, #0xd8]
0059220c  0c 30 81 e5                                      str r3, [r1, #0xc]
00592210  dc 30 9d e5                                      ldr r3, [sp, #0xdc]
00592214  10 30 81 e5                                      str r3, [r1, #0x10]
00592218  e0 30 9d e5                                      ldr r3, [sp, #0xe0]
0059221c  14 30 81 e5                                      str r3, [r1, #0x14]
00592220  e4 30 9d e5                                      ldr r3, [sp, #0xe4]
00592224  18 30 81 e5                                      str r3, [r1, #0x18]
00592228  e8 30 9d e5                                      ldr r3, [sp, #0xe8]
0059222c  1c 30 81 e5                                      str r3, [r1, #0x1c]
00592230  ec 30 9d e5                                      ldr r3, [sp, #0xec]
00592234  20 30 81 e5                                      str r3, [r1, #0x20]
00592238  04 30 97 e5                                      ldr r3, [r7, #4]
0059223c  24 30 83 e2                                      add r3, r3, #0x24
00592240  04 30 87 e5                                      str r3, [r7, #4]
00592244  03 40 84 e2                                      add r4, r4, #3
00592248  04 00 5b e1                                      cmp fp, r4
0059224c  cd ff ff 8a                                      bhi #0x592188
00592250  10 50 9d e5                                      ldr r5, [sp, #0x10]
00592254  09 ff ff ea                                      b #0x591e80
00592258  00 00 56 e3                                      cmp r6, #0
0059225c  07 ff ff 0a                                      beq #0x591e80
00592260  be 90 d5 e1                                      ldrh sb, [r5, #0xe]
00592264  3c 30 8d e2                                      add r3, sp, #0x3c
00592268  0c 60 8d e5                                      str r6, [sp, #0xc]
0059226c  14 30 8d e5                                      str r3, [sp, #0x14]
00592270  09 60 a0 e1                                      mov r6, sb
00592274  10 50 8d e5                                      str r5, [sp, #0x10]
00592278  01 00 00 ea                                      b #0x592284
0059227c  10 30 9d e5                                      ldr r3, [sp, #0x10]
00592280  be 60 d3 e1                                      ldrh r6, [r3, #0xe]
00592284  02 c0 84 e2                                      add ip, r4, #2
00592288  94 06 05 e0                                      mul r5, r4, r6
0059228c  96 0c 0c e0                                      mul ip, r6, ip
00592290  94 66 26 e0                                      mla r6, r4, r6, r6
00592294  0c 00 88 e0                                      add r0, r8, ip
00592298  06 20 88 e0                                      add r2, r8, r6
0059229c  06 60 98 e7                                      ldr r6, [r8, r6]
005922a0  04 10 97 e5                                      ldr r1, [r7, #4]
005922a4  08 90 90 e5                                      ldr sb, [r0, #8]
005922a8  0c c0 98 e7                                      ldr ip, [r8, ip]
005922ac  04 60 8d e5                                      str r6, [sp, #4]
005922b0  04 00 90 e5                                      ldr r0, [r0, #4]
005922b4  08 a0 97 e5                                      ldr sl, [r7, #8]
005922b8  05 30 88 e0                                      add r3, r8, r5
005922bc  08 60 92 e5                                      ldr r6, [r2, #8]
005922c0  08 b0 93 e5                                      ldr fp, [r3, #8]
005922c4  05 50 98 e7                                      ldr r5, [r8, r5]
005922c8  04 20 92 e5                                      ldr r2, [r2, #4]
005922cc  04 30 93 e5                                      ldr r3, [r3, #4]
005922d0  40 00 8d e5                                      str r0, [sp, #0x40]
005922d4  04 00 9d e5                                      ldr r0, [sp, #4]
005922d8  0a 00 51 e1                                      cmp r1, sl
005922dc  44 90 8d e5                                      str sb, [sp, #0x44]
005922e0  48 00 8d e5                                      str r0, [sp, #0x48]
005922e4  4c 20 8d e5                                      str r2, [sp, #0x4c]
005922e8  50 60 8d e5                                      str r6, [sp, #0x50]
005922ec  54 50 8d e5                                      str r5, [sp, #0x54]
005922f0  58 30 8d e5                                      str r3, [sp, #0x58]
005922f4  5c b0 8d e5                                      str fp, [sp, #0x5c]
005922f8  3c c0 8d e5                                      str ip, [sp, #0x3c]
005922fc  61 00 00 0a                                      beq #0x592488
00592300  00 c0 81 e5                                      str ip, [r1]
00592304  40 30 9d e5                                      ldr r3, [sp, #0x40]
00592308  04 30 81 e5                                      str r3, [r1, #4]
0059230c  44 30 9d e5                                      ldr r3, [sp, #0x44]
00592310  08 30 81 e5                                      str r3, [r1, #8]
00592314  48 30 9d e5                                      ldr r3, [sp, #0x48]
00592318  0c 30 81 e5                                      str r3, [r1, #0xc]
0059231c  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
00592320  10 30 81 e5                                      str r3, [r1, #0x10]
00592324  50 30 9d e5                                      ldr r3, [sp, #0x50]
00592328  14 30 81 e5                                      str r3, [r1, #0x14]
0059232c  54 30 9d e5                                      ldr r3, [sp, #0x54]
00592330  18 30 81 e5                                      str r3, [r1, #0x18]
00592334  58 30 9d e5                                      ldr r3, [sp, #0x58]
00592338  1c 30 81 e5                                      str r3, [r1, #0x1c]
0059233c  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
00592340  20 30 81 e5                                      str r3, [r1, #0x20]
00592344  04 30 97 e5                                      ldr r3, [r7, #4]
00592348  24 30 83 e2                                      add r3, r3, #0x24
0059234c  04 30 87 e5                                      str r3, [r7, #4]
00592350  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00592354  03 40 84 e2                                      add r4, r4, #3
00592358  04 00 52 e1                                      cmp r2, r4
0059235c  c6 ff ff 8a                                      bhi #0x59227c
00592360  10 50 9d e5                                      ldr r5, [sp, #0x10]
00592364  c5 fe ff ea                                      b #0x591e80
00592368  00 00 56 e3                                      cmp r6, #0
0059236c  c3 fe ff 0a                                      beq #0x591e80
00592370  be 90 d5 e1                                      ldrh sb, [r5, #0xe]
00592374  84 30 8d e2                                      add r3, sp, #0x84
00592378  0c 60 8d e5                                      str r6, [sp, #0xc]
0059237c  14 30 8d e5                                      str r3, [sp, #0x14]
00592380  09 60 a0 e1                                      mov r6, sb
00592384  10 50 8d e5                                      str r5, [sp, #0x10]
00592388  01 00 00 ea                                      b #0x592394
0059238c  10 30 9d e5                                      ldr r3, [sp, #0x10]
00592390  be 60 d3 e1                                      ldrh r6, [r3, #0xe]
00592394  02 c0 84 e2                                      add ip, r4, #2
00592398  94 06 05 e0                                      mul r5, r4, r6
0059239c  96 0c 0c e0                                      mul ip, r6, ip
005923a0  94 66 26 e0                                      mla r6, r4, r6, r6
005923a4  0c 00 88 e0                                      add r0, r8, ip
005923a8  06 20 88 e0                                      add r2, r8, r6
005923ac  06 60 98 e7                                      ldr r6, [r8, r6]
005923b0  04 10 97 e5                                      ldr r1, [r7, #4]
005923b4  08 90 90 e5                                      ldr sb, [r0, #8]
005923b8  0c c0 98 e7                                      ldr ip, [r8, ip]
005923bc  04 60 8d e5                                      str r6, [sp, #4]
005923c0  04 00 90 e5                                      ldr r0, [r0, #4]
005923c4  08 a0 97 e5                                      ldr sl, [r7, #8]
005923c8  05 30 88 e0                                      add r3, r8, r5
005923cc  08 60 92 e5                                      ldr r6, [r2, #8]
005923d0  08 b0 93 e5                                      ldr fp, [r3, #8]
005923d4  05 50 98 e7                                      ldr r5, [r8, r5]
005923d8  04 20 92 e5                                      ldr r2, [r2, #4]
005923dc  04 30 93 e5                                      ldr r3, [r3, #4]
005923e0  88 00 8d e5                                      str r0, [sp, #0x88]
005923e4  04 00 9d e5                                      ldr r0, [sp, #4]
005923e8  0a 00 51 e1                                      cmp r1, sl
005923ec  8c 90 8d e5                                      str sb, [sp, #0x8c]
005923f0  90 00 8d e5                                      str r0, [sp, #0x90]
005923f4  94 20 8d e5                                      str r2, [sp, #0x94]
005923f8  98 60 8d e5                                      str r6, [sp, #0x98]
005923fc  9c 50 8d e5                                      str r5, [sp, #0x9c]
00592400  a0 30 8d e5                                      str r3, [sp, #0xa0]
00592404  a4 b0 8d e5                                      str fp, [sp, #0xa4]
00592408  84 c0 8d e5                                      str ip, [sp, #0x84]
0059240c  21 00 00 0a                                      beq #0x592498
00592410  00 c0 81 e5                                      str ip, [r1]
00592414  88 30 9d e5                                      ldr r3, [sp, #0x88]
00592418  04 30 81 e5                                      str r3, [r1, #4]
0059241c  8c 30 9d e5                                      ldr r3, [sp, #0x8c]
00592420  08 30 81 e5                                      str r3, [r1, #8]
00592424  90 30 9d e5                                      ldr r3, [sp, #0x90]
00592428  0c 30 81 e5                                      str r3, [r1, #0xc]
0059242c  94 30 9d e5                                      ldr r3, [sp, #0x94]
00592430  10 30 81 e5                                      str r3, [r1, #0x10]
00592434  98 30 9d e5                                      ldr r3, [sp, #0x98]
00592438  14 30 81 e5                                      str r3, [r1, #0x14]
0059243c  9c 30 9d e5                                      ldr r3, [sp, #0x9c]
00592440  18 30 81 e5                                      str r3, [r1, #0x18]
00592444  a0 30 9d e5                                      ldr r3, [sp, #0xa0]
00592448  1c 30 81 e5                                      str r3, [r1, #0x1c]
0059244c  a4 30 9d e5                                      ldr r3, [sp, #0xa4]
00592450  20 30 81 e5                                      str r3, [r1, #0x20]
00592454  04 30 97 e5                                      ldr r3, [r7, #4]
00592458  24 30 83 e2                                      add r3, r3, #0x24
0059245c  04 30 87 e5                                      str r3, [r7, #4]
00592460  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00592464  03 40 84 e2                                      add r4, r4, #3
00592468  04 00 52 e1                                      cmp r2, r4
0059246c  c6 ff ff 8a                                      bhi #0x59238c
00592470  10 50 9d e5                                      ldr r5, [sp, #0x10]
00592474  81 fe ff ea                                      b #0x591e80
00592478  07 00 a0 e1                                      mov r0, r7
0059247c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00592480  6c fb ff eb                                      bl #0x591238
00592484  6e ff ff ea                                      b #0x592244
00592488  07 00 a0 e1                                      mov r0, r7
0059248c  14 20 9d e5                                      ldr r2, [sp, #0x14]
00592490  68 fb ff eb                                      bl #0x591238
00592494  ad ff ff ea                                      b #0x592350
00592498  07 00 a0 e1                                      mov r0, r7
0059249c  14 20 9d e5                                      ldr r2, [sp, #0x14]
005924a0  64 fb ff eb                                      bl #0x591238
005924a4  ed ff ff ea                                      b #0x592460

; FUNCTION 0x005924a8, declared_size=2480, range_size=2480, mode=arm
; class-group: void glitch::scene
; alias: _ZN6glitch5scene12_GLOBAL__N_115createTrianglesIjSt6vectorINS_4core10triangle3dIfEENS4_10SAllocatorIS6_LNS_6memory13E_MEMORY_HINTE0EEEEEEvPKtjRKNS_5video13SVertexStreamERT0_
; demangled: void glitch::scene::(anonymous namespace)::createTriangles<unsigned int, std::vector<glitch::core::triangle3d<float>, glitch::core::SAllocator<glitch::core::triangle3d<float>, (glitch::memory::E_MEMORY_HINT)0> > >(unsigned short const*, unsigned int, glitch::video::SVertexStream const&, std::vector<glitch::core::triangle3d<float>, glitch::core::SAllocator<glitch::core::triangle3d<float>, (glitch::memory::E_MEMORY_HINT)0> >&)
; decoder-mode: arm
005924a8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005924ac  02 50 a0 e1                                      mov r5, r2
005924b0  bc 20 d2 e1                                      ldrh r2, [r2, #0xc]
005924b4  fc d0 4d e2                                      sub sp, sp, #0xfc
005924b8  00 40 a0 e1                                      mov r4, r0
005924bc  03 00 52 e3                                      cmp r2, #3
005924c0  01 80 a0 e1                                      mov r8, r1
005924c4  03 60 a0 e1                                      mov r6, r3
005924c8  ce 00 00 0a                                      beq #0x592808
005924cc  04 00 52 e3                                      cmp r2, #4
005924d0  66 00 00 0a                                      beq #0x592670
005924d4  02 00 52 e3                                      cmp r2, #2
005924d8  01 00 00 0a                                      beq #0x5924e4
005924dc  fc d0 8d e2                                      add sp, sp, #0xfc
005924e0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005924e4  00 00 95 e5                                      ldr r0, [r5]
005924e8  01 10 a0 e3                                      mov r1, #1
005924ec  7a 3d 00 eb                                      bl #0x5a1adc
005924f0  04 70 95 e5                                      ldr r7, [r5, #4]
005924f4  00 00 54 e3                                      cmp r4, #0
005924f8  07 70 80 e0                                      add r7, r0, r7
005924fc  9b 01 00 0a                                      beq #0x592b70
00592500  88 80 84 e0                                      add r8, r4, r8, lsl #1
00592504  08 00 54 e1                                      cmp r4, r8
00592508  0c 80 8d e5                                      str r8, [sp, #0xc]
0059250c  4b 00 00 0a                                      beq #0x592640
00592510  b0 20 8d e2                                      add r2, sp, #0xb0
00592514  00 80 a0 e3                                      mov r8, #0
00592518  14 20 8d e5                                      str r2, [sp, #0x14]
0059251c  10 50 8d e5                                      str r5, [sp, #0x10]
00592520  10 20 9d e5                                      ldr r2, [sp, #0x10]
00592524  b4 a0 d4 e1                                      ldrh sl, [r4, #4]
00592528  be 30 d2 e1                                      ldrh r3, [r2, #0xe]
0059252c  9a 03 0a e0                                      mul sl, sl, r3
00592530  0a 00 97 e7                                      ldr r0, [r7, sl]
00592534  08 30 8d e5                                      str r3, [sp, #8]
00592538  68 ef f5 eb                                      bl #0x30e2e0
0059253c  0a a0 87 e0                                      add sl, r7, sl
00592540  00 50 a0 e1                                      mov r5, r0
00592544  04 00 9a e5                                      ldr r0, [sl, #4]
00592548  64 ef f5 eb                                      bl #0x30e2e0
0059254c  b2 a0 d4 e1                                      ldrh sl, [r4, #2]
00592550  08 30 9d e5                                      ldr r3, [sp, #8]
00592554  00 b0 a0 e1                                      mov fp, r0
00592558  93 0a 0a e0                                      mul sl, r3, sl
0059255c  0a 00 97 e7                                      ldr r0, [r7, sl]
00592560  5e ef f5 eb                                      bl #0x30e2e0
00592564  0a a0 87 e0                                      add sl, r7, sl
00592568  00 90 a0 e1                                      mov sb, r0
0059256c  04 00 9a e5                                      ldr r0, [sl, #4]
00592570  5a ef f5 eb                                      bl #0x30e2e0
00592574  b0 20 d4 e1                                      ldrh r2, [r4]
00592578  08 30 9d e5                                      ldr r3, [sp, #8]
0059257c  00 a0 a0 e1                                      mov sl, r0
00592580  93 02 03 e0                                      mul r3, r3, r2
00592584  03 00 97 e7                                      ldr r0, [r7, r3]
00592588  03 30 87 e0                                      add r3, r7, r3
0059258c  08 30 8d e5                                      str r3, [sp, #8]
00592590  52 ef f5 eb                                      bl #0x30e2e0
00592594  08 30 9d e5                                      ldr r3, [sp, #8]
00592598  00 20 a0 e1                                      mov r2, r0
0059259c  04 00 93 e5                                      ldr r0, [r3, #4]
005925a0  04 20 8d e5                                      str r2, [sp, #4]
005925a4  4d ef f5 eb                                      bl #0x30e2e0
005925a8  0a 00 96 e9                                      ldmib r6, {r1, r3}
005925ac  04 20 9d e5                                      ldr r2, [sp, #4]
005925b0  b4 b0 8d e5                                      str fp, [sp, #0xb4]
005925b4  03 00 51 e1                                      cmp r1, r3
005925b8  bc 90 8d e5                                      str sb, [sp, #0xbc]
005925bc  cc 00 8d e5                                      str r0, [sp, #0xcc]
005925c0  c0 a0 8d e5                                      str sl, [sp, #0xc0]
005925c4  c8 20 8d e5                                      str r2, [sp, #0xc8]
005925c8  b8 80 8d e5                                      str r8, [sp, #0xb8]
005925cc  b0 50 8d e5                                      str r5, [sp, #0xb0]
005925d0  c4 80 8d e5                                      str r8, [sp, #0xc4]
005925d4  d0 80 8d e5                                      str r8, [sp, #0xd0]
005925d8  fe 00 00 0a                                      beq #0x5929d8
005925dc  00 50 81 e5                                      str r5, [r1]
005925e0  b4 30 9d e5                                      ldr r3, [sp, #0xb4]
005925e4  04 30 81 e5                                      str r3, [r1, #4]
005925e8  b8 30 9d e5                                      ldr r3, [sp, #0xb8]
005925ec  08 30 81 e5                                      str r3, [r1, #8]
005925f0  bc 30 9d e5                                      ldr r3, [sp, #0xbc]
005925f4  0c 30 81 e5                                      str r3, [r1, #0xc]
005925f8  c0 30 9d e5                                      ldr r3, [sp, #0xc0]
005925fc  10 30 81 e5                                      str r3, [r1, #0x10]
00592600  c4 30 9d e5                                      ldr r3, [sp, #0xc4]
00592604  14 30 81 e5                                      str r3, [r1, #0x14]
00592608  c8 30 9d e5                                      ldr r3, [sp, #0xc8]
0059260c  18 30 81 e5                                      str r3, [r1, #0x18]
00592610  cc 30 9d e5                                      ldr r3, [sp, #0xcc]
00592614  1c 30 81 e5                                      str r3, [r1, #0x1c]
00592618  d0 30 9d e5                                      ldr r3, [sp, #0xd0]
0059261c  20 30 81 e5                                      str r3, [r1, #0x20]
00592620  04 30 96 e5                                      ldr r3, [r6, #4]
00592624  24 30 83 e2                                      add r3, r3, #0x24
00592628  04 30 86 e5                                      str r3, [r6, #4]
0059262c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00592630  06 40 84 e2                                      add r4, r4, #6
00592634  04 00 53 e1                                      cmp r3, r4
00592638  b8 ff ff 1a                                      bne #0x592520
0059263c  10 50 9d e5                                      ldr r5, [sp, #0x10]
00592640  00 00 57 e3                                      cmp r7, #0
00592644  a4 ff ff 0a                                      beq #0x5924dc
00592648  00 40 95 e5                                      ldr r4, [r5]
0059264c  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
00592650  1f 20 03 e2                                      and r2, r3, #0x1f
00592654  01 00 52 e3                                      cmp r2, #1
00592658  cf 00 00 9a                                      bls #0x59299c
0059265c  01 20 42 e2                                      sub r2, r2, #1
00592660  1f 30 c3 e3                                      bic r3, r3, #0x1f
00592664  03 30 82 e1                                      orr r3, r2, r3
00592668  13 30 c4 e5                                      strb r3, [r4, #0x13]
0059266c  9a ff ff ea                                      b #0x5924dc
00592670  00 00 95 e5                                      ldr r0, [r5]
00592674  01 10 a0 e3                                      mov r1, #1
00592678  17 3d 00 eb                                      bl #0x5a1adc
0059267c  04 70 95 e5                                      ldr r7, [r5, #4]
00592680  00 00 54 e3                                      cmp r4, #0
00592684  07 70 80 e0                                      add r7, r0, r7
00592688  da 00 00 0a                                      beq #0x5929f8
0059268c  88 80 84 e0                                      add r8, r4, r8, lsl #1
00592690  08 00 54 e1                                      cmp r4, r8
00592694  14 80 8d e5                                      str r8, [sp, #0x14]
00592698  e8 ff ff 0a                                      beq #0x592640
0059269c  20 30 8d e2                                      add r3, sp, #0x20
005926a0  1c 30 8d e5                                      str r3, [sp, #0x1c]
005926a4  18 50 8d e5                                      str r5, [sp, #0x18]
005926a8  18 20 9d e5                                      ldr r2, [sp, #0x18]
005926ac  b4 80 d4 e1                                      ldrh r8, [r4, #4]
005926b0  be 30 d2 e1                                      ldrh r3, [r2, #0xe]
005926b4  98 03 08 e0                                      mul r8, r8, r3
005926b8  08 00 97 e7                                      ldr r0, [r7, r8]
005926bc  08 30 8d e5                                      str r3, [sp, #8]
005926c0  06 ef f5 eb                                      bl #0x30e2e0
005926c4  08 80 87 e0                                      add r8, r7, r8
005926c8  00 50 a0 e1                                      mov r5, r0
005926cc  04 00 98 e5                                      ldr r0, [r8, #4]
005926d0  02 ef f5 eb                                      bl #0x30e2e0
005926d4  00 b0 a0 e1                                      mov fp, r0
005926d8  08 00 98 e5                                      ldr r0, [r8, #8]
005926dc  ff ee f5 eb                                      bl #0x30e2e0
005926e0  b2 20 d4 e1                                      ldrh r2, [r4, #2]
005926e4  08 30 9d e5                                      ldr r3, [sp, #8]
005926e8  00 90 a0 e1                                      mov sb, r0
005926ec  93 02 02 e0                                      mul r2, r3, r2
005926f0  02 00 97 e7                                      ldr r0, [r7, r2]
005926f4  02 20 87 e0                                      add r2, r7, r2
005926f8  0c 20 8d e5                                      str r2, [sp, #0xc]
005926fc  f7 ee f5 eb                                      bl #0x30e2e0
00592700  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00592704  00 a0 a0 e1                                      mov sl, r0
00592708  04 00 92 e5                                      ldr r0, [r2, #4]
0059270c  f3 ee f5 eb                                      bl #0x30e2e0
00592710  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00592714  00 80 a0 e1                                      mov r8, r0
00592718  08 00 92 e5                                      ldr r0, [r2, #8]
0059271c  ef ee f5 eb                                      bl #0x30e2e0
00592720  b0 10 d4 e1                                      ldrh r1, [r4]
00592724  08 30 9d e5                                      ldr r3, [sp, #8]
00592728  00 20 a0 e1                                      mov r2, r0
0059272c  93 01 03 e0                                      mul r3, r3, r1
00592730  03 00 97 e7                                      ldr r0, [r7, r3]
00592734  03 30 87 e0                                      add r3, r7, r3
00592738  04 20 8d e5                                      str r2, [sp, #4]
0059273c  0c 30 8d e5                                      str r3, [sp, #0xc]
00592740  e6 ee f5 eb                                      bl #0x30e2e0
00592744  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00592748  00 c0 a0 e1                                      mov ip, r0
0059274c  04 00 93 e5                                      ldr r0, [r3, #4]
00592750  08 c0 8d e5                                      str ip, [sp, #8]
00592754  e1 ee f5 eb                                      bl #0x30e2e0
00592758  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0059275c  10 00 8d e5                                      str r0, [sp, #0x10]
00592760  08 00 93 e5                                      ldr r0, [r3, #8]
00592764  dd ee f5 eb                                      bl #0x30e2e0
00592768  0a 00 96 e9                                      ldmib r6, {r1, r3}
0059276c  40 00 8d e5                                      str r0, [sp, #0x40]
00592770  24 b0 8d e5                                      str fp, [sp, #0x24]
00592774  28 90 8d e5                                      str sb, [sp, #0x28]
00592778  04 10 9d e9                                      ldmib sp, {r2, ip}
0059277c  03 00 51 e1                                      cmp r1, r3
00592780  34 20 8d e5                                      str r2, [sp, #0x34]
00592784  10 20 9d e5                                      ldr r2, [sp, #0x10]
00592788  2c a0 8d e5                                      str sl, [sp, #0x2c]
0059278c  30 80 8d e5                                      str r8, [sp, #0x30]
00592790  38 c0 8d e5                                      str ip, [sp, #0x38]
00592794  3c 20 8d e5                                      str r2, [sp, #0x3c]
00592798  20 50 8d e5                                      str r5, [sp, #0x20]
0059279c  91 00 00 0a                                      beq #0x5929e8
005927a0  00 50 81 e5                                      str r5, [r1]
005927a4  24 30 9d e5                                      ldr r3, [sp, #0x24]
005927a8  04 30 81 e5                                      str r3, [r1, #4]
005927ac  28 30 9d e5                                      ldr r3, [sp, #0x28]
005927b0  08 30 81 e5                                      str r3, [r1, #8]
005927b4  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
005927b8  0c 30 81 e5                                      str r3, [r1, #0xc]
005927bc  30 30 9d e5                                      ldr r3, [sp, #0x30]
005927c0  10 30 81 e5                                      str r3, [r1, #0x10]
005927c4  34 30 9d e5                                      ldr r3, [sp, #0x34]
005927c8  14 30 81 e5                                      str r3, [r1, #0x14]
005927cc  38 30 9d e5                                      ldr r3, [sp, #0x38]
005927d0  18 30 81 e5                                      str r3, [r1, #0x18]
005927d4  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
005927d8  1c 30 81 e5                                      str r3, [r1, #0x1c]
005927dc  40 30 9d e5                                      ldr r3, [sp, #0x40]
005927e0  20 30 81 e5                                      str r3, [r1, #0x20]
005927e4  04 30 96 e5                                      ldr r3, [r6, #4]
005927e8  24 30 83 e2                                      add r3, r3, #0x24
005927ec  04 30 86 e5                                      str r3, [r6, #4]
005927f0  14 30 9d e5                                      ldr r3, [sp, #0x14]
005927f4  06 40 84 e2                                      add r4, r4, #6
005927f8  04 00 53 e1                                      cmp r3, r4
005927fc  a9 ff ff 1a                                      bne #0x5926a8
00592800  18 50 9d e5                                      ldr r5, [sp, #0x18]
00592804  8d ff ff ea                                      b #0x592640
00592808  00 00 95 e5                                      ldr r0, [r5]
0059280c  01 10 a0 e3                                      mov r1, #1
00592810  b1 3c 00 eb                                      bl #0x5a1adc
00592814  04 70 95 e5                                      ldr r7, [r5, #4]
00592818  00 00 54 e3                                      cmp r4, #0
0059281c  07 70 80 e0                                      add r7, r0, r7
00592820  22 01 00 0a                                      beq #0x592cb0
00592824  88 80 84 e0                                      add r8, r4, r8, lsl #1
00592828  08 00 54 e1                                      cmp r4, r8
0059282c  14 80 8d e5                                      str r8, [sp, #0x14]
00592830  82 ff ff 0a                                      beq #0x592640
00592834  68 30 8d e2                                      add r3, sp, #0x68
00592838  1c 30 8d e5                                      str r3, [sp, #0x1c]
0059283c  18 50 8d e5                                      str r5, [sp, #0x18]
00592840  18 20 9d e5                                      ldr r2, [sp, #0x18]
00592844  b4 80 d4 e1                                      ldrh r8, [r4, #4]
00592848  be 30 d2 e1                                      ldrh r3, [r2, #0xe]
0059284c  98 03 08 e0                                      mul r8, r8, r3
00592850  08 00 97 e7                                      ldr r0, [r7, r8]
00592854  08 30 8d e5                                      str r3, [sp, #8]
00592858  a0 ee f5 eb                                      bl #0x30e2e0
0059285c  08 80 87 e0                                      add r8, r7, r8
00592860  00 50 a0 e1                                      mov r5, r0
00592864  04 00 98 e5                                      ldr r0, [r8, #4]
00592868  9c ee f5 eb                                      bl #0x30e2e0
0059286c  00 b0 a0 e1                                      mov fp, r0
00592870  08 00 98 e5                                      ldr r0, [r8, #8]
00592874  99 ee f5 eb                                      bl #0x30e2e0
00592878  b2 20 d4 e1                                      ldrh r2, [r4, #2]
0059287c  08 30 9d e5                                      ldr r3, [sp, #8]
00592880  00 90 a0 e1                                      mov sb, r0
00592884  93 02 02 e0                                      mul r2, r3, r2
00592888  02 00 97 e7                                      ldr r0, [r7, r2]
0059288c  02 20 87 e0                                      add r2, r7, r2
00592890  0c 20 8d e5                                      str r2, [sp, #0xc]
00592894  91 ee f5 eb                                      bl #0x30e2e0
00592898  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0059289c  00 a0 a0 e1                                      mov sl, r0
005928a0  04 00 92 e5                                      ldr r0, [r2, #4]
005928a4  8d ee f5 eb                                      bl #0x30e2e0
005928a8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005928ac  00 80 a0 e1                                      mov r8, r0
005928b0  08 00 92 e5                                      ldr r0, [r2, #8]
005928b4  89 ee f5 eb                                      bl #0x30e2e0
005928b8  b0 10 d4 e1                                      ldrh r1, [r4]
005928bc  08 30 9d e5                                      ldr r3, [sp, #8]
005928c0  00 20 a0 e1                                      mov r2, r0
005928c4  93 01 03 e0                                      mul r3, r3, r1
005928c8  03 00 97 e7                                      ldr r0, [r7, r3]
005928cc  03 30 87 e0                                      add r3, r7, r3
005928d0  04 20 8d e5                                      str r2, [sp, #4]
005928d4  0c 30 8d e5                                      str r3, [sp, #0xc]
005928d8  80 ee f5 eb                                      bl #0x30e2e0
005928dc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005928e0  00 c0 a0 e1                                      mov ip, r0
005928e4  04 00 93 e5                                      ldr r0, [r3, #4]
005928e8  08 c0 8d e5                                      str ip, [sp, #8]
005928ec  7b ee f5 eb                                      bl #0x30e2e0
005928f0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005928f4  10 00 8d e5                                      str r0, [sp, #0x10]
005928f8  08 00 93 e5                                      ldr r0, [r3, #8]
005928fc  77 ee f5 eb                                      bl #0x30e2e0
00592900  0a 00 96 e9                                      ldmib r6, {r1, r3}
00592904  88 00 8d e5                                      str r0, [sp, #0x88]
00592908  6c b0 8d e5                                      str fp, [sp, #0x6c]
0059290c  70 90 8d e5                                      str sb, [sp, #0x70]
00592910  04 10 9d e9                                      ldmib sp, {r2, ip}
00592914  03 00 51 e1                                      cmp r1, r3
00592918  7c 20 8d e5                                      str r2, [sp, #0x7c]
0059291c  10 20 9d e5                                      ldr r2, [sp, #0x10]
00592920  74 a0 8d e5                                      str sl, [sp, #0x74]
00592924  78 80 8d e5                                      str r8, [sp, #0x78]
00592928  80 c0 8d e5                                      str ip, [sp, #0x80]
0059292c  84 20 8d e5                                      str r2, [sp, #0x84]
00592930  68 50 8d e5                                      str r5, [sp, #0x68]
00592934  23 00 00 0a                                      beq #0x5929c8
00592938  00 50 81 e5                                      str r5, [r1]
0059293c  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
00592940  04 30 81 e5                                      str r3, [r1, #4]
00592944  70 30 9d e5                                      ldr r3, [sp, #0x70]
00592948  08 30 81 e5                                      str r3, [r1, #8]
0059294c  74 30 9d e5                                      ldr r3, [sp, #0x74]
00592950  0c 30 81 e5                                      str r3, [r1, #0xc]
00592954  78 30 9d e5                                      ldr r3, [sp, #0x78]
00592958  10 30 81 e5                                      str r3, [r1, #0x10]
0059295c  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
00592960  14 30 81 e5                                      str r3, [r1, #0x14]
00592964  80 30 9d e5                                      ldr r3, [sp, #0x80]
00592968  18 30 81 e5                                      str r3, [r1, #0x18]
0059296c  84 30 9d e5                                      ldr r3, [sp, #0x84]
00592970  1c 30 81 e5                                      str r3, [r1, #0x1c]
00592974  88 30 9d e5                                      ldr r3, [sp, #0x88]
00592978  20 30 81 e5                                      str r3, [r1, #0x20]
0059297c  04 30 96 e5                                      ldr r3, [r6, #4]
00592980  24 30 83 e2                                      add r3, r3, #0x24
00592984  04 30 86 e5                                      str r3, [r6, #4]
00592988  14 30 9d e5                                      ldr r3, [sp, #0x14]
0059298c  06 40 84 e2                                      add r4, r4, #6
00592990  04 00 53 e1                                      cmp r3, r4
00592994  a9 ff ff 1a                                      bne #0x592840
00592998  98 ff ff ea                                      b #0x592800
0059299c  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
005929a0  20 00 13 e3                                      tst r3, #0x20
005929a4  02 00 00 1a                                      bne #0x5929b4
005929a8  00 30 a0 e3                                      mov r3, #0
005929ac  13 30 c4 e5                                      strb r3, [r4, #0x13]
005929b0  c9 fe ff ea                                      b #0x5924dc
005929b4  00 30 94 e5                                      ldr r3, [r4]
005929b8  04 00 a0 e1                                      mov r0, r4
005929bc  0f e0 a0 e1                                      mov lr, pc
005929c0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
005929c4  f7 ff ff ea                                      b #0x5929a8
005929c8  06 00 a0 e1                                      mov r0, r6
005929cc  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
005929d0  18 fa ff eb                                      bl #0x591238
005929d4  eb ff ff ea                                      b #0x592988
005929d8  06 00 a0 e1                                      mov r0, r6
005929dc  14 20 9d e5                                      ldr r2, [sp, #0x14]
005929e0  14 fa ff eb                                      bl #0x591238
005929e4  10 ff ff ea                                      b #0x59262c
005929e8  06 00 a0 e1                                      mov r0, r6
005929ec  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
005929f0  10 fa ff eb                                      bl #0x591238
005929f4  7d ff ff ea                                      b #0x5927f0
005929f8  00 00 58 e3                                      cmp r8, #0
005929fc  0f ff ff 0a                                      beq #0x592640
00592a00  44 20 8d e2                                      add r2, sp, #0x44
00592a04  be 30 d5 e1                                      ldrh r3, [r5, #0xe]
00592a08  1c 20 8d e5                                      str r2, [sp, #0x1c]
00592a0c  14 80 8d e5                                      str r8, [sp, #0x14]
00592a10  18 50 8d e5                                      str r5, [sp, #0x18]
00592a14  01 00 00 ea                                      b #0x592a20
00592a18  18 20 9d e5                                      ldr r2, [sp, #0x18]
00592a1c  be 30 d2 e1                                      ldrh r3, [r2, #0xe]
00592a20  02 80 84 e2                                      add r8, r4, #2
00592a24  93 08 08 e0                                      mul r8, r3, r8
00592a28  08 00 97 e7                                      ldr r0, [r7, r8]
00592a2c  08 30 8d e5                                      str r3, [sp, #8]
00592a30  2a ee f5 eb                                      bl #0x30e2e0
00592a34  08 80 87 e0                                      add r8, r7, r8
00592a38  00 50 a0 e1                                      mov r5, r0
00592a3c  04 00 98 e5                                      ldr r0, [r8, #4]
00592a40  26 ee f5 eb                                      bl #0x30e2e0
00592a44  00 b0 a0 e1                                      mov fp, r0
00592a48  08 00 98 e5                                      ldr r0, [r8, #8]
00592a4c  23 ee f5 eb                                      bl #0x30e2e0
00592a50  08 30 9d e5                                      ldr r3, [sp, #8]
00592a54  00 90 a0 e1                                      mov sb, r0
00592a58  94 33 22 e0                                      mla r2, r4, r3, r3
00592a5c  02 00 97 e7                                      ldr r0, [r7, r2]
00592a60  02 20 87 e0                                      add r2, r7, r2
00592a64  0c 20 8d e5                                      str r2, [sp, #0xc]
00592a68  1c ee f5 eb                                      bl #0x30e2e0
00592a6c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00592a70  00 a0 a0 e1                                      mov sl, r0
00592a74  04 00 92 e5                                      ldr r0, [r2, #4]
00592a78  18 ee f5 eb                                      bl #0x30e2e0
00592a7c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00592a80  00 80 a0 e1                                      mov r8, r0
00592a84  08 00 92 e5                                      ldr r0, [r2, #8]
00592a88  14 ee f5 eb                                      bl #0x30e2e0
00592a8c  08 30 9d e5                                      ldr r3, [sp, #8]
00592a90  00 20 a0 e1                                      mov r2, r0
00592a94  94 03 03 e0                                      mul r3, r4, r3
00592a98  03 00 97 e7                                      ldr r0, [r7, r3]
00592a9c  03 30 87 e0                                      add r3, r7, r3
00592aa0  04 20 8d e5                                      str r2, [sp, #4]
00592aa4  0c 30 8d e5                                      str r3, [sp, #0xc]
00592aa8  0c ee f5 eb                                      bl #0x30e2e0
00592aac  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00592ab0  00 c0 a0 e1                                      mov ip, r0
00592ab4  04 00 93 e5                                      ldr r0, [r3, #4]
00592ab8  08 c0 8d e5                                      str ip, [sp, #8]
00592abc  07 ee f5 eb                                      bl #0x30e2e0
00592ac0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00592ac4  10 00 8d e5                                      str r0, [sp, #0x10]
00592ac8  08 00 93 e5                                      ldr r0, [r3, #8]
00592acc  03 ee f5 eb                                      bl #0x30e2e0
00592ad0  04 10 9d e9                                      ldmib sp, {r2, ip}
00592ad4  0a 00 96 e9                                      ldmib r6, {r1, r3}
00592ad8  58 20 8d e5                                      str r2, [sp, #0x58]
00592adc  48 b0 8d e5                                      str fp, [sp, #0x48]
00592ae0  4c 90 8d e5                                      str sb, [sp, #0x4c]
00592ae4  64 00 8d e5                                      str r0, [sp, #0x64]
00592ae8  50 a0 8d e5                                      str sl, [sp, #0x50]
00592aec  54 80 8d e5                                      str r8, [sp, #0x54]
00592af0  5c c0 8d e5                                      str ip, [sp, #0x5c]
00592af4  10 20 9d e5                                      ldr r2, [sp, #0x10]
00592af8  03 00 51 e1                                      cmp r1, r3
00592afc  44 50 8d e5                                      str r5, [sp, #0x44]
00592b00  60 20 8d e5                                      str r2, [sp, #0x60]
00592b04  c7 00 00 0a                                      beq #0x592e28
00592b08  00 50 81 e5                                      str r5, [r1]
00592b0c  48 30 9d e5                                      ldr r3, [sp, #0x48]
00592b10  04 30 81 e5                                      str r3, [r1, #4]
00592b14  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
00592b18  08 30 81 e5                                      str r3, [r1, #8]
00592b1c  50 30 9d e5                                      ldr r3, [sp, #0x50]
00592b20  0c 30 81 e5                                      str r3, [r1, #0xc]
00592b24  54 30 9d e5                                      ldr r3, [sp, #0x54]
00592b28  10 30 81 e5                                      str r3, [r1, #0x10]
00592b2c  58 30 9d e5                                      ldr r3, [sp, #0x58]
00592b30  14 30 81 e5                                      str r3, [r1, #0x14]
00592b34  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
00592b38  18 30 81 e5                                      str r3, [r1, #0x18]
00592b3c  60 30 9d e5                                      ldr r3, [sp, #0x60]
00592b40  1c 30 81 e5                                      str r3, [r1, #0x1c]
00592b44  64 30 9d e5                                      ldr r3, [sp, #0x64]
00592b48  20 30 81 e5                                      str r3, [r1, #0x20]
00592b4c  04 30 96 e5                                      ldr r3, [r6, #4]
00592b50  24 30 83 e2                                      add r3, r3, #0x24
00592b54  04 30 86 e5                                      str r3, [r6, #4]
00592b58  14 30 9d e5                                      ldr r3, [sp, #0x14]
00592b5c  03 40 84 e2                                      add r4, r4, #3
00592b60  04 00 53 e1                                      cmp r3, r4
00592b64  ab ff ff 8a                                      bhi #0x592a18
00592b68  18 50 9d e5                                      ldr r5, [sp, #0x18]
00592b6c  b3 fe ff ea                                      b #0x592640
00592b70  00 00 58 e3                                      cmp r8, #0
00592b74  b1 fe ff 0a                                      beq #0x592640
00592b78  d4 20 8d e2                                      add r2, sp, #0xd4
00592b7c  be 30 d5 e1                                      ldrh r3, [r5, #0xe]
00592b80  00 a0 a0 e3                                      mov sl, #0
00592b84  14 20 8d e5                                      str r2, [sp, #0x14]
00592b88  0c 80 8d e5                                      str r8, [sp, #0xc]
00592b8c  10 50 8d e5                                      str r5, [sp, #0x10]
00592b90  01 00 00 ea                                      b #0x592b9c
00592b94  10 20 9d e5                                      ldr r2, [sp, #0x10]
00592b98  be 30 d2 e1                                      ldrh r3, [r2, #0xe]
00592b9c  02 80 84 e2                                      add r8, r4, #2
00592ba0  93 08 08 e0                                      mul r8, r3, r8
00592ba4  08 00 97 e7                                      ldr r0, [r7, r8]
00592ba8  08 30 8d e5                                      str r3, [sp, #8]
00592bac  cb ed f5 eb                                      bl #0x30e2e0
00592bb0  08 80 87 e0                                      add r8, r7, r8
00592bb4  00 50 a0 e1                                      mov r5, r0
00592bb8  04 00 98 e5                                      ldr r0, [r8, #4]
00592bbc  c7 ed f5 eb                                      bl #0x30e2e0
00592bc0  08 30 9d e5                                      ldr r3, [sp, #8]
00592bc4  00 b0 a0 e1                                      mov fp, r0
00592bc8  94 33 28 e0                                      mla r8, r4, r3, r3
00592bcc  08 00 97 e7                                      ldr r0, [r7, r8]
00592bd0  c2 ed f5 eb                                      bl #0x30e2e0
00592bd4  08 80 87 e0                                      add r8, r7, r8
00592bd8  00 90 a0 e1                                      mov sb, r0
00592bdc  04 00 98 e5                                      ldr r0, [r8, #4]
00592be0  be ed f5 eb                                      bl #0x30e2e0
00592be4  08 30 9d e5                                      ldr r3, [sp, #8]
00592be8  00 80 a0 e1                                      mov r8, r0
00592bec  94 03 03 e0                                      mul r3, r4, r3
00592bf0  03 00 97 e7                                      ldr r0, [r7, r3]
00592bf4  03 30 87 e0                                      add r3, r7, r3
00592bf8  08 30 8d e5                                      str r3, [sp, #8]
00592bfc  b7 ed f5 eb                                      bl #0x30e2e0
00592c00  08 30 9d e5                                      ldr r3, [sp, #8]
00592c04  00 20 a0 e1                                      mov r2, r0
00592c08  04 00 93 e5                                      ldr r0, [r3, #4]
00592c0c  04 20 8d e5                                      str r2, [sp, #4]
00592c10  b2 ed f5 eb                                      bl #0x30e2e0
00592c14  0a 00 96 e9                                      ldmib r6, {r1, r3}
00592c18  04 20 9d e5                                      ldr r2, [sp, #4]
00592c1c  d8 b0 8d e5                                      str fp, [sp, #0xd8]
00592c20  03 00 51 e1                                      cmp r1, r3
00592c24  e0 90 8d e5                                      str sb, [sp, #0xe0]
00592c28  e4 80 8d e5                                      str r8, [sp, #0xe4]
00592c2c  f0 00 8d e5                                      str r0, [sp, #0xf0]
00592c30  ec 20 8d e5                                      str r2, [sp, #0xec]
00592c34  dc a0 8d e5                                      str sl, [sp, #0xdc]
00592c38  e8 a0 8d e5                                      str sl, [sp, #0xe8]
00592c3c  d4 50 8d e5                                      str r5, [sp, #0xd4]
00592c40  f4 a0 8d e5                                      str sl, [sp, #0xf4]
00592c44  7b 00 00 0a                                      beq #0x592e38
00592c48  00 50 81 e5                                      str r5, [r1]
00592c4c  d8 30 9d e5                                      ldr r3, [sp, #0xd8]
00592c50  04 30 81 e5                                      str r3, [r1, #4]
00592c54  dc 30 9d e5                                      ldr r3, [sp, #0xdc]
00592c58  08 30 81 e5                                      str r3, [r1, #8]
00592c5c  e0 30 9d e5                                      ldr r3, [sp, #0xe0]
00592c60  0c 30 81 e5                                      str r3, [r1, #0xc]
00592c64  e4 30 9d e5                                      ldr r3, [sp, #0xe4]
00592c68  10 30 81 e5                                      str r3, [r1, #0x10]
00592c6c  e8 30 9d e5                                      ldr r3, [sp, #0xe8]
00592c70  14 30 81 e5                                      str r3, [r1, #0x14]
00592c74  ec 30 9d e5                                      ldr r3, [sp, #0xec]
00592c78  18 30 81 e5                                      str r3, [r1, #0x18]
00592c7c  f0 30 9d e5                                      ldr r3, [sp, #0xf0]
00592c80  1c 30 81 e5                                      str r3, [r1, #0x1c]
00592c84  f4 30 9d e5                                      ldr r3, [sp, #0xf4]
00592c88  20 30 81 e5                                      str r3, [r1, #0x20]
00592c8c  04 30 96 e5                                      ldr r3, [r6, #4]
00592c90  24 30 83 e2                                      add r3, r3, #0x24
00592c94  04 30 86 e5                                      str r3, [r6, #4]
00592c98  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00592c9c  03 40 84 e2                                      add r4, r4, #3
00592ca0  04 00 53 e1                                      cmp r3, r4
00592ca4  ba ff ff 8a                                      bhi #0x592b94
00592ca8  10 50 9d e5                                      ldr r5, [sp, #0x10]
00592cac  63 fe ff ea                                      b #0x592640
00592cb0  00 00 58 e3                                      cmp r8, #0
00592cb4  61 fe ff 0a                                      beq #0x592640
00592cb8  8c 20 8d e2                                      add r2, sp, #0x8c
00592cbc  be 30 d5 e1                                      ldrh r3, [r5, #0xe]
00592cc0  1c 20 8d e5                                      str r2, [sp, #0x1c]
00592cc4  14 80 8d e5                                      str r8, [sp, #0x14]
00592cc8  18 50 8d e5                                      str r5, [sp, #0x18]
00592ccc  01 00 00 ea                                      b #0x592cd8
00592cd0  18 20 9d e5                                      ldr r2, [sp, #0x18]
00592cd4  be 30 d2 e1                                      ldrh r3, [r2, #0xe]
00592cd8  02 80 84 e2                                      add r8, r4, #2
00592cdc  93 08 08 e0                                      mul r8, r3, r8
00592ce0  08 00 97 e7                                      ldr r0, [r7, r8]
00592ce4  08 30 8d e5                                      str r3, [sp, #8]
00592ce8  7c ed f5 eb                                      bl #0x30e2e0
00592cec  08 80 87 e0                                      add r8, r7, r8
00592cf0  00 50 a0 e1                                      mov r5, r0
00592cf4  04 00 98 e5                                      ldr r0, [r8, #4]
00592cf8  78 ed f5 eb                                      bl #0x30e2e0
00592cfc  00 b0 a0 e1                                      mov fp, r0
00592d00  08 00 98 e5                                      ldr r0, [r8, #8]
00592d04  75 ed f5 eb                                      bl #0x30e2e0
00592d08  08 30 9d e5                                      ldr r3, [sp, #8]
00592d0c  00 90 a0 e1                                      mov sb, r0
00592d10  94 33 22 e0                                      mla r2, r4, r3, r3
00592d14  02 00 97 e7                                      ldr r0, [r7, r2]
00592d18  02 20 87 e0                                      add r2, r7, r2
00592d1c  0c 20 8d e5                                      str r2, [sp, #0xc]
00592d20  6e ed f5 eb                                      bl #0x30e2e0
00592d24  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00592d28  00 a0 a0 e1                                      mov sl, r0
00592d2c  04 00 92 e5                                      ldr r0, [r2, #4]
00592d30  6a ed f5 eb                                      bl #0x30e2e0
00592d34  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00592d38  00 80 a0 e1                                      mov r8, r0
00592d3c  08 00 92 e5                                      ldr r0, [r2, #8]
00592d40  66 ed f5 eb                                      bl #0x30e2e0
00592d44  08 30 9d e5                                      ldr r3, [sp, #8]
00592d48  00 20 a0 e1                                      mov r2, r0
00592d4c  94 03 03 e0                                      mul r3, r4, r3
00592d50  03 00 97 e7                                      ldr r0, [r7, r3]
00592d54  03 30 87 e0                                      add r3, r7, r3
00592d58  04 20 8d e5                                      str r2, [sp, #4]
00592d5c  0c 30 8d e5                                      str r3, [sp, #0xc]
00592d60  5e ed f5 eb                                      bl #0x30e2e0
00592d64  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00592d68  00 c0 a0 e1                                      mov ip, r0
00592d6c  04 00 93 e5                                      ldr r0, [r3, #4]
00592d70  08 c0 8d e5                                      str ip, [sp, #8]
00592d74  59 ed f5 eb                                      bl #0x30e2e0
00592d78  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00592d7c  10 00 8d e5                                      str r0, [sp, #0x10]
00592d80  08 00 93 e5                                      ldr r0, [r3, #8]
00592d84  55 ed f5 eb                                      bl #0x30e2e0
00592d88  04 10 9d e9                                      ldmib sp, {r2, ip}
00592d8c  0a 00 96 e9                                      ldmib r6, {r1, r3}
00592d90  a0 20 8d e5                                      str r2, [sp, #0xa0]
00592d94  90 b0 8d e5                                      str fp, [sp, #0x90]
00592d98  94 90 8d e5                                      str sb, [sp, #0x94]
00592d9c  ac 00 8d e5                                      str r0, [sp, #0xac]
00592da0  98 a0 8d e5                                      str sl, [sp, #0x98]
00592da4  9c 80 8d e5                                      str r8, [sp, #0x9c]
00592da8  a4 c0 8d e5                                      str ip, [sp, #0xa4]
00592dac  10 20 9d e5                                      ldr r2, [sp, #0x10]
00592db0  03 00 51 e1                                      cmp r1, r3
00592db4  8c 50 8d e5                                      str r5, [sp, #0x8c]
00592db8  a8 20 8d e5                                      str r2, [sp, #0xa8]
00592dbc  21 00 00 0a                                      beq #0x592e48
00592dc0  00 50 81 e5                                      str r5, [r1]
00592dc4  90 30 9d e5                                      ldr r3, [sp, #0x90]
00592dc8  04 30 81 e5                                      str r3, [r1, #4]
00592dcc  94 30 9d e5                                      ldr r3, [sp, #0x94]
00592dd0  08 30 81 e5                                      str r3, [r1, #8]
00592dd4  98 30 9d e5                                      ldr r3, [sp, #0x98]
00592dd8  0c 30 81 e5                                      str r3, [r1, #0xc]
00592ddc  9c 30 9d e5                                      ldr r3, [sp, #0x9c]
00592de0  10 30 81 e5                                      str r3, [r1, #0x10]
00592de4  a0 30 9d e5                                      ldr r3, [sp, #0xa0]
00592de8  14 30 81 e5                                      str r3, [r1, #0x14]
00592dec  a4 30 9d e5                                      ldr r3, [sp, #0xa4]
00592df0  18 30 81 e5                                      str r3, [r1, #0x18]
00592df4  a8 30 9d e5                                      ldr r3, [sp, #0xa8]
00592df8  1c 30 81 e5                                      str r3, [r1, #0x1c]
00592dfc  ac 30 9d e5                                      ldr r3, [sp, #0xac]
00592e00  20 30 81 e5                                      str r3, [r1, #0x20]
00592e04  04 30 96 e5                                      ldr r3, [r6, #4]
00592e08  24 30 83 e2                                      add r3, r3, #0x24
00592e0c  04 30 86 e5                                      str r3, [r6, #4]
00592e10  14 30 9d e5                                      ldr r3, [sp, #0x14]
00592e14  03 40 84 e2                                      add r4, r4, #3
00592e18  04 00 53 e1                                      cmp r3, r4
00592e1c  ab ff ff 8a                                      bhi #0x592cd0
00592e20  18 50 9d e5                                      ldr r5, [sp, #0x18]
00592e24  05 fe ff ea                                      b #0x592640
00592e28  06 00 a0 e1                                      mov r0, r6
00592e2c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00592e30  00 f9 ff eb                                      bl #0x591238
00592e34  47 ff ff ea                                      b #0x592b58
00592e38  06 00 a0 e1                                      mov r0, r6
00592e3c  14 20 9d e5                                      ldr r2, [sp, #0x14]
00592e40  fc f8 ff eb                                      bl #0x591238
00592e44  93 ff ff ea                                      b #0x592c98
00592e48  06 00 a0 e1                                      mov r0, r6
00592e4c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00592e50  f8 f8 ff eb                                      bl #0x591238
00592e54  ed ff ff ea                                      b #0x592e10

; FUNCTION 0x00592e58, declared_size=2480, range_size=2480, mode=arm
; class-group: void glitch::scene
; alias: _ZN6glitch5scene12_GLOBAL__N_115createTrianglesIaSt6vectorINS_4core10triangle3dIfEENS4_10SAllocatorIS6_LNS_6memory13E_MEMORY_HINTE0EEEEEEvPKtjRKNS_5video13SVertexStreamERT0_
; demangled: void glitch::scene::(anonymous namespace)::createTriangles<signed char, std::vector<glitch::core::triangle3d<float>, glitch::core::SAllocator<glitch::core::triangle3d<float>, (glitch::memory::E_MEMORY_HINT)0> > >(unsigned short const*, unsigned int, glitch::video::SVertexStream const&, std::vector<glitch::core::triangle3d<float>, glitch::core::SAllocator<glitch::core::triangle3d<float>, (glitch::memory::E_MEMORY_HINT)0> >&)
; decoder-mode: arm
00592e58  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00592e5c  02 50 a0 e1                                      mov r5, r2
00592e60  bc 20 d2 e1                                      ldrh r2, [r2, #0xc]
00592e64  fc d0 4d e2                                      sub sp, sp, #0xfc
00592e68  00 40 a0 e1                                      mov r4, r0
00592e6c  03 00 52 e3                                      cmp r2, #3
00592e70  01 80 a0 e1                                      mov r8, r1
00592e74  03 60 a0 e1                                      mov r6, r3
00592e78  ce 00 00 0a                                      beq #0x5931b8
00592e7c  04 00 52 e3                                      cmp r2, #4
00592e80  66 00 00 0a                                      beq #0x593020
00592e84  02 00 52 e3                                      cmp r2, #2
00592e88  01 00 00 0a                                      beq #0x592e94
00592e8c  fc d0 8d e2                                      add sp, sp, #0xfc
00592e90  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00592e94  00 00 95 e5                                      ldr r0, [r5]
00592e98  01 10 a0 e3                                      mov r1, #1
00592e9c  0e 3b 00 eb                                      bl #0x5a1adc
00592ea0  04 70 95 e5                                      ldr r7, [r5, #4]
00592ea4  00 00 54 e3                                      cmp r4, #0
00592ea8  07 70 80 e0                                      add r7, r0, r7
00592eac  9b 01 00 0a                                      beq #0x593520
00592eb0  88 80 84 e0                                      add r8, r4, r8, lsl #1
00592eb4  08 00 54 e1                                      cmp r4, r8
00592eb8  0c 80 8d e5                                      str r8, [sp, #0xc]
00592ebc  4b 00 00 0a                                      beq #0x592ff0
00592ec0  b0 20 8d e2                                      add r2, sp, #0xb0
00592ec4  00 80 a0 e3                                      mov r8, #0
00592ec8  14 20 8d e5                                      str r2, [sp, #0x14]
00592ecc  10 50 8d e5                                      str r5, [sp, #0x10]
00592ed0  10 20 9d e5                                      ldr r2, [sp, #0x10]
00592ed4  b4 a0 d4 e1                                      ldrh sl, [r4, #4]
00592ed8  be 30 d2 e1                                      ldrh r3, [r2, #0xe]
00592edc  9a 03 0a e0                                      mul sl, sl, r3
00592ee0  da 00 97 e1                                      ldrsb r0, [r7, sl]
00592ee4  08 30 8d e5                                      str r3, [sp, #8]
00592ee8  9d ee f5 eb                                      bl #0x30e964
00592eec  0a a0 87 e0                                      add sl, r7, sl
00592ef0  00 50 a0 e1                                      mov r5, r0
00592ef4  d1 00 da e1                                      ldrsb r0, [sl, #1]
00592ef8  99 ee f5 eb                                      bl #0x30e964
00592efc  b2 a0 d4 e1                                      ldrh sl, [r4, #2]
00592f00  08 30 9d e5                                      ldr r3, [sp, #8]
00592f04  00 b0 a0 e1                                      mov fp, r0
00592f08  93 0a 0a e0                                      mul sl, r3, sl
00592f0c  da 00 97 e1                                      ldrsb r0, [r7, sl]
00592f10  93 ee f5 eb                                      bl #0x30e964
00592f14  0a a0 87 e0                                      add sl, r7, sl
00592f18  00 90 a0 e1                                      mov sb, r0
00592f1c  d1 00 da e1                                      ldrsb r0, [sl, #1]
00592f20  8f ee f5 eb                                      bl #0x30e964
00592f24  b0 20 d4 e1                                      ldrh r2, [r4]
00592f28  08 30 9d e5                                      ldr r3, [sp, #8]
00592f2c  00 a0 a0 e1                                      mov sl, r0
00592f30  93 02 03 e0                                      mul r3, r3, r2
00592f34  d3 00 97 e1                                      ldrsb r0, [r7, r3]
00592f38  03 30 87 e0                                      add r3, r7, r3
00592f3c  08 30 8d e5                                      str r3, [sp, #8]
00592f40  87 ee f5 eb                                      bl #0x30e964
00592f44  08 30 9d e5                                      ldr r3, [sp, #8]
00592f48  00 20 a0 e1                                      mov r2, r0
00592f4c  d1 00 d3 e1                                      ldrsb r0, [r3, #1]
00592f50  04 20 8d e5                                      str r2, [sp, #4]
00592f54  82 ee f5 eb                                      bl #0x30e964
00592f58  0a 00 96 e9                                      ldmib r6, {r1, r3}
00592f5c  04 20 9d e5                                      ldr r2, [sp, #4]
00592f60  b4 b0 8d e5                                      str fp, [sp, #0xb4]
00592f64  03 00 51 e1                                      cmp r1, r3
00592f68  bc 90 8d e5                                      str sb, [sp, #0xbc]
00592f6c  cc 00 8d e5                                      str r0, [sp, #0xcc]
00592f70  c0 a0 8d e5                                      str sl, [sp, #0xc0]
00592f74  c8 20 8d e5                                      str r2, [sp, #0xc8]
00592f78  b8 80 8d e5                                      str r8, [sp, #0xb8]
00592f7c  b0 50 8d e5                                      str r5, [sp, #0xb0]
00592f80  c4 80 8d e5                                      str r8, [sp, #0xc4]
00592f84  d0 80 8d e5                                      str r8, [sp, #0xd0]
00592f88  fe 00 00 0a                                      beq #0x593388
00592f8c  00 50 81 e5                                      str r5, [r1]
00592f90  b4 30 9d e5                                      ldr r3, [sp, #0xb4]
00592f94  04 30 81 e5                                      str r3, [r1, #4]
00592f98  b8 30 9d e5                                      ldr r3, [sp, #0xb8]
00592f9c  08 30 81 e5                                      str r3, [r1, #8]
00592fa0  bc 30 9d e5                                      ldr r3, [sp, #0xbc]
00592fa4  0c 30 81 e5                                      str r3, [r1, #0xc]
00592fa8  c0 30 9d e5                                      ldr r3, [sp, #0xc0]
00592fac  10 30 81 e5                                      str r3, [r1, #0x10]
00592fb0  c4 30 9d e5                                      ldr r3, [sp, #0xc4]
00592fb4  14 30 81 e5                                      str r3, [r1, #0x14]
00592fb8  c8 30 9d e5                                      ldr r3, [sp, #0xc8]
00592fbc  18 30 81 e5                                      str r3, [r1, #0x18]
00592fc0  cc 30 9d e5                                      ldr r3, [sp, #0xcc]
00592fc4  1c 30 81 e5                                      str r3, [r1, #0x1c]
00592fc8  d0 30 9d e5                                      ldr r3, [sp, #0xd0]
00592fcc  20 30 81 e5                                      str r3, [r1, #0x20]
00592fd0  04 30 96 e5                                      ldr r3, [r6, #4]
00592fd4  24 30 83 e2                                      add r3, r3, #0x24
00592fd8  04 30 86 e5                                      str r3, [r6, #4]
00592fdc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00592fe0  06 40 84 e2                                      add r4, r4, #6
00592fe4  04 00 53 e1                                      cmp r3, r4
00592fe8  b8 ff ff 1a                                      bne #0x592ed0
00592fec  10 50 9d e5                                      ldr r5, [sp, #0x10]
00592ff0  00 00 57 e3                                      cmp r7, #0
00592ff4  a4 ff ff 0a                                      beq #0x592e8c
00592ff8  00 40 95 e5                                      ldr r4, [r5]
00592ffc  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
00593000  1f 20 03 e2                                      and r2, r3, #0x1f
00593004  01 00 52 e3                                      cmp r2, #1
00593008  cf 00 00 9a                                      bls #0x59334c
0059300c  01 20 42 e2                                      sub r2, r2, #1
00593010  1f 30 c3 e3                                      bic r3, r3, #0x1f
00593014  03 30 82 e1                                      orr r3, r2, r3
00593018  13 30 c4 e5                                      strb r3, [r4, #0x13]
0059301c  9a ff ff ea                                      b #0x592e8c
00593020  00 00 95 e5                                      ldr r0, [r5]
00593024  01 10 a0 e3                                      mov r1, #1
00593028  ab 3a 00 eb                                      bl #0x5a1adc
0059302c  04 70 95 e5                                      ldr r7, [r5, #4]
00593030  00 00 54 e3                                      cmp r4, #0
00593034  07 70 80 e0                                      add r7, r0, r7
00593038  da 00 00 0a                                      beq #0x5933a8
0059303c  88 80 84 e0                                      add r8, r4, r8, lsl #1
00593040  08 00 54 e1                                      cmp r4, r8
00593044  14 80 8d e5                                      str r8, [sp, #0x14]
00593048  e8 ff ff 0a                                      beq #0x592ff0
0059304c  20 30 8d e2                                      add r3, sp, #0x20
00593050  1c 30 8d e5                                      str r3, [sp, #0x1c]
00593054  18 50 8d e5                                      str r5, [sp, #0x18]
00593058  18 20 9d e5                                      ldr r2, [sp, #0x18]
0059305c  b4 80 d4 e1                                      ldrh r8, [r4, #4]
00593060  be 30 d2 e1                                      ldrh r3, [r2, #0xe]
00593064  98 03 08 e0                                      mul r8, r8, r3
00593068  d8 00 97 e1                                      ldrsb r0, [r7, r8]
0059306c  08 30 8d e5                                      str r3, [sp, #8]
00593070  3b ee f5 eb                                      bl #0x30e964
00593074  08 80 87 e0                                      add r8, r7, r8
00593078  00 50 a0 e1                                      mov r5, r0
0059307c  d1 00 d8 e1                                      ldrsb r0, [r8, #1]
00593080  37 ee f5 eb                                      bl #0x30e964
00593084  00 b0 a0 e1                                      mov fp, r0
00593088  d2 00 d8 e1                                      ldrsb r0, [r8, #2]
0059308c  34 ee f5 eb                                      bl #0x30e964
00593090  b2 20 d4 e1                                      ldrh r2, [r4, #2]
00593094  08 30 9d e5                                      ldr r3, [sp, #8]
00593098  00 90 a0 e1                                      mov sb, r0
0059309c  93 02 02 e0                                      mul r2, r3, r2
005930a0  d2 00 97 e1                                      ldrsb r0, [r7, r2]
005930a4  02 20 87 e0                                      add r2, r7, r2
005930a8  0c 20 8d e5                                      str r2, [sp, #0xc]
005930ac  2c ee f5 eb                                      bl #0x30e964
005930b0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005930b4  00 a0 a0 e1                                      mov sl, r0
005930b8  d1 00 d2 e1                                      ldrsb r0, [r2, #1]
005930bc  28 ee f5 eb                                      bl #0x30e964
005930c0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005930c4  00 80 a0 e1                                      mov r8, r0
005930c8  d2 00 d2 e1                                      ldrsb r0, [r2, #2]
005930cc  24 ee f5 eb                                      bl #0x30e964
005930d0  b0 10 d4 e1                                      ldrh r1, [r4]
005930d4  08 30 9d e5                                      ldr r3, [sp, #8]
005930d8  00 20 a0 e1                                      mov r2, r0
005930dc  93 01 03 e0                                      mul r3, r3, r1
005930e0  d3 00 97 e1                                      ldrsb r0, [r7, r3]
005930e4  03 30 87 e0                                      add r3, r7, r3
005930e8  04 20 8d e5                                      str r2, [sp, #4]
005930ec  0c 30 8d e5                                      str r3, [sp, #0xc]
005930f0  1b ee f5 eb                                      bl #0x30e964
005930f4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005930f8  00 c0 a0 e1                                      mov ip, r0
005930fc  d1 00 d3 e1                                      ldrsb r0, [r3, #1]
00593100  08 c0 8d e5                                      str ip, [sp, #8]
00593104  16 ee f5 eb                                      bl #0x30e964
00593108  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0059310c  10 00 8d e5                                      str r0, [sp, #0x10]
00593110  d2 00 d3 e1                                      ldrsb r0, [r3, #2]
00593114  12 ee f5 eb                                      bl #0x30e964
00593118  0a 00 96 e9                                      ldmib r6, {r1, r3}
0059311c  40 00 8d e5                                      str r0, [sp, #0x40]
00593120  24 b0 8d e5                                      str fp, [sp, #0x24]
00593124  28 90 8d e5                                      str sb, [sp, #0x28]
00593128  04 10 9d e9                                      ldmib sp, {r2, ip}
0059312c  03 00 51 e1                                      cmp r1, r3
00593130  34 20 8d e5                                      str r2, [sp, #0x34]
00593134  10 20 9d e5                                      ldr r2, [sp, #0x10]
00593138  2c a0 8d e5                                      str sl, [sp, #0x2c]
0059313c  30 80 8d e5                                      str r8, [sp, #0x30]
00593140  38 c0 8d e5                                      str ip, [sp, #0x38]
00593144  3c 20 8d e5                                      str r2, [sp, #0x3c]
00593148  20 50 8d e5                                      str r5, [sp, #0x20]
0059314c  91 00 00 0a                                      beq #0x593398
00593150  00 50 81 e5                                      str r5, [r1]
00593154  24 30 9d e5                                      ldr r3, [sp, #0x24]
00593158  04 30 81 e5                                      str r3, [r1, #4]
0059315c  28 30 9d e5                                      ldr r3, [sp, #0x28]
00593160  08 30 81 e5                                      str r3, [r1, #8]
00593164  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
00593168  0c 30 81 e5                                      str r3, [r1, #0xc]
0059316c  30 30 9d e5                                      ldr r3, [sp, #0x30]
00593170  10 30 81 e5                                      str r3, [r1, #0x10]
00593174  34 30 9d e5                                      ldr r3, [sp, #0x34]
00593178  14 30 81 e5                                      str r3, [r1, #0x14]
0059317c  38 30 9d e5                                      ldr r3, [sp, #0x38]
00593180  18 30 81 e5                                      str r3, [r1, #0x18]
00593184  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
00593188  1c 30 81 e5                                      str r3, [r1, #0x1c]
0059318c  40 30 9d e5                                      ldr r3, [sp, #0x40]
00593190  20 30 81 e5                                      str r3, [r1, #0x20]
00593194  04 30 96 e5                                      ldr r3, [r6, #4]
00593198  24 30 83 e2                                      add r3, r3, #0x24
0059319c  04 30 86 e5                                      str r3, [r6, #4]
005931a0  14 30 9d e5                                      ldr r3, [sp, #0x14]
005931a4  06 40 84 e2                                      add r4, r4, #6
005931a8  04 00 53 e1                                      cmp r3, r4
005931ac  a9 ff ff 1a                                      bne #0x593058
005931b0  18 50 9d e5                                      ldr r5, [sp, #0x18]
005931b4  8d ff ff ea                                      b #0x592ff0
005931b8  00 00 95 e5                                      ldr r0, [r5]
005931bc  01 10 a0 e3                                      mov r1, #1
005931c0  45 3a 00 eb                                      bl #0x5a1adc
005931c4  04 70 95 e5                                      ldr r7, [r5, #4]
005931c8  00 00 54 e3                                      cmp r4, #0
005931cc  07 70 80 e0                                      add r7, r0, r7
005931d0  22 01 00 0a                                      beq #0x593660
005931d4  88 80 84 e0                                      add r8, r4, r8, lsl #1
005931d8  08 00 54 e1                                      cmp r4, r8
005931dc  14 80 8d e5                                      str r8, [sp, #0x14]
005931e0  82 ff ff 0a                                      beq #0x592ff0
005931e4  68 30 8d e2                                      add r3, sp, #0x68
005931e8  1c 30 8d e5                                      str r3, [sp, #0x1c]
005931ec  18 50 8d e5                                      str r5, [sp, #0x18]
005931f0  18 20 9d e5                                      ldr r2, [sp, #0x18]
005931f4  b4 80 d4 e1                                      ldrh r8, [r4, #4]
005931f8  be 30 d2 e1                                      ldrh r3, [r2, #0xe]
005931fc  98 03 08 e0                                      mul r8, r8, r3
00593200  d8 00 97 e1                                      ldrsb r0, [r7, r8]
00593204  08 30 8d e5                                      str r3, [sp, #8]
00593208  d5 ed f5 eb                                      bl #0x30e964
0059320c  08 80 87 e0                                      add r8, r7, r8
00593210  00 50 a0 e1                                      mov r5, r0
00593214  d1 00 d8 e1                                      ldrsb r0, [r8, #1]
00593218  d1 ed f5 eb                                      bl #0x30e964
0059321c  00 b0 a0 e1                                      mov fp, r0
00593220  d2 00 d8 e1                                      ldrsb r0, [r8, #2]
00593224  ce ed f5 eb                                      bl #0x30e964
00593228  b2 20 d4 e1                                      ldrh r2, [r4, #2]
0059322c  08 30 9d e5                                      ldr r3, [sp, #8]
00593230  00 90 a0 e1                                      mov sb, r0
00593234  93 02 02 e0                                      mul r2, r3, r2
00593238  d2 00 97 e1                                      ldrsb r0, [r7, r2]
0059323c  02 20 87 e0                                      add r2, r7, r2
00593240  0c 20 8d e5                                      str r2, [sp, #0xc]
00593244  c6 ed f5 eb                                      bl #0x30e964
00593248  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0059324c  00 a0 a0 e1                                      mov sl, r0
00593250  d1 00 d2 e1                                      ldrsb r0, [r2, #1]
00593254  c2 ed f5 eb                                      bl #0x30e964
00593258  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0059325c  00 80 a0 e1                                      mov r8, r0
00593260  d2 00 d2 e1                                      ldrsb r0, [r2, #2]
00593264  be ed f5 eb                                      bl #0x30e964
00593268  b0 10 d4 e1                                      ldrh r1, [r4]
0059326c  08 30 9d e5                                      ldr r3, [sp, #8]
00593270  00 20 a0 e1                                      mov r2, r0
00593274  93 01 03 e0                                      mul r3, r3, r1
00593278  d3 00 97 e1                                      ldrsb r0, [r7, r3]
0059327c  03 30 87 e0                                      add r3, r7, r3
00593280  04 20 8d e5                                      str r2, [sp, #4]
00593284  0c 30 8d e5                                      str r3, [sp, #0xc]
00593288  b5 ed f5 eb                                      bl #0x30e964
0059328c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00593290  00 c0 a0 e1                                      mov ip, r0
00593294  d1 00 d3 e1                                      ldrsb r0, [r3, #1]
00593298  08 c0 8d e5                                      str ip, [sp, #8]
0059329c  b0 ed f5 eb                                      bl #0x30e964
005932a0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005932a4  10 00 8d e5                                      str r0, [sp, #0x10]
005932a8  d2 00 d3 e1                                      ldrsb r0, [r3, #2]
005932ac  ac ed f5 eb                                      bl #0x30e964
005932b0  0a 00 96 e9                                      ldmib r6, {r1, r3}
005932b4  88 00 8d e5                                      str r0, [sp, #0x88]
005932b8  6c b0 8d e5                                      str fp, [sp, #0x6c]
005932bc  70 90 8d e5                                      str sb, [sp, #0x70]
005932c0  04 10 9d e9                                      ldmib sp, {r2, ip}
005932c4  03 00 51 e1                                      cmp r1, r3
005932c8  7c 20 8d e5                                      str r2, [sp, #0x7c]
005932cc  10 20 9d e5                                      ldr r2, [sp, #0x10]
005932d0  74 a0 8d e5                                      str sl, [sp, #0x74]
005932d4  78 80 8d e5                                      str r8, [sp, #0x78]
005932d8  80 c0 8d e5                                      str ip, [sp, #0x80]
005932dc  84 20 8d e5                                      str r2, [sp, #0x84]
005932e0  68 50 8d e5                                      str r5, [sp, #0x68]
005932e4  23 00 00 0a                                      beq #0x593378
005932e8  00 50 81 e5                                      str r5, [r1]
005932ec  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
005932f0  04 30 81 e5                                      str r3, [r1, #4]
005932f4  70 30 9d e5                                      ldr r3, [sp, #0x70]
005932f8  08 30 81 e5                                      str r3, [r1, #8]
005932fc  74 30 9d e5                                      ldr r3, [sp, #0x74]
00593300  0c 30 81 e5                                      str r3, [r1, #0xc]
00593304  78 30 9d e5                                      ldr r3, [sp, #0x78]
00593308  10 30 81 e5                                      str r3, [r1, #0x10]
0059330c  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
00593310  14 30 81 e5                                      str r3, [r1, #0x14]
00593314  80 30 9d e5                                      ldr r3, [sp, #0x80]
00593318  18 30 81 e5                                      str r3, [r1, #0x18]
0059331c  84 30 9d e5                                      ldr r3, [sp, #0x84]
00593320  1c 30 81 e5                                      str r3, [r1, #0x1c]
00593324  88 30 9d e5                                      ldr r3, [sp, #0x88]
00593328  20 30 81 e5                                      str r3, [r1, #0x20]
0059332c  04 30 96 e5                                      ldr r3, [r6, #4]
00593330  24 30 83 e2                                      add r3, r3, #0x24
00593334  04 30 86 e5                                      str r3, [r6, #4]
00593338  14 30 9d e5                                      ldr r3, [sp, #0x14]
0059333c  06 40 84 e2                                      add r4, r4, #6
00593340  04 00 53 e1                                      cmp r3, r4
00593344  a9 ff ff 1a                                      bne #0x5931f0
00593348  98 ff ff ea                                      b #0x5931b0
0059334c  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
00593350  20 00 13 e3                                      tst r3, #0x20
00593354  02 00 00 1a                                      bne #0x593364
00593358  00 30 a0 e3                                      mov r3, #0
0059335c  13 30 c4 e5                                      strb r3, [r4, #0x13]
00593360  c9 fe ff ea                                      b #0x592e8c
00593364  00 30 94 e5                                      ldr r3, [r4]
00593368  04 00 a0 e1                                      mov r0, r4
0059336c  0f e0 a0 e1                                      mov lr, pc
00593370  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00593374  f7 ff ff ea                                      b #0x593358
00593378  06 00 a0 e1                                      mov r0, r6
0059337c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00593380  ac f7 ff eb                                      bl #0x591238
00593384  eb ff ff ea                                      b #0x593338
00593388  06 00 a0 e1                                      mov r0, r6
0059338c  14 20 9d e5                                      ldr r2, [sp, #0x14]
00593390  a8 f7 ff eb                                      bl #0x591238
00593394  10 ff ff ea                                      b #0x592fdc
00593398  06 00 a0 e1                                      mov r0, r6
0059339c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
005933a0  a4 f7 ff eb                                      bl #0x591238
005933a4  7d ff ff ea                                      b #0x5931a0
005933a8  00 00 58 e3                                      cmp r8, #0
005933ac  0f ff ff 0a                                      beq #0x592ff0
005933b0  44 20 8d e2                                      add r2, sp, #0x44
005933b4  be 30 d5 e1                                      ldrh r3, [r5, #0xe]
005933b8  1c 20 8d e5                                      str r2, [sp, #0x1c]
005933bc  14 80 8d e5                                      str r8, [sp, #0x14]
005933c0  18 50 8d e5                                      str r5, [sp, #0x18]
005933c4  01 00 00 ea                                      b #0x5933d0
005933c8  18 20 9d e5                                      ldr r2, [sp, #0x18]
005933cc  be 30 d2 e1                                      ldrh r3, [r2, #0xe]
005933d0  02 80 84 e2                                      add r8, r4, #2
005933d4  93 08 08 e0                                      mul r8, r3, r8
005933d8  d8 00 97 e1                                      ldrsb r0, [r7, r8]
005933dc  08 30 8d e5                                      str r3, [sp, #8]
005933e0  5f ed f5 eb                                      bl #0x30e964
005933e4  08 80 87 e0                                      add r8, r7, r8
005933e8  00 50 a0 e1                                      mov r5, r0
005933ec  d1 00 d8 e1                                      ldrsb r0, [r8, #1]
005933f0  5b ed f5 eb                                      bl #0x30e964
005933f4  00 b0 a0 e1                                      mov fp, r0
005933f8  d2 00 d8 e1                                      ldrsb r0, [r8, #2]
005933fc  58 ed f5 eb                                      bl #0x30e964
00593400  08 30 9d e5                                      ldr r3, [sp, #8]
00593404  00 90 a0 e1                                      mov sb, r0
00593408  94 33 22 e0                                      mla r2, r4, r3, r3
0059340c  d2 00 97 e1                                      ldrsb r0, [r7, r2]
00593410  02 20 87 e0                                      add r2, r7, r2
00593414  0c 20 8d e5                                      str r2, [sp, #0xc]
00593418  51 ed f5 eb                                      bl #0x30e964
0059341c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00593420  00 a0 a0 e1                                      mov sl, r0
00593424  d1 00 d2 e1                                      ldrsb r0, [r2, #1]
00593428  4d ed f5 eb                                      bl #0x30e964
0059342c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00593430  00 80 a0 e1                                      mov r8, r0
00593434  d2 00 d2 e1                                      ldrsb r0, [r2, #2]
00593438  49 ed f5 eb                                      bl #0x30e964
0059343c  08 30 9d e5                                      ldr r3, [sp, #8]
00593440  00 20 a0 e1                                      mov r2, r0
00593444  94 03 03 e0                                      mul r3, r4, r3
00593448  d3 00 97 e1                                      ldrsb r0, [r7, r3]
0059344c  03 30 87 e0                                      add r3, r7, r3
00593450  04 20 8d e5                                      str r2, [sp, #4]
00593454  0c 30 8d e5                                      str r3, [sp, #0xc]
00593458  41 ed f5 eb                                      bl #0x30e964
0059345c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00593460  00 c0 a0 e1                                      mov ip, r0
00593464  d1 00 d3 e1                                      ldrsb r0, [r3, #1]
00593468  08 c0 8d e5                                      str ip, [sp, #8]
0059346c  3c ed f5 eb                                      bl #0x30e964
00593470  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00593474  10 00 8d e5                                      str r0, [sp, #0x10]
00593478  d2 00 d3 e1                                      ldrsb r0, [r3, #2]
0059347c  38 ed f5 eb                                      bl #0x30e964
00593480  04 10 9d e9                                      ldmib sp, {r2, ip}
00593484  0a 00 96 e9                                      ldmib r6, {r1, r3}
00593488  58 20 8d e5                                      str r2, [sp, #0x58]
0059348c  48 b0 8d e5                                      str fp, [sp, #0x48]
00593490  4c 90 8d e5                                      str sb, [sp, #0x4c]
00593494  64 00 8d e5                                      str r0, [sp, #0x64]
00593498  50 a0 8d e5                                      str sl, [sp, #0x50]
0059349c  54 80 8d e5                                      str r8, [sp, #0x54]
005934a0  5c c0 8d e5                                      str ip, [sp, #0x5c]
005934a4  10 20 9d e5                                      ldr r2, [sp, #0x10]
005934a8  03 00 51 e1                                      cmp r1, r3
005934ac  44 50 8d e5                                      str r5, [sp, #0x44]
005934b0  60 20 8d e5                                      str r2, [sp, #0x60]
005934b4  c7 00 00 0a                                      beq #0x5937d8
005934b8  00 50 81 e5                                      str r5, [r1]
005934bc  48 30 9d e5                                      ldr r3, [sp, #0x48]
005934c0  04 30 81 e5                                      str r3, [r1, #4]
005934c4  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
005934c8  08 30 81 e5                                      str r3, [r1, #8]
005934cc  50 30 9d e5                                      ldr r3, [sp, #0x50]
005934d0  0c 30 81 e5                                      str r3, [r1, #0xc]
005934d4  54 30 9d e5                                      ldr r3, [sp, #0x54]
005934d8  10 30 81 e5                                      str r3, [r1, #0x10]
005934dc  58 30 9d e5                                      ldr r3, [sp, #0x58]
005934e0  14 30 81 e5                                      str r3, [r1, #0x14]
005934e4  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
005934e8  18 30 81 e5                                      str r3, [r1, #0x18]
005934ec  60 30 9d e5                                      ldr r3, [sp, #0x60]
005934f0  1c 30 81 e5                                      str r3, [r1, #0x1c]
005934f4  64 30 9d e5                                      ldr r3, [sp, #0x64]
005934f8  20 30 81 e5                                      str r3, [r1, #0x20]
005934fc  04 30 96 e5                                      ldr r3, [r6, #4]
00593500  24 30 83 e2                                      add r3, r3, #0x24
00593504  04 30 86 e5                                      str r3, [r6, #4]
00593508  14 30 9d e5                                      ldr r3, [sp, #0x14]
0059350c  03 40 84 e2                                      add r4, r4, #3
00593510  04 00 53 e1                                      cmp r3, r4
00593514  ab ff ff 8a                                      bhi #0x5933c8
00593518  18 50 9d e5                                      ldr r5, [sp, #0x18]
0059351c  b3 fe ff ea                                      b #0x592ff0
00593520  00 00 58 e3                                      cmp r8, #0
00593524  b1 fe ff 0a                                      beq #0x592ff0
00593528  d4 20 8d e2                                      add r2, sp, #0xd4
0059352c  be 30 d5 e1                                      ldrh r3, [r5, #0xe]
00593530  00 a0 a0 e3                                      mov sl, #0
00593534  14 20 8d e5                                      str r2, [sp, #0x14]
00593538  0c 80 8d e5                                      str r8, [sp, #0xc]
0059353c  10 50 8d e5                                      str r5, [sp, #0x10]
00593540  01 00 00 ea                                      b #0x59354c
00593544  10 20 9d e5                                      ldr r2, [sp, #0x10]
00593548  be 30 d2 e1                                      ldrh r3, [r2, #0xe]
0059354c  02 80 84 e2                                      add r8, r4, #2
00593550  93 08 08 e0                                      mul r8, r3, r8
00593554  d8 00 97 e1                                      ldrsb r0, [r7, r8]
00593558  08 30 8d e5                                      str r3, [sp, #8]
0059355c  00 ed f5 eb                                      bl #0x30e964
00593560  08 80 87 e0                                      add r8, r7, r8
00593564  00 50 a0 e1                                      mov r5, r0
00593568  d1 00 d8 e1                                      ldrsb r0, [r8, #1]
0059356c  fc ec f5 eb                                      bl #0x30e964
00593570  08 30 9d e5                                      ldr r3, [sp, #8]
00593574  00 b0 a0 e1                                      mov fp, r0
00593578  94 33 28 e0                                      mla r8, r4, r3, r3
0059357c  d8 00 97 e1                                      ldrsb r0, [r7, r8]
00593580  f7 ec f5 eb                                      bl #0x30e964
00593584  08 80 87 e0                                      add r8, r7, r8
00593588  00 90 a0 e1                                      mov sb, r0
0059358c  d1 00 d8 e1                                      ldrsb r0, [r8, #1]
00593590  f3 ec f5 eb                                      bl #0x30e964
00593594  08 30 9d e5                                      ldr r3, [sp, #8]
00593598  00 80 a0 e1                                      mov r8, r0
0059359c  94 03 03 e0                                      mul r3, r4, r3
005935a0  d3 00 97 e1                                      ldrsb r0, [r7, r3]
005935a4  03 30 87 e0                                      add r3, r7, r3
005935a8  08 30 8d e5                                      str r3, [sp, #8]
005935ac  ec ec f5 eb                                      bl #0x30e964
005935b0  08 30 9d e5                                      ldr r3, [sp, #8]
005935b4  00 20 a0 e1                                      mov r2, r0
005935b8  d1 00 d3 e1                                      ldrsb r0, [r3, #1]
005935bc  04 20 8d e5                                      str r2, [sp, #4]
005935c0  e7 ec f5 eb                                      bl #0x30e964
005935c4  0a 00 96 e9                                      ldmib r6, {r1, r3}
005935c8  04 20 9d e5                                      ldr r2, [sp, #4]
005935cc  d8 b0 8d e5                                      str fp, [sp, #0xd8]
005935d0  03 00 51 e1                                      cmp r1, r3
005935d4  e0 90 8d e5                                      str sb, [sp, #0xe0]
005935d8  e4 80 8d e5                                      str r8, [sp, #0xe4]
005935dc  f0 00 8d e5                                      str r0, [sp, #0xf0]
005935e0  ec 20 8d e5                                      str r2, [sp, #0xec]
005935e4  dc a0 8d e5                                      str sl, [sp, #0xdc]
005935e8  e8 a0 8d e5                                      str sl, [sp, #0xe8]
005935ec  d4 50 8d e5                                      str r5, [sp, #0xd4]
005935f0  f4 a0 8d e5                                      str sl, [sp, #0xf4]
005935f4  7b 00 00 0a                                      beq #0x5937e8
005935f8  00 50 81 e5                                      str r5, [r1]
005935fc  d8 30 9d e5                                      ldr r3, [sp, #0xd8]
00593600  04 30 81 e5                                      str r3, [r1, #4]
00593604  dc 30 9d e5                                      ldr r3, [sp, #0xdc]
00593608  08 30 81 e5                                      str r3, [r1, #8]
0059360c  e0 30 9d e5                                      ldr r3, [sp, #0xe0]
00593610  0c 30 81 e5                                      str r3, [r1, #0xc]
00593614  e4 30 9d e5                                      ldr r3, [sp, #0xe4]
00593618  10 30 81 e5                                      str r3, [r1, #0x10]
0059361c  e8 30 9d e5                                      ldr r3, [sp, #0xe8]
00593620  14 30 81 e5                                      str r3, [r1, #0x14]
00593624  ec 30 9d e5                                      ldr r3, [sp, #0xec]
00593628  18 30 81 e5                                      str r3, [r1, #0x18]
0059362c  f0 30 9d e5                                      ldr r3, [sp, #0xf0]
00593630  1c 30 81 e5                                      str r3, [r1, #0x1c]
00593634  f4 30 9d e5                                      ldr r3, [sp, #0xf4]
00593638  20 30 81 e5                                      str r3, [r1, #0x20]
0059363c  04 30 96 e5                                      ldr r3, [r6, #4]
00593640  24 30 83 e2                                      add r3, r3, #0x24
00593644  04 30 86 e5                                      str r3, [r6, #4]
00593648  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0059364c  03 40 84 e2                                      add r4, r4, #3
00593650  04 00 53 e1                                      cmp r3, r4
00593654  ba ff ff 8a                                      bhi #0x593544
00593658  10 50 9d e5                                      ldr r5, [sp, #0x10]
0059365c  63 fe ff ea                                      b #0x592ff0
00593660  00 00 58 e3                                      cmp r8, #0
00593664  61 fe ff 0a                                      beq #0x592ff0
00593668  8c 20 8d e2                                      add r2, sp, #0x8c
0059366c  be 30 d5 e1                                      ldrh r3, [r5, #0xe]
00593670  1c 20 8d e5                                      str r2, [sp, #0x1c]
00593674  14 80 8d e5                                      str r8, [sp, #0x14]
00593678  18 50 8d e5                                      str r5, [sp, #0x18]
0059367c  01 00 00 ea                                      b #0x593688
00593680  18 20 9d e5                                      ldr r2, [sp, #0x18]
00593684  be 30 d2 e1                                      ldrh r3, [r2, #0xe]
00593688  02 80 84 e2                                      add r8, r4, #2
0059368c  93 08 08 e0                                      mul r8, r3, r8
00593690  d8 00 97 e1                                      ldrsb r0, [r7, r8]
00593694  08 30 8d e5                                      str r3, [sp, #8]
00593698  b1 ec f5 eb                                      bl #0x30e964
0059369c  08 80 87 e0                                      add r8, r7, r8
005936a0  00 50 a0 e1                                      mov r5, r0
005936a4  d1 00 d8 e1                                      ldrsb r0, [r8, #1]
005936a8  ad ec f5 eb                                      bl #0x30e964
005936ac  00 b0 a0 e1                                      mov fp, r0
005936b0  d2 00 d8 e1                                      ldrsb r0, [r8, #2]
005936b4  aa ec f5 eb                                      bl #0x30e964
005936b8  08 30 9d e5                                      ldr r3, [sp, #8]
005936bc  00 90 a0 e1                                      mov sb, r0
005936c0  94 33 22 e0                                      mla r2, r4, r3, r3
005936c4  d2 00 97 e1                                      ldrsb r0, [r7, r2]
005936c8  02 20 87 e0                                      add r2, r7, r2
005936cc  0c 20 8d e5                                      str r2, [sp, #0xc]
005936d0  a3 ec f5 eb                                      bl #0x30e964
005936d4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005936d8  00 a0 a0 e1                                      mov sl, r0
005936dc  d1 00 d2 e1                                      ldrsb r0, [r2, #1]
005936e0  9f ec f5 eb                                      bl #0x30e964
005936e4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005936e8  00 80 a0 e1                                      mov r8, r0
005936ec  d2 00 d2 e1                                      ldrsb r0, [r2, #2]
005936f0  9b ec f5 eb                                      bl #0x30e964
005936f4  08 30 9d e5                                      ldr r3, [sp, #8]
005936f8  00 20 a0 e1                                      mov r2, r0
005936fc  94 03 03 e0                                      mul r3, r4, r3
00593700  d3 00 97 e1                                      ldrsb r0, [r7, r3]
00593704  03 30 87 e0                                      add r3, r7, r3
00593708  04 20 8d e5                                      str r2, [sp, #4]
0059370c  0c 30 8d e5                                      str r3, [sp, #0xc]
00593710  93 ec f5 eb                                      bl #0x30e964
00593714  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00593718  00 c0 a0 e1                                      mov ip, r0
0059371c  d1 00 d3 e1                                      ldrsb r0, [r3, #1]
00593720  08 c0 8d e5                                      str ip, [sp, #8]
00593724  8e ec f5 eb                                      bl #0x30e964
00593728  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0059372c  10 00 8d e5                                      str r0, [sp, #0x10]
00593730  d2 00 d3 e1                                      ldrsb r0, [r3, #2]
00593734  8a ec f5 eb                                      bl #0x30e964
00593738  04 10 9d e9                                      ldmib sp, {r2, ip}
0059373c  0a 00 96 e9                                      ldmib r6, {r1, r3}
00593740  a0 20 8d e5                                      str r2, [sp, #0xa0]
00593744  90 b0 8d e5                                      str fp, [sp, #0x90]
00593748  94 90 8d e5                                      str sb, [sp, #0x94]
0059374c  ac 00 8d e5                                      str r0, [sp, #0xac]
00593750  98 a0 8d e5                                      str sl, [sp, #0x98]
00593754  9c 80 8d e5                                      str r8, [sp, #0x9c]
00593758  a4 c0 8d e5                                      str ip, [sp, #0xa4]
0059375c  10 20 9d e5                                      ldr r2, [sp, #0x10]
00593760  03 00 51 e1                                      cmp r1, r3
00593764  8c 50 8d e5                                      str r5, [sp, #0x8c]
00593768  a8 20 8d e5                                      str r2, [sp, #0xa8]
0059376c  21 00 00 0a                                      beq #0x5937f8
00593770  00 50 81 e5                                      str r5, [r1]
00593774  90 30 9d e5                                      ldr r3, [sp, #0x90]
00593778  04 30 81 e5                                      str r3, [r1, #4]
0059377c  94 30 9d e5                                      ldr r3, [sp, #0x94]
00593780  08 30 81 e5                                      str r3, [r1, #8]
00593784  98 30 9d e5                                      ldr r3, [sp, #0x98]
00593788  0c 30 81 e5                                      str r3, [r1, #0xc]
0059378c  9c 30 9d e5                                      ldr r3, [sp, #0x9c]
00593790  10 30 81 e5                                      str r3, [r1, #0x10]
00593794  a0 30 9d e5                                      ldr r3, [sp, #0xa0]
00593798  14 30 81 e5                                      str r3, [r1, #0x14]
0059379c  a4 30 9d e5                                      ldr r3, [sp, #0xa4]
005937a0  18 30 81 e5                                      str r3, [r1, #0x18]
005937a4  a8 30 9d e5                                      ldr r3, [sp, #0xa8]
005937a8  1c 30 81 e5                                      str r3, [r1, #0x1c]
005937ac  ac 30 9d e5                                      ldr r3, [sp, #0xac]
005937b0  20 30 81 e5                                      str r3, [r1, #0x20]
005937b4  04 30 96 e5                                      ldr r3, [r6, #4]
005937b8  24 30 83 e2                                      add r3, r3, #0x24
005937bc  04 30 86 e5                                      str r3, [r6, #4]
005937c0  14 30 9d e5                                      ldr r3, [sp, #0x14]
005937c4  03 40 84 e2                                      add r4, r4, #3
005937c8  04 00 53 e1                                      cmp r3, r4
005937cc  ab ff ff 8a                                      bhi #0x593680
005937d0  18 50 9d e5                                      ldr r5, [sp, #0x18]
005937d4  05 fe ff ea                                      b #0x592ff0
005937d8  06 00 a0 e1                                      mov r0, r6
005937dc  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
005937e0  94 f6 ff eb                                      bl #0x591238
005937e4  47 ff ff ea                                      b #0x593508
005937e8  06 00 a0 e1                                      mov r0, r6
005937ec  14 20 9d e5                                      ldr r2, [sp, #0x14]
005937f0  90 f6 ff eb                                      bl #0x591238
005937f4  93 ff ff ea                                      b #0x593648
005937f8  06 00 a0 e1                                      mov r0, r6
005937fc  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00593800  8c f6 ff eb                                      bl #0x591238
00593804  ed ff ff ea                                      b #0x5937c0

; FUNCTION 0x00593808, declared_size=2480, range_size=2480, mode=arm
; class-group: void glitch::scene
; alias: _ZN6glitch5scene12_GLOBAL__N_115createTrianglesIhSt6vectorINS_4core10triangle3dIfEENS4_10SAllocatorIS6_LNS_6memory13E_MEMORY_HINTE0EEEEEEvPKtjRKNS_5video13SVertexStreamERT0_
; demangled: void glitch::scene::(anonymous namespace)::createTriangles<unsigned char, std::vector<glitch::core::triangle3d<float>, glitch::core::SAllocator<glitch::core::triangle3d<float>, (glitch::memory::E_MEMORY_HINT)0> > >(unsigned short const*, unsigned int, glitch::video::SVertexStream const&, std::vector<glitch::core::triangle3d<float>, glitch::core::SAllocator<glitch::core::triangle3d<float>, (glitch::memory::E_MEMORY_HINT)0> >&)
; decoder-mode: arm
00593808  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0059380c  02 50 a0 e1                                      mov r5, r2
00593810  bc 20 d2 e1                                      ldrh r2, [r2, #0xc]
00593814  fc d0 4d e2                                      sub sp, sp, #0xfc
00593818  00 40 a0 e1                                      mov r4, r0
0059381c  03 00 52 e3                                      cmp r2, #3
00593820  01 80 a0 e1                                      mov r8, r1
00593824  03 60 a0 e1                                      mov r6, r3
00593828  ce 00 00 0a                                      beq #0x593b68
0059382c  04 00 52 e3                                      cmp r2, #4
00593830  66 00 00 0a                                      beq #0x5939d0
00593834  02 00 52 e3                                      cmp r2, #2
00593838  01 00 00 0a                                      beq #0x593844
0059383c  fc d0 8d e2                                      add sp, sp, #0xfc
00593840  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00593844  00 00 95 e5                                      ldr r0, [r5]
00593848  01 10 a0 e3                                      mov r1, #1
0059384c  a2 38 00 eb                                      bl #0x5a1adc
00593850  04 70 95 e5                                      ldr r7, [r5, #4]
00593854  00 00 54 e3                                      cmp r4, #0
00593858  07 70 80 e0                                      add r7, r0, r7
0059385c  9b 01 00 0a                                      beq #0x593ed0
00593860  88 80 84 e0                                      add r8, r4, r8, lsl #1
00593864  08 00 54 e1                                      cmp r4, r8
00593868  0c 80 8d e5                                      str r8, [sp, #0xc]
0059386c  4b 00 00 0a                                      beq #0x5939a0
00593870  b0 20 8d e2                                      add r2, sp, #0xb0
00593874  00 80 a0 e3                                      mov r8, #0
00593878  14 20 8d e5                                      str r2, [sp, #0x14]
0059387c  10 50 8d e5                                      str r5, [sp, #0x10]
00593880  10 20 9d e5                                      ldr r2, [sp, #0x10]
00593884  b4 a0 d4 e1                                      ldrh sl, [r4, #4]
00593888  be 30 d2 e1                                      ldrh r3, [r2, #0xe]
0059388c  9a 03 0a e0                                      mul sl, sl, r3
00593890  0a 00 d7 e7                                      ldrb r0, [r7, sl]
00593894  08 30 8d e5                                      str r3, [sp, #8]
00593898  90 ea f5 eb                                      bl #0x30e2e0
0059389c  0a a0 87 e0                                      add sl, r7, sl
005938a0  00 50 a0 e1                                      mov r5, r0
005938a4  01 00 da e5                                      ldrb r0, [sl, #1]
005938a8  8c ea f5 eb                                      bl #0x30e2e0
005938ac  b2 a0 d4 e1                                      ldrh sl, [r4, #2]
005938b0  08 30 9d e5                                      ldr r3, [sp, #8]
005938b4  00 b0 a0 e1                                      mov fp, r0
005938b8  93 0a 0a e0                                      mul sl, r3, sl
005938bc  0a 00 d7 e7                                      ldrb r0, [r7, sl]
005938c0  86 ea f5 eb                                      bl #0x30e2e0
005938c4  0a a0 87 e0                                      add sl, r7, sl
005938c8  00 90 a0 e1                                      mov sb, r0
005938cc  01 00 da e5                                      ldrb r0, [sl, #1]
005938d0  82 ea f5 eb                                      bl #0x30e2e0
005938d4  b0 20 d4 e1                                      ldrh r2, [r4]
005938d8  08 30 9d e5                                      ldr r3, [sp, #8]
005938dc  00 a0 a0 e1                                      mov sl, r0
005938e0  93 02 03 e0                                      mul r3, r3, r2
005938e4  03 00 d7 e7                                      ldrb r0, [r7, r3]
005938e8  03 30 87 e0                                      add r3, r7, r3
005938ec  08 30 8d e5                                      str r3, [sp, #8]
005938f0  7a ea f5 eb                                      bl #0x30e2e0
005938f4  08 30 9d e5                                      ldr r3, [sp, #8]
005938f8  00 20 a0 e1                                      mov r2, r0
005938fc  01 00 d3 e5                                      ldrb r0, [r3, #1]
00593900  04 20 8d e5                                      str r2, [sp, #4]
00593904  75 ea f5 eb                                      bl #0x30e2e0
00593908  0a 00 96 e9                                      ldmib r6, {r1, r3}
0059390c  04 20 9d e5                                      ldr r2, [sp, #4]
00593910  b4 b0 8d e5                                      str fp, [sp, #0xb4]
00593914  03 00 51 e1                                      cmp r1, r3
00593918  bc 90 8d e5                                      str sb, [sp, #0xbc]
0059391c  cc 00 8d e5                                      str r0, [sp, #0xcc]
00593920  c0 a0 8d e5                                      str sl, [sp, #0xc0]
00593924  c8 20 8d e5                                      str r2, [sp, #0xc8]
00593928  b8 80 8d e5                                      str r8, [sp, #0xb8]
0059392c  b0 50 8d e5                                      str r5, [sp, #0xb0]
00593930  c4 80 8d e5                                      str r8, [sp, #0xc4]
00593934  d0 80 8d e5                                      str r8, [sp, #0xd0]
00593938  fe 00 00 0a                                      beq #0x593d38
0059393c  00 50 81 e5                                      str r5, [r1]
00593940  b4 30 9d e5                                      ldr r3, [sp, #0xb4]
00593944  04 30 81 e5                                      str r3, [r1, #4]
00593948  b8 30 9d e5                                      ldr r3, [sp, #0xb8]
0059394c  08 30 81 e5                                      str r3, [r1, #8]
00593950  bc 30 9d e5                                      ldr r3, [sp, #0xbc]
00593954  0c 30 81 e5                                      str r3, [r1, #0xc]
00593958  c0 30 9d e5                                      ldr r3, [sp, #0xc0]
0059395c  10 30 81 e5                                      str r3, [r1, #0x10]
00593960  c4 30 9d e5                                      ldr r3, [sp, #0xc4]
00593964  14 30 81 e5                                      str r3, [r1, #0x14]
00593968  c8 30 9d e5                                      ldr r3, [sp, #0xc8]
0059396c  18 30 81 e5                                      str r3, [r1, #0x18]
00593970  cc 30 9d e5                                      ldr r3, [sp, #0xcc]
00593974  1c 30 81 e5                                      str r3, [r1, #0x1c]
00593978  d0 30 9d e5                                      ldr r3, [sp, #0xd0]
0059397c  20 30 81 e5                                      str r3, [r1, #0x20]
00593980  04 30 96 e5                                      ldr r3, [r6, #4]
00593984  24 30 83 e2                                      add r3, r3, #0x24
00593988  04 30 86 e5                                      str r3, [r6, #4]
0059398c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00593990  06 40 84 e2                                      add r4, r4, #6
00593994  04 00 53 e1                                      cmp r3, r4
00593998  b8 ff ff 1a                                      bne #0x593880
0059399c  10 50 9d e5                                      ldr r5, [sp, #0x10]
005939a0  00 00 57 e3                                      cmp r7, #0
005939a4  a4 ff ff 0a                                      beq #0x59383c
005939a8  00 40 95 e5                                      ldr r4, [r5]
005939ac  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
005939b0  1f 20 03 e2                                      and r2, r3, #0x1f
005939b4  01 00 52 e3                                      cmp r2, #1
005939b8  cf 00 00 9a                                      bls #0x593cfc
005939bc  01 20 42 e2                                      sub r2, r2, #1
005939c0  1f 30 c3 e3                                      bic r3, r3, #0x1f
005939c4  03 30 82 e1                                      orr r3, r2, r3
005939c8  13 30 c4 e5                                      strb r3, [r4, #0x13]
005939cc  9a ff ff ea                                      b #0x59383c
005939d0  00 00 95 e5                                      ldr r0, [r5]
005939d4  01 10 a0 e3                                      mov r1, #1
005939d8  3f 38 00 eb                                      bl #0x5a1adc
005939dc  04 70 95 e5                                      ldr r7, [r5, #4]
005939e0  00 00 54 e3                                      cmp r4, #0
005939e4  07 70 80 e0                                      add r7, r0, r7
005939e8  da 00 00 0a                                      beq #0x593d58
005939ec  88 80 84 e0                                      add r8, r4, r8, lsl #1
005939f0  08 00 54 e1                                      cmp r4, r8
005939f4  14 80 8d e5                                      str r8, [sp, #0x14]
005939f8  e8 ff ff 0a                                      beq #0x5939a0
005939fc  20 30 8d e2                                      add r3, sp, #0x20
00593a00  1c 30 8d e5                                      str r3, [sp, #0x1c]
00593a04  18 50 8d e5                                      str r5, [sp, #0x18]
00593a08  18 20 9d e5                                      ldr r2, [sp, #0x18]
00593a0c  b4 80 d4 e1                                      ldrh r8, [r4, #4]
00593a10  be 30 d2 e1                                      ldrh r3, [r2, #0xe]
00593a14  98 03 08 e0                                      mul r8, r8, r3
00593a18  08 00 d7 e7                                      ldrb r0, [r7, r8]
00593a1c  08 30 8d e5                                      str r3, [sp, #8]
00593a20  2e ea f5 eb                                      bl #0x30e2e0
00593a24  08 80 87 e0                                      add r8, r7, r8
00593a28  00 50 a0 e1                                      mov r5, r0
00593a2c  01 00 d8 e5                                      ldrb r0, [r8, #1]
00593a30  2a ea f5 eb                                      bl #0x30e2e0
00593a34  00 b0 a0 e1                                      mov fp, r0
00593a38  02 00 d8 e5                                      ldrb r0, [r8, #2]
00593a3c  27 ea f5 eb                                      bl #0x30e2e0
00593a40  b2 20 d4 e1                                      ldrh r2, [r4, #2]
00593a44  08 30 9d e5                                      ldr r3, [sp, #8]
00593a48  00 90 a0 e1                                      mov sb, r0
00593a4c  93 02 02 e0                                      mul r2, r3, r2
00593a50  02 00 d7 e7                                      ldrb r0, [r7, r2]
00593a54  02 20 87 e0                                      add r2, r7, r2
00593a58  0c 20 8d e5                                      str r2, [sp, #0xc]
00593a5c  1f ea f5 eb                                      bl #0x30e2e0
00593a60  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00593a64  00 a0 a0 e1                                      mov sl, r0
00593a68  01 00 d2 e5                                      ldrb r0, [r2, #1]
00593a6c  1b ea f5 eb                                      bl #0x30e2e0
00593a70  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00593a74  00 80 a0 e1                                      mov r8, r0
00593a78  02 00 d2 e5                                      ldrb r0, [r2, #2]
00593a7c  17 ea f5 eb                                      bl #0x30e2e0
00593a80  b0 10 d4 e1                                      ldrh r1, [r4]
00593a84  08 30 9d e5                                      ldr r3, [sp, #8]
00593a88  00 20 a0 e1                                      mov r2, r0
00593a8c  93 01 03 e0                                      mul r3, r3, r1
00593a90  03 00 d7 e7                                      ldrb r0, [r7, r3]
00593a94  03 30 87 e0                                      add r3, r7, r3
00593a98  04 20 8d e5                                      str r2, [sp, #4]
00593a9c  0c 30 8d e5                                      str r3, [sp, #0xc]
00593aa0  0e ea f5 eb                                      bl #0x30e2e0
00593aa4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00593aa8  00 c0 a0 e1                                      mov ip, r0
00593aac  01 00 d3 e5                                      ldrb r0, [r3, #1]
00593ab0  08 c0 8d e5                                      str ip, [sp, #8]
00593ab4  09 ea f5 eb                                      bl #0x30e2e0
00593ab8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00593abc  10 00 8d e5                                      str r0, [sp, #0x10]
00593ac0  02 00 d3 e5                                      ldrb r0, [r3, #2]
00593ac4  05 ea f5 eb                                      bl #0x30e2e0
00593ac8  0a 00 96 e9                                      ldmib r6, {r1, r3}
00593acc  40 00 8d e5                                      str r0, [sp, #0x40]
00593ad0  24 b0 8d e5                                      str fp, [sp, #0x24]
00593ad4  28 90 8d e5                                      str sb, [sp, #0x28]
00593ad8  04 10 9d e9                                      ldmib sp, {r2, ip}
00593adc  03 00 51 e1                                      cmp r1, r3
00593ae0  34 20 8d e5                                      str r2, [sp, #0x34]
00593ae4  10 20 9d e5                                      ldr r2, [sp, #0x10]
00593ae8  2c a0 8d e5                                      str sl, [sp, #0x2c]
00593aec  30 80 8d e5                                      str r8, [sp, #0x30]
00593af0  38 c0 8d e5                                      str ip, [sp, #0x38]
00593af4  3c 20 8d e5                                      str r2, [sp, #0x3c]
00593af8  20 50 8d e5                                      str r5, [sp, #0x20]
00593afc  91 00 00 0a                                      beq #0x593d48
00593b00  00 50 81 e5                                      str r5, [r1]
00593b04  24 30 9d e5                                      ldr r3, [sp, #0x24]
00593b08  04 30 81 e5                                      str r3, [r1, #4]
00593b0c  28 30 9d e5                                      ldr r3, [sp, #0x28]
00593b10  08 30 81 e5                                      str r3, [r1, #8]
00593b14  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
00593b18  0c 30 81 e5                                      str r3, [r1, #0xc]
00593b1c  30 30 9d e5                                      ldr r3, [sp, #0x30]
00593b20  10 30 81 e5                                      str r3, [r1, #0x10]
00593b24  34 30 9d e5                                      ldr r3, [sp, #0x34]
00593b28  14 30 81 e5                                      str r3, [r1, #0x14]
00593b2c  38 30 9d e5                                      ldr r3, [sp, #0x38]
00593b30  18 30 81 e5                                      str r3, [r1, #0x18]
00593b34  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
00593b38  1c 30 81 e5                                      str r3, [r1, #0x1c]
00593b3c  40 30 9d e5                                      ldr r3, [sp, #0x40]
00593b40  20 30 81 e5                                      str r3, [r1, #0x20]
00593b44  04 30 96 e5                                      ldr r3, [r6, #4]
00593b48  24 30 83 e2                                      add r3, r3, #0x24
00593b4c  04 30 86 e5                                      str r3, [r6, #4]
00593b50  14 30 9d e5                                      ldr r3, [sp, #0x14]
00593b54  06 40 84 e2                                      add r4, r4, #6
00593b58  04 00 53 e1                                      cmp r3, r4
00593b5c  a9 ff ff 1a                                      bne #0x593a08
00593b60  18 50 9d e5                                      ldr r5, [sp, #0x18]
00593b64  8d ff ff ea                                      b #0x5939a0
00593b68  00 00 95 e5                                      ldr r0, [r5]
00593b6c  01 10 a0 e3                                      mov r1, #1
00593b70  d9 37 00 eb                                      bl #0x5a1adc
00593b74  04 70 95 e5                                      ldr r7, [r5, #4]
00593b78  00 00 54 e3                                      cmp r4, #0
00593b7c  07 70 80 e0                                      add r7, r0, r7
00593b80  22 01 00 0a                                      beq #0x594010
00593b84  88 80 84 e0                                      add r8, r4, r8, lsl #1
00593b88  08 00 54 e1                                      cmp r4, r8
00593b8c  14 80 8d e5                                      str r8, [sp, #0x14]
00593b90  82 ff ff 0a                                      beq #0x5939a0
00593b94  68 30 8d e2                                      add r3, sp, #0x68
00593b98  1c 30 8d e5                                      str r3, [sp, #0x1c]
00593b9c  18 50 8d e5                                      str r5, [sp, #0x18]
00593ba0  18 20 9d e5                                      ldr r2, [sp, #0x18]
00593ba4  b4 80 d4 e1                                      ldrh r8, [r4, #4]
00593ba8  be 30 d2 e1                                      ldrh r3, [r2, #0xe]
00593bac  98 03 08 e0                                      mul r8, r8, r3
00593bb0  08 00 d7 e7                                      ldrb r0, [r7, r8]
00593bb4  08 30 8d e5                                      str r3, [sp, #8]
00593bb8  c8 e9 f5 eb                                      bl #0x30e2e0
00593bbc  08 80 87 e0                                      add r8, r7, r8
00593bc0  00 50 a0 e1                                      mov r5, r0
00593bc4  01 00 d8 e5                                      ldrb r0, [r8, #1]
00593bc8  c4 e9 f5 eb                                      bl #0x30e2e0
00593bcc  00 b0 a0 e1                                      mov fp, r0
00593bd0  02 00 d8 e5                                      ldrb r0, [r8, #2]
00593bd4  c1 e9 f5 eb                                      bl #0x30e2e0
00593bd8  b2 20 d4 e1                                      ldrh r2, [r4, #2]
00593bdc  08 30 9d e5                                      ldr r3, [sp, #8]
00593be0  00 90 a0 e1                                      mov sb, r0
00593be4  93 02 02 e0                                      mul r2, r3, r2
00593be8  02 00 d7 e7                                      ldrb r0, [r7, r2]
00593bec  02 20 87 e0                                      add r2, r7, r2
00593bf0  0c 20 8d e5                                      str r2, [sp, #0xc]
00593bf4  b9 e9 f5 eb                                      bl #0x30e2e0
00593bf8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00593bfc  00 a0 a0 e1                                      mov sl, r0
00593c00  01 00 d2 e5                                      ldrb r0, [r2, #1]
00593c04  b5 e9 f5 eb                                      bl #0x30e2e0
00593c08  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00593c0c  00 80 a0 e1                                      mov r8, r0
00593c10  02 00 d2 e5                                      ldrb r0, [r2, #2]
00593c14  b1 e9 f5 eb                                      bl #0x30e2e0
00593c18  b0 10 d4 e1                                      ldrh r1, [r4]
00593c1c  08 30 9d e5                                      ldr r3, [sp, #8]
00593c20  00 20 a0 e1                                      mov r2, r0
00593c24  93 01 03 e0                                      mul r3, r3, r1
00593c28  03 00 d7 e7                                      ldrb r0, [r7, r3]
00593c2c  03 30 87 e0                                      add r3, r7, r3
00593c30  04 20 8d e5                                      str r2, [sp, #4]
00593c34  0c 30 8d e5                                      str r3, [sp, #0xc]
00593c38  a8 e9 f5 eb                                      bl #0x30e2e0
00593c3c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00593c40  00 c0 a0 e1                                      mov ip, r0
00593c44  01 00 d3 e5                                      ldrb r0, [r3, #1]
00593c48  08 c0 8d e5                                      str ip, [sp, #8]
00593c4c  a3 e9 f5 eb                                      bl #0x30e2e0
00593c50  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00593c54  10 00 8d e5                                      str r0, [sp, #0x10]
00593c58  02 00 d3 e5                                      ldrb r0, [r3, #2]
00593c5c  9f e9 f5 eb                                      bl #0x30e2e0
00593c60  0a 00 96 e9                                      ldmib r6, {r1, r3}
00593c64  88 00 8d e5                                      str r0, [sp, #0x88]
00593c68  6c b0 8d e5                                      str fp, [sp, #0x6c]
00593c6c  70 90 8d e5                                      str sb, [sp, #0x70]
00593c70  04 10 9d e9                                      ldmib sp, {r2, ip}
00593c74  03 00 51 e1                                      cmp r1, r3
00593c78  7c 20 8d e5                                      str r2, [sp, #0x7c]
00593c7c  10 20 9d e5                                      ldr r2, [sp, #0x10]
00593c80  74 a0 8d e5                                      str sl, [sp, #0x74]
00593c84  78 80 8d e5                                      str r8, [sp, #0x78]
00593c88  80 c0 8d e5                                      str ip, [sp, #0x80]
00593c8c  84 20 8d e5                                      str r2, [sp, #0x84]
00593c90  68 50 8d e5                                      str r5, [sp, #0x68]
00593c94  23 00 00 0a                                      beq #0x593d28
00593c98  00 50 81 e5                                      str r5, [r1]
00593c9c  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
00593ca0  04 30 81 e5                                      str r3, [r1, #4]
00593ca4  70 30 9d e5                                      ldr r3, [sp, #0x70]
00593ca8  08 30 81 e5                                      str r3, [r1, #8]
00593cac  74 30 9d e5                                      ldr r3, [sp, #0x74]
00593cb0  0c 30 81 e5                                      str r3, [r1, #0xc]
00593cb4  78 30 9d e5                                      ldr r3, [sp, #0x78]
00593cb8  10 30 81 e5                                      str r3, [r1, #0x10]
00593cbc  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
00593cc0  14 30 81 e5                                      str r3, [r1, #0x14]
00593cc4  80 30 9d e5                                      ldr r3, [sp, #0x80]
00593cc8  18 30 81 e5                                      str r3, [r1, #0x18]
00593ccc  84 30 9d e5                                      ldr r3, [sp, #0x84]
00593cd0  1c 30 81 e5                                      str r3, [r1, #0x1c]
00593cd4  88 30 9d e5                                      ldr r3, [sp, #0x88]
00593cd8  20 30 81 e5                                      str r3, [r1, #0x20]
00593cdc  04 30 96 e5                                      ldr r3, [r6, #4]
00593ce0  24 30 83 e2                                      add r3, r3, #0x24
00593ce4  04 30 86 e5                                      str r3, [r6, #4]
00593ce8  14 30 9d e5                                      ldr r3, [sp, #0x14]
00593cec  06 40 84 e2                                      add r4, r4, #6
00593cf0  04 00 53 e1                                      cmp r3, r4
00593cf4  a9 ff ff 1a                                      bne #0x593ba0
00593cf8  98 ff ff ea                                      b #0x593b60
00593cfc  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
00593d00  20 00 13 e3                                      tst r3, #0x20
00593d04  02 00 00 1a                                      bne #0x593d14
00593d08  00 30 a0 e3                                      mov r3, #0
00593d0c  13 30 c4 e5                                      strb r3, [r4, #0x13]
00593d10  c9 fe ff ea                                      b #0x59383c
00593d14  00 30 94 e5                                      ldr r3, [r4]
00593d18  04 00 a0 e1                                      mov r0, r4
00593d1c  0f e0 a0 e1                                      mov lr, pc
00593d20  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00593d24  f7 ff ff ea                                      b #0x593d08
00593d28  06 00 a0 e1                                      mov r0, r6
00593d2c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00593d30  40 f5 ff eb                                      bl #0x591238
00593d34  eb ff ff ea                                      b #0x593ce8
00593d38  06 00 a0 e1                                      mov r0, r6
00593d3c  14 20 9d e5                                      ldr r2, [sp, #0x14]
00593d40  3c f5 ff eb                                      bl #0x591238
00593d44  10 ff ff ea                                      b #0x59398c
00593d48  06 00 a0 e1                                      mov r0, r6
00593d4c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00593d50  38 f5 ff eb                                      bl #0x591238
00593d54  7d ff ff ea                                      b #0x593b50
00593d58  00 00 58 e3                                      cmp r8, #0
00593d5c  0f ff ff 0a                                      beq #0x5939a0
00593d60  44 20 8d e2                                      add r2, sp, #0x44
00593d64  be 30 d5 e1                                      ldrh r3, [r5, #0xe]
00593d68  1c 20 8d e5                                      str r2, [sp, #0x1c]
00593d6c  14 80 8d e5                                      str r8, [sp, #0x14]
00593d70  18 50 8d e5                                      str r5, [sp, #0x18]
00593d74  01 00 00 ea                                      b #0x593d80
00593d78  18 20 9d e5                                      ldr r2, [sp, #0x18]
00593d7c  be 30 d2 e1                                      ldrh r3, [r2, #0xe]
00593d80  02 80 84 e2                                      add r8, r4, #2
00593d84  93 08 08 e0                                      mul r8, r3, r8
00593d88  08 00 d7 e7                                      ldrb r0, [r7, r8]
00593d8c  08 30 8d e5                                      str r3, [sp, #8]
00593d90  52 e9 f5 eb                                      bl #0x30e2e0
00593d94  08 80 87 e0                                      add r8, r7, r8
00593d98  00 50 a0 e1                                      mov r5, r0
00593d9c  01 00 d8 e5                                      ldrb r0, [r8, #1]
00593da0  4e e9 f5 eb                                      bl #0x30e2e0
00593da4  00 b0 a0 e1                                      mov fp, r0
00593da8  02 00 d8 e5                                      ldrb r0, [r8, #2]
00593dac  4b e9 f5 eb                                      bl #0x30e2e0
00593db0  08 30 9d e5                                      ldr r3, [sp, #8]
00593db4  00 90 a0 e1                                      mov sb, r0
00593db8  94 33 22 e0                                      mla r2, r4, r3, r3
00593dbc  02 00 d7 e7                                      ldrb r0, [r7, r2]
00593dc0  02 20 87 e0                                      add r2, r7, r2
00593dc4  0c 20 8d e5                                      str r2, [sp, #0xc]
00593dc8  44 e9 f5 eb                                      bl #0x30e2e0
00593dcc  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00593dd0  00 a0 a0 e1                                      mov sl, r0
00593dd4  01 00 d2 e5                                      ldrb r0, [r2, #1]
00593dd8  40 e9 f5 eb                                      bl #0x30e2e0
00593ddc  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00593de0  00 80 a0 e1                                      mov r8, r0
00593de4  02 00 d2 e5                                      ldrb r0, [r2, #2]
00593de8  3c e9 f5 eb                                      bl #0x30e2e0
00593dec  08 30 9d e5                                      ldr r3, [sp, #8]
00593df0  00 20 a0 e1                                      mov r2, r0
00593df4  94 03 03 e0                                      mul r3, r4, r3
00593df8  03 00 d7 e7                                      ldrb r0, [r7, r3]
00593dfc  03 30 87 e0                                      add r3, r7, r3
00593e00  04 20 8d e5                                      str r2, [sp, #4]
00593e04  0c 30 8d e5                                      str r3, [sp, #0xc]
00593e08  34 e9 f5 eb                                      bl #0x30e2e0
00593e0c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00593e10  00 c0 a0 e1                                      mov ip, r0
00593e14  01 00 d3 e5                                      ldrb r0, [r3, #1]
00593e18  08 c0 8d e5                                      str ip, [sp, #8]
00593e1c  2f e9 f5 eb                                      bl #0x30e2e0
00593e20  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00593e24  10 00 8d e5                                      str r0, [sp, #0x10]
00593e28  02 00 d3 e5                                      ldrb r0, [r3, #2]
00593e2c  2b e9 f5 eb                                      bl #0x30e2e0
00593e30  04 10 9d e9                                      ldmib sp, {r2, ip}
00593e34  0a 00 96 e9                                      ldmib r6, {r1, r3}
00593e38  58 20 8d e5                                      str r2, [sp, #0x58]
00593e3c  48 b0 8d e5                                      str fp, [sp, #0x48]
00593e40  4c 90 8d e5                                      str sb, [sp, #0x4c]
00593e44  64 00 8d e5                                      str r0, [sp, #0x64]
00593e48  50 a0 8d e5                                      str sl, [sp, #0x50]
00593e4c  54 80 8d e5                                      str r8, [sp, #0x54]
00593e50  5c c0 8d e5                                      str ip, [sp, #0x5c]
00593e54  10 20 9d e5                                      ldr r2, [sp, #0x10]
00593e58  03 00 51 e1                                      cmp r1, r3
00593e5c  44 50 8d e5                                      str r5, [sp, #0x44]
00593e60  60 20 8d e5                                      str r2, [sp, #0x60]
00593e64  c7 00 00 0a                                      beq #0x594188
00593e68  00 50 81 e5                                      str r5, [r1]
00593e6c  48 30 9d e5                                      ldr r3, [sp, #0x48]
00593e70  04 30 81 e5                                      str r3, [r1, #4]
00593e74  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
00593e78  08 30 81 e5                                      str r3, [r1, #8]
00593e7c  50 30 9d e5                                      ldr r3, [sp, #0x50]
00593e80  0c 30 81 e5                                      str r3, [r1, #0xc]
00593e84  54 30 9d e5                                      ldr r3, [sp, #0x54]
00593e88  10 30 81 e5                                      str r3, [r1, #0x10]
00593e8c  58 30 9d e5                                      ldr r3, [sp, #0x58]
00593e90  14 30 81 e5                                      str r3, [r1, #0x14]
00593e94  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
00593e98  18 30 81 e5                                      str r3, [r1, #0x18]
00593e9c  60 30 9d e5                                      ldr r3, [sp, #0x60]
00593ea0  1c 30 81 e5                                      str r3, [r1, #0x1c]
00593ea4  64 30 9d e5                                      ldr r3, [sp, #0x64]
00593ea8  20 30 81 e5                                      str r3, [r1, #0x20]
00593eac  04 30 96 e5                                      ldr r3, [r6, #4]
00593eb0  24 30 83 e2                                      add r3, r3, #0x24
00593eb4  04 30 86 e5                                      str r3, [r6, #4]
00593eb8  14 30 9d e5                                      ldr r3, [sp, #0x14]
00593ebc  03 40 84 e2                                      add r4, r4, #3
00593ec0  04 00 53 e1                                      cmp r3, r4
00593ec4  ab ff ff 8a                                      bhi #0x593d78
00593ec8  18 50 9d e5                                      ldr r5, [sp, #0x18]
00593ecc  b3 fe ff ea                                      b #0x5939a0
00593ed0  00 00 58 e3                                      cmp r8, #0
00593ed4  b1 fe ff 0a                                      beq #0x5939a0
00593ed8  d4 20 8d e2                                      add r2, sp, #0xd4
00593edc  be 30 d5 e1                                      ldrh r3, [r5, #0xe]
00593ee0  00 a0 a0 e3                                      mov sl, #0
00593ee4  14 20 8d e5                                      str r2, [sp, #0x14]
00593ee8  0c 80 8d e5                                      str r8, [sp, #0xc]
00593eec  10 50 8d e5                                      str r5, [sp, #0x10]
00593ef0  01 00 00 ea                                      b #0x593efc
00593ef4  10 20 9d e5                                      ldr r2, [sp, #0x10]
00593ef8  be 30 d2 e1                                      ldrh r3, [r2, #0xe]
00593efc  02 80 84 e2                                      add r8, r4, #2
00593f00  93 08 08 e0                                      mul r8, r3, r8
00593f04  08 00 d7 e7                                      ldrb r0, [r7, r8]
00593f08  08 30 8d e5                                      str r3, [sp, #8]
00593f0c  f3 e8 f5 eb                                      bl #0x30e2e0
00593f10  08 80 87 e0                                      add r8, r7, r8
00593f14  00 50 a0 e1                                      mov r5, r0
00593f18  01 00 d8 e5                                      ldrb r0, [r8, #1]
00593f1c  ef e8 f5 eb                                      bl #0x30e2e0
00593f20  08 30 9d e5                                      ldr r3, [sp, #8]
00593f24  00 b0 a0 e1                                      mov fp, r0
00593f28  94 33 28 e0                                      mla r8, r4, r3, r3
00593f2c  08 00 d7 e7                                      ldrb r0, [r7, r8]
00593f30  ea e8 f5 eb                                      bl #0x30e2e0
00593f34  08 80 87 e0                                      add r8, r7, r8
00593f38  00 90 a0 e1                                      mov sb, r0
00593f3c  01 00 d8 e5                                      ldrb r0, [r8, #1]
00593f40  e6 e8 f5 eb                                      bl #0x30e2e0
00593f44  08 30 9d e5                                      ldr r3, [sp, #8]
00593f48  00 80 a0 e1                                      mov r8, r0
00593f4c  94 03 03 e0                                      mul r3, r4, r3
00593f50  03 00 d7 e7                                      ldrb r0, [r7, r3]
00593f54  03 30 87 e0                                      add r3, r7, r3
00593f58  08 30 8d e5                                      str r3, [sp, #8]
00593f5c  df e8 f5 eb                                      bl #0x30e2e0
00593f60  08 30 9d e5                                      ldr r3, [sp, #8]
00593f64  00 20 a0 e1                                      mov r2, r0
00593f68  01 00 d3 e5                                      ldrb r0, [r3, #1]
00593f6c  04 20 8d e5                                      str r2, [sp, #4]
00593f70  da e8 f5 eb                                      bl #0x30e2e0
00593f74  0a 00 96 e9                                      ldmib r6, {r1, r3}
00593f78  04 20 9d e5                                      ldr r2, [sp, #4]
00593f7c  d8 b0 8d e5                                      str fp, [sp, #0xd8]
00593f80  03 00 51 e1                                      cmp r1, r3
00593f84  e0 90 8d e5                                      str sb, [sp, #0xe0]
00593f88  e4 80 8d e5                                      str r8, [sp, #0xe4]
00593f8c  f0 00 8d e5                                      str r0, [sp, #0xf0]
00593f90  ec 20 8d e5                                      str r2, [sp, #0xec]
00593f94  dc a0 8d e5                                      str sl, [sp, #0xdc]
00593f98  e8 a0 8d e5                                      str sl, [sp, #0xe8]
00593f9c  d4 50 8d e5                                      str r5, [sp, #0xd4]
00593fa0  f4 a0 8d e5                                      str sl, [sp, #0xf4]
00593fa4  7b 00 00 0a                                      beq #0x594198
00593fa8  00 50 81 e5                                      str r5, [r1]
00593fac  d8 30 9d e5                                      ldr r3, [sp, #0xd8]
00593fb0  04 30 81 e5                                      str r3, [r1, #4]
00593fb4  dc 30 9d e5                                      ldr r3, [sp, #0xdc]
00593fb8  08 30 81 e5                                      str r3, [r1, #8]
00593fbc  e0 30 9d e5                                      ldr r3, [sp, #0xe0]
00593fc0  0c 30 81 e5                                      str r3, [r1, #0xc]
00593fc4  e4 30 9d e5                                      ldr r3, [sp, #0xe4]
00593fc8  10 30 81 e5                                      str r3, [r1, #0x10]
00593fcc  e8 30 9d e5                                      ldr r3, [sp, #0xe8]
00593fd0  14 30 81 e5                                      str r3, [r1, #0x14]
00593fd4  ec 30 9d e5                                      ldr r3, [sp, #0xec]
00593fd8  18 30 81 e5                                      str r3, [r1, #0x18]
00593fdc  f0 30 9d e5                                      ldr r3, [sp, #0xf0]
00593fe0  1c 30 81 e5                                      str r3, [r1, #0x1c]
00593fe4  f4 30 9d e5                                      ldr r3, [sp, #0xf4]
00593fe8  20 30 81 e5                                      str r3, [r1, #0x20]
00593fec  04 30 96 e5                                      ldr r3, [r6, #4]
00593ff0  24 30 83 e2                                      add r3, r3, #0x24
00593ff4  04 30 86 e5                                      str r3, [r6, #4]
00593ff8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00593ffc  03 40 84 e2                                      add r4, r4, #3
00594000  04 00 53 e1                                      cmp r3, r4
00594004  ba ff ff 8a                                      bhi #0x593ef4
00594008  10 50 9d e5                                      ldr r5, [sp, #0x10]
0059400c  63 fe ff ea                                      b #0x5939a0
00594010  00 00 58 e3                                      cmp r8, #0
00594014  61 fe ff 0a                                      beq #0x5939a0
00594018  8c 20 8d e2                                      add r2, sp, #0x8c
0059401c  be 30 d5 e1                                      ldrh r3, [r5, #0xe]
00594020  1c 20 8d e5                                      str r2, [sp, #0x1c]
00594024  14 80 8d e5                                      str r8, [sp, #0x14]
00594028  18 50 8d e5                                      str r5, [sp, #0x18]
0059402c  01 00 00 ea                                      b #0x594038
00594030  18 20 9d e5                                      ldr r2, [sp, #0x18]
00594034  be 30 d2 e1                                      ldrh r3, [r2, #0xe]
00594038  02 80 84 e2                                      add r8, r4, #2
0059403c  93 08 08 e0                                      mul r8, r3, r8
00594040  08 00 d7 e7                                      ldrb r0, [r7, r8]
00594044  08 30 8d e5                                      str r3, [sp, #8]
00594048  a4 e8 f5 eb                                      bl #0x30e2e0
0059404c  08 80 87 e0                                      add r8, r7, r8
00594050  00 50 a0 e1                                      mov r5, r0
00594054  01 00 d8 e5                                      ldrb r0, [r8, #1]
00594058  a0 e8 f5 eb                                      bl #0x30e2e0
0059405c  00 b0 a0 e1                                      mov fp, r0
00594060  02 00 d8 e5                                      ldrb r0, [r8, #2]
00594064  9d e8 f5 eb                                      bl #0x30e2e0
00594068  08 30 9d e5                                      ldr r3, [sp, #8]
0059406c  00 90 a0 e1                                      mov sb, r0
00594070  94 33 22 e0                                      mla r2, r4, r3, r3
00594074  02 00 d7 e7                                      ldrb r0, [r7, r2]
00594078  02 20 87 e0                                      add r2, r7, r2
0059407c  0c 20 8d e5                                      str r2, [sp, #0xc]
00594080  96 e8 f5 eb                                      bl #0x30e2e0
00594084  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00594088  00 a0 a0 e1                                      mov sl, r0
0059408c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00594090  92 e8 f5 eb                                      bl #0x30e2e0
00594094  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00594098  00 80 a0 e1                                      mov r8, r0
0059409c  02 00 d2 e5                                      ldrb r0, [r2, #2]
005940a0  8e e8 f5 eb                                      bl #0x30e2e0
005940a4  08 30 9d e5                                      ldr r3, [sp, #8]
005940a8  00 20 a0 e1                                      mov r2, r0
005940ac  94 03 03 e0                                      mul r3, r4, r3
005940b0  03 00 d7 e7                                      ldrb r0, [r7, r3]
005940b4  03 30 87 e0                                      add r3, r7, r3
005940b8  04 20 8d e5                                      str r2, [sp, #4]
005940bc  0c 30 8d e5                                      str r3, [sp, #0xc]
005940c0  86 e8 f5 eb                                      bl #0x30e2e0
005940c4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005940c8  00 c0 a0 e1                                      mov ip, r0
005940cc  01 00 d3 e5                                      ldrb r0, [r3, #1]
005940d0  08 c0 8d e5                                      str ip, [sp, #8]
005940d4  81 e8 f5 eb                                      bl #0x30e2e0
005940d8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005940dc  10 00 8d e5                                      str r0, [sp, #0x10]
005940e0  02 00 d3 e5                                      ldrb r0, [r3, #2]
005940e4  7d e8 f5 eb                                      bl #0x30e2e0
005940e8  04 10 9d e9                                      ldmib sp, {r2, ip}
005940ec  0a 00 96 e9                                      ldmib r6, {r1, r3}
005940f0  a0 20 8d e5                                      str r2, [sp, #0xa0]
005940f4  90 b0 8d e5                                      str fp, [sp, #0x90]
005940f8  94 90 8d e5                                      str sb, [sp, #0x94]
005940fc  ac 00 8d e5                                      str r0, [sp, #0xac]
00594100  98 a0 8d e5                                      str sl, [sp, #0x98]
00594104  9c 80 8d e5                                      str r8, [sp, #0x9c]
00594108  a4 c0 8d e5                                      str ip, [sp, #0xa4]
0059410c  10 20 9d e5                                      ldr r2, [sp, #0x10]
00594110  03 00 51 e1                                      cmp r1, r3
00594114  8c 50 8d e5                                      str r5, [sp, #0x8c]
00594118  a8 20 8d e5                                      str r2, [sp, #0xa8]
0059411c  21 00 00 0a                                      beq #0x5941a8
00594120  00 50 81 e5                                      str r5, [r1]
00594124  90 30 9d e5                                      ldr r3, [sp, #0x90]
00594128  04 30 81 e5                                      str r3, [r1, #4]
0059412c  94 30 9d e5                                      ldr r3, [sp, #0x94]
00594130  08 30 81 e5                                      str r3, [r1, #8]
00594134  98 30 9d e5                                      ldr r3, [sp, #0x98]
00594138  0c 30 81 e5                                      str r3, [r1, #0xc]
0059413c  9c 30 9d e5                                      ldr r3, [sp, #0x9c]
00594140  10 30 81 e5                                      str r3, [r1, #0x10]
00594144  a0 30 9d e5                                      ldr r3, [sp, #0xa0]
00594148  14 30 81 e5                                      str r3, [r1, #0x14]
0059414c  a4 30 9d e5                                      ldr r3, [sp, #0xa4]
00594150  18 30 81 e5                                      str r3, [r1, #0x18]
00594154  a8 30 9d e5                                      ldr r3, [sp, #0xa8]
00594158  1c 30 81 e5                                      str r3, [r1, #0x1c]
0059415c  ac 30 9d e5                                      ldr r3, [sp, #0xac]
00594160  20 30 81 e5                                      str r3, [r1, #0x20]
00594164  04 30 96 e5                                      ldr r3, [r6, #4]
00594168  24 30 83 e2                                      add r3, r3, #0x24
0059416c  04 30 86 e5                                      str r3, [r6, #4]
00594170  14 30 9d e5                                      ldr r3, [sp, #0x14]
00594174  03 40 84 e2                                      add r4, r4, #3
00594178  04 00 53 e1                                      cmp r3, r4
0059417c  ab ff ff 8a                                      bhi #0x594030
00594180  18 50 9d e5                                      ldr r5, [sp, #0x18]
00594184  05 fe ff ea                                      b #0x5939a0
00594188  06 00 a0 e1                                      mov r0, r6
0059418c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00594190  28 f4 ff eb                                      bl #0x591238
00594194  47 ff ff ea                                      b #0x593eb8
00594198  06 00 a0 e1                                      mov r0, r6
0059419c  14 20 9d e5                                      ldr r2, [sp, #0x14]
005941a0  24 f4 ff eb                                      bl #0x591238
005941a4  93 ff ff ea                                      b #0x593ff8
005941a8  06 00 a0 e1                                      mov r0, r6
005941ac  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
005941b0  20 f4 ff eb                                      bl #0x591238
005941b4  ed ff ff ea                                      b #0x594170

; FUNCTION 0x005941b8, declared_size=2480, range_size=2480, mode=arm
; class-group: void glitch::scene
; alias: _ZN6glitch5scene12_GLOBAL__N_115createTrianglesIsSt6vectorINS_4core10triangle3dIfEENS4_10SAllocatorIS6_LNS_6memory13E_MEMORY_HINTE0EEEEEEvPKtjRKNS_5video13SVertexStreamERT0_
; demangled: void glitch::scene::(anonymous namespace)::createTriangles<short, std::vector<glitch::core::triangle3d<float>, glitch::core::SAllocator<glitch::core::triangle3d<float>, (glitch::memory::E_MEMORY_HINT)0> > >(unsigned short const*, unsigned int, glitch::video::SVertexStream const&, std::vector<glitch::core::triangle3d<float>, glitch::core::SAllocator<glitch::core::triangle3d<float>, (glitch::memory::E_MEMORY_HINT)0> >&)
; decoder-mode: arm
005941b8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005941bc  02 50 a0 e1                                      mov r5, r2
005941c0  bc 20 d2 e1                                      ldrh r2, [r2, #0xc]
005941c4  fc d0 4d e2                                      sub sp, sp, #0xfc
005941c8  00 40 a0 e1                                      mov r4, r0
005941cc  03 00 52 e3                                      cmp r2, #3
005941d0  01 80 a0 e1                                      mov r8, r1
005941d4  03 60 a0 e1                                      mov r6, r3
005941d8  ce 00 00 0a                                      beq #0x594518
005941dc  04 00 52 e3                                      cmp r2, #4
005941e0  66 00 00 0a                                      beq #0x594380
005941e4  02 00 52 e3                                      cmp r2, #2
005941e8  01 00 00 0a                                      beq #0x5941f4
005941ec  fc d0 8d e2                                      add sp, sp, #0xfc
005941f0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005941f4  00 00 95 e5                                      ldr r0, [r5]
005941f8  01 10 a0 e3                                      mov r1, #1
005941fc  36 36 00 eb                                      bl #0x5a1adc
00594200  04 70 95 e5                                      ldr r7, [r5, #4]
00594204  00 00 54 e3                                      cmp r4, #0
00594208  07 70 80 e0                                      add r7, r0, r7
0059420c  9b 01 00 0a                                      beq #0x594880
00594210  88 80 84 e0                                      add r8, r4, r8, lsl #1
00594214  08 00 54 e1                                      cmp r4, r8
00594218  0c 80 8d e5                                      str r8, [sp, #0xc]
0059421c  4b 00 00 0a                                      beq #0x594350
00594220  b0 20 8d e2                                      add r2, sp, #0xb0
00594224  00 80 a0 e3                                      mov r8, #0
00594228  14 20 8d e5                                      str r2, [sp, #0x14]
0059422c  10 50 8d e5                                      str r5, [sp, #0x10]
00594230  10 20 9d e5                                      ldr r2, [sp, #0x10]
00594234  b4 a0 d4 e1                                      ldrh sl, [r4, #4]
00594238  be 30 d2 e1                                      ldrh r3, [r2, #0xe]
0059423c  9a 03 0a e0                                      mul sl, sl, r3
00594240  fa 00 97 e1                                      ldrsh r0, [r7, sl]
00594244  08 30 8d e5                                      str r3, [sp, #8]
00594248  c5 e9 f5 eb                                      bl #0x30e964
0059424c  0a a0 87 e0                                      add sl, r7, sl
00594250  00 50 a0 e1                                      mov r5, r0
00594254  f2 00 da e1                                      ldrsh r0, [sl, #2]
00594258  c1 e9 f5 eb                                      bl #0x30e964
0059425c  b2 a0 d4 e1                                      ldrh sl, [r4, #2]
00594260  08 30 9d e5                                      ldr r3, [sp, #8]
00594264  00 b0 a0 e1                                      mov fp, r0
00594268  93 0a 0a e0                                      mul sl, r3, sl
0059426c  fa 00 97 e1                                      ldrsh r0, [r7, sl]
00594270  bb e9 f5 eb                                      bl #0x30e964
00594274  0a a0 87 e0                                      add sl, r7, sl
00594278  00 90 a0 e1                                      mov sb, r0
0059427c  f2 00 da e1                                      ldrsh r0, [sl, #2]
00594280  b7 e9 f5 eb                                      bl #0x30e964
00594284  b0 20 d4 e1                                      ldrh r2, [r4]
00594288  08 30 9d e5                                      ldr r3, [sp, #8]
0059428c  00 a0 a0 e1                                      mov sl, r0
00594290  93 02 03 e0                                      mul r3, r3, r2
00594294  f3 00 97 e1                                      ldrsh r0, [r7, r3]
00594298  03 30 87 e0                                      add r3, r7, r3
0059429c  08 30 8d e5                                      str r3, [sp, #8]
005942a0  af e9 f5 eb                                      bl #0x30e964
005942a4  08 30 9d e5                                      ldr r3, [sp, #8]
005942a8  00 20 a0 e1                                      mov r2, r0
005942ac  f2 00 d3 e1                                      ldrsh r0, [r3, #2]
005942b0  04 20 8d e5                                      str r2, [sp, #4]
005942b4  aa e9 f5 eb                                      bl #0x30e964
005942b8  0a 00 96 e9                                      ldmib r6, {r1, r3}
005942bc  04 20 9d e5                                      ldr r2, [sp, #4]
005942c0  b4 b0 8d e5                                      str fp, [sp, #0xb4]
005942c4  03 00 51 e1                                      cmp r1, r3
005942c8  bc 90 8d e5                                      str sb, [sp, #0xbc]
005942cc  cc 00 8d e5                                      str r0, [sp, #0xcc]
005942d0  c0 a0 8d e5                                      str sl, [sp, #0xc0]
005942d4  c8 20 8d e5                                      str r2, [sp, #0xc8]
005942d8  b8 80 8d e5                                      str r8, [sp, #0xb8]
005942dc  b0 50 8d e5                                      str r5, [sp, #0xb0]
005942e0  c4 80 8d e5                                      str r8, [sp, #0xc4]
005942e4  d0 80 8d e5                                      str r8, [sp, #0xd0]
005942e8  fe 00 00 0a                                      beq #0x5946e8
005942ec  00 50 81 e5                                      str r5, [r1]
005942f0  b4 30 9d e5                                      ldr r3, [sp, #0xb4]
005942f4  04 30 81 e5                                      str r3, [r1, #4]
005942f8  b8 30 9d e5                                      ldr r3, [sp, #0xb8]
005942fc  08 30 81 e5                                      str r3, [r1, #8]
00594300  bc 30 9d e5                                      ldr r3, [sp, #0xbc]
00594304  0c 30 81 e5                                      str r3, [r1, #0xc]
00594308  c0 30 9d e5                                      ldr r3, [sp, #0xc0]
0059430c  10 30 81 e5                                      str r3, [r1, #0x10]
00594310  c4 30 9d e5                                      ldr r3, [sp, #0xc4]
00594314  14 30 81 e5                                      str r3, [r1, #0x14]
00594318  c8 30 9d e5                                      ldr r3, [sp, #0xc8]
0059431c  18 30 81 e5                                      str r3, [r1, #0x18]
00594320  cc 30 9d e5                                      ldr r3, [sp, #0xcc]
00594324  1c 30 81 e5                                      str r3, [r1, #0x1c]
00594328  d0 30 9d e5                                      ldr r3, [sp, #0xd0]
0059432c  20 30 81 e5                                      str r3, [r1, #0x20]
00594330  04 30 96 e5                                      ldr r3, [r6, #4]
00594334  24 30 83 e2                                      add r3, r3, #0x24
00594338  04 30 86 e5                                      str r3, [r6, #4]
0059433c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00594340  06 40 84 e2                                      add r4, r4, #6
00594344  04 00 53 e1                                      cmp r3, r4
00594348  b8 ff ff 1a                                      bne #0x594230
0059434c  10 50 9d e5                                      ldr r5, [sp, #0x10]
00594350  00 00 57 e3                                      cmp r7, #0
00594354  a4 ff ff 0a                                      beq #0x5941ec
00594358  00 40 95 e5                                      ldr r4, [r5]
0059435c  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
00594360  1f 20 03 e2                                      and r2, r3, #0x1f
00594364  01 00 52 e3                                      cmp r2, #1
00594368  cf 00 00 9a                                      bls #0x5946ac
0059436c  01 20 42 e2                                      sub r2, r2, #1
00594370  1f 30 c3 e3                                      bic r3, r3, #0x1f
00594374  03 30 82 e1                                      orr r3, r2, r3
00594378  13 30 c4 e5                                      strb r3, [r4, #0x13]
0059437c  9a ff ff ea                                      b #0x5941ec
00594380  00 00 95 e5                                      ldr r0, [r5]
00594384  01 10 a0 e3                                      mov r1, #1
00594388  d3 35 00 eb                                      bl #0x5a1adc
0059438c  04 70 95 e5                                      ldr r7, [r5, #4]
00594390  00 00 54 e3                                      cmp r4, #0
00594394  07 70 80 e0                                      add r7, r0, r7
00594398  da 00 00 0a                                      beq #0x594708
0059439c  88 80 84 e0                                      add r8, r4, r8, lsl #1
005943a0  08 00 54 e1                                      cmp r4, r8
005943a4  14 80 8d e5                                      str r8, [sp, #0x14]
005943a8  e8 ff ff 0a                                      beq #0x594350
005943ac  20 30 8d e2                                      add r3, sp, #0x20
005943b0  1c 30 8d e5                                      str r3, [sp, #0x1c]
005943b4  18 50 8d e5                                      str r5, [sp, #0x18]
005943b8  18 20 9d e5                                      ldr r2, [sp, #0x18]
005943bc  b4 80 d4 e1                                      ldrh r8, [r4, #4]
005943c0  be 30 d2 e1                                      ldrh r3, [r2, #0xe]
005943c4  98 03 08 e0                                      mul r8, r8, r3
005943c8  f8 00 97 e1                                      ldrsh r0, [r7, r8]
005943cc  08 30 8d e5                                      str r3, [sp, #8]
005943d0  63 e9 f5 eb                                      bl #0x30e964
005943d4  08 80 87 e0                                      add r8, r7, r8
005943d8  00 50 a0 e1                                      mov r5, r0
005943dc  f2 00 d8 e1                                      ldrsh r0, [r8, #2]
005943e0  5f e9 f5 eb                                      bl #0x30e964
005943e4  00 b0 a0 e1                                      mov fp, r0
005943e8  f4 00 d8 e1                                      ldrsh r0, [r8, #4]
005943ec  5c e9 f5 eb                                      bl #0x30e964
005943f0  b2 20 d4 e1                                      ldrh r2, [r4, #2]
005943f4  08 30 9d e5                                      ldr r3, [sp, #8]
005943f8  00 90 a0 e1                                      mov sb, r0
005943fc  93 02 02 e0                                      mul r2, r3, r2
00594400  f2 00 97 e1                                      ldrsh r0, [r7, r2]
00594404  02 20 87 e0                                      add r2, r7, r2
00594408  0c 20 8d e5                                      str r2, [sp, #0xc]
0059440c  54 e9 f5 eb                                      bl #0x30e964
00594410  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00594414  00 a0 a0 e1                                      mov sl, r0
00594418  f2 00 d2 e1                                      ldrsh r0, [r2, #2]
0059441c  50 e9 f5 eb                                      bl #0x30e964
00594420  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00594424  00 80 a0 e1                                      mov r8, r0
00594428  f4 00 d2 e1                                      ldrsh r0, [r2, #4]
0059442c  4c e9 f5 eb                                      bl #0x30e964
00594430  b0 10 d4 e1                                      ldrh r1, [r4]
00594434  08 30 9d e5                                      ldr r3, [sp, #8]
00594438  00 20 a0 e1                                      mov r2, r0
0059443c  93 01 03 e0                                      mul r3, r3, r1
00594440  f3 00 97 e1                                      ldrsh r0, [r7, r3]
00594444  03 30 87 e0                                      add r3, r7, r3
00594448  04 20 8d e5                                      str r2, [sp, #4]
0059444c  0c 30 8d e5                                      str r3, [sp, #0xc]
00594450  43 e9 f5 eb                                      bl #0x30e964
00594454  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00594458  00 c0 a0 e1                                      mov ip, r0
0059445c  f2 00 d3 e1                                      ldrsh r0, [r3, #2]
00594460  08 c0 8d e5                                      str ip, [sp, #8]
00594464  3e e9 f5 eb                                      bl #0x30e964
00594468  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0059446c  10 00 8d e5                                      str r0, [sp, #0x10]
00594470  f4 00 d3 e1                                      ldrsh r0, [r3, #4]
00594474  3a e9 f5 eb                                      bl #0x30e964
00594478  0a 00 96 e9                                      ldmib r6, {r1, r3}
0059447c  40 00 8d e5                                      str r0, [sp, #0x40]
00594480  24 b0 8d e5                                      str fp, [sp, #0x24]
00594484  28 90 8d e5                                      str sb, [sp, #0x28]
00594488  04 10 9d e9                                      ldmib sp, {r2, ip}
0059448c  03 00 51 e1                                      cmp r1, r3
00594490  34 20 8d e5                                      str r2, [sp, #0x34]
00594494  10 20 9d e5                                      ldr r2, [sp, #0x10]
00594498  2c a0 8d e5                                      str sl, [sp, #0x2c]
0059449c  30 80 8d e5                                      str r8, [sp, #0x30]
005944a0  38 c0 8d e5                                      str ip, [sp, #0x38]
005944a4  3c 20 8d e5                                      str r2, [sp, #0x3c]
005944a8  20 50 8d e5                                      str r5, [sp, #0x20]
005944ac  91 00 00 0a                                      beq #0x5946f8
005944b0  00 50 81 e5                                      str r5, [r1]
005944b4  24 30 9d e5                                      ldr r3, [sp, #0x24]
005944b8  04 30 81 e5                                      str r3, [r1, #4]
005944bc  28 30 9d e5                                      ldr r3, [sp, #0x28]
005944c0  08 30 81 e5                                      str r3, [r1, #8]
005944c4  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
005944c8  0c 30 81 e5                                      str r3, [r1, #0xc]
005944cc  30 30 9d e5                                      ldr r3, [sp, #0x30]
005944d0  10 30 81 e5                                      str r3, [r1, #0x10]
005944d4  34 30 9d e5                                      ldr r3, [sp, #0x34]
005944d8  14 30 81 e5                                      str r3, [r1, #0x14]
005944dc  38 30 9d e5                                      ldr r3, [sp, #0x38]
005944e0  18 30 81 e5                                      str r3, [r1, #0x18]
005944e4  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
005944e8  1c 30 81 e5                                      str r3, [r1, #0x1c]
005944ec  40 30 9d e5                                      ldr r3, [sp, #0x40]
005944f0  20 30 81 e5                                      str r3, [r1, #0x20]
005944f4  04 30 96 e5                                      ldr r3, [r6, #4]
005944f8  24 30 83 e2                                      add r3, r3, #0x24
005944fc  04 30 86 e5                                      str r3, [r6, #4]
00594500  14 30 9d e5                                      ldr r3, [sp, #0x14]
00594504  06 40 84 e2                                      add r4, r4, #6
00594508  04 00 53 e1                                      cmp r3, r4
0059450c  a9 ff ff 1a                                      bne #0x5943b8
00594510  18 50 9d e5                                      ldr r5, [sp, #0x18]
00594514  8d ff ff ea                                      b #0x594350
00594518  00 00 95 e5                                      ldr r0, [r5]
0059451c  01 10 a0 e3                                      mov r1, #1
00594520  6d 35 00 eb                                      bl #0x5a1adc
00594524  04 70 95 e5                                      ldr r7, [r5, #4]
00594528  00 00 54 e3                                      cmp r4, #0
0059452c  07 70 80 e0                                      add r7, r0, r7
00594530  22 01 00 0a                                      beq #0x5949c0
00594534  88 80 84 e0                                      add r8, r4, r8, lsl #1
00594538  08 00 54 e1                                      cmp r4, r8
0059453c  14 80 8d e5                                      str r8, [sp, #0x14]
00594540  82 ff ff 0a                                      beq #0x594350
00594544  68 30 8d e2                                      add r3, sp, #0x68
00594548  1c 30 8d e5                                      str r3, [sp, #0x1c]
0059454c  18 50 8d e5                                      str r5, [sp, #0x18]
00594550  18 20 9d e5                                      ldr r2, [sp, #0x18]
00594554  b4 80 d4 e1                                      ldrh r8, [r4, #4]
00594558  be 30 d2 e1                                      ldrh r3, [r2, #0xe]
0059455c  98 03 08 e0                                      mul r8, r8, r3
00594560  f8 00 97 e1                                      ldrsh r0, [r7, r8]
00594564  08 30 8d e5                                      str r3, [sp, #8]
00594568  fd e8 f5 eb                                      bl #0x30e964
0059456c  08 80 87 e0                                      add r8, r7, r8
00594570  00 50 a0 e1                                      mov r5, r0
00594574  f2 00 d8 e1                                      ldrsh r0, [r8, #2]
00594578  f9 e8 f5 eb                                      bl #0x30e964
0059457c  00 b0 a0 e1                                      mov fp, r0
00594580  f4 00 d8 e1                                      ldrsh r0, [r8, #4]
00594584  f6 e8 f5 eb                                      bl #0x30e964
00594588  b2 20 d4 e1                                      ldrh r2, [r4, #2]
0059458c  08 30 9d e5                                      ldr r3, [sp, #8]
00594590  00 90 a0 e1                                      mov sb, r0
00594594  93 02 02 e0                                      mul r2, r3, r2
00594598  f2 00 97 e1                                      ldrsh r0, [r7, r2]
0059459c  02 20 87 e0                                      add r2, r7, r2
005945a0  0c 20 8d e5                                      str r2, [sp, #0xc]
005945a4  ee e8 f5 eb                                      bl #0x30e964
005945a8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005945ac  00 a0 a0 e1                                      mov sl, r0
005945b0  f2 00 d2 e1                                      ldrsh r0, [r2, #2]
005945b4  ea e8 f5 eb                                      bl #0x30e964
005945b8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005945bc  00 80 a0 e1                                      mov r8, r0
005945c0  f4 00 d2 e1                                      ldrsh r0, [r2, #4]
005945c4  e6 e8 f5 eb                                      bl #0x30e964
005945c8  b0 10 d4 e1                                      ldrh r1, [r4]
005945cc  08 30 9d e5                                      ldr r3, [sp, #8]
005945d0  00 20 a0 e1                                      mov r2, r0
005945d4  93 01 03 e0                                      mul r3, r3, r1
005945d8  f3 00 97 e1                                      ldrsh r0, [r7, r3]
005945dc  03 30 87 e0                                      add r3, r7, r3
005945e0  04 20 8d e5                                      str r2, [sp, #4]
005945e4  0c 30 8d e5                                      str r3, [sp, #0xc]
005945e8  dd e8 f5 eb                                      bl #0x30e964
005945ec  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005945f0  00 c0 a0 e1                                      mov ip, r0
005945f4  f2 00 d3 e1                                      ldrsh r0, [r3, #2]
005945f8  08 c0 8d e5                                      str ip, [sp, #8]
005945fc  d8 e8 f5 eb                                      bl #0x30e964
00594600  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00594604  10 00 8d e5                                      str r0, [sp, #0x10]
00594608  f4 00 d3 e1                                      ldrsh r0, [r3, #4]
0059460c  d4 e8 f5 eb                                      bl #0x30e964
00594610  0a 00 96 e9                                      ldmib r6, {r1, r3}
00594614  88 00 8d e5                                      str r0, [sp, #0x88]
00594618  6c b0 8d e5                                      str fp, [sp, #0x6c]
0059461c  70 90 8d e5                                      str sb, [sp, #0x70]
00594620  04 10 9d e9                                      ldmib sp, {r2, ip}
00594624  03 00 51 e1                                      cmp r1, r3
00594628  7c 20 8d e5                                      str r2, [sp, #0x7c]
0059462c  10 20 9d e5                                      ldr r2, [sp, #0x10]
00594630  74 a0 8d e5                                      str sl, [sp, #0x74]
00594634  78 80 8d e5                                      str r8, [sp, #0x78]
00594638  80 c0 8d e5                                      str ip, [sp, #0x80]
0059463c  84 20 8d e5                                      str r2, [sp, #0x84]
00594640  68 50 8d e5                                      str r5, [sp, #0x68]
00594644  23 00 00 0a                                      beq #0x5946d8
00594648  00 50 81 e5                                      str r5, [r1]
0059464c  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
00594650  04 30 81 e5                                      str r3, [r1, #4]
00594654  70 30 9d e5                                      ldr r3, [sp, #0x70]
00594658  08 30 81 e5                                      str r3, [r1, #8]
0059465c  74 30 9d e5                                      ldr r3, [sp, #0x74]
00594660  0c 30 81 e5                                      str r3, [r1, #0xc]
00594664  78 30 9d e5                                      ldr r3, [sp, #0x78]
00594668  10 30 81 e5                                      str r3, [r1, #0x10]
0059466c  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
00594670  14 30 81 e5                                      str r3, [r1, #0x14]
00594674  80 30 9d e5                                      ldr r3, [sp, #0x80]
00594678  18 30 81 e5                                      str r3, [r1, #0x18]
0059467c  84 30 9d e5                                      ldr r3, [sp, #0x84]
00594680  1c 30 81 e5                                      str r3, [r1, #0x1c]
00594684  88 30 9d e5                                      ldr r3, [sp, #0x88]
00594688  20 30 81 e5                                      str r3, [r1, #0x20]
0059468c  04 30 96 e5                                      ldr r3, [r6, #4]
00594690  24 30 83 e2                                      add r3, r3, #0x24
00594694  04 30 86 e5                                      str r3, [r6, #4]
00594698  14 30 9d e5                                      ldr r3, [sp, #0x14]
0059469c  06 40 84 e2                                      add r4, r4, #6
005946a0  04 00 53 e1                                      cmp r3, r4
005946a4  a9 ff ff 1a                                      bne #0x594550
005946a8  98 ff ff ea                                      b #0x594510
005946ac  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
005946b0  20 00 13 e3                                      tst r3, #0x20
005946b4  02 00 00 1a                                      bne #0x5946c4
005946b8  00 30 a0 e3                                      mov r3, #0
005946bc  13 30 c4 e5                                      strb r3, [r4, #0x13]
005946c0  c9 fe ff ea                                      b #0x5941ec
005946c4  00 30 94 e5                                      ldr r3, [r4]
005946c8  04 00 a0 e1                                      mov r0, r4
005946cc  0f e0 a0 e1                                      mov lr, pc
005946d0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
005946d4  f7 ff ff ea                                      b #0x5946b8
005946d8  06 00 a0 e1                                      mov r0, r6
005946dc  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
005946e0  d4 f2 ff eb                                      bl #0x591238
005946e4  eb ff ff ea                                      b #0x594698
005946e8  06 00 a0 e1                                      mov r0, r6
005946ec  14 20 9d e5                                      ldr r2, [sp, #0x14]
005946f0  d0 f2 ff eb                                      bl #0x591238
005946f4  10 ff ff ea                                      b #0x59433c
005946f8  06 00 a0 e1                                      mov r0, r6
005946fc  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00594700  cc f2 ff eb                                      bl #0x591238
00594704  7d ff ff ea                                      b #0x594500
00594708  00 00 58 e3                                      cmp r8, #0
0059470c  0f ff ff 0a                                      beq #0x594350
00594710  44 20 8d e2                                      add r2, sp, #0x44
00594714  be 30 d5 e1                                      ldrh r3, [r5, #0xe]
00594718  1c 20 8d e5                                      str r2, [sp, #0x1c]
0059471c  14 80 8d e5                                      str r8, [sp, #0x14]
00594720  18 50 8d e5                                      str r5, [sp, #0x18]
00594724  01 00 00 ea                                      b #0x594730
00594728  18 20 9d e5                                      ldr r2, [sp, #0x18]
0059472c  be 30 d2 e1                                      ldrh r3, [r2, #0xe]
00594730  02 80 84 e2                                      add r8, r4, #2
00594734  93 08 08 e0                                      mul r8, r3, r8
00594738  f8 00 97 e1                                      ldrsh r0, [r7, r8]
0059473c  08 30 8d e5                                      str r3, [sp, #8]
00594740  87 e8 f5 eb                                      bl #0x30e964
00594744  08 80 87 e0                                      add r8, r7, r8
00594748  00 50 a0 e1                                      mov r5, r0
0059474c  f2 00 d8 e1                                      ldrsh r0, [r8, #2]
00594750  83 e8 f5 eb                                      bl #0x30e964
00594754  00 b0 a0 e1                                      mov fp, r0
00594758  f4 00 d8 e1                                      ldrsh r0, [r8, #4]
0059475c  80 e8 f5 eb                                      bl #0x30e964
00594760  08 30 9d e5                                      ldr r3, [sp, #8]
00594764  00 90 a0 e1                                      mov sb, r0
00594768  94 33 22 e0                                      mla r2, r4, r3, r3
0059476c  f2 00 97 e1                                      ldrsh r0, [r7, r2]
00594770  02 20 87 e0                                      add r2, r7, r2
00594774  0c 20 8d e5                                      str r2, [sp, #0xc]
00594778  79 e8 f5 eb                                      bl #0x30e964
0059477c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00594780  00 a0 a0 e1                                      mov sl, r0
00594784  f2 00 d2 e1                                      ldrsh r0, [r2, #2]
00594788  75 e8 f5 eb                                      bl #0x30e964
0059478c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00594790  00 80 a0 e1                                      mov r8, r0
00594794  f4 00 d2 e1                                      ldrsh r0, [r2, #4]
00594798  71 e8 f5 eb                                      bl #0x30e964
0059479c  08 30 9d e5                                      ldr r3, [sp, #8]
005947a0  00 20 a0 e1                                      mov r2, r0
005947a4  94 03 03 e0                                      mul r3, r4, r3
005947a8  f3 00 97 e1                                      ldrsh r0, [r7, r3]
005947ac  03 30 87 e0                                      add r3, r7, r3
005947b0  04 20 8d e5                                      str r2, [sp, #4]
005947b4  0c 30 8d e5                                      str r3, [sp, #0xc]
005947b8  69 e8 f5 eb                                      bl #0x30e964
005947bc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005947c0  00 c0 a0 e1                                      mov ip, r0
005947c4  f2 00 d3 e1                                      ldrsh r0, [r3, #2]
005947c8  08 c0 8d e5                                      str ip, [sp, #8]
005947cc  64 e8 f5 eb                                      bl #0x30e964
005947d0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005947d4  10 00 8d e5                                      str r0, [sp, #0x10]
005947d8  f4 00 d3 e1                                      ldrsh r0, [r3, #4]
005947dc  60 e8 f5 eb                                      bl #0x30e964
005947e0  04 10 9d e9                                      ldmib sp, {r2, ip}
005947e4  0a 00 96 e9                                      ldmib r6, {r1, r3}
005947e8  58 20 8d e5                                      str r2, [sp, #0x58]
005947ec  48 b0 8d e5                                      str fp, [sp, #0x48]
005947f0  4c 90 8d e5                                      str sb, [sp, #0x4c]
005947f4  64 00 8d e5                                      str r0, [sp, #0x64]
005947f8  50 a0 8d e5                                      str sl, [sp, #0x50]
005947fc  54 80 8d e5                                      str r8, [sp, #0x54]
00594800  5c c0 8d e5                                      str ip, [sp, #0x5c]
00594804  10 20 9d e5                                      ldr r2, [sp, #0x10]
00594808  03 00 51 e1                                      cmp r1, r3
0059480c  44 50 8d e5                                      str r5, [sp, #0x44]
00594810  60 20 8d e5                                      str r2, [sp, #0x60]
00594814  c7 00 00 0a                                      beq #0x594b38
00594818  00 50 81 e5                                      str r5, [r1]
0059481c  48 30 9d e5                                      ldr r3, [sp, #0x48]
00594820  04 30 81 e5                                      str r3, [r1, #4]
00594824  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
00594828  08 30 81 e5                                      str r3, [r1, #8]
0059482c  50 30 9d e5                                      ldr r3, [sp, #0x50]
00594830  0c 30 81 e5                                      str r3, [r1, #0xc]
00594834  54 30 9d e5                                      ldr r3, [sp, #0x54]
00594838  10 30 81 e5                                      str r3, [r1, #0x10]
0059483c  58 30 9d e5                                      ldr r3, [sp, #0x58]
00594840  14 30 81 e5                                      str r3, [r1, #0x14]
00594844  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
00594848  18 30 81 e5                                      str r3, [r1, #0x18]
0059484c  60 30 9d e5                                      ldr r3, [sp, #0x60]
00594850  1c 30 81 e5                                      str r3, [r1, #0x1c]
00594854  64 30 9d e5                                      ldr r3, [sp, #0x64]
00594858  20 30 81 e5                                      str r3, [r1, #0x20]
0059485c  04 30 96 e5                                      ldr r3, [r6, #4]
00594860  24 30 83 e2                                      add r3, r3, #0x24
00594864  04 30 86 e5                                      str r3, [r6, #4]
00594868  14 30 9d e5                                      ldr r3, [sp, #0x14]
0059486c  03 40 84 e2                                      add r4, r4, #3
00594870  04 00 53 e1                                      cmp r3, r4
00594874  ab ff ff 8a                                      bhi #0x594728
00594878  18 50 9d e5                                      ldr r5, [sp, #0x18]
0059487c  b3 fe ff ea                                      b #0x594350
00594880  00 00 58 e3                                      cmp r8, #0
00594884  b1 fe ff 0a                                      beq #0x594350
00594888  d4 20 8d e2                                      add r2, sp, #0xd4
0059488c  be 30 d5 e1                                      ldrh r3, [r5, #0xe]
00594890  00 a0 a0 e3                                      mov sl, #0
00594894  14 20 8d e5                                      str r2, [sp, #0x14]
00594898  0c 80 8d e5                                      str r8, [sp, #0xc]
0059489c  10 50 8d e5                                      str r5, [sp, #0x10]
005948a0  01 00 00 ea                                      b #0x5948ac
005948a4  10 20 9d e5                                      ldr r2, [sp, #0x10]
005948a8  be 30 d2 e1                                      ldrh r3, [r2, #0xe]
005948ac  02 80 84 e2                                      add r8, r4, #2
005948b0  93 08 08 e0                                      mul r8, r3, r8
005948b4  f8 00 97 e1                                      ldrsh r0, [r7, r8]
005948b8  08 30 8d e5                                      str r3, [sp, #8]
005948bc  28 e8 f5 eb                                      bl #0x30e964
005948c0  08 80 87 e0                                      add r8, r7, r8
005948c4  00 50 a0 e1                                      mov r5, r0
005948c8  f2 00 d8 e1                                      ldrsh r0, [r8, #2]
005948cc  24 e8 f5 eb                                      bl #0x30e964
005948d0  08 30 9d e5                                      ldr r3, [sp, #8]
005948d4  00 b0 a0 e1                                      mov fp, r0
005948d8  94 33 28 e0                                      mla r8, r4, r3, r3
005948dc  f8 00 97 e1                                      ldrsh r0, [r7, r8]
005948e0  1f e8 f5 eb                                      bl #0x30e964
005948e4  08 80 87 e0                                      add r8, r7, r8
005948e8  00 90 a0 e1                                      mov sb, r0
005948ec  f2 00 d8 e1                                      ldrsh r0, [r8, #2]
005948f0  1b e8 f5 eb                                      bl #0x30e964
005948f4  08 30 9d e5                                      ldr r3, [sp, #8]
005948f8  00 80 a0 e1                                      mov r8, r0
005948fc  94 03 03 e0                                      mul r3, r4, r3
00594900  f3 00 97 e1                                      ldrsh r0, [r7, r3]
00594904  03 30 87 e0                                      add r3, r7, r3
00594908  08 30 8d e5                                      str r3, [sp, #8]
0059490c  14 e8 f5 eb                                      bl #0x30e964
00594910  08 30 9d e5                                      ldr r3, [sp, #8]
00594914  00 20 a0 e1                                      mov r2, r0
00594918  f2 00 d3 e1                                      ldrsh r0, [r3, #2]
0059491c  04 20 8d e5                                      str r2, [sp, #4]
00594920  0f e8 f5 eb                                      bl #0x30e964
00594924  0a 00 96 e9                                      ldmib r6, {r1, r3}
00594928  04 20 9d e5                                      ldr r2, [sp, #4]
0059492c  d8 b0 8d e5                                      str fp, [sp, #0xd8]
00594930  03 00 51 e1                                      cmp r1, r3
00594934  e0 90 8d e5                                      str sb, [sp, #0xe0]
00594938  e4 80 8d e5                                      str r8, [sp, #0xe4]
0059493c  f0 00 8d e5                                      str r0, [sp, #0xf0]
00594940  ec 20 8d e5                                      str r2, [sp, #0xec]
00594944  dc a0 8d e5                                      str sl, [sp, #0xdc]
00594948  e8 a0 8d e5                                      str sl, [sp, #0xe8]
0059494c  d4 50 8d e5                                      str r5, [sp, #0xd4]
00594950  f4 a0 8d e5                                      str sl, [sp, #0xf4]
00594954  7b 00 00 0a                                      beq #0x594b48
00594958  00 50 81 e5                                      str r5, [r1]
0059495c  d8 30 9d e5                                      ldr r3, [sp, #0xd8]
00594960  04 30 81 e5                                      str r3, [r1, #4]
00594964  dc 30 9d e5                                      ldr r3, [sp, #0xdc]
00594968  08 30 81 e5                                      str r3, [r1, #8]
0059496c  e0 30 9d e5                                      ldr r3, [sp, #0xe0]
00594970  0c 30 81 e5                                      str r3, [r1, #0xc]
00594974  e4 30 9d e5                                      ldr r3, [sp, #0xe4]
00594978  10 30 81 e5                                      str r3, [r1, #0x10]
0059497c  e8 30 9d e5                                      ldr r3, [sp, #0xe8]
00594980  14 30 81 e5                                      str r3, [r1, #0x14]
00594984  ec 30 9d e5                                      ldr r3, [sp, #0xec]
00594988  18 30 81 e5                                      str r3, [r1, #0x18]
0059498c  f0 30 9d e5                                      ldr r3, [sp, #0xf0]
00594990  1c 30 81 e5                                      str r3, [r1, #0x1c]
00594994  f4 30 9d e5                                      ldr r3, [sp, #0xf4]
00594998  20 30 81 e5                                      str r3, [r1, #0x20]
0059499c  04 30 96 e5                                      ldr r3, [r6, #4]
005949a0  24 30 83 e2                                      add r3, r3, #0x24
005949a4  04 30 86 e5                                      str r3, [r6, #4]
005949a8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005949ac  03 40 84 e2                                      add r4, r4, #3
005949b0  04 00 53 e1                                      cmp r3, r4
005949b4  ba ff ff 8a                                      bhi #0x5948a4
005949b8  10 50 9d e5                                      ldr r5, [sp, #0x10]
005949bc  63 fe ff ea                                      b #0x594350
005949c0  00 00 58 e3                                      cmp r8, #0
005949c4  61 fe ff 0a                                      beq #0x594350
005949c8  8c 20 8d e2                                      add r2, sp, #0x8c
005949cc  be 30 d5 e1                                      ldrh r3, [r5, #0xe]
005949d0  1c 20 8d e5                                      str r2, [sp, #0x1c]
005949d4  14 80 8d e5                                      str r8, [sp, #0x14]
005949d8  18 50 8d e5                                      str r5, [sp, #0x18]
005949dc  01 00 00 ea                                      b #0x5949e8
005949e0  18 20 9d e5                                      ldr r2, [sp, #0x18]
005949e4  be 30 d2 e1                                      ldrh r3, [r2, #0xe]
005949e8  02 80 84 e2                                      add r8, r4, #2
005949ec  93 08 08 e0                                      mul r8, r3, r8
005949f0  f8 00 97 e1                                      ldrsh r0, [r7, r8]
005949f4  08 30 8d e5                                      str r3, [sp, #8]
005949f8  d9 e7 f5 eb                                      bl #0x30e964
005949fc  08 80 87 e0                                      add r8, r7, r8
00594a00  00 50 a0 e1                                      mov r5, r0
00594a04  f2 00 d8 e1                                      ldrsh r0, [r8, #2]
00594a08  d5 e7 f5 eb                                      bl #0x30e964
00594a0c  00 b0 a0 e1                                      mov fp, r0
00594a10  f4 00 d8 e1                                      ldrsh r0, [r8, #4]
00594a14  d2 e7 f5 eb                                      bl #0x30e964
00594a18  08 30 9d e5                                      ldr r3, [sp, #8]
00594a1c  00 90 a0 e1                                      mov sb, r0
00594a20  94 33 22 e0                                      mla r2, r4, r3, r3
00594a24  f2 00 97 e1                                      ldrsh r0, [r7, r2]
00594a28  02 20 87 e0                                      add r2, r7, r2
00594a2c  0c 20 8d e5                                      str r2, [sp, #0xc]
00594a30  cb e7 f5 eb                                      bl #0x30e964
00594a34  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00594a38  00 a0 a0 e1                                      mov sl, r0
00594a3c  f2 00 d2 e1                                      ldrsh r0, [r2, #2]
00594a40  c7 e7 f5 eb                                      bl #0x30e964
00594a44  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00594a48  00 80 a0 e1                                      mov r8, r0
00594a4c  f4 00 d2 e1                                      ldrsh r0, [r2, #4]
00594a50  c3 e7 f5 eb                                      bl #0x30e964
00594a54  08 30 9d e5                                      ldr r3, [sp, #8]
00594a58  00 20 a0 e1                                      mov r2, r0
00594a5c  94 03 03 e0                                      mul r3, r4, r3
00594a60  f3 00 97 e1                                      ldrsh r0, [r7, r3]
00594a64  03 30 87 e0                                      add r3, r7, r3
00594a68  04 20 8d e5                                      str r2, [sp, #4]
00594a6c  0c 30 8d e5                                      str r3, [sp, #0xc]
00594a70  bb e7 f5 eb                                      bl #0x30e964
00594a74  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00594a78  00 c0 a0 e1                                      mov ip, r0
00594a7c  f2 00 d3 e1                                      ldrsh r0, [r3, #2]
00594a80  08 c0 8d e5                                      str ip, [sp, #8]
00594a84  b6 e7 f5 eb                                      bl #0x30e964
00594a88  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00594a8c  10 00 8d e5                                      str r0, [sp, #0x10]
00594a90  f4 00 d3 e1                                      ldrsh r0, [r3, #4]
00594a94  b2 e7 f5 eb                                      bl #0x30e964
00594a98  04 10 9d e9                                      ldmib sp, {r2, ip}
00594a9c  0a 00 96 e9                                      ldmib r6, {r1, r3}
00594aa0  a0 20 8d e5                                      str r2, [sp, #0xa0]
00594aa4  90 b0 8d e5                                      str fp, [sp, #0x90]
00594aa8  94 90 8d e5                                      str sb, [sp, #0x94]
00594aac  ac 00 8d e5                                      str r0, [sp, #0xac]
00594ab0  98 a0 8d e5                                      str sl, [sp, #0x98]
00594ab4  9c 80 8d e5                                      str r8, [sp, #0x9c]
00594ab8  a4 c0 8d e5                                      str ip, [sp, #0xa4]
00594abc  10 20 9d e5                                      ldr r2, [sp, #0x10]
00594ac0  03 00 51 e1                                      cmp r1, r3
00594ac4  8c 50 8d e5                                      str r5, [sp, #0x8c]
00594ac8  a8 20 8d e5                                      str r2, [sp, #0xa8]
00594acc  21 00 00 0a                                      beq #0x594b58
00594ad0  00 50 81 e5                                      str r5, [r1]
00594ad4  90 30 9d e5                                      ldr r3, [sp, #0x90]
00594ad8  04 30 81 e5                                      str r3, [r1, #4]
00594adc  94 30 9d e5                                      ldr r3, [sp, #0x94]
00594ae0  08 30 81 e5                                      str r3, [r1, #8]
00594ae4  98 30 9d e5                                      ldr r3, [sp, #0x98]
00594ae8  0c 30 81 e5                                      str r3, [r1, #0xc]
00594aec  9c 30 9d e5                                      ldr r3, [sp, #0x9c]
00594af0  10 30 81 e5                                      str r3, [r1, #0x10]
00594af4  a0 30 9d e5                                      ldr r3, [sp, #0xa0]
00594af8  14 30 81 e5                                      str r3, [r1, #0x14]
00594afc  a4 30 9d e5                                      ldr r3, [sp, #0xa4]
00594b00  18 30 81 e5                                      str r3, [r1, #0x18]
00594b04  a8 30 9d e5                                      ldr r3, [sp, #0xa8]
00594b08  1c 30 81 e5                                      str r3, [r1, #0x1c]
00594b0c  ac 30 9d e5                                      ldr r3, [sp, #0xac]
00594b10  20 30 81 e5                                      str r3, [r1, #0x20]
00594b14  04 30 96 e5                                      ldr r3, [r6, #4]
00594b18  24 30 83 e2                                      add r3, r3, #0x24
00594b1c  04 30 86 e5                                      str r3, [r6, #4]
00594b20  14 30 9d e5                                      ldr r3, [sp, #0x14]
00594b24  03 40 84 e2                                      add r4, r4, #3
00594b28  04 00 53 e1                                      cmp r3, r4
00594b2c  ab ff ff 8a                                      bhi #0x5949e0
00594b30  18 50 9d e5                                      ldr r5, [sp, #0x18]
00594b34  05 fe ff ea                                      b #0x594350
00594b38  06 00 a0 e1                                      mov r0, r6
00594b3c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00594b40  bc f1 ff eb                                      bl #0x591238
00594b44  47 ff ff ea                                      b #0x594868
00594b48  06 00 a0 e1                                      mov r0, r6
00594b4c  14 20 9d e5                                      ldr r2, [sp, #0x14]
00594b50  b8 f1 ff eb                                      bl #0x591238
00594b54  93 ff ff ea                                      b #0x5949a8
00594b58  06 00 a0 e1                                      mov r0, r6
00594b5c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00594b60  b4 f1 ff eb                                      bl #0x591238
00594b64  ed ff ff ea                                      b #0x594b20

; FUNCTION 0x00594b68, declared_size=2480, range_size=2480, mode=arm
; class-group: void glitch::scene
; alias: _ZN6glitch5scene12_GLOBAL__N_115createTrianglesItSt6vectorINS_4core10triangle3dIfEENS4_10SAllocatorIS6_LNS_6memory13E_MEMORY_HINTE0EEEEEEvPKtjRKNS_5video13SVertexStreamERT0_
; demangled: void glitch::scene::(anonymous namespace)::createTriangles<unsigned short, std::vector<glitch::core::triangle3d<float>, glitch::core::SAllocator<glitch::core::triangle3d<float>, (glitch::memory::E_MEMORY_HINT)0> > >(unsigned short const*, unsigned int, glitch::video::SVertexStream const&, std::vector<glitch::core::triangle3d<float>, glitch::core::SAllocator<glitch::core::triangle3d<float>, (glitch::memory::E_MEMORY_HINT)0> >&)
; decoder-mode: arm
00594b68  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00594b6c  02 50 a0 e1                                      mov r5, r2
00594b70  bc 20 d2 e1                                      ldrh r2, [r2, #0xc]
00594b74  fc d0 4d e2                                      sub sp, sp, #0xfc
00594b78  00 40 a0 e1                                      mov r4, r0
00594b7c  03 00 52 e3                                      cmp r2, #3
00594b80  01 80 a0 e1                                      mov r8, r1
00594b84  03 60 a0 e1                                      mov r6, r3
00594b88  ce 00 00 0a                                      beq #0x594ec8
00594b8c  04 00 52 e3                                      cmp r2, #4
00594b90  66 00 00 0a                                      beq #0x594d30
00594b94  02 00 52 e3                                      cmp r2, #2
00594b98  01 00 00 0a                                      beq #0x594ba4
00594b9c  fc d0 8d e2                                      add sp, sp, #0xfc
00594ba0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00594ba4  00 00 95 e5                                      ldr r0, [r5]
00594ba8  01 10 a0 e3                                      mov r1, #1
00594bac  ca 33 00 eb                                      bl #0x5a1adc
00594bb0  04 70 95 e5                                      ldr r7, [r5, #4]
00594bb4  00 00 54 e3                                      cmp r4, #0
00594bb8  07 70 80 e0                                      add r7, r0, r7
00594bbc  9b 01 00 0a                                      beq #0x595230
00594bc0  88 80 84 e0                                      add r8, r4, r8, lsl #1
00594bc4  08 00 54 e1                                      cmp r4, r8
00594bc8  0c 80 8d e5                                      str r8, [sp, #0xc]
00594bcc  4b 00 00 0a                                      beq #0x594d00
00594bd0  b0 20 8d e2                                      add r2, sp, #0xb0
00594bd4  00 80 a0 e3                                      mov r8, #0
00594bd8  14 20 8d e5                                      str r2, [sp, #0x14]
00594bdc  10 50 8d e5                                      str r5, [sp, #0x10]
00594be0  10 20 9d e5                                      ldr r2, [sp, #0x10]
00594be4  b4 a0 d4 e1                                      ldrh sl, [r4, #4]
00594be8  be 30 d2 e1                                      ldrh r3, [r2, #0xe]
00594bec  9a 03 0a e0                                      mul sl, sl, r3
00594bf0  ba 00 97 e1                                      ldrh r0, [r7, sl]
00594bf4  08 30 8d e5                                      str r3, [sp, #8]
00594bf8  b8 e5 f5 eb                                      bl #0x30e2e0
00594bfc  0a a0 87 e0                                      add sl, r7, sl
00594c00  00 50 a0 e1                                      mov r5, r0
00594c04  b2 00 da e1                                      ldrh r0, [sl, #2]
00594c08  b4 e5 f5 eb                                      bl #0x30e2e0
00594c0c  b2 a0 d4 e1                                      ldrh sl, [r4, #2]
00594c10  08 30 9d e5                                      ldr r3, [sp, #8]
00594c14  00 b0 a0 e1                                      mov fp, r0
00594c18  93 0a 0a e0                                      mul sl, r3, sl
00594c1c  ba 00 97 e1                                      ldrh r0, [r7, sl]
00594c20  ae e5 f5 eb                                      bl #0x30e2e0
00594c24  0a a0 87 e0                                      add sl, r7, sl
00594c28  00 90 a0 e1                                      mov sb, r0
00594c2c  b2 00 da e1                                      ldrh r0, [sl, #2]
00594c30  aa e5 f5 eb                                      bl #0x30e2e0
00594c34  b0 20 d4 e1                                      ldrh r2, [r4]
00594c38  08 30 9d e5                                      ldr r3, [sp, #8]
00594c3c  00 a0 a0 e1                                      mov sl, r0
00594c40  93 02 03 e0                                      mul r3, r3, r2
00594c44  b3 00 97 e1                                      ldrh r0, [r7, r3]
00594c48  03 30 87 e0                                      add r3, r7, r3
00594c4c  08 30 8d e5                                      str r3, [sp, #8]
00594c50  a2 e5 f5 eb                                      bl #0x30e2e0
00594c54  08 30 9d e5                                      ldr r3, [sp, #8]
00594c58  00 20 a0 e1                                      mov r2, r0
00594c5c  b2 00 d3 e1                                      ldrh r0, [r3, #2]
00594c60  04 20 8d e5                                      str r2, [sp, #4]
00594c64  9d e5 f5 eb                                      bl #0x30e2e0
00594c68  0a 00 96 e9                                      ldmib r6, {r1, r3}
00594c6c  04 20 9d e5                                      ldr r2, [sp, #4]
00594c70  b4 b0 8d e5                                      str fp, [sp, #0xb4]
00594c74  03 00 51 e1                                      cmp r1, r3
00594c78  bc 90 8d e5                                      str sb, [sp, #0xbc]
00594c7c  cc 00 8d e5                                      str r0, [sp, #0xcc]
00594c80  c0 a0 8d e5                                      str sl, [sp, #0xc0]
00594c84  c8 20 8d e5                                      str r2, [sp, #0xc8]
00594c88  b8 80 8d e5                                      str r8, [sp, #0xb8]
00594c8c  b0 50 8d e5                                      str r5, [sp, #0xb0]
00594c90  c4 80 8d e5                                      str r8, [sp, #0xc4]
00594c94  d0 80 8d e5                                      str r8, [sp, #0xd0]
00594c98  fe 00 00 0a                                      beq #0x595098
00594c9c  00 50 81 e5                                      str r5, [r1]
00594ca0  b4 30 9d e5                                      ldr r3, [sp, #0xb4]
00594ca4  04 30 81 e5                                      str r3, [r1, #4]
00594ca8  b8 30 9d e5                                      ldr r3, [sp, #0xb8]
00594cac  08 30 81 e5                                      str r3, [r1, #8]
00594cb0  bc 30 9d e5                                      ldr r3, [sp, #0xbc]
00594cb4  0c 30 81 e5                                      str r3, [r1, #0xc]
00594cb8  c0 30 9d e5                                      ldr r3, [sp, #0xc0]
00594cbc  10 30 81 e5                                      str r3, [r1, #0x10]
00594cc0  c4 30 9d e5                                      ldr r3, [sp, #0xc4]
00594cc4  14 30 81 e5                                      str r3, [r1, #0x14]
00594cc8  c8 30 9d e5                                      ldr r3, [sp, #0xc8]
00594ccc  18 30 81 e5                                      str r3, [r1, #0x18]
00594cd0  cc 30 9d e5                                      ldr r3, [sp, #0xcc]
00594cd4  1c 30 81 e5                                      str r3, [r1, #0x1c]
00594cd8  d0 30 9d e5                                      ldr r3, [sp, #0xd0]
00594cdc  20 30 81 e5                                      str r3, [r1, #0x20]
00594ce0  04 30 96 e5                                      ldr r3, [r6, #4]
00594ce4  24 30 83 e2                                      add r3, r3, #0x24
00594ce8  04 30 86 e5                                      str r3, [r6, #4]
00594cec  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00594cf0  06 40 84 e2                                      add r4, r4, #6
00594cf4  04 00 53 e1                                      cmp r3, r4
00594cf8  b8 ff ff 1a                                      bne #0x594be0
00594cfc  10 50 9d e5                                      ldr r5, [sp, #0x10]
00594d00  00 00 57 e3                                      cmp r7, #0
00594d04  a4 ff ff 0a                                      beq #0x594b9c
00594d08  00 40 95 e5                                      ldr r4, [r5]
00594d0c  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
00594d10  1f 20 03 e2                                      and r2, r3, #0x1f
00594d14  01 00 52 e3                                      cmp r2, #1
00594d18  cf 00 00 9a                                      bls #0x59505c
00594d1c  01 20 42 e2                                      sub r2, r2, #1
00594d20  1f 30 c3 e3                                      bic r3, r3, #0x1f
00594d24  03 30 82 e1                                      orr r3, r2, r3
00594d28  13 30 c4 e5                                      strb r3, [r4, #0x13]
00594d2c  9a ff ff ea                                      b #0x594b9c
00594d30  00 00 95 e5                                      ldr r0, [r5]
00594d34  01 10 a0 e3                                      mov r1, #1
00594d38  67 33 00 eb                                      bl #0x5a1adc
00594d3c  04 70 95 e5                                      ldr r7, [r5, #4]
00594d40  00 00 54 e3                                      cmp r4, #0
00594d44  07 70 80 e0                                      add r7, r0, r7
00594d48  da 00 00 0a                                      beq #0x5950b8
00594d4c  88 80 84 e0                                      add r8, r4, r8, lsl #1
00594d50  08 00 54 e1                                      cmp r4, r8
00594d54  14 80 8d e5                                      str r8, [sp, #0x14]
00594d58  e8 ff ff 0a                                      beq #0x594d00
00594d5c  20 30 8d e2                                      add r3, sp, #0x20
00594d60  1c 30 8d e5                                      str r3, [sp, #0x1c]
00594d64  18 50 8d e5                                      str r5, [sp, #0x18]
00594d68  18 20 9d e5                                      ldr r2, [sp, #0x18]
00594d6c  b4 80 d4 e1                                      ldrh r8, [r4, #4]
00594d70  be 30 d2 e1                                      ldrh r3, [r2, #0xe]
00594d74  98 03 08 e0                                      mul r8, r8, r3
00594d78  b8 00 97 e1                                      ldrh r0, [r7, r8]
00594d7c  08 30 8d e5                                      str r3, [sp, #8]
00594d80  56 e5 f5 eb                                      bl #0x30e2e0
00594d84  08 80 87 e0                                      add r8, r7, r8
00594d88  00 50 a0 e1                                      mov r5, r0
00594d8c  b2 00 d8 e1                                      ldrh r0, [r8, #2]
00594d90  52 e5 f5 eb                                      bl #0x30e2e0
00594d94  00 b0 a0 e1                                      mov fp, r0
00594d98  b4 00 d8 e1                                      ldrh r0, [r8, #4]
00594d9c  4f e5 f5 eb                                      bl #0x30e2e0
00594da0  b2 20 d4 e1                                      ldrh r2, [r4, #2]
00594da4  08 30 9d e5                                      ldr r3, [sp, #8]
00594da8  00 90 a0 e1                                      mov sb, r0
00594dac  93 02 02 e0                                      mul r2, r3, r2
00594db0  b2 00 97 e1                                      ldrh r0, [r7, r2]
00594db4  02 20 87 e0                                      add r2, r7, r2
00594db8  0c 20 8d e5                                      str r2, [sp, #0xc]
00594dbc  47 e5 f5 eb                                      bl #0x30e2e0
00594dc0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00594dc4  00 a0 a0 e1                                      mov sl, r0
00594dc8  b2 00 d2 e1                                      ldrh r0, [r2, #2]
00594dcc  43 e5 f5 eb                                      bl #0x30e2e0
00594dd0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00594dd4  00 80 a0 e1                                      mov r8, r0
00594dd8  b4 00 d2 e1                                      ldrh r0, [r2, #4]
00594ddc  3f e5 f5 eb                                      bl #0x30e2e0
00594de0  b0 10 d4 e1                                      ldrh r1, [r4]
00594de4  08 30 9d e5                                      ldr r3, [sp, #8]
00594de8  00 20 a0 e1                                      mov r2, r0
00594dec  93 01 03 e0                                      mul r3, r3, r1
00594df0  b3 00 97 e1                                      ldrh r0, [r7, r3]
00594df4  03 30 87 e0                                      add r3, r7, r3
00594df8  04 20 8d e5                                      str r2, [sp, #4]
00594dfc  0c 30 8d e5                                      str r3, [sp, #0xc]
00594e00  36 e5 f5 eb                                      bl #0x30e2e0
00594e04  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00594e08  00 c0 a0 e1                                      mov ip, r0
00594e0c  b2 00 d3 e1                                      ldrh r0, [r3, #2]
00594e10  08 c0 8d e5                                      str ip, [sp, #8]
00594e14  31 e5 f5 eb                                      bl #0x30e2e0
00594e18  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00594e1c  10 00 8d e5                                      str r0, [sp, #0x10]
00594e20  b4 00 d3 e1                                      ldrh r0, [r3, #4]
00594e24  2d e5 f5 eb                                      bl #0x30e2e0
00594e28  0a 00 96 e9                                      ldmib r6, {r1, r3}
00594e2c  40 00 8d e5                                      str r0, [sp, #0x40]
00594e30  24 b0 8d e5                                      str fp, [sp, #0x24]
00594e34  28 90 8d e5                                      str sb, [sp, #0x28]
00594e38  04 10 9d e9                                      ldmib sp, {r2, ip}
00594e3c  03 00 51 e1                                      cmp r1, r3
00594e40  34 20 8d e5                                      str r2, [sp, #0x34]
00594e44  10 20 9d e5                                      ldr r2, [sp, #0x10]
00594e48  2c a0 8d e5                                      str sl, [sp, #0x2c]
00594e4c  30 80 8d e5                                      str r8, [sp, #0x30]
00594e50  38 c0 8d e5                                      str ip, [sp, #0x38]
00594e54  3c 20 8d e5                                      str r2, [sp, #0x3c]
00594e58  20 50 8d e5                                      str r5, [sp, #0x20]
00594e5c  91 00 00 0a                                      beq #0x5950a8
00594e60  00 50 81 e5                                      str r5, [r1]
00594e64  24 30 9d e5                                      ldr r3, [sp, #0x24]
00594e68  04 30 81 e5                                      str r3, [r1, #4]
00594e6c  28 30 9d e5                                      ldr r3, [sp, #0x28]
00594e70  08 30 81 e5                                      str r3, [r1, #8]
00594e74  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
00594e78  0c 30 81 e5                                      str r3, [r1, #0xc]
00594e7c  30 30 9d e5                                      ldr r3, [sp, #0x30]
00594e80  10 30 81 e5                                      str r3, [r1, #0x10]
00594e84  34 30 9d e5                                      ldr r3, [sp, #0x34]
00594e88  14 30 81 e5                                      str r3, [r1, #0x14]
00594e8c  38 30 9d e5                                      ldr r3, [sp, #0x38]
00594e90  18 30 81 e5                                      str r3, [r1, #0x18]
00594e94  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
00594e98  1c 30 81 e5                                      str r3, [r1, #0x1c]
00594e9c  40 30 9d e5                                      ldr r3, [sp, #0x40]
00594ea0  20 30 81 e5                                      str r3, [r1, #0x20]
00594ea4  04 30 96 e5                                      ldr r3, [r6, #4]
00594ea8  24 30 83 e2                                      add r3, r3, #0x24
00594eac  04 30 86 e5                                      str r3, [r6, #4]
00594eb0  14 30 9d e5                                      ldr r3, [sp, #0x14]
00594eb4  06 40 84 e2                                      add r4, r4, #6
00594eb8  04 00 53 e1                                      cmp r3, r4
00594ebc  a9 ff ff 1a                                      bne #0x594d68
00594ec0  18 50 9d e5                                      ldr r5, [sp, #0x18]
00594ec4  8d ff ff ea                                      b #0x594d00
00594ec8  00 00 95 e5                                      ldr r0, [r5]
00594ecc  01 10 a0 e3                                      mov r1, #1
00594ed0  01 33 00 eb                                      bl #0x5a1adc
00594ed4  04 70 95 e5                                      ldr r7, [r5, #4]
00594ed8  00 00 54 e3                                      cmp r4, #0
00594edc  07 70 80 e0                                      add r7, r0, r7
00594ee0  22 01 00 0a                                      beq #0x595370
00594ee4  88 80 84 e0                                      add r8, r4, r8, lsl #1
00594ee8  08 00 54 e1                                      cmp r4, r8
00594eec  14 80 8d e5                                      str r8, [sp, #0x14]
00594ef0  82 ff ff 0a                                      beq #0x594d00
00594ef4  68 30 8d e2                                      add r3, sp, #0x68
00594ef8  1c 30 8d e5                                      str r3, [sp, #0x1c]
00594efc  18 50 8d e5                                      str r5, [sp, #0x18]
00594f00  18 20 9d e5                                      ldr r2, [sp, #0x18]
00594f04  b4 80 d4 e1                                      ldrh r8, [r4, #4]
00594f08  be 30 d2 e1                                      ldrh r3, [r2, #0xe]
00594f0c  98 03 08 e0                                      mul r8, r8, r3
00594f10  b8 00 97 e1                                      ldrh r0, [r7, r8]
00594f14  08 30 8d e5                                      str r3, [sp, #8]
00594f18  f0 e4 f5 eb                                      bl #0x30e2e0
00594f1c  08 80 87 e0                                      add r8, r7, r8
00594f20  00 50 a0 e1                                      mov r5, r0
00594f24  b2 00 d8 e1                                      ldrh r0, [r8, #2]
00594f28  ec e4 f5 eb                                      bl #0x30e2e0
00594f2c  00 b0 a0 e1                                      mov fp, r0
00594f30  b4 00 d8 e1                                      ldrh r0, [r8, #4]
00594f34  e9 e4 f5 eb                                      bl #0x30e2e0
00594f38  b2 20 d4 e1                                      ldrh r2, [r4, #2]
00594f3c  08 30 9d e5                                      ldr r3, [sp, #8]
00594f40  00 90 a0 e1                                      mov sb, r0
00594f44  93 02 02 e0                                      mul r2, r3, r2
00594f48  b2 00 97 e1                                      ldrh r0, [r7, r2]
00594f4c  02 20 87 e0                                      add r2, r7, r2
00594f50  0c 20 8d e5                                      str r2, [sp, #0xc]
00594f54  e1 e4 f5 eb                                      bl #0x30e2e0
00594f58  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00594f5c  00 a0 a0 e1                                      mov sl, r0
00594f60  b2 00 d2 e1                                      ldrh r0, [r2, #2]
00594f64  dd e4 f5 eb                                      bl #0x30e2e0
00594f68  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00594f6c  00 80 a0 e1                                      mov r8, r0
00594f70  b4 00 d2 e1                                      ldrh r0, [r2, #4]
00594f74  d9 e4 f5 eb                                      bl #0x30e2e0
00594f78  b0 10 d4 e1                                      ldrh r1, [r4]
00594f7c  08 30 9d e5                                      ldr r3, [sp, #8]
00594f80  00 20 a0 e1                                      mov r2, r0
00594f84  93 01 03 e0                                      mul r3, r3, r1
00594f88  b3 00 97 e1                                      ldrh r0, [r7, r3]
00594f8c  03 30 87 e0                                      add r3, r7, r3
00594f90  04 20 8d e5                                      str r2, [sp, #4]
00594f94  0c 30 8d e5                                      str r3, [sp, #0xc]
00594f98  d0 e4 f5 eb                                      bl #0x30e2e0
00594f9c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00594fa0  00 c0 a0 e1                                      mov ip, r0
00594fa4  b2 00 d3 e1                                      ldrh r0, [r3, #2]
00594fa8  08 c0 8d e5                                      str ip, [sp, #8]
00594fac  cb e4 f5 eb                                      bl #0x30e2e0
00594fb0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00594fb4  10 00 8d e5                                      str r0, [sp, #0x10]
00594fb8  b4 00 d3 e1                                      ldrh r0, [r3, #4]
00594fbc  c7 e4 f5 eb                                      bl #0x30e2e0
00594fc0  0a 00 96 e9                                      ldmib r6, {r1, r3}
00594fc4  88 00 8d e5                                      str r0, [sp, #0x88]
00594fc8  6c b0 8d e5                                      str fp, [sp, #0x6c]
00594fcc  70 90 8d e5                                      str sb, [sp, #0x70]
00594fd0  04 10 9d e9                                      ldmib sp, {r2, ip}
00594fd4  03 00 51 e1                                      cmp r1, r3
00594fd8  7c 20 8d e5                                      str r2, [sp, #0x7c]
00594fdc  10 20 9d e5                                      ldr r2, [sp, #0x10]
00594fe0  74 a0 8d e5                                      str sl, [sp, #0x74]
00594fe4  78 80 8d e5                                      str r8, [sp, #0x78]
00594fe8  80 c0 8d e5                                      str ip, [sp, #0x80]
00594fec  84 20 8d e5                                      str r2, [sp, #0x84]
00594ff0  68 50 8d e5                                      str r5, [sp, #0x68]
00594ff4  23 00 00 0a                                      beq #0x595088
00594ff8  00 50 81 e5                                      str r5, [r1]
00594ffc  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
00595000  04 30 81 e5                                      str r3, [r1, #4]
00595004  70 30 9d e5                                      ldr r3, [sp, #0x70]
00595008  08 30 81 e5                                      str r3, [r1, #8]
0059500c  74 30 9d e5                                      ldr r3, [sp, #0x74]
00595010  0c 30 81 e5                                      str r3, [r1, #0xc]
00595014  78 30 9d e5                                      ldr r3, [sp, #0x78]
00595018  10 30 81 e5                                      str r3, [r1, #0x10]
0059501c  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
00595020  14 30 81 e5                                      str r3, [r1, #0x14]
00595024  80 30 9d e5                                      ldr r3, [sp, #0x80]
00595028  18 30 81 e5                                      str r3, [r1, #0x18]
0059502c  84 30 9d e5                                      ldr r3, [sp, #0x84]
00595030  1c 30 81 e5                                      str r3, [r1, #0x1c]
00595034  88 30 9d e5                                      ldr r3, [sp, #0x88]
00595038  20 30 81 e5                                      str r3, [r1, #0x20]
0059503c  04 30 96 e5                                      ldr r3, [r6, #4]
00595040  24 30 83 e2                                      add r3, r3, #0x24
00595044  04 30 86 e5                                      str r3, [r6, #4]
00595048  14 30 9d e5                                      ldr r3, [sp, #0x14]
0059504c  06 40 84 e2                                      add r4, r4, #6
00595050  04 00 53 e1                                      cmp r3, r4
00595054  a9 ff ff 1a                                      bne #0x594f00
00595058  98 ff ff ea                                      b #0x594ec0
0059505c  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
00595060  20 00 13 e3                                      tst r3, #0x20
00595064  02 00 00 1a                                      bne #0x595074
00595068  00 30 a0 e3                                      mov r3, #0
0059506c  13 30 c4 e5                                      strb r3, [r4, #0x13]
00595070  c9 fe ff ea                                      b #0x594b9c
00595074  00 30 94 e5                                      ldr r3, [r4]
00595078  04 00 a0 e1                                      mov r0, r4
0059507c  0f e0 a0 e1                                      mov lr, pc
00595080  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00595084  f7 ff ff ea                                      b #0x595068
00595088  06 00 a0 e1                                      mov r0, r6
0059508c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00595090  68 f0 ff eb                                      bl #0x591238
00595094  eb ff ff ea                                      b #0x595048
00595098  06 00 a0 e1                                      mov r0, r6
0059509c  14 20 9d e5                                      ldr r2, [sp, #0x14]
005950a0  64 f0 ff eb                                      bl #0x591238
005950a4  10 ff ff ea                                      b #0x594cec
005950a8  06 00 a0 e1                                      mov r0, r6
005950ac  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
005950b0  60 f0 ff eb                                      bl #0x591238
005950b4  7d ff ff ea                                      b #0x594eb0
005950b8  00 00 58 e3                                      cmp r8, #0
005950bc  0f ff ff 0a                                      beq #0x594d00
005950c0  44 20 8d e2                                      add r2, sp, #0x44
005950c4  be 30 d5 e1                                      ldrh r3, [r5, #0xe]
005950c8  1c 20 8d e5                                      str r2, [sp, #0x1c]
005950cc  14 80 8d e5                                      str r8, [sp, #0x14]
005950d0  18 50 8d e5                                      str r5, [sp, #0x18]
005950d4  01 00 00 ea                                      b #0x5950e0
005950d8  18 20 9d e5                                      ldr r2, [sp, #0x18]
005950dc  be 30 d2 e1                                      ldrh r3, [r2, #0xe]
005950e0  02 80 84 e2                                      add r8, r4, #2
005950e4  93 08 08 e0                                      mul r8, r3, r8
005950e8  b8 00 97 e1                                      ldrh r0, [r7, r8]
005950ec  08 30 8d e5                                      str r3, [sp, #8]
005950f0  7a e4 f5 eb                                      bl #0x30e2e0
005950f4  08 80 87 e0                                      add r8, r7, r8
005950f8  00 50 a0 e1                                      mov r5, r0
005950fc  b2 00 d8 e1                                      ldrh r0, [r8, #2]
00595100  76 e4 f5 eb                                      bl #0x30e2e0
00595104  00 b0 a0 e1                                      mov fp, r0
00595108  b4 00 d8 e1                                      ldrh r0, [r8, #4]
0059510c  73 e4 f5 eb                                      bl #0x30e2e0
00595110  08 30 9d e5                                      ldr r3, [sp, #8]
00595114  00 90 a0 e1                                      mov sb, r0
00595118  94 33 22 e0                                      mla r2, r4, r3, r3
0059511c  b2 00 97 e1                                      ldrh r0, [r7, r2]
00595120  02 20 87 e0                                      add r2, r7, r2
00595124  0c 20 8d e5                                      str r2, [sp, #0xc]
00595128  6c e4 f5 eb                                      bl #0x30e2e0
0059512c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00595130  00 a0 a0 e1                                      mov sl, r0
00595134  b2 00 d2 e1                                      ldrh r0, [r2, #2]
00595138  68 e4 f5 eb                                      bl #0x30e2e0
0059513c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00595140  00 80 a0 e1                                      mov r8, r0
00595144  b4 00 d2 e1                                      ldrh r0, [r2, #4]
00595148  64 e4 f5 eb                                      bl #0x30e2e0
0059514c  08 30 9d e5                                      ldr r3, [sp, #8]
00595150  00 20 a0 e1                                      mov r2, r0
00595154  94 03 03 e0                                      mul r3, r4, r3
00595158  b3 00 97 e1                                      ldrh r0, [r7, r3]
0059515c  03 30 87 e0                                      add r3, r7, r3
00595160  04 20 8d e5                                      str r2, [sp, #4]
00595164  0c 30 8d e5                                      str r3, [sp, #0xc]
00595168  5c e4 f5 eb                                      bl #0x30e2e0
0059516c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00595170  00 c0 a0 e1                                      mov ip, r0
00595174  b2 00 d3 e1                                      ldrh r0, [r3, #2]
00595178  08 c0 8d e5                                      str ip, [sp, #8]
0059517c  57 e4 f5 eb                                      bl #0x30e2e0
00595180  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00595184  10 00 8d e5                                      str r0, [sp, #0x10]
00595188  b4 00 d3 e1                                      ldrh r0, [r3, #4]
0059518c  53 e4 f5 eb                                      bl #0x30e2e0
00595190  04 10 9d e9                                      ldmib sp, {r2, ip}
00595194  0a 00 96 e9                                      ldmib r6, {r1, r3}
00595198  58 20 8d e5                                      str r2, [sp, #0x58]
0059519c  48 b0 8d e5                                      str fp, [sp, #0x48]
005951a0  4c 90 8d e5                                      str sb, [sp, #0x4c]
005951a4  64 00 8d e5                                      str r0, [sp, #0x64]
005951a8  50 a0 8d e5                                      str sl, [sp, #0x50]
005951ac  54 80 8d e5                                      str r8, [sp, #0x54]
005951b0  5c c0 8d e5                                      str ip, [sp, #0x5c]
005951b4  10 20 9d e5                                      ldr r2, [sp, #0x10]
005951b8  03 00 51 e1                                      cmp r1, r3
005951bc  44 50 8d e5                                      str r5, [sp, #0x44]
005951c0  60 20 8d e5                                      str r2, [sp, #0x60]
005951c4  c7 00 00 0a                                      beq #0x5954e8
005951c8  00 50 81 e5                                      str r5, [r1]
005951cc  48 30 9d e5                                      ldr r3, [sp, #0x48]
005951d0  04 30 81 e5                                      str r3, [r1, #4]
005951d4  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
005951d8  08 30 81 e5                                      str r3, [r1, #8]
005951dc  50 30 9d e5                                      ldr r3, [sp, #0x50]
005951e0  0c 30 81 e5                                      str r3, [r1, #0xc]
005951e4  54 30 9d e5                                      ldr r3, [sp, #0x54]
005951e8  10 30 81 e5                                      str r3, [r1, #0x10]
005951ec  58 30 9d e5                                      ldr r3, [sp, #0x58]
005951f0  14 30 81 e5                                      str r3, [r1, #0x14]
005951f4  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
005951f8  18 30 81 e5                                      str r3, [r1, #0x18]
005951fc  60 30 9d e5                                      ldr r3, [sp, #0x60]
00595200  1c 30 81 e5                                      str r3, [r1, #0x1c]
00595204  64 30 9d e5                                      ldr r3, [sp, #0x64]
00595208  20 30 81 e5                                      str r3, [r1, #0x20]
0059520c  04 30 96 e5                                      ldr r3, [r6, #4]
00595210  24 30 83 e2                                      add r3, r3, #0x24
00595214  04 30 86 e5                                      str r3, [r6, #4]
00595218  14 30 9d e5                                      ldr r3, [sp, #0x14]
0059521c  03 40 84 e2                                      add r4, r4, #3
00595220  04 00 53 e1                                      cmp r3, r4
00595224  ab ff ff 8a                                      bhi #0x5950d8
00595228  18 50 9d e5                                      ldr r5, [sp, #0x18]
0059522c  b3 fe ff ea                                      b #0x594d00
00595230  00 00 58 e3                                      cmp r8, #0
00595234  b1 fe ff 0a                                      beq #0x594d00
00595238  d4 20 8d e2                                      add r2, sp, #0xd4
0059523c  be 30 d5 e1                                      ldrh r3, [r5, #0xe]
00595240  00 a0 a0 e3                                      mov sl, #0
00595244  14 20 8d e5                                      str r2, [sp, #0x14]
00595248  0c 80 8d e5                                      str r8, [sp, #0xc]
0059524c  10 50 8d e5                                      str r5, [sp, #0x10]
00595250  01 00 00 ea                                      b #0x59525c
00595254  10 20 9d e5                                      ldr r2, [sp, #0x10]
00595258  be 30 d2 e1                                      ldrh r3, [r2, #0xe]
0059525c  02 80 84 e2                                      add r8, r4, #2
00595260  93 08 08 e0                                      mul r8, r3, r8
00595264  b8 00 97 e1                                      ldrh r0, [r7, r8]
00595268  08 30 8d e5                                      str r3, [sp, #8]
0059526c  1b e4 f5 eb                                      bl #0x30e2e0
00595270  08 80 87 e0                                      add r8, r7, r8
00595274  00 50 a0 e1                                      mov r5, r0
00595278  b2 00 d8 e1                                      ldrh r0, [r8, #2]
0059527c  17 e4 f5 eb                                      bl #0x30e2e0
00595280  08 30 9d e5                                      ldr r3, [sp, #8]
00595284  00 b0 a0 e1                                      mov fp, r0
00595288  94 33 28 e0                                      mla r8, r4, r3, r3
0059528c  b8 00 97 e1                                      ldrh r0, [r7, r8]
00595290  12 e4 f5 eb                                      bl #0x30e2e0
00595294  08 80 87 e0                                      add r8, r7, r8
00595298  00 90 a0 e1                                      mov sb, r0
0059529c  b2 00 d8 e1                                      ldrh r0, [r8, #2]
005952a0  0e e4 f5 eb                                      bl #0x30e2e0
005952a4  08 30 9d e5                                      ldr r3, [sp, #8]
005952a8  00 80 a0 e1                                      mov r8, r0
005952ac  94 03 03 e0                                      mul r3, r4, r3
005952b0  b3 00 97 e1                                      ldrh r0, [r7, r3]
005952b4  03 30 87 e0                                      add r3, r7, r3
005952b8  08 30 8d e5                                      str r3, [sp, #8]
005952bc  07 e4 f5 eb                                      bl #0x30e2e0
005952c0  08 30 9d e5                                      ldr r3, [sp, #8]
005952c4  00 20 a0 e1                                      mov r2, r0
005952c8  b2 00 d3 e1                                      ldrh r0, [r3, #2]
005952cc  04 20 8d e5                                      str r2, [sp, #4]
005952d0  02 e4 f5 eb                                      bl #0x30e2e0
005952d4  0a 00 96 e9                                      ldmib r6, {r1, r3}
005952d8  04 20 9d e5                                      ldr r2, [sp, #4]
005952dc  d8 b0 8d e5                                      str fp, [sp, #0xd8]
005952e0  03 00 51 e1                                      cmp r1, r3
005952e4  e0 90 8d e5                                      str sb, [sp, #0xe0]
005952e8  e4 80 8d e5                                      str r8, [sp, #0xe4]
005952ec  f0 00 8d e5                                      str r0, [sp, #0xf0]
005952f0  ec 20 8d e5                                      str r2, [sp, #0xec]
005952f4  dc a0 8d e5                                      str sl, [sp, #0xdc]
005952f8  e8 a0 8d e5                                      str sl, [sp, #0xe8]
005952fc  d4 50 8d e5                                      str r5, [sp, #0xd4]
00595300  f4 a0 8d e5                                      str sl, [sp, #0xf4]
00595304  7b 00 00 0a                                      beq #0x5954f8
00595308  00 50 81 e5                                      str r5, [r1]
0059530c  d8 30 9d e5                                      ldr r3, [sp, #0xd8]
00595310  04 30 81 e5                                      str r3, [r1, #4]
00595314  dc 30 9d e5                                      ldr r3, [sp, #0xdc]
00595318  08 30 81 e5                                      str r3, [r1, #8]
0059531c  e0 30 9d e5                                      ldr r3, [sp, #0xe0]
00595320  0c 30 81 e5                                      str r3, [r1, #0xc]
00595324  e4 30 9d e5                                      ldr r3, [sp, #0xe4]
00595328  10 30 81 e5                                      str r3, [r1, #0x10]
0059532c  e8 30 9d e5                                      ldr r3, [sp, #0xe8]
00595330  14 30 81 e5                                      str r3, [r1, #0x14]
00595334  ec 30 9d e5                                      ldr r3, [sp, #0xec]
00595338  18 30 81 e5                                      str r3, [r1, #0x18]
0059533c  f0 30 9d e5                                      ldr r3, [sp, #0xf0]
00595340  1c 30 81 e5                                      str r3, [r1, #0x1c]
00595344  f4 30 9d e5                                      ldr r3, [sp, #0xf4]
00595348  20 30 81 e5                                      str r3, [r1, #0x20]
0059534c  04 30 96 e5                                      ldr r3, [r6, #4]
00595350  24 30 83 e2                                      add r3, r3, #0x24
00595354  04 30 86 e5                                      str r3, [r6, #4]
00595358  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0059535c  03 40 84 e2                                      add r4, r4, #3
00595360  04 00 53 e1                                      cmp r3, r4
00595364  ba ff ff 8a                                      bhi #0x595254
00595368  10 50 9d e5                                      ldr r5, [sp, #0x10]
0059536c  63 fe ff ea                                      b #0x594d00
00595370  00 00 58 e3                                      cmp r8, #0
00595374  61 fe ff 0a                                      beq #0x594d00
00595378  8c 20 8d e2                                      add r2, sp, #0x8c
0059537c  be 30 d5 e1                                      ldrh r3, [r5, #0xe]
00595380  1c 20 8d e5                                      str r2, [sp, #0x1c]
00595384  14 80 8d e5                                      str r8, [sp, #0x14]
00595388  18 50 8d e5                                      str r5, [sp, #0x18]
0059538c  01 00 00 ea                                      b #0x595398
00595390  18 20 9d e5                                      ldr r2, [sp, #0x18]
00595394  be 30 d2 e1                                      ldrh r3, [r2, #0xe]
00595398  02 80 84 e2                                      add r8, r4, #2
0059539c  93 08 08 e0                                      mul r8, r3, r8
005953a0  b8 00 97 e1                                      ldrh r0, [r7, r8]
005953a4  08 30 8d e5                                      str r3, [sp, #8]
005953a8  cc e3 f5 eb                                      bl #0x30e2e0
005953ac  08 80 87 e0                                      add r8, r7, r8
005953b0  00 50 a0 e1                                      mov r5, r0
005953b4  b2 00 d8 e1                                      ldrh r0, [r8, #2]
005953b8  c8 e3 f5 eb                                      bl #0x30e2e0
005953bc  00 b0 a0 e1                                      mov fp, r0
005953c0  b4 00 d8 e1                                      ldrh r0, [r8, #4]
005953c4  c5 e3 f5 eb                                      bl #0x30e2e0
005953c8  08 30 9d e5                                      ldr r3, [sp, #8]
005953cc  00 90 a0 e1                                      mov sb, r0
005953d0  94 33 22 e0                                      mla r2, r4, r3, r3
005953d4  b2 00 97 e1                                      ldrh r0, [r7, r2]
005953d8  02 20 87 e0                                      add r2, r7, r2
005953dc  0c 20 8d e5                                      str r2, [sp, #0xc]
005953e0  be e3 f5 eb                                      bl #0x30e2e0
005953e4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005953e8  00 a0 a0 e1                                      mov sl, r0
005953ec  b2 00 d2 e1                                      ldrh r0, [r2, #2]
005953f0  ba e3 f5 eb                                      bl #0x30e2e0
005953f4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005953f8  00 80 a0 e1                                      mov r8, r0
005953fc  b4 00 d2 e1                                      ldrh r0, [r2, #4]
00595400  b6 e3 f5 eb                                      bl #0x30e2e0
00595404  08 30 9d e5                                      ldr r3, [sp, #8]
00595408  00 20 a0 e1                                      mov r2, r0
0059540c  94 03 03 e0                                      mul r3, r4, r3
00595410  b3 00 97 e1                                      ldrh r0, [r7, r3]
00595414  03 30 87 e0                                      add r3, r7, r3
00595418  04 20 8d e5                                      str r2, [sp, #4]
0059541c  0c 30 8d e5                                      str r3, [sp, #0xc]
00595420  ae e3 f5 eb                                      bl #0x30e2e0
00595424  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00595428  00 c0 a0 e1                                      mov ip, r0
0059542c  b2 00 d3 e1                                      ldrh r0, [r3, #2]
00595430  08 c0 8d e5                                      str ip, [sp, #8]
00595434  a9 e3 f5 eb                                      bl #0x30e2e0
00595438  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0059543c  10 00 8d e5                                      str r0, [sp, #0x10]
00595440  b4 00 d3 e1                                      ldrh r0, [r3, #4]
00595444  a5 e3 f5 eb                                      bl #0x30e2e0
00595448  04 10 9d e9                                      ldmib sp, {r2, ip}
0059544c  0a 00 96 e9                                      ldmib r6, {r1, r3}
00595450  a0 20 8d e5                                      str r2, [sp, #0xa0]
00595454  90 b0 8d e5                                      str fp, [sp, #0x90]
00595458  94 90 8d e5                                      str sb, [sp, #0x94]
0059545c  ac 00 8d e5                                      str r0, [sp, #0xac]
00595460  98 a0 8d e5                                      str sl, [sp, #0x98]
00595464  9c 80 8d e5                                      str r8, [sp, #0x9c]
00595468  a4 c0 8d e5                                      str ip, [sp, #0xa4]
0059546c  10 20 9d e5                                      ldr r2, [sp, #0x10]
00595470  03 00 51 e1                                      cmp r1, r3
00595474  8c 50 8d e5                                      str r5, [sp, #0x8c]
00595478  a8 20 8d e5                                      str r2, [sp, #0xa8]
0059547c  21 00 00 0a                                      beq #0x595508
00595480  00 50 81 e5                                      str r5, [r1]
00595484  90 30 9d e5                                      ldr r3, [sp, #0x90]
00595488  04 30 81 e5                                      str r3, [r1, #4]
0059548c  94 30 9d e5                                      ldr r3, [sp, #0x94]
00595490  08 30 81 e5                                      str r3, [r1, #8]
00595494  98 30 9d e5                                      ldr r3, [sp, #0x98]
00595498  0c 30 81 e5                                      str r3, [r1, #0xc]
0059549c  9c 30 9d e5                                      ldr r3, [sp, #0x9c]
005954a0  10 30 81 e5                                      str r3, [r1, #0x10]
005954a4  a0 30 9d e5                                      ldr r3, [sp, #0xa0]
005954a8  14 30 81 e5                                      str r3, [r1, #0x14]
005954ac  a4 30 9d e5                                      ldr r3, [sp, #0xa4]
005954b0  18 30 81 e5                                      str r3, [r1, #0x18]
005954b4  a8 30 9d e5                                      ldr r3, [sp, #0xa8]
005954b8  1c 30 81 e5                                      str r3, [r1, #0x1c]
005954bc  ac 30 9d e5                                      ldr r3, [sp, #0xac]
005954c0  20 30 81 e5                                      str r3, [r1, #0x20]
005954c4  04 30 96 e5                                      ldr r3, [r6, #4]
005954c8  24 30 83 e2                                      add r3, r3, #0x24
005954cc  04 30 86 e5                                      str r3, [r6, #4]
005954d0  14 30 9d e5                                      ldr r3, [sp, #0x14]
005954d4  03 40 84 e2                                      add r4, r4, #3
005954d8  04 00 53 e1                                      cmp r3, r4
005954dc  ab ff ff 8a                                      bhi #0x595390
005954e0  18 50 9d e5                                      ldr r5, [sp, #0x18]
005954e4  05 fe ff ea                                      b #0x594d00
005954e8  06 00 a0 e1                                      mov r0, r6
005954ec  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
005954f0  50 ef ff eb                                      bl #0x591238
005954f4  47 ff ff ea                                      b #0x595218
005954f8  06 00 a0 e1                                      mov r0, r6
005954fc  14 20 9d e5                                      ldr r2, [sp, #0x14]
00595500  4c ef ff eb                                      bl #0x591238
00595504  93 ff ff ea                                      b #0x595358
00595508  06 00 a0 e1                                      mov r0, r6
0059550c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00595510  48 ef ff eb                                      bl #0x591238
00595514  ed ff ff ea                                      b #0x5954d0

; FUNCTION 0x00595518, declared_size=2480, range_size=2480, mode=arm
; class-group: void glitch::scene
; alias: _ZN6glitch5scene12_GLOBAL__N_115createTrianglesIiSt6vectorINS_4core10triangle3dIfEENS4_10SAllocatorIS6_LNS_6memory13E_MEMORY_HINTE0EEEEEEvPKtjRKNS_5video13SVertexStreamERT0_
; demangled: void glitch::scene::(anonymous namespace)::createTriangles<int, std::vector<glitch::core::triangle3d<float>, glitch::core::SAllocator<glitch::core::triangle3d<float>, (glitch::memory::E_MEMORY_HINT)0> > >(unsigned short const*, unsigned int, glitch::video::SVertexStream const&, std::vector<glitch::core::triangle3d<float>, glitch::core::SAllocator<glitch::core::triangle3d<float>, (glitch::memory::E_MEMORY_HINT)0> >&)
; decoder-mode: arm
00595518  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0059551c  02 50 a0 e1                                      mov r5, r2
00595520  bc 20 d2 e1                                      ldrh r2, [r2, #0xc]
00595524  fc d0 4d e2                                      sub sp, sp, #0xfc
00595528  00 40 a0 e1                                      mov r4, r0
0059552c  03 00 52 e3                                      cmp r2, #3
00595530  01 80 a0 e1                                      mov r8, r1
00595534  03 60 a0 e1                                      mov r6, r3
00595538  ce 00 00 0a                                      beq #0x595878
0059553c  04 00 52 e3                                      cmp r2, #4
00595540  66 00 00 0a                                      beq #0x5956e0
00595544  02 00 52 e3                                      cmp r2, #2
00595548  01 00 00 0a                                      beq #0x595554
0059554c  fc d0 8d e2                                      add sp, sp, #0xfc
00595550  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00595554  00 00 95 e5                                      ldr r0, [r5]
00595558  01 10 a0 e3                                      mov r1, #1
0059555c  5e 31 00 eb                                      bl #0x5a1adc
00595560  04 70 95 e5                                      ldr r7, [r5, #4]
00595564  00 00 54 e3                                      cmp r4, #0
00595568  07 70 80 e0                                      add r7, r0, r7
0059556c  9b 01 00 0a                                      beq #0x595be0
00595570  88 80 84 e0                                      add r8, r4, r8, lsl #1
00595574  08 00 54 e1                                      cmp r4, r8
00595578  0c 80 8d e5                                      str r8, [sp, #0xc]
0059557c  4b 00 00 0a                                      beq #0x5956b0
00595580  b0 20 8d e2                                      add r2, sp, #0xb0
00595584  00 80 a0 e3                                      mov r8, #0
00595588  14 20 8d e5                                      str r2, [sp, #0x14]
0059558c  10 50 8d e5                                      str r5, [sp, #0x10]
00595590  10 20 9d e5                                      ldr r2, [sp, #0x10]
00595594  b4 a0 d4 e1                                      ldrh sl, [r4, #4]
00595598  be 30 d2 e1                                      ldrh r3, [r2, #0xe]
0059559c  9a 03 0a e0                                      mul sl, sl, r3
005955a0  0a 00 97 e7                                      ldr r0, [r7, sl]
005955a4  08 30 8d e5                                      str r3, [sp, #8]
005955a8  ed e4 f5 eb                                      bl #0x30e964
005955ac  0a a0 87 e0                                      add sl, r7, sl
005955b0  00 50 a0 e1                                      mov r5, r0
005955b4  04 00 9a e5                                      ldr r0, [sl, #4]
005955b8  e9 e4 f5 eb                                      bl #0x30e964
005955bc  b2 a0 d4 e1                                      ldrh sl, [r4, #2]
005955c0  08 30 9d e5                                      ldr r3, [sp, #8]
005955c4  00 b0 a0 e1                                      mov fp, r0
005955c8  93 0a 0a e0                                      mul sl, r3, sl
005955cc  0a 00 97 e7                                      ldr r0, [r7, sl]
005955d0  e3 e4 f5 eb                                      bl #0x30e964
005955d4  0a a0 87 e0                                      add sl, r7, sl
005955d8  00 90 a0 e1                                      mov sb, r0
005955dc  04 00 9a e5                                      ldr r0, [sl, #4]
005955e0  df e4 f5 eb                                      bl #0x30e964
005955e4  b0 20 d4 e1                                      ldrh r2, [r4]
005955e8  08 30 9d e5                                      ldr r3, [sp, #8]
005955ec  00 a0 a0 e1                                      mov sl, r0
005955f0  93 02 03 e0                                      mul r3, r3, r2
005955f4  03 00 97 e7                                      ldr r0, [r7, r3]
005955f8  03 30 87 e0                                      add r3, r7, r3
005955fc  08 30 8d e5                                      str r3, [sp, #8]
00595600  d7 e4 f5 eb                                      bl #0x30e964
00595604  08 30 9d e5                                      ldr r3, [sp, #8]
00595608  00 20 a0 e1                                      mov r2, r0
0059560c  04 00 93 e5                                      ldr r0, [r3, #4]
00595610  04 20 8d e5                                      str r2, [sp, #4]
00595614  d2 e4 f5 eb                                      bl #0x30e964
00595618  0a 00 96 e9                                      ldmib r6, {r1, r3}
0059561c  04 20 9d e5                                      ldr r2, [sp, #4]
00595620  b4 b0 8d e5                                      str fp, [sp, #0xb4]
00595624  03 00 51 e1                                      cmp r1, r3
00595628  bc 90 8d e5                                      str sb, [sp, #0xbc]
0059562c  cc 00 8d e5                                      str r0, [sp, #0xcc]
00595630  c0 a0 8d e5                                      str sl, [sp, #0xc0]
00595634  c8 20 8d e5                                      str r2, [sp, #0xc8]
00595638  b8 80 8d e5                                      str r8, [sp, #0xb8]
0059563c  b0 50 8d e5                                      str r5, [sp, #0xb0]
00595640  c4 80 8d e5                                      str r8, [sp, #0xc4]
00595644  d0 80 8d e5                                      str r8, [sp, #0xd0]
00595648  fe 00 00 0a                                      beq #0x595a48
0059564c  00 50 81 e5                                      str r5, [r1]
00595650  b4 30 9d e5                                      ldr r3, [sp, #0xb4]
00595654  04 30 81 e5                                      str r3, [r1, #4]
00595658  b8 30 9d e5                                      ldr r3, [sp, #0xb8]
0059565c  08 30 81 e5                                      str r3, [r1, #8]
00595660  bc 30 9d e5                                      ldr r3, [sp, #0xbc]
00595664  0c 30 81 e5                                      str r3, [r1, #0xc]
00595668  c0 30 9d e5                                      ldr r3, [sp, #0xc0]
0059566c  10 30 81 e5                                      str r3, [r1, #0x10]
00595670  c4 30 9d e5                                      ldr r3, [sp, #0xc4]
00595674  14 30 81 e5                                      str r3, [r1, #0x14]
00595678  c8 30 9d e5                                      ldr r3, [sp, #0xc8]
0059567c  18 30 81 e5                                      str r3, [r1, #0x18]
00595680  cc 30 9d e5                                      ldr r3, [sp, #0xcc]
00595684  1c 30 81 e5                                      str r3, [r1, #0x1c]
00595688  d0 30 9d e5                                      ldr r3, [sp, #0xd0]
0059568c  20 30 81 e5                                      str r3, [r1, #0x20]
00595690  04 30 96 e5                                      ldr r3, [r6, #4]
00595694  24 30 83 e2                                      add r3, r3, #0x24
00595698  04 30 86 e5                                      str r3, [r6, #4]
0059569c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005956a0  06 40 84 e2                                      add r4, r4, #6
005956a4  04 00 53 e1                                      cmp r3, r4
005956a8  b8 ff ff 1a                                      bne #0x595590
005956ac  10 50 9d e5                                      ldr r5, [sp, #0x10]
005956b0  00 00 57 e3                                      cmp r7, #0
005956b4  a4 ff ff 0a                                      beq #0x59554c
005956b8  00 40 95 e5                                      ldr r4, [r5]
005956bc  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
005956c0  1f 20 03 e2                                      and r2, r3, #0x1f
005956c4  01 00 52 e3                                      cmp r2, #1
005956c8  cf 00 00 9a                                      bls #0x595a0c
005956cc  01 20 42 e2                                      sub r2, r2, #1
005956d0  1f 30 c3 e3                                      bic r3, r3, #0x1f
005956d4  03 30 82 e1                                      orr r3, r2, r3
005956d8  13 30 c4 e5                                      strb r3, [r4, #0x13]
005956dc  9a ff ff ea                                      b #0x59554c
005956e0  00 00 95 e5                                      ldr r0, [r5]
005956e4  01 10 a0 e3                                      mov r1, #1
005956e8  fb 30 00 eb                                      bl #0x5a1adc
005956ec  04 70 95 e5                                      ldr r7, [r5, #4]
005956f0  00 00 54 e3                                      cmp r4, #0
005956f4  07 70 80 e0                                      add r7, r0, r7
005956f8  da 00 00 0a                                      beq #0x595a68
005956fc  88 80 84 e0                                      add r8, r4, r8, lsl #1
00595700  08 00 54 e1                                      cmp r4, r8
00595704  14 80 8d e5                                      str r8, [sp, #0x14]
00595708  e8 ff ff 0a                                      beq #0x5956b0
0059570c  20 30 8d e2                                      add r3, sp, #0x20
00595710  1c 30 8d e5                                      str r3, [sp, #0x1c]
00595714  18 50 8d e5                                      str r5, [sp, #0x18]
00595718  18 20 9d e5                                      ldr r2, [sp, #0x18]
0059571c  b4 80 d4 e1                                      ldrh r8, [r4, #4]
00595720  be 30 d2 e1                                      ldrh r3, [r2, #0xe]
00595724  98 03 08 e0                                      mul r8, r8, r3
00595728  08 00 97 e7                                      ldr r0, [r7, r8]
0059572c  08 30 8d e5                                      str r3, [sp, #8]
00595730  8b e4 f5 eb                                      bl #0x30e964
00595734  08 80 87 e0                                      add r8, r7, r8
00595738  00 50 a0 e1                                      mov r5, r0
0059573c  04 00 98 e5                                      ldr r0, [r8, #4]
00595740  87 e4 f5 eb                                      bl #0x30e964
00595744  00 b0 a0 e1                                      mov fp, r0
00595748  08 00 98 e5                                      ldr r0, [r8, #8]
0059574c  84 e4 f5 eb                                      bl #0x30e964
00595750  b2 20 d4 e1                                      ldrh r2, [r4, #2]
00595754  08 30 9d e5                                      ldr r3, [sp, #8]
00595758  00 90 a0 e1                                      mov sb, r0
0059575c  93 02 02 e0                                      mul r2, r3, r2
00595760  02 00 97 e7                                      ldr r0, [r7, r2]
00595764  02 20 87 e0                                      add r2, r7, r2
00595768  0c 20 8d e5                                      str r2, [sp, #0xc]
0059576c  7c e4 f5 eb                                      bl #0x30e964
00595770  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00595774  00 a0 a0 e1                                      mov sl, r0
00595778  04 00 92 e5                                      ldr r0, [r2, #4]
0059577c  78 e4 f5 eb                                      bl #0x30e964
00595780  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00595784  00 80 a0 e1                                      mov r8, r0
00595788  08 00 92 e5                                      ldr r0, [r2, #8]
0059578c  74 e4 f5 eb                                      bl #0x30e964
00595790  b0 10 d4 e1                                      ldrh r1, [r4]
00595794  08 30 9d e5                                      ldr r3, [sp, #8]
00595798  00 20 a0 e1                                      mov r2, r0
0059579c  93 01 03 e0                                      mul r3, r3, r1
005957a0  03 00 97 e7                                      ldr r0, [r7, r3]
005957a4  03 30 87 e0                                      add r3, r7, r3
005957a8  04 20 8d e5                                      str r2, [sp, #4]
005957ac  0c 30 8d e5                                      str r3, [sp, #0xc]
005957b0  6b e4 f5 eb                                      bl #0x30e964
005957b4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005957b8  00 c0 a0 e1                                      mov ip, r0
005957bc  04 00 93 e5                                      ldr r0, [r3, #4]
005957c0  08 c0 8d e5                                      str ip, [sp, #8]
005957c4  66 e4 f5 eb                                      bl #0x30e964
005957c8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005957cc  10 00 8d e5                                      str r0, [sp, #0x10]
005957d0  08 00 93 e5                                      ldr r0, [r3, #8]
005957d4  62 e4 f5 eb                                      bl #0x30e964
005957d8  0a 00 96 e9                                      ldmib r6, {r1, r3}
005957dc  40 00 8d e5                                      str r0, [sp, #0x40]
005957e0  24 b0 8d e5                                      str fp, [sp, #0x24]
005957e4  28 90 8d e5                                      str sb, [sp, #0x28]
005957e8  04 10 9d e9                                      ldmib sp, {r2, ip}
005957ec  03 00 51 e1                                      cmp r1, r3
005957f0  34 20 8d e5                                      str r2, [sp, #0x34]
005957f4  10 20 9d e5                                      ldr r2, [sp, #0x10]
005957f8  2c a0 8d e5                                      str sl, [sp, #0x2c]
005957fc  30 80 8d e5                                      str r8, [sp, #0x30]
00595800  38 c0 8d e5                                      str ip, [sp, #0x38]
00595804  3c 20 8d e5                                      str r2, [sp, #0x3c]
00595808  20 50 8d e5                                      str r5, [sp, #0x20]
0059580c  91 00 00 0a                                      beq #0x595a58
00595810  00 50 81 e5                                      str r5, [r1]
00595814  24 30 9d e5                                      ldr r3, [sp, #0x24]
00595818  04 30 81 e5                                      str r3, [r1, #4]
0059581c  28 30 9d e5                                      ldr r3, [sp, #0x28]
00595820  08 30 81 e5                                      str r3, [r1, #8]
00595824  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
00595828  0c 30 81 e5                                      str r3, [r1, #0xc]
0059582c  30 30 9d e5                                      ldr r3, [sp, #0x30]
00595830  10 30 81 e5                                      str r3, [r1, #0x10]
00595834  34 30 9d e5                                      ldr r3, [sp, #0x34]
00595838  14 30 81 e5                                      str r3, [r1, #0x14]
0059583c  38 30 9d e5                                      ldr r3, [sp, #0x38]
00595840  18 30 81 e5                                      str r3, [r1, #0x18]
00595844  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
00595848  1c 30 81 e5                                      str r3, [r1, #0x1c]
0059584c  40 30 9d e5                                      ldr r3, [sp, #0x40]
00595850  20 30 81 e5                                      str r3, [r1, #0x20]
00595854  04 30 96 e5                                      ldr r3, [r6, #4]
00595858  24 30 83 e2                                      add r3, r3, #0x24
0059585c  04 30 86 e5                                      str r3, [r6, #4]
00595860  14 30 9d e5                                      ldr r3, [sp, #0x14]
00595864  06 40 84 e2                                      add r4, r4, #6
00595868  04 00 53 e1                                      cmp r3, r4
0059586c  a9 ff ff 1a                                      bne #0x595718
00595870  18 50 9d e5                                      ldr r5, [sp, #0x18]
00595874  8d ff ff ea                                      b #0x5956b0
00595878  00 00 95 e5                                      ldr r0, [r5]
0059587c  01 10 a0 e3                                      mov r1, #1
00595880  95 30 00 eb                                      bl #0x5a1adc
00595884  04 70 95 e5                                      ldr r7, [r5, #4]
00595888  00 00 54 e3                                      cmp r4, #0
0059588c  07 70 80 e0                                      add r7, r0, r7
00595890  22 01 00 0a                                      beq #0x595d20
00595894  88 80 84 e0                                      add r8, r4, r8, lsl #1
00595898  08 00 54 e1                                      cmp r4, r8
0059589c  14 80 8d e5                                      str r8, [sp, #0x14]
005958a0  82 ff ff 0a                                      beq #0x5956b0
005958a4  68 30 8d e2                                      add r3, sp, #0x68
005958a8  1c 30 8d e5                                      str r3, [sp, #0x1c]
005958ac  18 50 8d e5                                      str r5, [sp, #0x18]
005958b0  18 20 9d e5                                      ldr r2, [sp, #0x18]
005958b4  b4 80 d4 e1                                      ldrh r8, [r4, #4]
005958b8  be 30 d2 e1                                      ldrh r3, [r2, #0xe]
005958bc  98 03 08 e0                                      mul r8, r8, r3
005958c0  08 00 97 e7                                      ldr r0, [r7, r8]
005958c4  08 30 8d e5                                      str r3, [sp, #8]
005958c8  25 e4 f5 eb                                      bl #0x30e964
005958cc  08 80 87 e0                                      add r8, r7, r8
005958d0  00 50 a0 e1                                      mov r5, r0
005958d4  04 00 98 e5                                      ldr r0, [r8, #4]
005958d8  21 e4 f5 eb                                      bl #0x30e964
005958dc  00 b0 a0 e1                                      mov fp, r0
005958e0  08 00 98 e5                                      ldr r0, [r8, #8]
005958e4  1e e4 f5 eb                                      bl #0x30e964
005958e8  b2 20 d4 e1                                      ldrh r2, [r4, #2]
005958ec  08 30 9d e5                                      ldr r3, [sp, #8]
005958f0  00 90 a0 e1                                      mov sb, r0
005958f4  93 02 02 e0                                      mul r2, r3, r2
005958f8  02 00 97 e7                                      ldr r0, [r7, r2]
005958fc  02 20 87 e0                                      add r2, r7, r2
00595900  0c 20 8d e5                                      str r2, [sp, #0xc]
00595904  16 e4 f5 eb                                      bl #0x30e964
00595908  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0059590c  00 a0 a0 e1                                      mov sl, r0
00595910  04 00 92 e5                                      ldr r0, [r2, #4]
00595914  12 e4 f5 eb                                      bl #0x30e964
00595918  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0059591c  00 80 a0 e1                                      mov r8, r0
00595920  08 00 92 e5                                      ldr r0, [r2, #8]
00595924  0e e4 f5 eb                                      bl #0x30e964
00595928  b0 10 d4 e1                                      ldrh r1, [r4]
0059592c  08 30 9d e5                                      ldr r3, [sp, #8]
00595930  00 20 a0 e1                                      mov r2, r0
00595934  93 01 03 e0                                      mul r3, r3, r1
00595938  03 00 97 e7                                      ldr r0, [r7, r3]
0059593c  03 30 87 e0                                      add r3, r7, r3
00595940  04 20 8d e5                                      str r2, [sp, #4]
00595944  0c 30 8d e5                                      str r3, [sp, #0xc]
00595948  05 e4 f5 eb                                      bl #0x30e964
0059594c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00595950  00 c0 a0 e1                                      mov ip, r0
00595954  04 00 93 e5                                      ldr r0, [r3, #4]
00595958  08 c0 8d e5                                      str ip, [sp, #8]
0059595c  00 e4 f5 eb                                      bl #0x30e964
00595960  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00595964  10 00 8d e5                                      str r0, [sp, #0x10]
00595968  08 00 93 e5                                      ldr r0, [r3, #8]
0059596c  fc e3 f5 eb                                      bl #0x30e964
00595970  0a 00 96 e9                                      ldmib r6, {r1, r3}
00595974  88 00 8d e5                                      str r0, [sp, #0x88]
00595978  6c b0 8d e5                                      str fp, [sp, #0x6c]
0059597c  70 90 8d e5                                      str sb, [sp, #0x70]
00595980  04 10 9d e9                                      ldmib sp, {r2, ip}
00595984  03 00 51 e1                                      cmp r1, r3
00595988  7c 20 8d e5                                      str r2, [sp, #0x7c]
0059598c  10 20 9d e5                                      ldr r2, [sp, #0x10]
00595990  74 a0 8d e5                                      str sl, [sp, #0x74]
00595994  78 80 8d e5                                      str r8, [sp, #0x78]
00595998  80 c0 8d e5                                      str ip, [sp, #0x80]
0059599c  84 20 8d e5                                      str r2, [sp, #0x84]
005959a0  68 50 8d e5                                      str r5, [sp, #0x68]
005959a4  23 00 00 0a                                      beq #0x595a38
005959a8  00 50 81 e5                                      str r5, [r1]
005959ac  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
005959b0  04 30 81 e5                                      str r3, [r1, #4]
005959b4  70 30 9d e5                                      ldr r3, [sp, #0x70]
005959b8  08 30 81 e5                                      str r3, [r1, #8]
005959bc  74 30 9d e5                                      ldr r3, [sp, #0x74]
005959c0  0c 30 81 e5                                      str r3, [r1, #0xc]
005959c4  78 30 9d e5                                      ldr r3, [sp, #0x78]
005959c8  10 30 81 e5                                      str r3, [r1, #0x10]
005959cc  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
005959d0  14 30 81 e5                                      str r3, [r1, #0x14]
005959d4  80 30 9d e5                                      ldr r3, [sp, #0x80]
005959d8  18 30 81 e5                                      str r3, [r1, #0x18]
005959dc  84 30 9d e5                                      ldr r3, [sp, #0x84]
005959e0  1c 30 81 e5                                      str r3, [r1, #0x1c]
005959e4  88 30 9d e5                                      ldr r3, [sp, #0x88]
005959e8  20 30 81 e5                                      str r3, [r1, #0x20]
005959ec  04 30 96 e5                                      ldr r3, [r6, #4]
005959f0  24 30 83 e2                                      add r3, r3, #0x24
005959f4  04 30 86 e5                                      str r3, [r6, #4]
005959f8  14 30 9d e5                                      ldr r3, [sp, #0x14]
005959fc  06 40 84 e2                                      add r4, r4, #6
00595a00  04 00 53 e1                                      cmp r3, r4
00595a04  a9 ff ff 1a                                      bne #0x5958b0
00595a08  98 ff ff ea                                      b #0x595870
00595a0c  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
00595a10  20 00 13 e3                                      tst r3, #0x20
00595a14  02 00 00 1a                                      bne #0x595a24
00595a18  00 30 a0 e3                                      mov r3, #0
00595a1c  13 30 c4 e5                                      strb r3, [r4, #0x13]
00595a20  c9 fe ff ea                                      b #0x59554c
00595a24  00 30 94 e5                                      ldr r3, [r4]
00595a28  04 00 a0 e1                                      mov r0, r4
00595a2c  0f e0 a0 e1                                      mov lr, pc
00595a30  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00595a34  f7 ff ff ea                                      b #0x595a18
00595a38  06 00 a0 e1                                      mov r0, r6
00595a3c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00595a40  fc ed ff eb                                      bl #0x591238
00595a44  eb ff ff ea                                      b #0x5959f8
00595a48  06 00 a0 e1                                      mov r0, r6
00595a4c  14 20 9d e5                                      ldr r2, [sp, #0x14]
00595a50  f8 ed ff eb                                      bl #0x591238
00595a54  10 ff ff ea                                      b #0x59569c
00595a58  06 00 a0 e1                                      mov r0, r6
00595a5c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00595a60  f4 ed ff eb                                      bl #0x591238
00595a64  7d ff ff ea                                      b #0x595860
00595a68  00 00 58 e3                                      cmp r8, #0
00595a6c  0f ff ff 0a                                      beq #0x5956b0
00595a70  44 20 8d e2                                      add r2, sp, #0x44
00595a74  be 30 d5 e1                                      ldrh r3, [r5, #0xe]
00595a78  1c 20 8d e5                                      str r2, [sp, #0x1c]
00595a7c  14 80 8d e5                                      str r8, [sp, #0x14]
00595a80  18 50 8d e5                                      str r5, [sp, #0x18]
00595a84  01 00 00 ea                                      b #0x595a90
00595a88  18 20 9d e5                                      ldr r2, [sp, #0x18]
00595a8c  be 30 d2 e1                                      ldrh r3, [r2, #0xe]
00595a90  02 80 84 e2                                      add r8, r4, #2
00595a94  93 08 08 e0                                      mul r8, r3, r8
00595a98  08 00 97 e7                                      ldr r0, [r7, r8]
00595a9c  08 30 8d e5                                      str r3, [sp, #8]
00595aa0  af e3 f5 eb                                      bl #0x30e964
00595aa4  08 80 87 e0                                      add r8, r7, r8
00595aa8  00 50 a0 e1                                      mov r5, r0
00595aac  04 00 98 e5                                      ldr r0, [r8, #4]
00595ab0  ab e3 f5 eb                                      bl #0x30e964
00595ab4  00 b0 a0 e1                                      mov fp, r0
00595ab8  08 00 98 e5                                      ldr r0, [r8, #8]
00595abc  a8 e3 f5 eb                                      bl #0x30e964
00595ac0  08 30 9d e5                                      ldr r3, [sp, #8]
00595ac4  00 90 a0 e1                                      mov sb, r0
00595ac8  94 33 22 e0                                      mla r2, r4, r3, r3
00595acc  02 00 97 e7                                      ldr r0, [r7, r2]
00595ad0  02 20 87 e0                                      add r2, r7, r2
00595ad4  0c 20 8d e5                                      str r2, [sp, #0xc]
00595ad8  a1 e3 f5 eb                                      bl #0x30e964
00595adc  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00595ae0  00 a0 a0 e1                                      mov sl, r0
00595ae4  04 00 92 e5                                      ldr r0, [r2, #4]
00595ae8  9d e3 f5 eb                                      bl #0x30e964
00595aec  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00595af0  00 80 a0 e1                                      mov r8, r0
00595af4  08 00 92 e5                                      ldr r0, [r2, #8]
00595af8  99 e3 f5 eb                                      bl #0x30e964
00595afc  08 30 9d e5                                      ldr r3, [sp, #8]
00595b00  00 20 a0 e1                                      mov r2, r0
00595b04  94 03 03 e0                                      mul r3, r4, r3
00595b08  03 00 97 e7                                      ldr r0, [r7, r3]
00595b0c  03 30 87 e0                                      add r3, r7, r3
00595b10  04 20 8d e5                                      str r2, [sp, #4]
00595b14  0c 30 8d e5                                      str r3, [sp, #0xc]
00595b18  91 e3 f5 eb                                      bl #0x30e964
00595b1c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00595b20  00 c0 a0 e1                                      mov ip, r0
00595b24  04 00 93 e5                                      ldr r0, [r3, #4]
00595b28  08 c0 8d e5                                      str ip, [sp, #8]
00595b2c  8c e3 f5 eb                                      bl #0x30e964
00595b30  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00595b34  10 00 8d e5                                      str r0, [sp, #0x10]
00595b38  08 00 93 e5                                      ldr r0, [r3, #8]
00595b3c  88 e3 f5 eb                                      bl #0x30e964
00595b40  04 10 9d e9                                      ldmib sp, {r2, ip}
00595b44  0a 00 96 e9                                      ldmib r6, {r1, r3}
00595b48  58 20 8d e5                                      str r2, [sp, #0x58]
00595b4c  48 b0 8d e5                                      str fp, [sp, #0x48]
00595b50  4c 90 8d e5                                      str sb, [sp, #0x4c]
00595b54  64 00 8d e5                                      str r0, [sp, #0x64]
00595b58  50 a0 8d e5                                      str sl, [sp, #0x50]
00595b5c  54 80 8d e5                                      str r8, [sp, #0x54]
00595b60  5c c0 8d e5                                      str ip, [sp, #0x5c]
00595b64  10 20 9d e5                                      ldr r2, [sp, #0x10]
00595b68  03 00 51 e1                                      cmp r1, r3
00595b6c  44 50 8d e5                                      str r5, [sp, #0x44]
00595b70  60 20 8d e5                                      str r2, [sp, #0x60]
00595b74  c7 00 00 0a                                      beq #0x595e98
00595b78  00 50 81 e5                                      str r5, [r1]
00595b7c  48 30 9d e5                                      ldr r3, [sp, #0x48]
00595b80  04 30 81 e5                                      str r3, [r1, #4]
00595b84  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
00595b88  08 30 81 e5                                      str r3, [r1, #8]
00595b8c  50 30 9d e5                                      ldr r3, [sp, #0x50]
00595b90  0c 30 81 e5                                      str r3, [r1, #0xc]
00595b94  54 30 9d e5                                      ldr r3, [sp, #0x54]
00595b98  10 30 81 e5                                      str r3, [r1, #0x10]
00595b9c  58 30 9d e5                                      ldr r3, [sp, #0x58]
00595ba0  14 30 81 e5                                      str r3, [r1, #0x14]
00595ba4  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
00595ba8  18 30 81 e5                                      str r3, [r1, #0x18]
00595bac  60 30 9d e5                                      ldr r3, [sp, #0x60]
00595bb0  1c 30 81 e5                                      str r3, [r1, #0x1c]
00595bb4  64 30 9d e5                                      ldr r3, [sp, #0x64]
00595bb8  20 30 81 e5                                      str r3, [r1, #0x20]
00595bbc  04 30 96 e5                                      ldr r3, [r6, #4]
00595bc0  24 30 83 e2                                      add r3, r3, #0x24
00595bc4  04 30 86 e5                                      str r3, [r6, #4]
00595bc8  14 30 9d e5                                      ldr r3, [sp, #0x14]
00595bcc  03 40 84 e2                                      add r4, r4, #3
00595bd0  04 00 53 e1                                      cmp r3, r4
00595bd4  ab ff ff 8a                                      bhi #0x595a88
00595bd8  18 50 9d e5                                      ldr r5, [sp, #0x18]
00595bdc  b3 fe ff ea                                      b #0x5956b0
00595be0  00 00 58 e3                                      cmp r8, #0
00595be4  b1 fe ff 0a                                      beq #0x5956b0
00595be8  d4 20 8d e2                                      add r2, sp, #0xd4
00595bec  be 30 d5 e1                                      ldrh r3, [r5, #0xe]
00595bf0  00 a0 a0 e3                                      mov sl, #0
00595bf4  14 20 8d e5                                      str r2, [sp, #0x14]
00595bf8  0c 80 8d e5                                      str r8, [sp, #0xc]
00595bfc  10 50 8d e5                                      str r5, [sp, #0x10]
00595c00  01 00 00 ea                                      b #0x595c0c
00595c04  10 20 9d e5                                      ldr r2, [sp, #0x10]
00595c08  be 30 d2 e1                                      ldrh r3, [r2, #0xe]
00595c0c  02 80 84 e2                                      add r8, r4, #2
00595c10  93 08 08 e0                                      mul r8, r3, r8
00595c14  08 00 97 e7                                      ldr r0, [r7, r8]
00595c18  08 30 8d e5                                      str r3, [sp, #8]
00595c1c  50 e3 f5 eb                                      bl #0x30e964
00595c20  08 80 87 e0                                      add r8, r7, r8
00595c24  00 50 a0 e1                                      mov r5, r0
00595c28  04 00 98 e5                                      ldr r0, [r8, #4]
00595c2c  4c e3 f5 eb                                      bl #0x30e964
00595c30  08 30 9d e5                                      ldr r3, [sp, #8]
00595c34  00 b0 a0 e1                                      mov fp, r0
00595c38  94 33 28 e0                                      mla r8, r4, r3, r3
00595c3c  08 00 97 e7                                      ldr r0, [r7, r8]
00595c40  47 e3 f5 eb                                      bl #0x30e964
00595c44  08 80 87 e0                                      add r8, r7, r8
00595c48  00 90 a0 e1                                      mov sb, r0
00595c4c  04 00 98 e5                                      ldr r0, [r8, #4]
00595c50  43 e3 f5 eb                                      bl #0x30e964
00595c54  08 30 9d e5                                      ldr r3, [sp, #8]
00595c58  00 80 a0 e1                                      mov r8, r0
00595c5c  94 03 03 e0                                      mul r3, r4, r3
00595c60  03 00 97 e7                                      ldr r0, [r7, r3]
00595c64  03 30 87 e0                                      add r3, r7, r3
00595c68  08 30 8d e5                                      str r3, [sp, #8]
00595c6c  3c e3 f5 eb                                      bl #0x30e964
00595c70  08 30 9d e5                                      ldr r3, [sp, #8]
00595c74  00 20 a0 e1                                      mov r2, r0
00595c78  04 00 93 e5                                      ldr r0, [r3, #4]
00595c7c  04 20 8d e5                                      str r2, [sp, #4]
00595c80  37 e3 f5 eb                                      bl #0x30e964
00595c84  0a 00 96 e9                                      ldmib r6, {r1, r3}
00595c88  04 20 9d e5                                      ldr r2, [sp, #4]
00595c8c  d8 b0 8d e5                                      str fp, [sp, #0xd8]
00595c90  03 00 51 e1                                      cmp r1, r3
00595c94  e0 90 8d e5                                      str sb, [sp, #0xe0]
00595c98  e4 80 8d e5                                      str r8, [sp, #0xe4]
00595c9c  f0 00 8d e5                                      str r0, [sp, #0xf0]
00595ca0  ec 20 8d e5                                      str r2, [sp, #0xec]
00595ca4  dc a0 8d e5                                      str sl, [sp, #0xdc]
00595ca8  e8 a0 8d e5                                      str sl, [sp, #0xe8]
00595cac  d4 50 8d e5                                      str r5, [sp, #0xd4]
00595cb0  f4 a0 8d e5                                      str sl, [sp, #0xf4]
00595cb4  7b 00 00 0a                                      beq #0x595ea8
00595cb8  00 50 81 e5                                      str r5, [r1]
00595cbc  d8 30 9d e5                                      ldr r3, [sp, #0xd8]
00595cc0  04 30 81 e5                                      str r3, [r1, #4]
00595cc4  dc 30 9d e5                                      ldr r3, [sp, #0xdc]
00595cc8  08 30 81 e5                                      str r3, [r1, #8]
00595ccc  e0 30 9d e5                                      ldr r3, [sp, #0xe0]
00595cd0  0c 30 81 e5                                      str r3, [r1, #0xc]
00595cd4  e4 30 9d e5                                      ldr r3, [sp, #0xe4]
00595cd8  10 30 81 e5                                      str r3, [r1, #0x10]
00595cdc  e8 30 9d e5                                      ldr r3, [sp, #0xe8]
00595ce0  14 30 81 e5                                      str r3, [r1, #0x14]
00595ce4  ec 30 9d e5                                      ldr r3, [sp, #0xec]
00595ce8  18 30 81 e5                                      str r3, [r1, #0x18]
00595cec  f0 30 9d e5                                      ldr r3, [sp, #0xf0]
00595cf0  1c 30 81 e5                                      str r3, [r1, #0x1c]
00595cf4  f4 30 9d e5                                      ldr r3, [sp, #0xf4]
00595cf8  20 30 81 e5                                      str r3, [r1, #0x20]
00595cfc  04 30 96 e5                                      ldr r3, [r6, #4]
00595d00  24 30 83 e2                                      add r3, r3, #0x24
00595d04  04 30 86 e5                                      str r3, [r6, #4]
00595d08  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00595d0c  03 40 84 e2                                      add r4, r4, #3
00595d10  04 00 53 e1                                      cmp r3, r4
00595d14  ba ff ff 8a                                      bhi #0x595c04
00595d18  10 50 9d e5                                      ldr r5, [sp, #0x10]
00595d1c  63 fe ff ea                                      b #0x5956b0
00595d20  00 00 58 e3                                      cmp r8, #0
00595d24  61 fe ff 0a                                      beq #0x5956b0
00595d28  8c 20 8d e2                                      add r2, sp, #0x8c
00595d2c  be 30 d5 e1                                      ldrh r3, [r5, #0xe]
00595d30  1c 20 8d e5                                      str r2, [sp, #0x1c]
00595d34  14 80 8d e5                                      str r8, [sp, #0x14]
00595d38  18 50 8d e5                                      str r5, [sp, #0x18]
00595d3c  01 00 00 ea                                      b #0x595d48
00595d40  18 20 9d e5                                      ldr r2, [sp, #0x18]
00595d44  be 30 d2 e1                                      ldrh r3, [r2, #0xe]
00595d48  02 80 84 e2                                      add r8, r4, #2
00595d4c  93 08 08 e0                                      mul r8, r3, r8
00595d50  08 00 97 e7                                      ldr r0, [r7, r8]
00595d54  08 30 8d e5                                      str r3, [sp, #8]
00595d58  01 e3 f5 eb                                      bl #0x30e964
00595d5c  08 80 87 e0                                      add r8, r7, r8
00595d60  00 50 a0 e1                                      mov r5, r0
00595d64  04 00 98 e5                                      ldr r0, [r8, #4]
00595d68  fd e2 f5 eb                                      bl #0x30e964
00595d6c  00 b0 a0 e1                                      mov fp, r0
00595d70  08 00 98 e5                                      ldr r0, [r8, #8]
00595d74  fa e2 f5 eb                                      bl #0x30e964
00595d78  08 30 9d e5                                      ldr r3, [sp, #8]
00595d7c  00 90 a0 e1                                      mov sb, r0
00595d80  94 33 22 e0                                      mla r2, r4, r3, r3
00595d84  02 00 97 e7                                      ldr r0, [r7, r2]
00595d88  02 20 87 e0                                      add r2, r7, r2
00595d8c  0c 20 8d e5                                      str r2, [sp, #0xc]
00595d90  f3 e2 f5 eb                                      bl #0x30e964
00595d94  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00595d98  00 a0 a0 e1                                      mov sl, r0
00595d9c  04 00 92 e5                                      ldr r0, [r2, #4]
00595da0  ef e2 f5 eb                                      bl #0x30e964
00595da4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00595da8  00 80 a0 e1                                      mov r8, r0
00595dac  08 00 92 e5                                      ldr r0, [r2, #8]
00595db0  eb e2 f5 eb                                      bl #0x30e964
00595db4  08 30 9d e5                                      ldr r3, [sp, #8]
00595db8  00 20 a0 e1                                      mov r2, r0
00595dbc  94 03 03 e0                                      mul r3, r4, r3
00595dc0  03 00 97 e7                                      ldr r0, [r7, r3]
00595dc4  03 30 87 e0                                      add r3, r7, r3
00595dc8  04 20 8d e5                                      str r2, [sp, #4]
00595dcc  0c 30 8d e5                                      str r3, [sp, #0xc]
00595dd0  e3 e2 f5 eb                                      bl #0x30e964
00595dd4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00595dd8  00 c0 a0 e1                                      mov ip, r0
00595ddc  04 00 93 e5                                      ldr r0, [r3, #4]
00595de0  08 c0 8d e5                                      str ip, [sp, #8]
00595de4  de e2 f5 eb                                      bl #0x30e964
00595de8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00595dec  10 00 8d e5                                      str r0, [sp, #0x10]
00595df0  08 00 93 e5                                      ldr r0, [r3, #8]
00595df4  da e2 f5 eb                                      bl #0x30e964
00595df8  04 10 9d e9                                      ldmib sp, {r2, ip}
00595dfc  0a 00 96 e9                                      ldmib r6, {r1, r3}
00595e00  a0 20 8d e5                                      str r2, [sp, #0xa0]
00595e04  90 b0 8d e5                                      str fp, [sp, #0x90]
00595e08  94 90 8d e5                                      str sb, [sp, #0x94]
00595e0c  ac 00 8d e5                                      str r0, [sp, #0xac]
00595e10  98 a0 8d e5                                      str sl, [sp, #0x98]
00595e14  9c 80 8d e5                                      str r8, [sp, #0x9c]
00595e18  a4 c0 8d e5                                      str ip, [sp, #0xa4]
00595e1c  10 20 9d e5                                      ldr r2, [sp, #0x10]
00595e20  03 00 51 e1                                      cmp r1, r3
00595e24  8c 50 8d e5                                      str r5, [sp, #0x8c]
00595e28  a8 20 8d e5                                      str r2, [sp, #0xa8]
00595e2c  21 00 00 0a                                      beq #0x595eb8
00595e30  00 50 81 e5                                      str r5, [r1]
00595e34  90 30 9d e5                                      ldr r3, [sp, #0x90]
00595e38  04 30 81 e5                                      str r3, [r1, #4]
00595e3c  94 30 9d e5                                      ldr r3, [sp, #0x94]
00595e40  08 30 81 e5                                      str r3, [r1, #8]
00595e44  98 30 9d e5                                      ldr r3, [sp, #0x98]
00595e48  0c 30 81 e5                                      str r3, [r1, #0xc]
00595e4c  9c 30 9d e5                                      ldr r3, [sp, #0x9c]
00595e50  10 30 81 e5                                      str r3, [r1, #0x10]
00595e54  a0 30 9d e5                                      ldr r3, [sp, #0xa0]
00595e58  14 30 81 e5                                      str r3, [r1, #0x14]
00595e5c  a4 30 9d e5                                      ldr r3, [sp, #0xa4]
00595e60  18 30 81 e5                                      str r3, [r1, #0x18]
00595e64  a8 30 9d e5                                      ldr r3, [sp, #0xa8]
00595e68  1c 30 81 e5                                      str r3, [r1, #0x1c]
00595e6c  ac 30 9d e5                                      ldr r3, [sp, #0xac]
00595e70  20 30 81 e5                                      str r3, [r1, #0x20]
00595e74  04 30 96 e5                                      ldr r3, [r6, #4]
00595e78  24 30 83 e2                                      add r3, r3, #0x24
00595e7c  04 30 86 e5                                      str r3, [r6, #4]
00595e80  14 30 9d e5                                      ldr r3, [sp, #0x14]
00595e84  03 40 84 e2                                      add r4, r4, #3
00595e88  04 00 53 e1                                      cmp r3, r4
00595e8c  ab ff ff 8a                                      bhi #0x595d40
00595e90  18 50 9d e5                                      ldr r5, [sp, #0x18]
00595e94  05 fe ff ea                                      b #0x5956b0
00595e98  06 00 a0 e1                                      mov r0, r6
00595e9c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00595ea0  e4 ec ff eb                                      bl #0x591238
00595ea4  47 ff ff ea                                      b #0x595bc8
00595ea8  06 00 a0 e1                                      mov r0, r6
00595eac  14 20 9d e5                                      ldr r2, [sp, #0x14]
00595eb0  e0 ec ff eb                                      bl #0x591238
00595eb4  93 ff ff ea                                      b #0x595d08
00595eb8  06 00 a0 e1                                      mov r0, r6
00595ebc  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00595ec0  dc ec ff eb                                      bl #0x591238
00595ec4  ed ff ff ea                                      b #0x595e80
