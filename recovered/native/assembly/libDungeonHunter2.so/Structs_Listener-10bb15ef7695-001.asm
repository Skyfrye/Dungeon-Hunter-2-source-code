; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c7c98, declared_size=4, range_size=4, mode=arm
; class-group: Structs::Listener
; alias: _ZN7Structs8ListenerD2Ev
; demangled: Structs::Listener::~Listener()
; decoder-mode: arm
004c7c98  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c7c9c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::Listener
; alias: _ZN7Structs8ListenerD1Ev
; demangled: Structs::Listener::~Listener()
; decoder-mode: arm
004c7c9c  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c7ca0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::Listener
; alias: _ZN7Structs8Listener8finalizeEv
; demangled: Structs::Listener::finalize()
; decoder-mode: arm
004c7ca0  1e ff 2f e1                                      bx lr

; FUNCTION 0x004cdcac, declared_size=28, range_size=28, mode=arm
; class-group: Structs::Listener
; alias: _ZN7Structs8ListenerD0Ev
; demangled: Structs::Listener::~Listener()
; decoder-mode: arm
004cdcac  10 40 2d e9                                      push {r4, lr}
004cdcb0  00 40 a0 e1                                      mov r4, r0
004cdcb4  f8 e7 ff eb                                      bl #0x4c7c9c
004cdcb8  04 00 a0 e1                                      mov r0, r4
004cdcbc  df 09 f9 eb                                      bl #0x310440
004cdcc0  04 00 a0 e1                                      mov r0, r4
004cdcc4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004ed978, declared_size=576, range_size=576, mode=arm
; class-group: Structs::Listener
; alias: _ZN7Structs8Listener4readEP11IStreamBase
; demangled: Structs::Listener::read(IStreamBase*)
; decoder-mode: arm
004ed978  30 40 2d e9                                      push {r4, r5, lr}
004ed97c  00 40 a0 e1                                      mov r4, r0
004ed980  0c d0 4d e2                                      sub sp, sp, #0xc
004ed984  01 00 a0 e1                                      mov r0, r1
004ed988  01 50 a0 e1                                      mov r5, r1
004ed98c  04 10 84 e2                                      add r1, r4, #4
004ed990  be ad fd eb                                      bl #0x459090
004ed994  01 30 a0 e3                                      mov r3, #1
004ed998  00 00 53 e3                                      cmp r3, #0
004ed99c  04 30 8d e5                                      str r3, [sp, #4]
004ed9a0  0f 00 00 1a                                      bne #0x4ed9e4
004ed9a4  05 30 84 e2                                      add r3, r4, #5
004ed9a8  06 20 84 e2                                      add r2, r4, #6
004ed9ac  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ed9b0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ed9b4  03 00 52 e1                                      cmp r2, r3
004ed9b8  01 10 20 e0                                      eor r1, r0, r1
004ed9bc  01 10 43 e5                                      strb r1, [r3, #-1]
004ed9c0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ed9c4  00 10 21 e0                                      eor r1, r1, r0
004ed9c8  01 10 c2 e5                                      strb r1, [r2, #1]
004ed9cc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ed9d0  01 20 42 e2                                      sub r2, r2, #1
004ed9d4  00 10 21 e0                                      eor r1, r1, r0
004ed9d8  01 10 43 e5                                      strb r1, [r3, #-1]
004ed9dc  01 30 83 e2                                      add r3, r3, #1
004ed9e0  f1 ff ff 8a                                      bhi #0x4ed9ac
004ed9e4  05 00 a0 e1                                      mov r0, r5
004ed9e8  08 10 84 e2                                      add r1, r4, #8
004ed9ec  a7 ad fd eb                                      bl #0x459090
004ed9f0  01 30 a0 e3                                      mov r3, #1
004ed9f4  00 00 53 e3                                      cmp r3, #0
004ed9f8  04 30 8d e5                                      str r3, [sp, #4]
004ed9fc  0f 00 00 1a                                      bne #0x4eda40
004eda00  09 30 84 e2                                      add r3, r4, #9
004eda04  0a 20 84 e2                                      add r2, r4, #0xa
004eda08  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eda0c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004eda10  03 00 52 e1                                      cmp r2, r3
004eda14  01 10 20 e0                                      eor r1, r0, r1
004eda18  01 10 43 e5                                      strb r1, [r3, #-1]
004eda1c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eda20  00 10 21 e0                                      eor r1, r1, r0
004eda24  01 10 c2 e5                                      strb r1, [r2, #1]
004eda28  01 00 53 e5                                      ldrb r0, [r3, #-1]
004eda2c  01 20 42 e2                                      sub r2, r2, #1
004eda30  00 10 21 e0                                      eor r1, r1, r0
004eda34  01 10 43 e5                                      strb r1, [r3, #-1]
004eda38  01 30 83 e2                                      add r3, r3, #1
004eda3c  f1 ff ff 8a                                      bhi #0x4eda08
004eda40  05 00 a0 e1                                      mov r0, r5
004eda44  0c 10 84 e2                                      add r1, r4, #0xc
004eda48  90 ad fd eb                                      bl #0x459090
004eda4c  01 30 a0 e3                                      mov r3, #1
004eda50  00 00 53 e3                                      cmp r3, #0
004eda54  04 30 8d e5                                      str r3, [sp, #4]
004eda58  0f 00 00 1a                                      bne #0x4eda9c
004eda5c  0d 30 84 e2                                      add r3, r4, #0xd
004eda60  0e 20 84 e2                                      add r2, r4, #0xe
004eda64  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eda68  01 10 53 e5                                      ldrb r1, [r3, #-1]
004eda6c  03 00 52 e1                                      cmp r2, r3
004eda70  01 10 20 e0                                      eor r1, r0, r1
004eda74  01 10 43 e5                                      strb r1, [r3, #-1]
004eda78  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eda7c  00 10 21 e0                                      eor r1, r1, r0
004eda80  01 10 c2 e5                                      strb r1, [r2, #1]
004eda84  01 00 53 e5                                      ldrb r0, [r3, #-1]
004eda88  01 20 42 e2                                      sub r2, r2, #1
004eda8c  00 10 21 e0                                      eor r1, r1, r0
004eda90  01 10 43 e5                                      strb r1, [r3, #-1]
004eda94  01 30 83 e2                                      add r3, r3, #1
004eda98  f1 ff ff 8a                                      bhi #0x4eda64
004eda9c  05 00 a0 e1                                      mov r0, r5
004edaa0  10 10 84 e2                                      add r1, r4, #0x10
004edaa4  79 ad fd eb                                      bl #0x459090
004edaa8  01 30 a0 e3                                      mov r3, #1
004edaac  00 00 53 e3                                      cmp r3, #0
004edab0  04 30 8d e5                                      str r3, [sp, #4]
004edab4  0f 00 00 1a                                      bne #0x4edaf8
004edab8  11 30 84 e2                                      add r3, r4, #0x11
004edabc  12 20 84 e2                                      add r2, r4, #0x12
004edac0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004edac4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004edac8  03 00 52 e1                                      cmp r2, r3
004edacc  01 10 20 e0                                      eor r1, r0, r1
004edad0  01 10 43 e5                                      strb r1, [r3, #-1]
004edad4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004edad8  00 10 21 e0                                      eor r1, r1, r0
004edadc  01 10 c2 e5                                      strb r1, [r2, #1]
004edae0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004edae4  01 20 42 e2                                      sub r2, r2, #1
004edae8  00 10 21 e0                                      eor r1, r1, r0
004edaec  01 10 43 e5                                      strb r1, [r3, #-1]
004edaf0  01 30 83 e2                                      add r3, r3, #1
004edaf4  f1 ff ff 8a                                      bhi #0x4edac0
004edaf8  05 00 a0 e1                                      mov r0, r5
004edafc  14 10 84 e2                                      add r1, r4, #0x14
004edb00  91 b7 ff eb                                      bl #0x4db94c
004edb04  01 30 a0 e3                                      mov r3, #1
004edb08  00 00 53 e3                                      cmp r3, #0
004edb0c  04 30 8d e5                                      str r3, [sp, #4]
004edb10  0f 00 00 1a                                      bne #0x4edb54
004edb14  15 30 84 e2                                      add r3, r4, #0x15
004edb18  16 20 84 e2                                      add r2, r4, #0x16
004edb1c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004edb20  01 10 53 e5                                      ldrb r1, [r3, #-1]
004edb24  02 00 53 e1                                      cmp r3, r2
004edb28  01 10 20 e0                                      eor r1, r0, r1
004edb2c  01 10 43 e5                                      strb r1, [r3, #-1]
004edb30  01 00 d2 e5                                      ldrb r0, [r2, #1]
004edb34  00 10 21 e0                                      eor r1, r1, r0
004edb38  01 10 c2 e5                                      strb r1, [r2, #1]
004edb3c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004edb40  01 20 42 e2                                      sub r2, r2, #1
004edb44  00 10 21 e0                                      eor r1, r1, r0
004edb48  01 10 43 e5                                      strb r1, [r3, #-1]
004edb4c  01 30 83 e2                                      add r3, r3, #1
004edb50  f1 ff ff 3a                                      blo #0x4edb1c
004edb54  05 00 a0 e1                                      mov r0, r5
004edb58  18 10 84 e2                                      add r1, r4, #0x18
004edb5c  4b ad fd eb                                      bl #0x459090
004edb60  01 30 a0 e3                                      mov r3, #1
004edb64  00 00 53 e3                                      cmp r3, #0
004edb68  04 30 8d e5                                      str r3, [sp, #4]
004edb6c  0f 00 00 1a                                      bne #0x4edbb0
004edb70  1a 30 84 e2                                      add r3, r4, #0x1a
004edb74  19 40 84 e2                                      add r4, r4, #0x19
004edb78  01 10 d3 e5                                      ldrb r1, [r3, #1]
004edb7c  01 20 54 e5                                      ldrb r2, [r4, #-1]
004edb80  04 00 53 e1                                      cmp r3, r4
004edb84  02 20 21 e0                                      eor r2, r1, r2
004edb88  01 20 44 e5                                      strb r2, [r4, #-1]
004edb8c  01 10 d3 e5                                      ldrb r1, [r3, #1]
004edb90  01 20 22 e0                                      eor r2, r2, r1
004edb94  01 20 c3 e5                                      strb r2, [r3, #1]
004edb98  01 10 54 e5                                      ldrb r1, [r4, #-1]
004edb9c  01 30 43 e2                                      sub r3, r3, #1
004edba0  01 20 22 e0                                      eor r2, r2, r1
004edba4  01 20 44 e5                                      strb r2, [r4, #-1]
004edba8  01 40 84 e2                                      add r4, r4, #1
004edbac  f1 ff ff 8a                                      bhi #0x4edb78
004edbb0  0c d0 8d e2                                      add sp, sp, #0xc
004edbb4  30 80 bd e8                                      pop {r4, r5, pc}
