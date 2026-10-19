; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c57b4, declared_size=52, range_size=52, mode=arm
; class-group: Structs::SkeletonProperties
; alias: _ZN7Structs18SkeletonPropertiesD2Ev
; demangled: Structs::SkeletonProperties::~SkeletonProperties()
; decoder-mode: arm
004c57b4  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c57b8  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c57bc  10 40 2d e9                                      push {r4, lr}
004c57c0  03 30 8f e0                                      add r3, pc, r3
004c57c4  02 20 93 e7                                      ldr r2, [r3, r2]
004c57c8  00 40 a0 e1                                      mov r4, r0
004c57cc  08 20 82 e2                                      add r2, r2, #8
004c57d0  00 20 80 e5                                      str r2, [r0]
004c57d4  d8 ff ff eb                                      bl #0x4c573c
004c57d8  04 00 a0 e1                                      mov r0, r4
004c57dc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c57e0  d0 f2 4c 00 78 0d 00 00                          .byte 0xd0, 0xf2, 0x4c, 0x00, 0x78, 0x0d, 0x00, 0x00

; FUNCTION 0x004c57e8, declared_size=52, range_size=52, mode=arm
; class-group: Structs::SkeletonProperties
; alias: _ZN7Structs18SkeletonPropertiesD1Ev
; demangled: Structs::SkeletonProperties::~SkeletonProperties()
; decoder-mode: arm
004c57e8  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c57ec  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c57f0  10 40 2d e9                                      push {r4, lr}
004c57f4  03 30 8f e0                                      add r3, pc, r3
004c57f8  02 20 93 e7                                      ldr r2, [r3, r2]
004c57fc  00 40 a0 e1                                      mov r4, r0
004c5800  08 20 82 e2                                      add r2, r2, #8
004c5804  00 20 80 e5                                      str r2, [r0]
004c5808  cb ff ff eb                                      bl #0x4c573c
004c580c  04 00 a0 e1                                      mov r0, r4
004c5810  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c5814  9c f2 4c 00 78 0d 00 00                          .byte 0x9c, 0xf2, 0x4c, 0x00, 0x78, 0x0d, 0x00, 0x00

; FUNCTION 0x004c581c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::SkeletonProperties
; alias: _ZN7Structs18SkeletonProperties8finalizeEv
; demangled: Structs::SkeletonProperties::finalize()
; decoder-mode: arm
004c581c  c8 ff ff ea                                      b #0x4c5744

; FUNCTION 0x004ce95c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::SkeletonProperties
; alias: _ZN7Structs18SkeletonPropertiesD0Ev
; demangled: Structs::SkeletonProperties::~SkeletonProperties()
; decoder-mode: arm
004ce95c  10 40 2d e9                                      push {r4, lr}
004ce960  00 40 a0 e1                                      mov r4, r0
004ce964  9f db ff eb                                      bl #0x4c57e8
004ce968  04 00 a0 e1                                      mov r0, r4
004ce96c  b3 06 f9 eb                                      bl #0x310440
004ce970  04 00 a0 e1                                      mov r0, r4
004ce974  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f7b10, declared_size=4, range_size=4, mode=arm
; class-group: Structs::SkeletonProperties
; alias: _ZN7Structs18SkeletonProperties4readEP11IStreamBase
; demangled: Structs::SkeletonProperties::read(IStreamBase*)
; decoder-mode: arm
004f7b10  0e eb ff ea                                      b #0x4f2750
