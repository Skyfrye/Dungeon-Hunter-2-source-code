; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c70a4, declared_size=52, range_size=52, mode=arm
; class-group: Structs::StopSound
; alias: _ZN7Structs9StopSoundD2Ev
; demangled: Structs::StopSound::~StopSound()
; decoder-mode: arm
004c70a4  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c70a8  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c70ac  10 40 2d e9                                      push {r4, lr}
004c70b0  03 30 8f e0                                      add r3, pc, r3
004c70b4  02 20 93 e7                                      ldr r2, [r3, r2]
004c70b8  00 40 a0 e1                                      mov r4, r0
004c70bc  08 20 82 e2                                      add r2, r2, #8
004c70c0  00 20 80 e5                                      str r2, [r0]
004c70c4  e5 fe ff eb                                      bl #0x4c6c60
004c70c8  04 00 a0 e1                                      mov r0, r4
004c70cc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c70d0  e0 d9 4c 00 fc 3c 00 00                          .byte 0xe0, 0xd9, 0x4c, 0x00, 0xfc, 0x3c, 0x00, 0x00

; FUNCTION 0x004c70d8, declared_size=52, range_size=52, mode=arm
; class-group: Structs::StopSound
; alias: _ZN7Structs9StopSoundD1Ev
; demangled: Structs::StopSound::~StopSound()
; decoder-mode: arm
004c70d8  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c70dc  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c70e0  10 40 2d e9                                      push {r4, lr}
004c70e4  03 30 8f e0                                      add r3, pc, r3
004c70e8  02 20 93 e7                                      ldr r2, [r3, r2]
004c70ec  00 40 a0 e1                                      mov r4, r0
004c70f0  08 20 82 e2                                      add r2, r2, #8
004c70f4  00 20 80 e5                                      str r2, [r0]
004c70f8  d8 fe ff eb                                      bl #0x4c6c60
004c70fc  04 00 a0 e1                                      mov r0, r4
004c7100  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7104  ac d9 4c 00 fc 3c 00 00                          .byte 0xac, 0xd9, 0x4c, 0x00, 0xfc, 0x3c, 0x00, 0x00

; FUNCTION 0x004c710c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::StopSound
; alias: _ZN7Structs9StopSound8finalizeEv
; demangled: Structs::StopSound::finalize()
; decoder-mode: arm
004c710c  d5 fe ff ea                                      b #0x4c6c68

; FUNCTION 0x004ce02c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::StopSound
; alias: _ZN7Structs9StopSoundD0Ev
; demangled: Structs::StopSound::~StopSound()
; decoder-mode: arm
004ce02c  10 40 2d e9                                      push {r4, lr}
004ce030  00 40 a0 e1                                      mov r4, r0
004ce034  27 e4 ff eb                                      bl #0x4c70d8
004ce038  04 00 a0 e1                                      mov r0, r4
004ce03c  ff 08 f9 eb                                      bl #0x310440
004ce040  04 00 a0 e1                                      mov r0, r4
004ce044  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004ff9d4, declared_size=224, range_size=224, mode=arm
; class-group: Structs::StopSound
; alias: _ZN7Structs9StopSound4readEP11IStreamBase
; demangled: Structs::StopSound::read(IStreamBase*)
; decoder-mode: arm
004ff9d4  30 40 2d e9                                      push {r4, r5, lr}
004ff9d8  00 40 a0 e1                                      mov r4, r0
004ff9dc  0c d0 4d e2                                      sub sp, sp, #0xc
004ff9e0  01 50 a0 e1                                      mov r5, r1
004ff9e4  8f ff ff eb                                      bl #0x4ff828
004ff9e8  05 00 a0 e1                                      mov r0, r5
004ff9ec  08 10 84 e2                                      add r1, r4, #8
004ff9f0  a6 65 fd eb                                      bl #0x459090
004ff9f4  01 30 a0 e3                                      mov r3, #1
004ff9f8  00 00 53 e3                                      cmp r3, #0
004ff9fc  04 30 8d e5                                      str r3, [sp, #4]
004ffa00  0f 00 00 1a                                      bne #0x4ffa44
004ffa04  09 30 84 e2                                      add r3, r4, #9
004ffa08  0a 20 84 e2                                      add r2, r4, #0xa
004ffa0c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ffa10  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ffa14  02 00 53 e1                                      cmp r3, r2
004ffa18  01 10 20 e0                                      eor r1, r0, r1
004ffa1c  01 10 43 e5                                      strb r1, [r3, #-1]
004ffa20  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ffa24  00 10 21 e0                                      eor r1, r1, r0
004ffa28  01 10 c2 e5                                      strb r1, [r2, #1]
004ffa2c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ffa30  01 20 42 e2                                      sub r2, r2, #1
004ffa34  00 10 21 e0                                      eor r1, r1, r0
004ffa38  01 10 43 e5                                      strb r1, [r3, #-1]
004ffa3c  01 30 83 e2                                      add r3, r3, #1
004ffa40  f1 ff ff 3a                                      blo #0x4ffa0c
004ffa44  0c 10 84 e2                                      add r1, r4, #0xc
004ffa48  05 00 a0 e1                                      mov r0, r5
004ffa4c  92 6f ff eb                                      bl #0x4db89c
004ffa50  05 00 a0 e1                                      mov r0, r5
004ffa54  10 10 84 e2                                      add r1, r4, #0x10
004ffa58  8c 65 fd eb                                      bl #0x459090
004ffa5c  01 30 a0 e3                                      mov r3, #1
004ffa60  00 00 53 e3                                      cmp r3, #0
004ffa64  04 30 8d e5                                      str r3, [sp, #4]
004ffa68  0f 00 00 1a                                      bne #0x4ffaac
004ffa6c  12 30 84 e2                                      add r3, r4, #0x12
004ffa70  11 40 84 e2                                      add r4, r4, #0x11
004ffa74  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ffa78  01 20 54 e5                                      ldrb r2, [r4, #-1]
004ffa7c  04 00 53 e1                                      cmp r3, r4
004ffa80  02 20 21 e0                                      eor r2, r1, r2
004ffa84  01 20 44 e5                                      strb r2, [r4, #-1]
004ffa88  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ffa8c  01 20 22 e0                                      eor r2, r2, r1
004ffa90  01 20 c3 e5                                      strb r2, [r3, #1]
004ffa94  01 10 54 e5                                      ldrb r1, [r4, #-1]
004ffa98  01 30 43 e2                                      sub r3, r3, #1
004ffa9c  01 20 22 e0                                      eor r2, r2, r1
004ffaa0  01 20 44 e5                                      strb r2, [r4, #-1]
004ffaa4  01 40 84 e2                                      add r4, r4, #1
004ffaa8  f1 ff ff 8a                                      bhi #0x4ffa74
004ffaac  0c d0 8d e2                                      add sp, sp, #0xc
004ffab0  30 80 bd e8                                      pop {r4, r5, pc}
