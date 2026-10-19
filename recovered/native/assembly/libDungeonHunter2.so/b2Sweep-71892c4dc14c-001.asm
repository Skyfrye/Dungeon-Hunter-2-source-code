; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007e3a94, declared_size=244, range_size=244, mode=arm
; class-group: b2Sweep
; alias: _ZN7b2Sweep7AdvanceEf
; demangled: b2Sweep::Advance(float)
; decoder-mode: arm
007e3a94  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007e3a98  20 50 90 e5                                      ldr r5, [r0, #0x20]
007e3a9c  00 40 a0 e1                                      mov r4, r0
007e3aa0  01 60 a0 e1                                      mov r6, r1
007e3aa4  05 00 a0 e1                                      mov r0, r5
007e3aa8  17 ab ec eb                                      bl #0x30e70c
007e3aac  00 00 50 e3                                      cmp r0, #0
007e3ab0  33 00 00 0a                                      beq #0x7e3b84
007e3ab4  05 10 a0 e1                                      mov r1, r5
007e3ab8  fe 05 a0 e3                                      mov r0, #0x3f800000
007e3abc  3a aa ec eb                                      bl #0x30e3ac
007e3ac0  0d 13 a0 e3                                      mov r1, #0x34000000
007e3ac4  00 70 a0 e1                                      mov r7, r0
007e3ac8  0a aa ec eb                                      bl #0x30e2f8
007e3acc  00 00 50 e3                                      cmp r0, #0
007e3ad0  2b 00 00 0a                                      beq #0x7e3b84
007e3ad4  05 10 a0 e1                                      mov r1, r5
007e3ad8  06 00 a0 e1                                      mov r0, r6
007e3adc  32 aa ec eb                                      bl #0x30e3ac
007e3ae0  07 10 a0 e1                                      mov r1, r7
007e3ae4  6a ac ec eb                                      bl #0x30ec94
007e3ae8  00 50 a0 e1                                      mov r5, r0
007e3aec  00 10 a0 e1                                      mov r1, r0
007e3af0  fe 05 a0 e3                                      mov r0, #0x3f800000
007e3af4  2c aa ec eb                                      bl #0x30e3ac
007e3af8  08 10 94 e5                                      ldr r1, [r4, #8]
007e3afc  00 70 a0 e1                                      mov r7, r0
007e3b00  99 ac ec eb                                      bl #0x30ed6c
007e3b04  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007e3b08  00 80 a0 e1                                      mov r8, r0
007e3b0c  07 00 a0 e1                                      mov r0, r7
007e3b10  95 ac ec eb                                      bl #0x30ed6c
007e3b14  10 10 94 e5                                      ldr r1, [r4, #0x10]
007e3b18  00 90 a0 e1                                      mov sb, r0
007e3b1c  05 00 a0 e1                                      mov r0, r5
007e3b20  91 ac ec eb                                      bl #0x30ed6c
007e3b24  14 10 94 e5                                      ldr r1, [r4, #0x14]
007e3b28  00 a0 a0 e1                                      mov sl, r0
007e3b2c  05 00 a0 e1                                      mov r0, r5
007e3b30  8d ac ec eb                                      bl #0x30ed6c
007e3b34  00 10 a0 e1                                      mov r1, r0
007e3b38  09 00 a0 e1                                      mov r0, sb
007e3b3c  18 ac ec eb                                      bl #0x30eba4
007e3b40  0a 10 a0 e1                                      mov r1, sl
007e3b44  0c 00 84 e5                                      str r0, [r4, #0xc]
007e3b48  08 00 a0 e1                                      mov r0, r8
007e3b4c  14 ac ec eb                                      bl #0x30eba4
007e3b50  18 10 94 e5                                      ldr r1, [r4, #0x18]
007e3b54  08 00 84 e5                                      str r0, [r4, #8]
007e3b58  07 00 a0 e1                                      mov r0, r7
007e3b5c  82 ac ec eb                                      bl #0x30ed6c
007e3b60  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
007e3b64  00 70 a0 e1                                      mov r7, r0
007e3b68  05 00 a0 e1                                      mov r0, r5
007e3b6c  7e ac ec eb                                      bl #0x30ed6c
007e3b70  00 10 a0 e1                                      mov r1, r0
007e3b74  07 00 a0 e1                                      mov r0, r7
007e3b78  09 ac ec eb                                      bl #0x30eba4
007e3b7c  20 60 84 e5                                      str r6, [r4, #0x20]
007e3b80  18 00 84 e5                                      str r0, [r4, #0x18]
007e3b84  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x007e3bfc, declared_size=448, range_size=448, mode=arm
; class-group: b2Sweep
; alias: _ZNK7b2Sweep8GetXFormEP7b2XFormf
; demangled: b2Sweep::GetXForm(b2XForm*, float) const
; decoder-mode: arm
007e3bfc  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
007e3c00  20 60 90 e5                                      ldr r6, [r0, #0x20]
007e3c04  00 50 a0 e1                                      mov r5, r0
007e3c08  01 40 a0 e1                                      mov r4, r1
007e3c0c  fe 05 a0 e3                                      mov r0, #0x3f800000
007e3c10  06 10 a0 e1                                      mov r1, r6
007e3c14  02 80 a0 e1                                      mov r8, r2
007e3c18  e3 a9 ec eb                                      bl #0x30e3ac
007e3c1c  0d 13 a0 e3                                      mov r1, #0x34000000
007e3c20  00 70 a0 e1                                      mov r7, r0
007e3c24  b3 a9 ec eb                                      bl #0x30e2f8
007e3c28  00 00 50 e3                                      cmp r0, #0
007e3c2c  55 00 00 0a                                      beq #0x7e3d88
007e3c30  06 10 a0 e1                                      mov r1, r6
007e3c34  08 00 a0 e1                                      mov r0, r8
007e3c38  db a9 ec eb                                      bl #0x30e3ac
007e3c3c  07 10 a0 e1                                      mov r1, r7
007e3c40  13 ac ec eb                                      bl #0x30ec94
007e3c44  00 60 a0 e1                                      mov r6, r0
007e3c48  00 10 a0 e1                                      mov r1, r0
007e3c4c  fe 05 a0 e3                                      mov r0, #0x3f800000
007e3c50  d5 a9 ec eb                                      bl #0x30e3ac
007e3c54  08 10 95 e5                                      ldr r1, [r5, #8]
007e3c58  00 70 a0 e1                                      mov r7, r0
007e3c5c  42 ac ec eb                                      bl #0x30ed6c
007e3c60  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007e3c64  00 b0 a0 e1                                      mov fp, r0
007e3c68  07 00 a0 e1                                      mov r0, r7
007e3c6c  3e ac ec eb                                      bl #0x30ed6c
007e3c70  10 10 95 e5                                      ldr r1, [r5, #0x10]
007e3c74  00 90 a0 e1                                      mov sb, r0
007e3c78  06 00 a0 e1                                      mov r0, r6
007e3c7c  3a ac ec eb                                      bl #0x30ed6c
007e3c80  14 10 95 e5                                      ldr r1, [r5, #0x14]
007e3c84  00 a0 a0 e1                                      mov sl, r0
007e3c88  06 00 a0 e1                                      mov r0, r6
007e3c8c  36 ac ec eb                                      bl #0x30ed6c
007e3c90  0a 10 a0 e1                                      mov r1, sl
007e3c94  00 80 a0 e1                                      mov r8, r0
007e3c98  0b 00 a0 e1                                      mov r0, fp
007e3c9c  c0 ab ec eb                                      bl #0x30eba4
007e3ca0  08 10 a0 e1                                      mov r1, r8
007e3ca4  00 a0 a0 e1                                      mov sl, r0
007e3ca8  09 00 a0 e1                                      mov r0, sb
007e3cac  bc ab ec eb                                      bl #0x30eba4
007e3cb0  00 a0 84 e5                                      str sl, [r4]
007e3cb4  04 00 84 e5                                      str r0, [r4, #4]
007e3cb8  18 10 95 e5                                      ldr r1, [r5, #0x18]
007e3cbc  07 00 a0 e1                                      mov r0, r7
007e3cc0  29 ac ec eb                                      bl #0x30ed6c
007e3cc4  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
007e3cc8  00 70 a0 e1                                      mov r7, r0
007e3ccc  06 00 a0 e1                                      mov r0, r6
007e3cd0  25 ac ec eb                                      bl #0x30ed6c
007e3cd4  00 10 a0 e1                                      mov r1, r0
007e3cd8  07 00 a0 e1                                      mov r0, r7
007e3cdc  b0 ab ec eb                                      bl #0x30eba4
007e3ce0  00 70 a0 e1                                      mov r7, r0
007e3ce4  9a aa ec eb                                      bl #0x30e754
007e3ce8  00 60 a0 e1                                      mov r6, r0
007e3cec  07 00 a0 e1                                      mov r0, r7
007e3cf0  84 ab ec eb                                      bl #0x30eb08
007e3cf4  00 70 a0 e1                                      mov r7, r0
007e3cf8  02 91 87 e2                                      add sb, r7, #0x80000000
007e3cfc  0c 70 84 e5                                      str r7, [r4, #0xc]
007e3d00  08 60 84 e5                                      str r6, [r4, #8]
007e3d04  10 90 84 e5                                      str sb, [r4, #0x10]
007e3d08  14 60 84 e5                                      str r6, [r4, #0x14]
007e3d0c  00 80 95 e5                                      ldr r8, [r5]
007e3d10  06 10 a0 e1                                      mov r1, r6
007e3d14  04 50 95 e5                                      ldr r5, [r5, #4]
007e3d18  08 00 a0 e1                                      mov r0, r8
007e3d1c  12 ac ec eb                                      bl #0x30ed6c
007e3d20  09 10 a0 e1                                      mov r1, sb
007e3d24  00 b0 a0 e1                                      mov fp, r0
007e3d28  05 00 a0 e1                                      mov r0, r5
007e3d2c  0e ac ec eb                                      bl #0x30ed6c
007e3d30  00 10 a0 e1                                      mov r1, r0
007e3d34  0b 00 a0 e1                                      mov r0, fp
007e3d38  99 ab ec eb                                      bl #0x30eba4
007e3d3c  00 10 a0 e1                                      mov r1, r0
007e3d40  0a 00 a0 e1                                      mov r0, sl
007e3d44  98 a9 ec eb                                      bl #0x30e3ac
007e3d48  07 10 a0 e1                                      mov r1, r7
007e3d4c  00 00 84 e5                                      str r0, [r4]
007e3d50  08 00 a0 e1                                      mov r0, r8
007e3d54  04 ac ec eb                                      bl #0x30ed6c
007e3d58  06 10 a0 e1                                      mov r1, r6
007e3d5c  00 70 a0 e1                                      mov r7, r0
007e3d60  05 00 a0 e1                                      mov r0, r5
007e3d64  00 ac ec eb                                      bl #0x30ed6c
007e3d68  00 10 a0 e1                                      mov r1, r0
007e3d6c  07 00 a0 e1                                      mov r0, r7
007e3d70  8b ab ec eb                                      bl #0x30eba4
007e3d74  00 10 a0 e1                                      mov r1, r0
007e3d78  04 00 94 e5                                      ldr r0, [r4, #4]
007e3d7c  8a a9 ec eb                                      bl #0x30e3ac
007e3d80  04 00 84 e5                                      str r0, [r4, #4]
007e3d84  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
007e3d88  10 30 95 e5                                      ldr r3, [r5, #0x10]
007e3d8c  00 30 84 e5                                      str r3, [r4]
007e3d90  14 30 95 e5                                      ldr r3, [r5, #0x14]
007e3d94  04 30 84 e5                                      str r3, [r4, #4]
007e3d98  1c 70 95 e5                                      ldr r7, [r5, #0x1c]
007e3d9c  07 00 a0 e1                                      mov r0, r7
007e3da0  6b aa ec eb                                      bl #0x30e754
007e3da4  00 60 a0 e1                                      mov r6, r0
007e3da8  07 00 a0 e1                                      mov r0, r7
007e3dac  55 ab ec eb                                      bl #0x30eb08
007e3db0  00 a0 94 e5                                      ldr sl, [r4]
007e3db4  00 70 a0 e1                                      mov r7, r0
007e3db8  ce ff ff ea                                      b #0x7e3cf8
