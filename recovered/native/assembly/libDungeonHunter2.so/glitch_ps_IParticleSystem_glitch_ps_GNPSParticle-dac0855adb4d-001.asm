; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00637bcc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>
; alias: _ZNK6glitch2ps15IParticleSystemINS0_12GNPSParticleEE17getWorldMatrixPtrEv
; demangled: glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::getWorldMatrixPtr() const
; decoder-mode: arm
00637bcc  0c 00 90 e5                                      ldr r0, [r0, #0xc]
00637bd0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00637bd4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>
; alias: _ZTv0_n40_NK6glitch2ps15IParticleSystemINS0_12GNPSParticleEE17getWorldMatrixPtrEv
; demangled: virtual thunk to glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::getWorldMatrixPtr() const
; decoder-mode: arm
00637bd4  00 30 90 e5                                      ldr r3, [r0]
00637bd8  28 30 13 e5                                      ldr r3, [r3, #-0x28]
00637bdc  03 00 80 e0                                      add r0, r0, r3
00637be0  f9 ff ff ea                                      b #0x637bcc

; FUNCTION 0x00637be4, declared_size=272, range_size=272, mode=arm
; class-group: glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps15IParticleSystemINS0_12GNPSParticleEE4initEv
; demangled: glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::init()
; decoder-mode: arm
00637be4  10 40 2d e9                                      push {r4, lr}
00637be8  08 10 90 e5                                      ldr r1, [r0, #8]
00637bec  00 20 90 e5                                      ldr r2, [r0]
00637bf0  00 30 a0 e3                                      mov r3, #0
00637bf4  04 10 80 e5                                      str r1, [r0, #4]
00637bf8  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00637bfc  00 40 a0 e1                                      mov r4, r0
00637c00  02 20 80 e0                                      add r2, r0, r2
00637c04  4c 30 82 e5                                      str r3, [r2, #0x4c]
00637c08  00 20 90 e5                                      ldr r2, [r0]
00637c0c  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00637c10  02 20 80 e0                                      add r2, r0, r2
00637c14  48 30 82 e5                                      str r3, [r2, #0x48]
00637c18  00 30 90 e5                                      ldr r3, [r0]
00637c1c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00637c20  03 00 80 e0                                      add r0, r0, r3
00637c24  03 30 94 e7                                      ldr r3, [r4, r3]
00637c28  0f e0 a0 e1                                      mov lr, pc
00637c2c  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00637c30  00 30 94 e5                                      ldr r3, [r4]
00637c34  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00637c38  03 00 84 e0                                      add r0, r4, r3
00637c3c  03 30 94 e7                                      ldr r3, [r4, r3]
00637c40  0f e0 a0 e1                                      mov lr, pc
00637c44  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00637c48  00 30 94 e5                                      ldr r3, [r4]
00637c4c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00637c50  03 00 84 e0                                      add r0, r4, r3
00637c54  03 30 94 e7                                      ldr r3, [r4, r3]
00637c58  0f e0 a0 e1                                      mov lr, pc
00637c5c  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00637c60  00 30 94 e5                                      ldr r3, [r4]
00637c64  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00637c68  03 00 84 e0                                      add r0, r4, r3
00637c6c  03 30 94 e7                                      ldr r3, [r4, r3]
00637c70  0f e0 a0 e1                                      mov lr, pc
00637c74  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00637c78  00 30 94 e5                                      ldr r3, [r4]
00637c7c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00637c80  03 00 84 e0                                      add r0, r4, r3
00637c84  03 30 94 e7                                      ldr r3, [r4, r3]
00637c88  0f e0 a0 e1                                      mov lr, pc
00637c8c  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
00637c90  00 30 94 e5                                      ldr r3, [r4]
00637c94  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00637c98  03 00 84 e0                                      add r0, r4, r3
00637c9c  03 30 94 e7                                      ldr r3, [r4, r3]
00637ca0  0f e0 a0 e1                                      mov lr, pc
00637ca4  64 f0 93 e5                                      ldr pc, [r3, #0x64]
00637ca8  00 30 94 e5                                      ldr r3, [r4]
00637cac  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00637cb0  03 00 84 e0                                      add r0, r4, r3
00637cb4  03 30 94 e7                                      ldr r3, [r4, r3]
00637cb8  0f e0 a0 e1                                      mov lr, pc
00637cbc  70 f0 93 e5                                      ldr pc, [r3, #0x70]
00637cc0  00 30 94 e5                                      ldr r3, [r4]
00637cc4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00637cc8  03 00 84 e0                                      add r0, r4, r3
00637ccc  03 30 94 e7                                      ldr r3, [r4, r3]
00637cd0  0f e0 a0 e1                                      mov lr, pc
00637cd4  7c f0 93 e5                                      ldr pc, [r3, #0x7c]
00637cd8  00 30 94 e5                                      ldr r3, [r4]
00637cdc  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00637ce0  03 00 84 e0                                      add r0, r4, r3
00637ce4  03 30 94 e7                                      ldr r3, [r4, r3]
00637ce8  0f e0 a0 e1                                      mov lr, pc
00637cec  88 f0 93 e5                                      ldr pc, [r3, #0x88]
00637cf0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00638014, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps15IParticleSystemINS0_12GNPSParticleEE8getPRandEv
; demangled: glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::getPRand()
; decoder-mode: arm
00638014  04 00 80 e2                                      add r0, r0, #4
00638018  1e ff 2f e1                                      bx lr

; FUNCTION 0x0063801c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>
; alias: _ZTv0_n32_N6glitch2ps15IParticleSystemINS0_12GNPSParticleEE8getPRandEv
; demangled: virtual thunk to glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::getPRand()
; decoder-mode: arm
0063801c  00 30 90 e5                                      ldr r3, [r0]
00638020  20 30 13 e5                                      ldr r3, [r3, #-0x20]
00638024  03 00 80 e0                                      add r0, r0, r3
00638028  f9 ff ff ea                                      b #0x638014

; FUNCTION 0x0063a4d0, declared_size=60, range_size=60, mode=arm
; class-group: glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps15IParticleSystemINS0_12GNPSParticleEED1Ev
; demangled: glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::~IParticleSystem()
; decoder-mode: arm
0063a4d0  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0063a4d4  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0063a4d8  10 40 2d e9                                      push {r4, lr}
0063a4dc  02 20 8f e0                                      add r2, pc, r2
0063a4e0  03 30 92 e7                                      ldr r3, [r2, r3]
0063a4e4  00 40 a0 e1                                      mov r4, r0
0063a4e8  0c 20 83 e2                                      add r2, r3, #0xc
0063a4ec  bc 30 83 e2                                      add r3, r3, #0xbc
0063a4f0  10 20 80 e4                                      str r2, [r0], #0x10
0063a4f4  10 30 84 e5                                      str r3, [r4, #0x10]
0063a4f8  3e ff ff eb                                      bl #0x63a1f8
0063a4fc  04 00 a0 e1                                      mov r0, r4
0063a500  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0063a504  b4 a5 35 00 ac 3e 00 00                          .byte 0xb4, 0xa5, 0x35, 0x00, 0xac, 0x3e, 0x00, 0x00

; FUNCTION 0x0063a50c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>
; alias: _ZTv0_n12_N6glitch2ps15IParticleSystemINS0_12GNPSParticleEED1Ev
; demangled: virtual thunk to glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::~IParticleSystem()
; decoder-mode: arm
0063a50c  00 30 90 e5                                      ldr r3, [r0]
0063a510  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063a514  03 00 80 e0                                      add r0, r0, r3
0063a518  ec ff ff ea                                      b #0x63a4d0

; FUNCTION 0x0063d74c, declared_size=68, range_size=68, mode=arm
; class-group: glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps15IParticleSystemINS0_12GNPSParticleEED0Ev
; demangled: glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::~IParticleSystem()
; decoder-mode: arm
0063d74c  34 20 9f e5                                      ldr r2, [pc, #0x34]
0063d750  34 30 9f e5                                      ldr r3, [pc, #0x34]
0063d754  10 40 2d e9                                      push {r4, lr}
0063d758  02 20 8f e0                                      add r2, pc, r2
0063d75c  03 30 92 e7                                      ldr r3, [r2, r3]
0063d760  00 40 a0 e1                                      mov r4, r0
0063d764  0c 20 83 e2                                      add r2, r3, #0xc
0063d768  bc 30 83 e2                                      add r3, r3, #0xbc
0063d76c  10 20 80 e4                                      str r2, [r0], #0x10
0063d770  10 30 84 e5                                      str r3, [r4, #0x10]
0063d774  9f f2 ff eb                                      bl #0x63a1f8
0063d778  04 00 a0 e1                                      mov r0, r4
0063d77c  cb 42 f3 eb                                      bl #0x30e2b0
0063d780  04 00 a0 e1                                      mov r0, r4
0063d784  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0063d788  38 73 35 00 ac 3e 00 00                          .byte 0x38, 0x73, 0x35, 0x00, 0xac, 0x3e, 0x00, 0x00

; FUNCTION 0x0063d790, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>
; alias: _ZTv0_n12_N6glitch2ps15IParticleSystemINS0_12GNPSParticleEED0Ev
; demangled: virtual thunk to glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::~IParticleSystem()
; decoder-mode: arm
0063d790  00 30 90 e5                                      ldr r3, [r0]
0063d794  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063d798  03 00 80 e0                                      add r0, r0, r3
0063d79c  ea ff ff ea                                      b #0x63d74c

; FUNCTION 0x0063e82c, declared_size=1048, range_size=1048, mode=arm
; class-group: glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps15IParticleSystemINS0_12GNPSParticleEE6updateEfRNS_5video6SColorE
; demangled: glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::update(float, glitch::video::SColor&)
; decoder-mode: arm
0063e82c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0063e830  00 60 90 e5                                      ldr r6, [r0]
0063e834  00 40 a0 e1                                      mov r4, r0
0063e838  a4 d0 4d e2                                      sub sp, sp, #0xa4
0063e83c  0c 80 16 e5                                      ldr r8, [r6, #-0xc]
0063e840  01 00 a0 e1                                      mov r0, r1
0063e844  01 50 a0 e1                                      mov r5, r1
0063e848  08 80 84 e0                                      add r8, r4, r8
0063e84c  48 a0 98 e5                                      ldr sl, [r8, #0x48]
0063e850  02 70 a0 e1                                      mov r7, r2
0063e854  0a 10 a0 e1                                      mov r1, sl
0063e858  d3 3e f3 eb                                      bl #0x30e3ac
0063e85c  00 10 a0 e3                                      mov r1, #0
0063e860  a9 3f f3 eb                                      bl #0x30e70c
0063e864  00 00 50 e3                                      cmp r0, #0
0063e868  ed 00 00 1a                                      bne #0x63ec24
0063e86c  4c a0 88 e5                                      str sl, [r8, #0x4c]
0063e870  00 30 94 e5                                      ldr r3, [r4]
0063e874  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063e878  03 30 84 e0                                      add r3, r4, r3
0063e87c  48 50 83 e5                                      str r5, [r3, #0x48]
0063e880  00 30 94 e5                                      ldr r3, [r4]
0063e884  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
0063e888  05 50 84 e0                                      add r5, r4, r5
0063e88c  4c 10 95 e5                                      ldr r1, [r5, #0x4c]
0063e890  48 00 95 e5                                      ldr r0, [r5, #0x48]
0063e894  c4 3e f3 eb                                      bl #0x30e3ac
0063e898  50 00 85 e5                                      str r0, [r5, #0x50]
0063e89c  00 30 94 e5                                      ldr r3, [r4]
0063e8a0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063e8a4  03 00 84 e0                                      add r0, r4, r3
0063e8a8  03 30 94 e7                                      ldr r3, [r4, r3]
0063e8ac  0f e0 a0 e1                                      mov lr, pc
0063e8b0  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0063e8b4  00 30 94 e5                                      ldr r3, [r4]
0063e8b8  00 60 a0 e1                                      mov r6, r0
0063e8bc  00 10 a0 e1                                      mov r1, r0
0063e8c0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063e8c4  03 c0 84 e0                                      add ip, r4, r3
0063e8c8  28 50 9c e5                                      ldr r5, [ip, #0x28]
0063e8cc  0c 00 a0 e1                                      mov r0, ip
0063e8d0  03 30 94 e7                                      ldr r3, [r4, r3]
0063e8d4  05 20 a0 e1                                      mov r2, r5
0063e8d8  24 80 9c e5                                      ldr r8, [ip, #0x24]
0063e8dc  0f e0 a0 e1                                      mov lr, pc
0063e8e0  80 f0 93 e5                                      ldr pc, [r3, #0x80]
0063e8e4  00 30 94 e5                                      ldr r3, [r4]
0063e8e8  05 20 a0 e1                                      mov r2, r5
0063e8ec  06 10 a0 e1                                      mov r1, r6
0063e8f0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063e8f4  03 00 84 e0                                      add r0, r4, r3
0063e8f8  03 30 94 e7                                      ldr r3, [r4, r3]
0063e8fc  0f e0 a0 e1                                      mov lr, pc
0063e900  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0063e904  00 30 94 e5                                      ldr r3, [r4]
0063e908  05 20 a0 e1                                      mov r2, r5
0063e90c  06 10 a0 e1                                      mov r1, r6
0063e910  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063e914  03 00 84 e0                                      add r0, r4, r3
0063e918  03 30 94 e7                                      ldr r3, [r4, r3]
0063e91c  0f e0 a0 e1                                      mov lr, pc
0063e920  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0063e924  00 30 94 e5                                      ldr r3, [r4]
0063e928  05 20 a0 e1                                      mov r2, r5
0063e92c  06 10 a0 e1                                      mov r1, r6
0063e930  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063e934  03 00 84 e0                                      add r0, r4, r3
0063e938  03 30 94 e7                                      ldr r3, [r4, r3]
0063e93c  0f e0 a0 e1                                      mov lr, pc
0063e940  48 f0 93 e5                                      ldr pc, [r3, #0x48]
0063e944  00 30 94 e5                                      ldr r3, [r4]
0063e948  05 20 a0 e1                                      mov r2, r5
0063e94c  06 10 a0 e1                                      mov r1, r6
0063e950  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063e954  03 00 84 e0                                      add r0, r4, r3
0063e958  03 30 94 e7                                      ldr r3, [r4, r3]
0063e95c  0f e0 a0 e1                                      mov lr, pc
0063e960  68 f0 93 e5                                      ldr pc, [r3, #0x68]
0063e964  00 30 94 e5                                      ldr r3, [r4]
0063e968  05 20 a0 e1                                      mov r2, r5
0063e96c  06 10 a0 e1                                      mov r1, r6
0063e970  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063e974  03 00 84 e0                                      add r0, r4, r3
0063e978  03 30 94 e7                                      ldr r3, [r4, r3]
0063e97c  0f e0 a0 e1                                      mov lr, pc
0063e980  50 f0 93 e5                                      ldr pc, [r3, #0x50]
0063e984  00 30 94 e5                                      ldr r3, [r4]
0063e988  05 20 a0 e1                                      mov r2, r5
0063e98c  06 10 a0 e1                                      mov r1, r6
0063e990  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063e994  03 00 84 e0                                      add r0, r4, r3
0063e998  03 30 94 e7                                      ldr r3, [r4, r3]
0063e99c  0f e0 a0 e1                                      mov lr, pc
0063e9a0  74 f0 93 e5                                      ldr pc, [r3, #0x74]
0063e9a4  00 30 94 e5                                      ldr r3, [r4]
0063e9a8  05 20 a0 e1                                      mov r2, r5
0063e9ac  06 10 a0 e1                                      mov r1, r6
0063e9b0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063e9b4  03 00 84 e0                                      add r0, r4, r3
0063e9b8  03 30 94 e7                                      ldr r3, [r4, r3]
0063e9bc  0f e0 a0 e1                                      mov lr, pc
0063e9c0  8c f0 93 e5                                      ldr pc, [r3, #0x8c]
0063e9c4  00 30 94 e5                                      ldr r3, [r4]
0063e9c8  08 10 a0 e1                                      mov r1, r8
0063e9cc  05 20 a0 e1                                      mov r2, r5
0063e9d0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063e9d4  03 00 84 e0                                      add r0, r4, r3
0063e9d8  03 30 94 e7                                      ldr r3, [r4, r3]
0063e9dc  0f e0 a0 e1                                      mov lr, pc
0063e9e0  84 f0 93 e5                                      ldr pc, [r3, #0x84]
0063e9e4  00 20 94 e5                                      ldr r2, [r4]
0063e9e8  97 3f 06 e3                                      movw r3, #0x6f97
0063e9ec  f9 36 49 e3                                      movt r3, #0x96f9
0063e9f0  0c 10 12 e5                                      ldr r1, [r2, #-0xc]
0063e9f4  01 10 84 e0                                      add r1, r4, r1
0063e9f8  24 a0 91 e5                                      ldr sl, [r1, #0x24]
0063e9fc  28 50 91 e5                                      ldr r5, [r1, #0x28]
0063ea00  05 80 6a e0                                      rsb r8, sl, r5
0063ea04  48 81 a0 e1                                      asr r8, r8, #2
0063ea08  0a 00 55 e1                                      cmp r5, sl
0063ea0c  93 08 08 e0                                      mul r8, r3, r8
0063ea10  08 00 00 1a                                      bne #0x63ea38
0063ea14  25 00 00 ea                                      b #0x63eab0
0063ea18  06 00 a0 e1                                      mov r0, r6
0063ea1c  00 10 a0 e3                                      mov r1, #0
0063ea20  39 3f f3 eb                                      bl #0x30e70c
0063ea24  00 00 50 e3                                      cmp r0, #0
0063ea28  08 00 00 1a                                      bne #0x63ea50
0063ea2c  9c a0 8a e2                                      add sl, sl, #0x9c
0063ea30  0a 00 55 e1                                      cmp r5, sl
0063ea34  1c 00 00 0a                                      beq #0x63eaac
0063ea38  58 60 9a e5                                      ldr r6, [sl, #0x58]
0063ea3c  5c 10 9a e5                                      ldr r1, [sl, #0x5c]
0063ea40  06 00 a0 e1                                      mov r0, r6
0063ea44  9a 3e f3 eb                                      bl #0x30e4b4
0063ea48  00 00 50 e3                                      cmp r0, #0
0063ea4c  f1 ff ff 0a                                      beq #0x63ea18
0063ea50  9c 50 45 e2                                      sub r5, r5, #0x9c
0063ea54  0a 00 55 e1                                      cmp r5, sl
0063ea58  01 80 48 e2                                      sub r8, r8, #1
0063ea5c  0a 00 00 9a                                      bls #0x63ea8c
0063ea60  58 60 95 e5                                      ldr r6, [r5, #0x58]
0063ea64  5c 10 95 e5                                      ldr r1, [r5, #0x5c]
0063ea68  06 00 a0 e1                                      mov r0, r6
0063ea6c  26 3f f3 eb                                      bl #0x30e70c
0063ea70  00 00 50 e3                                      cmp r0, #0
0063ea74  00 10 a0 e3                                      mov r1, #0
0063ea78  06 00 a0 e1                                      mov r0, r6
0063ea7c  f3 ff ff 0a                                      beq #0x63ea50
0063ea80  8b 3e f3 eb                                      bl #0x30e4b4
0063ea84  00 00 50 e3                                      cmp r0, #0
0063ea88  f0 ff ff 0a                                      beq #0x63ea50
0063ea8c  05 00 5a e1                                      cmp sl, r5
0063ea90  05 00 00 0a                                      beq #0x63eaac
0063ea94  0a 00 a0 e1                                      mov r0, sl
0063ea98  05 10 a0 e1                                      mov r1, r5
0063ea9c  9c a0 8a e2                                      add sl, sl, #0x9c
0063eaa0  31 e5 ff eb                                      bl #0x637f6c
0063eaa4  0a 00 55 e1                                      cmp r5, sl
0063eaa8  e2 ff ff 1a                                      bne #0x63ea38
0063eaac  00 20 94 e5                                      ldr r2, [r4]
0063eab0  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
0063eab4  00 30 a0 e3                                      mov r3, #0
0063eab8  00 e0 e0 e3                                      mvn lr, #0
0063eabc  00 00 84 e0                                      add r0, r4, r0
0063eac0  fe c5 a0 e3                                      mov ip, #0x3f800000
0063eac4  08 10 a0 e1                                      mov r1, r8
0063eac8  04 20 8d e2                                      add r2, sp, #4
0063eacc  24 00 80 e2                                      add r0, r0, #0x24
0063ead0  2b e0 cd e5                                      strb lr, [sp, #0x2b]
0063ead4  28 e0 cd e5                                      strb lr, [sp, #0x28]
0063ead8  29 e0 cd e5                                      strb lr, [sp, #0x29]
0063eadc  2a e0 cd e5                                      strb lr, [sp, #0x2a]
0063eae0  50 c0 8d e5                                      str ip, [sp, #0x50]
0063eae4  94 30 8d e5                                      str r3, [sp, #0x94]
0063eae8  04 30 8d e5                                      str r3, [sp, #4]
0063eaec  08 30 8d e5                                      str r3, [sp, #8]
0063eaf0  0c 30 8d e5                                      str r3, [sp, #0xc]
0063eaf4  10 30 8d e5                                      str r3, [sp, #0x10]
0063eaf8  14 30 8d e5                                      str r3, [sp, #0x14]
0063eafc  18 30 8d e5                                      str r3, [sp, #0x18]
0063eb00  1c 30 8d e5                                      str r3, [sp, #0x1c]
0063eb04  20 30 8d e5                                      str r3, [sp, #0x20]
0063eb08  24 30 8d e5                                      str r3, [sp, #0x24]
0063eb0c  2c c0 8d e5                                      str ip, [sp, #0x2c]
0063eb10  30 30 8d e5                                      str r3, [sp, #0x30]
0063eb14  34 30 8d e5                                      str r3, [sp, #0x34]
0063eb18  38 30 8d e5                                      str r3, [sp, #0x38]
0063eb1c  3c c0 8d e5                                      str ip, [sp, #0x3c]
0063eb20  40 30 8d e5                                      str r3, [sp, #0x40]
0063eb24  44 30 8d e5                                      str r3, [sp, #0x44]
0063eb28  48 30 8d e5                                      str r3, [sp, #0x48]
0063eb2c  4c c0 8d e5                                      str ip, [sp, #0x4c]
0063eb30  54 30 8d e5                                      str r3, [sp, #0x54]
0063eb34  58 30 8d e5                                      str r3, [sp, #0x58]
0063eb38  78 30 8d e5                                      str r3, [sp, #0x78]
0063eb3c  7c 30 8d e5                                      str r3, [sp, #0x7c]
0063eb40  80 30 8d e5                                      str r3, [sp, #0x80]
0063eb44  8c 30 8d e5                                      str r3, [sp, #0x8c]
0063eb48  90 30 8d e5                                      str r3, [sp, #0x90]
0063eb4c  a4 fe ff eb                                      bl #0x63e5e4
0063eb50  00 20 94 e5                                      ldr r2, [r4]
0063eb54  07 30 a0 e1                                      mov r3, r7
0063eb58  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
0063eb5c  02 00 84 e0                                      add r0, r4, r2
0063eb60  24 60 90 e5                                      ldr r6, [r0, #0x24]
0063eb64  28 50 90 e5                                      ldr r5, [r0, #0x28]
0063eb68  02 c0 94 e7                                      ldr ip, [r4, r2]
0063eb6c  06 10 a0 e1                                      mov r1, r6
0063eb70  05 20 a0 e1                                      mov r2, r5
0063eb74  0f e0 a0 e1                                      mov lr, pc
0063eb78  40 f0 9c e5                                      ldr pc, [ip, #0x40]
0063eb7c  00 30 94 e5                                      ldr r3, [r4]
0063eb80  06 10 a0 e1                                      mov r1, r6
0063eb84  05 20 a0 e1                                      mov r2, r5
0063eb88  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063eb8c  03 00 84 e0                                      add r0, r4, r3
0063eb90  03 30 94 e7                                      ldr r3, [r4, r3]
0063eb94  0f e0 a0 e1                                      mov lr, pc
0063eb98  34 f0 93 e5                                      ldr pc, [r3, #0x34]
0063eb9c  00 30 94 e5                                      ldr r3, [r4]
0063eba0  06 10 a0 e1                                      mov r1, r6
0063eba4  05 20 a0 e1                                      mov r2, r5
0063eba8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063ebac  03 00 84 e0                                      add r0, r4, r3
0063ebb0  03 30 94 e7                                      ldr r3, [r4, r3]
0063ebb4  0f e0 a0 e1                                      mov lr, pc
0063ebb8  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
0063ebbc  00 30 94 e5                                      ldr r3, [r4]
0063ebc0  06 10 a0 e1                                      mov r1, r6
0063ebc4  05 20 a0 e1                                      mov r2, r5
0063ebc8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063ebcc  03 00 84 e0                                      add r0, r4, r3
0063ebd0  03 30 94 e7                                      ldr r3, [r4, r3]
0063ebd4  0f e0 a0 e1                                      mov lr, pc
0063ebd8  54 f0 93 e5                                      ldr pc, [r3, #0x54]
0063ebdc  00 30 94 e5                                      ldr r3, [r4]
0063ebe0  06 10 a0 e1                                      mov r1, r6
0063ebe4  05 20 a0 e1                                      mov r2, r5
0063ebe8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063ebec  03 00 84 e0                                      add r0, r4, r3
0063ebf0  03 30 94 e7                                      ldr r3, [r4, r3]
0063ebf4  0f e0 a0 e1                                      mov lr, pc
0063ebf8  78 f0 93 e5                                      ldr pc, [r3, #0x78]
0063ebfc  00 30 94 e5                                      ldr r3, [r4]
0063ec00  06 10 a0 e1                                      mov r1, r6
0063ec04  05 20 a0 e1                                      mov r2, r5
0063ec08  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063ec0c  03 00 84 e0                                      add r0, r4, r3
0063ec10  03 30 94 e7                                      ldr r3, [r4, r3]
0063ec14  0f e0 a0 e1                                      mov lr, pc
0063ec18  90 f0 93 e5                                      ldr pc, [r3, #0x90]
0063ec1c  a4 d0 8d e2                                      add sp, sp, #0xa4
0063ec20  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0063ec24  04 00 a0 e1                                      mov r0, r4
0063ec28  0f e0 a0 e1                                      mov lr, pc
0063ec2c  0c f0 96 e5                                      ldr pc, [r6, #0xc]
0063ec30  00 30 94 e5                                      ldr r3, [r4]
0063ec34  0c 80 13 e5                                      ldr r8, [r3, #-0xc]
0063ec38  08 80 84 e0                                      add r8, r4, r8
0063ec3c  48 a0 98 e5                                      ldr sl, [r8, #0x48]
0063ec40  09 ff ff ea                                      b #0x63e86c
