; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00578e80, declared_size=96, range_size=96, mode=arm
; class-group: glitch::core::aabbox3d<float> glitch::os
; alias: _ZN6glitch2os8byteswapIfEENS_4core8aabbox3dIT_EERKS5_
; demangled: glitch::core::aabbox3d<float> glitch::os::byteswap<float>(glitch::core::aabbox3d<float> const&)
; decoder-mode: arm
00578e80  30 40 2d e9                                      push {r4, r5, lr}
00578e84  1c d0 4d e2                                      sub sp, sp, #0x1c
00578e88  00 40 a0 e1                                      mov r4, r0
00578e8c  01 50 a0 e1                                      mov r5, r1
00578e90  0c 00 8d e2                                      add r0, sp, #0xc
00578e94  d4 ff ff eb                                      bl #0x578dec
00578e98  0c 10 85 e2                                      add r1, r5, #0xc
00578e9c  0d 00 a0 e1                                      mov r0, sp
00578ea0  d1 ff ff eb                                      bl #0x578dec
00578ea4  14 00 9d e5                                      ldr r0, [sp, #0x14]
00578ea8  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00578eac  00 10 9d e5                                      ldr r1, [sp]
00578eb0  04 20 9d e5                                      ldr r2, [sp, #4]
00578eb4  08 30 9d e5                                      ldr r3, [sp, #8]
00578eb8  0c 50 9d e5                                      ldr r5, [sp, #0xc]
00578ebc  08 00 84 e5                                      str r0, [r4, #8]
00578ec0  04 c0 84 e5                                      str ip, [r4, #4]
00578ec4  00 50 84 e5                                      str r5, [r4]
00578ec8  0c 10 84 e5                                      str r1, [r4, #0xc]
00578ecc  10 20 84 e5                                      str r2, [r4, #0x10]
00578ed0  14 30 84 e5                                      str r3, [r4, #0x14]
00578ed4  04 00 a0 e1                                      mov r0, r4
00578ed8  1c d0 8d e2                                      add sp, sp, #0x1c
00578edc  30 80 bd e8                                      pop {r4, r5, pc}
