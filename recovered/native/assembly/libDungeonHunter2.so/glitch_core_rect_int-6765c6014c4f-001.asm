; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00535c18, declared_size=196, range_size=196, mode=arm
; class-group: glitch::core::rect<int>
; alias: _ZN6glitch4core4rectIiE11constrainToERKS2_
; demangled: glitch::core::rect<int>::constrainTo(glitch::core::rect<int> const&)
; decoder-mode: arm
00535c18  f0 01 2d e9                                      push {r4, r5, r6, r7, r8}
00535c1c  08 40 91 e5                                      ldr r4, [r1, #8]
00535c20  08 c0 90 e5                                      ldr ip, [r0, #8]
00535c24  00 50 91 e5                                      ldr r5, [r1]
00535c28  00 30 90 e5                                      ldr r3, [r0]
00535c2c  04 50 65 e0                                      rsb r5, r5, r4
00535c30  0c 20 63 e0                                      rsb r2, r3, ip
00535c34  02 00 55 e1                                      cmp r5, r2
00535c38  02 00 00 aa                                      bge #0x535c48
00535c3c  00 00 a0 e3                                      mov r0, #0
00535c40  f0 01 bd e8                                      pop {r4, r5, r6, r7, r8}
00535c44  1e ff 2f e1                                      bx lr
00535c48  0c 60 91 e5                                      ldr r6, [r1, #0xc]
00535c4c  0c 50 90 e5                                      ldr r5, [r0, #0xc]
00535c50  04 80 91 e5                                      ldr r8, [r1, #4]
00535c54  04 20 90 e5                                      ldr r2, [r0, #4]
00535c58  06 80 68 e0                                      rsb r8, r8, r6
00535c5c  05 70 62 e0                                      rsb r7, r2, r5
00535c60  07 00 58 e1                                      cmp r8, r7
00535c64  f4 ff ff ba                                      blt #0x535c3c
00535c68  0c 40 54 e0                                      subs r4, r4, ip
00535c6c  14 00 00 4a                                      bmi #0x535cc4
00535c70  05 60 56 e0                                      subs r6, r6, r5
00535c74  06 20 82 40                                      addmi r2, r2, r6
00535c78  05 60 86 40                                      addmi r6, r6, r5
00535c7c  0c 60 80 45                                      strmi r6, [r0, #0xc]
00535c80  04 20 80 45                                      strmi r2, [r0, #4]
00535c84  00 c0 91 e5                                      ldr ip, [r1]
00535c88  0c c0 53 e0                                      subs ip, r3, ip
00535c8c  08 40 90 45                                      ldrmi r4, [r0, #8]
00535c90  03 30 6c 40                                      rsbmi r3, ip, r3
00535c94  00 30 80 45                                      strmi r3, [r0]
00535c98  04 c0 6c 40                                      rsbmi ip, ip, r4
00535c9c  08 c0 80 45                                      strmi ip, [r0, #8]
00535ca0  04 30 91 e5                                      ldr r3, [r1, #4]
00535ca4  03 30 52 e0                                      subs r3, r2, r3
00535ca8  0c 10 90 45                                      ldrmi r1, [r0, #0xc]
00535cac  02 20 63 40                                      rsbmi r2, r3, r2
00535cb0  04 20 80 45                                      strmi r2, [r0, #4]
00535cb4  01 30 63 40                                      rsbmi r3, r3, r1
00535cb8  0c 30 80 45                                      strmi r3, [r0, #0xc]
00535cbc  01 00 a0 e3                                      mov r0, #1
00535cc0  de ff ff ea                                      b #0x535c40
00535cc4  04 30 83 e0                                      add r3, r3, r4
00535cc8  0c 40 84 e0                                      add r4, r4, ip
00535ccc  08 40 80 e5                                      str r4, [r0, #8]
00535cd0  00 30 80 e5                                      str r3, [r0]
00535cd4  0c 60 91 e5                                      ldr r6, [r1, #0xc]
00535cd8  e4 ff ff ea                                      b #0x535c70
