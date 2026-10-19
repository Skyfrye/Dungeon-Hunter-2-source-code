; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0033dca4, declared_size=4, range_size=4, mode=arm
; class-group: ISerializable
; alias: _ZN13ISerializableD1Ev
; demangled: ISerializable::~ISerializable()
; decoder-mode: arm
0033dca4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033dca8, declared_size=4, range_size=4, mode=arm
; class-group: ISerializable
; alias: _ZN13ISerializable9SerializeEP11IStreamBase
; demangled: ISerializable::Serialize(IStreamBase*)
; decoder-mode: arm
0033dca8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033dcac, declared_size=4, range_size=4, mode=arm
; class-group: ISerializable
; alias: _ZN13ISerializable11DeserializeEP11IStreamBase
; demangled: ISerializable::Deserialize(IStreamBase*)
; decoder-mode: arm
0033dcac  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033e2bc, declared_size=52, range_size=52, mode=arm
; class-group: ISerializable
; alias: _ZN13ISerializableD0Ev
; demangled: ISerializable::~ISerializable()
; decoder-mode: arm
0033e2bc  24 30 9f e5                                      ldr r3, [pc, #0x24]
0033e2c0  24 20 9f e5                                      ldr r2, [pc, #0x24]
0033e2c4  10 40 2d e9                                      push {r4, lr}
0033e2c8  03 30 8f e0                                      add r3, pc, r3
0033e2cc  02 20 93 e7                                      ldr r2, [r3, r2]
0033e2d0  00 40 a0 e1                                      mov r4, r0
0033e2d4  08 20 82 e2                                      add r2, r2, #8
0033e2d8  00 20 80 e5                                      str r2, [r0]
0033e2dc  57 48 ff eb                                      bl #0x310440
0033e2e0  04 00 a0 e1                                      mov r0, r4
0033e2e4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0033e2e8  c8 67 65 00 40 14 00 00                          .byte 0xc8, 0x67, 0x65, 0x00, 0x40, 0x14, 0x00, 0x00
