; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0033dcb0, declared_size=4, range_size=4, mode=arm
; class-group: sfc::script::lua::UserData
; alias: _ZN3sfc6script3lua8UserDataD1Ev
; demangled: sfc::script::lua::UserData::~UserData()
; decoder-mode: arm
0033dcb0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033dcb4, declared_size=16, range_size=16, mode=arm
; class-group: sfc::script::lua::UserData
; alias: _ZNK3sfc6script3lua8UserData13getUDTypeNameEv
; demangled: sfc::script::lua::UserData::getUDTypeName() const
; decoder-mode: arm
0033dcb4  04 00 9f e5                                      ldr r0, [pc, #4]
0033dcb8  00 00 8f e0                                      add r0, pc, r0
0033dcbc  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0033dcc0  40 24 58 00                                      .byte 0x40, 0x24, 0x58, 0x00

; FUNCTION 0x0033dcc4, declared_size=4, range_size=4, mode=arm
; class-group: sfc::script::lua::UserData
; alias: _ZN3sfc6script3lua8UserData14createBindingsERNS1_6BinderE
; demangled: sfc::script::lua::UserData::createBindings(sfc::script::lua::Binder&)
; decoder-mode: arm
0033dcc4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033e2f0, declared_size=52, range_size=52, mode=arm
; class-group: sfc::script::lua::UserData
; alias: _ZN3sfc6script3lua8UserDataD0Ev
; demangled: sfc::script::lua::UserData::~UserData()
; decoder-mode: arm
0033e2f0  24 30 9f e5                                      ldr r3, [pc, #0x24]
0033e2f4  24 20 9f e5                                      ldr r2, [pc, #0x24]
0033e2f8  10 40 2d e9                                      push {r4, lr}
0033e2fc  03 30 8f e0                                      add r3, pc, r3
0033e300  02 20 93 e7                                      ldr r2, [r3, r2]
0033e304  00 40 a0 e1                                      mov r4, r0
0033e308  08 20 82 e2                                      add r2, r2, #8
0033e30c  00 20 80 e5                                      str r2, [r0]
0033e310  4a 48 ff eb                                      bl #0x310440
0033e314  04 00 a0 e1                                      mov r0, r4
0033e318  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0033e31c  94 67 65 00 8c 10 00 00                          .byte 0x94, 0x67, 0x65, 0x00, 0x8c, 0x10, 0x00, 0x00
