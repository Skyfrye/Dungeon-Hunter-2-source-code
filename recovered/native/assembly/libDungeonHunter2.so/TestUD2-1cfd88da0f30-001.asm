; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00386ac4, declared_size=16, range_size=16, mode=arm
; class-group: TestUD2
; alias: _ZNK7TestUD213getUDTypeNameEv
; demangled: TestUD2::getUDTypeName() const
; decoder-mode: arm
00386ac4  04 00 9f e5                                      ldr r0, [pc, #4]
00386ac8  00 00 8f e0                                      add r0, pc, r0
00386acc  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00386ad0  40 b5 53 00                                      .byte 0x40, 0xb5, 0x53, 0x00

; FUNCTION 0x00386ad4, declared_size=4, range_size=4, mode=arm
; class-group: TestUD2
; alias: _ZN7TestUD25Test2ERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: TestUD2::Test2(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
00386ad4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00386ae0, declared_size=4, range_size=4, mode=arm
; class-group: TestUD2
; alias: _ZN7TestUD2D1Ev
; demangled: TestUD2::~TestUD2()
; decoder-mode: arm
00386ae0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00386ae4, declared_size=52, range_size=52, mode=arm
; class-group: TestUD2
; alias: _ZN7TestUD2D0Ev
; demangled: TestUD2::~TestUD2()
; decoder-mode: arm
00386ae4  24 30 9f e5                                      ldr r3, [pc, #0x24]
00386ae8  24 20 9f e5                                      ldr r2, [pc, #0x24]
00386aec  10 40 2d e9                                      push {r4, lr}
00386af0  03 30 8f e0                                      add r3, pc, r3
00386af4  02 20 93 e7                                      ldr r2, [r3, r2]
00386af8  00 40 a0 e1                                      mov r4, r0
00386afc  08 20 82 e2                                      add r2, r2, #8
00386b00  00 20 80 e5                                      str r2, [r0]
00386b04  4d 26 fe eb                                      bl #0x310440
00386b08  04 00 a0 e1                                      mov r0, r4
00386b0c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00386b10  a0 df 60 00 8c 10 00 00                          .byte 0xa0, 0xdf, 0x60, 0x00, 0x8c, 0x10, 0x00, 0x00

; FUNCTION 0x00386da4, declared_size=92, range_size=92, mode=arm
; class-group: TestUD2
; alias: _ZN7TestUD214createBindingsERN3sfc6script3lua6BinderE
; demangled: TestUD2::createBindings(sfc::script::lua::Binder&)
; decoder-mode: arm
00386da4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00386da8  44 40 9f e5                                      ldr r4, [pc, #0x44]
00386dac  01 70 a0 e1                                      mov r7, r1
00386db0  00 80 a0 e1                                      mov r8, r0
00386db4  d1 ff ff eb                                      bl #0x386d00
00386db8  38 30 9f e5                                      ldr r3, [pc, #0x38]
00386dbc  04 40 8f e0                                      add r4, pc, r4
00386dc0  34 50 9f e5                                      ldr r5, [pc, #0x34]
00386dc4  03 60 94 e7                                      ldr r6, [r4, r3]
00386dc8  07 00 a0 e1                                      mov r0, r7
00386dcc  05 50 8f e0                                      add r5, pc, r5
00386dd0  05 10 a0 e1                                      mov r1, r5
00386dd4  06 20 a0 e1                                      mov r2, r6
00386dd8  08 30 a0 e1                                      mov r3, r8
00386ddc  bc 4d fe eb                                      bl #0x31a4d4
00386de0  07 00 a0 e1                                      mov r0, r7
00386de4  05 10 a0 e1                                      mov r1, r5
00386de8  06 20 a0 e1                                      mov r2, r6
00386dec  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00386df0  3f 4b fe ea                                      b #0x319af4
; mapping-symbol data/literal pool
00386df4  d4 dc 60 00 c0 0c 00 00 e4 b2 53 00              .byte 0xd4, 0xdc, 0x60, 0x00, 0xc0, 0x0c, 0x00, 0x00, 0xe4, 0xb2, 0x53, 0x00
