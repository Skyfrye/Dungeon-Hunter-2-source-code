; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007f3a90, declared_size=4, range_size=4, mode=arm
; class-group: b2CircleContact
; alias: _ZN15b2CircleContactD1Ev
; demangled: b2CircleContact::~b2CircleContact()
; decoder-mode: arm
007f3a90  1e ff 2f e1                                      bx lr

; FUNCTION 0x007f3a94, declared_size=8, range_size=8, mode=arm
; class-group: b2CircleContact
; alias: _ZN15b2CircleContact12GetManifoldsEv
; demangled: b2CircleContact::GetManifolds()
; decoder-mode: arm
007f3a94  48 00 80 e2                                      add r0, r0, #0x48
007f3a98  1e ff 2f e1                                      bx lr

; FUNCTION 0x007f3a9c, declared_size=20, range_size=20, mode=arm
; class-group: b2CircleContact
; alias: _ZN15b2CircleContactD0Ev
; demangled: b2CircleContact::~b2CircleContact()
; decoder-mode: arm
007f3a9c  10 40 2d e9                                      push {r4, lr}
007f3aa0  00 40 a0 e1                                      mov r4, r0
007f3aa4  01 6a ec eb                                      bl #0x30e2b0
007f3aa8  04 00 a0 e1                                      mov r0, r4
007f3aac  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007f3ab0, declared_size=72, range_size=72, mode=arm
; class-group: b2CircleContact
; alias: _ZN15b2CircleContactC1EP7b2ShapeS1_
; demangled: b2CircleContact::b2CircleContact(b2Shape*, b2Shape*)
; decoder-mode: arm
007f3ab0  70 40 2d e9                                      push {r4, r5, r6, lr}
007f3ab4  34 50 9f e5                                      ldr r5, [pc, #0x34]
007f3ab8  00 40 a0 e1                                      mov r4, r0
007f3abc  fd d8 ff eb                                      bl #0x7e9eb8
007f3ac0  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
007f3ac4  05 50 8f e0                                      add r5, pc, r5
007f3ac8  00 20 a0 e3                                      mov r2, #0
007f3acc  03 30 95 e7                                      ldr r3, [r5, r3]
007f3ad0  00 10 a0 e3                                      mov r1, #0
007f3ad4  90 10 84 e5                                      str r1, [r4, #0x90]
007f3ad8  08 30 83 e2                                      add r3, r3, #8
007f3adc  00 30 84 e5                                      str r3, [r4]
007f3ae0  60 20 84 e5                                      str r2, [r4, #0x60]
007f3ae4  5c 20 84 e5                                      str r2, [r4, #0x5c]
007f3ae8  04 00 a0 e1                                      mov r0, r4
007f3aec  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007f3af0  cc 0f 1a 00 04 31 00 00                          .byte 0xcc, 0x0f, 0x1a, 0x00, 0x04, 0x31, 0x00, 0x00

; FUNCTION 0x007f3af8, declared_size=72, range_size=72, mode=arm
; class-group: b2CircleContact
; alias: _ZN15b2CircleContactC2EP7b2ShapeS1_
; demangled: b2CircleContact::b2CircleContact(b2Shape*, b2Shape*)
; decoder-mode: arm
007f3af8  70 40 2d e9                                      push {r4, r5, r6, lr}
007f3afc  34 50 9f e5                                      ldr r5, [pc, #0x34]
007f3b00  00 40 a0 e1                                      mov r4, r0
007f3b04  eb d8 ff eb                                      bl #0x7e9eb8
007f3b08  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
007f3b0c  05 50 8f e0                                      add r5, pc, r5
007f3b10  00 20 a0 e3                                      mov r2, #0
007f3b14  03 30 95 e7                                      ldr r3, [r5, r3]
007f3b18  00 10 a0 e3                                      mov r1, #0
007f3b1c  90 10 84 e5                                      str r1, [r4, #0x90]
007f3b20  08 30 83 e2                                      add r3, r3, #8
007f3b24  00 30 84 e5                                      str r3, [r4]
007f3b28  60 20 84 e5                                      str r2, [r4, #0x60]
007f3b2c  5c 20 84 e5                                      str r2, [r4, #0x5c]
007f3b30  04 00 a0 e1                                      mov r0, r4
007f3b34  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007f3b38  84 0f 1a 00 04 31 00 00                          .byte 0x84, 0x0f, 0x1a, 0x00, 0x04, 0x31, 0x00, 0x00

; FUNCTION 0x007f3b40, declared_size=44, range_size=44, mode=arm
; class-group: b2CircleContact
; alias: _ZN15b2CircleContact7DestroyEP9b2ContactP16b2BlockAllocator
; demangled: b2CircleContact::Destroy(b2Contact*, b2BlockAllocator*)
; decoder-mode: arm
007f3b40  70 40 2d e9                                      push {r4, r5, r6, lr}
007f3b44  00 30 90 e5                                      ldr r3, [r0]
007f3b48  01 50 a0 e1                                      mov r5, r1
007f3b4c  00 40 a0 e1                                      mov r4, r0
007f3b50  0f e0 a0 e1                                      mov lr, pc
007f3b54  04 f0 93 e5                                      ldr pc, [r3, #4]
007f3b58  05 00 a0 e1                                      mov r0, r5
007f3b5c  04 10 a0 e1                                      mov r1, r4
007f3b60  94 20 a0 e3                                      mov r2, #0x94
007f3b64  70 40 bd e8                                      pop {r4, r5, r6, lr}
007f3b68  8c d4 ff ea                                      b #0x7e8da0

; FUNCTION 0x007f3b6c, declared_size=48, range_size=48, mode=arm
; class-group: b2CircleContact
; alias: _ZN15b2CircleContact6CreateEP7b2ShapeS1_P16b2BlockAllocator
; demangled: b2CircleContact::Create(b2Shape*, b2Shape*, b2BlockAllocator*)
; decoder-mode: arm
007f3b6c  70 40 2d e9                                      push {r4, r5, r6, lr}
007f3b70  00 60 a0 e1                                      mov r6, r0
007f3b74  01 50 a0 e1                                      mov r5, r1
007f3b78  02 00 a0 e1                                      mov r0, r2
007f3b7c  94 10 a0 e3                                      mov r1, #0x94
007f3b80  4d d5 ff eb                                      bl #0x7e90bc
007f3b84  06 10 a0 e1                                      mov r1, r6
007f3b88  00 40 a0 e1                                      mov r4, r0
007f3b8c  05 20 a0 e1                                      mov r2, r5
007f3b90  c6 ff ff eb                                      bl #0x7f3ab0
007f3b94  04 00 a0 e1                                      mov r0, r4
007f3b98  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007f3b9c, declared_size=2184, range_size=2184, mode=arm
; class-group: b2CircleContact
; alias: _ZN15b2CircleContact8EvaluateEP17b2ContactListener
; demangled: b2CircleContact::Evaluate(b2ContactListener*)
; decoder-mode: arm
007f3b9c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007f3ba0  38 90 90 e5                                      ldr sb, [r0, #0x38]
007f3ba4  34 80 90 e5                                      ldr r8, [r0, #0x34]
007f3ba8  a4 d0 4d e2                                      sub sp, sp, #0xa4
007f3bac  0c 60 99 e5                                      ldr r6, [sb, #0xc]
007f3bb0  48 a0 80 e2                                      add sl, r0, #0x48
007f3bb4  00 40 a0 e1                                      mov r4, r0
007f3bb8  4c 20 a0 e3                                      mov r2, #0x4c
007f3bbc  01 70 a0 e1                                      mov r7, r1
007f3bc0  24 00 8d e2                                      add r0, sp, #0x24
007f3bc4  0a 10 a0 e1                                      mov r1, sl
007f3bc8  0c 50 98 e5                                      ldr r5, [r8, #0xc]
007f3bcc  25 6b ec eb                                      bl #0x30e868
007f3bd0  04 c0 86 e2                                      add ip, r6, #4
007f3bd4  00 c0 8d e5                                      str ip, [sp]
007f3bd8  68 c0 9d e5                                      ldr ip, [sp, #0x68]
007f3bdc  0a 00 a0 e1                                      mov r0, sl
007f3be0  08 10 a0 e1                                      mov r1, r8
007f3be4  14 c0 8d e5                                      str ip, [sp, #0x14]
007f3be8  64 c0 9d e5                                      ldr ip, [sp, #0x64]
007f3bec  09 30 a0 e1                                      mov r3, sb
007f3bf0  04 20 85 e2                                      add r2, r5, #4
007f3bf4  18 c0 8d e5                                      str ip, [sp, #0x18]
007f3bf8  34 c0 9d e5                                      ldr ip, [sp, #0x34]
007f3bfc  28 90 9d e5                                      ldr sb, [sp, #0x28]
007f3c00  24 a0 9d e5                                      ldr sl, [sp, #0x24]
007f3c04  1c c0 8d e5                                      str ip, [sp, #0x1c]
007f3c08  30 c0 9d e5                                      ldr ip, [sp, #0x30]
007f3c0c  38 b0 9d e5                                      ldr fp, [sp, #0x38]
007f3c10  6c 80 9d e5                                      ldr r8, [sp, #0x6c]
007f3c14  10 c0 8d e5                                      str ip, [sp, #0x10]
007f3c18  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
007f3c1c  0c c0 8d e5                                      str ip, [sp, #0xc]
007f3c20  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
007f3c24  08 c0 8d e5                                      str ip, [sp, #8]
007f3c28  07 04 00 eb                                      bl #0x7f4c4c
007f3c2c  90 00 94 e5                                      ldr r0, [r4, #0x90]
007f3c30  34 c0 94 e5                                      ldr ip, [r4, #0x34]
007f3c34  38 10 94 e5                                      ldr r1, [r4, #0x38]
007f3c38  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
007f3c3c  40 30 94 e5                                      ldr r3, [r4, #0x40]
007f3c40  00 00 50 e3                                      cmp r0, #0
007f3c44  70 c0 8d e5                                      str ip, [sp, #0x70]
007f3c48  74 10 8d e5                                      str r1, [sp, #0x74]
007f3c4c  94 20 8d e5                                      str r2, [sp, #0x94]
007f3c50  98 30 8d e5                                      str r3, [sp, #0x98]
007f3c54  50 01 00 da                                      ble #0x7f419c
007f3c58  01 30 a0 e3                                      mov r3, #1
007f3c5c  00 00 58 e3                                      cmp r8, #0
007f3c60  08 30 84 e5                                      str r3, [r4, #8]
007f3c64  a6 00 00 0a                                      beq #0x7f3f04
007f3c68  5c b0 84 e5                                      str fp, [r4, #0x5c]
007f3c6c  08 30 9d e5                                      ldr r3, [sp, #8]
007f3c70  00 00 57 e3                                      cmp r7, #0
007f3c74  60 30 84 e5                                      str r3, [r4, #0x60]
007f3c78  9f 00 00 0a                                      beq #0x7f3efc
007f3c7c  48 a0 94 e5                                      ldr sl, [r4, #0x48]
007f3c80  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007f3c84  4c 80 94 e5                                      ldr r8, [r4, #0x4c]
007f3c88  0a 00 a0 e1                                      mov r0, sl
007f3c8c  36 6c ec eb                                      bl #0x30ed6c
007f3c90  14 10 95 e5                                      ldr r1, [r5, #0x14]
007f3c94  00 90 a0 e1                                      mov sb, r0
007f3c98  08 00 a0 e1                                      mov r0, r8
007f3c9c  32 6c ec eb                                      bl #0x30ed6c
007f3ca0  00 10 a0 e1                                      mov r1, r0
007f3ca4  09 00 a0 e1                                      mov r0, sb
007f3ca8  bd 6b ec eb                                      bl #0x30eba4
007f3cac  10 10 95 e5                                      ldr r1, [r5, #0x10]
007f3cb0  00 90 a0 e1                                      mov sb, r0
007f3cb4  0a 00 a0 e1                                      mov r0, sl
007f3cb8  2b 6c ec eb                                      bl #0x30ed6c
007f3cbc  18 10 95 e5                                      ldr r1, [r5, #0x18]
007f3cc0  00 b0 a0 e1                                      mov fp, r0
007f3cc4  08 00 a0 e1                                      mov r0, r8
007f3cc8  27 6c ec eb                                      bl #0x30ed6c
007f3ccc  00 10 a0 e1                                      mov r1, r0
007f3cd0  0b 00 a0 e1                                      mov r0, fp
007f3cd4  b2 6b ec eb                                      bl #0x30eba4
007f3cd8  04 10 95 e5                                      ldr r1, [r5, #4]
007f3cdc  00 b0 a0 e1                                      mov fp, r0
007f3ce0  09 00 a0 e1                                      mov r0, sb
007f3ce4  ae 6b ec eb                                      bl #0x30eba4
007f3ce8  08 10 95 e5                                      ldr r1, [r5, #8]
007f3cec  00 90 a0 e1                                      mov sb, r0
007f3cf0  0b 00 a0 e1                                      mov r0, fp
007f3cf4  aa 6b ec eb                                      bl #0x30eba4
007f3cf8  78 90 8d e5                                      str sb, [sp, #0x78]
007f3cfc  7c 00 8d e5                                      str r0, [sp, #0x7c]
007f3d00  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007f3d04  0a 00 a0 e1                                      mov r0, sl
007f3d08  17 6c ec eb                                      bl #0x30ed6c
007f3d0c  14 10 95 e5                                      ldr r1, [r5, #0x14]
007f3d10  00 90 a0 e1                                      mov sb, r0
007f3d14  08 00 a0 e1                                      mov r0, r8
007f3d18  13 6c ec eb                                      bl #0x30ed6c
007f3d1c  00 10 a0 e1                                      mov r1, r0
007f3d20  09 00 a0 e1                                      mov r0, sb
007f3d24  9e 6b ec eb                                      bl #0x30eba4
007f3d28  10 10 95 e5                                      ldr r1, [r5, #0x10]
007f3d2c  00 90 a0 e1                                      mov sb, r0
007f3d30  0a 00 a0 e1                                      mov r0, sl
007f3d34  0c 6c ec eb                                      bl #0x30ed6c
007f3d38  18 10 95 e5                                      ldr r1, [r5, #0x18]
007f3d3c  00 a0 a0 e1                                      mov sl, r0
007f3d40  08 00 a0 e1                                      mov r0, r8
007f3d44  08 6c ec eb                                      bl #0x30ed6c
007f3d48  00 10 a0 e1                                      mov r1, r0
007f3d4c  0a 00 a0 e1                                      mov r0, sl
007f3d50  93 6b ec eb                                      bl #0x30eba4
007f3d54  04 10 95 e5                                      ldr r1, [r5, #4]
007f3d58  00 80 a0 e1                                      mov r8, r0
007f3d5c  09 00 a0 e1                                      mov r0, sb
007f3d60  8f 6b ec eb                                      bl #0x30eba4
007f3d64  08 10 95 e5                                      ldr r1, [r5, #8]
007f3d68  00 90 a0 e1                                      mov sb, r0
007f3d6c  08 00 a0 e1                                      mov r0, r8
007f3d70  8b 6b ec eb                                      bl #0x30eba4
007f3d74  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
007f3d78  00 a0 a0 e1                                      mov sl, r0
007f3d7c  09 00 a0 e1                                      mov r0, sb
007f3d80  89 69 ec eb                                      bl #0x30e3ac
007f3d84  48 80 95 e5                                      ldr r8, [r5, #0x48]
007f3d88  30 10 95 e5                                      ldr r1, [r5, #0x30]
007f3d8c  00 90 a0 e1                                      mov sb, r0
007f3d90  0a 00 a0 e1                                      mov r0, sl
007f3d94  84 69 ec eb                                      bl #0x30e3ac
007f3d98  02 11 88 e2                                      add r1, r8, #0x80000000
007f3d9c  f2 6b ec eb                                      bl #0x30ed6c
007f3da0  09 10 a0 e1                                      mov r1, sb
007f3da4  00 a0 a0 e1                                      mov sl, r0
007f3da8  08 00 a0 e1                                      mov r0, r8
007f3dac  ee 6b ec eb                                      bl #0x30ed6c
007f3db0  40 10 95 e5                                      ldr r1, [r5, #0x40]
007f3db4  00 80 a0 e1                                      mov r8, r0
007f3db8  0a 00 a0 e1                                      mov r0, sl
007f3dbc  78 6b ec eb                                      bl #0x30eba4
007f3dc0  44 10 95 e5                                      ldr r1, [r5, #0x44]
007f3dc4  00 a0 a0 e1                                      mov sl, r0
007f3dc8  08 00 a0 e1                                      mov r0, r8
007f3dcc  74 6b ec eb                                      bl #0x30eba4
007f3dd0  50 80 94 e5                                      ldr r8, [r4, #0x50]
007f3dd4  0c 10 96 e5                                      ldr r1, [r6, #0xc]
007f3dd8  00 90 a0 e1                                      mov sb, r0
007f3ddc  08 00 a0 e1                                      mov r0, r8
007f3de0  e1 6b ec eb                                      bl #0x30ed6c
007f3de4  54 50 94 e5                                      ldr r5, [r4, #0x54]
007f3de8  00 b0 a0 e1                                      mov fp, r0
007f3dec  14 10 96 e5                                      ldr r1, [r6, #0x14]
007f3df0  05 00 a0 e1                                      mov r0, r5
007f3df4  dc 6b ec eb                                      bl #0x30ed6c
007f3df8  00 10 a0 e1                                      mov r1, r0
007f3dfc  0b 00 a0 e1                                      mov r0, fp
007f3e00  67 6b ec eb                                      bl #0x30eba4
007f3e04  10 10 96 e5                                      ldr r1, [r6, #0x10]
007f3e08  00 b0 a0 e1                                      mov fp, r0
007f3e0c  08 00 a0 e1                                      mov r0, r8
007f3e10  d5 6b ec eb                                      bl #0x30ed6c
007f3e14  18 10 96 e5                                      ldr r1, [r6, #0x18]
007f3e18  00 80 a0 e1                                      mov r8, r0
007f3e1c  05 00 a0 e1                                      mov r0, r5
007f3e20  d1 6b ec eb                                      bl #0x30ed6c
007f3e24  00 10 a0 e1                                      mov r1, r0
007f3e28  08 00 a0 e1                                      mov r0, r8
007f3e2c  5c 6b ec eb                                      bl #0x30eba4
007f3e30  04 10 96 e5                                      ldr r1, [r6, #4]
007f3e34  00 50 a0 e1                                      mov r5, r0
007f3e38  0b 00 a0 e1                                      mov r0, fp
007f3e3c  58 6b ec eb                                      bl #0x30eba4
007f3e40  08 10 96 e5                                      ldr r1, [r6, #8]
007f3e44  00 80 a0 e1                                      mov r8, r0
007f3e48  05 00 a0 e1                                      mov r0, r5
007f3e4c  54 6b ec eb                                      bl #0x30eba4
007f3e50  2c 10 96 e5                                      ldr r1, [r6, #0x2c]
007f3e54  00 b0 a0 e1                                      mov fp, r0
007f3e58  08 00 a0 e1                                      mov r0, r8
007f3e5c  52 69 ec eb                                      bl #0x30e3ac
007f3e60  48 50 96 e5                                      ldr r5, [r6, #0x48]
007f3e64  00 80 a0 e1                                      mov r8, r0
007f3e68  30 10 96 e5                                      ldr r1, [r6, #0x30]
007f3e6c  0b 00 a0 e1                                      mov r0, fp
007f3e70  4d 69 ec eb                                      bl #0x30e3ac
007f3e74  02 11 85 e2                                      add r1, r5, #0x80000000
007f3e78  bb 6b ec eb                                      bl #0x30ed6c
007f3e7c  08 10 a0 e1                                      mov r1, r8
007f3e80  00 b0 a0 e1                                      mov fp, r0
007f3e84  05 00 a0 e1                                      mov r0, r5
007f3e88  b7 6b ec eb                                      bl #0x30ed6c
007f3e8c  40 10 96 e5                                      ldr r1, [r6, #0x40]
007f3e90  00 80 a0 e1                                      mov r8, r0
007f3e94  0b 00 a0 e1                                      mov r0, fp
007f3e98  41 6b ec eb                                      bl #0x30eba4
007f3e9c  44 10 96 e5                                      ldr r1, [r6, #0x44]
007f3ea0  00 50 a0 e1                                      mov r5, r0
007f3ea4  08 00 a0 e1                                      mov r0, r8
007f3ea8  3d 6b ec eb                                      bl #0x30eba4
007f3eac  09 10 a0 e1                                      mov r1, sb
007f3eb0  3d 69 ec eb                                      bl #0x30e3ac
007f3eb4  0a 10 a0 e1                                      mov r1, sl
007f3eb8  84 00 8d e5                                      str r0, [sp, #0x84]
007f3ebc  05 00 a0 e1                                      mov r0, r5
007f3ec0  39 69 ec eb                                      bl #0x30e3ac
007f3ec4  64 30 94 e5                                      ldr r3, [r4, #0x64]
007f3ec8  8c 10 94 e5                                      ldr r1, [r4, #0x8c]
007f3ecc  88 c0 94 e5                                      ldr ip, [r4, #0x88]
007f3ed0  58 20 94 e5                                      ldr r2, [r4, #0x58]
007f3ed4  80 00 8d e5                                      str r0, [sp, #0x80]
007f3ed8  8c 10 8d e5                                      str r1, [sp, #0x8c]
007f3edc  88 c0 8d e5                                      str ip, [sp, #0x88]
007f3ee0  90 20 8d e5                                      str r2, [sp, #0x90]
007f3ee4  9c 30 8d e5                                      str r3, [sp, #0x9c]
007f3ee8  07 00 a0 e1                                      mov r0, r7
007f3eec  00 30 97 e5                                      ldr r3, [r7]
007f3ef0  70 10 8d e2                                      add r1, sp, #0x70
007f3ef4  0f e0 a0 e1                                      mov lr, pc
007f3ef8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
007f3efc  a4 d0 8d e2                                      add sp, sp, #0xa4
007f3f00  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007f3f04  00 30 a0 e3                                      mov r3, #0
007f3f08  00 00 57 e3                                      cmp r7, #0
007f3f0c  60 30 84 e5                                      str r3, [r4, #0x60]
007f3f10  5c 30 84 e5                                      str r3, [r4, #0x5c]
007f3f14  f8 ff ff 0a                                      beq #0x7f3efc
007f3f18  48 a0 94 e5                                      ldr sl, [r4, #0x48]
007f3f1c  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007f3f20  4c 80 94 e5                                      ldr r8, [r4, #0x4c]
007f3f24  0a 00 a0 e1                                      mov r0, sl
007f3f28  8f 6b ec eb                                      bl #0x30ed6c
007f3f2c  14 10 95 e5                                      ldr r1, [r5, #0x14]
007f3f30  00 90 a0 e1                                      mov sb, r0
007f3f34  08 00 a0 e1                                      mov r0, r8
007f3f38  8b 6b ec eb                                      bl #0x30ed6c
007f3f3c  00 10 a0 e1                                      mov r1, r0
007f3f40  09 00 a0 e1                                      mov r0, sb
007f3f44  16 6b ec eb                                      bl #0x30eba4
007f3f48  10 10 95 e5                                      ldr r1, [r5, #0x10]
007f3f4c  00 90 a0 e1                                      mov sb, r0
007f3f50  0a 00 a0 e1                                      mov r0, sl
007f3f54  84 6b ec eb                                      bl #0x30ed6c
007f3f58  18 10 95 e5                                      ldr r1, [r5, #0x18]
007f3f5c  00 b0 a0 e1                                      mov fp, r0
007f3f60  08 00 a0 e1                                      mov r0, r8
007f3f64  80 6b ec eb                                      bl #0x30ed6c
007f3f68  00 10 a0 e1                                      mov r1, r0
007f3f6c  0b 00 a0 e1                                      mov r0, fp
007f3f70  0b 6b ec eb                                      bl #0x30eba4
007f3f74  04 10 95 e5                                      ldr r1, [r5, #4]
007f3f78  00 b0 a0 e1                                      mov fp, r0
007f3f7c  09 00 a0 e1                                      mov r0, sb
007f3f80  07 6b ec eb                                      bl #0x30eba4
007f3f84  08 10 95 e5                                      ldr r1, [r5, #8]
007f3f88  00 90 a0 e1                                      mov sb, r0
007f3f8c  0b 00 a0 e1                                      mov r0, fp
007f3f90  03 6b ec eb                                      bl #0x30eba4
007f3f94  78 90 8d e5                                      str sb, [sp, #0x78]
007f3f98  7c 00 8d e5                                      str r0, [sp, #0x7c]
007f3f9c  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007f3fa0  0a 00 a0 e1                                      mov r0, sl
007f3fa4  70 6b ec eb                                      bl #0x30ed6c
007f3fa8  14 10 95 e5                                      ldr r1, [r5, #0x14]
007f3fac  00 90 a0 e1                                      mov sb, r0
007f3fb0  08 00 a0 e1                                      mov r0, r8
007f3fb4  6c 6b ec eb                                      bl #0x30ed6c
007f3fb8  00 10 a0 e1                                      mov r1, r0
007f3fbc  09 00 a0 e1                                      mov r0, sb
007f3fc0  f7 6a ec eb                                      bl #0x30eba4
007f3fc4  10 10 95 e5                                      ldr r1, [r5, #0x10]
007f3fc8  00 90 a0 e1                                      mov sb, r0
007f3fcc  0a 00 a0 e1                                      mov r0, sl
007f3fd0  65 6b ec eb                                      bl #0x30ed6c
007f3fd4  18 10 95 e5                                      ldr r1, [r5, #0x18]
007f3fd8  00 a0 a0 e1                                      mov sl, r0
007f3fdc  08 00 a0 e1                                      mov r0, r8
007f3fe0  61 6b ec eb                                      bl #0x30ed6c
007f3fe4  00 10 a0 e1                                      mov r1, r0
007f3fe8  0a 00 a0 e1                                      mov r0, sl
007f3fec  ec 6a ec eb                                      bl #0x30eba4
007f3ff0  04 10 95 e5                                      ldr r1, [r5, #4]
007f3ff4  00 80 a0 e1                                      mov r8, r0
007f3ff8  09 00 a0 e1                                      mov r0, sb
007f3ffc  e8 6a ec eb                                      bl #0x30eba4
007f4000  08 10 95 e5                                      ldr r1, [r5, #8]
007f4004  00 90 a0 e1                                      mov sb, r0
007f4008  08 00 a0 e1                                      mov r0, r8
007f400c  e4 6a ec eb                                      bl #0x30eba4
007f4010  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
007f4014  00 a0 a0 e1                                      mov sl, r0
007f4018  09 00 a0 e1                                      mov r0, sb
007f401c  e2 68 ec eb                                      bl #0x30e3ac
007f4020  48 80 95 e5                                      ldr r8, [r5, #0x48]
007f4024  30 10 95 e5                                      ldr r1, [r5, #0x30]
007f4028  00 90 a0 e1                                      mov sb, r0
007f402c  0a 00 a0 e1                                      mov r0, sl
007f4030  dd 68 ec eb                                      bl #0x30e3ac
007f4034  02 11 88 e2                                      add r1, r8, #0x80000000
007f4038  4b 6b ec eb                                      bl #0x30ed6c
007f403c  09 10 a0 e1                                      mov r1, sb
007f4040  00 a0 a0 e1                                      mov sl, r0
007f4044  08 00 a0 e1                                      mov r0, r8
007f4048  47 6b ec eb                                      bl #0x30ed6c
007f404c  40 10 95 e5                                      ldr r1, [r5, #0x40]
007f4050  00 80 a0 e1                                      mov r8, r0
007f4054  0a 00 a0 e1                                      mov r0, sl
007f4058  d1 6a ec eb                                      bl #0x30eba4
007f405c  44 10 95 e5                                      ldr r1, [r5, #0x44]
007f4060  00 a0 a0 e1                                      mov sl, r0
007f4064  08 00 a0 e1                                      mov r0, r8
007f4068  cd 6a ec eb                                      bl #0x30eba4
007f406c  50 80 94 e5                                      ldr r8, [r4, #0x50]
007f4070  0c 10 96 e5                                      ldr r1, [r6, #0xc]
007f4074  00 90 a0 e1                                      mov sb, r0
007f4078  08 00 a0 e1                                      mov r0, r8
007f407c  3a 6b ec eb                                      bl #0x30ed6c
007f4080  54 50 94 e5                                      ldr r5, [r4, #0x54]
007f4084  14 10 96 e5                                      ldr r1, [r6, #0x14]
007f4088  00 b0 a0 e1                                      mov fp, r0
007f408c  05 00 a0 e1                                      mov r0, r5
007f4090  35 6b ec eb                                      bl #0x30ed6c
007f4094  00 10 a0 e1                                      mov r1, r0
007f4098  0b 00 a0 e1                                      mov r0, fp
007f409c  c0 6a ec eb                                      bl #0x30eba4
007f40a0  10 10 96 e5                                      ldr r1, [r6, #0x10]
007f40a4  00 b0 a0 e1                                      mov fp, r0
007f40a8  08 00 a0 e1                                      mov r0, r8
007f40ac  2e 6b ec eb                                      bl #0x30ed6c
007f40b0  18 10 96 e5                                      ldr r1, [r6, #0x18]
007f40b4  00 80 a0 e1                                      mov r8, r0
007f40b8  05 00 a0 e1                                      mov r0, r5
007f40bc  2a 6b ec eb                                      bl #0x30ed6c
007f40c0  00 10 a0 e1                                      mov r1, r0
007f40c4  08 00 a0 e1                                      mov r0, r8
007f40c8  b5 6a ec eb                                      bl #0x30eba4
007f40cc  04 10 96 e5                                      ldr r1, [r6, #4]
007f40d0  00 50 a0 e1                                      mov r5, r0
007f40d4  0b 00 a0 e1                                      mov r0, fp
007f40d8  b1 6a ec eb                                      bl #0x30eba4
007f40dc  08 10 96 e5                                      ldr r1, [r6, #8]
007f40e0  00 80 a0 e1                                      mov r8, r0
007f40e4  05 00 a0 e1                                      mov r0, r5
007f40e8  ad 6a ec eb                                      bl #0x30eba4
007f40ec  2c 10 96 e5                                      ldr r1, [r6, #0x2c]
007f40f0  00 b0 a0 e1                                      mov fp, r0
007f40f4  08 00 a0 e1                                      mov r0, r8
007f40f8  ab 68 ec eb                                      bl #0x30e3ac
007f40fc  48 50 96 e5                                      ldr r5, [r6, #0x48]
007f4100  30 10 96 e5                                      ldr r1, [r6, #0x30]
007f4104  00 80 a0 e1                                      mov r8, r0
007f4108  0b 00 a0 e1                                      mov r0, fp
007f410c  a6 68 ec eb                                      bl #0x30e3ac
007f4110  02 11 85 e2                                      add r1, r5, #0x80000000
007f4114  14 6b ec eb                                      bl #0x30ed6c
007f4118  08 10 a0 e1                                      mov r1, r8
007f411c  00 b0 a0 e1                                      mov fp, r0
007f4120  05 00 a0 e1                                      mov r0, r5
007f4124  10 6b ec eb                                      bl #0x30ed6c
007f4128  40 10 96 e5                                      ldr r1, [r6, #0x40]
007f412c  00 80 a0 e1                                      mov r8, r0
007f4130  0b 00 a0 e1                                      mov r0, fp
007f4134  9a 6a ec eb                                      bl #0x30eba4
007f4138  44 10 96 e5                                      ldr r1, [r6, #0x44]
007f413c  00 50 a0 e1                                      mov r5, r0
007f4140  08 00 a0 e1                                      mov r0, r8
007f4144  96 6a ec eb                                      bl #0x30eba4
007f4148  09 10 a0 e1                                      mov r1, sb
007f414c  96 68 ec eb                                      bl #0x30e3ac
007f4150  0a 10 a0 e1                                      mov r1, sl
007f4154  84 00 8d e5                                      str r0, [sp, #0x84]
007f4158  05 00 a0 e1                                      mov r0, r5
007f415c  92 68 ec eb                                      bl #0x30e3ac
007f4160  64 30 94 e5                                      ldr r3, [r4, #0x64]
007f4164  8c 10 94 e5                                      ldr r1, [r4, #0x8c]
007f4168  88 c0 94 e5                                      ldr ip, [r4, #0x88]
007f416c  58 20 94 e5                                      ldr r2, [r4, #0x58]
007f4170  80 00 8d e5                                      str r0, [sp, #0x80]
007f4174  8c 10 8d e5                                      str r1, [sp, #0x8c]
007f4178  88 c0 8d e5                                      str ip, [sp, #0x88]
007f417c  90 20 8d e5                                      str r2, [sp, #0x90]
007f4180  9c 30 8d e5                                      str r3, [sp, #0x9c]
007f4184  07 00 a0 e1                                      mov r0, r7
007f4188  00 30 97 e5                                      ldr r3, [r7]
007f418c  70 10 8d e2                                      add r1, sp, #0x70
007f4190  0f e0 a0 e1                                      mov lr, pc
007f4194  08 f0 93 e5                                      ldr pc, [r3, #8]
007f4198  57 ff ff ea                                      b #0x7f3efc
007f419c  00 30 a0 e3                                      mov r3, #0
007f41a0  00 00 57 e3                                      cmp r7, #0
007f41a4  00 00 58 13                                      cmpne r8, #0
007f41a8  08 30 84 e5                                      str r3, [r4, #8]
007f41ac  52 ff ff da                                      ble #0x7f3efc
007f41b0  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007f41b4  0a 00 a0 e1                                      mov r0, sl
007f41b8  eb 6a ec eb                                      bl #0x30ed6c
007f41bc  14 10 95 e5                                      ldr r1, [r5, #0x14]
007f41c0  00 40 a0 e1                                      mov r4, r0
007f41c4  09 00 a0 e1                                      mov r0, sb
007f41c8  e7 6a ec eb                                      bl #0x30ed6c
007f41cc  00 10 a0 e1                                      mov r1, r0
007f41d0  04 00 a0 e1                                      mov r0, r4
007f41d4  72 6a ec eb                                      bl #0x30eba4
007f41d8  10 10 95 e5                                      ldr r1, [r5, #0x10]
007f41dc  00 80 a0 e1                                      mov r8, r0
007f41e0  0a 00 a0 e1                                      mov r0, sl
007f41e4  e0 6a ec eb                                      bl #0x30ed6c
007f41e8  18 10 95 e5                                      ldr r1, [r5, #0x18]
007f41ec  00 40 a0 e1                                      mov r4, r0
007f41f0  09 00 a0 e1                                      mov r0, sb
007f41f4  dc 6a ec eb                                      bl #0x30ed6c
007f41f8  00 10 a0 e1                                      mov r1, r0
007f41fc  04 00 a0 e1                                      mov r0, r4
007f4200  67 6a ec eb                                      bl #0x30eba4
007f4204  04 10 95 e5                                      ldr r1, [r5, #4]
007f4208  00 40 a0 e1                                      mov r4, r0
007f420c  08 00 a0 e1                                      mov r0, r8
007f4210  63 6a ec eb                                      bl #0x30eba4
007f4214  08 10 95 e5                                      ldr r1, [r5, #8]
007f4218  00 80 a0 e1                                      mov r8, r0
007f421c  04 00 a0 e1                                      mov r0, r4
007f4220  5f 6a ec eb                                      bl #0x30eba4
007f4224  78 80 8d e5                                      str r8, [sp, #0x78]
007f4228  7c 00 8d e5                                      str r0, [sp, #0x7c]
007f422c  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007f4230  0a 00 a0 e1                                      mov r0, sl
007f4234  cc 6a ec eb                                      bl #0x30ed6c
007f4238  14 10 95 e5                                      ldr r1, [r5, #0x14]
007f423c  00 40 a0 e1                                      mov r4, r0
007f4240  09 00 a0 e1                                      mov r0, sb
007f4244  c8 6a ec eb                                      bl #0x30ed6c
007f4248  00 10 a0 e1                                      mov r1, r0
007f424c  04 00 a0 e1                                      mov r0, r4
007f4250  53 6a ec eb                                      bl #0x30eba4
007f4254  10 10 95 e5                                      ldr r1, [r5, #0x10]
007f4258  00 80 a0 e1                                      mov r8, r0
007f425c  0a 00 a0 e1                                      mov r0, sl
007f4260  c1 6a ec eb                                      bl #0x30ed6c
007f4264  18 10 95 e5                                      ldr r1, [r5, #0x18]
007f4268  00 40 a0 e1                                      mov r4, r0
007f426c  09 00 a0 e1                                      mov r0, sb
007f4270  bd 6a ec eb                                      bl #0x30ed6c
007f4274  00 10 a0 e1                                      mov r1, r0
007f4278  04 00 a0 e1                                      mov r0, r4
007f427c  48 6a ec eb                                      bl #0x30eba4
007f4280  04 10 95 e5                                      ldr r1, [r5, #4]
007f4284  00 40 a0 e1                                      mov r4, r0
007f4288  08 00 a0 e1                                      mov r0, r8
007f428c  44 6a ec eb                                      bl #0x30eba4
007f4290  08 10 95 e5                                      ldr r1, [r5, #8]
007f4294  00 80 a0 e1                                      mov r8, r0
007f4298  04 00 a0 e1                                      mov r0, r4
007f429c  40 6a ec eb                                      bl #0x30eba4
007f42a0  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
007f42a4  00 a0 a0 e1                                      mov sl, r0
007f42a8  08 00 a0 e1                                      mov r0, r8
007f42ac  3e 68 ec eb                                      bl #0x30e3ac
007f42b0  48 90 95 e5                                      ldr sb, [r5, #0x48]
007f42b4  30 10 95 e5                                      ldr r1, [r5, #0x30]
007f42b8  00 40 a0 e1                                      mov r4, r0
007f42bc  0a 00 a0 e1                                      mov r0, sl
007f42c0  39 68 ec eb                                      bl #0x30e3ac
007f42c4  02 11 89 e2                                      add r1, sb, #0x80000000
007f42c8  a7 6a ec eb                                      bl #0x30ed6c
007f42cc  04 10 a0 e1                                      mov r1, r4
007f42d0  00 80 a0 e1                                      mov r8, r0
007f42d4  09 00 a0 e1                                      mov r0, sb
007f42d8  a3 6a ec eb                                      bl #0x30ed6c
007f42dc  40 10 95 e5                                      ldr r1, [r5, #0x40]
007f42e0  00 40 a0 e1                                      mov r4, r0
007f42e4  08 00 a0 e1                                      mov r0, r8
007f42e8  2d 6a ec eb                                      bl #0x30eba4
007f42ec  44 10 95 e5                                      ldr r1, [r5, #0x44]
007f42f0  00 90 a0 e1                                      mov sb, r0
007f42f4  04 00 a0 e1                                      mov r0, r4
007f42f8  29 6a ec eb                                      bl #0x30eba4
007f42fc  0c 10 96 e5                                      ldr r1, [r6, #0xc]
007f4300  00 a0 a0 e1                                      mov sl, r0
007f4304  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007f4308  97 6a ec eb                                      bl #0x30ed6c
007f430c  14 10 96 e5                                      ldr r1, [r6, #0x14]
007f4310  00 40 a0 e1                                      mov r4, r0
007f4314  10 00 9d e5                                      ldr r0, [sp, #0x10]
007f4318  93 6a ec eb                                      bl #0x30ed6c
007f431c  00 10 a0 e1                                      mov r1, r0
007f4320  04 00 a0 e1                                      mov r0, r4
007f4324  1e 6a ec eb                                      bl #0x30eba4
007f4328  10 10 96 e5                                      ldr r1, [r6, #0x10]
007f432c  00 40 a0 e1                                      mov r4, r0
007f4330  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007f4334  8c 6a ec eb                                      bl #0x30ed6c
007f4338  18 10 96 e5                                      ldr r1, [r6, #0x18]
007f433c  00 50 a0 e1                                      mov r5, r0
007f4340  10 00 9d e5                                      ldr r0, [sp, #0x10]
007f4344  88 6a ec eb                                      bl #0x30ed6c
007f4348  00 10 a0 e1                                      mov r1, r0
007f434c  05 00 a0 e1                                      mov r0, r5
007f4350  13 6a ec eb                                      bl #0x30eba4
007f4354  04 10 96 e5                                      ldr r1, [r6, #4]
007f4358  00 50 a0 e1                                      mov r5, r0
007f435c  04 00 a0 e1                                      mov r0, r4
007f4360  0f 6a ec eb                                      bl #0x30eba4
007f4364  08 10 96 e5                                      ldr r1, [r6, #8]
007f4368  00 80 a0 e1                                      mov r8, r0
007f436c  05 00 a0 e1                                      mov r0, r5
007f4370  0b 6a ec eb                                      bl #0x30eba4
007f4374  2c 10 96 e5                                      ldr r1, [r6, #0x2c]
007f4378  00 50 a0 e1                                      mov r5, r0
007f437c  08 00 a0 e1                                      mov r0, r8
007f4380  09 68 ec eb                                      bl #0x30e3ac
007f4384  48 40 96 e5                                      ldr r4, [r6, #0x48]
007f4388  30 10 96 e5                                      ldr r1, [r6, #0x30]
007f438c  00 80 a0 e1                                      mov r8, r0
007f4390  05 00 a0 e1                                      mov r0, r5
007f4394  04 68 ec eb                                      bl #0x30e3ac
007f4398  02 11 84 e2                                      add r1, r4, #0x80000000
007f439c  72 6a ec eb                                      bl #0x30ed6c
007f43a0  08 10 a0 e1                                      mov r1, r8
007f43a4  00 50 a0 e1                                      mov r5, r0
007f43a8  04 00 a0 e1                                      mov r0, r4
007f43ac  6e 6a ec eb                                      bl #0x30ed6c
007f43b0  40 10 96 e5                                      ldr r1, [r6, #0x40]
007f43b4  00 40 a0 e1                                      mov r4, r0
007f43b8  05 00 a0 e1                                      mov r0, r5
007f43bc  f8 69 ec eb                                      bl #0x30eba4
007f43c0  44 10 96 e5                                      ldr r1, [r6, #0x44]
007f43c4  00 50 a0 e1                                      mov r5, r0
007f43c8  04 00 a0 e1                                      mov r0, r4
007f43cc  f4 69 ec eb                                      bl #0x30eba4
007f43d0  0a 10 a0 e1                                      mov r1, sl
007f43d4  f4 67 ec eb                                      bl #0x30e3ac
007f43d8  09 10 a0 e1                                      mov r1, sb
007f43dc  84 00 8d e5                                      str r0, [sp, #0x84]
007f43e0  05 00 a0 e1                                      mov r0, r5
007f43e4  f0 67 ec eb                                      bl #0x30e3ac
007f43e8  14 c0 9d e5                                      ldr ip, [sp, #0x14]
007f43ec  18 30 9d e5                                      ldr r3, [sp, #0x18]
007f43f0  80 00 8d e5                                      str r0, [sp, #0x80]
007f43f4  8c c0 8d e5                                      str ip, [sp, #0x8c]
007f43f8  88 30 8d e5                                      str r3, [sp, #0x88]
007f43fc  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
007f4400  40 30 9d e5                                      ldr r3, [sp, #0x40]
007f4404  07 00 a0 e1                                      mov r0, r7
007f4408  90 c0 8d e5                                      str ip, [sp, #0x90]
007f440c  9c 30 8d e5                                      str r3, [sp, #0x9c]
007f4410  00 30 97 e5                                      ldr r3, [r7]
007f4414  70 10 8d e2                                      add r1, sp, #0x70
007f4418  0f e0 a0 e1                                      mov lr, pc
007f441c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
007f4420  b5 fe ff ea                                      b #0x7f3efc
