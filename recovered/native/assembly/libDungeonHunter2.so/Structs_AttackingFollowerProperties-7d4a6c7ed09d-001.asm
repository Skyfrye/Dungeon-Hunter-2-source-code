; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6828, declared_size=52, range_size=52, mode=arm
; class-group: Structs::AttackingFollowerProperties
; alias: _ZN7Structs27AttackingFollowerPropertiesD2Ev
; demangled: Structs::AttackingFollowerProperties::~AttackingFollowerProperties()
; decoder-mode: arm
004c6828  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c682c  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c6830  10 40 2d e9                                      push {r4, lr}
004c6834  03 30 8f e0                                      add r3, pc, r3
004c6838  02 20 93 e7                                      ldr r2, [r3, r2]
004c683c  00 40 a0 e1                                      mov r4, r0
004c6840  08 20 82 e2                                      add r2, r2, #8
004c6844  00 20 80 e5                                      str r2, [r0]
004c6848  bb fb ff eb                                      bl #0x4c573c
004c684c  04 00 a0 e1                                      mov r0, r4
004c6850  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c6854  5c e2 4c 00 c4 2b 00 00                          .byte 0x5c, 0xe2, 0x4c, 0x00, 0xc4, 0x2b, 0x00, 0x00

; FUNCTION 0x004c685c, declared_size=52, range_size=52, mode=arm
; class-group: Structs::AttackingFollowerProperties
; alias: _ZN7Structs27AttackingFollowerPropertiesD1Ev
; demangled: Structs::AttackingFollowerProperties::~AttackingFollowerProperties()
; decoder-mode: arm
004c685c  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c6860  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c6864  10 40 2d e9                                      push {r4, lr}
004c6868  03 30 8f e0                                      add r3, pc, r3
004c686c  02 20 93 e7                                      ldr r2, [r3, r2]
004c6870  00 40 a0 e1                                      mov r4, r0
004c6874  08 20 82 e2                                      add r2, r2, #8
004c6878  00 20 80 e5                                      str r2, [r0]
004c687c  ae fb ff eb                                      bl #0x4c573c
004c6880  04 00 a0 e1                                      mov r0, r4
004c6884  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c6888  28 e2 4c 00 c4 2b 00 00                          .byte 0x28, 0xe2, 0x4c, 0x00, 0xc4, 0x2b, 0x00, 0x00

; FUNCTION 0x004c6890, declared_size=4, range_size=4, mode=arm
; class-group: Structs::AttackingFollowerProperties
; alias: _ZN7Structs27AttackingFollowerProperties8finalizeEv
; demangled: Structs::AttackingFollowerProperties::finalize()
; decoder-mode: arm
004c6890  ab fb ff ea                                      b #0x4c5744

; FUNCTION 0x004ce518, declared_size=28, range_size=28, mode=arm
; class-group: Structs::AttackingFollowerProperties
; alias: _ZN7Structs27AttackingFollowerPropertiesD0Ev
; demangled: Structs::AttackingFollowerProperties::~AttackingFollowerProperties()
; decoder-mode: arm
004ce518  10 40 2d e9                                      push {r4, lr}
004ce51c  00 40 a0 e1                                      mov r4, r0
004ce520  cd e0 ff eb                                      bl #0x4c685c
004ce524  04 00 a0 e1                                      mov r0, r4
004ce528  c4 07 f9 eb                                      bl #0x310440
004ce52c  04 00 a0 e1                                      mov r0, r4
004ce530  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f7a74, declared_size=4, range_size=4, mode=arm
; class-group: Structs::AttackingFollowerProperties
; alias: _ZN7Structs27AttackingFollowerProperties4readEP11IStreamBase
; demangled: Structs::AttackingFollowerProperties::read(IStreamBase*)
; decoder-mode: arm
004f7a74  35 eb ff ea                                      b #0x4f2750
