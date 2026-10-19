; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c7c14, declared_size=4, range_size=4, mode=arm
; class-group: Structs::SoundAutoGen
; alias: _ZN7Structs12SoundAutoGenD2Ev
; demangled: Structs::SoundAutoGen::~SoundAutoGen()
; decoder-mode: arm
004c7c14  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c7c18, declared_size=4, range_size=4, mode=arm
; class-group: Structs::SoundAutoGen
; alias: _ZN7Structs12SoundAutoGenD1Ev
; demangled: Structs::SoundAutoGen::~SoundAutoGen()
; decoder-mode: arm
004c7c18  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c7c1c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::SoundAutoGen
; alias: _ZN7Structs12SoundAutoGen8finalizeEv
; demangled: Structs::SoundAutoGen::finalize()
; decoder-mode: arm
004c7c1c  1e ff 2f e1                                      bx lr

; FUNCTION 0x004cdce4, declared_size=28, range_size=28, mode=arm
; class-group: Structs::SoundAutoGen
; alias: _ZN7Structs12SoundAutoGenD0Ev
; demangled: Structs::SoundAutoGen::~SoundAutoGen()
; decoder-mode: arm
004cdce4  10 40 2d e9                                      push {r4, lr}
004cdce8  00 40 a0 e1                                      mov r4, r0
004cdcec  c9 e7 ff eb                                      bl #0x4c7c18
004cdcf0  04 00 a0 e1                                      mov r0, r4
004cdcf4  d1 09 f9 eb                                      bl #0x310440
004cdcf8  04 00 a0 e1                                      mov r0, r4
004cdcfc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00502af4, declared_size=208, range_size=208, mode=arm
; class-group: Structs::SoundAutoGen
; alias: _ZN7Structs12SoundAutoGen4readEP11IStreamBase
; demangled: Structs::SoundAutoGen::read(IStreamBase*)
; decoder-mode: arm
00502af4  30 40 2d e9                                      push {r4, r5, lr}
00502af8  00 40 a0 e1                                      mov r4, r0
00502afc  0c d0 4d e2                                      sub sp, sp, #0xc
00502b00  01 00 a0 e1                                      mov r0, r1
00502b04  01 50 a0 e1                                      mov r5, r1
00502b08  04 10 84 e2                                      add r1, r4, #4
00502b0c  5f 59 fd eb                                      bl #0x459090
00502b10  01 30 a0 e3                                      mov r3, #1
00502b14  00 00 53 e3                                      cmp r3, #0
00502b18  04 30 8d e5                                      str r3, [sp, #4]
00502b1c  0f 00 00 1a                                      bne #0x502b60
00502b20  05 30 84 e2                                      add r3, r4, #5
00502b24  06 20 84 e2                                      add r2, r4, #6
00502b28  01 00 d2 e5                                      ldrb r0, [r2, #1]
00502b2c  01 10 53 e5                                      ldrb r1, [r3, #-1]
00502b30  02 00 53 e1                                      cmp r3, r2
00502b34  01 10 20 e0                                      eor r1, r0, r1
00502b38  01 10 43 e5                                      strb r1, [r3, #-1]
00502b3c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00502b40  00 10 21 e0                                      eor r1, r1, r0
00502b44  01 10 c2 e5                                      strb r1, [r2, #1]
00502b48  01 00 53 e5                                      ldrb r0, [r3, #-1]
00502b4c  01 20 42 e2                                      sub r2, r2, #1
00502b50  00 10 21 e0                                      eor r1, r1, r0
00502b54  01 10 43 e5                                      strb r1, [r3, #-1]
00502b58  01 30 83 e2                                      add r3, r3, #1
00502b5c  f1 ff ff 3a                                      blo #0x502b28
00502b60  05 00 a0 e1                                      mov r0, r5
00502b64  08 10 84 e2                                      add r1, r4, #8
00502b68  48 59 fd eb                                      bl #0x459090
00502b6c  01 30 a0 e3                                      mov r3, #1
00502b70  00 00 53 e3                                      cmp r3, #0
00502b74  04 30 8d e5                                      str r3, [sp, #4]
00502b78  0f 00 00 1a                                      bne #0x502bbc
00502b7c  0a 30 84 e2                                      add r3, r4, #0xa
00502b80  09 40 84 e2                                      add r4, r4, #9
00502b84  01 10 d3 e5                                      ldrb r1, [r3, #1]
00502b88  01 20 54 e5                                      ldrb r2, [r4, #-1]
00502b8c  04 00 53 e1                                      cmp r3, r4
00502b90  02 20 21 e0                                      eor r2, r1, r2
00502b94  01 20 44 e5                                      strb r2, [r4, #-1]
00502b98  01 10 d3 e5                                      ldrb r1, [r3, #1]
00502b9c  01 20 22 e0                                      eor r2, r2, r1
00502ba0  01 20 c3 e5                                      strb r2, [r3, #1]
00502ba4  01 10 54 e5                                      ldrb r1, [r4, #-1]
00502ba8  01 30 43 e2                                      sub r3, r3, #1
00502bac  01 20 22 e0                                      eor r2, r2, r1
00502bb0  01 20 44 e5                                      strb r2, [r4, #-1]
00502bb4  01 40 84 e2                                      add r4, r4, #1
00502bb8  f1 ff ff 8a                                      bhi #0x502b84
00502bbc  0c d0 8d e2                                      add sp, sp, #0xc
00502bc0  30 80 bd e8                                      pop {r4, r5, pc}
