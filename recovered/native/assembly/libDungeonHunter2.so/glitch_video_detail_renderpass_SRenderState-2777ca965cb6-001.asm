; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00588ddc, declared_size=84, range_size=84, mode=arm
; class-group: glitch::video::detail::renderpass::SRenderState
; alias: _ZN6glitch5video6detail10renderpass12SRenderStateC1Ev
; demangled: glitch::video::detail::renderpass::SRenderState::SRenderState()
; decoder-mode: arm
00588ddc  04 40 2d e5                                      str r4, [sp, #-4]!
00588de0  46 43 a0 e3                                      mov r4, #0x18000001
00588de4  ff 48 84 e2                                      add r4, r4, #0xff0000
00588de8  06 c7 a0 e3                                      mov ip, #0x180000
00588dec  fe 25 a0 e3                                      mov r2, #0x3f800000
00588df0  00 10 a0 e3                                      mov r1, #0
00588df4  07 c0 8c e2                                      add ip, ip, #7
00588df8  00 40 80 e5                                      str r4, [r0]
00588dfc  00 40 a0 e3                                      mov r4, #0
00588e00  0b 10 c0 e5                                      strb r1, [r0, #0xb]
00588e04  14 40 80 e5                                      str r4, [r0, #0x14]
00588e08  1c 20 80 e5                                      str r2, [r0, #0x1c]
00588e0c  04 c0 80 e5                                      str ip, [r0, #4]
00588e10  08 10 c0 e5                                      strb r1, [r0, #8]
00588e14  09 10 c0 e5                                      strb r1, [r0, #9]
00588e18  0a 10 c0 e5                                      strb r1, [r0, #0xa]
00588e1c  0c 20 80 e5                                      str r2, [r0, #0xc]
00588e20  10 20 80 e5                                      str r2, [r0, #0x10]
00588e24  18 20 80 e5                                      str r2, [r0, #0x18]
00588e28  10 00 bd e8                                      ldm sp!, {r4}
00588e2c  1e ff 2f e1                                      bx lr

; FUNCTION 0x005d7a10, declared_size=564, range_size=564, mode=arm
; class-group: glitch::video::detail::renderpass::SRenderState
; alias: _ZN6glitch5video6detail10renderpass12SRenderStateC1ERKNS0_12SRenderStateE
; demangled: glitch::video::detail::renderpass::SRenderState::SRenderState(glitch::video::SRenderState const&)
; decoder-mode: arm
005d7a10  30 00 2d e9                                      push {r4, r5}
005d7a14  15 c0 d1 e5                                      ldrb ip, [r1, #0x15]
005d7a18  14 20 d1 e5                                      ldrb r2, [r1, #0x14]
005d7a1c  17 40 d1 e5                                      ldrb r4, [r1, #0x17]
005d7a20  16 50 d1 e5                                      ldrb r5, [r1, #0x16]
005d7a24  08 20 c0 e5                                      strb r2, [r0, #8]
005d7a28  0b 40 c0 e5                                      strb r4, [r0, #0xb]
005d7a2c  0a 50 c0 e5                                      strb r5, [r0, #0xa]
005d7a30  09 c0 c0 e5                                      strb ip, [r0, #9]
005d7a34  00 30 a0 e1                                      mov r3, r0
005d7a38  28 00 91 e5                                      ldr r0, [r1, #0x28]
005d7a3c  00 20 a0 e3                                      mov r2, #0
005d7a40  0c 00 83 e5                                      str r0, [r3, #0xc]
005d7a44  2c 00 91 e5                                      ldr r0, [r1, #0x2c]
005d7a48  10 00 83 e5                                      str r0, [r3, #0x10]
005d7a4c  38 00 91 e5                                      ldr r0, [r1, #0x38]
005d7a50  04 20 83 e5                                      str r2, [r3, #4]
005d7a54  00 20 83 e5                                      str r2, [r3]
005d7a58  1c 00 83 e5                                      str r0, [r3, #0x1c]
005d7a5c  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005d7a60  02 07 12 e3                                      tst r2, #0x80000
005d7a64  01 28 a0 13                                      movne r2, #0x10000
005d7a68  04 20 83 15                                      strne r2, [r3, #4]
005d7a6c  08 c0 91 e5                                      ldr ip, [r1, #8]
005d7a70  5c c6 e2 e7                                      ubfx ip, ip, #0xc, #3
005d7a74  0c cc a0 e1                                      lsl ip, ip, #0x18
005d7a78  00 c0 83 e5                                      str ip, [r3]
005d7a7c  00 00 d1 e5                                      ldrb r0, [r1]
005d7a80  00 c0 8c e1                                      orr ip, ip, r0
005d7a84  00 c0 83 e5                                      str ip, [r3]
005d7a88  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005d7a8c  01 06 12 e3                                      tst r2, #0x100000
005d7a90  04 20 93 e5                                      ldr r2, [r3, #4]
005d7a94  02 28 82 13                                      orrne r2, r2, #0x20000
005d7a98  02 28 c2 03                                      biceq r2, r2, #0x20000
005d7a9c  04 20 83 e5                                      str r2, [r3, #4]
005d7aa0  08 00 91 e5                                      ldr r0, [r1, #8]
005d7aa4  01 27 c2 e3                                      bic r2, r2, #0x40000
005d7aa8  03 01 00 e2                                      and r0, r0, #0xc0000000
005d7aac  00 00 8c e1                                      orr r0, ip, r0
005d7ab0  00 00 83 e5                                      str r0, [r3]
005d7ab4  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005d7ab8  dc ca e0 e7                                      ubfx ip, ip, #0x15, #1
005d7abc  0c 29 82 e1                                      orr r2, r2, ip, lsl #18
005d7ac0  04 20 83 e5                                      str r2, [r3, #4]
005d7ac4  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005d7ac8  01 05 1c e3                                      tst ip, #0x400000
005d7acc  02 27 82 13                                      orrne r2, r2, #0x80000
005d7ad0  02 27 c2 03                                      biceq r2, r2, #0x80000
005d7ad4  04 20 83 e5                                      str r2, [r3, #4]
005d7ad8  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005d7adc  52 26 e2 e7                                      ubfx r2, r2, #0xc, #3
005d7ae0  82 0d 80 e1                                      orr r0, r0, r2, lsl #27
005d7ae4  00 00 83 e5                                      str r0, [r3]
005d7ae8  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005d7aec  02 05 12 e3                                      tst r2, #0x800000
005d7af0  04 20 93 e5                                      ldr r2, [r3, #4]
005d7af4  01 26 82 13                                      orrne r2, r2, #0x100000
005d7af8  01 26 c2 03                                      biceq r2, r2, #0x100000
005d7afc  04 20 83 e5                                      str r2, [r3, #4]
005d7b00  0c 00 91 e5                                      ldr r0, [r1, #0xc]
005d7b04  03 2a c2 e3                                      bic r2, r2, #0x3000
005d7b08  d0 07 e1 e7                                      ubfx r0, r0, #0xf, #2
005d7b0c  00 26 82 e1                                      orr r2, r2, r0, lsl #12
005d7b10  04 20 83 e5                                      str r2, [r3, #4]
005d7b14  0c 00 91 e5                                      ldr r0, [r1, #0xc]
005d7b18  03 29 c2 e3                                      bic r2, r2, #0xc000
005d7b1c  d0 08 e1 e7                                      ubfx r0, r0, #0x11, #2
005d7b20  00 27 82 e1                                      orr r2, r2, r0, lsl #14
005d7b24  04 20 83 e5                                      str r2, [r3, #4]
005d7b28  0c 00 91 e5                                      ldr r0, [r1, #0xc]
005d7b2c  02 04 10 e3                                      tst r0, #0x2000000
005d7b30  02 c6 82 13                                      orrne ip, r2, #0x200000
005d7b34  02 c6 c2 03                                      biceq ip, r2, #0x200000
005d7b38  04 c0 83 e5                                      str ip, [r3, #4]
005d7b3c  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005d7b40  01 03 12 e3                                      tst r2, #0x4000000
005d7b44  01 c5 8c 13                                      orrne ip, ip, #0x400000
005d7b48  01 c5 cc 03                                      biceq ip, ip, #0x400000
005d7b4c  04 c0 83 e5                                      str ip, [r3, #4]
005d7b50  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005d7b54  02 03 12 e3                                      tst r2, #0x8000000
005d7b58  02 c5 8c 13                                      orrne ip, ip, #0x800000
005d7b5c  02 c5 cc 03                                      biceq ip, ip, #0x800000
005d7b60  04 c0 83 e5                                      str ip, [r3, #4]
005d7b64  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005d7b68  01 02 12 e3                                      tst r2, #0x10000000
005d7b6c  01 c4 8c 13                                      orrne ip, ip, #0x1000000
005d7b70  01 c4 cc 03                                      biceq ip, ip, #0x1000000
005d7b74  04 c0 83 e5                                      str ip, [r3, #4]
005d7b78  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005d7b7c  02 02 12 e3                                      tst r2, #0x20000000
005d7b80  02 c4 8c 13                                      orrne ip, ip, #0x2000000
005d7b84  02 c4 cc 03                                      biceq ip, ip, #0x2000000
005d7b88  04 c0 83 e5                                      str ip, [r3, #4]
005d7b8c  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005d7b90  01 01 12 e3                                      tst r2, #0x40000000
005d7b94  01 c3 8c 13                                      orrne ip, ip, #0x4000000
005d7b98  01 c3 cc 03                                      biceq ip, ip, #0x4000000
005d7b9c  04 c0 83 e5                                      str ip, [r3, #4]
005d7ba0  10 20 91 e5                                      ldr r2, [r1, #0x10]
005d7ba4  01 00 12 e3                                      tst r2, #1
005d7ba8  02 c3 8c 13                                      orrne ip, ip, #0x8000000
005d7bac  02 c3 cc 03                                      biceq ip, ip, #0x8000000
005d7bb0  04 c0 83 e5                                      str ip, [r3, #4]
005d7bb4  08 00 91 e5                                      ldr r0, [r1, #8]
005d7bb8  07 c0 cc e3                                      bic ip, ip, #7
005d7bbc  00 20 93 e5                                      ldr r2, [r3]
005d7bc0  50 09 e2 e7                                      ubfx r0, r0, #0x12, #3
005d7bc4  00 c0 8c e1                                      orr ip, ip, r0
005d7bc8  04 c0 83 e5                                      str ip, [r3, #4]
005d7bcc  02 00 d1 e5                                      ldrb r0, [r1, #2]
005d7bd0  ff 2c c2 e3                                      bic r2, r2, #0xff00
005d7bd4  38 c0 cc e3                                      bic ip, ip, #0x38
005d7bd8  00 24 82 e1                                      orr r2, r2, r0, lsl #8
005d7bdc  00 20 83 e5                                      str r2, [r3]
005d7be0  03 40 d1 e5                                      ldrb r4, [r1, #3]
005d7be4  ff 28 c2 e3                                      bic r2, r2, #0xff0000
005d7be8  03 00 a0 e1                                      mov r0, r3
005d7bec  04 28 82 e1                                      orr r2, r2, r4, lsl #16
005d7bf0  00 20 83 e5                                      str r2, [r3]
005d7bf4  08 20 91 e5                                      ldr r2, [r1, #8]
005d7bf8  d2 2a e2 e7                                      ubfx r2, r2, #0x15, #3
005d7bfc  82 21 8c e1                                      orr r2, ip, r2, lsl #3
005d7c00  04 20 83 e5                                      str r2, [r3, #4]
005d7c04  08 c0 91 e5                                      ldr ip, [r1, #8]
005d7c08  07 2d c2 e3                                      bic r2, r2, #0x1c0
005d7c0c  5c cc e2 e7                                      ubfx ip, ip, #0x18, #3
005d7c10  0c 23 82 e1                                      orr r2, r2, ip, lsl #6
005d7c14  04 20 83 e5                                      str r2, [r3, #4]
005d7c18  08 c0 91 e5                                      ldr ip, [r1, #8]
005d7c1c  0e 2c c2 e3                                      bic r2, r2, #0xe00
005d7c20  dc cd e2 e7                                      ubfx ip, ip, #0x1b, #3
005d7c24  8c 24 82 e1                                      orr r2, r2, ip, lsl #9
005d7c28  04 20 83 e5                                      str r2, [r3, #4]
005d7c2c  30 c0 91 e5                                      ldr ip, [r1, #0x30]
005d7c30  34 20 91 e5                                      ldr r2, [r1, #0x34]
005d7c34  14 c0 83 e5                                      str ip, [r3, #0x14]
005d7c38  18 20 83 e5                                      str r2, [r3, #0x18]
005d7c3c  30 00 bd e8                                      pop {r4, r5}
005d7c40  1e ff 2f e1                                      bx lr

; FUNCTION 0x005e0bac, declared_size=1208, range_size=1208, mode=arm
; class-group: glitch::video::detail::renderpass::SRenderState
; alias: _ZNK6glitch5video6detail10renderpass12SRenderState19serializeAttributesEPNS_2io11IAttributesE
; demangled: glitch::video::detail::renderpass::SRenderState::serializeAttributes(glitch::io::IAttributes*) const
; decoder-mode: arm
005e0bac  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005e0bb0  01 40 a0 e1                                      mov r4, r1
005e0bb4  04 20 90 e5                                      ldr r2, [r0, #4]
005e0bb8  28 14 9f e5                                      ldr r1, [pc, #0x428]
005e0bbc  14 d0 4d e2                                      sub sp, sp, #0x14
005e0bc0  00 50 a0 e1                                      mov r5, r0
005e0bc4  00 c0 94 e5                                      ldr ip, [r4]
005e0bc8  04 00 a0 e1                                      mov r0, r4
005e0bcc  52 28 e0 e7                                      ubfx r2, r2, #0x10, #1
005e0bd0  01 10 8f e0                                      add r1, pc, r1
005e0bd4  00 30 a0 e3                                      mov r3, #0
005e0bd8  0f e0 a0 e1                                      mov lr, pc
005e0bdc  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
005e0be0  00 c0 94 e5                                      ldr ip, [r4]
005e0be4  0a 10 d5 e5                                      ldrb r1, [r5, #0xa]
005e0be8  09 20 d5 e5                                      ldrb r2, [r5, #9]
005e0bec  08 30 d5 e5                                      ldrb r3, [r5, #8]
005e0bf0  0b 00 d5 e5                                      ldrb r0, [r5, #0xb]
005e0bf4  18 c1 9c e5                                      ldr ip, [ip, #0x118]
005e0bf8  0e 10 cd e5                                      strb r1, [sp, #0xe]
005e0bfc  e8 13 9f e5                                      ldr r1, [pc, #0x3e8]
005e0c00  0f 00 cd e5                                      strb r0, [sp, #0xf]
005e0c04  0c 30 cd e5                                      strb r3, [sp, #0xc]
005e0c08  0d 20 cd e5                                      strb r2, [sp, #0xd]
005e0c0c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005e0c10  01 10 8f e0                                      add r1, pc, r1
005e0c14  00 30 a0 e3                                      mov r3, #0
005e0c18  04 00 a0 e1                                      mov r0, r4
005e0c1c  3c ff 2f e1                                      blx ip
005e0c20  00 00 a0 e3                                      mov r0, #0
005e0c24  00 60 a0 e1                                      mov r6, r0
005e0c28  00 70 95 e5                                      ldr r7, [r5]
005e0c2c  43 e9 03 eb                                      bl #0x6db140
005e0c30  b8 13 9f e5                                      ldr r1, [pc, #0x3b8]
005e0c34  00 60 8d e5                                      str r6, [sp]
005e0c38  57 7c e2 e7                                      ubfx r7, r7, #0x18, #3
005e0c3c  00 30 a0 e1                                      mov r3, r0
005e0c40  00 c0 94 e5                                      ldr ip, [r4]
005e0c44  07 20 a0 e1                                      mov r2, r7
005e0c48  04 00 a0 e1                                      mov r0, r4
005e0c4c  01 10 8f e0                                      add r1, pc, r1
005e0c50  0f e0 a0 e1                                      mov lr, pc
005e0c54  f4 f0 9c e5                                      ldr pc, [ip, #0xf4]
005e0c58  00 70 95 e5                                      ldr r7, [r5]
005e0c5c  90 13 9f e5                                      ldr r1, [pc, #0x390]
005e0c60  04 00 a0 e1                                      mov r0, r4
005e0c64  0f 20 07 e2                                      and r2, r7, #0xf
005e0c68  01 10 8f e0                                      add r1, pc, r1
005e0c6c  86 ff ff eb                                      bl #0x5e0a8c
005e0c70  80 13 9f e5                                      ldr r1, [pc, #0x380]
005e0c74  57 22 e3 e7                                      ubfx r2, r7, #4, #4
005e0c78  04 00 a0 e1                                      mov r0, r4
005e0c7c  01 10 8f e0                                      add r1, pc, r1
005e0c80  81 ff ff eb                                      bl #0x5e0a8c
005e0c84  04 20 95 e5                                      ldr r2, [r5, #4]
005e0c88  6c 13 9f e5                                      ldr r1, [pc, #0x36c]
005e0c8c  06 30 a0 e1                                      mov r3, r6
005e0c90  00 c0 94 e5                                      ldr ip, [r4]
005e0c94  d2 28 e0 e7                                      ubfx r2, r2, #0x11, #1
005e0c98  01 10 8f e0                                      add r1, pc, r1
005e0c9c  04 00 a0 e1                                      mov r0, r4
005e0ca0  0f e0 a0 e1                                      mov lr, pc
005e0ca4  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
005e0ca8  06 00 a0 e1                                      mov r0, r6
005e0cac  00 70 95 e5                                      ldr r7, [r5]
005e0cb0  27 e9 03 eb                                      bl #0x6db154
005e0cb4  44 13 9f e5                                      ldr r1, [pc, #0x344]
005e0cb8  00 60 8d e5                                      str r6, [sp]
005e0cbc  27 7f a0 e1                                      lsr r7, r7, #0x1e
005e0cc0  00 30 a0 e1                                      mov r3, r0
005e0cc4  07 20 a0 e1                                      mov r2, r7
005e0cc8  00 c0 94 e5                                      ldr ip, [r4]
005e0ccc  01 10 8f e0                                      add r1, pc, r1
005e0cd0  04 00 a0 e1                                      mov r0, r4
005e0cd4  0f e0 a0 e1                                      mov lr, pc
005e0cd8  f4 f0 9c e5                                      ldr pc, [ip, #0xf4]
005e0cdc  06 00 a0 e1                                      mov r0, r6
005e0ce0  04 70 95 e5                                      ldr r7, [r5, #4]
005e0ce4  1f e9 03 eb                                      bl #0x6db168
005e0ce8  14 13 9f e5                                      ldr r1, [pc, #0x314]
005e0cec  00 60 8d e5                                      str r6, [sp]
005e0cf0  57 79 e0 e7                                      ubfx r7, r7, #0x12, #1
005e0cf4  00 30 a0 e1                                      mov r3, r0
005e0cf8  07 20 a0 e1                                      mov r2, r7
005e0cfc  04 00 a0 e1                                      mov r0, r4
005e0d00  00 c0 94 e5                                      ldr ip, [r4]
005e0d04  01 10 8f e0                                      add r1, pc, r1
005e0d08  0f e0 a0 e1                                      mov lr, pc
005e0d0c  f4 f0 9c e5                                      ldr pc, [ip, #0xf4]
005e0d10  04 20 95 e5                                      ldr r2, [r5, #4]
005e0d14  ec 12 9f e5                                      ldr r1, [pc, #0x2ec]
005e0d18  06 30 a0 e1                                      mov r3, r6
005e0d1c  00 c0 94 e5                                      ldr ip, [r4]
005e0d20  04 00 a0 e1                                      mov r0, r4
005e0d24  d2 29 e0 e7                                      ubfx r2, r2, #0x13, #1
005e0d28  01 10 8f e0                                      add r1, pc, r1
005e0d2c  0f e0 a0 e1                                      mov lr, pc
005e0d30  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
005e0d34  00 20 95 e5                                      ldr r2, [r5]
005e0d38  cc 12 9f e5                                      ldr r1, [pc, #0x2cc]
005e0d3c  04 00 a0 e1                                      mov r0, r4
005e0d40  d2 2d e2 e7                                      ubfx r2, r2, #0x1b, #3
005e0d44  01 10 8f e0                                      add r1, pc, r1
005e0d48  61 ff ff eb                                      bl #0x5e0ad4
005e0d4c  04 20 95 e5                                      ldr r2, [r5, #4]
005e0d50  b8 12 9f e5                                      ldr r1, [pc, #0x2b8]
005e0d54  04 00 a0 e1                                      mov r0, r4
005e0d58  06 30 a0 e1                                      mov r3, r6
005e0d5c  00 c0 94 e5                                      ldr ip, [r4]
005e0d60  52 2a e0 e7                                      ubfx r2, r2, #0x14, #1
005e0d64  01 10 8f e0                                      add r1, pc, r1
005e0d68  0f e0 a0 e1                                      mov lr, pc
005e0d6c  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
005e0d70  9c 12 9f e5                                      ldr r1, [pc, #0x29c]
005e0d74  04 00 a0 e1                                      mov r0, r4
005e0d78  0c 20 95 e5                                      ldr r2, [r5, #0xc]
005e0d7c  06 30 a0 e1                                      mov r3, r6
005e0d80  00 c0 94 e5                                      ldr ip, [r4]
005e0d84  01 10 8f e0                                      add r1, pc, r1
005e0d88  0f e0 a0 e1                                      mov lr, pc
005e0d8c  64 f0 9c e5                                      ldr pc, [ip, #0x64]
005e0d90  80 12 9f e5                                      ldr r1, [pc, #0x280]
005e0d94  06 30 a0 e1                                      mov r3, r6
005e0d98  00 c0 94 e5                                      ldr ip, [r4]
005e0d9c  04 00 a0 e1                                      mov r0, r4
005e0da0  10 20 95 e5                                      ldr r2, [r5, #0x10]
005e0da4  01 10 8f e0                                      add r1, pc, r1
005e0da8  0f e0 a0 e1                                      mov lr, pc
005e0dac  64 f0 9c e5                                      ldr pc, [ip, #0x64]
005e0db0  04 20 95 e5                                      ldr r2, [r5, #4]
005e0db4  60 12 9f e5                                      ldr r1, [pc, #0x260]
005e0db8  04 00 a0 e1                                      mov r0, r4
005e0dbc  52 26 e1 e7                                      ubfx r2, r2, #0xc, #2
005e0dc0  01 10 8f e0                                      add r1, pc, r1
005e0dc4  54 ff ff eb                                      bl #0x5e0b1c
005e0dc8  04 20 95 e5                                      ldr r2, [r5, #4]
005e0dcc  4c 12 9f e5                                      ldr r1, [pc, #0x24c]
005e0dd0  04 00 a0 e1                                      mov r0, r4
005e0dd4  52 27 e1 e7                                      ubfx r2, r2, #0xe, #2
005e0dd8  01 10 8f e0                                      add r1, pc, r1
005e0ddc  4e ff ff eb                                      bl #0x5e0b1c
005e0de0  04 20 95 e5                                      ldr r2, [r5, #4]
005e0de4  38 12 9f e5                                      ldr r1, [pc, #0x238]
005e0de8  04 00 a0 e1                                      mov r0, r4
005e0dec  06 30 a0 e1                                      mov r3, r6
005e0df0  00 c0 94 e5                                      ldr ip, [r4]
005e0df4  d2 2a e0 e7                                      ubfx r2, r2, #0x15, #1
005e0df8  01 10 8f e0                                      add r1, pc, r1
005e0dfc  0f e0 a0 e1                                      mov lr, pc
005e0e00  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
005e0e04  04 20 95 e5                                      ldr r2, [r5, #4]
005e0e08  18 12 9f e5                                      ldr r1, [pc, #0x218]
005e0e0c  04 00 a0 e1                                      mov r0, r4
005e0e10  06 30 a0 e1                                      mov r3, r6
005e0e14  00 c0 94 e5                                      ldr ip, [r4]
005e0e18  52 2b e0 e7                                      ubfx r2, r2, #0x16, #1
005e0e1c  01 10 8f e0                                      add r1, pc, r1
005e0e20  0f e0 a0 e1                                      mov lr, pc
005e0e24  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
005e0e28  04 20 95 e5                                      ldr r2, [r5, #4]
005e0e2c  f8 11 9f e5                                      ldr r1, [pc, #0x1f8]
005e0e30  04 00 a0 e1                                      mov r0, r4
005e0e34  06 30 a0 e1                                      mov r3, r6
005e0e38  00 c0 94 e5                                      ldr ip, [r4]
005e0e3c  d2 2b e0 e7                                      ubfx r2, r2, #0x17, #1
005e0e40  01 10 8f e0                                      add r1, pc, r1
005e0e44  0f e0 a0 e1                                      mov lr, pc
005e0e48  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
005e0e4c  dc 11 9f e5                                      ldr r1, [pc, #0x1dc]
005e0e50  04 00 a0 e1                                      mov r0, r4
005e0e54  14 20 95 e5                                      ldr r2, [r5, #0x14]
005e0e58  06 30 a0 e1                                      mov r3, r6
005e0e5c  00 c0 94 e5                                      ldr ip, [r4]
005e0e60  01 10 8f e0                                      add r1, pc, r1
005e0e64  18 70 95 e5                                      ldr r7, [r5, #0x18]
005e0e68  0f e0 a0 e1                                      mov lr, pc
005e0e6c  64 f0 9c e5                                      ldr pc, [ip, #0x64]
005e0e70  bc 11 9f e5                                      ldr r1, [pc, #0x1bc]
005e0e74  07 20 a0 e1                                      mov r2, r7
005e0e78  04 00 a0 e1                                      mov r0, r4
005e0e7c  06 30 a0 e1                                      mov r3, r6
005e0e80  00 c0 94 e5                                      ldr ip, [r4]
005e0e84  01 10 8f e0                                      add r1, pc, r1
005e0e88  0f e0 a0 e1                                      mov lr, pc
005e0e8c  64 f0 9c e5                                      ldr pc, [ip, #0x64]
005e0e90  04 20 95 e5                                      ldr r2, [r5, #4]
005e0e94  9c 11 9f e5                                      ldr r1, [pc, #0x19c]
005e0e98  04 00 a0 e1                                      mov r0, r4
005e0e9c  06 30 a0 e1                                      mov r3, r6
005e0ea0  00 c0 94 e5                                      ldr ip, [r4]
005e0ea4  52 2c e0 e7                                      ubfx r2, r2, #0x18, #1
005e0ea8  01 10 8f e0                                      add r1, pc, r1
005e0eac  0f e0 a0 e1                                      mov lr, pc
005e0eb0  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
005e0eb4  04 20 95 e5                                      ldr r2, [r5, #4]
005e0eb8  7c 11 9f e5                                      ldr r1, [pc, #0x17c]
005e0ebc  04 00 a0 e1                                      mov r0, r4
005e0ec0  06 30 a0 e1                                      mov r3, r6
005e0ec4  00 c0 94 e5                                      ldr ip, [r4]
005e0ec8  d2 2c e0 e7                                      ubfx r2, r2, #0x19, #1
005e0ecc  01 10 8f e0                                      add r1, pc, r1
005e0ed0  0f e0 a0 e1                                      mov lr, pc
005e0ed4  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
005e0ed8  04 20 95 e5                                      ldr r2, [r5, #4]
005e0edc  5c 11 9f e5                                      ldr r1, [pc, #0x15c]
005e0ee0  04 00 a0 e1                                      mov r0, r4
005e0ee4  06 30 a0 e1                                      mov r3, r6
005e0ee8  00 c0 94 e5                                      ldr ip, [r4]
005e0eec  52 2d e0 e7                                      ubfx r2, r2, #0x1a, #1
005e0ef0  01 10 8f e0                                      add r1, pc, r1
005e0ef4  0f e0 a0 e1                                      mov lr, pc
005e0ef8  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
005e0efc  40 11 9f e5                                      ldr r1, [pc, #0x140]
005e0f00  04 00 a0 e1                                      mov r0, r4
005e0f04  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
005e0f08  06 30 a0 e1                                      mov r3, r6
005e0f0c  00 c0 94 e5                                      ldr ip, [r4]
005e0f10  01 10 8f e0                                      add r1, pc, r1
005e0f14  0f e0 a0 e1                                      mov lr, pc
005e0f18  64 f0 9c e5                                      ldr pc, [ip, #0x64]
005e0f1c  04 20 95 e5                                      ldr r2, [r5, #4]
005e0f20  20 11 9f e5                                      ldr r1, [pc, #0x120]
005e0f24  06 30 a0 e1                                      mov r3, r6
005e0f28  00 c0 94 e5                                      ldr ip, [r4]
005e0f2c  04 00 a0 e1                                      mov r0, r4
005e0f30  d2 2d e0 e7                                      ubfx r2, r2, #0x1b, #1
005e0f34  01 10 8f e0                                      add r1, pc, r1
005e0f38  0f e0 a0 e1                                      mov lr, pc
005e0f3c  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
005e0f40  04 20 95 e5                                      ldr r2, [r5, #4]
005e0f44  00 11 9f e5                                      ldr r1, [pc, #0x100]
005e0f48  04 00 a0 e1                                      mov r0, r4
005e0f4c  07 20 02 e2                                      and r2, r2, #7
005e0f50  01 10 8f e0                                      add r1, pc, r1
005e0f54  de fe ff eb                                      bl #0x5e0ad4
005e0f58  f0 10 9f e5                                      ldr r1, [pc, #0xf0]
005e0f5c  04 00 a0 e1                                      mov r0, r4
005e0f60  01 20 d5 e5                                      ldrb r2, [r5, #1]
005e0f64  06 30 a0 e1                                      mov r3, r6
005e0f68  00 c0 94 e5                                      ldr ip, [r4]
005e0f6c  01 10 8f e0                                      add r1, pc, r1
005e0f70  0f e0 a0 e1                                      mov lr, pc
005e0f74  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
005e0f78  d4 10 9f e5                                      ldr r1, [pc, #0xd4]
005e0f7c  06 30 a0 e1                                      mov r3, r6
005e0f80  00 c0 94 e5                                      ldr ip, [r4]
005e0f84  04 00 a0 e1                                      mov r0, r4
005e0f88  02 20 d5 e5                                      ldrb r2, [r5, #2]
005e0f8c  01 10 8f e0                                      add r1, pc, r1
005e0f90  0f e0 a0 e1                                      mov lr, pc
005e0f94  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
005e0f98  04 20 95 e5                                      ldr r2, [r5, #4]
005e0f9c  b4 10 9f e5                                      ldr r1, [pc, #0xb4]
005e0fa0  04 00 a0 e1                                      mov r0, r4
005e0fa4  d2 21 e2 e7                                      ubfx r2, r2, #3, #3
005e0fa8  01 10 8f e0                                      add r1, pc, r1
005e0fac  ec fe ff eb                                      bl #0x5e0b64
005e0fb0  04 20 95 e5                                      ldr r2, [r5, #4]
005e0fb4  a0 10 9f e5                                      ldr r1, [pc, #0xa0]
005e0fb8  04 00 a0 e1                                      mov r0, r4
005e0fbc  52 23 e2 e7                                      ubfx r2, r2, #6, #3
005e0fc0  01 10 8f e0                                      add r1, pc, r1
005e0fc4  e6 fe ff eb                                      bl #0x5e0b64
005e0fc8  04 20 95 e5                                      ldr r2, [r5, #4]
005e0fcc  8c 10 9f e5                                      ldr r1, [pc, #0x8c]
005e0fd0  04 00 a0 e1                                      mov r0, r4
005e0fd4  d2 24 e2 e7                                      ubfx r2, r2, #9, #3
005e0fd8  01 10 8f e0                                      add r1, pc, r1
005e0fdc  14 d0 8d e2                                      add sp, sp, #0x14
005e0fe0  f0 40 bd e8                                      pop {r4, r5, r6, r7, lr}
005e0fe4  de fe ff ea                                      b #0x5e0b64
; mapping-symbol data/literal pool
005e0fe8  00 0c 30 00 d0 0b 30 00 a4 0b 30 00 98 0b 30 00  .byte 0x00, 0x0c, 0x30, 0x00, 0xd0, 0x0b, 0x30, 0x00, 0xa4, 0x0b, 0x30, 0x00, 0x98, 0x0b, 0x30, 0x00
005e0ff8  94 0b 30 00 88 0b 30 00 64 0b 30 00 3c 0b 30 00  .byte 0x94, 0x0b, 0x30, 0x00, 0x88, 0x0b, 0x30, 0x00, 0x64, 0x0b, 0x30, 0x00, 0x3c, 0x0b, 0x30, 0x00
005e1008  28 0b 30 00 1c 0b 30 00 0c 0b 30 00 fc 0a 30 00  .byte 0x28, 0x0b, 0x30, 0x00, 0x1c, 0x0b, 0x30, 0x00, 0x0c, 0x0b, 0x30, 0x00, 0xfc, 0x0a, 0x30, 0x00
005e1018  ec 0a 30 00 e0 0a 30 00 e0 0a 30 00 d0 0a 30 00  .byte 0xec, 0x0a, 0x30, 0x00, 0xe0, 0x0a, 0x30, 0x00, 0xe0, 0x0a, 0x30, 0x00, 0xd0, 0x0a, 0x30, 0x00
005e1028  c4 0a 30 00 b8 0a 30 00 b8 0a 30 00 ac 0a 30 00  .byte 0xc4, 0x0a, 0x30, 0x00, 0xb8, 0x0a, 0x30, 0x00, 0xb8, 0x0a, 0x30, 0x00, 0xac, 0x0a, 0x30, 0x00
005e1038  a0 0a 30 00 9c 0a 30 00 90 0a 30 00 88 0a 30 00  .byte 0xa0, 0x0a, 0x30, 0x00, 0x9c, 0x0a, 0x30, 0x00, 0x90, 0x0a, 0x30, 0x00, 0x88, 0x0a, 0x30, 0x00
005e1048  7c 0a 30 00 78 0a 30 00 6c 0a 30 00 5c 0a 30 00  .byte 0x7c, 0x0a, 0x30, 0x00, 0x78, 0x0a, 0x30, 0x00, 0x6c, 0x0a, 0x30, 0x00, 0x5c, 0x0a, 0x30, 0x00
005e1058  50 0a 30 00 48 0a 30 00 40 0a 30 00              .byte 0x50, 0x0a, 0x30, 0x00, 0x48, 0x0a, 0x30, 0x00, 0x40, 0x0a, 0x30, 0x00

; FUNCTION 0x005e1104, declared_size=1388, range_size=1388, mode=arm
; class-group: glitch::video::detail::renderpass::SRenderState
; alias: _ZN6glitch5video6detail10renderpass12SRenderState21deserializeAttributesEPNS_2io11IAttributesE
; demangled: glitch::video::detail::renderpass::SRenderState::deserializeAttributes(glitch::io::IAttributes*)
; decoder-mode: arm
005e1104  70 40 2d e9                                      push {r4, r5, r6, lr}
005e1108  01 50 a0 e1                                      mov r5, r1
005e110c  e0 14 9f e5                                      ldr r1, [pc, #0x4e0]
005e1110  00 40 a0 e1                                      mov r4, r0
005e1114  10 d0 4d e2                                      sub sp, sp, #0x10
005e1118  01 10 8f e0                                      add r1, pc, r1
005e111c  00 30 95 e5                                      ldr r3, [r5]
005e1120  05 00 a0 e1                                      mov r0, r5
005e1124  0f e0 a0 e1                                      mov lr, pc
005e1128  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
005e112c  04 30 94 e5                                      ldr r3, [r4, #4]
005e1130  00 00 50 e3                                      cmp r0, #0
005e1134  bc 14 9f e5                                      ldr r1, [pc, #0x4bc]
005e1138  01 38 83 13                                      orrne r3, r3, #0x10000
005e113c  01 38 c3 03                                      biceq r3, r3, #0x10000
005e1140  04 30 84 e5                                      str r3, [r4, #4]
005e1144  00 30 95 e5                                      ldr r3, [r5]
005e1148  01 10 8f e0                                      add r1, pc, r1
005e114c  05 00 a0 e1                                      mov r0, r5
005e1150  0f e0 a0 e1                                      mov lr, pc
005e1154  24 f1 93 e5                                      ldr pc, [r3, #0x124]
005e1158  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
005e115c  50 14 e7 e7                                      ubfx r1, r0, #8, #8
005e1160  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
005e1164  01 10 cd e5                                      strb r1, [sp, #1]
005e1168  02 20 cd e5                                      strb r2, [sp, #2]
005e116c  00 00 cd e5                                      strb r0, [sp]
005e1170  03 30 cd e5                                      strb r3, [sp, #3]
005e1174  00 30 9d e5                                      ldr r3, [sp]
005e1178  00 00 a0 e3                                      mov r0, #0
005e117c  23 cc a0 e1                                      lsr ip, r3, #0x18
005e1180  53 24 e7 e7                                      ubfx r2, r3, #8, #8
005e1184  53 18 e7 e7                                      ubfx r1, r3, #0x10, #8
005e1188  0b c0 c4 e5                                      strb ip, [r4, #0xb]
005e118c  08 30 c4 e5                                      strb r3, [r4, #8]
005e1190  0a 10 c4 e5                                      strb r1, [r4, #0xa]
005e1194  09 20 c4 e5                                      strb r2, [r4, #9]
005e1198  00 20 95 e5                                      ldr r2, [r5]
005e119c  0c 30 8d e5                                      str r3, [sp, #0xc]
005e11a0  00 61 92 e5                                      ldr r6, [r2, #0x100]
005e11a4  e5 e7 03 eb                                      bl #0x6db140
005e11a8  4c 14 9f e5                                      ldr r1, [pc, #0x44c]
005e11ac  00 20 a0 e1                                      mov r2, r0
005e11b0  05 00 a0 e1                                      mov r0, r5
005e11b4  01 10 8f e0                                      add r1, pc, r1
005e11b8  36 ff 2f e1                                      blx r6
005e11bc  00 30 94 e5                                      ldr r3, [r4]
005e11c0  38 14 9f e5                                      ldr r1, [pc, #0x438]
005e11c4  07 34 c3 e3                                      bic r3, r3, #0x7000000
005e11c8  00 3c 83 e1                                      orr r3, r3, r0, lsl #24
005e11cc  00 30 84 e5                                      str r3, [r4]
005e11d0  01 10 8f e0                                      add r1, pc, r1
005e11d4  05 00 a0 e1                                      mov r0, r5
005e11d8  fb fd ff eb                                      bl #0x5e09cc
005e11dc  20 14 9f e5                                      ldr r1, [pc, #0x420]
005e11e0  00 60 a0 e1                                      mov r6, r0
005e11e4  05 00 a0 e1                                      mov r0, r5
005e11e8  01 10 8f e0                                      add r1, pc, r1
005e11ec  f6 fd ff eb                                      bl #0x5e09cc
005e11f0  00 30 94 e5                                      ldr r3, [r4]
005e11f4  00 62 86 e1                                      orr r6, r6, r0, lsl #4
005e11f8  08 14 9f e5                                      ldr r1, [pc, #0x408]
005e11fc  ff 30 c3 e3                                      bic r3, r3, #0xff
005e1200  03 30 86 e1                                      orr r3, r6, r3
005e1204  00 30 84 e5                                      str r3, [r4]
005e1208  01 10 8f e0                                      add r1, pc, r1
005e120c  00 30 95 e5                                      ldr r3, [r5]
005e1210  05 00 a0 e1                                      mov r0, r5
005e1214  0f e0 a0 e1                                      mov lr, pc
005e1218  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
005e121c  04 30 94 e5                                      ldr r3, [r4, #4]
005e1220  00 00 50 e3                                      cmp r0, #0
005e1224  00 00 a0 e3                                      mov r0, #0
005e1228  02 38 83 13                                      orrne r3, r3, #0x20000
005e122c  02 38 c3 03                                      biceq r3, r3, #0x20000
005e1230  04 30 84 e5                                      str r3, [r4, #4]
005e1234  00 30 95 e5                                      ldr r3, [r5]
005e1238  00 61 93 e5                                      ldr r6, [r3, #0x100]
005e123c  c4 e7 03 eb                                      bl #0x6db154
005e1240  c4 13 9f e5                                      ldr r1, [pc, #0x3c4]
005e1244  00 20 a0 e1                                      mov r2, r0
005e1248  05 00 a0 e1                                      mov r0, r5
005e124c  01 10 8f e0                                      add r1, pc, r1
005e1250  36 ff 2f e1                                      blx r6
005e1254  00 30 94 e5                                      ldr r3, [r4]
005e1258  03 31 c3 e3                                      bic r3, r3, #0xc0000000
005e125c  00 3f 83 e1                                      orr r3, r3, r0, lsl #30
005e1260  00 30 84 e5                                      str r3, [r4]
005e1264  00 30 95 e5                                      ldr r3, [r5]
005e1268  00 00 a0 e3                                      mov r0, #0
005e126c  00 61 93 e5                                      ldr r6, [r3, #0x100]
005e1270  bc e7 03 eb                                      bl #0x6db168
005e1274  94 13 9f e5                                      ldr r1, [pc, #0x394]
005e1278  00 20 a0 e1                                      mov r2, r0
005e127c  05 00 a0 e1                                      mov r0, r5
005e1280  01 10 8f e0                                      add r1, pc, r1
005e1284  36 ff 2f e1                                      blx r6
005e1288  04 30 94 e5                                      ldr r3, [r4, #4]
005e128c  80 13 9f e5                                      ldr r1, [pc, #0x380]
005e1290  01 37 c3 e3                                      bic r3, r3, #0x40000
005e1294  00 39 83 e1                                      orr r3, r3, r0, lsl #18
005e1298  04 30 84 e5                                      str r3, [r4, #4]
005e129c  01 10 8f e0                                      add r1, pc, r1
005e12a0  00 30 95 e5                                      ldr r3, [r5]
005e12a4  05 00 a0 e1                                      mov r0, r5
005e12a8  0f e0 a0 e1                                      mov lr, pc
005e12ac  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
005e12b0  04 30 94 e5                                      ldr r3, [r4, #4]
005e12b4  5c 13 9f e5                                      ldr r1, [pc, #0x35c]
005e12b8  00 00 50 e3                                      cmp r0, #0
005e12bc  02 37 83 13                                      orrne r3, r3, #0x80000
005e12c0  02 37 c3 03                                      biceq r3, r3, #0x80000
005e12c4  04 30 84 e5                                      str r3, [r4, #4]
005e12c8  01 10 8f e0                                      add r1, pc, r1
005e12cc  05 00 a0 e1                                      mov r0, r5
005e12d0  d5 fd ff eb                                      bl #0x5e0a2c
005e12d4  00 30 94 e5                                      ldr r3, [r4]
005e12d8  3c 13 9f e5                                      ldr r1, [pc, #0x33c]
005e12dc  0e 33 c3 e3                                      bic r3, r3, #0x38000000
005e12e0  80 3d 83 e1                                      orr r3, r3, r0, lsl #27
005e12e4  00 30 84 e5                                      str r3, [r4]
005e12e8  01 10 8f e0                                      add r1, pc, r1
005e12ec  00 30 95 e5                                      ldr r3, [r5]
005e12f0  05 00 a0 e1                                      mov r0, r5
005e12f4  0f e0 a0 e1                                      mov lr, pc
005e12f8  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
005e12fc  04 30 94 e5                                      ldr r3, [r4, #4]
005e1300  00 00 50 e3                                      cmp r0, #0
005e1304  14 13 9f e5                                      ldr r1, [pc, #0x314]
005e1308  01 36 83 13                                      orrne r3, r3, #0x100000
005e130c  01 36 c3 03                                      biceq r3, r3, #0x100000
005e1310  04 30 84 e5                                      str r3, [r4, #4]
005e1314  00 30 95 e5                                      ldr r3, [r5]
005e1318  01 10 8f e0                                      add r1, pc, r1
005e131c  05 00 a0 e1                                      mov r0, r5
005e1320  0f e0 a0 e1                                      mov lr, pc
005e1324  70 f0 93 e5                                      ldr pc, [r3, #0x70]
005e1328  f4 12 9f e5                                      ldr r1, [pc, #0x2f4]
005e132c  0c 00 84 e5                                      str r0, [r4, #0xc]
005e1330  00 30 95 e5                                      ldr r3, [r5]
005e1334  01 10 8f e0                                      add r1, pc, r1
005e1338  05 00 a0 e1                                      mov r0, r5
005e133c  0f e0 a0 e1                                      mov lr, pc
005e1340  70 f0 93 e5                                      ldr pc, [r3, #0x70]
005e1344  dc 12 9f e5                                      ldr r1, [pc, #0x2dc]
005e1348  10 00 84 e5                                      str r0, [r4, #0x10]
005e134c  05 00 a0 e1                                      mov r0, r5
005e1350  01 10 8f e0                                      add r1, pc, r1
005e1354  a8 fd ff eb                                      bl #0x5e09fc
005e1358  04 30 94 e5                                      ldr r3, [r4, #4]
005e135c  c8 12 9f e5                                      ldr r1, [pc, #0x2c8]
005e1360  03 3a c3 e3                                      bic r3, r3, #0x3000
005e1364  00 36 83 e1                                      orr r3, r3, r0, lsl #12
005e1368  04 30 84 e5                                      str r3, [r4, #4]
005e136c  01 10 8f e0                                      add r1, pc, r1
005e1370  05 00 a0 e1                                      mov r0, r5
005e1374  a0 fd ff eb                                      bl #0x5e09fc
005e1378  04 30 94 e5                                      ldr r3, [r4, #4]
005e137c  ac 12 9f e5                                      ldr r1, [pc, #0x2ac]
005e1380  03 39 c3 e3                                      bic r3, r3, #0xc000
005e1384  00 37 83 e1                                      orr r3, r3, r0, lsl #14
005e1388  04 30 84 e5                                      str r3, [r4, #4]
005e138c  01 10 8f e0                                      add r1, pc, r1
005e1390  00 30 95 e5                                      ldr r3, [r5]
005e1394  05 00 a0 e1                                      mov r0, r5
005e1398  0f e0 a0 e1                                      mov lr, pc
005e139c  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
005e13a0  04 30 94 e5                                      ldr r3, [r4, #4]
005e13a4  00 00 50 e3                                      cmp r0, #0
005e13a8  84 12 9f e5                                      ldr r1, [pc, #0x284]
005e13ac  02 36 83 13                                      orrne r3, r3, #0x200000
005e13b0  02 36 c3 03                                      biceq r3, r3, #0x200000
005e13b4  04 30 84 e5                                      str r3, [r4, #4]
005e13b8  00 30 95 e5                                      ldr r3, [r5]
005e13bc  01 10 8f e0                                      add r1, pc, r1
005e13c0  05 00 a0 e1                                      mov r0, r5
005e13c4  0f e0 a0 e1                                      mov lr, pc
005e13c8  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
005e13cc  04 30 94 e5                                      ldr r3, [r4, #4]
005e13d0  00 00 50 e3                                      cmp r0, #0
005e13d4  5c 12 9f e5                                      ldr r1, [pc, #0x25c]
005e13d8  01 35 83 13                                      orrne r3, r3, #0x400000
005e13dc  01 35 c3 03                                      biceq r3, r3, #0x400000
005e13e0  04 30 84 e5                                      str r3, [r4, #4]
005e13e4  00 30 95 e5                                      ldr r3, [r5]
005e13e8  01 10 8f e0                                      add r1, pc, r1
005e13ec  05 00 a0 e1                                      mov r0, r5
005e13f0  0f e0 a0 e1                                      mov lr, pc
005e13f4  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
005e13f8  04 30 94 e5                                      ldr r3, [r4, #4]
005e13fc  00 00 50 e3                                      cmp r0, #0
005e1400  34 12 9f e5                                      ldr r1, [pc, #0x234]
005e1404  02 35 83 13                                      orrne r3, r3, #0x800000
005e1408  02 35 c3 03                                      biceq r3, r3, #0x800000
005e140c  04 30 84 e5                                      str r3, [r4, #4]
005e1410  00 30 95 e5                                      ldr r3, [r5]
005e1414  01 10 8f e0                                      add r1, pc, r1
005e1418  05 00 a0 e1                                      mov r0, r5
005e141c  0f e0 a0 e1                                      mov lr, pc
005e1420  70 f0 93 e5                                      ldr pc, [r3, #0x70]
005e1424  14 12 9f e5                                      ldr r1, [pc, #0x214]
005e1428  00 60 a0 e1                                      mov r6, r0
005e142c  00 30 95 e5                                      ldr r3, [r5]
005e1430  01 10 8f e0                                      add r1, pc, r1
005e1434  05 00 a0 e1                                      mov r0, r5
005e1438  0f e0 a0 e1                                      mov lr, pc
005e143c  70 f0 93 e5                                      ldr pc, [r3, #0x70]
005e1440  fc 11 9f e5                                      ldr r1, [pc, #0x1fc]
005e1444  18 00 84 e5                                      str r0, [r4, #0x18]
005e1448  14 60 84 e5                                      str r6, [r4, #0x14]
005e144c  01 10 8f e0                                      add r1, pc, r1
005e1450  00 30 95 e5                                      ldr r3, [r5]
005e1454  05 00 a0 e1                                      mov r0, r5
005e1458  0f e0 a0 e1                                      mov lr, pc
005e145c  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
005e1460  04 30 94 e5                                      ldr r3, [r4, #4]
005e1464  00 00 50 e3                                      cmp r0, #0
005e1468  d8 11 9f e5                                      ldr r1, [pc, #0x1d8]
005e146c  01 34 83 13                                      orrne r3, r3, #0x1000000
005e1470  01 34 c3 03                                      biceq r3, r3, #0x1000000
005e1474  04 30 84 e5                                      str r3, [r4, #4]
005e1478  00 30 95 e5                                      ldr r3, [r5]
005e147c  01 10 8f e0                                      add r1, pc, r1
005e1480  05 00 a0 e1                                      mov r0, r5
005e1484  0f e0 a0 e1                                      mov lr, pc
005e1488  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
005e148c  04 30 94 e5                                      ldr r3, [r4, #4]
005e1490  00 00 50 e3                                      cmp r0, #0
005e1494  b0 11 9f e5                                      ldr r1, [pc, #0x1b0]
005e1498  02 34 83 13                                      orrne r3, r3, #0x2000000
005e149c  02 34 c3 03                                      biceq r3, r3, #0x2000000
005e14a0  04 30 84 e5                                      str r3, [r4, #4]
005e14a4  00 30 95 e5                                      ldr r3, [r5]
005e14a8  01 10 8f e0                                      add r1, pc, r1
005e14ac  05 00 a0 e1                                      mov r0, r5
005e14b0  0f e0 a0 e1                                      mov lr, pc
005e14b4  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
005e14b8  04 30 94 e5                                      ldr r3, [r4, #4]
005e14bc  00 00 50 e3                                      cmp r0, #0
005e14c0  88 11 9f e5                                      ldr r1, [pc, #0x188]
005e14c4  01 33 83 13                                      orrne r3, r3, #0x4000000
005e14c8  01 33 c3 03                                      biceq r3, r3, #0x4000000
005e14cc  04 30 84 e5                                      str r3, [r4, #4]
005e14d0  00 30 95 e5                                      ldr r3, [r5]
005e14d4  01 10 8f e0                                      add r1, pc, r1
005e14d8  05 00 a0 e1                                      mov r0, r5
005e14dc  0f e0 a0 e1                                      mov lr, pc
005e14e0  70 f0 93 e5                                      ldr pc, [r3, #0x70]
005e14e4  68 11 9f e5                                      ldr r1, [pc, #0x168]
005e14e8  1c 00 84 e5                                      str r0, [r4, #0x1c]
005e14ec  00 30 95 e5                                      ldr r3, [r5]
005e14f0  01 10 8f e0                                      add r1, pc, r1
005e14f4  05 00 a0 e1                                      mov r0, r5
005e14f8  0f e0 a0 e1                                      mov lr, pc
005e14fc  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
005e1500  04 30 94 e5                                      ldr r3, [r4, #4]
005e1504  4c 11 9f e5                                      ldr r1, [pc, #0x14c]
005e1508  00 00 50 e3                                      cmp r0, #0
005e150c  02 33 83 13                                      orrne r3, r3, #0x8000000
005e1510  02 33 c3 03                                      biceq r3, r3, #0x8000000
005e1514  04 30 84 e5                                      str r3, [r4, #4]
005e1518  01 10 8f e0                                      add r1, pc, r1
005e151c  05 00 a0 e1                                      mov r0, r5
005e1520  41 fd ff eb                                      bl #0x5e0a2c
005e1524  04 30 94 e5                                      ldr r3, [r4, #4]
005e1528  2c 11 9f e5                                      ldr r1, [pc, #0x12c]
005e152c  07 30 c3 e3                                      bic r3, r3, #7
005e1530  03 30 80 e1                                      orr r3, r0, r3
005e1534  04 30 84 e5                                      str r3, [r4, #4]
005e1538  01 10 8f e0                                      add r1, pc, r1
005e153c  00 30 95 e5                                      ldr r3, [r5]
005e1540  05 00 a0 e1                                      mov r0, r5
005e1544  0f e0 a0 e1                                      mov lr, pc
005e1548  58 f0 93 e5                                      ldr pc, [r3, #0x58]
005e154c  00 30 94 e5                                      ldr r3, [r4]
005e1550  70 00 ef e6                                      uxtb r0, r0
005e1554  04 11 9f e5                                      ldr r1, [pc, #0x104]
005e1558  ff 3c c3 e3                                      bic r3, r3, #0xff00
005e155c  00 34 83 e1                                      orr r3, r3, r0, lsl #8
005e1560  00 30 84 e5                                      str r3, [r4]
005e1564  01 10 8f e0                                      add r1, pc, r1
005e1568  00 30 95 e5                                      ldr r3, [r5]
005e156c  05 00 a0 e1                                      mov r0, r5
005e1570  0f e0 a0 e1                                      mov lr, pc
005e1574  58 f0 93 e5                                      ldr pc, [r3, #0x58]
005e1578  00 30 94 e5                                      ldr r3, [r4]
005e157c  70 00 ef e6                                      uxtb r0, r0
005e1580  dc 10 9f e5                                      ldr r1, [pc, #0xdc]
005e1584  ff 38 c3 e3                                      bic r3, r3, #0xff0000
005e1588  00 38 83 e1                                      orr r3, r3, r0, lsl #16
005e158c  00 30 84 e5                                      str r3, [r4]
005e1590  01 10 8f e0                                      add r1, pc, r1
005e1594  05 00 a0 e1                                      mov r0, r5
005e1598  2f fd ff eb                                      bl #0x5e0a5c
005e159c  04 30 94 e5                                      ldr r3, [r4, #4]
005e15a0  c0 10 9f e5                                      ldr r1, [pc, #0xc0]
005e15a4  38 30 c3 e3                                      bic r3, r3, #0x38
005e15a8  80 31 83 e1                                      orr r3, r3, r0, lsl #3
005e15ac  04 30 84 e5                                      str r3, [r4, #4]
005e15b0  01 10 8f e0                                      add r1, pc, r1
005e15b4  05 00 a0 e1                                      mov r0, r5
005e15b8  27 fd ff eb                                      bl #0x5e0a5c
005e15bc  04 30 94 e5                                      ldr r3, [r4, #4]
005e15c0  a4 10 9f e5                                      ldr r1, [pc, #0xa4]
005e15c4  07 3d c3 e3                                      bic r3, r3, #0x1c0
005e15c8  00 33 83 e1                                      orr r3, r3, r0, lsl #6
005e15cc  04 30 84 e5                                      str r3, [r4, #4]
005e15d0  05 00 a0 e1                                      mov r0, r5
005e15d4  01 10 8f e0                                      add r1, pc, r1
005e15d8  1f fd ff eb                                      bl #0x5e0a5c
005e15dc  04 30 94 e5                                      ldr r3, [r4, #4]
005e15e0  0e 3c c3 e3                                      bic r3, r3, #0xe00
005e15e4  80 34 83 e1                                      orr r3, r3, r0, lsl #9
005e15e8  04 30 84 e5                                      str r3, [r4, #4]
005e15ec  10 d0 8d e2                                      add sp, sp, #0x10
005e15f0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005e15f4  b8 06 30 00 98 06 30 00 3c 06 30 00 30 06 30 00  .byte 0xb8, 0x06, 0x30, 0x00, 0x98, 0x06, 0x30, 0x00, 0x3c, 0x06, 0x30, 0x00, 0x30, 0x06, 0x30, 0x00
005e1604  28 06 30 00 18 06 30 00 e4 05 30 00 c0 05 30 00  .byte 0x28, 0x06, 0x30, 0x00, 0x18, 0x06, 0x30, 0x00, 0xe4, 0x05, 0x30, 0x00, 0xc0, 0x05, 0x30, 0x00
005e1614  b4 05 30 00 98 05 30 00 88 05 30 00 68 05 30 00  .byte 0xb4, 0x05, 0x30, 0x00, 0x98, 0x05, 0x30, 0x00, 0x88, 0x05, 0x30, 0x00, 0x68, 0x05, 0x30, 0x00
005e1624  5c 05 30 00 50 05 30 00 4c 05 30 00 3c 05 30 00  .byte 0x5c, 0x05, 0x30, 0x00, 0x50, 0x05, 0x30, 0x00, 0x4c, 0x05, 0x30, 0x00, 0x3c, 0x05, 0x30, 0x00
005e1634  24 05 30 00 10 05 30 00 04 05 30 00 00 05 30 00  .byte 0x24, 0x05, 0x30, 0x00, 0x10, 0x05, 0x30, 0x00, 0x04, 0x05, 0x30, 0x00, 0x00, 0x05, 0x30, 0x00
005e1644  fc 04 30 00 ec 04 30 00 d8 04 30 00 c4 04 30 00  .byte 0xfc, 0x04, 0x30, 0x00, 0xec, 0x04, 0x30, 0x00, 0xd8, 0x04, 0x30, 0x00, 0xc4, 0x04, 0x30, 0x00
005e1654  c0 04 30 00 b0 04 30 00 a0 04 30 00 84 04 30 00  .byte 0xc0, 0x04, 0x30, 0x00, 0xb0, 0x04, 0x30, 0x00, 0xa0, 0x04, 0x30, 0x00, 0x84, 0x04, 0x30, 0x00
005e1664  68 04 30 00 58 04 30 00 44 04 30 00              .byte 0x68, 0x04, 0x30, 0x00, 0x58, 0x04, 0x30, 0x00, 0x44, 0x04, 0x30, 0x00
