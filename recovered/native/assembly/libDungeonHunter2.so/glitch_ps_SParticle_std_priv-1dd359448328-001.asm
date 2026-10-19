; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0064f7e8, declared_size=280, range_size=280, mode=arm
; class-group: glitch::ps::SParticle* std::priv
; alias: _ZNSt4priv12__ucopy_ptrsIPN6glitch2ps9SParticleES4_EET0_T_S6_S5_RKSt12__false_type
; demangled: glitch::ps::SParticle* std::priv::__ucopy_ptrs<glitch::ps::SParticle*, glitch::ps::SParticle*>(glitch::ps::SParticle*, glitch::ps::SParticle*, glitch::ps::SParticle*, std::__false_type const&)
; decoder-mode: arm
0064f7e8  01 10 60 e0                                      rsb r1, r0, r1
0064f7ec  00 30 a0 e1                                      mov r3, r0
0064f7f0  29 0c 05 e3                                      movw r0, #0x5c29
0064f7f4  41 11 a0 e1                                      asr r1, r1, #2
0064f7f8  8f 02 4c e3                                      movt r0, #0xc28f
0064f7fc  90 01 01 e0                                      mul r1, r0, r1
0064f800  30 00 2d e9                                      push {r4, r5}
0064f804  00 00 51 e3                                      cmp r1, #0
0064f808  39 00 00 da                                      ble #0x64f8f4
0064f80c  01 40 a0 e1                                      mov r4, r1
0064f810  02 c0 a0 e1                                      mov ip, r2
0064f814  00 00 93 e5                                      ldr r0, [r3]
0064f818  01 40 54 e2                                      subs r4, r4, #1
0064f81c  00 00 8c e5                                      str r0, [ip]
0064f820  04 00 93 e5                                      ldr r0, [r3, #4]
0064f824  04 00 8c e5                                      str r0, [ip, #4]
0064f828  08 00 93 e5                                      ldr r0, [r3, #8]
0064f82c  08 00 8c e5                                      str r0, [ip, #8]
0064f830  0c 00 93 e5                                      ldr r0, [r3, #0xc]
0064f834  0c 00 8c e5                                      str r0, [ip, #0xc]
0064f838  10 00 93 e5                                      ldr r0, [r3, #0x10]
0064f83c  10 00 8c e5                                      str r0, [ip, #0x10]
0064f840  14 00 93 e5                                      ldr r0, [r3, #0x14]
0064f844  14 00 8c e5                                      str r0, [ip, #0x14]
0064f848  18 00 93 e5                                      ldr r0, [r3, #0x18]
0064f84c  18 00 8c e5                                      str r0, [ip, #0x18]
0064f850  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
0064f854  1c 00 8c e5                                      str r0, [ip, #0x1c]
0064f858  20 00 93 e5                                      ldr r0, [r3, #0x20]
0064f85c  20 00 8c e5                                      str r0, [ip, #0x20]
0064f860  24 00 93 e5                                      ldr r0, [r3, #0x24]
0064f864  24 00 8c e5                                      str r0, [ip, #0x24]
0064f868  28 00 93 e5                                      ldr r0, [r3, #0x28]
0064f86c  28 00 8c e5                                      str r0, [ip, #0x28]
0064f870  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
0064f874  2c 00 8c e5                                      str r0, [ip, #0x2c]
0064f878  30 00 93 e5                                      ldr r0, [r3, #0x30]
0064f87c  30 00 8c e5                                      str r0, [ip, #0x30]
0064f880  34 00 93 e5                                      ldr r0, [r3, #0x34]
0064f884  34 00 8c e5                                      str r0, [ip, #0x34]
0064f888  38 00 93 e5                                      ldr r0, [r3, #0x38]
0064f88c  38 00 8c e5                                      str r0, [ip, #0x38]
0064f890  3c 00 93 e5                                      ldr r0, [r3, #0x3c]
0064f894  3c 00 8c e5                                      str r0, [ip, #0x3c]
0064f898  40 00 93 e5                                      ldr r0, [r3, #0x40]
0064f89c  40 00 8c e5                                      str r0, [ip, #0x40]
0064f8a0  44 00 93 e5                                      ldr r0, [r3, #0x44]
0064f8a4  44 00 8c e5                                      str r0, [ip, #0x44]
0064f8a8  48 50 93 e5                                      ldr r5, [r3, #0x48]
0064f8ac  48 50 8c e5                                      str r5, [ip, #0x48]
0064f8b0  4c 50 93 e5                                      ldr r5, [r3, #0x4c]
0064f8b4  4c 50 8c e5                                      str r5, [ip, #0x4c]
0064f8b8  50 50 93 e5                                      ldr r5, [r3, #0x50]
0064f8bc  50 50 8c e5                                      str r5, [ip, #0x50]
0064f8c0  54 50 93 e5                                      ldr r5, [r3, #0x54]
0064f8c4  54 50 8c e5                                      str r5, [ip, #0x54]
0064f8c8  58 50 93 e5                                      ldr r5, [r3, #0x58]
0064f8cc  58 50 8c e5                                      str r5, [ip, #0x58]
0064f8d0  5c 50 93 e5                                      ldr r5, [r3, #0x5c]
0064f8d4  5c 50 8c e5                                      str r5, [ip, #0x5c]
0064f8d8  60 50 93 e5                                      ldr r5, [r3, #0x60]
0064f8dc  64 30 83 e2                                      add r3, r3, #0x64
0064f8e0  60 50 8c e5                                      str r5, [ip, #0x60]
0064f8e4  64 c0 8c e2                                      add ip, ip, #0x64
0064f8e8  c9 ff ff 1a                                      bne #0x64f814
0064f8ec  64 30 a0 e3                                      mov r3, #0x64
0064f8f0  93 21 22 e0                                      mla r2, r3, r1, r2
0064f8f4  02 00 a0 e1                                      mov r0, r2
0064f8f8  30 00 bd e8                                      pop {r4, r5}
0064f8fc  1e ff 2f e1                                      bx lr
