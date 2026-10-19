; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c7c20, declared_size=52, range_size=52, mode=arm
; class-group: Structs::SoundEventAutoGen
; alias: _ZN7Structs17SoundEventAutoGenD2Ev
; demangled: Structs::SoundEventAutoGen::~SoundEventAutoGen()
; decoder-mode: arm
004c7c20  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7c24  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7c28  10 40 2d e9                                      push {r4, lr}
004c7c2c  03 30 8f e0                                      add r3, pc, r3
004c7c30  02 20 93 e7                                      ldr r2, [r3, r2]
004c7c34  00 40 a0 e1                                      mov r4, r0
004c7c38  08 20 82 e2                                      add r2, r2, #8
004c7c3c  00 20 80 e5                                      str r2, [r0]
004c7c40  f3 ff ff eb                                      bl #0x4c7c14
004c7c44  04 00 a0 e1                                      mov r0, r4
004c7c48  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7c4c  64 ce 4c 00 c4 20 00 00                          .byte 0x64, 0xce, 0x4c, 0x00, 0xc4, 0x20, 0x00, 0x00

; FUNCTION 0x004c7c54, declared_size=52, range_size=52, mode=arm
; class-group: Structs::SoundEventAutoGen
; alias: _ZN7Structs17SoundEventAutoGenD1Ev
; demangled: Structs::SoundEventAutoGen::~SoundEventAutoGen()
; decoder-mode: arm
004c7c54  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7c58  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7c5c  10 40 2d e9                                      push {r4, lr}
004c7c60  03 30 8f e0                                      add r3, pc, r3
004c7c64  02 20 93 e7                                      ldr r2, [r3, r2]
004c7c68  00 40 a0 e1                                      mov r4, r0
004c7c6c  08 20 82 e2                                      add r2, r2, #8
004c7c70  00 20 80 e5                                      str r2, [r0]
004c7c74  e6 ff ff eb                                      bl #0x4c7c14
004c7c78  04 00 a0 e1                                      mov r0, r4
004c7c7c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7c80  30 ce 4c 00 c4 20 00 00                          .byte 0x30, 0xce, 0x4c, 0x00, 0xc4, 0x20, 0x00, 0x00

; FUNCTION 0x004c7c88, declared_size=4, range_size=4, mode=arm
; class-group: Structs::SoundEventAutoGen
; alias: _ZN7Structs17SoundEventAutoGen8finalizeEv
; demangled: Structs::SoundEventAutoGen::finalize()
; decoder-mode: arm
004c7c88  e3 ff ff ea                                      b #0x4c7c1c

; FUNCTION 0x004cdd00, declared_size=28, range_size=28, mode=arm
; class-group: Structs::SoundEventAutoGen
; alias: _ZN7Structs17SoundEventAutoGenD0Ev
; demangled: Structs::SoundEventAutoGen::~SoundEventAutoGen()
; decoder-mode: arm
004cdd00  10 40 2d e9                                      push {r4, lr}
004cdd04  00 40 a0 e1                                      mov r4, r0
004cdd08  d1 e7 ff eb                                      bl #0x4c7c54
004cdd0c  04 00 a0 e1                                      mov r0, r4
004cdd10  ca 09 f9 eb                                      bl #0x310440
004cdd14  04 00 a0 e1                                      mov r0, r4
004cdd18  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00502bc4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::SoundEventAutoGen
; alias: _ZN7Structs17SoundEventAutoGen4readEP11IStreamBase
; demangled: Structs::SoundEventAutoGen::read(IStreamBase*)
; decoder-mode: arm
00502bc4  ca ff ff ea                                      b #0x502af4
