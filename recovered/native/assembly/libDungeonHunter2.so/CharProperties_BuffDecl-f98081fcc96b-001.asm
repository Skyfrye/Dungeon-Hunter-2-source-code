; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003e0a68, declared_size=80, range_size=80, mode=arm
; class-group: CharProperties::BuffDecl
; alias: _ZN14CharProperties8BuffDeclD1Ev
; demangled: CharProperties::BuffDecl::~BuffDecl()
; decoder-mode: arm
003e0a68  10 40 2d e9                                      push {r4, lr}
003e0a6c  00 40 a0 e1                                      mov r4, r0
003e0a70  20 00 80 e2                                      add r0, r0, #0x20
003e0a74  ca ff ff eb                                      bl #0x3e09a4
003e0a78  08 30 84 e2                                      add r3, r4, #8
003e0a7c  14 00 93 e5                                      ldr r0, [r3, #0x14]
003e0a80  03 00 50 e1                                      cmp r0, r3
003e0a84  06 00 00 0a                                      beq #0x3e0aa4
003e0a88  00 00 50 e3                                      cmp r0, #0
003e0a8c  04 00 00 0a                                      beq #0x3e0aa4
003e0a90  08 10 94 e5                                      ldr r1, [r4, #8]
003e0a94  01 10 60 e0                                      rsb r1, r0, r1
003e0a98  80 00 51 e3                                      cmp r1, #0x80
003e0a9c  02 00 00 8a                                      bhi #0x3e0aac
003e0aa0  16 a1 0c eb                                      bl #0x708f00
003e0aa4  04 00 a0 e1                                      mov r0, r4
003e0aa8  10 80 bd e8                                      pop {r4, pc}
003e0aac  63 be fc eb                                      bl #0x310440
003e0ab0  04 00 a0 e1                                      mov r0, r4
003e0ab4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003e19c0, declared_size=72, range_size=72, mode=arm
; class-group: CharProperties::BuffDecl
; alias: _ZN14CharProperties8BuffDeclC1ERKS0_
; demangled: CharProperties::BuffDecl::BuffDecl(CharProperties::BuffDecl const&)
; decoder-mode: arm
003e19c0  70 40 2d e9                                      push {r4, r5, r6, lr}
003e19c4  00 30 91 e5                                      ldr r3, [r1]
003e19c8  00 40 a0 e1                                      mov r4, r0
003e19cc  08 00 80 e2                                      add r0, r0, #8
003e19d0  00 30 84 e5                                      str r3, [r4]
003e19d4  04 30 91 e5                                      ldr r3, [r1, #4]
003e19d8  01 50 a0 e1                                      mov r5, r1
003e19dc  18 00 84 e5                                      str r0, [r4, #0x18]
003e19e0  1c 00 84 e5                                      str r0, [r4, #0x1c]
003e19e4  04 30 84 e5                                      str r3, [r4, #4]
003e19e8  18 20 95 e5                                      ldr r2, [r5, #0x18]
003e19ec  1c 10 91 e5                                      ldr r1, [r1, #0x1c]
003e19f0  3c bf fc eb                                      bl #0x3116e8
003e19f4  20 10 85 e2                                      add r1, r5, #0x20
003e19f8  20 00 84 e2                                      add r0, r4, #0x20
003e19fc  b0 ff ff eb                                      bl #0x3e18c4
003e1a00  04 00 a0 e1                                      mov r0, r4
003e1a04  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003e1a08, declared_size=116, range_size=116, mode=arm
; class-group: CharProperties::BuffDecl
; alias: _ZN14CharProperties8BuffDeclC1Ev
; demangled: CharProperties::BuffDecl::BuffDecl()
; decoder-mode: arm
003e1a08  70 40 2d e9                                      push {r4, r5, r6, lr}
003e1a0c  08 30 80 e2                                      add r3, r0, #8
003e1a10  00 40 a0 e1                                      mov r4, r0
003e1a14  00 50 a0 e3                                      mov r5, #0
003e1a18  00 20 e0 e3                                      mvn r2, #0
003e1a1c  00 20 80 e5                                      str r2, [r0]
003e1a20  10 10 a0 e3                                      mov r1, #0x10
003e1a24  03 00 a0 e1                                      mov r0, r3
003e1a28  18 30 84 e5                                      str r3, [r4, #0x18]
003e1a2c  1c 30 84 e5                                      str r3, [r4, #0x1c]
003e1a30  04 50 84 e5                                      str r5, [r4, #4]
003e1a34  10 bf fc eb                                      bl #0x31167c
003e1a38  18 30 94 e5                                      ldr r3, [r4, #0x18]
003e1a3c  20 00 84 e2                                      add r0, r4, #0x20
003e1a40  05 10 a0 e1                                      mov r1, r5
003e1a44  00 50 c3 e5                                      strb r5, [r3]
003e1a48  20 50 84 e5                                      str r5, [r4, #0x20]
003e1a4c  24 50 84 e5                                      str r5, [r4, #0x24]
003e1a50  28 50 84 e5                                      str r5, [r4, #0x28]
003e1a54  2c 50 84 e5                                      str r5, [r4, #0x2c]
003e1a58  30 50 84 e5                                      str r5, [r4, #0x30]
003e1a5c  34 50 84 e5                                      str r5, [r4, #0x34]
003e1a60  38 50 84 e5                                      str r5, [r4, #0x38]
003e1a64  3c 50 84 e5                                      str r5, [r4, #0x3c]
003e1a68  40 50 84 e5                                      str r5, [r4, #0x40]
003e1a6c  44 50 84 e5                                      str r5, [r4, #0x44]
003e1a70  68 ff ff eb                                      bl #0x3e1818
003e1a74  04 00 a0 e1                                      mov r0, r4
003e1a78  70 80 bd e8                                      pop {r4, r5, r6, pc}
