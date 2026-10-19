; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00670dcc, declared_size=112, range_size=112, mode=arm
; class-group: glitch::collada::detail::IColladaSkinTechnique
; alias: _ZN6glitch7collada6detail21IColladaSkinTechniqueD1Ev
; demangled: glitch::collada::detail::IColladaSkinTechnique::~IColladaSkinTechnique()
; decoder-mode: arm
00670dcc  70 40 2d e9                                      push {r4, r5, r6, lr}
00670dd0  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
00670dd4  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
00670dd8  08 50 90 e5                                      ldr r5, [r0, #8]
00670ddc  03 30 8f e0                                      add r3, pc, r3
00670de0  02 20 93 e7                                      ldr r2, [r3, r2]
00670de4  00 00 55 e3                                      cmp r5, #0
00670de8  00 40 a0 e1                                      mov r4, r0
00670dec  08 20 82 e2                                      add r2, r2, #8
00670df0  00 20 80 e5                                      str r2, [r0]
00670df4  0c 00 00 0a                                      beq #0x670e2c
00670df8  00 30 95 e5                                      ldr r3, [r5]
00670dfc  01 30 43 e2                                      sub r3, r3, #1
00670e00  00 00 53 e3                                      cmp r3, #0
00670e04  00 30 85 e5                                      str r3, [r5]
00670e08  05 00 00 1a                                      bne #0x670e24
00670e0c  0c 00 95 e5                                      ldr r0, [r5, #0xc]
00670e10  00 00 50 e3                                      cmp r0, #0
00670e14  00 00 00 0a                                      beq #0x670e1c
00670e18  a6 74 f2 eb                                      bl #0x30e0b8
00670e1c  00 30 a0 e3                                      mov r3, #0
00670e20  0c 30 85 e5                                      str r3, [r5, #0xc]
00670e24  00 30 a0 e3                                      mov r3, #0
00670e28  08 30 84 e5                                      str r3, [r4, #8]
00670e2c  04 00 a0 e1                                      mov r0, r4
00670e30  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00670e34  b4 3c 32 00 28 34 00 00                          .byte 0xb4, 0x3c, 0x32, 0x00, 0x28, 0x34, 0x00, 0x00

; FUNCTION 0x00670e3c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::detail::IColladaSkinTechnique
; alias: _ZN6glitch7collada6detail21IColladaSkinTechniqueD0Ev
; demangled: glitch::collada::detail::IColladaSkinTechnique::~IColladaSkinTechnique()
; decoder-mode: arm
00670e3c  10 40 2d e9                                      push {r4, lr}
00670e40  00 40 a0 e1                                      mov r4, r0
00670e44  e0 ff ff eb                                      bl #0x670dcc
00670e48  04 00 a0 e1                                      mov r0, r4
00670e4c  17 75 f2 eb                                      bl #0x30e2b0
00670e50  04 00 a0 e1                                      mov r0, r4
00670e54  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00670e58, declared_size=112, range_size=112, mode=arm
; class-group: glitch::collada::detail::IColladaSkinTechnique
; alias: _ZN6glitch7collada6detail21IColladaSkinTechniqueD2Ev
; demangled: glitch::collada::detail::IColladaSkinTechnique::~IColladaSkinTechnique()
; decoder-mode: arm
00670e58  70 40 2d e9                                      push {r4, r5, r6, lr}
00670e5c  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
00670e60  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
00670e64  08 50 90 e5                                      ldr r5, [r0, #8]
00670e68  03 30 8f e0                                      add r3, pc, r3
00670e6c  02 20 93 e7                                      ldr r2, [r3, r2]
00670e70  00 00 55 e3                                      cmp r5, #0
00670e74  00 40 a0 e1                                      mov r4, r0
00670e78  08 20 82 e2                                      add r2, r2, #8
00670e7c  00 20 80 e5                                      str r2, [r0]
00670e80  0c 00 00 0a                                      beq #0x670eb8
00670e84  00 30 95 e5                                      ldr r3, [r5]
00670e88  01 30 43 e2                                      sub r3, r3, #1
00670e8c  00 00 53 e3                                      cmp r3, #0
00670e90  00 30 85 e5                                      str r3, [r5]
00670e94  05 00 00 1a                                      bne #0x670eb0
00670e98  0c 00 95 e5                                      ldr r0, [r5, #0xc]
00670e9c  00 00 50 e3                                      cmp r0, #0
00670ea0  00 00 00 0a                                      beq #0x670ea8
00670ea4  83 74 f2 eb                                      bl #0x30e0b8
00670ea8  00 30 a0 e3                                      mov r3, #0
00670eac  0c 30 85 e5                                      str r3, [r5, #0xc]
00670eb0  00 30 a0 e3                                      mov r3, #0
00670eb4  08 30 84 e5                                      str r3, [r4, #8]
00670eb8  04 00 a0 e1                                      mov r0, r4
00670ebc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00670ec0  28 3c 32 00 28 34 00 00                          .byte 0x28, 0x3c, 0x32, 0x00, 0x28, 0x34, 0x00, 0x00

; FUNCTION 0x00670ec8, declared_size=1376, range_size=1376, mode=arm
; class-group: glitch::collada::detail::IColladaSkinTechnique
; alias: _ZN6glitch7collada6detail21IColladaSkinTechnique15initProxyBufferEPNS_5scene11CMeshBufferERNS0_11SSkinBufferERNS0_5SSkinEPNS_5video12IVideoDriverE
; demangled: glitch::collada::detail::IColladaSkinTechnique::initProxyBuffer(glitch::scene::CMeshBuffer*, glitch::collada::SSkinBuffer&, glitch::collada::SSkin&, glitch::video::IVideoDriver*)
; decoder-mode: arm
00670ec8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00670ecc  5c d0 4d e2                                      sub sp, sp, #0x5c
00670ed0  18 20 8d e5                                      str r2, [sp, #0x18]
00670ed4  00 20 92 e5                                      ldr r2, [r2]
00670ed8  40 45 9f e5                                      ldr r4, [pc, #0x540]
00670edc  1c 00 8d e5                                      str r0, [sp, #0x1c]
00670ee0  00 00 52 e3                                      cmp r2, #0
00670ee4  04 40 8f e0                                      add r4, pc, r4
00670ee8  14 20 8d e5                                      str r2, [sp, #0x14]
00670eec  01 60 a0 e1                                      mov r6, r1
00670ef0  03 50 a0 e1                                      mov r5, r3
00670ef4  04 01 00 0a                                      beq #0x67130c
00670ef8  14 00 96 e5                                      ldr r0, [r6, #0x14]
00670efc  14 20 9d e5                                      ldr r2, [sp, #0x14]
00670f00  0c 80 d0 e5                                      ldrb r8, [r0, #0xc]
00670f04  14 40 92 e5                                      ldr r4, [r2, #0x14]
00670f08  00 00 58 e3                                      cmp r8, #0
00670f0c  2d 00 00 0a                                      beq #0x670fc8
00670f10  24 30 a0 e3                                      mov r3, #0x24
00670f14  00 20 a0 e3                                      mov r2, #0
00670f18  08 a0 a0 e3                                      mov sl, #8
00670f1c  1b 00 00 ea                                      b #0x670f90
00670f20  be 70 d4 e1                                      ldrh r7, [r4, #0xe]
00670f24  10 e0 94 e5                                      ldr lr, [r4, #0x10]
00670f28  01 20 82 e2                                      add r2, r2, #1
00670f2c  07 c0 8c e1                                      orr ip, ip, r7
00670f30  be c0 c4 e1                                      strh ip, [r4, #0xe]
00670f34  10 90 90 e5                                      ldr sb, [r0, #0x10]
00670f38  03 c0 8e e0                                      add ip, lr, r3
00670f3c  03 70 89 e0                                      add r7, sb, r3
00670f40  03 b0 99 e7                                      ldr fp, [sb, r3]
00670f44  08 90 97 e5                                      ldr sb, [r7, #8]
00670f48  04 70 97 e5                                      ldr r7, [r7, #4]
00670f4c  03 b0 8e e7                                      str fp, [lr, r3]
00670f50  08 90 8c e5                                      str sb, [ip, #8]
00670f54  04 70 8c e5                                      str r7, [ip, #4]
00670f58  10 70 90 e5                                      ldr r7, [r0, #0x10]
00670f5c  10 e0 94 e5                                      ldr lr, [r4, #0x10]
00670f60  18 30 83 e2                                      add r3, r3, #0x18
00670f64  01 b0 97 e7                                      ldr fp, [r7, r1]
00670f68  01 c0 87 e0                                      add ip, r7, r1
00670f6c  08 90 9c e5                                      ldr sb, [ip, #8]
00670f70  04 70 9c e5                                      ldr r7, [ip, #4]
00670f74  01 c0 8e e0                                      add ip, lr, r1
00670f78  01 b0 8e e7                                      str fp, [lr, r1]
00670f7c  72 10 ef e6                                      uxtb r1, r2
00670f80  01 00 58 e1                                      cmp r8, r1
00670f84  08 90 8c e5                                      str sb, [ip, #8]
00670f88  04 70 8c e5                                      str r7, [ip, #4]
00670f8c  0c 00 00 9a                                      bls #0x670fc4
00670f90  1a c2 a0 e1                                      lsl ip, sl, r2
00670f94  be e0 d0 e1                                      ldrh lr, [r0, #0xe]
00670f98  0c 10 43 e2                                      sub r1, r3, #0xc
00670f9c  0e 00 1c e1                                      tst ip, lr
00670fa0  de ff ff 1a                                      bne #0x670f20
00670fa4  be 10 d4 e1                                      ldrh r1, [r4, #0xe]
00670fa8  01 20 82 e2                                      add r2, r2, #1
00670fac  18 30 83 e2                                      add r3, r3, #0x18
00670fb0  0c c0 c1 e1                                      bic ip, r1, ip
00670fb4  72 10 ef e6                                      uxtb r1, r2
00670fb8  01 00 58 e1                                      cmp r8, r1
00670fbc  be c0 c4 e1                                      strh ip, [r4, #0xe]
00670fc0  f2 ff ff 8a                                      bhi #0x670f90
00670fc4  14 00 96 e5                                      ldr r0, [r6, #0x14]
00670fc8  00 00 50 e3                                      cmp r0, #0
00670fcc  4c 00 8d e5                                      str r0, [sp, #0x4c]
00670fd0  00 30 90 15                                      ldrne r3, [r0]
00670fd4  01 30 83 12                                      addne r3, r3, #1
00670fd8  00 30 80 15                                      strne r3, [r0]
00670fdc  4c 00 9d 15                                      ldrne r0, [sp, #0x4c]
00670fe0  08 70 90 e5                                      ldr r7, [r0, #8]
00670fe4  4c 00 8d e2                                      add r0, sp, #0x4c
00670fe8  e8 b6 f3 eb                                      bl #0x35eb90
00670fec  08 70 84 e5                                      str r7, [r4, #8]
00670ff0  03 22 e0 e3                                      mvn r2, #0x30000000
00670ff4  00 30 a0 e3                                      mov r3, #0
00670ff8  01 c0 a0 e3                                      mov ip, #1
00670ffc  04 00 a0 e1                                      mov r0, r4
00671000  14 10 86 e2                                      add r1, r6, #0x14
00671004  00 c0 8d e5                                      str ip, [sp]
00671008  14 bf fc eb                                      bl #0x5a0c60
0067100c  18 30 9d e5                                      ldr r3, [sp, #0x18]
00671010  98 70 d5 e5                                      ldrb r7, [r5, #0x98]
00671014  94 20 95 e5                                      ldr r2, [r5, #0x94]
00671018  12 80 d3 e5                                      ldrb r8, [r3, #0x12]
0067101c  01 70 87 e2                                      add r7, r7, #1
00671020  14 30 84 e2                                      add r3, r4, #0x14
00671024  00 00 52 e3                                      cmp r2, #0
00671028  08 82 83 e0                                      add r8, r3, r8, lsl #4
0067102c  07 71 a0 e1                                      lsl r7, r7, #2
00671030  14 00 00 0a                                      beq #0x671088
00671034  14 30 96 e5                                      ldr r3, [r6, #0x14]
00671038  0c a0 92 e5                                      ldr sl, [r2, #0xc]
0067103c  48 00 8d e2                                      add r0, sp, #0x48
00671040  00 00 53 e3                                      cmp r3, #0
00671044  48 30 8d e5                                      str r3, [sp, #0x48]
00671048  00 20 93 15                                      ldrne r2, [r3]
0067104c  01 20 82 12                                      addne r2, r2, #1
00671050  00 20 83 15                                      strne r2, [r3]
00671054  48 30 9d 15                                      ldrne r3, [sp, #0x48]
00671058  08 90 93 e5                                      ldr sb, [r3, #8]
0067105c  cb b6 f3 eb                                      bl #0x35eb90
00671060  99 07 09 e0                                      mul sb, sb, r7
00671064  0a 00 59 e1                                      cmp sb, sl
00671068  06 00 00 8a                                      bhi #0x671088
0067106c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00671070  08 30 91 e5                                      ldr r3, [r1, #8]
00671074  00 00 53 e3                                      cmp r3, #0
00671078  02 00 00 0a                                      beq #0x671088
0067107c  00 30 93 e5                                      ldr r3, [r3]
00671080  00 00 53 e3                                      cmp r3, #0
00671084  4d 00 00 1a                                      bne #0x6711c0
00671088  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0067108c  04 30 d2 e5                                      ldrb r3, [r2, #4]
00671090  00 00 53 e3                                      cmp r3, #0
00671094  77 00 00 0a                                      beq #0x671278
00671098  80 a0 95 e5                                      ldr sl, [r5, #0x80]
0067109c  00 00 5a e3                                      cmp sl, #0
006710a0  00 30 9a 15                                      ldrne r3, [sl]
006710a4  02 30 83 12                                      addne r3, r3, #2
006710a8  00 30 8a 15                                      strne r3, [sl]
006710ac  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006710b0  08 90 93 e5                                      ldr sb, [r3, #8]
006710b4  00 00 59 e3                                      cmp sb, #0
006710b8  0a 00 00 0a                                      beq #0x6710e8
006710bc  00 30 99 e5                                      ldr r3, [sb]
006710c0  01 30 43 e2                                      sub r3, r3, #1
006710c4  00 00 53 e3                                      cmp r3, #0
006710c8  00 30 89 e5                                      str r3, [sb]
006710cc  05 00 00 1a                                      bne #0x6710e8
006710d0  0c 00 99 e5                                      ldr r0, [sb, #0xc]
006710d4  00 00 50 e3                                      cmp r0, #0
006710d8  00 00 00 0a                                      beq #0x6710e0
006710dc  f5 73 f2 eb                                      bl #0x30e0b8
006710e0  00 30 a0 e3                                      mov r3, #0
006710e4  0c 30 89 e5                                      str r3, [sb, #0xc]
006710e8  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006710ec  00 00 5a e3                                      cmp sl, #0
006710f0  08 a0 81 e5                                      str sl, [r1, #8]
006710f4  0a 00 00 0a                                      beq #0x671124
006710f8  00 30 9a e5                                      ldr r3, [sl]
006710fc  01 30 43 e2                                      sub r3, r3, #1
00671100  00 00 53 e3                                      cmp r3, #0
00671104  00 30 8a e5                                      str r3, [sl]
00671108  05 00 00 1a                                      bne #0x671124
0067110c  0c 00 9a e5                                      ldr r0, [sl, #0xc]
00671110  00 00 50 e3                                      cmp r0, #0
00671114  00 00 00 0a                                      beq #0x67111c
00671118  e6 73 f2 eb                                      bl #0x30e0b8
0067111c  00 30 a0 e3                                      mov r3, #0
00671120  0c 30 8a e5                                      str r3, [sl, #0xc]
00671124  80 10 9d e5                                      ldr r1, [sp, #0x80]
00671128  14 30 96 e5                                      ldr r3, [r6, #0x14]
0067112c  44 00 8d e2                                      add r0, sp, #0x44
00671130  00 20 91 e5                                      ldr r2, [r1]
00671134  00 00 53 e3                                      cmp r3, #0
00671138  78 60 92 e5                                      ldr r6, [r2, #0x78]
0067113c  44 30 8d e5                                      str r3, [sp, #0x44]
00671140  00 20 93 15                                      ldrne r2, [r3]
00671144  01 20 82 12                                      addne r2, r2, #1
00671148  00 20 83 15                                      strne r2, [r3]
0067114c  44 30 9d 15                                      ldrne r3, [sp, #0x44]
00671150  08 a0 93 e5                                      ldr sl, [r3, #8]
00671154  8d b6 f3 eb                                      bl #0x35eb90
00671158  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0067115c  9a 07 0a e0                                      mul sl, sl, r7
00671160  08 30 92 e5                                      ldr r3, [r2, #8]
00671164  00 a0 8d e5                                      str sl, [sp]
00671168  00 20 a0 e3                                      mov r2, #0
0067116c  0c 30 93 e5                                      ldr r3, [r3, #0xc]
00671170  54 00 8d e2                                      add r0, sp, #0x54
00671174  08 20 8d e5                                      str r2, [sp, #8]
00671178  04 30 8d e5                                      str r3, [sp, #4]
0067117c  80 10 9d e5                                      ldr r1, [sp, #0x80]
00671180  04 30 a0 e3                                      mov r3, #4
00671184  36 ff 2f e1                                      blx r6
00671188  54 30 9d e5                                      ldr r3, [sp, #0x54]
0067118c  00 00 53 e3                                      cmp r3, #0
00671190  04 20 93 15                                      ldrne r2, [r3, #4]
00671194  01 20 82 12                                      addne r2, r2, #1
00671198  04 20 83 15                                      strne r2, [r3, #4]
0067119c  94 00 95 e5                                      ldr r0, [r5, #0x94]
006711a0  94 30 85 e5                                      str r3, [r5, #0x94]
006711a4  00 00 50 e3                                      cmp r0, #0
006711a8  00 00 00 0a                                      beq #0x6711b0
006711ac  f4 b0 f2 eb                                      bl #0x31d584
006711b0  54 00 9d e5                                      ldr r0, [sp, #0x54]
006711b4  00 00 50 e3                                      cmp r0, #0
006711b8  00 00 00 0a                                      beq #0x6711c0
006711bc  f0 b0 f2 eb                                      bl #0x31d584
006711c0  94 30 95 e5                                      ldr r3, [r5, #0x94]
006711c4  04 00 a0 e1                                      mov r0, r4
006711c8  77 70 ff e6                                      uxth r7, r7
006711cc  00 00 53 e3                                      cmp r3, #0
006711d0  30 30 8d e5                                      str r3, [sp, #0x30]
006711d4  04 20 93 15                                      ldrne r2, [r3, #4]
006711d8  08 10 a0 e1                                      mov r1, r8
006711dc  01 20 82 12                                      addne r2, r2, #1
006711e0  04 20 83 15                                      strne r2, [r3, #4]
006711e4  00 30 a0 e3                                      mov r3, #0
006711e8  34 30 8d e5                                      str r3, [sp, #0x34]
006711ec  01 30 a0 e3                                      mov r3, #1
006711f0  38 30 8d e5                                      str r3, [sp, #0x38]
006711f4  30 20 8d e2                                      add r2, sp, #0x30
006711f8  04 30 a0 e3                                      mov r3, #4
006711fc  bc 33 cd e1                                      strh r3, [sp, #0x3c]
00671200  be 73 cd e1                                      strh r7, [sp, #0x3e]
00671204  d6 fe ff eb                                      bl #0x670d64
00671208  30 00 9d e5                                      ldr r0, [sp, #0x30]
0067120c  00 00 50 e3                                      cmp r0, #0
00671210  00 00 00 0a                                      beq #0x671218
00671214  da b0 f2 eb                                      bl #0x31d584
00671218  94 20 95 e5                                      ldr r2, [r5, #0x94]
0067121c  98 30 d5 e5                                      ldrb r3, [r5, #0x98]
00671220  04 c0 a0 e3                                      mov ip, #4
00671224  00 00 52 e3                                      cmp r2, #0
00671228  20 20 8d e5                                      str r2, [sp, #0x20]
0067122c  04 00 92 15                                      ldrne r0, [r2, #4]
00671230  10 10 48 e2                                      sub r1, r8, #0x10
00671234  01 00 80 12                                      addne r0, r0, #1
00671238  04 00 82 15                                      strne r0, [r2, #4]
0067123c  04 00 a0 e1                                      mov r0, r4
00671240  24 c0 8d e5                                      str ip, [sp, #0x24]
00671244  20 20 8d e2                                      add r2, sp, #0x20
00671248  06 c0 a0 e3                                      mov ip, #6
0067124c  28 c0 8d e5                                      str ip, [sp, #0x28]
00671250  bc 32 cd e1                                      strh r3, [sp, #0x2c]
00671254  be 72 cd e1                                      strh r7, [sp, #0x2e]
00671258  c1 fe ff eb                                      bl #0x670d64
0067125c  20 00 9d e5                                      ldr r0, [sp, #0x20]
00671260  00 00 50 e3                                      cmp r0, #0
00671264  00 00 00 0a                                      beq #0x67126c
00671268  c5 b0 f2 eb                                      bl #0x31d584
0067126c  14 00 9d e5                                      ldr r0, [sp, #0x14]
00671270  5c d0 8d e2                                      add sp, sp, #0x5c
00671274  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00671278  80 10 9d e5                                      ldr r1, [sp, #0x80]
0067127c  14 30 96 e5                                      ldr r3, [r6, #0x14]
00671280  40 00 8d e2                                      add r0, sp, #0x40
00671284  00 20 91 e5                                      ldr r2, [r1]
00671288  00 00 53 e3                                      cmp r3, #0
0067128c  78 60 92 e5                                      ldr r6, [r2, #0x78]
00671290  40 30 8d e5                                      str r3, [sp, #0x40]
00671294  00 20 93 15                                      ldrne r2, [r3]
00671298  01 20 82 12                                      addne r2, r2, #1
0067129c  00 20 83 15                                      strne r2, [r3]
006712a0  40 30 9d 15                                      ldrne r3, [sp, #0x40]
006712a4  08 a0 93 e5                                      ldr sl, [r3, #8]
006712a8  38 b6 f3 eb                                      bl #0x35eb90
006712ac  9a 07 0a e0                                      mul sl, sl, r7
006712b0  80 30 95 e5                                      ldr r3, [r5, #0x80]
006712b4  00 20 a0 e3                                      mov r2, #0
006712b8  08 20 8d e5                                      str r2, [sp, #8]
006712bc  04 30 8d e5                                      str r3, [sp, #4]
006712c0  50 00 8d e2                                      add r0, sp, #0x50
006712c4  04 30 a0 e3                                      mov r3, #4
006712c8  00 a0 8d e5                                      str sl, [sp]
006712cc  80 10 9d e5                                      ldr r1, [sp, #0x80]
006712d0  36 ff 2f e1                                      blx r6
006712d4  50 30 9d e5                                      ldr r3, [sp, #0x50]
006712d8  00 00 53 e3                                      cmp r3, #0
006712dc  04 20 93 15                                      ldrne r2, [r3, #4]
006712e0  01 20 82 12                                      addne r2, r2, #1
006712e4  04 20 83 15                                      strne r2, [r3, #4]
006712e8  94 00 95 e5                                      ldr r0, [r5, #0x94]
006712ec  94 30 85 e5                                      str r3, [r5, #0x94]
006712f0  00 00 50 e3                                      cmp r0, #0
006712f4  00 00 00 0a                                      beq #0x6712fc
006712f8  a1 b0 f2 eb                                      bl #0x31d584
006712fc  50 00 9d e5                                      ldr r0, [sp, #0x50]
00671300  00 00 50 e3                                      cmp r0, #0
00671304  ac ff ff 1a                                      bne #0x6711bc
00671308  ac ff ff ea                                      b #0x6711c0
0067130c  14 30 91 e5                                      ldr r3, [r1, #0x14]
00671310  38 00 a0 e3                                      mov r0, #0x38
00671314  02 10 a0 e1                                      mov r1, r2
00671318  04 70 93 e5                                      ldr r7, [r3, #4]
0067131c  a2 0b fb eb                                      bl #0x5341ac
00671320  fc 20 9f e5                                      ldr r2, [pc, #0xfc]
00671324  00 30 a0 e3                                      mov r3, #0
00671328  14 00 8d e5                                      str r0, [sp, #0x14]
0067132c  02 20 94 e7                                      ldr r2, [r4, r2]
00671330  10 30 80 e5                                      str r3, [r0, #0x10]
00671334  14 10 9d e5                                      ldr r1, [sp, #0x14]
00671338  08 20 82 e2                                      add r2, r2, #8
0067133c  03 72 87 e3                                      orr r7, r7, #0x30000000
00671340  04 30 81 e5                                      str r3, [r1, #4]
00671344  08 30 81 e5                                      str r3, [r1, #8]
00671348  0c 30 81 e5                                      str r3, [r1, #0xc]
0067134c  00 20 81 e5                                      str r2, [r1]
00671350  14 20 9d e5                                      ldr r2, [sp, #0x14]
00671354  01 77 87 e3                                      orr r7, r7, #0x40000
00671358  07 10 a0 e1                                      mov r1, r7
0067135c  14 00 82 e2                                      add r0, r2, #0x14
00671360  fd bf fc eb                                      bl #0x5a135c
00671364  18 30 96 e5                                      ldr r3, [r6, #0x18]
00671368  14 10 9d e5                                      ldr r1, [sp, #0x14]
0067136c  00 00 53 e3                                      cmp r3, #0
00671370  18 30 81 e5                                      str r3, [r1, #0x18]
00671374  04 20 93 15                                      ldrne r2, [r3, #4]
00671378  01 20 82 12                                      addne r2, r2, #1
0067137c  04 20 83 15                                      strne r2, [r3, #4]
00671380  1c 20 96 e5                                      ldr r2, [r6, #0x1c]
00671384  14 10 9d e5                                      ldr r1, [sp, #0x14]
00671388  1c 20 81 e5                                      str r2, [r1, #0x1c]
0067138c  20 20 96 e5                                      ldr r2, [r6, #0x20]
00671390  04 30 91 e5                                      ldr r3, [r1, #4]
00671394  20 20 81 e5                                      str r2, [r1, #0x20]
00671398  24 20 96 e5                                      ldr r2, [r6, #0x24]
0067139c  01 30 83 e2                                      add r3, r3, #1
006713a0  24 20 81 e5                                      str r2, [r1, #0x24]
006713a4  28 20 96 e5                                      ldr r2, [r6, #0x28]
006713a8  28 20 81 e5                                      str r2, [r1, #0x28]
006713ac  bc 22 d6 e1                                      ldrh r2, [r6, #0x2c]
006713b0  bc 22 c1 e1                                      strh r2, [r1, #0x2c]
006713b4  be 22 d6 e1                                      ldrh r2, [r6, #0x2e]
006713b8  04 30 81 e5                                      str r3, [r1, #4]
006713bc  be 22 c1 e1                                      strh r2, [r1, #0x2e]
006713c0  00 20 a0 e3                                      mov r2, #0
006713c4  30 20 81 e5                                      str r2, [r1, #0x30]
006713c8  01 20 a0 e3                                      mov r2, #1
006713cc  34 20 c1 e5                                      strb r2, [r1, #0x34]
006713d0  18 30 9d e5                                      ldr r3, [sp, #0x18]
006713d4  00 00 93 e5                                      ldr r0, [r3]
006713d8  00 10 83 e5                                      str r1, [r3]
006713dc  00 00 50 e3                                      cmp r0, #0
006713e0  00 00 00 0a                                      beq #0x6713e8
006713e4  66 b0 f2 eb                                      bl #0x31d584
006713e8  14 10 9d e5                                      ldr r1, [sp, #0x14]
006713ec  14 00 91 e5                                      ldr r0, [r1, #0x14]
006713f0  1d 10 a0 e3                                      mov r1, #0x1d
006713f4  14 20 80 e2                                      add r2, r0, #0x14
006713f8  10 30 90 e5                                      ldr r3, [r0, #0x10]
006713fc  bb bd fc eb                                      bl #0x5a0af0
00671400  14 20 9d e5                                      ldr r2, [sp, #0x14]
00671404  18 10 9d e5                                      ldr r1, [sp, #0x18]
00671408  14 30 92 e5                                      ldr r3, [r2, #0x14]
0067140c  14 30 83 e2                                      add r3, r3, #0x14
00671410  00 30 63 e0                                      rsb r3, r3, r0
00671414  43 32 a0 e1                                      asr r3, r3, #4
00671418  12 30 c1 e5                                      strb r3, [r1, #0x12]
0067141c  b5 fe ff ea                                      b #0x670ef8
; mapping-symbol data/literal pool
00671420  ac 3b 32 00 54 0c 00 00                          .byte 0xac, 0x3b, 0x32, 0x00, 0x54, 0x0c, 0x00, 0x00
