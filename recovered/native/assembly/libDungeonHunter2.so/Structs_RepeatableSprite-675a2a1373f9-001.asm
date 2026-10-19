; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6984, declared_size=4, range_size=4, mode=arm
; class-group: Structs::RepeatableSprite
; alias: _ZN7Structs16RepeatableSpriteD2Ev
; demangled: Structs::RepeatableSprite::~RepeatableSprite()
; decoder-mode: arm
004c6984  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6988, declared_size=4, range_size=4, mode=arm
; class-group: Structs::RepeatableSprite
; alias: _ZN7Structs16RepeatableSpriteD1Ev
; demangled: Structs::RepeatableSprite::~RepeatableSprite()
; decoder-mode: arm
004c6988  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c698c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::RepeatableSprite
; alias: _ZN7Structs16RepeatableSprite8finalizeEv
; demangled: Structs::RepeatableSprite::finalize()
; decoder-mode: arm
004c698c  1e ff 2f e1                                      bx lr

; FUNCTION 0x004ce470, declared_size=28, range_size=28, mode=arm
; class-group: Structs::RepeatableSprite
; alias: _ZN7Structs16RepeatableSpriteD0Ev
; demangled: Structs::RepeatableSprite::~RepeatableSprite()
; decoder-mode: arm
004ce470  10 40 2d e9                                      push {r4, lr}
004ce474  00 40 a0 e1                                      mov r4, r0
004ce478  42 e1 ff eb                                      bl #0x4c6988
004ce47c  04 00 a0 e1                                      mov r0, r4
004ce480  ee 07 f9 eb                                      bl #0x310440
004ce484  04 00 a0 e1                                      mov r0, r4
004ce488  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004dbf10, declared_size=624, range_size=624, mode=arm
; class-group: Structs::RepeatableSprite
; alias: _ZN7Structs16RepeatableSprite4readEP11IStreamBase
; demangled: Structs::RepeatableSprite::read(IStreamBase*)
; decoder-mode: arm
004dbf10  70 40 2d e9                                      push {r4, r5, r6, lr}
004dbf14  04 60 80 e2                                      add r6, r0, #4
004dbf18  08 d0 4d e2                                      sub sp, sp, #8
004dbf1c  00 40 a0 e1                                      mov r4, r0
004dbf20  01 50 a0 e1                                      mov r5, r1
004dbf24  01 00 a0 e1                                      mov r0, r1
004dbf28  06 10 a0 e1                                      mov r1, r6
004dbf2c  de fe ff eb                                      bl #0x4dbaac
004dbf30  01 30 a0 e3                                      mov r3, #1
004dbf34  00 00 53 e3                                      cmp r3, #0
004dbf38  04 30 8d e5                                      str r3, [sp, #4]
004dbf3c  0e 00 00 1a                                      bne #0x4dbf7c
004dbf40  05 30 84 e2                                      add r3, r4, #5
004dbf44  01 10 d6 e5                                      ldrb r1, [r6, #1]
004dbf48  01 20 53 e5                                      ldrb r2, [r3, #-1]
004dbf4c  06 00 53 e1                                      cmp r3, r6
004dbf50  02 20 21 e0                                      eor r2, r1, r2
004dbf54  01 20 43 e5                                      strb r2, [r3, #-1]
004dbf58  01 10 d6 e5                                      ldrb r1, [r6, #1]
004dbf5c  01 20 22 e0                                      eor r2, r2, r1
004dbf60  01 20 c6 e5                                      strb r2, [r6, #1]
004dbf64  01 10 53 e5                                      ldrb r1, [r3, #-1]
004dbf68  01 60 46 e2                                      sub r6, r6, #1
004dbf6c  01 20 22 e0                                      eor r2, r2, r1
004dbf70  01 20 43 e5                                      strb r2, [r3, #-1]
004dbf74  01 30 83 e2                                      add r3, r3, #1
004dbf78  f1 ff ff 3a                                      blo #0x4dbf44
004dbf7c  05 00 a0 e1                                      mov r0, r5
004dbf80  06 10 84 e2                                      add r1, r4, #6
004dbf84  08 60 84 e2                                      add r6, r4, #8
004dbf88  43 fe ff eb                                      bl #0x4db89c
004dbf8c  05 00 a0 e1                                      mov r0, r5
004dbf90  06 10 a0 e1                                      mov r1, r6
004dbf94  c4 fe ff eb                                      bl #0x4dbaac
004dbf98  01 30 a0 e3                                      mov r3, #1
004dbf9c  00 00 53 e3                                      cmp r3, #0
004dbfa0  04 30 8d e5                                      str r3, [sp, #4]
004dbfa4  0e 00 00 1a                                      bne #0x4dbfe4
004dbfa8  09 30 84 e2                                      add r3, r4, #9
004dbfac  01 10 d6 e5                                      ldrb r1, [r6, #1]
004dbfb0  01 20 53 e5                                      ldrb r2, [r3, #-1]
004dbfb4  06 00 53 e1                                      cmp r3, r6
004dbfb8  02 20 21 e0                                      eor r2, r1, r2
004dbfbc  01 20 43 e5                                      strb r2, [r3, #-1]
004dbfc0  01 10 d6 e5                                      ldrb r1, [r6, #1]
004dbfc4  01 20 22 e0                                      eor r2, r2, r1
004dbfc8  01 20 c6 e5                                      strb r2, [r6, #1]
004dbfcc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004dbfd0  01 60 46 e2                                      sub r6, r6, #1
004dbfd4  01 20 22 e0                                      eor r2, r2, r1
004dbfd8  01 20 43 e5                                      strb r2, [r3, #-1]
004dbfdc  01 30 83 e2                                      add r3, r3, #1
004dbfe0  f1 ff ff 3a                                      blo #0x4dbfac
004dbfe4  05 00 a0 e1                                      mov r0, r5
004dbfe8  0a 10 84 e2                                      add r1, r4, #0xa
004dbfec  0c 60 84 e2                                      add r6, r4, #0xc
004dbff0  29 fe ff eb                                      bl #0x4db89c
004dbff4  05 00 a0 e1                                      mov r0, r5
004dbff8  06 10 a0 e1                                      mov r1, r6
004dbffc  aa fe ff eb                                      bl #0x4dbaac
004dc000  01 30 a0 e3                                      mov r3, #1
004dc004  00 00 53 e3                                      cmp r3, #0
004dc008  04 30 8d e5                                      str r3, [sp, #4]
004dc00c  0e 00 00 1a                                      bne #0x4dc04c
004dc010  0d 30 84 e2                                      add r3, r4, #0xd
004dc014  01 10 d6 e5                                      ldrb r1, [r6, #1]
004dc018  01 20 53 e5                                      ldrb r2, [r3, #-1]
004dc01c  06 00 53 e1                                      cmp r3, r6
004dc020  02 20 21 e0                                      eor r2, r1, r2
004dc024  01 20 43 e5                                      strb r2, [r3, #-1]
004dc028  01 10 d6 e5                                      ldrb r1, [r6, #1]
004dc02c  01 20 22 e0                                      eor r2, r2, r1
004dc030  01 20 c6 e5                                      strb r2, [r6, #1]
004dc034  01 10 53 e5                                      ldrb r1, [r3, #-1]
004dc038  01 60 46 e2                                      sub r6, r6, #1
004dc03c  01 20 22 e0                                      eor r2, r2, r1
004dc040  01 20 43 e5                                      strb r2, [r3, #-1]
004dc044  01 30 83 e2                                      add r3, r3, #1
004dc048  f1 ff ff 3a                                      blo #0x4dc014
004dc04c  0e 60 84 e2                                      add r6, r4, #0xe
004dc050  05 00 a0 e1                                      mov r0, r5
004dc054  06 10 a0 e1                                      mov r1, r6
004dc058  93 fe ff eb                                      bl #0x4dbaac
004dc05c  01 30 a0 e3                                      mov r3, #1
004dc060  00 00 53 e3                                      cmp r3, #0
004dc064  04 30 8d e5                                      str r3, [sp, #4]
004dc068  0e 00 00 1a                                      bne #0x4dc0a8
004dc06c  0f 30 84 e2                                      add r3, r4, #0xf
004dc070  01 10 d6 e5                                      ldrb r1, [r6, #1]
004dc074  01 20 53 e5                                      ldrb r2, [r3, #-1]
004dc078  06 00 53 e1                                      cmp r3, r6
004dc07c  02 20 21 e0                                      eor r2, r1, r2
004dc080  01 20 43 e5                                      strb r2, [r3, #-1]
004dc084  01 10 d6 e5                                      ldrb r1, [r6, #1]
004dc088  01 20 22 e0                                      eor r2, r2, r1
004dc08c  01 20 c6 e5                                      strb r2, [r6, #1]
004dc090  01 10 53 e5                                      ldrb r1, [r3, #-1]
004dc094  01 60 46 e2                                      sub r6, r6, #1
004dc098  01 20 22 e0                                      eor r2, r2, r1
004dc09c  01 20 43 e5                                      strb r2, [r3, #-1]
004dc0a0  01 30 83 e2                                      add r3, r3, #1
004dc0a4  f1 ff ff 3a                                      blo #0x4dc070
004dc0a8  05 00 a0 e1                                      mov r0, r5
004dc0ac  10 10 84 e2                                      add r1, r4, #0x10
004dc0b0  12 60 84 e2                                      add r6, r4, #0x12
004dc0b4  f8 fd ff eb                                      bl #0x4db89c
004dc0b8  05 00 a0 e1                                      mov r0, r5
004dc0bc  06 10 a0 e1                                      mov r1, r6
004dc0c0  79 fe ff eb                                      bl #0x4dbaac
004dc0c4  01 30 a0 e3                                      mov r3, #1
004dc0c8  00 00 53 e3                                      cmp r3, #0
004dc0cc  04 30 8d e5                                      str r3, [sp, #4]
004dc0d0  0e 00 00 1a                                      bne #0x4dc110
004dc0d4  13 30 84 e2                                      add r3, r4, #0x13
004dc0d8  01 10 d6 e5                                      ldrb r1, [r6, #1]
004dc0dc  01 20 53 e5                                      ldrb r2, [r3, #-1]
004dc0e0  06 00 53 e1                                      cmp r3, r6
004dc0e4  02 20 21 e0                                      eor r2, r1, r2
004dc0e8  01 20 43 e5                                      strb r2, [r3, #-1]
004dc0ec  01 10 d6 e5                                      ldrb r1, [r6, #1]
004dc0f0  01 20 22 e0                                      eor r2, r2, r1
004dc0f4  01 20 c6 e5                                      strb r2, [r6, #1]
004dc0f8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004dc0fc  01 60 46 e2                                      sub r6, r6, #1
004dc100  01 20 22 e0                                      eor r2, r2, r1
004dc104  01 20 43 e5                                      strb r2, [r3, #-1]
004dc108  01 30 83 e2                                      add r3, r3, #1
004dc10c  f1 ff ff 3a                                      blo #0x4dc0d8
004dc110  05 00 a0 e1                                      mov r0, r5
004dc114  14 10 84 e2                                      add r1, r4, #0x14
004dc118  16 60 84 e2                                      add r6, r4, #0x16
004dc11c  de fd ff eb                                      bl #0x4db89c
004dc120  05 00 a0 e1                                      mov r0, r5
004dc124  06 10 a0 e1                                      mov r1, r6
004dc128  5f fe ff eb                                      bl #0x4dbaac
004dc12c  01 30 a0 e3                                      mov r3, #1
004dc130  00 00 53 e3                                      cmp r3, #0
004dc134  04 30 8d e5                                      str r3, [sp, #4]
004dc138  0e 00 00 1a                                      bne #0x4dc178
004dc13c  17 40 84 e2                                      add r4, r4, #0x17
004dc140  01 20 d6 e5                                      ldrb r2, [r6, #1]
004dc144  01 30 54 e5                                      ldrb r3, [r4, #-1]
004dc148  06 00 54 e1                                      cmp r4, r6
004dc14c  03 30 22 e0                                      eor r3, r2, r3
004dc150  01 30 44 e5                                      strb r3, [r4, #-1]
004dc154  01 20 d6 e5                                      ldrb r2, [r6, #1]
004dc158  02 30 23 e0                                      eor r3, r3, r2
004dc15c  01 30 c6 e5                                      strb r3, [r6, #1]
004dc160  01 20 54 e5                                      ldrb r2, [r4, #-1]
004dc164  01 60 46 e2                                      sub r6, r6, #1
004dc168  02 30 23 e0                                      eor r3, r3, r2
004dc16c  01 30 44 e5                                      strb r3, [r4, #-1]
004dc170  01 40 84 e2                                      add r4, r4, #1
004dc174  f1 ff ff 3a                                      blo #0x4dc140
004dc178  08 d0 8d e2                                      add sp, sp, #8
004dc17c  70 80 bd e8                                      pop {r4, r5, r6, pc}
