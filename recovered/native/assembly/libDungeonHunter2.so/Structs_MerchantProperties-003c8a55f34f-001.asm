; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6750, declared_size=52, range_size=52, mode=arm
; class-group: Structs::MerchantProperties
; alias: _ZN7Structs18MerchantPropertiesD2Ev
; demangled: Structs::MerchantProperties::~MerchantProperties()
; decoder-mode: arm
004c6750  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c6754  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c6758  10 40 2d e9                                      push {r4, lr}
004c675c  03 30 8f e0                                      add r3, pc, r3
004c6760  02 20 93 e7                                      ldr r2, [r3, r2]
004c6764  00 40 a0 e1                                      mov r4, r0
004c6768  08 20 82 e2                                      add r2, r2, #8
004c676c  00 20 80 e5                                      str r2, [r0]
004c6770  f1 fb ff eb                                      bl #0x4c573c
004c6774  04 00 a0 e1                                      mov r0, r4
004c6778  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c677c  34 e3 4c 00 90 35 00 00                          .byte 0x34, 0xe3, 0x4c, 0x00, 0x90, 0x35, 0x00, 0x00

; FUNCTION 0x004c6784, declared_size=52, range_size=52, mode=arm
; class-group: Structs::MerchantProperties
; alias: _ZN7Structs18MerchantPropertiesD1Ev
; demangled: Structs::MerchantProperties::~MerchantProperties()
; decoder-mode: arm
004c6784  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c6788  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c678c  10 40 2d e9                                      push {r4, lr}
004c6790  03 30 8f e0                                      add r3, pc, r3
004c6794  02 20 93 e7                                      ldr r2, [r3, r2]
004c6798  00 40 a0 e1                                      mov r4, r0
004c679c  08 20 82 e2                                      add r2, r2, #8
004c67a0  00 20 80 e5                                      str r2, [r0]
004c67a4  e4 fb ff eb                                      bl #0x4c573c
004c67a8  04 00 a0 e1                                      mov r0, r4
004c67ac  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c67b0  00 e3 4c 00 90 35 00 00                          .byte 0x00, 0xe3, 0x4c, 0x00, 0x90, 0x35, 0x00, 0x00

; FUNCTION 0x004c67b8, declared_size=4, range_size=4, mode=arm
; class-group: Structs::MerchantProperties
; alias: _ZN7Structs18MerchantProperties8finalizeEv
; demangled: Structs::MerchantProperties::finalize()
; decoder-mode: arm
004c67b8  e1 fb ff ea                                      b #0x4c5744

; FUNCTION 0x004ce550, declared_size=28, range_size=28, mode=arm
; class-group: Structs::MerchantProperties
; alias: _ZN7Structs18MerchantPropertiesD0Ev
; demangled: Structs::MerchantProperties::~MerchantProperties()
; decoder-mode: arm
004ce550  10 40 2d e9                                      push {r4, lr}
004ce554  00 40 a0 e1                                      mov r4, r0
004ce558  89 e0 ff eb                                      bl #0x4c6784
004ce55c  04 00 a0 e1                                      mov r0, r4
004ce560  b6 07 f9 eb                                      bl #0x310440
004ce564  04 00 a0 e1                                      mov r0, r4
004ce568  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f7a7c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::MerchantProperties
; alias: _ZN7Structs18MerchantProperties4readEP11IStreamBase
; demangled: Structs::MerchantProperties::read(IStreamBase*)
; decoder-mode: arm
004f7a7c  33 eb ff ea                                      b #0x4f2750
