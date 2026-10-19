; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c7038, declared_size=52, range_size=52, mode=arm
; class-group: Structs::PlaySound
; alias: _ZN7Structs9PlaySoundD2Ev
; demangled: Structs::PlaySound::~PlaySound()
; decoder-mode: arm
004c7038  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c703c  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7040  10 40 2d e9                                      push {r4, lr}
004c7044  03 30 8f e0                                      add r3, pc, r3
004c7048  02 20 93 e7                                      ldr r2, [r3, r2]
004c704c  00 40 a0 e1                                      mov r4, r0
004c7050  08 20 82 e2                                      add r2, r2, #8
004c7054  00 20 80 e5                                      str r2, [r0]
004c7058  00 ff ff eb                                      bl #0x4c6c60
004c705c  04 00 a0 e1                                      mov r0, r4
004c7060  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7064  4c da 4c 00 04 3a 00 00                          .byte 0x4c, 0xda, 0x4c, 0x00, 0x04, 0x3a, 0x00, 0x00

; FUNCTION 0x004c706c, declared_size=52, range_size=52, mode=arm
; class-group: Structs::PlaySound
; alias: _ZN7Structs9PlaySoundD1Ev
; demangled: Structs::PlaySound::~PlaySound()
; decoder-mode: arm
004c706c  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7070  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7074  10 40 2d e9                                      push {r4, lr}
004c7078  03 30 8f e0                                      add r3, pc, r3
004c707c  02 20 93 e7                                      ldr r2, [r3, r2]
004c7080  00 40 a0 e1                                      mov r4, r0
004c7084  08 20 82 e2                                      add r2, r2, #8
004c7088  00 20 80 e5                                      str r2, [r0]
004c708c  f3 fe ff eb                                      bl #0x4c6c60
004c7090  04 00 a0 e1                                      mov r0, r4
004c7094  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7098  18 da 4c 00 04 3a 00 00                          .byte 0x18, 0xda, 0x4c, 0x00, 0x04, 0x3a, 0x00, 0x00

; FUNCTION 0x004c70a0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::PlaySound
; alias: _ZN7Structs9PlaySound8finalizeEv
; demangled: Structs::PlaySound::finalize()
; decoder-mode: arm
004c70a0  f0 fe ff ea                                      b #0x4c6c68

; FUNCTION 0x004ce048, declared_size=28, range_size=28, mode=arm
; class-group: Structs::PlaySound
; alias: _ZN7Structs9PlaySoundD0Ev
; demangled: Structs::PlaySound::~PlaySound()
; decoder-mode: arm
004ce048  10 40 2d e9                                      push {r4, lr}
004ce04c  00 40 a0 e1                                      mov r4, r0
004ce050  05 e4 ff eb                                      bl #0x4c706c
004ce054  04 00 a0 e1                                      mov r0, r4
004ce058  f8 08 f9 eb                                      bl #0x310440
004ce05c  04 00 a0 e1                                      mov r0, r4
004ce060  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004ffab4, declared_size=236, range_size=236, mode=arm
; class-group: Structs::PlaySound
; alias: _ZN7Structs9PlaySound4readEP11IStreamBase
; demangled: Structs::PlaySound::read(IStreamBase*)
; decoder-mode: arm
004ffab4  30 40 2d e9                                      push {r4, r5, lr}
004ffab8  00 40 a0 e1                                      mov r4, r0
004ffabc  0c d0 4d e2                                      sub sp, sp, #0xc
004ffac0  01 50 a0 e1                                      mov r5, r1
004ffac4  57 ff ff eb                                      bl #0x4ff828
004ffac8  05 00 a0 e1                                      mov r0, r5
004ffacc  08 10 84 e2                                      add r1, r4, #8
004ffad0  6e 65 fd eb                                      bl #0x459090
004ffad4  01 30 a0 e3                                      mov r3, #1
004ffad8  00 00 53 e3                                      cmp r3, #0
004ffadc  04 30 8d e5                                      str r3, [sp, #4]
004ffae0  0f 00 00 1a                                      bne #0x4ffb24
004ffae4  09 30 84 e2                                      add r3, r4, #9
004ffae8  0a 20 84 e2                                      add r2, r4, #0xa
004ffaec  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ffaf0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ffaf4  03 00 52 e1                                      cmp r2, r3
004ffaf8  01 10 20 e0                                      eor r1, r0, r1
004ffafc  01 10 43 e5                                      strb r1, [r3, #-1]
004ffb00  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ffb04  00 10 21 e0                                      eor r1, r1, r0
004ffb08  01 10 c2 e5                                      strb r1, [r2, #1]
004ffb0c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ffb10  01 20 42 e2                                      sub r2, r2, #1
004ffb14  00 10 21 e0                                      eor r1, r1, r0
004ffb18  01 10 43 e5                                      strb r1, [r3, #-1]
004ffb1c  01 30 83 e2                                      add r3, r3, #1
004ffb20  f1 ff ff 8a                                      bhi #0x4ffaec
004ffb24  0c 10 84 e2                                      add r1, r4, #0xc
004ffb28  05 00 a0 e1                                      mov r0, r5
004ffb2c  5a 6f ff eb                                      bl #0x4db89c
004ffb30  05 00 a0 e1                                      mov r0, r5
004ffb34  0d 10 84 e2                                      add r1, r4, #0xd
004ffb38  57 6f ff eb                                      bl #0x4db89c
004ffb3c  05 00 a0 e1                                      mov r0, r5
004ffb40  10 10 84 e2                                      add r1, r4, #0x10
004ffb44  51 65 fd eb                                      bl #0x459090
004ffb48  01 30 a0 e3                                      mov r3, #1
004ffb4c  00 00 53 e3                                      cmp r3, #0
004ffb50  04 30 8d e5                                      str r3, [sp, #4]
004ffb54  0f 00 00 1a                                      bne #0x4ffb98
004ffb58  12 30 84 e2                                      add r3, r4, #0x12
004ffb5c  11 40 84 e2                                      add r4, r4, #0x11
004ffb60  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ffb64  01 20 54 e5                                      ldrb r2, [r4, #-1]
004ffb68  03 00 54 e1                                      cmp r4, r3
004ffb6c  02 20 21 e0                                      eor r2, r1, r2
004ffb70  01 20 44 e5                                      strb r2, [r4, #-1]
004ffb74  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ffb78  01 20 22 e0                                      eor r2, r2, r1
004ffb7c  01 20 c3 e5                                      strb r2, [r3, #1]
004ffb80  01 10 54 e5                                      ldrb r1, [r4, #-1]
004ffb84  01 30 43 e2                                      sub r3, r3, #1
004ffb88  01 20 22 e0                                      eor r2, r2, r1
004ffb8c  01 20 44 e5                                      strb r2, [r4, #-1]
004ffb90  01 40 84 e2                                      add r4, r4, #1
004ffb94  f1 ff ff 3a                                      blo #0x4ffb60
004ffb98  0c d0 8d e2                                      add sp, sp, #0xc
004ffb9c  30 80 bd e8                                      pop {r4, r5, pc}
