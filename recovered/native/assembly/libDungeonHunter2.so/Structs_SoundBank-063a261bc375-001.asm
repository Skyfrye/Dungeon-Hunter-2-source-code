; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c7c08, declared_size=4, range_size=4, mode=arm
; class-group: Structs::SoundBank
; alias: _ZN7Structs9SoundBankD2Ev
; demangled: Structs::SoundBank::~SoundBank()
; decoder-mode: arm
004c7c08  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c7c0c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::SoundBank
; alias: _ZN7Structs9SoundBankD1Ev
; demangled: Structs::SoundBank::~SoundBank()
; decoder-mode: arm
004c7c0c  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c7c10, declared_size=4, range_size=4, mode=arm
; class-group: Structs::SoundBank
; alias: _ZN7Structs9SoundBank8finalizeEv
; demangled: Structs::SoundBank::finalize()
; decoder-mode: arm
004c7c10  1e ff 2f e1                                      bx lr

; FUNCTION 0x004cdd1c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::SoundBank
; alias: _ZN7Structs9SoundBankD0Ev
; demangled: Structs::SoundBank::~SoundBank()
; decoder-mode: arm
004cdd1c  10 40 2d e9                                      push {r4, lr}
004cdd20  00 40 a0 e1                                      mov r4, r0
004cdd24  b8 e7 ff eb                                      bl #0x4c7c0c
004cdd28  04 00 a0 e1                                      mov r0, r4
004cdd2c  c3 09 f9 eb                                      bl #0x310440
004cdd30  04 00 a0 e1                                      mov r0, r4
004cdd34  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00502bc8, declared_size=208, range_size=208, mode=arm
; class-group: Structs::SoundBank
; alias: _ZN7Structs9SoundBank4readEP11IStreamBase
; demangled: Structs::SoundBank::read(IStreamBase*)
; decoder-mode: arm
00502bc8  30 40 2d e9                                      push {r4, r5, lr}
00502bcc  00 40 a0 e1                                      mov r4, r0
00502bd0  0c d0 4d e2                                      sub sp, sp, #0xc
00502bd4  01 00 a0 e1                                      mov r0, r1
00502bd8  01 50 a0 e1                                      mov r5, r1
00502bdc  04 10 84 e2                                      add r1, r4, #4
00502be0  2a 59 fd eb                                      bl #0x459090
00502be4  01 30 a0 e3                                      mov r3, #1
00502be8  00 00 53 e3                                      cmp r3, #0
00502bec  04 30 8d e5                                      str r3, [sp, #4]
00502bf0  0f 00 00 1a                                      bne #0x502c34
00502bf4  05 30 84 e2                                      add r3, r4, #5
00502bf8  06 20 84 e2                                      add r2, r4, #6
00502bfc  01 00 d2 e5                                      ldrb r0, [r2, #1]
00502c00  01 10 53 e5                                      ldrb r1, [r3, #-1]
00502c04  02 00 53 e1                                      cmp r3, r2
00502c08  01 10 20 e0                                      eor r1, r0, r1
00502c0c  01 10 43 e5                                      strb r1, [r3, #-1]
00502c10  01 00 d2 e5                                      ldrb r0, [r2, #1]
00502c14  00 10 21 e0                                      eor r1, r1, r0
00502c18  01 10 c2 e5                                      strb r1, [r2, #1]
00502c1c  01 00 53 e5                                      ldrb r0, [r3, #-1]
00502c20  01 20 42 e2                                      sub r2, r2, #1
00502c24  00 10 21 e0                                      eor r1, r1, r0
00502c28  01 10 43 e5                                      strb r1, [r3, #-1]
00502c2c  01 30 83 e2                                      add r3, r3, #1
00502c30  f1 ff ff 3a                                      blo #0x502bfc
00502c34  05 00 a0 e1                                      mov r0, r5
00502c38  08 10 84 e2                                      add r1, r4, #8
00502c3c  13 59 fd eb                                      bl #0x459090
00502c40  01 30 a0 e3                                      mov r3, #1
00502c44  00 00 53 e3                                      cmp r3, #0
00502c48  04 30 8d e5                                      str r3, [sp, #4]
00502c4c  0f 00 00 1a                                      bne #0x502c90
00502c50  0a 30 84 e2                                      add r3, r4, #0xa
00502c54  09 40 84 e2                                      add r4, r4, #9
00502c58  01 10 d3 e5                                      ldrb r1, [r3, #1]
00502c5c  01 20 54 e5                                      ldrb r2, [r4, #-1]
00502c60  04 00 53 e1                                      cmp r3, r4
00502c64  02 20 21 e0                                      eor r2, r1, r2
00502c68  01 20 44 e5                                      strb r2, [r4, #-1]
00502c6c  01 10 d3 e5                                      ldrb r1, [r3, #1]
00502c70  01 20 22 e0                                      eor r2, r2, r1
00502c74  01 20 c3 e5                                      strb r2, [r3, #1]
00502c78  01 10 54 e5                                      ldrb r1, [r4, #-1]
00502c7c  01 30 43 e2                                      sub r3, r3, #1
00502c80  01 20 22 e0                                      eor r2, r2, r1
00502c84  01 20 44 e5                                      strb r2, [r4, #-1]
00502c88  01 40 84 e2                                      add r4, r4, #1
00502c8c  f1 ff ff 8a                                      bhi #0x502c58
00502c90  0c d0 8d e2                                      add sp, sp, #0xc
00502c94  30 80 bd e8                                      pop {r4, r5, pc}
