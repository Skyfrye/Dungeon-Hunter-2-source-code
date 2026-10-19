; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c7b30, declared_size=52, range_size=52, mode=arm
; class-group: Structs::LockTutorial
; alias: _ZN7Structs12LockTutorialD2Ev
; demangled: Structs::LockTutorial::~LockTutorial()
; decoder-mode: arm
004c7b30  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7b34  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7b38  10 40 2d e9                                      push {r4, lr}
004c7b3c  03 30 8f e0                                      add r3, pc, r3
004c7b40  02 20 93 e7                                      ldr r2, [r3, r2]
004c7b44  00 40 a0 e1                                      mov r4, r0
004c7b48  08 20 82 e2                                      add r2, r2, #8
004c7b4c  00 20 80 e5                                      str r2, [r0]
004c7b50  42 fc ff eb                                      bl #0x4c6c60
004c7b54  04 00 a0 e1                                      mov r0, r4
004c7b58  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7b5c  54 cf 4c 00 60 26 00 00                          .byte 0x54, 0xcf, 0x4c, 0x00, 0x60, 0x26, 0x00, 0x00

; FUNCTION 0x004c7b64, declared_size=52, range_size=52, mode=arm
; class-group: Structs::LockTutorial
; alias: _ZN7Structs12LockTutorialD1Ev
; demangled: Structs::LockTutorial::~LockTutorial()
; decoder-mode: arm
004c7b64  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7b68  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7b6c  10 40 2d e9                                      push {r4, lr}
004c7b70  03 30 8f e0                                      add r3, pc, r3
004c7b74  02 20 93 e7                                      ldr r2, [r3, r2]
004c7b78  00 40 a0 e1                                      mov r4, r0
004c7b7c  08 20 82 e2                                      add r2, r2, #8
004c7b80  00 20 80 e5                                      str r2, [r0]
004c7b84  35 fc ff eb                                      bl #0x4c6c60
004c7b88  04 00 a0 e1                                      mov r0, r4
004c7b8c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7b90  20 cf 4c 00 60 26 00 00                          .byte 0x20, 0xcf, 0x4c, 0x00, 0x60, 0x26, 0x00, 0x00

; FUNCTION 0x004c7b98, declared_size=4, range_size=4, mode=arm
; class-group: Structs::LockTutorial
; alias: _ZN7Structs12LockTutorial8finalizeEv
; demangled: Structs::LockTutorial::finalize()
; decoder-mode: arm
004c7b98  32 fc ff ea                                      b #0x4c6c68

; FUNCTION 0x004cdd70, declared_size=28, range_size=28, mode=arm
; class-group: Structs::LockTutorial
; alias: _ZN7Structs12LockTutorialD0Ev
; demangled: Structs::LockTutorial::~LockTutorial()
; decoder-mode: arm
004cdd70  10 40 2d e9                                      push {r4, lr}
004cdd74  00 40 a0 e1                                      mov r4, r0
004cdd78  79 e7 ff eb                                      bl #0x4c7b64
004cdd7c  04 00 a0 e1                                      mov r0, r4
004cdd80  ae 09 f9 eb                                      bl #0x310440
004cdd84  04 00 a0 e1                                      mov r0, r4
004cdd88  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00502a7c, declared_size=120, range_size=120, mode=arm
; class-group: Structs::LockTutorial
; alias: _ZN7Structs12LockTutorial4readEP11IStreamBase
; demangled: Structs::LockTutorial::read(IStreamBase*)
; decoder-mode: arm
00502a7c  30 40 2d e9                                      push {r4, r5, lr}
00502a80  00 40 a0 e1                                      mov r4, r0
00502a84  0c d0 4d e2                                      sub sp, sp, #0xc
00502a88  01 50 a0 e1                                      mov r5, r1
00502a8c  65 f3 ff eb                                      bl #0x4ff828
00502a90  05 00 a0 e1                                      mov r0, r5
00502a94  08 10 84 e2                                      add r1, r4, #8
00502a98  7c 59 fd eb                                      bl #0x459090
00502a9c  01 30 a0 e3                                      mov r3, #1
00502aa0  00 00 53 e3                                      cmp r3, #0
00502aa4  04 30 8d e5                                      str r3, [sp, #4]
00502aa8  0f 00 00 1a                                      bne #0x502aec
00502aac  0a 30 84 e2                                      add r3, r4, #0xa
00502ab0  09 40 84 e2                                      add r4, r4, #9
00502ab4  01 10 d3 e5                                      ldrb r1, [r3, #1]
00502ab8  01 20 54 e5                                      ldrb r2, [r4, #-1]
00502abc  03 00 54 e1                                      cmp r4, r3
00502ac0  02 20 21 e0                                      eor r2, r1, r2
00502ac4  01 20 44 e5                                      strb r2, [r4, #-1]
00502ac8  01 10 d3 e5                                      ldrb r1, [r3, #1]
00502acc  01 20 22 e0                                      eor r2, r2, r1
00502ad0  01 20 c3 e5                                      strb r2, [r3, #1]
00502ad4  01 10 54 e5                                      ldrb r1, [r4, #-1]
00502ad8  01 30 43 e2                                      sub r3, r3, #1
00502adc  01 20 22 e0                                      eor r2, r2, r1
00502ae0  01 20 44 e5                                      strb r2, [r4, #-1]
00502ae4  01 40 84 e2                                      add r4, r4, #1
00502ae8  f1 ff ff 3a                                      blo #0x502ab4
00502aec  0c d0 8d e2                                      add sp, sp, #0xc
00502af0  30 80 bd e8                                      pop {r4, r5, pc}
