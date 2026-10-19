; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0066ce48, declared_size=376, range_size=376, mode=arm
; class-group: glitch::core::dual_quaternion
; alias: _ZN6glitch4core15dual_quaternion16fromQuatAndTransERKNS0_10quaternionERKNS0_8vector3dIfEE
; demangled: glitch::core::dual_quaternion::fromQuatAndTrans(glitch::core::quaternion const&, glitch::core::vector3d<float> const&)
; decoder-mode: arm
0066ce48  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0066ce4c  0c 50 91 e5                                      ldr r5, [r1, #0xc]
0066ce50  00 40 a0 e1                                      mov r4, r0
0066ce54  02 60 a0 e1                                      mov r6, r2
0066ce58  0c 50 80 e5                                      str r5, [r0, #0xc]
0066ce5c  00 70 91 e5                                      ldr r7, [r1]
0066ce60  00 70 80 e5                                      str r7, [r0]
0066ce64  04 80 91 e5                                      ldr r8, [r1, #4]
0066ce68  07 00 a0 e1                                      mov r0, r7
0066ce6c  04 80 84 e5                                      str r8, [r4, #4]
0066ce70  08 a0 91 e5                                      ldr sl, [r1, #8]
0066ce74  08 a0 84 e5                                      str sl, [r4, #8]
0066ce78  00 10 92 e5                                      ldr r1, [r2]
0066ce7c  ba 87 f2 eb                                      bl #0x30ed6c
0066ce80  04 10 96 e5                                      ldr r1, [r6, #4]
0066ce84  00 90 a0 e1                                      mov sb, r0
0066ce88  08 00 a0 e1                                      mov r0, r8
0066ce8c  b6 87 f2 eb                                      bl #0x30ed6c
0066ce90  00 10 a0 e1                                      mov r1, r0
0066ce94  09 00 a0 e1                                      mov r0, sb
0066ce98  41 87 f2 eb                                      bl #0x30eba4
0066ce9c  08 10 96 e5                                      ldr r1, [r6, #8]
0066cea0  00 90 a0 e1                                      mov sb, r0
0066cea4  0a 00 a0 e1                                      mov r0, sl
0066cea8  af 87 f2 eb                                      bl #0x30ed6c
0066ceac  00 10 a0 e1                                      mov r1, r0
0066ceb0  09 00 a0 e1                                      mov r0, sb
0066ceb4  3a 87 f2 eb                                      bl #0x30eba4
0066ceb8  bf 14 a0 e3                                      mov r1, #0xbf000000
0066cebc  aa 87 f2 eb                                      bl #0x30ed6c
0066cec0  1c 00 84 e5                                      str r0, [r4, #0x1c]
0066cec4  00 10 96 e5                                      ldr r1, [r6]
0066cec8  05 00 a0 e1                                      mov r0, r5
0066cecc  a6 87 f2 eb                                      bl #0x30ed6c
0066ced0  04 10 96 e5                                      ldr r1, [r6, #4]
0066ced4  00 90 a0 e1                                      mov sb, r0
0066ced8  0a 00 a0 e1                                      mov r0, sl
0066cedc  a2 87 f2 eb                                      bl #0x30ed6c
0066cee0  00 10 a0 e1                                      mov r1, r0
0066cee4  09 00 a0 e1                                      mov r0, sb
0066cee8  2d 87 f2 eb                                      bl #0x30eba4
0066ceec  08 10 96 e5                                      ldr r1, [r6, #8]
0066cef0  00 90 a0 e1                                      mov sb, r0
0066cef4  08 00 a0 e1                                      mov r0, r8
0066cef8  9b 87 f2 eb                                      bl #0x30ed6c
0066cefc  00 10 a0 e1                                      mov r1, r0
0066cf00  09 00 a0 e1                                      mov r0, sb
0066cf04  28 85 f2 eb                                      bl #0x30e3ac
0066cf08  3f 14 a0 e3                                      mov r1, #0x3f000000
0066cf0c  96 87 f2 eb                                      bl #0x30ed6c
0066cf10  10 00 84 e5                                      str r0, [r4, #0x10]
0066cf14  00 00 96 e5                                      ldr r0, [r6]
0066cf18  0a 10 a0 e1                                      mov r1, sl
0066cf1c  02 01 80 e2                                      add r0, r0, #0x80000000
0066cf20  91 87 f2 eb                                      bl #0x30ed6c
0066cf24  04 10 96 e5                                      ldr r1, [r6, #4]
0066cf28  00 a0 a0 e1                                      mov sl, r0
0066cf2c  05 00 a0 e1                                      mov r0, r5
0066cf30  8d 87 f2 eb                                      bl #0x30ed6c
0066cf34  00 10 a0 e1                                      mov r1, r0
0066cf38  0a 00 a0 e1                                      mov r0, sl
0066cf3c  18 87 f2 eb                                      bl #0x30eba4
0066cf40  08 10 96 e5                                      ldr r1, [r6, #8]
0066cf44  00 a0 a0 e1                                      mov sl, r0
0066cf48  07 00 a0 e1                                      mov r0, r7
0066cf4c  86 87 f2 eb                                      bl #0x30ed6c
0066cf50  00 10 a0 e1                                      mov r1, r0
0066cf54  0a 00 a0 e1                                      mov r0, sl
0066cf58  11 87 f2 eb                                      bl #0x30eba4
0066cf5c  3f 14 a0 e3                                      mov r1, #0x3f000000
0066cf60  81 87 f2 eb                                      bl #0x30ed6c
0066cf64  14 00 84 e5                                      str r0, [r4, #0x14]
0066cf68  00 10 96 e5                                      ldr r1, [r6]
0066cf6c  08 00 a0 e1                                      mov r0, r8
0066cf70  7d 87 f2 eb                                      bl #0x30ed6c
0066cf74  04 10 96 e5                                      ldr r1, [r6, #4]
0066cf78  00 80 a0 e1                                      mov r8, r0
0066cf7c  07 00 a0 e1                                      mov r0, r7
0066cf80  79 87 f2 eb                                      bl #0x30ed6c
0066cf84  00 10 a0 e1                                      mov r1, r0
0066cf88  08 00 a0 e1                                      mov r0, r8
0066cf8c  06 85 f2 eb                                      bl #0x30e3ac
0066cf90  08 10 96 e5                                      ldr r1, [r6, #8]
0066cf94  00 70 a0 e1                                      mov r7, r0
0066cf98  05 00 a0 e1                                      mov r0, r5
0066cf9c  72 87 f2 eb                                      bl #0x30ed6c
0066cfa0  00 10 a0 e1                                      mov r1, r0
0066cfa4  07 00 a0 e1                                      mov r0, r7
0066cfa8  fd 86 f2 eb                                      bl #0x30eba4
0066cfac  3f 14 a0 e3                                      mov r1, #0x3f000000
0066cfb0  6d 87 f2 eb                                      bl #0x30ed6c
0066cfb4  18 00 84 e5                                      str r0, [r4, #0x18]
0066cfb8  04 00 a0 e1                                      mov r0, r4
0066cfbc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0066d85c, declared_size=76, range_size=76, mode=arm
; class-group: glitch::core::dual_quaternion
; alias: _ZN6glitch4core15dual_quaternionaSERKNS0_8CMatrix4IfEE
; demangled: glitch::core::dual_quaternion::operator=(glitch::core::CMatrix4<float> const&)
; decoder-mode: arm
0066d85c  70 40 2d e9                                      push {r4, r5, r6, lr}
0066d860  20 d0 4d e2                                      sub sp, sp, #0x20
0066d864  04 50 8d e2                                      add r5, sp, #4
0066d868  01 40 a0 e1                                      mov r4, r1
0066d86c  00 60 a0 e1                                      mov r6, r0
0066d870  05 00 a0 e1                                      mov r0, r5
0066d874  8e 85 fa eb                                      bl #0x50eeb4
0066d878  30 e0 94 e5                                      ldr lr, [r4, #0x30]
0066d87c  34 c0 94 e5                                      ldr ip, [r4, #0x34]
0066d880  38 30 94 e5                                      ldr r3, [r4, #0x38]
0066d884  06 00 a0 e1                                      mov r0, r6
0066d888  05 10 a0 e1                                      mov r1, r5
0066d88c  14 20 8d e2                                      add r2, sp, #0x14
0066d890  14 e0 8d e5                                      str lr, [sp, #0x14]
0066d894  18 c0 8d e5                                      str ip, [sp, #0x18]
0066d898  1c 30 8d e5                                      str r3, [sp, #0x1c]
0066d89c  69 fd ff eb                                      bl #0x66ce48
0066d8a0  20 d0 8d e2                                      add sp, sp, #0x20
0066d8a4  70 80 bd e8                                      pop {r4, r5, r6, pc}
