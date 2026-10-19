; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006c0f14, declared_size=224, range_size=224, mode=arm
; class-group: glitch::scene::SParticle* std::priv
; alias: _ZNSt4priv6__copyIPN6glitch5scene9SParticleES4_iEET0_T_S6_S5_RKSt26random_access_iterator_tagPT1_
; demangled: glitch::scene::SParticle* std::priv::__copy<glitch::scene::SParticle*, glitch::scene::SParticle*, int>(glitch::scene::SParticle*, glitch::scene::SParticle*, glitch::scene::SParticle*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
006c0f14  01 10 60 e0                                      rsb r1, r0, r1
006c0f18  41 11 a0 e1                                      asr r1, r1, #2
006c0f1c  00 30 a0 e1                                      mov r3, r0
006c0f20  01 02 a0 e1                                      lsl r0, r1, #4
006c0f24  00 00 61 e0                                      rsb r0, r1, r0
006c0f28  00 04 80 e0                                      add r0, r0, r0, lsl #8
006c0f2c  30 00 2d e9                                      push {r4, r5}
006c0f30  00 08 80 e0                                      add r0, r0, r0, lsl #16
006c0f34  00 12 81 e0                                      add r1, r1, r0, lsl #4
006c0f38  00 00 51 e3                                      cmp r1, #0
006c0f3c  29 00 00 da                                      ble #0x6c0fe8
006c0f40  01 40 a0 e1                                      mov r4, r1
006c0f44  02 c0 a0 e1                                      mov ip, r2
006c0f48  00 00 93 e5                                      ldr r0, [r3]
006c0f4c  01 40 54 e2                                      subs r4, r4, #1
006c0f50  00 00 8c e5                                      str r0, [ip]
006c0f54  04 00 93 e5                                      ldr r0, [r3, #4]
006c0f58  04 00 8c e5                                      str r0, [ip, #4]
006c0f5c  08 00 93 e5                                      ldr r0, [r3, #8]
006c0f60  08 00 8c e5                                      str r0, [ip, #8]
006c0f64  0c 00 93 e5                                      ldr r0, [r3, #0xc]
006c0f68  0c 00 8c e5                                      str r0, [ip, #0xc]
006c0f6c  10 00 93 e5                                      ldr r0, [r3, #0x10]
006c0f70  10 00 8c e5                                      str r0, [ip, #0x10]
006c0f74  14 00 93 e5                                      ldr r0, [r3, #0x14]
006c0f78  14 00 8c e5                                      str r0, [ip, #0x14]
006c0f7c  18 00 93 e5                                      ldr r0, [r3, #0x18]
006c0f80  18 00 8c e5                                      str r0, [ip, #0x18]
006c0f84  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
006c0f88  1c 00 8c e5                                      str r0, [ip, #0x1c]
006c0f8c  20 00 93 e5                                      ldr r0, [r3, #0x20]
006c0f90  20 00 8c e5                                      str r0, [ip, #0x20]
006c0f94  24 00 93 e5                                      ldr r0, [r3, #0x24]
006c0f98  24 00 8c e5                                      str r0, [ip, #0x24]
006c0f9c  28 50 93 e5                                      ldr r5, [r3, #0x28]
006c0fa0  28 50 8c e5                                      str r5, [ip, #0x28]
006c0fa4  2c 50 93 e5                                      ldr r5, [r3, #0x2c]
006c0fa8  2c 50 8c e5                                      str r5, [ip, #0x2c]
006c0fac  30 50 93 e5                                      ldr r5, [r3, #0x30]
006c0fb0  30 50 8c e5                                      str r5, [ip, #0x30]
006c0fb4  34 50 93 e5                                      ldr r5, [r3, #0x34]
006c0fb8  34 50 8c e5                                      str r5, [ip, #0x34]
006c0fbc  38 50 93 e5                                      ldr r5, [r3, #0x38]
006c0fc0  38 50 8c e5                                      str r5, [ip, #0x38]
006c0fc4  3c 50 93 e5                                      ldr r5, [r3, #0x3c]
006c0fc8  3c 50 8c e5                                      str r5, [ip, #0x3c]
006c0fcc  40 50 93 e5                                      ldr r5, [r3, #0x40]
006c0fd0  44 30 83 e2                                      add r3, r3, #0x44
006c0fd4  40 50 8c e5                                      str r5, [ip, #0x40]
006c0fd8  44 c0 8c e2                                      add ip, ip, #0x44
006c0fdc  d9 ff ff 1a                                      bne #0x6c0f48
006c0fe0  44 30 a0 e3                                      mov r3, #0x44
006c0fe4  93 21 22 e0                                      mla r2, r3, r1, r2
006c0fe8  02 00 a0 e1                                      mov r0, r2
006c0fec  30 00 bd e8                                      pop {r4, r5}
006c0ff0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006c0ff4, declared_size=220, range_size=220, mode=arm
; class-group: glitch::scene::SParticle* std::priv
; alias: _ZNSt4priv7__ucopyIPN6glitch5scene9SParticleES4_iEET0_T_S6_S5_RKSt26random_access_iterator_tagPT1_
; demangled: glitch::scene::SParticle* std::priv::__ucopy<glitch::scene::SParticle*, glitch::scene::SParticle*, int>(glitch::scene::SParticle*, glitch::scene::SParticle*, glitch::scene::SParticle*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
006c0ff4  01 30 60 e0                                      rsb r3, r0, r1
006c0ff8  43 31 a0 e1                                      asr r3, r3, #2
006c0ffc  04 40 2d e5                                      str r4, [sp, #-4]!
006c1000  03 12 a0 e1                                      lsl r1, r3, #4
006c1004  01 10 63 e0                                      rsb r1, r3, r1
006c1008  01 14 81 e0                                      add r1, r1, r1, lsl #8
006c100c  01 18 81 e0                                      add r1, r1, r1, lsl #16
006c1010  01 32 83 e0                                      add r3, r3, r1, lsl #4
006c1014  00 00 53 e3                                      cmp r3, #0
006c1018  02 00 a0 d1                                      movle r0, r2
006c101c  29 00 00 da                                      ble #0x6c10c8
006c1020  03 c0 a0 e1                                      mov ip, r3
006c1024  02 10 a0 e1                                      mov r1, r2
006c1028  00 40 90 e5                                      ldr r4, [r0]
006c102c  01 c0 5c e2                                      subs ip, ip, #1
006c1030  00 40 81 e5                                      str r4, [r1]
006c1034  04 40 90 e5                                      ldr r4, [r0, #4]
006c1038  04 40 81 e5                                      str r4, [r1, #4]
006c103c  08 40 90 e5                                      ldr r4, [r0, #8]
006c1040  08 40 81 e5                                      str r4, [r1, #8]
006c1044  0c 40 90 e5                                      ldr r4, [r0, #0xc]
006c1048  0c 40 81 e5                                      str r4, [r1, #0xc]
006c104c  10 40 90 e5                                      ldr r4, [r0, #0x10]
006c1050  10 40 81 e5                                      str r4, [r1, #0x10]
006c1054  14 40 90 e5                                      ldr r4, [r0, #0x14]
006c1058  14 40 81 e5                                      str r4, [r1, #0x14]
006c105c  18 40 90 e5                                      ldr r4, [r0, #0x18]
006c1060  18 40 81 e5                                      str r4, [r1, #0x18]
006c1064  1c 40 90 e5                                      ldr r4, [r0, #0x1c]
006c1068  1c 40 81 e5                                      str r4, [r1, #0x1c]
006c106c  20 40 90 e5                                      ldr r4, [r0, #0x20]
006c1070  20 40 81 e5                                      str r4, [r1, #0x20]
006c1074  24 40 90 e5                                      ldr r4, [r0, #0x24]
006c1078  24 40 81 e5                                      str r4, [r1, #0x24]
006c107c  28 40 90 e5                                      ldr r4, [r0, #0x28]
006c1080  28 40 81 e5                                      str r4, [r1, #0x28]
006c1084  2c 40 90 e5                                      ldr r4, [r0, #0x2c]
006c1088  2c 40 81 e5                                      str r4, [r1, #0x2c]
006c108c  30 40 90 e5                                      ldr r4, [r0, #0x30]
006c1090  30 40 81 e5                                      str r4, [r1, #0x30]
006c1094  34 40 90 e5                                      ldr r4, [r0, #0x34]
006c1098  34 40 81 e5                                      str r4, [r1, #0x34]
006c109c  38 40 90 e5                                      ldr r4, [r0, #0x38]
006c10a0  38 40 81 e5                                      str r4, [r1, #0x38]
006c10a4  3c 40 90 e5                                      ldr r4, [r0, #0x3c]
006c10a8  3c 40 81 e5                                      str r4, [r1, #0x3c]
006c10ac  40 40 90 e5                                      ldr r4, [r0, #0x40]
006c10b0  44 00 80 e2                                      add r0, r0, #0x44
006c10b4  40 40 81 e5                                      str r4, [r1, #0x40]
006c10b8  44 10 81 e2                                      add r1, r1, #0x44
006c10bc  d9 ff ff 1a                                      bne #0x6c1028
006c10c0  44 00 a0 e3                                      mov r0, #0x44
006c10c4  90 23 20 e0                                      mla r0, r0, r3, r2
006c10c8  10 00 bd e8                                      ldm sp!, {r4}
006c10cc  1e ff 2f e1                                      bx lr

; FUNCTION 0x006c10d0, declared_size=232, range_size=232, mode=arm
; class-group: glitch::scene::SParticle* std::priv
; alias: _ZNSt4priv15__copy_backwardIPN6glitch5scene9SParticleES4_iEET0_T_S6_S5_RKSt26random_access_iterator_tagPT1_
; demangled: glitch::scene::SParticle* std::priv::__copy_backward<glitch::scene::SParticle*, glitch::scene::SParticle*, int>(glitch::scene::SParticle*, glitch::scene::SParticle*, glitch::scene::SParticle*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
006c10d0  01 30 60 e0                                      rsb r3, r0, r1
006c10d4  43 31 a0 e1                                      asr r3, r3, #2
006c10d8  30 00 2d e9                                      push {r4, r5}
006c10dc  03 02 a0 e1                                      lsl r0, r3, #4
006c10e0  00 00 63 e0                                      rsb r0, r3, r0
006c10e4  00 04 80 e0                                      add r0, r0, r0, lsl #8
006c10e8  00 08 80 e0                                      add r0, r0, r0, lsl #16
006c10ec  00 32 83 e0                                      add r3, r3, r0, lsl #4
006c10f0  00 00 53 e3                                      cmp r3, #0
006c10f4  2c 00 00 da                                      ble #0x6c11ac
006c10f8  02 c0 a0 e1                                      mov ip, r2
006c10fc  03 40 a0 e1                                      mov r4, r3
006c1100  44 00 11 e5                                      ldr r0, [r1, #-0x44]
006c1104  01 40 54 e2                                      subs r4, r4, #1
006c1108  44 00 0c e5                                      str r0, [ip, #-0x44]
006c110c  40 00 11 e5                                      ldr r0, [r1, #-0x40]
006c1110  40 00 0c e5                                      str r0, [ip, #-0x40]
006c1114  3c 00 11 e5                                      ldr r0, [r1, #-0x3c]
006c1118  3c 00 0c e5                                      str r0, [ip, #-0x3c]
006c111c  38 00 11 e5                                      ldr r0, [r1, #-0x38]
006c1120  38 00 0c e5                                      str r0, [ip, #-0x38]
006c1124  34 00 11 e5                                      ldr r0, [r1, #-0x34]
006c1128  34 00 0c e5                                      str r0, [ip, #-0x34]
006c112c  30 00 11 e5                                      ldr r0, [r1, #-0x30]
006c1130  30 00 0c e5                                      str r0, [ip, #-0x30]
006c1134  2c 00 11 e5                                      ldr r0, [r1, #-0x2c]
006c1138  2c 00 0c e5                                      str r0, [ip, #-0x2c]
006c113c  28 00 11 e5                                      ldr r0, [r1, #-0x28]
006c1140  28 00 0c e5                                      str r0, [ip, #-0x28]
006c1144  24 00 11 e5                                      ldr r0, [r1, #-0x24]
006c1148  24 00 0c e5                                      str r0, [ip, #-0x24]
006c114c  20 00 11 e5                                      ldr r0, [r1, #-0x20]
006c1150  20 00 0c e5                                      str r0, [ip, #-0x20]
006c1154  1c 00 11 e5                                      ldr r0, [r1, #-0x1c]
006c1158  1c 00 0c e5                                      str r0, [ip, #-0x1c]
006c115c  18 50 11 e5                                      ldr r5, [r1, #-0x18]
006c1160  18 50 0c e5                                      str r5, [ip, #-0x18]
006c1164  14 50 11 e5                                      ldr r5, [r1, #-0x14]
006c1168  14 50 0c e5                                      str r5, [ip, #-0x14]
006c116c  10 50 11 e5                                      ldr r5, [r1, #-0x10]
006c1170  10 50 0c e5                                      str r5, [ip, #-0x10]
006c1174  0c 50 11 e5                                      ldr r5, [r1, #-0xc]
006c1178  0c 50 0c e5                                      str r5, [ip, #-0xc]
006c117c  08 50 11 e5                                      ldr r5, [r1, #-8]
006c1180  08 50 0c e5                                      str r5, [ip, #-8]
006c1184  04 50 11 e5                                      ldr r5, [r1, #-4]
006c1188  44 10 41 e2                                      sub r1, r1, #0x44
006c118c  04 50 0c e5                                      str r5, [ip, #-4]
006c1190  44 c0 4c e2                                      sub ip, ip, #0x44
006c1194  d9 ff ff 1a                                      bne #0x6c1100
006c1198  43 10 e0 e3                                      mvn r1, #0x43
006c119c  01 30 43 e2                                      sub r3, r3, #1
006c11a0  91 03 03 e0                                      mul r3, r1, r3
006c11a4  01 30 83 e0                                      add r3, r3, r1
006c11a8  03 20 82 e0                                      add r2, r2, r3
006c11ac  02 00 a0 e1                                      mov r0, r2
006c11b0  30 00 bd e8                                      pop {r4, r5}
006c11b4  1e ff 2f e1                                      bx lr
