; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007d7c18, declared_size=220, range_size=220, mode=arm
; class-group: void gameswf::array<gameswf::array<glitch::core::vector2d<float> > >
; alias: _ZN7gameswf5arrayINS0_IN6glitch4core8vector2dIfEEEEE9push_backIS5_EEvRKT_
; demangled: void gameswf::array<gameswf::array<glitch::core::vector2d<float> > >::push_back<gameswf::array<glitch::core::vector2d<float> > >(gameswf::array<glitch::core::vector2d<float> > const&)
; decoder-mode: arm
007d7c18  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007d7c1c  04 30 90 e5                                      ldr r3, [r0, #4]
007d7c20  08 20 90 e5                                      ldr r2, [r0, #8]
007d7c24  00 70 a0 e1                                      mov r7, r0
007d7c28  01 a0 83 e2                                      add sl, r3, #1
007d7c2c  02 00 5a e1                                      cmp sl, r2
007d7c30  01 60 a0 e1                                      mov r6, r1
007d7c34  0c 00 00 ca                                      bgt #0x7d7c6c
007d7c38  00 20 97 e5                                      ldr r2, [r7]
007d7c3c  00 80 a0 e3                                      mov r8, #0
007d7c40  03 42 82 e0                                      add r4, r2, r3, lsl #4
007d7c44  03 82 82 e7                                      str r8, [r2, r3, lsl #4]
007d7c48  04 80 84 e5                                      str r8, [r4, #4]
007d7c4c  08 80 84 e5                                      str r8, [r4, #8]
007d7c50  0c 80 c4 e5                                      strb r8, [r4, #0xc]
007d7c54  04 50 96 e5                                      ldr r5, [r6, #4]
007d7c58  08 00 55 e1                                      cmp r5, r8
007d7c5c  06 00 00 aa                                      bge #0x7d7c7c
007d7c60  04 50 84 e5                                      str r5, [r4, #4]
007d7c64  04 a0 87 e5                                      str sl, [r7, #4]
007d7c68  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007d7c6c  ca 10 8a e0                                      add r1, sl, sl, asr #1
007d7c70  23 f1 ff eb                                      bl #0x7d4104
007d7c74  04 30 97 e5                                      ldr r3, [r7, #4]
007d7c78  ee ff ff ea                                      b #0x7d7c38
007d7c7c  f7 ff ff 0a                                      beq #0x7d7c60
007d7c80  f6 ff ff da                                      ble #0x7d7c60
007d7c84  04 00 a0 e1                                      mov r0, r4
007d7c88  c5 10 85 e0                                      add r1, r5, r5, asr #1
007d7c8c  fd f0 ff eb                                      bl #0x7d4088
007d7c90  00 20 a0 e3                                      mov r2, #0
007d7c94  00 30 94 e5                                      ldr r3, [r4]
007d7c98  88 21 83 e7                                      str r2, [r3, r8, lsl #3]
007d7c9c  88 31 83 e0                                      add r3, r3, r8, lsl #3
007d7ca0  01 80 88 e2                                      add r8, r8, #1
007d7ca4  05 00 58 e1                                      cmp r8, r5
007d7ca8  04 20 83 e5                                      str r2, [r3, #4]
007d7cac  f8 ff ff 1a                                      bne #0x7d7c94
007d7cb0  04 80 84 e5                                      str r8, [r4, #4]
007d7cb4  00 30 a0 e3                                      mov r3, #0
007d7cb8  00 00 96 e5                                      ldr r0, [r6]
007d7cbc  00 20 94 e5                                      ldr r2, [r4]
007d7cc0  83 11 a0 e1                                      lsl r1, r3, #3
007d7cc4  83 c1 90 e7                                      ldr ip, [r0, r3, lsl #3]
007d7cc8  01 00 80 e0                                      add r0, r0, r1
007d7ccc  01 10 82 e0                                      add r1, r2, r1
007d7cd0  83 c1 82 e7                                      str ip, [r2, r3, lsl #3]
007d7cd4  04 20 90 e5                                      ldr r2, [r0, #4]
007d7cd8  01 30 83 e2                                      add r3, r3, #1
007d7cdc  04 20 81 e5                                      str r2, [r1, #4]
007d7ce0  04 20 94 e5                                      ldr r2, [r4, #4]
007d7ce4  02 00 53 e1                                      cmp r3, r2
007d7ce8  f2 ff ff ba                                      blt #0x7d7cb8
007d7cec  04 a0 87 e5                                      str sl, [r7, #4]
007d7cf0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
