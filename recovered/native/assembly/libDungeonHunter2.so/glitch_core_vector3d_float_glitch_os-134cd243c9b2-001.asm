; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00578dec, declared_size=148, range_size=148, mode=arm
; class-group: glitch::core::vector3d<float> glitch::os
; alias: _ZN6glitch2os8byteswapIfEENS_4core8vector3dIT_EERKS5_
; demangled: glitch::core::vector3d<float> glitch::os::byteswap<float>(glitch::core::vector3d<float> const&)
; decoder-mode: arm
00578dec  f0 0f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp}
00578df0  01 30 a0 e1                                      mov r3, r1
00578df4  04 70 d3 e4                                      ldrb r7, [r3], #4
00578df8  03 90 d1 e5                                      ldrb sb, [r1, #3]
00578dfc  02 a0 d1 e5                                      ldrb sl, [r1, #2]
00578e00  01 80 d1 e5                                      ldrb r8, [r1, #1]
00578e04  04 c0 d1 e5                                      ldrb ip, [r1, #4]
00578e08  01 40 d3 e5                                      ldrb r4, [r3, #1]
00578e0c  03 60 d3 e5                                      ldrb r6, [r3, #3]
00578e10  02 50 d3 e5                                      ldrb r5, [r3, #2]
00578e14  08 30 81 e2                                      add r3, r1, #8
00578e18  03 20 d3 e5                                      ldrb r2, [r3, #3]
00578e1c  01 b0 d3 e5                                      ldrb fp, [r3, #1]
00578e20  08 d0 4d e2                                      sub sp, sp, #8
00578e24  08 10 d1 e5                                      ldrb r1, [r1, #8]
00578e28  02 30 d3 e5                                      ldrb r3, [r3, #2]
00578e2c  04 90 cd e5                                      strb sb, [sp, #4]
00578e30  05 a0 cd e5                                      strb sl, [sp, #5]
00578e34  06 80 cd e5                                      strb r8, [sp, #6]
00578e38  07 70 cd e5                                      strb r7, [sp, #7]
00578e3c  04 70 9d e5                                      ldr r7, [sp, #4]
00578e40  04 60 cd e5                                      strb r6, [sp, #4]
00578e44  05 50 cd e5                                      strb r5, [sp, #5]
00578e48  06 40 cd e5                                      strb r4, [sp, #6]
00578e4c  07 c0 cd e5                                      strb ip, [sp, #7]
00578e50  04 c0 9d e5                                      ldr ip, [sp, #4]
00578e54  04 20 cd e5                                      strb r2, [sp, #4]
00578e58  05 30 cd e5                                      strb r3, [sp, #5]
00578e5c  06 b0 cd e5                                      strb fp, [sp, #6]
00578e60  07 10 cd e5                                      strb r1, [sp, #7]
00578e64  04 20 9d e5                                      ldr r2, [sp, #4]
00578e68  00 70 80 e5                                      str r7, [r0]
00578e6c  04 c0 80 e5                                      str ip, [r0, #4]
00578e70  08 20 80 e5                                      str r2, [r0, #8]
00578e74  08 d0 8d e2                                      add sp, sp, #8
00578e78  f0 0f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp}
00578e7c  1e ff 2f e1                                      bx lr
