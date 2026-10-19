; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00386ab4, declared_size=16, range_size=16, mode=arm
; class-group: TestUD
; alias: _ZNK6TestUD13getUDTypeNameEv
; demangled: TestUD::getUDTypeName() const
; decoder-mode: arm
00386ab4  04 00 9f e5                                      ldr r0, [pc, #4]
00386ab8  00 00 8f e0                                      add r0, pc, r0
00386abc  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00386ac0  48 b5 53 00                                      .byte 0x48, 0xb5, 0x53, 0x00

; FUNCTION 0x00386ad8, declared_size=4, range_size=4, mode=arm
; class-group: TestUD
; alias: _ZN6TestUDD1Ev
; demangled: TestUD::~TestUD()
; decoder-mode: arm
00386ad8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00386b18, declared_size=52, range_size=52, mode=arm
; class-group: TestUD
; alias: _ZN6TestUDD0Ev
; demangled: TestUD::~TestUD()
; decoder-mode: arm
00386b18  24 30 9f e5                                      ldr r3, [pc, #0x24]
00386b1c  24 20 9f e5                                      ldr r2, [pc, #0x24]
00386b20  10 40 2d e9                                      push {r4, lr}
00386b24  03 30 8f e0                                      add r3, pc, r3
00386b28  02 20 93 e7                                      ldr r2, [r3, r2]
00386b2c  00 40 a0 e1                                      mov r4, r0
00386b30  08 20 82 e2                                      add r2, r2, #8
00386b34  00 20 80 e5                                      str r2, [r0]
00386b38  40 26 fe eb                                      bl #0x310440
00386b3c  04 00 a0 e1                                      mov r0, r4
00386b40  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00386b44  6c df 60 00 8c 10 00 00                          .byte 0x6c, 0xdf, 0x60, 0x00, 0x8c, 0x10, 0x00, 0x00

; FUNCTION 0x00386d00, declared_size=164, range_size=164, mode=arm
; class-group: TestUD
; alias: _ZN6TestUD14createBindingsERN3sfc6script3lua6BinderE
; demangled: TestUD::createBindings(sfc::script::lua::Binder&)
; decoder-mode: arm
00386d00  70 40 2d e9                                      push {r4, r5, r6, lr}
00386d04  00 60 a0 e1                                      mov r6, r0
00386d08  78 00 9f e5                                      ldr r0, [pc, #0x78]
00386d0c  08 d0 4d e2                                      sub sp, sp, #8
00386d10  01 50 a0 e1                                      mov r5, r1
00386d14  00 00 8f e0                                      add r0, pc, r0
00386d18  06 10 a0 e1                                      mov r1, r6
00386d1c  68 40 9f e5                                      ldr r4, [pc, #0x68]
00386d20  57 1c fe eb                                      bl #0x30de84
00386d24  64 30 9f e5                                      ldr r3, [pc, #0x64]
00386d28  64 10 9f e5                                      ldr r1, [pc, #0x64]
00386d2c  04 40 8f e0                                      add r4, pc, r4
00386d30  03 20 94 e7                                      ldr r2, [r4, r3]
00386d34  05 00 a0 e1                                      mov r0, r5
00386d38  06 30 a0 e1                                      mov r3, r6
00386d3c  01 10 8f e0                                      add r1, pc, r1
00386d40  e3 4d fe eb                                      bl #0x31a4d4
00386d44  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
00386d48  00 10 a0 e3                                      mov r1, #0
00386d4c  01 20 a0 e1                                      mov r2, r1
00386d50  03 30 94 e7                                      ldr r3, [r4, r3]
00386d54  05 00 a0 e1                                      mov r0, r5
00386d58  04 10 8d e5                                      str r1, [sp, #4]
00386d5c  03 10 a0 e1                                      mov r1, r3
00386d60  00 30 8d e5                                      str r3, [sp]
00386d64  ad ff ff eb                                      bl #0x386c20
00386d68  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00386d6c  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
00386d70  05 00 a0 e1                                      mov r0, r5
00386d74  03 20 94 e7                                      ldr r2, [r4, r3]
00386d78  01 10 8f e0                                      add r1, pc, r1
00386d7c  08 d0 8d e2                                      add sp, sp, #8
00386d80  70 40 bd e8                                      pop {r4, r5, r6, lr}
00386d84  5a 4b fe ea                                      b #0x319af4
; mapping-symbol data/literal pool
00386d88  5c b3 53 00 64 dd 60 00 1c 45 00 00 4c b3 53 00  .byte 0x5c, 0xb3, 0x53, 0x00, 0x64, 0xdd, 0x60, 0x00, 0x1c, 0x45, 0x00, 0x00, 0x4c, 0xb3, 0x53, 0x00
00386d98  0c 16 00 00 20 06 00 00 20 b3 53 00              .byte 0x0c, 0x16, 0x00, 0x00, 0x20, 0x06, 0x00, 0x00, 0x20, 0xb3, 0x53, 0x00

; FUNCTION 0x00386e08, declared_size=92, range_size=92, mode=arm
; class-group: TestUD
; alias: _ZN6TestUD16TestStaticMethodERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: TestUD::TestStaticMethod(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
00386e08  70 40 2d e9                                      push {r4, r5, r6, lr}
00386e0c  04 00 90 e5                                      ldr r0, [r0, #4]
00386e10  02 40 a0 e1                                      mov r4, r2
00386e14  01 50 a0 e1                                      mov r5, r1
00386e18  04 20 90 e5                                      ldr r2, [r0, #4]
00386e1c  00 30 90 e5                                      ldr r3, [r0]
00386e20  38 00 9f e5                                      ldr r0, [pc, #0x38]
00386e24  04 10 a0 e1                                      mov r1, r4
00386e28  02 30 63 e0                                      rsb r3, r3, r2
00386e2c  43 32 a0 e1                                      asr r3, r3, #4
00386e30  00 00 8f e0                                      add r0, pc, r0
00386e34  83 21 83 e0                                      add r2, r3, r3, lsl #3
00386e38  02 23 82 e0                                      add r2, r2, r2, lsl #6
00386e3c  82 21 83 e0                                      add r2, r3, r2, lsl #3
00386e40  82 27 82 e0                                      add r2, r2, r2, lsl #15
00386e44  82 21 83 e0                                      add r2, r3, r2, lsl #3
00386e48  00 20 62 e2                                      rsb r2, r2, #0
00386e4c  0c 1c fe eb                                      bl #0x30de84
00386e50  05 00 a0 e1                                      mov r0, r5
00386e54  04 10 a0 e1                                      mov r1, r4
00386e58  70 40 bd e8                                      pop {r4, r5, r6, lr}
00386e5c  e5 d6 ff ea                                      b #0x37c9f8
; mapping-symbol data/literal pool
00386e60  88 b2 53 00                                      .byte 0x88, 0xb2, 0x53, 0x00

; FUNCTION 0x00386e64, declared_size=92, range_size=92, mode=arm
; class-group: TestUD
; alias: _ZN6TestUD10TestMethodERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesE
; demangled: TestUD::TestMethod(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&)
; decoder-mode: arm
00386e64  70 40 2d e9                                      push {r4, r5, r6, lr}
00386e68  04 10 91 e5                                      ldr r1, [r1, #4]
00386e6c  02 50 a0 e1                                      mov r5, r2
00386e70  00 40 a0 e1                                      mov r4, r0
00386e74  00 30 91 e5                                      ldr r3, [r1]
00386e78  04 10 91 e5                                      ldr r1, [r1, #4]
00386e7c  38 00 9f e5                                      ldr r0, [pc, #0x38]
00386e80  01 30 63 e0                                      rsb r3, r3, r1
00386e84  43 32 a0 e1                                      asr r3, r3, #4
00386e88  04 10 a0 e1                                      mov r1, r4
00386e8c  83 21 83 e0                                      add r2, r3, r3, lsl #3
00386e90  00 00 8f e0                                      add r0, pc, r0
00386e94  02 23 82 e0                                      add r2, r2, r2, lsl #6
00386e98  82 21 83 e0                                      add r2, r3, r2, lsl #3
00386e9c  82 27 82 e0                                      add r2, r2, r2, lsl #15
00386ea0  82 21 83 e0                                      add r2, r3, r2, lsl #3
00386ea4  00 20 62 e2                                      rsb r2, r2, #0
00386ea8  f5 1b fe eb                                      bl #0x30de84
00386eac  05 00 a0 e1                                      mov r0, r5
00386eb0  04 10 a0 e1                                      mov r1, r4
00386eb4  70 40 bd e8                                      pop {r4, r5, r6, lr}
00386eb8  ce d6 ff ea                                      b #0x37c9f8
; mapping-symbol data/literal pool
00386ebc  58 b2 53 00                                      .byte 0x58, 0xb2, 0x53, 0x00

; FUNCTION 0x00386ec0, declared_size=104, range_size=104, mode=arm
; class-group: TestUD
; alias: _ZN6TestUD8TestFuncERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: TestUD::TestFunc(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
00386ec0  70 40 2d e9                                      push {r4, r5, r6, lr}
00386ec4  04 00 90 e5                                      ldr r0, [r0, #4]
00386ec8  02 40 a0 e1                                      mov r4, r2
00386ecc  01 50 a0 e1                                      mov r5, r1
00386ed0  04 20 90 e5                                      ldr r2, [r0, #4]
00386ed4  00 30 90 e5                                      ldr r3, [r0]
00386ed8  44 00 9f e5                                      ldr r0, [pc, #0x44]
00386edc  04 10 a0 e1                                      mov r1, r4
00386ee0  02 30 63 e0                                      rsb r3, r3, r2
00386ee4  43 32 a0 e1                                      asr r3, r3, #4
00386ee8  00 00 8f e0                                      add r0, pc, r0
00386eec  83 21 83 e0                                      add r2, r3, r3, lsl #3
00386ef0  02 23 82 e0                                      add r2, r2, r2, lsl #6
00386ef4  82 21 83 e0                                      add r2, r3, r2, lsl #3
00386ef8  82 27 82 e0                                      add r2, r2, r2, lsl #15
00386efc  82 21 83 e0                                      add r2, r3, r2, lsl #3
00386f00  00 20 62 e2                                      rsb r2, r2, #0
00386f04  de 1b fe eb                                      bl #0x30de84
00386f08  05 00 a0 e1                                      mov r0, r5
00386f0c  04 10 a0 e1                                      mov r1, r4
00386f10  b8 d6 ff eb                                      bl #0x37c9f8
00386f14  05 00 a0 e1                                      mov r0, r5
00386f18  04 10 a0 e1                                      mov r1, r4
00386f1c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00386f20  b4 d6 ff ea                                      b #0x37c9f8
; mapping-symbol data/literal pool
00386f24  28 b2 53 00                                      .byte 0x28, 0xb2, 0x53, 0x00
