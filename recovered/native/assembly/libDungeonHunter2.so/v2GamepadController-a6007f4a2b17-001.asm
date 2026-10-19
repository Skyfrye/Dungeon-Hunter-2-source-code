; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00406920, declared_size=4, range_size=4, mode=arm
; class-group: v2GamepadController
; alias: _ZN19v2GamepadControllerD2Ev
; demangled: v2GamepadController::~v2GamepadController()
; decoder-mode: arm
00406920  1e ff 2f e1                                      bx lr

; FUNCTION 0x00406924, declared_size=4, range_size=4, mode=arm
; class-group: v2GamepadController
; alias: _ZN19v2GamepadControllerD1Ev
; demangled: v2GamepadController::~v2GamepadController()
; decoder-mode: arm
00406924  1e ff 2f e1                                      bx lr

; FUNCTION 0x0040695c, declared_size=28, range_size=28, mode=arm
; class-group: v2GamepadController
; alias: _ZN19v2GamepadControllerD0Ev
; demangled: v2GamepadController::~v2GamepadController()
; decoder-mode: arm
0040695c  10 40 2d e9                                      push {r4, lr}
00406960  00 40 a0 e1                                      mov r4, r0
00406964  ee ff ff eb                                      bl #0x406924
00406968  04 00 a0 e1                                      mov r0, r4
0040696c  b3 26 fc eb                                      bl #0x310440
00406970  04 00 a0 e1                                      mov r0, r4
00406974  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00406978, declared_size=236, range_size=236, mode=arm
; class-group: v2GamepadController
; alias: _ZN19v2GamepadControllerC1EP14v2Controllablei
; demangled: v2GamepadController::v2GamepadController(v2Controllable*, int)
; decoder-mode: arm
00406978  70 40 2d e9                                      push {r4, r5, r6, lr}
0040697c  c0 50 9f e5                                      ldr r5, [pc, #0xc0]
00406980  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
00406984  00 40 a0 e1                                      mov r4, r0
00406988  05 50 8f e0                                      add r5, pc, r5
0040698c  03 30 95 e7                                      ldr r3, [r5, r3]
00406990  00 00 a0 e3                                      mov r0, #0
00406994  00 00 51 e3                                      cmp r1, #0
00406998  08 30 83 e2                                      add r3, r3, #8
0040699c  08 d0 4d e2                                      sub sp, sp, #8
004069a0  00 30 84 e5                                      str r3, [r4]
004069a4  0c 00 84 e5                                      str r0, [r4, #0xc]
004069a8  02 60 a0 e1                                      mov r6, r2
004069ac  04 10 84 e5                                      str r1, [r4, #4]
004069b0  08 00 c4 e5                                      strb r0, [r4, #8]
004069b4  09 00 c4 e5                                      strb r0, [r4, #9]
004069b8  0a 00 c4 e5                                      strb r0, [r4, #0xa]
004069bc  0b 00 00 0a                                      beq #0x4069f0
004069c0  84 20 9f e5                                      ldr r2, [pc, #0x84]
004069c4  00 30 a0 e3                                      mov r3, #0
004069c8  10 60 84 e5                                      str r6, [r4, #0x10]
004069cc  02 20 95 e7                                      ldr r2, [r5, r2]
004069d0  1c 30 84 e5                                      str r3, [r4, #0x1c]
004069d4  14 30 84 e5                                      str r3, [r4, #0x14]
004069d8  08 20 82 e2                                      add r2, r2, #8
004069dc  00 20 84 e5                                      str r2, [r4]
004069e0  18 30 84 e5                                      str r3, [r4, #0x18]
004069e4  04 00 a0 e1                                      mov r0, r4
004069e8  08 d0 8d e2                                      add sp, sp, #8
004069ec  70 80 bd e8                                      pop {r4, r5, r6, pc}
004069f0  58 30 9f e5                                      ldr r3, [pc, #0x58]
004069f4  03 30 95 e7                                      ldr r3, [r5, r3]
004069f8  00 30 93 e5                                      ldr r3, [r3]
004069fc  02 00 53 e3                                      cmp r3, #2
00406a00  00 10 81 05                                      streq r1, [r1]
00406a04  ed ff ff 0a                                      beq #0x4069c0
00406a08  01 00 53 e3                                      cmp r3, #1
00406a0c  eb ff ff 1a                                      bne #0x4069c0
00406a10  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
00406a14  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
00406a18  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00406a1c  00 00 95 e7                                      ldr r0, [r5, r0]
00406a20  38 30 9f e5                                      ldr r3, [pc, #0x38]
00406a24  44 c0 a0 e3                                      mov ip, #0x44
00406a28  01 10 8f e0                                      add r1, pc, r1
00406a2c  02 20 8f e0                                      add r2, pc, r2
00406a30  03 30 8f e0                                      add r3, pc, r3
00406a34  a8 00 80 e2                                      add r0, r0, #0xa8
00406a38  00 c0 8d e5                                      str ip, [sp]
00406a3c  70 1d fc eb                                      bl #0x30e004
00406a40  de ff ff ea                                      b #0x4069c0
; mapping-symbol data/literal pool
00406a44  08 e1 58 00 a4 2a 00 00 98 47 00 00 c0 39 00 00  .byte 0x08, 0xe1, 0x58, 0x00, 0xa4, 0x2a, 0x00, 0x00, 0x98, 0x47, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
00406a54  c0 19 00 00 b0 79 4b 00 94 ca 4b 00 a8 0f 4c 00  .byte 0xc0, 0x19, 0x00, 0x00, 0xb0, 0x79, 0x4b, 0x00, 0x94, 0xca, 0x4b, 0x00, 0xa8, 0x0f, 0x4c, 0x00

; FUNCTION 0x00406a64, declared_size=236, range_size=236, mode=arm
; class-group: v2GamepadController
; alias: _ZN19v2GamepadControllerC2EP14v2Controllablei
; demangled: v2GamepadController::v2GamepadController(v2Controllable*, int)
; decoder-mode: arm
00406a64  70 40 2d e9                                      push {r4, r5, r6, lr}
00406a68  c0 50 9f e5                                      ldr r5, [pc, #0xc0]
00406a6c  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
00406a70  00 40 a0 e1                                      mov r4, r0
00406a74  05 50 8f e0                                      add r5, pc, r5
00406a78  03 30 95 e7                                      ldr r3, [r5, r3]
00406a7c  00 00 a0 e3                                      mov r0, #0
00406a80  00 00 51 e3                                      cmp r1, #0
00406a84  08 30 83 e2                                      add r3, r3, #8
00406a88  08 d0 4d e2                                      sub sp, sp, #8
00406a8c  00 30 84 e5                                      str r3, [r4]
00406a90  0c 00 84 e5                                      str r0, [r4, #0xc]
00406a94  02 60 a0 e1                                      mov r6, r2
00406a98  04 10 84 e5                                      str r1, [r4, #4]
00406a9c  08 00 c4 e5                                      strb r0, [r4, #8]
00406aa0  09 00 c4 e5                                      strb r0, [r4, #9]
00406aa4  0a 00 c4 e5                                      strb r0, [r4, #0xa]
00406aa8  0b 00 00 0a                                      beq #0x406adc
00406aac  84 20 9f e5                                      ldr r2, [pc, #0x84]
00406ab0  00 30 a0 e3                                      mov r3, #0
00406ab4  10 60 84 e5                                      str r6, [r4, #0x10]
00406ab8  02 20 95 e7                                      ldr r2, [r5, r2]
00406abc  1c 30 84 e5                                      str r3, [r4, #0x1c]
00406ac0  14 30 84 e5                                      str r3, [r4, #0x14]
00406ac4  08 20 82 e2                                      add r2, r2, #8
00406ac8  00 20 84 e5                                      str r2, [r4]
00406acc  18 30 84 e5                                      str r3, [r4, #0x18]
00406ad0  04 00 a0 e1                                      mov r0, r4
00406ad4  08 d0 8d e2                                      add sp, sp, #8
00406ad8  70 80 bd e8                                      pop {r4, r5, r6, pc}
00406adc  58 30 9f e5                                      ldr r3, [pc, #0x58]
00406ae0  03 30 95 e7                                      ldr r3, [r5, r3]
00406ae4  00 30 93 e5                                      ldr r3, [r3]
00406ae8  02 00 53 e3                                      cmp r3, #2
00406aec  00 10 81 05                                      streq r1, [r1]
00406af0  ed ff ff 0a                                      beq #0x406aac
00406af4  01 00 53 e3                                      cmp r3, #1
00406af8  eb ff ff 1a                                      bne #0x406aac
00406afc  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
00406b00  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
00406b04  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00406b08  00 00 95 e7                                      ldr r0, [r5, r0]
00406b0c  38 30 9f e5                                      ldr r3, [pc, #0x38]
00406b10  44 c0 a0 e3                                      mov ip, #0x44
00406b14  01 10 8f e0                                      add r1, pc, r1
00406b18  02 20 8f e0                                      add r2, pc, r2
00406b1c  03 30 8f e0                                      add r3, pc, r3
00406b20  a8 00 80 e2                                      add r0, r0, #0xa8
00406b24  00 c0 8d e5                                      str ip, [sp]
00406b28  35 1d fc eb                                      bl #0x30e004
00406b2c  de ff ff ea                                      b #0x406aac
; mapping-symbol data/literal pool
00406b30  1c e0 58 00 a4 2a 00 00 98 47 00 00 c0 39 00 00  .byte 0x1c, 0xe0, 0x58, 0x00, 0xa4, 0x2a, 0x00, 0x00, 0x98, 0x47, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
00406b40  c0 19 00 00 c4 78 4b 00 a8 c9 4b 00 bc 0e 4c 00  .byte 0xc0, 0x19, 0x00, 0x00, 0xc4, 0x78, 0x4b, 0x00, 0xa8, 0xc9, 0x4b, 0x00, 0xbc, 0x0e, 0x4c, 0x00

; FUNCTION 0x00406c2c, declared_size=7360, range_size=7360, mode=arm
; class-group: v2GamepadController
; alias: _ZN19v2GamepadController6UpdateEv
; demangled: v2GamepadController::Update()
; decoder-mode: arm
00406c2c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00406c30  c4 5f 9f e5                                      ldr r5, [pc, #0xfc4]
00406c34  c4 7f 9f e5                                      ldr r7, [pc, #0xfc4]
00406c38  bd df 4d e2                                      sub sp, sp, #0x2f4
00406c3c  05 50 8f e0                                      add r5, pc, r5
00406c40  07 30 95 e7                                      ldr r3, [r5, r7]
00406c44  00 60 a0 e1                                      mov r6, r0
00406c48  00 30 93 e5                                      ldr r3, [r3]
00406c4c  ec 32 8d e5                                      str r3, [sp, #0x2ec]
00406c50  53 1c fd eb                                      bl #0x34dda4
00406c54  10 80 96 e5                                      ldr r8, [r6, #0x10]
00406c58  00 40 a0 e1                                      mov r4, r0
00406c5c  bc 1a fd eb                                      bl #0x34d754
00406c60  00 00 58 e1                                      cmp r8, r0
00406c64  23 05 00 aa                                      bge #0x4080f8
00406c68  10 10 96 e5                                      ldr r1, [r6, #0x10]
00406c6c  00 00 51 e3                                      cmp r1, #0
00406c70  b5 05 00 ba                                      blt #0x40834c
00406c74  04 00 a0 e1                                      mov r0, r4
00406c78  00 30 94 e5                                      ldr r3, [r4]
00406c7c  0f e0 a0 e1                                      mov lr, pc
00406c80  08 f0 93 e5                                      ldr pc, [r3, #8]
00406c84  00 40 a0 e1                                      mov r4, r0
00406c88  00 00 54 e3                                      cmp r4, #0
00406c8c  19 05 00 0a                                      beq #0x4080f8
00406c90  6c 8f 9f e5                                      ldr r8, [pc, #0xf6c]
00406c94  00 a0 a0 e3                                      mov sl, #0
00406c98  08 30 95 e7                                      ldr r3, [r5, r8]
00406c9c  68 00 93 e5                                      ldr r0, [r3, #0x68]
00406ca0  7c f6 ff eb                                      bl #0x404698
00406ca4  98 a2 8d e5                                      str sl, [sp, #0x298]
00406ca8  9c a2 8d e5                                      str sl, [sp, #0x29c]
00406cac  a0 a2 8d e5                                      str sl, [sp, #0x2a0]
00406cb0  ac 05 94 e5                                      ldr r0, [r4, #0x5ac]
00406cb4  00 10 a0 e1                                      mov r1, r0
00406cb8  b9 1f fc eb                                      bl #0x30eba4
00406cbc  b0 15 94 e5                                      ldr r1, [r4, #0x5b0]
00406cc0  00 90 a0 e1                                      mov sb, r0
00406cc4  b4 05 94 e5                                      ldr r0, [r4, #0x5b4]
00406cc8  b7 1d fc eb                                      bl #0x30e3ac
00406ccc  00 10 a0 e1                                      mov r1, r0
00406cd0  09 00 a0 e1                                      mov r0, sb
00406cd4  ee 1f fc eb                                      bl #0x30ec94
00406cd8  98 02 8d e5                                      str r0, [sp, #0x298]
00406cdc  00 b0 a0 e1                                      mov fp, r0
00406ce0  cc 05 94 e5                                      ldr r0, [r4, #0x5cc]
00406ce4  00 10 a0 e1                                      mov r1, r0
00406ce8  ad 1f fc eb                                      bl #0x30eba4
00406cec  d0 15 94 e5                                      ldr r1, [r4, #0x5d0]
00406cf0  00 90 a0 e1                                      mov sb, r0
00406cf4  d4 05 94 e5                                      ldr r0, [r4, #0x5d4]
00406cf8  ab 1d fc eb                                      bl #0x30e3ac
00406cfc  00 10 a0 e1                                      mov r1, r0
00406d00  09 00 a0 e1                                      mov r0, sb
00406d04  e2 1f fc eb                                      bl #0x30ec94
00406d08  0b 10 a0 e1                                      mov r1, fp
00406d0c  02 91 80 e2                                      add sb, r0, #0x80000000
00406d10  0b 00 a0 e1                                      mov r0, fp
00406d14  9c 92 8d e5                                      str sb, [sp, #0x29c]
00406d18  13 20 fc eb                                      bl #0x30ed6c
00406d1c  09 10 a0 e1                                      mov r1, sb
00406d20  00 b0 a0 e1                                      mov fp, r0
00406d24  09 00 a0 e1                                      mov r0, sb
00406d28  0f 20 fc eb                                      bl #0x30ed6c
00406d2c  00 10 a0 e1                                      mov r1, r0
00406d30  0b 00 a0 e1                                      mov r0, fp
00406d34  9a 1f fc eb                                      bl #0x30eba4
00406d38  0a 10 a0 e1                                      mov r1, sl
00406d3c  98 1f fc eb                                      bl #0x30eba4
00406d40  f7 1c fc eb                                      bl #0x30e124
00406d44  fa 15 a0 e3                                      mov r1, #0x3e800000
00406d48  00 a0 a0 e1                                      mov sl, r0
00406d4c  6e 1e fc eb                                      bl #0x30e70c
00406d50  00 00 50 e3                                      cmp r0, #0
00406d54  59 06 00 0a                                      beq #0x4086c0
00406d58  b4 3e 9f e5                                      ldr r3, [pc, #0xeb4]
00406d5c  03 30 95 e7                                      ldr r3, [r5, r3]
00406d60  08 10 93 e5                                      ldr r1, [r3, #8]
00406d64  00 20 93 e5                                      ldr r2, [r3]
00406d68  04 30 93 e5                                      ldr r3, [r3, #4]
00406d6c  d0 12 8d e5                                      str r1, [sp, #0x2d0]
00406d70  c8 22 8d e5                                      str r2, [sp, #0x2c8]
00406d74  cc 32 8d e5                                      str r3, [sp, #0x2cc]
00406d78  0c a0 96 e5                                      ldr sl, [r6, #0xc]
00406d7c  00 00 5a e3                                      cmp sl, #0
00406d80  e3 04 00 0a                                      beq #0x408114
00406d84  c8 34 01 e3                                      movw r3, #0x14c8
00406d88  03 30 da e7                                      ldrb r3, [sl, r3]
00406d8c  00 00 53 e3                                      cmp r3, #0
00406d90  df 04 00 0a                                      beq #0x408114
00406d94  78 3e 9f e5                                      ldr r3, [pc, #0xe78]
00406d98  78 2e 9f e5                                      ldr r2, [pc, #0xe78]
00406d9c  03 30 95 e7                                      ldr r3, [r5, r3]
00406da0  02 20 95 e7                                      ldr r2, [r5, r2]
00406da4  00 10 93 e5                                      ldr r1, [r3]
00406da8  14 10 86 e5                                      str r1, [r6, #0x14]
00406dac  04 10 93 e5                                      ldr r1, [r3, #4]
00406db0  18 10 86 e5                                      str r1, [r6, #0x18]
00406db4  08 30 93 e5                                      ldr r3, [r3, #8]
00406db8  1c 30 86 e5                                      str r3, [r6, #0x1c]
00406dbc  00 10 92 e5                                      ldr r1, [r2]
00406dc0  00 00 51 e3                                      cmp r1, #0
00406dc4  0c 00 00 0a                                      beq #0x406dfc
00406dc8  af af 8d e2                                      add sl, sp, #0x2bc
00406dcc  0a 00 a0 e1                                      mov r0, sl
00406dd0  b4 1e 00 eb                                      bl #0x40e8a8
00406dd4  40 3e 9f e5                                      ldr r3, [pc, #0xe40]
00406dd8  0a 10 a0 e1                                      mov r1, sl
00406ddc  03 00 95 e7                                      ldr r0, [r5, r3]
00406de0  00 30 a0 e3                                      mov r3, #0
00406de4  c4 32 8d e5                                      str r3, [sp, #0x2c4]
00406de8  9a 30 fc eb                                      bl #0x313058
00406dec  00 10 a0 e1                                      mov r1, r0
00406df0  b2 0f 8d e2                                      add r0, sp, #0x2c8
00406df4  51 7a ff eb                                      bl #0x3e5740
00406df8  0c a0 96 e5                                      ldr sl, [r6, #0xc]
00406dfc  fe 15 a0 e3                                      mov r1, #0x3f800000
00406e00  c8 02 9d e5                                      ldr r0, [sp, #0x2c8]
00406e04  02 16 81 e2                                      add r1, r1, #0x200000
00406e08  d7 1f fc eb                                      bl #0x30ed6c
00406e0c  fe 15 a0 e3                                      mov r1, #0x3f800000
00406e10  00 30 a0 e1                                      mov r3, r0
00406e14  02 16 81 e2                                      add r1, r1, #0x200000
00406e18  cc 02 9d e5                                      ldr r0, [sp, #0x2cc]
00406e1c  04 30 8d e5                                      str r3, [sp, #4]
00406e20  d1 1f fc eb                                      bl #0x30ed6c
00406e24  fe 15 a0 e3                                      mov r1, #0x3f800000
00406e28  00 20 a0 e1                                      mov r2, r0
00406e2c  02 16 81 e2                                      add r1, r1, #0x200000
00406e30  d0 02 9d e5                                      ldr r0, [sp, #0x2d0]
00406e34  08 20 8d e5                                      str r2, [sp, #8]
00406e38  cb 1f fc eb                                      bl #0x30ed6c
00406e3c  00 c0 a0 e1                                      mov ip, r0
00406e40  08 00 95 e7                                      ldr r0, [r5, r8]
00406e44  00 c0 8d e5                                      str ip, [sp]
00406e48  07 62 fc eb                                      bl #0x31f66c
00406e4c  23 1d fc eb                                      bl #0x30e2e0
00406e50  04 30 9d e5                                      ldr r3, [sp, #4]
00406e54  b0 b4 01 e3                                      movw fp, #0x14b0
00406e58  00 90 a0 e1                                      mov sb, r0
00406e5c  03 10 a0 e1                                      mov r1, r3
00406e60  c1 1f fc eb                                      bl #0x30ed6c
00406e64  0b 10 9a e7                                      ldr r1, [sl, fp]
00406e68  4d 1f fc eb                                      bl #0x30eba4
00406e6c  0b 00 8a e7                                      str r0, [sl, fp]
00406e70  08 20 9d e5                                      ldr r2, [sp, #8]
00406e74  b4 b4 01 e3                                      movw fp, #0x14b4
00406e78  09 00 a0 e1                                      mov r0, sb
00406e7c  02 10 a0 e1                                      mov r1, r2
00406e80  b9 1f fc eb                                      bl #0x30ed6c
00406e84  0b 10 9a e7                                      ldr r1, [sl, fp]
00406e88  45 1f fc eb                                      bl #0x30eba4
00406e8c  0b 00 8a e7                                      str r0, [sl, fp]
00406e90  00 c0 9d e5                                      ldr ip, [sp]
00406e94  09 00 a0 e1                                      mov r0, sb
00406e98  b8 94 01 e3                                      movw sb, #0x14b8
00406e9c  0c 10 a0 e1                                      mov r1, ip
00406ea0  b1 1f fc eb                                      bl #0x30ed6c
00406ea4  09 10 9a e7                                      ldr r1, [sl, sb]
00406ea8  3d 1f fc eb                                      bl #0x30eba4
00406eac  09 00 8a e7                                      str r0, [sl, sb]
00406eb0  10 10 94 e5                                      ldr r1, [r4, #0x10]
00406eb4  14 00 94 e5                                      ldr r0, [r4, #0x14]
00406eb8  39 1f fc eb                                      bl #0x30eba4
00406ebc  fe 15 a0 e3                                      mov r1, #0x3f800000
00406ec0  37 1f fc eb                                      bl #0x30eba4
00406ec4  3f 14 a0 e3                                      mov r1, #0x3f000000
00406ec8  a7 1f fc eb                                      bl #0x30ed6c
00406ecc  00 10 a0 e1                                      mov r1, r0
00406ed0  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00406ed4  76 1d fc eb                                      bl #0x30e4b4
00406ed8  00 00 50 e3                                      cmp r0, #0
00406edc  2c 06 00 1a                                      bne #0x408794
00406ee0  0c a0 96 e5                                      ldr sl, [r6, #0xc]
00406ee4  00 00 5a e3                                      cmp sl, #0
00406ee8  47 00 00 0a                                      beq #0x40700c
00406eec  00 10 a0 e3                                      mov r1, #0
00406ef0  0a 00 a0 e1                                      mov r0, sl
00406ef4  db d3 fe eb                                      bl #0x3bbe68
00406ef8  01 10 a0 e3                                      mov r1, #1
00406efc  00 b0 a0 e1                                      mov fp, r0
00406f00  0a 00 a0 e1                                      mov r0, sl
00406f04  d7 d3 fe eb                                      bl #0x3bbe68
00406f08  02 10 a0 e3                                      mov r1, #2
00406f0c  00 90 a0 e1                                      mov sb, r0
00406f10  0a 00 a0 e1                                      mov r0, sl
00406f14  d3 d3 fe eb                                      bl #0x3bbe68
00406f18  01 00 7b e3                                      cmn fp, #1
00406f1c  00 a0 a0 e1                                      mov sl, r0
00406f20  11 00 00 0a                                      beq #0x406f6c
00406f24  60 10 94 e5                                      ldr r1, [r4, #0x60]
00406f28  64 00 94 e5                                      ldr r0, [r4, #0x64]
00406f2c  1c 1f fc eb                                      bl #0x30eba4
00406f30  fe 15 a0 e3                                      mov r1, #0x3f800000
00406f34  1a 1f fc eb                                      bl #0x30eba4
00406f38  3f 14 a0 e3                                      mov r1, #0x3f000000
00406f3c  8a 1f fc eb                                      bl #0x30ed6c
00406f40  00 10 a0 e1                                      mov r1, r0
00406f44  58 00 94 e5                                      ldr r0, [r4, #0x58]
00406f48  59 1d fc eb                                      bl #0x30e4b4
00406f4c  00 00 50 e3                                      cmp r0, #0
00406f50  47 05 00 0a                                      beq #0x408474
00406f54  68 30 d4 e5                                      ldrb r3, [r4, #0x68]
00406f58  00 00 53 e3                                      cmp r3, #0
00406f5c  02 00 00 1a                                      bne #0x406f6c
00406f60  0b 10 a0 e1                                      mov r1, fp
00406f64  06 00 a0 e1                                      mov r0, r6
00406f68  ac fa ff eb                                      bl #0x405a20
00406f6c  01 00 79 e3                                      cmn sb, #1
00406f70  11 00 00 0a                                      beq #0x406fbc
00406f74  80 10 94 e5                                      ldr r1, [r4, #0x80]
00406f78  84 00 94 e5                                      ldr r0, [r4, #0x84]
00406f7c  08 1f fc eb                                      bl #0x30eba4
00406f80  fe 15 a0 e3                                      mov r1, #0x3f800000
00406f84  06 1f fc eb                                      bl #0x30eba4
00406f88  3f 14 a0 e3                                      mov r1, #0x3f000000
00406f8c  76 1f fc eb                                      bl #0x30ed6c
00406f90  00 10 a0 e1                                      mov r1, r0
00406f94  78 00 94 e5                                      ldr r0, [r4, #0x78]
00406f98  45 1d fc eb                                      bl #0x30e4b4
00406f9c  00 00 50 e3                                      cmp r0, #0
00406fa0  2c 05 00 0a                                      beq #0x408458
00406fa4  88 30 d4 e5                                      ldrb r3, [r4, #0x88]
00406fa8  00 00 53 e3                                      cmp r3, #0
00406fac  02 00 00 1a                                      bne #0x406fbc
00406fb0  09 10 a0 e1                                      mov r1, sb
00406fb4  06 00 a0 e1                                      mov r0, r6
00406fb8  98 fa ff eb                                      bl #0x405a20
00406fbc  01 00 7a e3                                      cmn sl, #1
00406fc0  11 00 00 0a                                      beq #0x40700c
00406fc4  40 10 94 e5                                      ldr r1, [r4, #0x40]
00406fc8  44 00 94 e5                                      ldr r0, [r4, #0x44]
00406fcc  f4 1e fc eb                                      bl #0x30eba4
00406fd0  fe 15 a0 e3                                      mov r1, #0x3f800000
00406fd4  f2 1e fc eb                                      bl #0x30eba4
00406fd8  3f 14 a0 e3                                      mov r1, #0x3f000000
00406fdc  62 1f fc eb                                      bl #0x30ed6c
00406fe0  00 10 a0 e1                                      mov r1, r0
00406fe4  38 00 94 e5                                      ldr r0, [r4, #0x38]
00406fe8  31 1d fc eb                                      bl #0x30e4b4
00406fec  00 00 50 e3                                      cmp r0, #0
00406ff0  11 05 00 0a                                      beq #0x40843c
00406ff4  48 30 d4 e5                                      ldrb r3, [r4, #0x48]
00406ff8  00 00 53 e3                                      cmp r3, #0
00406ffc  02 00 00 1a                                      bne #0x40700c
00407000  0a 10 a0 e1                                      mov r1, sl
00407004  06 00 a0 e1                                      mov r0, r6
00407008  84 fa ff eb                                      bl #0x405a20
0040700c  20 11 94 e5                                      ldr r1, [r4, #0x120]
00407010  24 01 94 e5                                      ldr r0, [r4, #0x124]
00407014  e2 1e fc eb                                      bl #0x30eba4
00407018  fe 15 a0 e3                                      mov r1, #0x3f800000
0040701c  e0 1e fc eb                                      bl #0x30eba4
00407020  3f 14 a0 e3                                      mov r1, #0x3f000000
00407024  50 1f fc eb                                      bl #0x30ed6c
00407028  00 10 a0 e1                                      mov r1, r0
0040702c  18 01 94 e5                                      ldr r0, [r4, #0x118]
00407030  1f 1d fc eb                                      bl #0x30e4b4
00407034  00 00 50 e3                                      cmp r0, #0
00407038  9e 04 00 1a                                      bne #0x4082b8
0040703c  28 31 d4 e5                                      ldrb r3, [r4, #0x128]
00407040  00 00 53 e3                                      cmp r3, #0
00407044  11 05 00 1a                                      bne #0x408490
00407048  60 11 94 e5                                      ldr r1, [r4, #0x160]
0040704c  64 01 94 e5                                      ldr r0, [r4, #0x164]
00407050  d3 1e fc eb                                      bl #0x30eba4
00407054  fe 15 a0 e3                                      mov r1, #0x3f800000
00407058  d1 1e fc eb                                      bl #0x30eba4
0040705c  3f 14 a0 e3                                      mov r1, #0x3f000000
00407060  41 1f fc eb                                      bl #0x30ed6c
00407064  00 10 a0 e1                                      mov r1, r0
00407068  58 01 94 e5                                      ldr r0, [r4, #0x158]
0040706c  10 1d fc eb                                      bl #0x30e4b4
00407070  00 00 50 e3                                      cmp r0, #0
00407074  02 00 00 0a                                      beq #0x407084
00407078  68 31 d4 e5                                      ldrb r3, [r4, #0x168]
0040707c  00 00 53 e3                                      cmp r3, #0
00407080  0e 00 00 0a                                      beq #0x4070c0
00407084  a0 11 94 e5                                      ldr r1, [r4, #0x1a0]
00407088  a4 01 94 e5                                      ldr r0, [r4, #0x1a4]
0040708c  c4 1e fc eb                                      bl #0x30eba4
00407090  fe 15 a0 e3                                      mov r1, #0x3f800000
00407094  c2 1e fc eb                                      bl #0x30eba4
00407098  3f 14 a0 e3                                      mov r1, #0x3f000000
0040709c  32 1f fc eb                                      bl #0x30ed6c
004070a0  00 10 a0 e1                                      mov r1, r0
004070a4  98 01 94 e5                                      ldr r0, [r4, #0x198]
004070a8  01 1d fc eb                                      bl #0x30e4b4
004070ac  00 00 50 e3                                      cmp r0, #0
004070b0  86 04 00 0a                                      beq #0x4082d0
004070b4  a8 31 d4 e5                                      ldrb r3, [r4, #0x1a8]
004070b8  00 00 53 e3                                      cmp r3, #0
004070bc  83 04 00 1a                                      bne #0x4082d0
004070c0  06 00 a0 e1                                      mov r0, r6
004070c4  79 f9 ff eb                                      bl #0x4056b0
004070c8  d0 10 94 e5                                      ldr r1, [r4, #0xd0]
004070cc  d4 00 94 e5                                      ldr r0, [r4, #0xd4]
004070d0  b3 1e fc eb                                      bl #0x30eba4
004070d4  fe 15 a0 e3                                      mov r1, #0x3f800000
004070d8  b1 1e fc eb                                      bl #0x30eba4
004070dc  3f 14 a0 e3                                      mov r1, #0x3f000000
004070e0  21 1f fc eb                                      bl #0x30ed6c
004070e4  00 10 a0 e1                                      mov r1, r0
004070e8  cc 00 94 e5                                      ldr r0, [r4, #0xcc]
004070ec  f0 1c fc eb                                      bl #0x30e4b4
004070f0  00 00 50 e3                                      cmp r0, #0
004070f4  0b 00 00 0a                                      beq #0x407128
004070f8  0c a0 96 e5                                      ldr sl, [r6, #0xc]
004070fc  00 00 5a e3                                      cmp sl, #0
00407100  08 00 00 0a                                      beq #0x407128
00407104  4f 0e 8a e2                                      add r0, sl, #0x4f0
00407108  a4 34 01 e3                                      movw r3, #0x14a4
0040710c  0c 00 80 e2                                      add r0, r0, #0xc
00407110  03 90 9a e7                                      ldr sb, [sl, r3]
00407114  c1 e4 fe eb                                      bl #0x3c0420
00407118  00 b0 50 e2                                      subs fp, r0, #0
0040711c  a0 05 00 0a                                      beq #0x4087a4
00407120  06 00 a0 e1                                      mov r0, r6
00407124  9b f9 ff eb                                      bl #0x405798
00407128  e0 11 94 e5                                      ldr r1, [r4, #0x1e0]
0040712c  e4 01 94 e5                                      ldr r0, [r4, #0x1e4]
00407130  9b 1e fc eb                                      bl #0x30eba4
00407134  fe 15 a0 e3                                      mov r1, #0x3f800000
00407138  99 1e fc eb                                      bl #0x30eba4
0040713c  3f 14 a0 e3                                      mov r1, #0x3f000000
00407140  09 1f fc eb                                      bl #0x30ed6c
00407144  00 10 a0 e1                                      mov r1, r0
00407148  d8 01 94 e5                                      ldr r0, [r4, #0x1d8]
0040714c  d8 1c fc eb                                      bl #0x30e4b4
00407150  00 00 50 e3                                      cmp r0, #0
00407154  04 00 00 1a                                      bne #0x40716c
00407158  e8 31 d4 e5                                      ldrb r3, [r4, #0x1e8]
0040715c  00 00 53 e3                                      cmp r3, #0
00407160  01 00 00 0a                                      beq #0x40716c
00407164  06 00 a0 e1                                      mov r0, r6
00407168  6e f9 ff eb                                      bl #0x405728
0040716c  0c 10 96 e5                                      ldr r1, [r6, #0xc]
00407170  00 00 51 e3                                      cmp r1, #0
00407174  01 90 a0 01                                      moveq sb, r1
00407178  04 00 00 0a                                      beq #0x407190
0040717c  08 30 95 e7                                      ldr r3, [r5, r8]
00407180  00 20 a0 e3                                      mov r2, #0
00407184  40 00 93 e5                                      ldr r0, [r3, #0x40]
00407188  46 9f fd eb                                      bl #0x36eea8
0040718c  68 96 90 e5                                      ldr sb, [r0, #0x668]
00407190  08 30 95 e7                                      ldr r3, [r5, r8]
00407194  20 10 94 e5                                      ldr r1, [r4, #0x20]
00407198  24 00 94 e5                                      ldr r0, [r4, #0x24]
0040719c  14 a0 93 e5                                      ldr sl, [r3, #0x14]
004071a0  7f 1e fc eb                                      bl #0x30eba4
004071a4  fe 15 a0 e3                                      mov r1, #0x3f800000
004071a8  7d 1e fc eb                                      bl #0x30eba4
004071ac  3f 14 a0 e3                                      mov r1, #0x3f000000
004071b0  ed 1e fc eb                                      bl #0x30ed6c
004071b4  00 10 a0 e1                                      mov r1, r0
004071b8  18 00 94 e5                                      ldr r0, [r4, #0x18]
004071bc  bc 1c fc eb                                      bl #0x30e4b4
004071c0  00 00 50 e3                                      cmp r0, #0
004071c4  32 05 00 1a                                      bne #0x408694
004071c8  28 30 d4 e5                                      ldrb r3, [r4, #0x28]
004071cc  00 00 53 e3                                      cmp r3, #0
004071d0  13 00 00 0a                                      beq #0x407224
004071d4  00 20 a0 e3                                      mov r2, #0
004071d8  28 3a 9f e5                                      ldr r3, [pc, #0xa28]
004071dc  07 c0 a0 e3                                      mov ip, #7
004071e0  0a 00 a0 e1                                      mov r0, sl
004071e4  03 30 95 e7                                      ldr r3, [r5, r3]
004071e8  9b 1f 8d e2                                      add r1, sp, #0x26c
004071ec  70 c2 8d e5                                      str ip, [sp, #0x270]
004071f0  08 30 83 e2                                      add r3, r3, #8
004071f4  6c 32 8d e5                                      str r3, [sp, #0x26c]
004071f8  00 30 a0 e3                                      mov r3, #0
004071fc  74 32 8d e5                                      str r3, [sp, #0x274]
00407200  fe 35 a0 e3                                      mov r3, #0x3f800000
00407204  80 32 8d e5                                      str r3, [sp, #0x280]
00407208  78 22 8d e5                                      str r2, [sp, #0x278]
0040720c  7c 92 8d e5                                      str sb, [sp, #0x27c]
00407210  29 c7 fc eb                                      bl #0x338ebc
00407214  08 3a 9f e5                                      ldr r3, [pc, #0xa08]
00407218  03 30 95 e7                                      ldr r3, [r5, r3]
0040721c  08 30 83 e2                                      add r3, r3, #8
00407220  6c 32 8d e5                                      str r3, [sp, #0x26c]
00407224  40 10 94 e5                                      ldr r1, [r4, #0x40]
00407228  44 00 94 e5                                      ldr r0, [r4, #0x44]
0040722c  5c 1e fc eb                                      bl #0x30eba4
00407230  fe 15 a0 e3                                      mov r1, #0x3f800000
00407234  5a 1e fc eb                                      bl #0x30eba4
00407238  3f 14 a0 e3                                      mov r1, #0x3f000000
0040723c  ca 1e fc eb                                      bl #0x30ed6c
00407240  00 10 a0 e1                                      mov r1, r0
00407244  38 00 94 e5                                      ldr r0, [r4, #0x38]
00407248  99 1c fc eb                                      bl #0x30e4b4
0040724c  00 00 50 e3                                      cmp r0, #0
00407250  0a 05 00 1a                                      bne #0x408680
00407254  48 30 d4 e5                                      ldrb r3, [r4, #0x48]
00407258  00 00 53 e3                                      cmp r3, #0
0040725c  13 00 00 0a                                      beq #0x4072b0
00407260  00 20 a0 e3                                      mov r2, #0
00407264  9c 39 9f e5                                      ldr r3, [pc, #0x99c]
00407268  07 c0 a0 e3                                      mov ip, #7
0040726c  0a 00 a0 e1                                      mov r0, sl
00407270  03 30 95 e7                                      ldr r3, [r5, r3]
00407274  95 1f 8d e2                                      add r1, sp, #0x254
00407278  58 c2 8d e5                                      str ip, [sp, #0x258]
0040727c  08 30 83 e2                                      add r3, r3, #8
00407280  54 32 8d e5                                      str r3, [sp, #0x254]
00407284  01 30 a0 e3                                      mov r3, #1
00407288  5c 32 8d e5                                      str r3, [sp, #0x25c]
0040728c  fe 35 a0 e3                                      mov r3, #0x3f800000
00407290  68 32 8d e5                                      str r3, [sp, #0x268]
00407294  60 22 8d e5                                      str r2, [sp, #0x260]
00407298  64 92 8d e5                                      str sb, [sp, #0x264]
0040729c  06 c7 fc eb                                      bl #0x338ebc
004072a0  7c 39 9f e5                                      ldr r3, [pc, #0x97c]
004072a4  03 30 95 e7                                      ldr r3, [r5, r3]
004072a8  08 30 83 e2                                      add r3, r3, #8
004072ac  54 32 8d e5                                      str r3, [sp, #0x254]
004072b0  60 10 94 e5                                      ldr r1, [r4, #0x60]
004072b4  64 00 94 e5                                      ldr r0, [r4, #0x64]
004072b8  39 1e fc eb                                      bl #0x30eba4
004072bc  fe 15 a0 e3                                      mov r1, #0x3f800000
004072c0  37 1e fc eb                                      bl #0x30eba4
004072c4  3f 14 a0 e3                                      mov r1, #0x3f000000
004072c8  a7 1e fc eb                                      bl #0x30ed6c
004072cc  00 10 a0 e1                                      mov r1, r0
004072d0  58 00 94 e5                                      ldr r0, [r4, #0x58]
004072d4  76 1c fc eb                                      bl #0x30e4b4
004072d8  00 00 50 e3                                      cmp r0, #0
004072dc  e2 04 00 1a                                      bne #0x40866c
004072e0  68 30 d4 e5                                      ldrb r3, [r4, #0x68]
004072e4  00 00 53 e3                                      cmp r3, #0
004072e8  13 00 00 0a                                      beq #0x40733c
004072ec  00 20 a0 e3                                      mov r2, #0
004072f0  10 39 9f e5                                      ldr r3, [pc, #0x910]
004072f4  07 c0 a0 e3                                      mov ip, #7
004072f8  0a 00 a0 e1                                      mov r0, sl
004072fc  03 30 95 e7                                      ldr r3, [r5, r3]
00407300  8f 1f 8d e2                                      add r1, sp, #0x23c
00407304  40 c2 8d e5                                      str ip, [sp, #0x240]
00407308  08 30 83 e2                                      add r3, r3, #8
0040730c  3c 32 8d e5                                      str r3, [sp, #0x23c]
00407310  02 30 a0 e3                                      mov r3, #2
00407314  44 32 8d e5                                      str r3, [sp, #0x244]
00407318  fe 35 a0 e3                                      mov r3, #0x3f800000
0040731c  50 32 8d e5                                      str r3, [sp, #0x250]
00407320  48 22 8d e5                                      str r2, [sp, #0x248]
00407324  4c 92 8d e5                                      str sb, [sp, #0x24c]
00407328  e3 c6 fc eb                                      bl #0x338ebc
0040732c  f0 38 9f e5                                      ldr r3, [pc, #0x8f0]
00407330  03 30 95 e7                                      ldr r3, [r5, r3]
00407334  08 30 83 e2                                      add r3, r3, #8
00407338  3c 32 8d e5                                      str r3, [sp, #0x23c]
0040733c  80 10 94 e5                                      ldr r1, [r4, #0x80]
00407340  84 00 94 e5                                      ldr r0, [r4, #0x84]
00407344  16 1e fc eb                                      bl #0x30eba4
00407348  fe 15 a0 e3                                      mov r1, #0x3f800000
0040734c  14 1e fc eb                                      bl #0x30eba4
00407350  3f 14 a0 e3                                      mov r1, #0x3f000000
00407354  84 1e fc eb                                      bl #0x30ed6c
00407358  00 10 a0 e1                                      mov r1, r0
0040735c  78 00 94 e5                                      ldr r0, [r4, #0x78]
00407360  53 1c fc eb                                      bl #0x30e4b4
00407364  00 00 50 e3                                      cmp r0, #0
00407368  ba 04 00 1a                                      bne #0x408658
0040736c  88 30 d4 e5                                      ldrb r3, [r4, #0x88]
00407370  00 00 53 e3                                      cmp r3, #0
00407374  13 00 00 0a                                      beq #0x4073c8
00407378  00 20 a0 e3                                      mov r2, #0
0040737c  84 38 9f e5                                      ldr r3, [pc, #0x884]
00407380  07 c0 a0 e3                                      mov ip, #7
00407384  0a 00 a0 e1                                      mov r0, sl
00407388  03 30 95 e7                                      ldr r3, [r5, r3]
0040738c  89 1f 8d e2                                      add r1, sp, #0x224
00407390  28 c2 8d e5                                      str ip, [sp, #0x228]
00407394  08 30 83 e2                                      add r3, r3, #8
00407398  24 32 8d e5                                      str r3, [sp, #0x224]
0040739c  03 30 a0 e3                                      mov r3, #3
004073a0  2c 32 8d e5                                      str r3, [sp, #0x22c]
004073a4  fe 35 a0 e3                                      mov r3, #0x3f800000
004073a8  38 32 8d e5                                      str r3, [sp, #0x238]
004073ac  30 22 8d e5                                      str r2, [sp, #0x230]
004073b0  34 92 8d e5                                      str sb, [sp, #0x234]
004073b4  c0 c6 fc eb                                      bl #0x338ebc
004073b8  64 38 9f e5                                      ldr r3, [pc, #0x864]
004073bc  03 30 95 e7                                      ldr r3, [r5, r3]
004073c0  08 30 83 e2                                      add r3, r3, #8
004073c4  24 32 8d e5                                      str r3, [sp, #0x224]
004073c8  a0 10 94 e5                                      ldr r1, [r4, #0xa0]
004073cc  a4 00 94 e5                                      ldr r0, [r4, #0xa4]
004073d0  f3 1d fc eb                                      bl #0x30eba4
004073d4  fe 15 a0 e3                                      mov r1, #0x3f800000
004073d8  f1 1d fc eb                                      bl #0x30eba4
004073dc  3f 14 a0 e3                                      mov r1, #0x3f000000
004073e0  61 1e fc eb                                      bl #0x30ed6c
004073e4  00 10 a0 e1                                      mov r1, r0
004073e8  98 00 94 e5                                      ldr r0, [r4, #0x98]
004073ec  30 1c fc eb                                      bl #0x30e4b4
004073f0  00 00 50 e3                                      cmp r0, #0
004073f4  92 04 00 1a                                      bne #0x408644
004073f8  a8 30 d4 e5                                      ldrb r3, [r4, #0xa8]
004073fc  00 00 53 e3                                      cmp r3, #0
00407400  13 00 00 0a                                      beq #0x407454
00407404  00 20 a0 e3                                      mov r2, #0
00407408  f8 37 9f e5                                      ldr r3, [pc, #0x7f8]
0040740c  07 c0 a0 e3                                      mov ip, #7
00407410  0a 00 a0 e1                                      mov r0, sl
00407414  03 30 95 e7                                      ldr r3, [r5, r3]
00407418  83 1f 8d e2                                      add r1, sp, #0x20c
0040741c  10 c2 8d e5                                      str ip, [sp, #0x210]
00407420  08 30 83 e2                                      add r3, r3, #8
00407424  0c 32 8d e5                                      str r3, [sp, #0x20c]
00407428  04 30 a0 e3                                      mov r3, #4
0040742c  14 32 8d e5                                      str r3, [sp, #0x214]
00407430  fe 35 a0 e3                                      mov r3, #0x3f800000
00407434  20 32 8d e5                                      str r3, [sp, #0x220]
00407438  18 22 8d e5                                      str r2, [sp, #0x218]
0040743c  1c 92 8d e5                                      str sb, [sp, #0x21c]
00407440  9d c6 fc eb                                      bl #0x338ebc
00407444  d8 37 9f e5                                      ldr r3, [pc, #0x7d8]
00407448  03 30 95 e7                                      ldr r3, [r5, r3]
0040744c  08 30 83 e2                                      add r3, r3, #8
00407450  0c 32 8d e5                                      str r3, [sp, #0x20c]
00407454  c0 10 94 e5                                      ldr r1, [r4, #0xc0]
00407458  c4 00 94 e5                                      ldr r0, [r4, #0xc4]
0040745c  d0 1d fc eb                                      bl #0x30eba4
00407460  fe 15 a0 e3                                      mov r1, #0x3f800000
00407464  ce 1d fc eb                                      bl #0x30eba4
00407468  3f 14 a0 e3                                      mov r1, #0x3f000000
0040746c  3e 1e fc eb                                      bl #0x30ed6c
00407470  00 10 a0 e1                                      mov r1, r0
00407474  b8 00 94 e5                                      ldr r0, [r4, #0xb8]
00407478  0d 1c fc eb                                      bl #0x30e4b4
0040747c  00 00 50 e3                                      cmp r0, #0
00407480  6a 04 00 1a                                      bne #0x408630
00407484  c8 30 d4 e5                                      ldrb r3, [r4, #0xc8]
00407488  00 00 53 e3                                      cmp r3, #0
0040748c  13 00 00 0a                                      beq #0x4074e0
00407490  00 20 a0 e3                                      mov r2, #0
00407494  6c 37 9f e5                                      ldr r3, [pc, #0x76c]
00407498  07 c0 a0 e3                                      mov ip, #7
0040749c  0a 00 a0 e1                                      mov r0, sl
004074a0  03 30 95 e7                                      ldr r3, [r5, r3]
004074a4  7d 1f 8d e2                                      add r1, sp, #0x1f4
004074a8  f8 c1 8d e5                                      str ip, [sp, #0x1f8]
004074ac  08 30 83 e2                                      add r3, r3, #8
004074b0  f4 31 8d e5                                      str r3, [sp, #0x1f4]
004074b4  05 30 a0 e3                                      mov r3, #5
004074b8  fc 31 8d e5                                      str r3, [sp, #0x1fc]
004074bc  fe 35 a0 e3                                      mov r3, #0x3f800000
004074c0  08 32 8d e5                                      str r3, [sp, #0x208]
004074c4  00 22 8d e5                                      str r2, [sp, #0x200]
004074c8  04 92 8d e5                                      str sb, [sp, #0x204]
004074cc  7a c6 fc eb                                      bl #0x338ebc
004074d0  4c 37 9f e5                                      ldr r3, [pc, #0x74c]
004074d4  03 30 95 e7                                      ldr r3, [r5, r3]
004074d8  08 30 83 e2                                      add r3, r3, #8
004074dc  f4 31 8d e5                                      str r3, [sp, #0x1f4]
004074e0  e0 10 94 e5                                      ldr r1, [r4, #0xe0]
004074e4  e4 00 94 e5                                      ldr r0, [r4, #0xe4]
004074e8  ad 1d fc eb                                      bl #0x30eba4
004074ec  fe 15 a0 e3                                      mov r1, #0x3f800000
004074f0  ab 1d fc eb                                      bl #0x30eba4
004074f4  3f 14 a0 e3                                      mov r1, #0x3f000000
004074f8  1b 1e fc eb                                      bl #0x30ed6c
004074fc  00 10 a0 e1                                      mov r1, r0
00407500  d8 00 94 e5                                      ldr r0, [r4, #0xd8]
00407504  ea 1b fc eb                                      bl #0x30e4b4
00407508  00 00 50 e3                                      cmp r0, #0
0040750c  42 04 00 1a                                      bne #0x40861c
00407510  e8 30 d4 e5                                      ldrb r3, [r4, #0xe8]
00407514  00 00 53 e3                                      cmp r3, #0
00407518  13 00 00 0a                                      beq #0x40756c
0040751c  00 20 a0 e3                                      mov r2, #0
00407520  e0 36 9f e5                                      ldr r3, [pc, #0x6e0]
00407524  07 c0 a0 e3                                      mov ip, #7
00407528  0a 00 a0 e1                                      mov r0, sl
0040752c  03 30 95 e7                                      ldr r3, [r5, r3]
00407530  77 1f 8d e2                                      add r1, sp, #0x1dc
00407534  e0 c1 8d e5                                      str ip, [sp, #0x1e0]
00407538  08 30 83 e2                                      add r3, r3, #8
0040753c  dc 31 8d e5                                      str r3, [sp, #0x1dc]
00407540  06 30 a0 e3                                      mov r3, #6
00407544  e4 31 8d e5                                      str r3, [sp, #0x1e4]
00407548  fe 35 a0 e3                                      mov r3, #0x3f800000
0040754c  f0 31 8d e5                                      str r3, [sp, #0x1f0]
00407550  e8 21 8d e5                                      str r2, [sp, #0x1e8]
00407554  ec 91 8d e5                                      str sb, [sp, #0x1ec]
00407558  57 c6 fc eb                                      bl #0x338ebc
0040755c  c0 36 9f e5                                      ldr r3, [pc, #0x6c0]
00407560  03 30 95 e7                                      ldr r3, [r5, r3]
00407564  08 30 83 e2                                      add r3, r3, #8
00407568  dc 31 8d e5                                      str r3, [sp, #0x1dc]
0040756c  00 13 94 e5                                      ldr r1, [r4, #0x300]
00407570  04 03 94 e5                                      ldr r0, [r4, #0x304]
00407574  8a 1d fc eb                                      bl #0x30eba4
00407578  fe 15 a0 e3                                      mov r1, #0x3f800000
0040757c  88 1d fc eb                                      bl #0x30eba4
00407580  3f 14 a0 e3                                      mov r1, #0x3f000000
00407584  f8 1d fc eb                                      bl #0x30ed6c
00407588  00 10 a0 e1                                      mov r1, r0
0040758c  f8 02 94 e5                                      ldr r0, [r4, #0x2f8]
00407590  c7 1b fc eb                                      bl #0x30e4b4
00407594  00 00 50 e3                                      cmp r0, #0
00407598  1a 04 00 1a                                      bne #0x408608
0040759c  08 33 d4 e5                                      ldrb r3, [r4, #0x308]
004075a0  00 00 53 e3                                      cmp r3, #0
004075a4  12 00 00 0a                                      beq #0x4075f4
004075a8  00 c0 a0 e3                                      mov ip, #0
004075ac  54 36 9f e5                                      ldr r3, [pc, #0x654]
004075b0  07 20 a0 e3                                      mov r2, #7
004075b4  0a 00 a0 e1                                      mov r0, sl
004075b8  03 30 95 e7                                      ldr r3, [r5, r3]
004075bc  71 1f 8d e2                                      add r1, sp, #0x1c4
004075c0  cc 21 8d e5                                      str r2, [sp, #0x1cc]
004075c4  08 30 83 e2                                      add r3, r3, #8
004075c8  c4 31 8d e5                                      str r3, [sp, #0x1c4]
004075cc  fe 35 a0 e3                                      mov r3, #0x3f800000
004075d0  d8 31 8d e5                                      str r3, [sp, #0x1d8]
004075d4  d0 c1 8d e5                                      str ip, [sp, #0x1d0]
004075d8  c8 21 8d e5                                      str r2, [sp, #0x1c8]
004075dc  d4 91 8d e5                                      str sb, [sp, #0x1d4]
004075e0  35 c6 fc eb                                      bl #0x338ebc
004075e4  38 36 9f e5                                      ldr r3, [pc, #0x638]
004075e8  03 30 95 e7                                      ldr r3, [r5, r3]
004075ec  08 30 83 e2                                      add r3, r3, #8
004075f0  c4 31 8d e5                                      str r3, [sp, #0x1c4]
004075f4  20 11 94 e5                                      ldr r1, [r4, #0x120]
004075f8  24 01 94 e5                                      ldr r0, [r4, #0x124]
004075fc  68 1d fc eb                                      bl #0x30eba4
00407600  fe 15 a0 e3                                      mov r1, #0x3f800000
00407604  66 1d fc eb                                      bl #0x30eba4
00407608  3f 14 a0 e3                                      mov r1, #0x3f000000
0040760c  d6 1d fc eb                                      bl #0x30ed6c
00407610  00 10 a0 e1                                      mov r1, r0
00407614  18 01 94 e5                                      ldr r0, [r4, #0x118]
00407618  a5 1b fc eb                                      bl #0x30e4b4
0040761c  00 00 50 e3                                      cmp r0, #0
00407620  f3 03 00 1a                                      bne #0x4085f4
00407624  28 31 d4 e5                                      ldrb r3, [r4, #0x128]
00407628  00 00 53 e3                                      cmp r3, #0
0040762c  13 00 00 0a                                      beq #0x407680
00407630  00 20 a0 e3                                      mov r2, #0
00407634  cc 35 9f e5                                      ldr r3, [pc, #0x5cc]
00407638  07 c0 a0 e3                                      mov ip, #7
0040763c  0a 00 a0 e1                                      mov r0, sl
00407640  03 30 95 e7                                      ldr r3, [r5, r3]
00407644  6b 1f 8d e2                                      add r1, sp, #0x1ac
00407648  b0 c1 8d e5                                      str ip, [sp, #0x1b0]
0040764c  08 30 83 e2                                      add r3, r3, #8
00407650  ac 31 8d e5                                      str r3, [sp, #0x1ac]
00407654  08 30 a0 e3                                      mov r3, #8
00407658  b4 31 8d e5                                      str r3, [sp, #0x1b4]
0040765c  fe 35 a0 e3                                      mov r3, #0x3f800000
00407660  c0 31 8d e5                                      str r3, [sp, #0x1c0]
00407664  b8 21 8d e5                                      str r2, [sp, #0x1b8]
00407668  bc 91 8d e5                                      str sb, [sp, #0x1bc]
0040766c  12 c6 fc eb                                      bl #0x338ebc
00407670  ac 35 9f e5                                      ldr r3, [pc, #0x5ac]
00407674  03 30 95 e7                                      ldr r3, [r5, r3]
00407678  08 30 83 e2                                      add r3, r3, #8
0040767c  ac 31 8d e5                                      str r3, [sp, #0x1ac]
00407680  20 13 94 e5                                      ldr r1, [r4, #0x320]
00407684  24 03 94 e5                                      ldr r0, [r4, #0x324]
00407688  45 1d fc eb                                      bl #0x30eba4
0040768c  fe 15 a0 e3                                      mov r1, #0x3f800000
00407690  43 1d fc eb                                      bl #0x30eba4
00407694  3f 14 a0 e3                                      mov r1, #0x3f000000
00407698  b3 1d fc eb                                      bl #0x30ed6c
0040769c  00 10 a0 e1                                      mov r1, r0
004076a0  18 03 94 e5                                      ldr r0, [r4, #0x318]
004076a4  82 1b fc eb                                      bl #0x30e4b4
004076a8  00 00 50 e3                                      cmp r0, #0
004076ac  cb 03 00 1a                                      bne #0x4085e0
004076b0  28 33 d4 e5                                      ldrb r3, [r4, #0x328]
004076b4  00 00 53 e3                                      cmp r3, #0
004076b8  13 00 00 0a                                      beq #0x40770c
004076bc  00 20 a0 e3                                      mov r2, #0
004076c0  40 35 9f e5                                      ldr r3, [pc, #0x540]
004076c4  07 c0 a0 e3                                      mov ip, #7
004076c8  0a 00 a0 e1                                      mov r0, sl
004076cc  03 30 95 e7                                      ldr r3, [r5, r3]
004076d0  65 1f 8d e2                                      add r1, sp, #0x194
004076d4  98 c1 8d e5                                      str ip, [sp, #0x198]
004076d8  08 30 83 e2                                      add r3, r3, #8
004076dc  94 31 8d e5                                      str r3, [sp, #0x194]
004076e0  09 30 a0 e3                                      mov r3, #9
004076e4  9c 31 8d e5                                      str r3, [sp, #0x19c]
004076e8  fe 35 a0 e3                                      mov r3, #0x3f800000
004076ec  a8 31 8d e5                                      str r3, [sp, #0x1a8]
004076f0  a0 21 8d e5                                      str r2, [sp, #0x1a0]
004076f4  a4 91 8d e5                                      str sb, [sp, #0x1a4]
004076f8  ef c5 fc eb                                      bl #0x338ebc
004076fc  20 35 9f e5                                      ldr r3, [pc, #0x520]
00407700  03 30 95 e7                                      ldr r3, [r5, r3]
00407704  08 30 83 e2                                      add r3, r3, #8
00407708  94 31 8d e5                                      str r3, [sp, #0x194]
0040770c  60 11 94 e5                                      ldr r1, [r4, #0x160]
00407710  64 01 94 e5                                      ldr r0, [r4, #0x164]
00407714  22 1d fc eb                                      bl #0x30eba4
00407718  fe 15 a0 e3                                      mov r1, #0x3f800000
0040771c  20 1d fc eb                                      bl #0x30eba4
00407720  3f 14 a0 e3                                      mov r1, #0x3f000000
00407724  90 1d fc eb                                      bl #0x30ed6c
00407728  00 10 a0 e1                                      mov r1, r0
0040772c  58 01 94 e5                                      ldr r0, [r4, #0x158]
00407730  5f 1b fc eb                                      bl #0x30e4b4
00407734  00 00 50 e3                                      cmp r0, #0
00407738  a3 03 00 1a                                      bne #0x4085cc
0040773c  68 31 d4 e5                                      ldrb r3, [r4, #0x168]
00407740  00 00 53 e3                                      cmp r3, #0
00407744  13 00 00 0a                                      beq #0x407798
00407748  00 20 a0 e3                                      mov r2, #0
0040774c  b4 34 9f e5                                      ldr r3, [pc, #0x4b4]
00407750  07 c0 a0 e3                                      mov ip, #7
00407754  0a 00 a0 e1                                      mov r0, sl
00407758  03 30 95 e7                                      ldr r3, [r5, r3]
0040775c  5f 1f 8d e2                                      add r1, sp, #0x17c
00407760  80 c1 8d e5                                      str ip, [sp, #0x180]
00407764  08 30 83 e2                                      add r3, r3, #8
00407768  7c 31 8d e5                                      str r3, [sp, #0x17c]
0040776c  0a 30 a0 e3                                      mov r3, #0xa
00407770  84 31 8d e5                                      str r3, [sp, #0x184]
00407774  fe 35 a0 e3                                      mov r3, #0x3f800000
00407778  90 31 8d e5                                      str r3, [sp, #0x190]
0040777c  88 21 8d e5                                      str r2, [sp, #0x188]
00407780  8c 91 8d e5                                      str sb, [sp, #0x18c]
00407784  cc c5 fc eb                                      bl #0x338ebc
00407788  94 34 9f e5                                      ldr r3, [pc, #0x494]
0040778c  03 30 95 e7                                      ldr r3, [r5, r3]
00407790  08 30 83 e2                                      add r3, r3, #8
00407794  7c 31 8d e5                                      str r3, [sp, #0x17c]
00407798  80 11 94 e5                                      ldr r1, [r4, #0x180]
0040779c  84 01 94 e5                                      ldr r0, [r4, #0x184]
004077a0  ff 1c fc eb                                      bl #0x30eba4
004077a4  fe 15 a0 e3                                      mov r1, #0x3f800000
004077a8  fd 1c fc eb                                      bl #0x30eba4
004077ac  3f 14 a0 e3                                      mov r1, #0x3f000000
004077b0  6d 1d fc eb                                      bl #0x30ed6c
004077b4  00 10 a0 e1                                      mov r1, r0
004077b8  78 01 94 e5                                      ldr r0, [r4, #0x178]
004077bc  3c 1b fc eb                                      bl #0x30e4b4
004077c0  00 00 50 e3                                      cmp r0, #0
004077c4  7b 03 00 1a                                      bne #0x4085b8
004077c8  88 31 d4 e5                                      ldrb r3, [r4, #0x188]
004077cc  00 00 53 e3                                      cmp r3, #0
004077d0  13 00 00 0a                                      beq #0x407824
004077d4  00 20 a0 e3                                      mov r2, #0
004077d8  28 34 9f e5                                      ldr r3, [pc, #0x428]
004077dc  07 c0 a0 e3                                      mov ip, #7
004077e0  0a 00 a0 e1                                      mov r0, sl
004077e4  03 30 95 e7                                      ldr r3, [r5, r3]
004077e8  59 1f 8d e2                                      add r1, sp, #0x164
004077ec  68 c1 8d e5                                      str ip, [sp, #0x168]
004077f0  08 30 83 e2                                      add r3, r3, #8
004077f4  64 31 8d e5                                      str r3, [sp, #0x164]
004077f8  0b 30 a0 e3                                      mov r3, #0xb
004077fc  6c 31 8d e5                                      str r3, [sp, #0x16c]
00407800  fe 35 a0 e3                                      mov r3, #0x3f800000
00407804  78 31 8d e5                                      str r3, [sp, #0x178]
00407808  70 21 8d e5                                      str r2, [sp, #0x170]
0040780c  74 91 8d e5                                      str sb, [sp, #0x174]
00407810  a9 c5 fc eb                                      bl #0x338ebc
00407814  08 34 9f e5                                      ldr r3, [pc, #0x408]
00407818  03 30 95 e7                                      ldr r3, [r5, r3]
0040781c  08 30 83 e2                                      add r3, r3, #8
00407820  64 31 8d e5                                      str r3, [sp, #0x164]
00407824  a0 11 94 e5                                      ldr r1, [r4, #0x1a0]
00407828  a4 01 94 e5                                      ldr r0, [r4, #0x1a4]
0040782c  dc 1c fc eb                                      bl #0x30eba4
00407830  fe 15 a0 e3                                      mov r1, #0x3f800000
00407834  da 1c fc eb                                      bl #0x30eba4
00407838  3f 14 a0 e3                                      mov r1, #0x3f000000
0040783c  4a 1d fc eb                                      bl #0x30ed6c
00407840  00 10 a0 e1                                      mov r1, r0
00407844  98 01 94 e5                                      ldr r0, [r4, #0x198]
00407848  19 1b fc eb                                      bl #0x30e4b4
0040784c  00 00 50 e3                                      cmp r0, #0
00407850  53 03 00 1a                                      bne #0x4085a4
00407854  a8 31 d4 e5                                      ldrb r3, [r4, #0x1a8]
00407858  00 00 53 e3                                      cmp r3, #0
0040785c  13 00 00 0a                                      beq #0x4078b0
00407860  00 20 a0 e3                                      mov r2, #0
00407864  9c 33 9f e5                                      ldr r3, [pc, #0x39c]
00407868  07 c0 a0 e3                                      mov ip, #7
0040786c  0a 00 a0 e1                                      mov r0, sl
00407870  03 30 95 e7                                      ldr r3, [r5, r3]
00407874  53 1f 8d e2                                      add r1, sp, #0x14c
00407878  50 c1 8d e5                                      str ip, [sp, #0x150]
0040787c  08 30 83 e2                                      add r3, r3, #8
00407880  4c 31 8d e5                                      str r3, [sp, #0x14c]
00407884  0c 30 a0 e3                                      mov r3, #0xc
00407888  54 31 8d e5                                      str r3, [sp, #0x154]
0040788c  fe 35 a0 e3                                      mov r3, #0x3f800000
00407890  60 31 8d e5                                      str r3, [sp, #0x160]
00407894  58 21 8d e5                                      str r2, [sp, #0x158]
00407898  5c 91 8d e5                                      str sb, [sp, #0x15c]
0040789c  86 c5 fc eb                                      bl #0x338ebc
004078a0  7c 33 9f e5                                      ldr r3, [pc, #0x37c]
004078a4  03 30 95 e7                                      ldr r3, [r5, r3]
004078a8  08 30 83 e2                                      add r3, r3, #8
004078ac  4c 31 8d e5                                      str r3, [sp, #0x14c]
004078b0  c0 11 94 e5                                      ldr r1, [r4, #0x1c0]
004078b4  c4 01 94 e5                                      ldr r0, [r4, #0x1c4]
004078b8  b9 1c fc eb                                      bl #0x30eba4
004078bc  fe 15 a0 e3                                      mov r1, #0x3f800000
004078c0  b7 1c fc eb                                      bl #0x30eba4
004078c4  3f 14 a0 e3                                      mov r1, #0x3f000000
004078c8  27 1d fc eb                                      bl #0x30ed6c
004078cc  00 10 a0 e1                                      mov r1, r0
004078d0  b8 01 94 e5                                      ldr r0, [r4, #0x1b8]
004078d4  f6 1a fc eb                                      bl #0x30e4b4
004078d8  00 00 50 e3                                      cmp r0, #0
004078dc  2b 03 00 1a                                      bne #0x408590
004078e0  c8 31 d4 e5                                      ldrb r3, [r4, #0x1c8]
004078e4  00 00 53 e3                                      cmp r3, #0
004078e8  13 00 00 0a                                      beq #0x40793c
004078ec  00 20 a0 e3                                      mov r2, #0
004078f0  10 33 9f e5                                      ldr r3, [pc, #0x310]
004078f4  07 c0 a0 e3                                      mov ip, #7
004078f8  0a 00 a0 e1                                      mov r0, sl
004078fc  03 30 95 e7                                      ldr r3, [r5, r3]
00407900  4d 1f 8d e2                                      add r1, sp, #0x134
00407904  38 c1 8d e5                                      str ip, [sp, #0x138]
00407908  08 30 83 e2                                      add r3, r3, #8
0040790c  34 31 8d e5                                      str r3, [sp, #0x134]
00407910  0d 30 a0 e3                                      mov r3, #0xd
00407914  3c 31 8d e5                                      str r3, [sp, #0x13c]
00407918  fe 35 a0 e3                                      mov r3, #0x3f800000
0040791c  48 31 8d e5                                      str r3, [sp, #0x148]
00407920  40 21 8d e5                                      str r2, [sp, #0x140]
00407924  44 91 8d e5                                      str sb, [sp, #0x144]
00407928  63 c5 fc eb                                      bl #0x338ebc
0040792c  f0 32 9f e5                                      ldr r3, [pc, #0x2f0]
00407930  03 30 95 e7                                      ldr r3, [r5, r3]
00407934  08 30 83 e2                                      add r3, r3, #8
00407938  34 31 8d e5                                      str r3, [sp, #0x134]
0040793c  e0 11 94 e5                                      ldr r1, [r4, #0x1e0]
00407940  e4 01 94 e5                                      ldr r0, [r4, #0x1e4]
00407944  96 1c fc eb                                      bl #0x30eba4
00407948  fe 15 a0 e3                                      mov r1, #0x3f800000
0040794c  94 1c fc eb                                      bl #0x30eba4
00407950  3f 14 a0 e3                                      mov r1, #0x3f000000
00407954  04 1d fc eb                                      bl #0x30ed6c
00407958  00 10 a0 e1                                      mov r1, r0
0040795c  d8 01 94 e5                                      ldr r0, [r4, #0x1d8]
00407960  d3 1a fc eb                                      bl #0x30e4b4
00407964  00 00 50 e3                                      cmp r0, #0
00407968  ef 02 00 1a                                      bne #0x40852c
0040796c  e8 31 d4 e5                                      ldrb r3, [r4, #0x1e8]
00407970  00 00 53 e3                                      cmp r3, #0
00407974  13 00 00 0a                                      beq #0x4079c8
00407978  00 20 a0 e3                                      mov r2, #0
0040797c  84 32 9f e5                                      ldr r3, [pc, #0x284]
00407980  07 c0 a0 e3                                      mov ip, #7
00407984  0a 00 a0 e1                                      mov r0, sl
00407988  03 30 95 e7                                      ldr r3, [r5, r3]
0040798c  47 1f 8d e2                                      add r1, sp, #0x11c
00407990  20 c1 8d e5                                      str ip, [sp, #0x120]
00407994  08 30 83 e2                                      add r3, r3, #8
00407998  1c 31 8d e5                                      str r3, [sp, #0x11c]
0040799c  0e 30 a0 e3                                      mov r3, #0xe
004079a0  24 31 8d e5                                      str r3, [sp, #0x124]
004079a4  fe 35 a0 e3                                      mov r3, #0x3f800000
004079a8  30 31 8d e5                                      str r3, [sp, #0x130]
004079ac  28 21 8d e5                                      str r2, [sp, #0x128]
004079b0  2c 91 8d e5                                      str sb, [sp, #0x12c]
004079b4  40 c5 fc eb                                      bl #0x338ebc
004079b8  64 32 9f e5                                      ldr r3, [pc, #0x264]
004079bc  03 30 95 e7                                      ldr r3, [r5, r3]
004079c0  08 30 83 e2                                      add r3, r3, #8
004079c4  1c 31 8d e5                                      str r3, [sp, #0x11c]
004079c8  00 12 94 e5                                      ldr r1, [r4, #0x200]
004079cc  04 02 94 e5                                      ldr r0, [r4, #0x204]
004079d0  73 1c fc eb                                      bl #0x30eba4
004079d4  fe 15 a0 e3                                      mov r1, #0x3f800000
004079d8  71 1c fc eb                                      bl #0x30eba4
004079dc  3f 14 a0 e3                                      mov r1, #0x3f000000
004079e0  e1 1c fc eb                                      bl #0x30ed6c
004079e4  00 10 a0 e1                                      mov r1, r0
004079e8  f8 01 94 e5                                      ldr r0, [r4, #0x1f8]
004079ec  b0 1a fc eb                                      bl #0x30e4b4
004079f0  00 00 50 e3                                      cmp r0, #0
004079f4  c7 02 00 1a                                      bne #0x408518
004079f8  08 32 d4 e5                                      ldrb r3, [r4, #0x208]
004079fc  00 00 53 e3                                      cmp r3, #0
00407a00  13 00 00 0a                                      beq #0x407a54
00407a04  00 20 a0 e3                                      mov r2, #0
00407a08  f8 31 9f e5                                      ldr r3, [pc, #0x1f8]
00407a0c  07 c0 a0 e3                                      mov ip, #7
00407a10  0a 00 a0 e1                                      mov r0, sl
00407a14  03 30 95 e7                                      ldr r3, [r5, r3]
00407a18  41 1f 8d e2                                      add r1, sp, #0x104
00407a1c  08 c1 8d e5                                      str ip, [sp, #0x108]
00407a20  08 30 83 e2                                      add r3, r3, #8
00407a24  04 31 8d e5                                      str r3, [sp, #0x104]
00407a28  0f 30 a0 e3                                      mov r3, #0xf
00407a2c  0c 31 8d e5                                      str r3, [sp, #0x10c]
00407a30  fe 35 a0 e3                                      mov r3, #0x3f800000
00407a34  18 31 8d e5                                      str r3, [sp, #0x118]
00407a38  10 21 8d e5                                      str r2, [sp, #0x110]
00407a3c  14 91 8d e5                                      str sb, [sp, #0x114]
00407a40  1d c5 fc eb                                      bl #0x338ebc
00407a44  d8 31 9f e5                                      ldr r3, [pc, #0x1d8]
00407a48  03 30 95 e7                                      ldr r3, [r5, r3]
00407a4c  08 30 83 e2                                      add r3, r3, #8
00407a50  04 31 8d e5                                      str r3, [sp, #0x104]
00407a54  c0 14 94 e5                                      ldr r1, [r4, #0x4c0]
00407a58  c4 04 94 e5                                      ldr r0, [r4, #0x4c4]
00407a5c  50 1c fc eb                                      bl #0x30eba4
00407a60  fe 15 a0 e3                                      mov r1, #0x3f800000
00407a64  4e 1c fc eb                                      bl #0x30eba4
00407a68  3f 14 a0 e3                                      mov r1, #0x3f000000
00407a6c  be 1c fc eb                                      bl #0x30ed6c
00407a70  00 10 a0 e1                                      mov r1, r0
00407a74  b8 04 94 e5                                      ldr r0, [r4, #0x4b8]
00407a78  8d 1a fc eb                                      bl #0x30e4b4
00407a7c  00 00 50 e3                                      cmp r0, #0
00407a80  9f 02 00 1a                                      bne #0x408504
00407a84  c8 34 d4 e5                                      ldrb r3, [r4, #0x4c8]
00407a88  00 00 53 e3                                      cmp r3, #0
00407a8c  13 00 00 0a                                      beq #0x407ae0
00407a90  00 20 a0 e3                                      mov r2, #0
00407a94  6c 31 9f e5                                      ldr r3, [pc, #0x16c]
00407a98  07 c0 a0 e3                                      mov ip, #7
00407a9c  0a 00 a0 e1                                      mov r0, sl
00407aa0  03 30 95 e7                                      ldr r3, [r5, r3]
00407aa4  ec 10 8d e2                                      add r1, sp, #0xec
00407aa8  f0 c0 8d e5                                      str ip, [sp, #0xf0]
00407aac  08 30 83 e2                                      add r3, r3, #8
00407ab0  ec 30 8d e5                                      str r3, [sp, #0xec]
00407ab4  25 30 a0 e3                                      mov r3, #0x25
00407ab8  f4 30 8d e5                                      str r3, [sp, #0xf4]
00407abc  fe 35 a0 e3                                      mov r3, #0x3f800000
00407ac0  00 31 8d e5                                      str r3, [sp, #0x100]
00407ac4  f8 20 8d e5                                      str r2, [sp, #0xf8]
00407ac8  fc 90 8d e5                                      str sb, [sp, #0xfc]
00407acc  fa c4 fc eb                                      bl #0x338ebc
00407ad0  4c 31 9f e5                                      ldr r3, [pc, #0x14c]
00407ad4  03 30 95 e7                                      ldr r3, [r5, r3]
00407ad8  08 30 83 e2                                      add r3, r3, #8
00407adc  ec 30 8d e5                                      str r3, [sp, #0xec]
00407ae0  e0 14 94 e5                                      ldr r1, [r4, #0x4e0]
00407ae4  e4 04 94 e5                                      ldr r0, [r4, #0x4e4]
00407ae8  2d 1c fc eb                                      bl #0x30eba4
00407aec  fe 15 a0 e3                                      mov r1, #0x3f800000
00407af0  2b 1c fc eb                                      bl #0x30eba4
00407af4  3f 14 a0 e3                                      mov r1, #0x3f000000
00407af8  9b 1c fc eb                                      bl #0x30ed6c
00407afc  00 10 a0 e1                                      mov r1, r0
00407b00  d8 04 94 e5                                      ldr r0, [r4, #0x4d8]
00407b04  6a 1a fc eb                                      bl #0x30e4b4
00407b08  00 00 50 e3                                      cmp r0, #0
00407b0c  77 02 00 1a                                      bne #0x4084f0
00407b10  e8 34 d4 e5                                      ldrb r3, [r4, #0x4e8]
00407b14  00 00 53 e3                                      cmp r3, #0
00407b18  13 00 00 0a                                      beq #0x407b6c
00407b1c  00 20 a0 e3                                      mov r2, #0
00407b20  e0 30 9f e5                                      ldr r3, [pc, #0xe0]
00407b24  07 c0 a0 e3                                      mov ip, #7
00407b28  0a 00 a0 e1                                      mov r0, sl
00407b2c  03 30 95 e7                                      ldr r3, [r5, r3]
00407b30  d4 10 8d e2                                      add r1, sp, #0xd4
00407b34  d8 c0 8d e5                                      str ip, [sp, #0xd8]
00407b38  08 30 83 e2                                      add r3, r3, #8
00407b3c  d4 30 8d e5                                      str r3, [sp, #0xd4]
00407b40  26 30 a0 e3                                      mov r3, #0x26
00407b44  dc 30 8d e5                                      str r3, [sp, #0xdc]
00407b48  fe 35 a0 e3                                      mov r3, #0x3f800000
00407b4c  e8 30 8d e5                                      str r3, [sp, #0xe8]
00407b50  e0 20 8d e5                                      str r2, [sp, #0xe0]
00407b54  e4 90 8d e5                                      str sb, [sp, #0xe4]
00407b58  d7 c4 fc eb                                      bl #0x338ebc
00407b5c  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
00407b60  03 30 95 e7                                      ldr r3, [r5, r3]
00407b64  08 30 83 e2                                      add r3, r3, #8
00407b68  d4 30 8d e5                                      str r3, [sp, #0xd4]
00407b6c  00 15 94 e5                                      ldr r1, [r4, #0x500]
00407b70  04 05 94 e5                                      ldr r0, [r4, #0x504]
00407b74  0a 1c fc eb                                      bl #0x30eba4
00407b78  fe 15 a0 e3                                      mov r1, #0x3f800000
00407b7c  08 1c fc eb                                      bl #0x30eba4
00407b80  3f 14 a0 e3                                      mov r1, #0x3f000000
00407b84  78 1c fc eb                                      bl #0x30ed6c
00407b88  00 10 a0 e1                                      mov r1, r0
00407b8c  f8 04 94 e5                                      ldr r0, [r4, #0x4f8]
00407b90  47 1a fc eb                                      bl #0x30e4b4
00407b94  00 00 50 e3                                      cmp r0, #0
00407b98  4f 02 00 1a                                      bne #0x4084dc
00407b9c  08 35 d4 e5                                      ldrb r3, [r4, #0x508]
00407ba0  00 00 53 e3                                      cmp r3, #0
00407ba4  1f 00 00 0a                                      beq #0x407c28
00407ba8  00 20 a0 e3                                      mov r2, #0
00407bac  54 30 9f e5                                      ldr r3, [pc, #0x54]
00407bb0  07 c0 a0 e3                                      mov ip, #7
00407bb4  0a 00 a0 e1                                      mov r0, sl
00407bb8  03 30 95 e7                                      ldr r3, [r5, r3]
00407bbc  bc 10 8d e2                                      add r1, sp, #0xbc
00407bc0  c0 c0 8d e5                                      str ip, [sp, #0xc0]
00407bc4  08 30 83 e2                                      add r3, r3, #8
00407bc8  bc 30 8d e5                                      str r3, [sp, #0xbc]
00407bcc  27 30 a0 e3                                      mov r3, #0x27
00407bd0  c4 30 8d e5                                      str r3, [sp, #0xc4]
00407bd4  fe 35 a0 e3                                      mov r3, #0x3f800000
00407bd8  d0 30 8d e5                                      str r3, [sp, #0xd0]
00407bdc  c8 20 8d e5                                      str r2, [sp, #0xc8]
00407be0  cc 90 8d e5                                      str sb, [sp, #0xcc]
00407be4  b4 c4 fc eb                                      bl #0x338ebc
00407be8  34 30 9f e5                                      ldr r3, [pc, #0x34]
00407bec  03 30 95 e7                                      ldr r3, [r5, r3]
00407bf0  08 30 83 e2                                      add r3, r3, #8
00407bf4  bc 30 8d e5                                      str r3, [sp, #0xbc]
00407bf8  0a 00 00 ea                                      b #0x407c28
; mapping-symbol data/literal pool
00407bfc  54 de 58 00 ac 40 00 00 f4 37 00 00 90 3d 00 00  .byte 0x54, 0xde, 0x58, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x90, 0x3d, 0x00, 0x00
00407c0c  84 08 00 00 e0 f8 4b 00 2c 3f 00 00 b0 42 00 00  .byte 0x84, 0x08, 0x00, 0x00, 0xe0, 0xf8, 0x4b, 0x00, 0x2c, 0x3f, 0x00, 0x00, 0xb0, 0x42, 0x00, 0x00
00407c1c  d8 4b 00 00 00 1b 00 00 b0 0b 00 00              .byte 0xd8, 0x4b, 0x00, 0x00, 0x00, 0x1b, 0x00, 0x00, 0xb0, 0x0b, 0x00, 0x00
; decoder-mode: arm
00407c28  20 15 94 e5                                      ldr r1, [r4, #0x520]
00407c2c  24 05 94 e5                                      ldr r0, [r4, #0x524]
00407c30  db 1b fc eb                                      bl #0x30eba4
00407c34  fe 15 a0 e3                                      mov r1, #0x3f800000
00407c38  d9 1b fc eb                                      bl #0x30eba4
00407c3c  3f 14 a0 e3                                      mov r1, #0x3f000000
00407c40  49 1c fc eb                                      bl #0x30ed6c
00407c44  00 10 a0 e1                                      mov r1, r0
00407c48  18 05 94 e5                                      ldr r0, [r4, #0x518]
00407c4c  18 1a fc eb                                      bl #0x30e4b4
00407c50  00 00 50 e3                                      cmp r0, #0
00407c54  1b 02 00 1a                                      bne #0x4084c8
00407c58  28 35 d4 e5                                      ldrb r3, [r4, #0x528]
00407c5c  00 00 53 e3                                      cmp r3, #0
00407c60  13 00 00 0a                                      beq #0x407cb4
00407c64  00 20 a0 e3                                      mov r2, #0
00407c68  68 30 1f e5                                      ldr r3, [pc, #-0x68]
00407c6c  07 c0 a0 e3                                      mov ip, #7
00407c70  0a 00 a0 e1                                      mov r0, sl
00407c74  03 30 95 e7                                      ldr r3, [r5, r3]
00407c78  a4 10 8d e2                                      add r1, sp, #0xa4
00407c7c  a8 c0 8d e5                                      str ip, [sp, #0xa8]
00407c80  08 30 83 e2                                      add r3, r3, #8
00407c84  a4 30 8d e5                                      str r3, [sp, #0xa4]
00407c88  28 30 a0 e3                                      mov r3, #0x28
00407c8c  ac 30 8d e5                                      str r3, [sp, #0xac]
00407c90  fe 35 a0 e3                                      mov r3, #0x3f800000
00407c94  b8 30 8d e5                                      str r3, [sp, #0xb8]
00407c98  b0 20 8d e5                                      str r2, [sp, #0xb0]
00407c9c  b4 90 8d e5                                      str sb, [sp, #0xb4]
00407ca0  85 c4 fc eb                                      bl #0x338ebc
00407ca4  88 30 1f e5                                      ldr r3, [pc, #-0x88]
00407ca8  03 30 95 e7                                      ldr r3, [r5, r3]
00407cac  08 30 83 e2                                      add r3, r3, #8
00407cb0  a4 30 8d e5                                      str r3, [sp, #0xa4]
00407cb4  40 15 94 e5                                      ldr r1, [r4, #0x540]
00407cb8  44 05 94 e5                                      ldr r0, [r4, #0x544]
00407cbc  b8 1b fc eb                                      bl #0x30eba4
00407cc0  fe 15 a0 e3                                      mov r1, #0x3f800000
00407cc4  b6 1b fc eb                                      bl #0x30eba4
00407cc8  3f 14 a0 e3                                      mov r1, #0x3f000000
00407ccc  26 1c fc eb                                      bl #0x30ed6c
00407cd0  00 10 a0 e1                                      mov r1, r0
00407cd4  38 05 94 e5                                      ldr r0, [r4, #0x538]
00407cd8  f5 19 fc eb                                      bl #0x30e4b4
00407cdc  00 00 50 e3                                      cmp r0, #0
00407ce0  f3 01 00 1a                                      bne #0x4084b4
00407ce4  48 35 d4 e5                                      ldrb r3, [r4, #0x548]
00407ce8  00 00 53 e3                                      cmp r3, #0
00407cec  13 00 00 0a                                      beq #0x407d40
00407cf0  00 20 a0 e3                                      mov r2, #0
00407cf4  f4 30 1f e5                                      ldr r3, [pc, #-0xf4]
00407cf8  07 c0 a0 e3                                      mov ip, #7
00407cfc  0a 00 a0 e1                                      mov r0, sl
00407d00  03 30 95 e7                                      ldr r3, [r5, r3]
00407d04  8c 10 8d e2                                      add r1, sp, #0x8c
00407d08  90 c0 8d e5                                      str ip, [sp, #0x90]
00407d0c  08 30 83 e2                                      add r3, r3, #8
00407d10  8c 30 8d e5                                      str r3, [sp, #0x8c]
00407d14  29 30 a0 e3                                      mov r3, #0x29
00407d18  94 30 8d e5                                      str r3, [sp, #0x94]
00407d1c  fe 35 a0 e3                                      mov r3, #0x3f800000
00407d20  a0 30 8d e5                                      str r3, [sp, #0xa0]
00407d24  98 20 8d e5                                      str r2, [sp, #0x98]
00407d28  9c 90 8d e5                                      str sb, [sp, #0x9c]
00407d2c  62 c4 fc eb                                      bl #0x338ebc
00407d30  14 31 1f e5                                      ldr r3, [pc, #-0x114]
00407d34  03 30 95 e7                                      ldr r3, [r5, r3]
00407d38  08 30 83 e2                                      add r3, r3, #8
00407d3c  8c 30 8d e5                                      str r3, [sp, #0x8c]
00407d40  60 15 94 e5                                      ldr r1, [r4, #0x560]
00407d44  64 05 94 e5                                      ldr r0, [r4, #0x564]
00407d48  95 1b fc eb                                      bl #0x30eba4
00407d4c  fe 15 a0 e3                                      mov r1, #0x3f800000
00407d50  93 1b fc eb                                      bl #0x30eba4
00407d54  3f 14 a0 e3                                      mov r1, #0x3f000000
00407d58  03 1c fc eb                                      bl #0x30ed6c
00407d5c  00 10 a0 e1                                      mov r1, r0
00407d60  58 05 94 e5                                      ldr r0, [r4, #0x558]
00407d64  d2 19 fc eb                                      bl #0x30e4b4
00407d68  00 00 50 e3                                      cmp r0, #0
00407d6c  cb 01 00 1a                                      bne #0x4084a0
00407d70  68 35 d4 e5                                      ldrb r3, [r4, #0x568]
00407d74  00 00 53 e3                                      cmp r3, #0
00407d78  13 00 00 0a                                      beq #0x407dcc
00407d7c  00 20 a0 e3                                      mov r2, #0
00407d80  80 31 1f e5                                      ldr r3, [pc, #-0x180]
00407d84  07 c0 a0 e3                                      mov ip, #7
00407d88  0a 00 a0 e1                                      mov r0, sl
00407d8c  03 30 95 e7                                      ldr r3, [r5, r3]
00407d90  74 10 8d e2                                      add r1, sp, #0x74
00407d94  78 c0 8d e5                                      str ip, [sp, #0x78]
00407d98  08 30 83 e2                                      add r3, r3, #8
00407d9c  74 30 8d e5                                      str r3, [sp, #0x74]
00407da0  2a 30 a0 e3                                      mov r3, #0x2a
00407da4  7c 30 8d e5                                      str r3, [sp, #0x7c]
00407da8  fe 35 a0 e3                                      mov r3, #0x3f800000
00407dac  88 30 8d e5                                      str r3, [sp, #0x88]
00407db0  80 20 8d e5                                      str r2, [sp, #0x80]
00407db4  84 90 8d e5                                      str sb, [sp, #0x84]
00407db8  3f c4 fc eb                                      bl #0x338ebc
00407dbc  a0 31 1f e5                                      ldr r3, [pc, #-0x1a0]
00407dc0  03 30 95 e7                                      ldr r3, [r5, r3]
00407dc4  08 30 83 e2                                      add r3, r3, #8
00407dc8  74 30 8d e5                                      str r3, [sp, #0x74]
00407dcc  80 15 94 e5                                      ldr r1, [r4, #0x580]
00407dd0  84 05 94 e5                                      ldr r0, [r4, #0x584]
00407dd4  72 1b fc eb                                      bl #0x30eba4
00407dd8  fe 15 a0 e3                                      mov r1, #0x3f800000
00407ddc  70 1b fc eb                                      bl #0x30eba4
00407de0  3f 14 a0 e3                                      mov r1, #0x3f000000
00407de4  e0 1b fc eb                                      bl #0x30ed6c
00407de8  00 10 a0 e1                                      mov r1, r0
00407dec  78 05 94 e5                                      ldr r0, [r4, #0x578]
00407df0  af 19 fc eb                                      bl #0x30e4b4
00407df4  00 00 50 e3                                      cmp r0, #0
00407df8  d5 01 00 1a                                      bne #0x408554
00407dfc  88 35 d4 e5                                      ldrb r3, [r4, #0x588]
00407e00  00 00 53 e3                                      cmp r3, #0
00407e04  13 00 00 0a                                      beq #0x407e58
00407e08  00 20 a0 e3                                      mov r2, #0
00407e0c  0c 32 1f e5                                      ldr r3, [pc, #-0x20c]
00407e10  07 c0 a0 e3                                      mov ip, #7
00407e14  0a 00 a0 e1                                      mov r0, sl
00407e18  03 30 95 e7                                      ldr r3, [r5, r3]
00407e1c  5c 10 8d e2                                      add r1, sp, #0x5c
00407e20  60 c0 8d e5                                      str ip, [sp, #0x60]
00407e24  08 30 83 e2                                      add r3, r3, #8
00407e28  5c 30 8d e5                                      str r3, [sp, #0x5c]
00407e2c  2b 30 a0 e3                                      mov r3, #0x2b
00407e30  64 30 8d e5                                      str r3, [sp, #0x64]
00407e34  fe 35 a0 e3                                      mov r3, #0x3f800000
00407e38  70 30 8d e5                                      str r3, [sp, #0x70]
00407e3c  68 20 8d e5                                      str r2, [sp, #0x68]
00407e40  6c 90 8d e5                                      str sb, [sp, #0x6c]
00407e44  1c c4 fc eb                                      bl #0x338ebc
00407e48  2c 32 1f e5                                      ldr r3, [pc, #-0x22c]
00407e4c  03 30 95 e7                                      ldr r3, [r5, r3]
00407e50  08 30 83 e2                                      add r3, r3, #8
00407e54  5c 30 8d e5                                      str r3, [sp, #0x5c]
00407e58  a0 15 94 e5                                      ldr r1, [r4, #0x5a0]
00407e5c  a4 05 94 e5                                      ldr r0, [r4, #0x5a4]
00407e60  4f 1b fc eb                                      bl #0x30eba4
00407e64  fe 15 a0 e3                                      mov r1, #0x3f800000
00407e68  4d 1b fc eb                                      bl #0x30eba4
00407e6c  3f 14 a0 e3                                      mov r1, #0x3f000000
00407e70  bd 1b fc eb                                      bl #0x30ed6c
00407e74  00 10 a0 e1                                      mov r1, r0
00407e78  98 05 94 e5                                      ldr r0, [r4, #0x598]
00407e7c  8c 19 fc eb                                      bl #0x30e4b4
00407e80  00 00 50 e3                                      cmp r0, #0
00407e84  ad 01 00 1a                                      bne #0x408540
00407e88  a8 35 d4 e5                                      ldrb r3, [r4, #0x5a8]
00407e8c  00 00 53 e3                                      cmp r3, #0
00407e90  13 00 00 0a                                      beq #0x407ee4
00407e94  00 20 a0 e3                                      mov r2, #0
00407e98  98 32 1f e5                                      ldr r3, [pc, #-0x298]
00407e9c  07 c0 a0 e3                                      mov ip, #7
00407ea0  0a 00 a0 e1                                      mov r0, sl
00407ea4  03 30 95 e7                                      ldr r3, [r5, r3]
00407ea8  44 10 8d e2                                      add r1, sp, #0x44
00407eac  48 c0 8d e5                                      str ip, [sp, #0x48]
00407eb0  08 30 83 e2                                      add r3, r3, #8
00407eb4  44 30 8d e5                                      str r3, [sp, #0x44]
00407eb8  2c 30 a0 e3                                      mov r3, #0x2c
00407ebc  4c 30 8d e5                                      str r3, [sp, #0x4c]
00407ec0  fe 35 a0 e3                                      mov r3, #0x3f800000
00407ec4  58 30 8d e5                                      str r3, [sp, #0x58]
00407ec8  50 20 8d e5                                      str r2, [sp, #0x50]
00407ecc  54 90 8d e5                                      str sb, [sp, #0x54]
00407ed0  f9 c3 fc eb                                      bl #0x338ebc
00407ed4  b8 32 1f e5                                      ldr r3, [pc, #-0x2b8]
00407ed8  03 30 95 e7                                      ldr r3, [r5, r3]
00407edc  08 30 83 e2                                      add r3, r3, #8
00407ee0  44 30 8d e5                                      str r3, [sp, #0x44]
00407ee4  80 12 94 e5                                      ldr r1, [r4, #0x280]
00407ee8  84 02 94 e5                                      ldr r0, [r4, #0x284]
00407eec  2c 1b fc eb                                      bl #0x30eba4
00407ef0  fe 15 a0 e3                                      mov r1, #0x3f800000
00407ef4  2a 1b fc eb                                      bl #0x30eba4
00407ef8  3f 14 a0 e3                                      mov r1, #0x3f000000
00407efc  9a 1b fc eb                                      bl #0x30ed6c
00407f00  00 10 a0 e1                                      mov r1, r0
00407f04  78 02 94 e5                                      ldr r0, [r4, #0x278]
00407f08  69 19 fc eb                                      bl #0x30e4b4
00407f0c  00 00 50 e3                                      cmp r0, #0
00407f10  94 01 00 1a                                      bne #0x408568
00407f14  88 32 d4 e5                                      ldrb r3, [r4, #0x288]
00407f18  00 00 53 e3                                      cmp r3, #0
00407f1c  23 00 00 0a                                      beq #0x407fb0
00407f20  08 30 95 e7                                      ldr r3, [r5, r8]
00407f24  01 20 a0 e3                                      mov r2, #1
00407f28  10 30 93 e5                                      ldr r3, [r3, #0x10]
00407f2c  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
00407f30  90 22 c3 e5                                      strb r2, [r3, #0x290]
00407f34  80 12 94 e5                                      ldr r1, [r4, #0x280]
00407f38  84 02 94 e5                                      ldr r0, [r4, #0x284]
00407f3c  18 1b fc eb                                      bl #0x30eba4
00407f40  fe 15 a0 e3                                      mov r1, #0x3f800000
00407f44  16 1b fc eb                                      bl #0x30eba4
00407f48  3f 14 a0 e3                                      mov r1, #0x3f000000
00407f4c  86 1b fc eb                                      bl #0x30ed6c
00407f50  78 12 94 e5                                      ldr r1, [r4, #0x278]
00407f54  94 1a fc eb                                      bl #0x30e9ac
00407f58  00 00 50 e3                                      cmp r0, #0
00407f5c  5d 02 00 1a                                      bne #0x4088d8
00407f60  00 c0 a0 e3                                      mov ip, #0
00407f64  64 33 1f e5                                      ldr r3, [pc, #-0x364]
00407f68  07 20 a0 e3                                      mov r2, #7
00407f6c  0a 00 a0 e1                                      mov r0, sl
00407f70  03 30 95 e7                                      ldr r3, [r5, r3]
00407f74  2c 10 8d e2                                      add r1, sp, #0x2c
00407f78  30 20 8d e5                                      str r2, [sp, #0x30]
00407f7c  08 30 83 e2                                      add r3, r3, #8
00407f80  2c 30 8d e5                                      str r3, [sp, #0x2c]
00407f84  13 30 a0 e3                                      mov r3, #0x13
00407f88  34 30 8d e5                                      str r3, [sp, #0x34]
00407f8c  fe 35 a0 e3                                      mov r3, #0x3f800000
00407f90  40 30 8d e5                                      str r3, [sp, #0x40]
00407f94  38 c0 8d e5                                      str ip, [sp, #0x38]
00407f98  3c 90 8d e5                                      str sb, [sp, #0x3c]
00407f9c  c6 c3 fc eb                                      bl #0x338ebc
00407fa0  84 33 1f e5                                      ldr r3, [pc, #-0x384]
00407fa4  03 30 95 e7                                      ldr r3, [r5, r3]
00407fa8  08 30 83 e2                                      add r3, r3, #8
00407fac  2c 30 8d e5                                      str r3, [sp, #0x2c]
00407fb0  e0 12 94 e5                                      ldr r1, [r4, #0x2e0]
00407fb4  e4 02 94 e5                                      ldr r0, [r4, #0x2e4]
00407fb8  f9 1a fc eb                                      bl #0x30eba4
00407fbc  fe 15 a0 e3                                      mov r1, #0x3f800000
00407fc0  f7 1a fc eb                                      bl #0x30eba4
00407fc4  3f 14 a0 e3                                      mov r1, #0x3f000000
00407fc8  67 1b fc eb                                      bl #0x30ed6c
00407fcc  00 10 a0 e1                                      mov r1, r0
00407fd0  d8 02 94 e5                                      ldr r0, [r4, #0x2d8]
00407fd4  36 19 fc eb                                      bl #0x30e4b4
00407fd8  00 00 50 e3                                      cmp r0, #0
00407fdc  66 01 00 1a                                      bne #0x40857c
00407fe0  e8 32 d4 e5                                      ldrb r3, [r4, #0x2e8]
00407fe4  00 00 53 e3                                      cmp r3, #0
00407fe8  13 00 00 0a                                      beq #0x40803c
00407fec  00 c0 a0 e3                                      mov ip, #0
00407ff0  f0 33 1f e5                                      ldr r3, [pc, #-0x3f0]
00407ff4  07 20 a0 e3                                      mov r2, #7
00407ff8  0a 00 a0 e1                                      mov r0, sl
00407ffc  03 30 95 e7                                      ldr r3, [r5, r3]
00408000  14 10 8d e2                                      add r1, sp, #0x14
00408004  18 20 8d e5                                      str r2, [sp, #0x18]
00408008  08 30 83 e2                                      add r3, r3, #8
0040800c  14 30 8d e5                                      str r3, [sp, #0x14]
00408010  16 30 a0 e3                                      mov r3, #0x16
00408014  1c 30 8d e5                                      str r3, [sp, #0x1c]
00408018  fe 35 a0 e3                                      mov r3, #0x3f800000
0040801c  28 30 8d e5                                      str r3, [sp, #0x28]
00408020  20 c0 8d e5                                      str ip, [sp, #0x20]
00408024  24 90 8d e5                                      str sb, [sp, #0x24]
00408028  a3 c3 fc eb                                      bl #0x338ebc
0040802c  10 34 1f e5                                      ldr r3, [pc, #-0x410]
00408030  03 30 95 e7                                      ldr r3, [r5, r3]
00408034  08 30 83 e2                                      add r3, r3, #8
00408038  14 30 8d e5                                      str r3, [sp, #0x14]
0040803c  0c 06 94 e5                                      ldr r0, [r4, #0x60c]
00408040  00 10 a0 e1                                      mov r1, r0
00408044  d6 1a fc eb                                      bl #0x30eba4
00408048  10 16 94 e5                                      ldr r1, [r4, #0x610]
0040804c  00 80 a0 e1                                      mov r8, r0
00408050  14 06 94 e5                                      ldr r0, [r4, #0x614]
00408054  d4 18 fc eb                                      bl #0x30e3ac
00408058  00 10 a0 e1                                      mov r1, r0
0040805c  08 00 a0 e1                                      mov r0, r8
00408060  0b 1b fc eb                                      bl #0x30ec94
00408064  fa 15 a0 e3                                      mov r1, #0x3e800000
00408068  00 80 a0 e1                                      mov r8, r0
0040806c  02 01 c0 e3                                      bic r0, r0, #0x80000000
00408070  a0 18 fc eb                                      bl #0x30e2f8
00408074  00 00 50 e3                                      cmp r0, #0
00408078  b0 01 00 1a                                      bne #0x408740
0040807c  cc 05 94 e5                                      ldr r0, [r4, #0x5cc]
00408080  00 10 a0 e1                                      mov r1, r0
00408084  c6 1a fc eb                                      bl #0x30eba4
00408088  d0 15 94 e5                                      ldr r1, [r4, #0x5d0]
0040808c  00 80 a0 e1                                      mov r8, r0
00408090  d4 05 94 e5                                      ldr r0, [r4, #0x5d4]
00408094  c4 18 fc eb                                      bl #0x30e3ac
00408098  00 10 a0 e1                                      mov r1, r0
0040809c  08 00 a0 e1                                      mov r0, r8
004080a0  fb 1a fc eb                                      bl #0x30ec94
004080a4  00 a0 a0 e1                                      mov sl, r0
004080a8  ac 05 94 e5                                      ldr r0, [r4, #0x5ac]
004080ac  00 10 a0 e1                                      mov r1, r0
004080b0  bb 1a fc eb                                      bl #0x30eba4
004080b4  b0 15 94 e5                                      ldr r1, [r4, #0x5b0]
004080b8  00 80 a0 e1                                      mov r8, r0
004080bc  b4 05 94 e5                                      ldr r0, [r4, #0x5b4]
004080c0  b9 18 fc eb                                      bl #0x30e3ac
004080c4  00 10 a0 e1                                      mov r1, r0
004080c8  08 00 a0 e1                                      mov r0, r8
004080cc  f0 1a fc eb                                      bl #0x30ec94
004080d0  fa 15 a0 e3                                      mov r1, #0x3e800000
004080d4  00 40 a0 e1                                      mov r4, r0
004080d8  02 01 c0 e3                                      bic r0, r0, #0x80000000
004080dc  85 18 fc eb                                      bl #0x30e2f8
004080e0  00 00 50 e3                                      cmp r0, #0
004080e4  6f 01 00 0a                                      beq #0x4086a8
004080e8  06 00 a0 e1                                      mov r0, r6
004080ec  04 10 a0 e1                                      mov r1, r4
004080f0  0a 20 a0 e1                                      mov r2, sl
004080f4  a0 f5 ff eb                                      bl #0x40577c
004080f8  07 30 95 e7                                      ldr r3, [r5, r7]
004080fc  ec 22 9d e5                                      ldr r2, [sp, #0x2ec]
00408100  00 30 93 e5                                      ldr r3, [r3]
00408104  03 00 52 e1                                      cmp r2, r3
00408108  f1 01 00 1a                                      bne #0x4088d4
0040810c  bd df 8d e2                                      add sp, sp, #0x2f4
00408110  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00408114  10 35 1f e5                                      ldr r3, [pc, #-0x510]
00408118  b5 af 8d e2                                      add sl, sp, #0x2d4
0040811c  03 90 95 e7                                      ldr sb, [r5, r3]
00408120  09 00 a0 e1                                      mov r0, sb
00408124  d7 bd fc eb                                      bl #0x337888
00408128  0a 00 a0 e1                                      mov r0, sl
0040812c  1c 10 a0 e3                                      mov r1, #0x1c
00408130  e4 a2 8d e5                                      str sl, [sp, #0x2e4]
00408134  e8 a2 8d e5                                      str sl, [sp, #0x2e8]
00408138  4f 25 fc eb                                      bl #0x31167c
0040813c  34 15 1f e5                                      ldr r1, [pc, #-0x534]
00408140  1b 20 a0 e3                                      mov r2, #0x1b
00408144  e8 02 9d e5                                      ldr r0, [sp, #0x2e8]
00408148  01 10 8f e0                                      add r1, pc, r1
0040814c  c5 19 fc eb                                      bl #0x30e868
00408150  1b 30 80 e2                                      add r3, r0, #0x1b
00408154  e4 32 8d e5                                      str r3, [sp, #0x2e4]
00408158  00 30 a0 e3                                      mov r3, #0
0040815c  1b 30 c0 e5                                      strb r3, [r0, #0x1b]
00408160  0a 10 a0 e1                                      mov r1, sl
00408164  09 00 a0 e1                                      mov r0, sb
00408168  46 be fc eb                                      bl #0x337a88
0040816c  00 90 a0 e1                                      mov sb, r0
00408170  0a 00 a0 e1                                      mov r0, sl
00408174  0c 2e fc eb                                      bl #0x3139ac
00408178  00 00 59 e3                                      cmp sb, #0
0040817c  76 00 00 1a                                      bne #0x40835c
00408180  74 35 1f e5                                      ldr r3, [pc, #-0x574]
00408184  c8 b2 9d e5                                      ldr fp, [sp, #0x2c8]
00408188  03 a0 95 e7                                      ldr sl, [r5, r3]
0040818c  0b 00 a0 e1                                      mov r0, fp
00408190  00 90 9a e5                                      ldr sb, [sl]
00408194  09 10 a0 e1                                      mov r1, sb
00408198  83 18 fc eb                                      bl #0x30e3ac
0040819c  04 20 9a e5                                      ldr r2, [sl, #4]
004081a0  00 30 a0 e1                                      mov r3, r0
004081a4  cc 02 9d e5                                      ldr r0, [sp, #0x2cc]
004081a8  02 10 a0 e1                                      mov r1, r2
004081ac  04 30 8d e5                                      str r3, [sp, #4]
004081b0  0c 20 8d e5                                      str r2, [sp, #0xc]
004081b4  7c 18 fc eb                                      bl #0x30e3ac
004081b8  08 a0 9a e5                                      ldr sl, [sl, #8]
004081bc  00 20 a0 e1                                      mov r2, r0
004081c0  d0 02 9d e5                                      ldr r0, [sp, #0x2d0]
004081c4  0a 10 a0 e1                                      mov r1, sl
004081c8  08 20 8d e5                                      str r2, [sp, #8]
004081cc  76 18 fc eb                                      bl #0x30e3ac
004081d0  04 30 9d e5                                      ldr r3, [sp, #4]
004081d4  00 c0 a0 e1                                      mov ip, r0
004081d8  00 c0 8d e5                                      str ip, [sp]
004081dc  03 10 a0 e1                                      mov r1, r3
004081e0  03 00 a0 e1                                      mov r0, r3
004081e4  e0 1a fc eb                                      bl #0x30ed6c
004081e8  08 20 9d e5                                      ldr r2, [sp, #8]
004081ec  00 30 a0 e1                                      mov r3, r0
004081f0  04 30 8d e5                                      str r3, [sp, #4]
004081f4  02 10 a0 e1                                      mov r1, r2
004081f8  02 00 a0 e1                                      mov r0, r2
004081fc  da 1a fc eb                                      bl #0x30ed6c
00408200  04 30 9d e5                                      ldr r3, [sp, #4]
00408204  00 10 a0 e1                                      mov r1, r0
00408208  03 00 a0 e1                                      mov r0, r3
0040820c  64 1a fc eb                                      bl #0x30eba4
00408210  00 c0 9d e5                                      ldr ip, [sp]
00408214  00 30 a0 e1                                      mov r3, r0
00408218  04 30 8d e5                                      str r3, [sp, #4]
0040821c  0c 10 a0 e1                                      mov r1, ip
00408220  0c 00 a0 e1                                      mov r0, ip
00408224  d0 1a fc eb                                      bl #0x30ed6c
00408228  04 30 9d e5                                      ldr r3, [sp, #4]
0040822c  00 10 a0 e1                                      mov r1, r0
00408230  03 00 a0 e1                                      mov r0, r3
00408234  5a 1a fc eb                                      bl #0x30eba4
00408238  17 17 0b e3                                      movw r1, #0xb717
0040823c  d1 18 43 e3                                      movt r1, #0x38d1
00408240  2c 18 fc eb                                      bl #0x30e2f8
00408244  00 00 50 e3                                      cmp r0, #0
00408248  69 01 00 0a                                      beq #0x4087f4
0040824c  3c 36 1f e5                                      ldr r3, [pc, #-0x63c]
00408250  cc 12 9d e5                                      ldr r1, [sp, #0x2cc]
00408254  d0 22 9d e5                                      ldr r2, [sp, #0x2d0]
00408258  03 30 95 e7                                      ldr r3, [r5, r3]
0040825c  14 b0 86 e5                                      str fp, [r6, #0x14]
00408260  18 10 86 e5                                      str r1, [r6, #0x18]
00408264  1c 20 86 e5                                      str r2, [r6, #0x1c]
00408268  00 10 93 e5                                      ldr r1, [r3]
0040826c  00 00 51 e3                                      cmp r1, #0
00408270  95 01 00 0a                                      beq #0x4088cc
00408274  2b ae 8d e2                                      add sl, sp, #0x2b0
00408278  0a 00 a0 e1                                      mov r0, sl
0040827c  89 19 00 eb                                      bl #0x40e8a8
00408280  6c 36 1f e5                                      ldr r3, [pc, #-0x66c]
00408284  0a 10 a0 e1                                      mov r1, sl
00408288  03 00 95 e7                                      ldr r0, [r5, r3]
0040828c  00 30 a0 e3                                      mov r3, #0
00408290  b8 32 8d e5                                      str r3, [sp, #0x2b8]
00408294  6f 2b fc eb                                      bl #0x313058
00408298  b2 af 8d e2                                      add sl, sp, #0x2c8
0040829c  00 10 a0 e1                                      mov r1, r0
004082a0  0a 00 a0 e1                                      mov r0, sl
004082a4  25 75 ff eb                                      bl #0x3e5740
004082a8  0a 10 a0 e1                                      mov r1, sl
004082ac  06 00 a0 e1                                      mov r0, r6
004082b0  2f f4 ff eb                                      bl #0x405374
004082b4  fd fa ff ea                                      b #0x406eb0
004082b8  28 11 d4 e5                                      ldrb r1, [r4, #0x128]
004082bc  00 00 51 e3                                      cmp r1, #0
004082c0  60 fb ff 1a                                      bne #0x407048
004082c4  06 00 a0 e1                                      mov r0, r6
004082c8  ca f4 ff eb                                      bl #0x4055f8
004082cc  5d fb ff ea                                      b #0x407048
004082d0  80 11 94 e5                                      ldr r1, [r4, #0x180]
004082d4  84 01 94 e5                                      ldr r0, [r4, #0x184]
004082d8  31 1a fc eb                                      bl #0x30eba4
004082dc  fe 15 a0 e3                                      mov r1, #0x3f800000
004082e0  2f 1a fc eb                                      bl #0x30eba4
004082e4  3f 14 a0 e3                                      mov r1, #0x3f000000
004082e8  9f 1a fc eb                                      bl #0x30ed6c
004082ec  00 10 a0 e1                                      mov r1, r0
004082f0  78 01 94 e5                                      ldr r0, [r4, #0x178]
004082f4  6e 18 fc eb                                      bl #0x30e4b4
004082f8  00 00 50 e3                                      cmp r0, #0
004082fc  02 00 00 0a                                      beq #0x40830c
00408300  88 31 d4 e5                                      ldrb r3, [r4, #0x188]
00408304  00 00 53 e3                                      cmp r3, #0
00408308  6c fb ff 0a                                      beq #0x4070c0
0040830c  c0 11 94 e5                                      ldr r1, [r4, #0x1c0]
00408310  c4 01 94 e5                                      ldr r0, [r4, #0x1c4]
00408314  22 1a fc eb                                      bl #0x30eba4
00408318  fe 15 a0 e3                                      mov r1, #0x3f800000
0040831c  20 1a fc eb                                      bl #0x30eba4
00408320  3f 14 a0 e3                                      mov r1, #0x3f000000
00408324  90 1a fc eb                                      bl #0x30ed6c
00408328  00 10 a0 e1                                      mov r1, r0
0040832c  b8 01 94 e5                                      ldr r0, [r4, #0x1b8]
00408330  5f 18 fc eb                                      bl #0x30e4b4
00408334  00 00 50 e3                                      cmp r0, #0
00408338  62 fb ff 0a                                      beq #0x4070c8
0040833c  c8 31 d4 e5                                      ldrb r3, [r4, #0x1c8]
00408340  00 00 53 e3                                      cmp r3, #0
00408344  5f fb ff 1a                                      bne #0x4070c8
00408348  5c fb ff ea                                      b #0x4070c0
0040834c  04 00 a0 e1                                      mov r0, r4
00408350  17 15 fd eb                                      bl #0x34d7b4
00408354  00 40 a0 e1                                      mov r4, r0
00408358  4a fa ff ea                                      b #0x406c88
0040835c  c8 a2 9d e5                                      ldr sl, [sp, #0x2c8]
00408360  14 10 96 e5                                      ldr r1, [r6, #0x14]
00408364  0a 00 a0 e1                                      mov r0, sl
00408368  0f 18 fc eb                                      bl #0x30e3ac
0040836c  18 10 96 e5                                      ldr r1, [r6, #0x18]
00408370  00 90 a0 e1                                      mov sb, r0
00408374  cc 02 9d e5                                      ldr r0, [sp, #0x2cc]
00408378  0b 18 fc eb                                      bl #0x30e3ac
0040837c  1c 10 96 e5                                      ldr r1, [r6, #0x1c]
00408380  00 b0 a0 e1                                      mov fp, r0
00408384  d0 02 9d e5                                      ldr r0, [sp, #0x2d0]
00408388  07 18 fc eb                                      bl #0x30e3ac
0040838c  09 10 a0 e1                                      mov r1, sb
00408390  00 30 a0 e1                                      mov r3, r0
00408394  09 00 a0 e1                                      mov r0, sb
00408398  04 30 8d e5                                      str r3, [sp, #4]
0040839c  72 1a fc eb                                      bl #0x30ed6c
004083a0  0b 10 a0 e1                                      mov r1, fp
004083a4  00 90 a0 e1                                      mov sb, r0
004083a8  0b 00 a0 e1                                      mov r0, fp
004083ac  6e 1a fc eb                                      bl #0x30ed6c
004083b0  00 10 a0 e1                                      mov r1, r0
004083b4  09 00 a0 e1                                      mov r0, sb
004083b8  f9 19 fc eb                                      bl #0x30eba4
004083bc  04 30 9d e5                                      ldr r3, [sp, #4]
004083c0  00 90 a0 e1                                      mov sb, r0
004083c4  03 10 a0 e1                                      mov r1, r3
004083c8  03 00 a0 e1                                      mov r0, r3
004083cc  66 1a fc eb                                      bl #0x30ed6c
004083d0  00 10 a0 e1                                      mov r1, r0
004083d4  09 00 a0 e1                                      mov r0, sb
004083d8  f1 19 fc eb                                      bl #0x30eba4
004083dc  17 17 0b e3                                      movw r1, #0xb717
004083e0  d1 18 43 e3                                      movt r1, #0x38d1
004083e4  c3 17 fc eb                                      bl #0x30e2f8
004083e8  00 10 50 e2                                      subs r1, r0, #0
004083ec  2a 01 00 0a                                      beq #0x40889c
004083f0  e0 37 1f e5                                      ldr r3, [pc, #-0x7e0]
004083f4  cc 12 9d e5                                      ldr r1, [sp, #0x2cc]
004083f8  d0 22 9d e5                                      ldr r2, [sp, #0x2d0]
004083fc  03 30 95 e7                                      ldr r3, [r5, r3]
00408400  14 a0 86 e5                                      str sl, [r6, #0x14]
00408404  18 10 86 e5                                      str r1, [r6, #0x18]
00408408  1c 20 86 e5                                      str r2, [r6, #0x1c]
0040840c  00 10 93 e5                                      ldr r1, [r3]
00408410  00 00 51 e3                                      cmp r1, #0
00408414  2c 01 00 0a                                      beq #0x4088cc
00408418  a9 af 8d e2                                      add sl, sp, #0x2a4
0040841c  0a 00 a0 e1                                      mov r0, sl
00408420  20 19 00 eb                                      bl #0x40e8a8
00408424  10 38 1f e5                                      ldr r3, [pc, #-0x810]
00408428  0a 10 a0 e1                                      mov r1, sl
0040842c  03 00 95 e7                                      ldr r0, [r5, r3]
00408430  00 30 a0 e3                                      mov r3, #0
00408434  ac 32 8d e5                                      str r3, [sp, #0x2ac]
00408438  95 ff ff ea                                      b #0x408294
0040843c  48 30 d4 e5                                      ldrb r3, [r4, #0x48]
00408440  00 00 53 e3                                      cmp r3, #0
00408444  f0 fa ff 0a                                      beq #0x40700c
00408448  0a 10 a0 e1                                      mov r1, sl
0040844c  06 00 a0 e1                                      mov r0, r6
00408450  3f f5 ff eb                                      bl #0x405954
00408454  ec fa ff ea                                      b #0x40700c
00408458  88 30 d4 e5                                      ldrb r3, [r4, #0x88]
0040845c  00 00 53 e3                                      cmp r3, #0
00408460  d5 fa ff 0a                                      beq #0x406fbc
00408464  09 10 a0 e1                                      mov r1, sb
00408468  06 00 a0 e1                                      mov r0, r6
0040846c  38 f5 ff eb                                      bl #0x405954
00408470  d1 fa ff ea                                      b #0x406fbc
00408474  68 30 d4 e5                                      ldrb r3, [r4, #0x68]
00408478  00 00 53 e3                                      cmp r3, #0
0040847c  ba fa ff 0a                                      beq #0x406f6c
00408480  0b 10 a0 e1                                      mov r1, fp
00408484  06 00 a0 e1                                      mov r0, r6
00408488  31 f5 ff eb                                      bl #0x405954
0040848c  b6 fa ff ea                                      b #0x406f6c
00408490  06 00 a0 e1                                      mov r0, r6
00408494  00 10 a0 e3                                      mov r1, #0
00408498  6d f4 ff eb                                      bl #0x405654
0040849c  e9 fa ff ea                                      b #0x407048
004084a0  68 35 d4 e5                                      ldrb r3, [r4, #0x568]
004084a4  00 00 53 e3                                      cmp r3, #0
004084a8  01 20 a0 03                                      moveq r2, #1
004084ac  33 fe ff 0a                                      beq #0x407d80
004084b0  45 fe ff ea                                      b #0x407dcc
004084b4  48 35 d4 e5                                      ldrb r3, [r4, #0x548]
004084b8  00 00 53 e3                                      cmp r3, #0
004084bc  01 20 a0 03                                      moveq r2, #1
004084c0  0b fe ff 0a                                      beq #0x407cf4
004084c4  1d fe ff ea                                      b #0x407d40
004084c8  28 35 d4 e5                                      ldrb r3, [r4, #0x528]
004084cc  00 00 53 e3                                      cmp r3, #0
004084d0  01 20 a0 03                                      moveq r2, #1
004084d4  e3 fd ff 0a                                      beq #0x407c68
004084d8  f5 fd ff ea                                      b #0x407cb4
004084dc  08 35 d4 e5                                      ldrb r3, [r4, #0x508]
004084e0  00 00 53 e3                                      cmp r3, #0
004084e4  01 20 a0 03                                      moveq r2, #1
004084e8  af fd ff 0a                                      beq #0x407bac
004084ec  cd fd ff ea                                      b #0x407c28
004084f0  e8 34 d4 e5                                      ldrb r3, [r4, #0x4e8]
004084f4  00 00 53 e3                                      cmp r3, #0
004084f8  01 20 a0 03                                      moveq r2, #1
004084fc  87 fd ff 0a                                      beq #0x407b20
00408500  99 fd ff ea                                      b #0x407b6c
00408504  c8 34 d4 e5                                      ldrb r3, [r4, #0x4c8]
00408508  00 00 53 e3                                      cmp r3, #0
0040850c  01 20 a0 03                                      moveq r2, #1
00408510  5f fd ff 0a                                      beq #0x407a94
00408514  71 fd ff ea                                      b #0x407ae0
00408518  08 32 d4 e5                                      ldrb r3, [r4, #0x208]
0040851c  00 00 53 e3                                      cmp r3, #0
00408520  01 20 a0 03                                      moveq r2, #1
00408524  37 fd ff 0a                                      beq #0x407a08
00408528  49 fd ff ea                                      b #0x407a54
0040852c  e8 31 d4 e5                                      ldrb r3, [r4, #0x1e8]
00408530  00 00 53 e3                                      cmp r3, #0
00408534  01 20 a0 03                                      moveq r2, #1
00408538  0f fd ff 0a                                      beq #0x40797c
0040853c  21 fd ff ea                                      b #0x4079c8
00408540  a8 35 d4 e5                                      ldrb r3, [r4, #0x5a8]
00408544  00 00 53 e3                                      cmp r3, #0
00408548  01 20 a0 03                                      moveq r2, #1
0040854c  51 fe ff 0a                                      beq #0x407e98
00408550  63 fe ff ea                                      b #0x407ee4
00408554  88 35 d4 e5                                      ldrb r3, [r4, #0x588]
00408558  00 00 53 e3                                      cmp r3, #0
0040855c  01 20 a0 03                                      moveq r2, #1
00408560  29 fe ff 0a                                      beq #0x407e0c
00408564  3b fe ff ea                                      b #0x407e58
00408568  88 32 d4 e5                                      ldrb r3, [r4, #0x288]
0040856c  00 00 53 e3                                      cmp r3, #0
00408570  8e fe ff 1a                                      bne #0x407fb0
00408574  01 c0 a0 e3                                      mov ip, #1
00408578  79 fe ff ea                                      b #0x407f64
0040857c  e8 32 d4 e5                                      ldrb r3, [r4, #0x2e8]
00408580  00 00 53 e3                                      cmp r3, #0
00408584  01 c0 a0 03                                      moveq ip, #1
00408588  98 fe ff 0a                                      beq #0x407ff0
0040858c  aa fe ff ea                                      b #0x40803c
00408590  c8 31 d4 e5                                      ldrb r3, [r4, #0x1c8]
00408594  00 00 53 e3                                      cmp r3, #0
00408598  01 20 a0 03                                      moveq r2, #1
0040859c  d3 fc ff 0a                                      beq #0x4078f0
004085a0  e5 fc ff ea                                      b #0x40793c
004085a4  a8 31 d4 e5                                      ldrb r3, [r4, #0x1a8]
004085a8  00 00 53 e3                                      cmp r3, #0
004085ac  01 20 a0 03                                      moveq r2, #1
004085b0  ab fc ff 0a                                      beq #0x407864
004085b4  bd fc ff ea                                      b #0x4078b0
004085b8  88 31 d4 e5                                      ldrb r3, [r4, #0x188]
004085bc  00 00 53 e3                                      cmp r3, #0
004085c0  01 20 a0 03                                      moveq r2, #1
004085c4  83 fc ff 0a                                      beq #0x4077d8
004085c8  95 fc ff ea                                      b #0x407824
004085cc  68 31 d4 e5                                      ldrb r3, [r4, #0x168]
004085d0  00 00 53 e3                                      cmp r3, #0
004085d4  01 20 a0 03                                      moveq r2, #1
004085d8  5b fc ff 0a                                      beq #0x40774c
004085dc  6d fc ff ea                                      b #0x407798
004085e0  28 33 d4 e5                                      ldrb r3, [r4, #0x328]
004085e4  00 00 53 e3                                      cmp r3, #0
004085e8  01 20 a0 03                                      moveq r2, #1
004085ec  33 fc ff 0a                                      beq #0x4076c0
004085f0  45 fc ff ea                                      b #0x40770c
004085f4  28 31 d4 e5                                      ldrb r3, [r4, #0x128]
004085f8  00 00 53 e3                                      cmp r3, #0
004085fc  01 20 a0 03                                      moveq r2, #1
00408600  0b fc ff 0a                                      beq #0x407634
00408604  1d fc ff ea                                      b #0x407680
00408608  08 33 d4 e5                                      ldrb r3, [r4, #0x308]
0040860c  00 00 53 e3                                      cmp r3, #0
00408610  01 c0 a0 03                                      moveq ip, #1
00408614  e4 fb ff 0a                                      beq #0x4075ac
00408618  f5 fb ff ea                                      b #0x4075f4
0040861c  e8 30 d4 e5                                      ldrb r3, [r4, #0xe8]
00408620  00 00 53 e3                                      cmp r3, #0
00408624  01 20 a0 03                                      moveq r2, #1
00408628  bc fb ff 0a                                      beq #0x407520
0040862c  ce fb ff ea                                      b #0x40756c
00408630  c8 30 d4 e5                                      ldrb r3, [r4, #0xc8]
00408634  00 00 53 e3                                      cmp r3, #0
00408638  01 20 a0 03                                      moveq r2, #1
0040863c  94 fb ff 0a                                      beq #0x407494
00408640  a6 fb ff ea                                      b #0x4074e0
00408644  a8 30 d4 e5                                      ldrb r3, [r4, #0xa8]
00408648  00 00 53 e3                                      cmp r3, #0
0040864c  01 20 a0 03                                      moveq r2, #1
00408650  6c fb ff 0a                                      beq #0x407408
00408654  7e fb ff ea                                      b #0x407454
00408658  88 30 d4 e5                                      ldrb r3, [r4, #0x88]
0040865c  00 00 53 e3                                      cmp r3, #0
00408660  01 20 a0 03                                      moveq r2, #1
00408664  44 fb ff 0a                                      beq #0x40737c
00408668  56 fb ff ea                                      b #0x4073c8
0040866c  68 30 d4 e5                                      ldrb r3, [r4, #0x68]
00408670  00 00 53 e3                                      cmp r3, #0
00408674  01 20 a0 03                                      moveq r2, #1
00408678  1c fb ff 0a                                      beq #0x4072f0
0040867c  2e fb ff ea                                      b #0x40733c
00408680  48 30 d4 e5                                      ldrb r3, [r4, #0x48]
00408684  00 00 53 e3                                      cmp r3, #0
00408688  01 20 a0 03                                      moveq r2, #1
0040868c  f4 fa ff 0a                                      beq #0x407264
00408690  06 fb ff ea                                      b #0x4072b0
00408694  28 30 d4 e5                                      ldrb r3, [r4, #0x28]
00408698  00 00 53 e3                                      cmp r3, #0
0040869c  01 20 a0 03                                      moveq r2, #1
004086a0  cc fa ff 0a                                      beq #0x4071d8
004086a4  de fa ff ea                                      b #0x407224
004086a8  02 01 ca e3                                      bic r0, sl, #0x80000000
004086ac  fa 15 a0 e3                                      mov r1, #0x3e800000
004086b0  10 17 fc eb                                      bl #0x30e2f8
004086b4  00 00 50 e3                                      cmp r0, #0
004086b8  8e fe ff 0a                                      beq #0x4080f8
004086bc  89 fe ff ea                                      b #0x4080e8
004086c0  a6 0f 8d e2                                      add r0, sp, #0x298
004086c4  79 12 fd eb                                      bl #0x34d0b0
004086c8  0a 00 a0 e1                                      mov r0, sl
004086cc  fe 15 a0 e3                                      mov r1, #0x3f800000
004086d0  0d 18 fc eb                                      bl #0x30e70c
004086d4  00 00 50 e3                                      cmp r0, #0
004086d8  98 a2 9d 05                                      ldreq sl, [sp, #0x298]
004086dc  11 00 00 0a                                      beq #0x408728
004086e0  0a 00 a0 e1                                      mov r0, sl
004086e4  fa 15 a0 e3                                      mov r1, #0x3e800000
004086e8  2f 17 fc eb                                      bl #0x30e3ac
004086ec  fd 15 a0 e3                                      mov r1, #0x3f400000
004086f0  67 19 fc eb                                      bl #0x30ec94
004086f4  98 12 9d e5                                      ldr r1, [sp, #0x298]
004086f8  00 90 a0 e1                                      mov sb, r0
004086fc  9a 19 fc eb                                      bl #0x30ed6c
00408700  09 10 a0 e1                                      mov r1, sb
00408704  00 a0 a0 e1                                      mov sl, r0
00408708  9c 02 9d e5                                      ldr r0, [sp, #0x29c]
0040870c  98 a2 8d e5                                      str sl, [sp, #0x298]
00408710  95 19 fc eb                                      bl #0x30ed6c
00408714  09 10 a0 e1                                      mov r1, sb
00408718  9c 02 8d e5                                      str r0, [sp, #0x29c]
0040871c  a0 02 9d e5                                      ldr r0, [sp, #0x2a0]
00408720  91 19 fc eb                                      bl #0x30ed6c
00408724  a0 02 8d e5                                      str r0, [sp, #0x2a0]
00408728  9c 32 9d e5                                      ldr r3, [sp, #0x29c]
0040872c  c8 a2 8d e5                                      str sl, [sp, #0x2c8]
00408730  cc 32 8d e5                                      str r3, [sp, #0x2cc]
00408734  a0 32 9d e5                                      ldr r3, [sp, #0x2a0]
00408738  d0 32 8d e5                                      str r3, [sp, #0x2d0]
0040873c  8d f9 ff ea                                      b #0x406d78
00408740  06 00 a0 e1                                      mov r0, r6
00408744  08 10 a0 e1                                      mov r1, r8
00408748  fd f3 ff eb                                      bl #0x405744
0040874c  34 3b 1f e5                                      ldr r3, [pc, #-0xb34]
00408750  08 20 a0 e3                                      mov r2, #8
00408754  0a 00 a0 e1                                      mov r0, sl
00408758  03 30 95 e7                                      ldr r3, [r5, r3]
0040875c  a1 1f 8d e2                                      add r1, sp, #0x284
00408760  88 22 8d e5                                      str r2, [sp, #0x288]
00408764  08 30 83 e2                                      add r3, r3, #8
00408768  84 32 8d e5                                      str r3, [sp, #0x284]
0040876c  03 30 a0 e3                                      mov r3, #3
00408770  8c 32 8d e5                                      str r3, [sp, #0x28c]
00408774  90 92 8d e5                                      str sb, [sp, #0x290]
00408778  94 82 8d e5                                      str r8, [sp, #0x294]
0040877c  ce c1 fc eb                                      bl #0x338ebc
00408780  64 3b 1f e5                                      ldr r3, [pc, #-0xb64]
00408784  03 30 95 e7                                      ldr r3, [r5, r3]
00408788  08 30 83 e2                                      add r3, r3, #8
0040878c  84 32 8d e5                                      str r3, [sp, #0x284]
00408790  39 fe ff ea                                      b #0x40807c
00408794  06 00 a0 e1                                      mov r0, r6
00408798  00 10 a0 e3                                      mov r1, #0
0040879c  d8 f4 ff eb                                      bl #0x405b04
004087a0  ce f9 ff ea                                      b #0x406ee0
004087a4  00 00 59 e3                                      cmp sb, #0
004087a8  5e fa ff 0a                                      beq #0x407128
004087ac  00 30 99 e5                                      ldr r3, [sb]
004087b0  09 00 a0 e1                                      mov r0, sb
004087b4  0a 10 a0 e1                                      mov r1, sl
004087b8  0f e0 a0 e1                                      mov lr, pc
004087bc  88 f0 93 e5                                      ldr pc, [r3, #0x88]
004087c0  00 00 50 e3                                      cmp r0, #0
004087c4  57 fa ff 0a                                      beq #0x407128
004087c8  09 00 a0 e1                                      mov r0, sb
004087cc  0a 10 a0 e1                                      mov r1, sl
004087d0  00 30 99 e5                                      ldr r3, [sb]
004087d4  0f e0 a0 e1                                      mov lr, pc
004087d8  90 f0 93 e5                                      ldr pc, [r3, #0x90]
004087dc  08 00 50 e3                                      cmp r0, #8
004087e0  50 fa ff 0a                                      beq #0x407128
004087e4  0b 10 a0 e1                                      mov r1, fp
004087e8  06 00 a0 e1                                      mov r0, r6
004087ec  02 f4 ff eb                                      bl #0x4057fc
004087f0  4c fa ff ea                                      b #0x407128
004087f4  09 10 a0 e1                                      mov r1, sb
004087f8  14 00 96 e5                                      ldr r0, [r6, #0x14]
004087fc  ea 16 fc eb                                      bl #0x30e3ac
00408800  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00408804  00 90 a0 e1                                      mov sb, r0
00408808  18 00 96 e5                                      ldr r0, [r6, #0x18]
0040880c  e6 16 fc eb                                      bl #0x30e3ac
00408810  0a 10 a0 e1                                      mov r1, sl
00408814  00 b0 a0 e1                                      mov fp, r0
00408818  1c 00 96 e5                                      ldr r0, [r6, #0x1c]
0040881c  e2 16 fc eb                                      bl #0x30e3ac
00408820  09 10 a0 e1                                      mov r1, sb
00408824  00 a0 a0 e1                                      mov sl, r0
00408828  09 00 a0 e1                                      mov r0, sb
0040882c  4e 19 fc eb                                      bl #0x30ed6c
00408830  0b 10 a0 e1                                      mov r1, fp
00408834  00 90 a0 e1                                      mov sb, r0
00408838  0b 00 a0 e1                                      mov r0, fp
0040883c  4a 19 fc eb                                      bl #0x30ed6c
00408840  00 10 a0 e1                                      mov r1, r0
00408844  09 00 a0 e1                                      mov r0, sb
00408848  d5 18 fc eb                                      bl #0x30eba4
0040884c  0a 10 a0 e1                                      mov r1, sl
00408850  00 90 a0 e1                                      mov sb, r0
00408854  0a 00 a0 e1                                      mov r0, sl
00408858  43 19 fc eb                                      bl #0x30ed6c
0040885c  00 10 a0 e1                                      mov r1, r0
00408860  09 00 a0 e1                                      mov r0, sb
00408864  ce 18 fc eb                                      bl #0x30eba4
00408868  17 17 0b e3                                      movw r1, #0xb717
0040886c  d1 18 43 e3                                      movt r1, #0x38d1
00408870  a0 16 fc eb                                      bl #0x30e2f8
00408874  00 00 50 e3                                      cmp r0, #0
00408878  8c f9 ff 0a                                      beq #0x406eb0
0040887c  00 30 a0 e3                                      mov r3, #0
00408880  06 00 a0 e1                                      mov r0, r6
00408884  14 10 86 e2                                      add r1, r6, #0x14
00408888  1c 30 86 e5                                      str r3, [r6, #0x1c]
0040888c  14 30 86 e5                                      str r3, [r6, #0x14]
00408890  18 30 86 e5                                      str r3, [r6, #0x18]
00408894  b6 f2 ff eb                                      bl #0x405374
00408898  84 f9 ff ea                                      b #0x406eb0
0040889c  0c 00 96 e5                                      ldr r0, [r6, #0xc]
004088a0  00 00 50 e3                                      cmp r0, #0
004088a4  81 f9 ff 0a                                      beq #0x406eb0
004088a8  4f 0e 80 e2                                      add r0, r0, #0x4f0
004088ac  0c 00 80 e2                                      add r0, r0, #0xc
004088b0  79 de fe eb                                      bl #0x3c029c
004088b4  00 00 50 e3                                      cmp r0, #0
004088b8  00 30 a0 03                                      moveq r3, #0
004088bc  1c 30 86 05                                      streq r3, [r6, #0x1c]
004088c0  14 30 86 05                                      streq r3, [r6, #0x14]
004088c4  18 30 86 05                                      streq r3, [r6, #0x18]
004088c8  78 f9 ff ea                                      b #0x406eb0
004088cc  b2 af 8d e2                                      add sl, sp, #0x2c8
004088d0  74 fe ff ea                                      b #0x4082a8
004088d4  8d 16 fc eb                                      bl #0x30e310
004088d8  88 32 d4 e5                                      ldrb r3, [r4, #0x288]
004088dc  00 00 53 e3                                      cmp r3, #0
004088e0  9e fd ff 1a                                      bne #0x407f60
004088e4  01 c0 a0 e3                                      mov ip, #1
004088e8  9d fd ff ea                                      b #0x407f64
