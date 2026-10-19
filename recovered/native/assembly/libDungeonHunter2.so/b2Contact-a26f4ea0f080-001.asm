; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007e65c0, declared_size=4, range_size=4, mode=arm
; class-group: b2Contact
; alias: _ZN9b2ContactD1Ev
; demangled: b2Contact::~b2Contact()
; decoder-mode: arm
007e65c0  1e ff 2f e1                                      bx lr

; FUNCTION 0x007e8090, declared_size=20, range_size=20, mode=arm
; class-group: b2Contact
; alias: _ZN9b2ContactD0Ev
; demangled: b2Contact::~b2Contact()
; decoder-mode: arm
007e8090  10 40 2d e9                                      push {r4, lr}
007e8094  00 40 a0 e1                                      mov r4, r0
007e8098  84 98 ec eb                                      bl #0x30e2b0
007e809c  04 00 a0 e1                                      mov r0, r4
007e80a0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007e9a9c, declared_size=108, range_size=108, mode=arm
; class-group: b2Contact
; alias: _ZN9b2Contact7AddTypeEPFPS_P7b2ShapeS2_P16b2BlockAllocatorEPFvS0_S4_E11b2ShapeTypeS9_
; demangled: b2Contact::AddType(b2Contact* (*)(b2Shape*, b2Shape*, b2BlockAllocator*), void (*)(b2Contact*, b2BlockAllocator*), b2ShapeType, b2ShapeType)
; decoder-mode: arm
007e9a9c  f0 00 2d e9                                      push {r4, r5, r6, r7}
007e9aa0  58 c0 9f e5                                      ldr ip, [pc, #0x58]
007e9aa4  18 40 a0 e3                                      mov r4, #0x18
007e9aa8  94 02 05 e0                                      mul r5, r4, r2
007e9aac  50 60 9f e5                                      ldr r6, [pc, #0x50]
007e9ab0  0c c0 8f e0                                      add ip, pc, ip
007e9ab4  0c 70 a0 e3                                      mov r7, #0xc
007e9ab8  97 53 25 e0                                      mla r5, r7, r3, r5
007e9abc  06 60 9c e7                                      ldr r6, [ip, r6]
007e9ac0  03 00 52 e1                                      cmp r2, r3
007e9ac4  05 c0 86 e0                                      add ip, r6, r5
007e9ac8  05 00 86 e7                                      str r0, [r6, r5]
007e9acc  01 50 a0 e3                                      mov r5, #1
007e9ad0  08 50 cc e5                                      strb r5, [ip, #8]
007e9ad4  04 10 8c e5                                      str r1, [ip, #4]
007e9ad8  06 00 00 0a                                      beq #0x7e9af8
007e9adc  94 03 04 e0                                      mul r4, r4, r3
007e9ae0  00 30 a0 e3                                      mov r3, #0
007e9ae4  97 42 22 e0                                      mla r2, r7, r2, r4
007e9ae8  02 c0 86 e0                                      add ip, r6, r2
007e9aec  02 00 86 e7                                      str r0, [r6, r2]
007e9af0  08 30 cc e5                                      strb r3, [ip, #8]
007e9af4  04 10 8c e5                                      str r1, [ip, #4]
007e9af8  f0 00 bd e8                                      pop {r4, r5, r6, r7}
007e9afc  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
007e9b00  e0 af 1a 00 f4 11 00 00                          .byte 0xe0, 0xaf, 0x1a, 0x00, 0xf4, 0x11, 0x00, 0x00

; FUNCTION 0x007e9b08, declared_size=128, range_size=128, mode=arm
; class-group: b2Contact
; alias: _ZN9b2Contact19InitializeRegistersEv
; demangled: b2Contact::InitializeRegisters()
; decoder-mode: arm
007e9b08  10 40 2d e9                                      push {r4, lr}
007e9b0c  58 40 9f e5                                      ldr r4, [pc, #0x58]
007e9b10  58 30 9f e5                                      ldr r3, [pc, #0x58]
007e9b14  00 20 a0 e3                                      mov r2, #0
007e9b18  04 40 8f e0                                      add r4, pc, r4
007e9b1c  03 00 94 e7                                      ldr r0, [r4, r3]
007e9b20  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
007e9b24  03 10 94 e7                                      ldr r1, [r4, r3]
007e9b28  02 30 a0 e1                                      mov r3, r2
007e9b2c  da ff ff eb                                      bl #0x7e9a9c
007e9b30  40 30 9f e5                                      ldr r3, [pc, #0x40]
007e9b34  01 20 a0 e3                                      mov r2, #1
007e9b38  03 00 94 e7                                      ldr r0, [r4, r3]
007e9b3c  38 30 9f e5                                      ldr r3, [pc, #0x38]
007e9b40  03 10 94 e7                                      ldr r1, [r4, r3]
007e9b44  00 30 a0 e3                                      mov r3, #0
007e9b48  d3 ff ff eb                                      bl #0x7e9a9c
007e9b4c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
007e9b50  01 20 a0 e3                                      mov r2, #1
007e9b54  03 00 94 e7                                      ldr r0, [r4, r3]
007e9b58  24 30 9f e5                                      ldr r3, [pc, #0x24]
007e9b5c  03 10 94 e7                                      ldr r1, [r4, r3]
007e9b60  02 30 a0 e1                                      mov r3, r2
007e9b64  10 40 bd e8                                      pop {r4, lr}
007e9b68  cb ff ff ea                                      b #0x7e9a9c
; mapping-symbol data/literal pool
007e9b6c  78 af 1a 00 fc 3e 00 00 5c 24 00 00 80 08 00 00  .byte 0x78, 0xaf, 0x1a, 0x00, 0xfc, 0x3e, 0x00, 0x00, 0x5c, 0x24, 0x00, 0x00, 0x80, 0x08, 0x00, 0x00
007e9b7c  ac 39 00 00 d4 32 00 00 58 1c 00 00              .byte 0xac, 0x39, 0x00, 0x00, 0xd4, 0x32, 0x00, 0x00, 0x58, 0x1c, 0x00, 0x00

; FUNCTION 0x007e9b88, declared_size=272, range_size=272, mode=arm
; class-group: b2Contact
; alias: _ZN9b2Contact6CreateEP7b2ShapeS1_P16b2BlockAllocator
; demangled: b2Contact::Create(b2Shape*, b2Shape*, b2BlockAllocator*)
; decoder-mode: arm
007e9b88  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
007e9b8c  f8 40 9f e5                                      ldr r4, [pc, #0xf8]
007e9b90  f8 30 9f e5                                      ldr r3, [pc, #0xf8]
007e9b94  0c d0 4d e2                                      sub sp, sp, #0xc
007e9b98  04 40 8f e0                                      add r4, pc, r4
007e9b9c  03 70 94 e7                                      ldr r7, [r4, r3]
007e9ba0  00 50 a0 e1                                      mov r5, r0
007e9ba4  01 60 a0 e1                                      mov r6, r1
007e9ba8  00 30 d7 e5                                      ldrb r3, [r7]
007e9bac  00 00 53 e3                                      cmp r3, #0
007e9bb0  2f 00 00 0a                                      beq #0x7e9c74
007e9bb4  04 30 95 e5                                      ldr r3, [r5, #4]
007e9bb8  18 10 a0 e3                                      mov r1, #0x18
007e9bbc  04 00 96 e5                                      ldr r0, [r6, #4]
007e9bc0  91 03 03 e0                                      mul r3, r1, r3
007e9bc4  0c 10 a0 e3                                      mov r1, #0xc
007e9bc8  91 30 21 e0                                      mla r1, r1, r0, r3
007e9bcc  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
007e9bd0  03 00 94 e7                                      ldr r0, [r4, r3]
007e9bd4  01 30 90 e7                                      ldr r3, [r0, r1]
007e9bd8  01 10 80 e0                                      add r1, r0, r1
007e9bdc  00 00 53 e3                                      cmp r3, #0
007e9be0  03 50 a0 01                                      moveq r5, r3
007e9be4  1a 00 00 0a                                      beq #0x7e9c54
007e9be8  08 40 d1 e5                                      ldrb r4, [r1, #8]
007e9bec  00 00 54 e3                                      cmp r4, #0
007e9bf0  1a 00 00 1a                                      bne #0x7e9c60
007e9bf4  05 10 a0 e1                                      mov r1, r5
007e9bf8  06 00 a0 e1                                      mov r0, r6
007e9bfc  33 ff 2f e1                                      blx r3
007e9c00  08 30 90 e5                                      ldr r3, [r0, #8]
007e9c04  00 50 a0 e1                                      mov r5, r0
007e9c08  00 00 53 e3                                      cmp r3, #0
007e9c0c  10 00 00 da                                      ble #0x7e9c54
007e9c10  04 60 a0 e1                                      mov r6, r4
007e9c14  00 30 95 e5                                      ldr r3, [r5]
007e9c18  05 00 a0 e1                                      mov r0, r5
007e9c1c  0f e0 a0 e1                                      mov lr, pc
007e9c20  00 f0 93 e5                                      ldr pc, [r3]
007e9c24  04 00 80 e0                                      add r0, r0, r4
007e9c28  40 20 90 e5                                      ldr r2, [r0, #0x40]
007e9c2c  44 30 90 e5                                      ldr r3, [r0, #0x44]
007e9c30  01 60 86 e2                                      add r6, r6, #1
007e9c34  02 21 82 e2                                      add r2, r2, #0x80000000
007e9c38  02 31 83 e2                                      add r3, r3, #0x80000000
007e9c3c  40 20 80 e5                                      str r2, [r0, #0x40]
007e9c40  44 30 80 e5                                      str r3, [r0, #0x44]
007e9c44  08 30 95 e5                                      ldr r3, [r5, #8]
007e9c48  4c 40 84 e2                                      add r4, r4, #0x4c
007e9c4c  03 00 56 e1                                      cmp r6, r3
007e9c50  ef ff ff ba                                      blt #0x7e9c14
007e9c54  05 00 a0 e1                                      mov r0, r5
007e9c58  0c d0 8d e2                                      add sp, sp, #0xc
007e9c5c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
007e9c60  05 00 a0 e1                                      mov r0, r5
007e9c64  06 10 a0 e1                                      mov r1, r6
007e9c68  33 ff 2f e1                                      blx r3
007e9c6c  00 50 a0 e1                                      mov r5, r0
007e9c70  f7 ff ff ea                                      b #0x7e9c54
007e9c74  04 20 8d e5                                      str r2, [sp, #4]
007e9c78  a2 ff ff eb                                      bl #0x7e9b08
007e9c7c  01 30 a0 e3                                      mov r3, #1
007e9c80  00 30 c7 e5                                      strb r3, [r7]
007e9c84  04 20 9d e5                                      ldr r2, [sp, #4]
007e9c88  c9 ff ff ea                                      b #0x7e9bb4
; mapping-symbol data/literal pool
007e9c8c  f8 ae 1a 00 28 07 00 00 f4 11 00 00              .byte 0xf8, 0xae, 0x1a, 0x00, 0x28, 0x07, 0x00, 0x00, 0xf4, 0x11, 0x00, 0x00

; FUNCTION 0x007e9c98, declared_size=140, range_size=140, mode=arm
; class-group: b2Contact
; alias: _ZN9b2Contact7DestroyEPS_P16b2BlockAllocator
; demangled: b2Contact::Destroy(b2Contact*, b2BlockAllocator*)
; decoder-mode: arm
007e9c98  08 30 90 e5                                      ldr r3, [r0, #8]
007e9c9c  78 20 9f e5                                      ldr r2, [pc, #0x78]
007e9ca0  10 40 2d e9                                      push {r4, lr}
007e9ca4  00 00 53 e3                                      cmp r3, #0
007e9ca8  02 20 8f e0                                      add r2, pc, r2
007e9cac  0c 00 00 da                                      ble #0x7e9ce4
007e9cb0  34 30 90 e5                                      ldr r3, [r0, #0x34]
007e9cb4  00 c0 a0 e3                                      mov ip, #0
007e9cb8  0c 30 93 e5                                      ldr r3, [r3, #0xc]
007e9cbc  b0 e0 d3 e1                                      ldrh lr, [r3]
007e9cc0  8c c0 83 e5                                      str ip, [r3, #0x8c]
007e9cc4  08 e0 ce e3                                      bic lr, lr, #8
007e9cc8  b0 e0 c3 e1                                      strh lr, [r3]
007e9ccc  38 30 90 e5                                      ldr r3, [r0, #0x38]
007e9cd0  0c 30 93 e5                                      ldr r3, [r3, #0xc]
007e9cd4  b0 e0 d3 e1                                      ldrh lr, [r3]
007e9cd8  8c c0 83 e5                                      str ip, [r3, #0x8c]
007e9cdc  08 c0 ce e3                                      bic ip, lr, #8
007e9ce0  b0 c0 c3 e1                                      strh ip, [r3]
007e9ce4  34 30 90 e5                                      ldr r3, [r0, #0x34]
007e9ce8  38 c0 90 e5                                      ldr ip, [r0, #0x38]
007e9cec  04 30 93 e5                                      ldr r3, [r3, #4]
007e9cf0  04 e0 9c e5                                      ldr lr, [ip, #4]
007e9cf4  18 c0 a0 e3                                      mov ip, #0x18
007e9cf8  9c 03 0c e0                                      mul ip, ip, r3
007e9cfc  0c 30 a0 e3                                      mov r3, #0xc
007e9d00  93 ce 23 e0                                      mla r3, r3, lr, ip
007e9d04  14 c0 9f e5                                      ldr ip, [pc, #0x14]
007e9d08  0c 20 92 e7                                      ldr r2, [r2, ip]
007e9d0c  03 30 82 e0                                      add r3, r2, r3
007e9d10  0f e0 a0 e1                                      mov lr, pc
007e9d14  04 f0 93 e5                                      ldr pc, [r3, #4]
007e9d18  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007e9d1c  e8 ad 1a 00 f4 11 00 00                          .byte 0xe8, 0xad, 0x1a, 0x00, 0xf4, 0x11, 0x00, 0x00

; FUNCTION 0x007e9d24, declared_size=188, range_size=188, mode=arm
; class-group: b2Contact
; alias: _ZN9b2Contact6UpdateEP17b2ContactListener
; demangled: b2Contact::Update(b2ContactListener*)
; decoder-mode: arm
007e9d24  70 40 2d e9                                      push {r4, r5, r6, lr}
007e9d28  00 40 a0 e1                                      mov r4, r0
007e9d2c  00 30 90 e5                                      ldr r3, [r0]
007e9d30  08 50 90 e5                                      ldr r5, [r0, #8]
007e9d34  0f e0 a0 e1                                      mov lr, pc
007e9d38  0c f0 93 e5                                      ldr pc, [r3, #0xc]
007e9d3c  08 00 94 e5                                      ldr r0, [r4, #8]
007e9d40  00 00 55 e3                                      cmp r5, #0
007e9d44  00 10 a0 d3                                      movle r1, #0
007e9d48  01 10 a0 c3                                      movgt r1, #1
007e9d4c  34 30 94 e5                                      ldr r3, [r4, #0x34]
007e9d50  00 00 50 e3                                      cmp r0, #0
007e9d54  38 20 94 e5                                      ldr r2, [r4, #0x38]
007e9d58  00 10 a0 13                                      movne r1, #0
007e9d5c  00 00 51 e3                                      cmp r1, #0
007e9d60  0c 30 93 e5                                      ldr r3, [r3, #0xc]
007e9d64  0c 20 92 e5                                      ldr r2, [r2, #0xc]
007e9d68  08 00 00 0a                                      beq #0x7e9d90
007e9d6c  b0 00 d3 e1                                      ldrh r0, [r3]
007e9d70  00 10 a0 e3                                      mov r1, #0
007e9d74  8c 10 83 e5                                      str r1, [r3, #0x8c]
007e9d78  08 00 c0 e3                                      bic r0, r0, #8
007e9d7c  b0 00 c3 e1                                      strh r0, [r3]
007e9d80  b0 00 d2 e1                                      ldrh r0, [r2]
007e9d84  8c 10 82 e5                                      str r1, [r2, #0x8c]
007e9d88  08 10 c0 e3                                      bic r1, r0, #8
007e9d8c  b0 10 c2 e1                                      strh r1, [r2]
007e9d90  f2 10 d3 e1                                      ldrsh r1, [r3, #2]
007e9d94  00 00 51 e3                                      cmp r1, #0
007e9d98  03 00 00 1a                                      bne #0x7e9dac
007e9d9c  04 30 94 e5                                      ldr r3, [r4, #4]
007e9da0  02 30 c3 e3                                      bic r3, r3, #2
007e9da4  04 30 84 e5                                      str r3, [r4, #4]
007e9da8  70 80 bd e8                                      pop {r4, r5, r6, pc}
007e9dac  b0 30 d3 e1                                      ldrh r3, [r3]
007e9db0  20 00 13 e3                                      tst r3, #0x20
007e9db4  f8 ff ff 1a                                      bne #0x7e9d9c
007e9db8  f2 30 d2 e1                                      ldrsh r3, [r2, #2]
007e9dbc  00 00 53 e3                                      cmp r3, #0
007e9dc0  f5 ff ff 0a                                      beq #0x7e9d9c
007e9dc4  b0 30 d2 e1                                      ldrh r3, [r2]
007e9dc8  20 00 13 e3                                      tst r3, #0x20
007e9dcc  f2 ff ff 1a                                      bne #0x7e9d9c
007e9dd0  04 30 94 e5                                      ldr r3, [r4, #4]
007e9dd4  02 30 83 e3                                      orr r3, r3, #2
007e9dd8  04 30 84 e5                                      str r3, [r4, #4]
007e9ddc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007e9de0, declared_size=216, range_size=216, mode=arm
; class-group: b2Contact
; alias: _ZN9b2ContactC1EP7b2ShapeS1_
; demangled: b2Contact::b2Contact(b2Shape*, b2Shape*)
; decoder-mode: arm
007e9de0  c8 30 9f e5                                      ldr r3, [pc, #0xc8]
007e9de4  c8 c0 9f e5                                      ldr ip, [pc, #0xc8]
007e9de8  70 40 2d e9                                      push {r4, r5, r6, lr}
007e9dec  03 30 8f e0                                      add r3, pc, r3
007e9df0  0c c0 93 e7                                      ldr ip, [r3, ip]
007e9df4  00 40 a0 e1                                      mov r4, r0
007e9df8  00 00 a0 e3                                      mov r0, #0
007e9dfc  08 c0 8c e2                                      add ip, ip, #8
007e9e00  04 00 84 e5                                      str r0, [r4, #4]
007e9e04  00 c0 84 e5                                      str ip, [r4]
007e9e08  01 00 a0 e1                                      mov r0, r1
007e9e0c  28 10 d1 e5                                      ldrb r1, [r1, #0x28]
007e9e10  00 00 51 e3                                      cmp r1, #0
007e9e14  21 00 00 0a                                      beq #0x7e9ea0
007e9e18  01 30 a0 e3                                      mov r3, #1
007e9e1c  04 30 84 e5                                      str r3, [r4, #4]
007e9e20  00 30 a0 e3                                      mov r3, #0
007e9e24  08 30 84 e5                                      str r3, [r4, #8]
007e9e28  38 20 84 e5                                      str r2, [r4, #0x38]
007e9e2c  34 00 84 e5                                      str r0, [r4, #0x34]
007e9e30  18 10 92 e5                                      ldr r1, [r2, #0x18]
007e9e34  18 00 90 e5                                      ldr r0, [r0, #0x18]
007e9e38  cb 93 ec eb                                      bl #0x30ed6c
007e9e3c  b8 90 ec eb                                      bl #0x30e124
007e9e40  38 30 94 e5                                      ldr r3, [r4, #0x38]
007e9e44  34 20 94 e5                                      ldr r2, [r4, #0x34]
007e9e48  3c 00 84 e5                                      str r0, [r4, #0x3c]
007e9e4c  1c 50 93 e5                                      ldr r5, [r3, #0x1c]
007e9e50  1c 60 92 e5                                      ldr r6, [r2, #0x1c]
007e9e54  05 10 a0 e1                                      mov r1, r5
007e9e58  06 00 a0 e1                                      mov r0, r6
007e9e5c  25 91 ec eb                                      bl #0x30e2f8
007e9e60  00 00 50 e3                                      cmp r0, #0
007e9e64  00 30 a0 e3                                      mov r3, #0
007e9e68  06 50 a0 11                                      movne r5, r6
007e9e6c  40 50 84 e5                                      str r5, [r4, #0x40]
007e9e70  24 30 84 e5                                      str r3, [r4, #0x24]
007e9e74  0c 30 84 e5                                      str r3, [r4, #0xc]
007e9e78  10 30 84 e5                                      str r3, [r4, #0x10]
007e9e7c  18 30 84 e5                                      str r3, [r4, #0x18]
007e9e80  1c 30 84 e5                                      str r3, [r4, #0x1c]
007e9e84  20 30 84 e5                                      str r3, [r4, #0x20]
007e9e88  14 30 84 e5                                      str r3, [r4, #0x14]
007e9e8c  28 30 84 e5                                      str r3, [r4, #0x28]
007e9e90  2c 30 84 e5                                      str r3, [r4, #0x2c]
007e9e94  30 30 84 e5                                      str r3, [r4, #0x30]
007e9e98  04 00 a0 e1                                      mov r0, r4
007e9e9c  70 80 bd e8                                      pop {r4, r5, r6, pc}
007e9ea0  28 30 d2 e5                                      ldrb r3, [r2, #0x28]
007e9ea4  00 00 53 e3                                      cmp r3, #0
007e9ea8  dc ff ff 0a                                      beq #0x7e9e20
007e9eac  d9 ff ff ea                                      b #0x7e9e18
; mapping-symbol data/literal pool
007e9eb0  a4 ac 1a 00 34 23 00 00                          .byte 0xa4, 0xac, 0x1a, 0x00, 0x34, 0x23, 0x00, 0x00

; FUNCTION 0x007e9eb8, declared_size=216, range_size=216, mode=arm
; class-group: b2Contact
; alias: _ZN9b2ContactC2EP7b2ShapeS1_
; demangled: b2Contact::b2Contact(b2Shape*, b2Shape*)
; decoder-mode: arm
007e9eb8  c8 30 9f e5                                      ldr r3, [pc, #0xc8]
007e9ebc  c8 c0 9f e5                                      ldr ip, [pc, #0xc8]
007e9ec0  70 40 2d e9                                      push {r4, r5, r6, lr}
007e9ec4  03 30 8f e0                                      add r3, pc, r3
007e9ec8  0c c0 93 e7                                      ldr ip, [r3, ip]
007e9ecc  00 40 a0 e1                                      mov r4, r0
007e9ed0  00 00 a0 e3                                      mov r0, #0
007e9ed4  08 c0 8c e2                                      add ip, ip, #8
007e9ed8  04 00 84 e5                                      str r0, [r4, #4]
007e9edc  00 c0 84 e5                                      str ip, [r4]
007e9ee0  01 00 a0 e1                                      mov r0, r1
007e9ee4  28 10 d1 e5                                      ldrb r1, [r1, #0x28]
007e9ee8  00 00 51 e3                                      cmp r1, #0
007e9eec  21 00 00 0a                                      beq #0x7e9f78
007e9ef0  01 30 a0 e3                                      mov r3, #1
007e9ef4  04 30 84 e5                                      str r3, [r4, #4]
007e9ef8  00 30 a0 e3                                      mov r3, #0
007e9efc  08 30 84 e5                                      str r3, [r4, #8]
007e9f00  38 20 84 e5                                      str r2, [r4, #0x38]
007e9f04  34 00 84 e5                                      str r0, [r4, #0x34]
007e9f08  18 10 92 e5                                      ldr r1, [r2, #0x18]
007e9f0c  18 00 90 e5                                      ldr r0, [r0, #0x18]
007e9f10  95 93 ec eb                                      bl #0x30ed6c
007e9f14  82 90 ec eb                                      bl #0x30e124
007e9f18  38 30 94 e5                                      ldr r3, [r4, #0x38]
007e9f1c  34 20 94 e5                                      ldr r2, [r4, #0x34]
007e9f20  3c 00 84 e5                                      str r0, [r4, #0x3c]
007e9f24  1c 50 93 e5                                      ldr r5, [r3, #0x1c]
007e9f28  1c 60 92 e5                                      ldr r6, [r2, #0x1c]
007e9f2c  05 10 a0 e1                                      mov r1, r5
007e9f30  06 00 a0 e1                                      mov r0, r6
007e9f34  ef 90 ec eb                                      bl #0x30e2f8
007e9f38  00 00 50 e3                                      cmp r0, #0
007e9f3c  00 30 a0 e3                                      mov r3, #0
007e9f40  06 50 a0 11                                      movne r5, r6
007e9f44  40 50 84 e5                                      str r5, [r4, #0x40]
007e9f48  24 30 84 e5                                      str r3, [r4, #0x24]
007e9f4c  0c 30 84 e5                                      str r3, [r4, #0xc]
007e9f50  10 30 84 e5                                      str r3, [r4, #0x10]
007e9f54  18 30 84 e5                                      str r3, [r4, #0x18]
007e9f58  1c 30 84 e5                                      str r3, [r4, #0x1c]
007e9f5c  20 30 84 e5                                      str r3, [r4, #0x20]
007e9f60  14 30 84 e5                                      str r3, [r4, #0x14]
007e9f64  28 30 84 e5                                      str r3, [r4, #0x28]
007e9f68  2c 30 84 e5                                      str r3, [r4, #0x2c]
007e9f6c  30 30 84 e5                                      str r3, [r4, #0x30]
007e9f70  04 00 a0 e1                                      mov r0, r4
007e9f74  70 80 bd e8                                      pop {r4, r5, r6, pc}
007e9f78  28 30 d2 e5                                      ldrb r3, [r2, #0x28]
007e9f7c  00 00 53 e3                                      cmp r3, #0
007e9f80  dc ff ff 0a                                      beq #0x7e9ef8
007e9f84  d9 ff ff ea                                      b #0x7e9ef0
; mapping-symbol data/literal pool
007e9f88  cc ab 1a 00 34 23 00 00                          .byte 0xcc, 0xab, 0x1a, 0x00, 0x34, 0x23, 0x00, 0x00
