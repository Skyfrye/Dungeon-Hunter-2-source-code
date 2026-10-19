; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d9fac, declared_size=40, range_size=40, mode=arm
; class-group: Structs::ExplosiveTrap
; alias: _ZN7Structs13ExplosiveTrap8finalizeEv
; demangled: Structs::ExplosiveTrap::finalize()
; decoder-mode: arm
004d9fac  10 40 2d e9                                      push {r4, lr}
004d9fb0  00 40 a0 e1                                      mov r4, r0
004d9fb4  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d9fb8  00 00 50 e3                                      cmp r0, #0
004d9fbc  03 00 00 0a                                      beq #0x4d9fd0
004d9fc0  1e d9 f8 eb                                      bl #0x310440
004d9fc4  00 30 a0 e3                                      mov r3, #0
004d9fc8  0c 30 84 e5                                      str r3, [r4, #0xc]
004d9fcc  10 30 84 e5                                      str r3, [r4, #0x10]
004d9fd0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d9fd4, declared_size=64, range_size=64, mode=arm
; class-group: Structs::ExplosiveTrap
; alias: _ZN7Structs13ExplosiveTrapD1Ev
; demangled: Structs::ExplosiveTrap::~ExplosiveTrap()
; decoder-mode: arm
004d9fd4  10 40 2d e9                                      push {r4, lr}
004d9fd8  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004d9fdc  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004d9fe0  00 40 a0 e1                                      mov r4, r0
004d9fe4  03 30 8f e0                                      add r3, pc, r3
004d9fe8  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d9fec  02 20 93 e7                                      ldr r2, [r3, r2]
004d9ff0  00 00 50 e3                                      cmp r0, #0
004d9ff4  08 20 82 e2                                      add r2, r2, #8
004d9ff8  00 20 84 e5                                      str r2, [r4]
004d9ffc  00 00 00 0a                                      beq #0x4da004
004da000  0e d9 f8 eb                                      bl #0x310440
004da004  04 00 a0 e1                                      mov r0, r4
004da008  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004da00c  ac aa 4b 00 ac 27 00 00                          .byte 0xac, 0xaa, 0x4b, 0x00, 0xac, 0x27, 0x00, 0x00

; FUNCTION 0x004da014, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ExplosiveTrap
; alias: _ZN7Structs13ExplosiveTrapD0Ev
; demangled: Structs::ExplosiveTrap::~ExplosiveTrap()
; decoder-mode: arm
004da014  10 40 2d e9                                      push {r4, lr}
004da018  00 40 a0 e1                                      mov r4, r0
004da01c  ec ff ff eb                                      bl #0x4d9fd4
004da020  04 00 a0 e1                                      mov r0, r4
004da024  05 d9 f8 eb                                      bl #0x310440
004da028  04 00 a0 e1                                      mov r0, r4
004da02c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004da030, declared_size=64, range_size=64, mode=arm
; class-group: Structs::ExplosiveTrap
; alias: _ZN7Structs13ExplosiveTrapD2Ev
; demangled: Structs::ExplosiveTrap::~ExplosiveTrap()
; decoder-mode: arm
004da030  10 40 2d e9                                      push {r4, lr}
004da034  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004da038  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004da03c  00 40 a0 e1                                      mov r4, r0
004da040  03 30 8f e0                                      add r3, pc, r3
004da044  10 00 90 e5                                      ldr r0, [r0, #0x10]
004da048  02 20 93 e7                                      ldr r2, [r3, r2]
004da04c  00 00 50 e3                                      cmp r0, #0
004da050  08 20 82 e2                                      add r2, r2, #8
004da054  00 20 84 e5                                      str r2, [r4]
004da058  00 00 00 0a                                      beq #0x4da060
004da05c  f7 d8 f8 eb                                      bl #0x310440
004da060  04 00 a0 e1                                      mov r0, r4
004da064  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004da068  50 aa 4b 00 ac 27 00 00                          .byte 0x50, 0xaa, 0x4b, 0x00, 0xac, 0x27, 0x00, 0x00

; FUNCTION 0x004fde80, declared_size=464, range_size=464, mode=arm
; class-group: Structs::ExplosiveTrap
; alias: _ZN7Structs13ExplosiveTrap4readEP11IStreamBase
; demangled: Structs::ExplosiveTrap::read(IStreamBase*)
; decoder-mode: arm
004fde80  70 40 2d e9                                      push {r4, r5, r6, lr}
004fde84  00 40 a0 e1                                      mov r4, r0
004fde88  08 d0 4d e2                                      sub sp, sp, #8
004fde8c  01 00 a0 e1                                      mov r0, r1
004fde90  01 50 a0 e1                                      mov r5, r1
004fde94  04 10 84 e2                                      add r1, r4, #4
004fde98  7c 6c fd eb                                      bl #0x459090
004fde9c  01 30 a0 e3                                      mov r3, #1
004fdea0  00 00 53 e3                                      cmp r3, #0
004fdea4  04 30 8d e5                                      str r3, [sp, #4]
004fdea8  0f 00 00 1a                                      bne #0x4fdeec
004fdeac  05 30 84 e2                                      add r3, r4, #5
004fdeb0  06 20 84 e2                                      add r2, r4, #6
004fdeb4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fdeb8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fdebc  02 00 53 e1                                      cmp r3, r2
004fdec0  01 10 20 e0                                      eor r1, r0, r1
004fdec4  01 10 43 e5                                      strb r1, [r3, #-1]
004fdec8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fdecc  00 10 21 e0                                      eor r1, r1, r0
004fded0  01 10 c2 e5                                      strb r1, [r2, #1]
004fded4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fded8  01 20 42 e2                                      sub r2, r2, #1
004fdedc  00 10 21 e0                                      eor r1, r1, r0
004fdee0  01 10 43 e5                                      strb r1, [r3, #-1]
004fdee4  01 30 83 e2                                      add r3, r3, #1
004fdee8  f1 ff ff 3a                                      blo #0x4fdeb4
004fdeec  05 00 a0 e1                                      mov r0, r5
004fdef0  08 10 84 e2                                      add r1, r4, #8
004fdef4  65 6c fd eb                                      bl #0x459090
004fdef8  01 30 a0 e3                                      mov r3, #1
004fdefc  00 00 53 e3                                      cmp r3, #0
004fdf00  04 30 8d e5                                      str r3, [sp, #4]
004fdf04  0f 00 00 1a                                      bne #0x4fdf48
004fdf08  09 30 84 e2                                      add r3, r4, #9
004fdf0c  0a 20 84 e2                                      add r2, r4, #0xa
004fdf10  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fdf14  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fdf18  02 00 53 e1                                      cmp r3, r2
004fdf1c  01 10 20 e0                                      eor r1, r0, r1
004fdf20  01 10 43 e5                                      strb r1, [r3, #-1]
004fdf24  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fdf28  00 10 21 e0                                      eor r1, r1, r0
004fdf2c  01 10 c2 e5                                      strb r1, [r2, #1]
004fdf30  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fdf34  01 20 42 e2                                      sub r2, r2, #1
004fdf38  00 10 21 e0                                      eor r1, r1, r0
004fdf3c  01 10 43 e5                                      strb r1, [r3, #-1]
004fdf40  01 30 83 e2                                      add r3, r3, #1
004fdf44  f1 ff ff 3a                                      blo #0x4fdf10
004fdf48  05 00 a0 e1                                      mov r0, r5
004fdf4c  0c 10 84 e2                                      add r1, r4, #0xc
004fdf50  92 84 fb eb                                      bl #0x3df1a0
004fdf54  01 30 a0 e3                                      mov r3, #1
004fdf58  00 00 53 e3                                      cmp r3, #0
004fdf5c  04 30 8d e5                                      str r3, [sp, #4]
004fdf60  0f 00 00 1a                                      bne #0x4fdfa4
004fdf64  0d 30 84 e2                                      add r3, r4, #0xd
004fdf68  0e 20 84 e2                                      add r2, r4, #0xe
004fdf6c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fdf70  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fdf74  03 00 52 e1                                      cmp r2, r3
004fdf78  01 10 20 e0                                      eor r1, r0, r1
004fdf7c  01 10 43 e5                                      strb r1, [r3, #-1]
004fdf80  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fdf84  00 10 21 e0                                      eor r1, r1, r0
004fdf88  01 10 c2 e5                                      strb r1, [r2, #1]
004fdf8c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fdf90  01 20 42 e2                                      sub r2, r2, #1
004fdf94  00 10 21 e0                                      eor r1, r1, r0
004fdf98  01 10 43 e5                                      strb r1, [r3, #-1]
004fdf9c  01 30 83 e2                                      add r3, r3, #1
004fdfa0  f1 ff ff 8a                                      bhi #0x4fdf6c
004fdfa4  10 00 94 e5                                      ldr r0, [r4, #0x10]
004fdfa8  00 00 50 e3                                      cmp r0, #0
004fdfac  00 00 00 0a                                      beq #0x4fdfb4
004fdfb0  22 49 f8 eb                                      bl #0x310440
004fdfb4  0c 00 94 e5                                      ldr r0, [r4, #0xc]
004fdfb8  01 10 a0 e3                                      mov r1, #1
004fdfbc  00 60 a0 e3                                      mov r6, #0
004fdfc0  01 00 80 e0                                      add r0, r0, r1
004fdfc4  68 49 f8 eb                                      bl #0x31056c
004fdfc8  0c 20 94 e5                                      ldr r2, [r4, #0xc]
004fdfcc  00 10 a0 e1                                      mov r1, r0
004fdfd0  10 00 84 e5                                      str r0, [r4, #0x10]
004fdfd4  06 30 a0 e1                                      mov r3, r6
004fdfd8  05 00 a0 e1                                      mov r0, r5
004fdfdc  1c 65 f8 eb                                      bl #0x317454
004fdfe0  0c 30 94 e5                                      ldr r3, [r4, #0xc]
004fdfe4  10 20 94 e5                                      ldr r2, [r4, #0x10]
004fdfe8  05 00 a0 e1                                      mov r0, r5
004fdfec  14 10 84 e2                                      add r1, r4, #0x14
004fdff0  03 60 c2 e7                                      strb r6, [r2, r3]
004fdff4  25 6c fd eb                                      bl #0x459090
004fdff8  01 30 a0 e3                                      mov r3, #1
004fdffc  06 00 53 e1                                      cmp r3, r6
004fe000  04 30 8d e5                                      str r3, [sp, #4]
004fe004  0f 00 00 1a                                      bne #0x4fe048
004fe008  16 30 84 e2                                      add r3, r4, #0x16
004fe00c  15 40 84 e2                                      add r4, r4, #0x15
004fe010  01 10 d3 e5                                      ldrb r1, [r3, #1]
004fe014  01 20 54 e5                                      ldrb r2, [r4, #-1]
004fe018  04 00 53 e1                                      cmp r3, r4
004fe01c  02 20 21 e0                                      eor r2, r1, r2
004fe020  01 20 44 e5                                      strb r2, [r4, #-1]
004fe024  01 10 d3 e5                                      ldrb r1, [r3, #1]
004fe028  01 20 22 e0                                      eor r2, r2, r1
004fe02c  01 20 c3 e5                                      strb r2, [r3, #1]
004fe030  01 10 54 e5                                      ldrb r1, [r4, #-1]
004fe034  01 30 43 e2                                      sub r3, r3, #1
004fe038  01 20 22 e0                                      eor r2, r2, r1
004fe03c  01 20 44 e5                                      strb r2, [r4, #-1]
004fe040  01 40 84 e2                                      add r4, r4, #1
004fe044  f1 ff ff 8a                                      bhi #0x4fe010
004fe048  08 d0 8d e2                                      add sp, sp, #8
004fe04c  70 80 bd e8                                      pop {r4, r5, r6, pc}
