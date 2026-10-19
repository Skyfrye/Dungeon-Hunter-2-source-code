; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004dad10, declared_size=100, range_size=100, mode=arm
; class-group: Structs::CharTemplate
; alias: _ZN7Structs12CharTemplate8finalizeEv
; demangled: Structs::CharTemplate::finalize()
; decoder-mode: arm
004dad10  70 40 2d e9                                      push {r4, r5, r6, lr}
004dad14  08 30 90 e5                                      ldr r3, [r0, #8]
004dad18  00 50 a0 e1                                      mov r5, r0
004dad1c  00 00 53 e3                                      cmp r3, #0
004dad20  12 00 00 0a                                      beq #0x4dad70
004dad24  04 00 13 e5                                      ldr r0, [r3, #-4]
004dad28  80 01 83 e0                                      add r0, r3, r0, lsl #3
004dad2c  00 00 53 e1                                      cmp r3, r0
004dad30  01 00 00 1a                                      bne #0x4dad3c
004dad34  08 00 00 ea                                      b #0x4dad5c
004dad38  04 00 a0 e1                                      mov r0, r4
004dad3c  08 40 40 e2                                      sub r4, r0, #8
004dad40  08 30 10 e5                                      ldr r3, [r0, #-8]
004dad44  04 00 a0 e1                                      mov r0, r4
004dad48  0f e0 a0 e1                                      mov lr, pc
004dad4c  00 f0 93 e5                                      ldr pc, [r3]
004dad50  08 00 95 e5                                      ldr r0, [r5, #8]
004dad54  04 00 50 e1                                      cmp r0, r4
004dad58  f6 ff ff 1a                                      bne #0x4dad38
004dad5c  08 00 40 e2                                      sub r0, r0, #8
004dad60  b6 d5 f8 eb                                      bl #0x310440
004dad64  00 30 a0 e3                                      mov r3, #0
004dad68  04 30 85 e5                                      str r3, [r5, #4]
004dad6c  08 30 85 e5                                      str r3, [r5, #8]
004dad70  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004dad74, declared_size=124, range_size=124, mode=arm
; class-group: Structs::CharTemplate
; alias: _ZN7Structs12CharTemplateD1Ev
; demangled: Structs::CharTemplate::~CharTemplate()
; decoder-mode: arm
004dad74  70 40 2d e9                                      push {r4, r5, r6, lr}
004dad78  68 30 9f e5                                      ldr r3, [pc, #0x68]
004dad7c  68 20 9f e5                                      ldr r2, [pc, #0x68]
004dad80  08 10 90 e5                                      ldr r1, [r0, #8]
004dad84  03 30 8f e0                                      add r3, pc, r3
004dad88  02 20 93 e7                                      ldr r2, [r3, r2]
004dad8c  00 00 51 e3                                      cmp r1, #0
004dad90  00 50 a0 e1                                      mov r5, r0
004dad94  08 20 82 e2                                      add r2, r2, #8
004dad98  00 20 80 e5                                      str r2, [r0]
004dad9c  0f 00 00 0a                                      beq #0x4dade0
004dada0  04 00 11 e5                                      ldr r0, [r1, #-4]
004dada4  80 01 81 e0                                      add r0, r1, r0, lsl #3
004dada8  00 00 51 e1                                      cmp r1, r0
004dadac  01 00 00 1a                                      bne #0x4dadb8
004dadb0  08 00 00 ea                                      b #0x4dadd8
004dadb4  04 00 a0 e1                                      mov r0, r4
004dadb8  08 40 40 e2                                      sub r4, r0, #8
004dadbc  08 30 10 e5                                      ldr r3, [r0, #-8]
004dadc0  04 00 a0 e1                                      mov r0, r4
004dadc4  0f e0 a0 e1                                      mov lr, pc
004dadc8  00 f0 93 e5                                      ldr pc, [r3]
004dadcc  08 00 95 e5                                      ldr r0, [r5, #8]
004dadd0  04 00 50 e1                                      cmp r0, r4
004dadd4  f6 ff ff 1a                                      bne #0x4dadb4
004dadd8  08 00 40 e2                                      sub r0, r0, #8
004daddc  97 d5 f8 eb                                      bl #0x310440
004dade0  05 00 a0 e1                                      mov r0, r5
004dade4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004dade8  0c 9d 4b 00 a4 3c 00 00                          .byte 0x0c, 0x9d, 0x4b, 0x00, 0xa4, 0x3c, 0x00, 0x00

; FUNCTION 0x004dadf0, declared_size=28, range_size=28, mode=arm
; class-group: Structs::CharTemplate
; alias: _ZN7Structs12CharTemplateD0Ev
; demangled: Structs::CharTemplate::~CharTemplate()
; decoder-mode: arm
004dadf0  10 40 2d e9                                      push {r4, lr}
004dadf4  00 40 a0 e1                                      mov r4, r0
004dadf8  dd ff ff eb                                      bl #0x4dad74
004dadfc  04 00 a0 e1                                      mov r0, r4
004dae00  8e d5 f8 eb                                      bl #0x310440
004dae04  04 00 a0 e1                                      mov r0, r4
004dae08  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004dae0c, declared_size=124, range_size=124, mode=arm
; class-group: Structs::CharTemplate
; alias: _ZN7Structs12CharTemplateD2Ev
; demangled: Structs::CharTemplate::~CharTemplate()
; decoder-mode: arm
004dae0c  70 40 2d e9                                      push {r4, r5, r6, lr}
004dae10  68 30 9f e5                                      ldr r3, [pc, #0x68]
004dae14  68 20 9f e5                                      ldr r2, [pc, #0x68]
004dae18  08 10 90 e5                                      ldr r1, [r0, #8]
004dae1c  03 30 8f e0                                      add r3, pc, r3
004dae20  02 20 93 e7                                      ldr r2, [r3, r2]
004dae24  00 00 51 e3                                      cmp r1, #0
004dae28  00 50 a0 e1                                      mov r5, r0
004dae2c  08 20 82 e2                                      add r2, r2, #8
004dae30  00 20 80 e5                                      str r2, [r0]
004dae34  0f 00 00 0a                                      beq #0x4dae78
004dae38  04 00 11 e5                                      ldr r0, [r1, #-4]
004dae3c  80 01 81 e0                                      add r0, r1, r0, lsl #3
004dae40  00 00 51 e1                                      cmp r1, r0
004dae44  01 00 00 1a                                      bne #0x4dae50
004dae48  08 00 00 ea                                      b #0x4dae70
004dae4c  04 00 a0 e1                                      mov r0, r4
004dae50  08 40 40 e2                                      sub r4, r0, #8
004dae54  08 30 10 e5                                      ldr r3, [r0, #-8]
004dae58  04 00 a0 e1                                      mov r0, r4
004dae5c  0f e0 a0 e1                                      mov lr, pc
004dae60  00 f0 93 e5                                      ldr pc, [r3]
004dae64  08 00 95 e5                                      ldr r0, [r5, #8]
004dae68  04 00 50 e1                                      cmp r0, r4
004dae6c  f6 ff ff 1a                                      bne #0x4dae4c
004dae70  08 00 40 e2                                      sub r0, r0, #8
004dae74  71 d5 f8 eb                                      bl #0x310440
004dae78  05 00 a0 e1                                      mov r0, r5
004dae7c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004dae80  74 9c 4b 00 a4 3c 00 00                          .byte 0x74, 0x9c, 0x4b, 0x00, 0xa4, 0x3c, 0x00, 0x00

; FUNCTION 0x004dcd38, declared_size=344, range_size=344, mode=arm
; class-group: Structs::CharTemplate
; alias: _ZN7Structs12CharTemplate4readEP11IStreamBase
; demangled: Structs::CharTemplate::read(IStreamBase*)
; decoder-mode: arm
004dcd38  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
004dcd3c  00 50 a0 e1                                      mov r5, r0
004dcd40  0c d0 4d e2                                      sub sp, sp, #0xc
004dcd44  01 00 a0 e1                                      mov r0, r1
004dcd48  01 60 a0 e1                                      mov r6, r1
004dcd4c  34 71 9f e5                                      ldr r7, [pc, #0x134]
004dcd50  04 10 85 e2                                      add r1, r5, #4
004dcd54  11 09 fc eb                                      bl #0x3df1a0
004dcd58  01 30 a0 e3                                      mov r3, #1
004dcd5c  00 00 53 e3                                      cmp r3, #0
004dcd60  04 30 8d e5                                      str r3, [sp, #4]
004dcd64  07 70 8f e0                                      add r7, pc, r7
004dcd68  0f 00 00 1a                                      bne #0x4dcdac
004dcd6c  05 30 85 e2                                      add r3, r5, #5
004dcd70  06 20 85 e2                                      add r2, r5, #6
004dcd74  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dcd78  01 10 53 e5                                      ldrb r1, [r3, #-1]
004dcd7c  02 00 53 e1                                      cmp r3, r2
004dcd80  01 10 20 e0                                      eor r1, r0, r1
004dcd84  01 10 43 e5                                      strb r1, [r3, #-1]
004dcd88  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dcd8c  00 10 21 e0                                      eor r1, r1, r0
004dcd90  01 10 c2 e5                                      strb r1, [r2, #1]
004dcd94  01 00 53 e5                                      ldrb r0, [r3, #-1]
004dcd98  01 20 42 e2                                      sub r2, r2, #1
004dcd9c  00 10 21 e0                                      eor r1, r1, r0
004dcda0  01 10 43 e5                                      strb r1, [r3, #-1]
004dcda4  01 30 83 e2                                      add r3, r3, #1
004dcda8  f1 ff ff 3a                                      blo #0x4dcd74
004dcdac  08 30 95 e5                                      ldr r3, [r5, #8]
004dcdb0  00 00 53 e3                                      cmp r3, #0
004dcdb4  0f 00 00 0a                                      beq #0x4dcdf8
004dcdb8  04 00 13 e5                                      ldr r0, [r3, #-4]
004dcdbc  80 01 83 e0                                      add r0, r3, r0, lsl #3
004dcdc0  00 00 53 e1                                      cmp r3, r0
004dcdc4  01 00 00 1a                                      bne #0x4dcdd0
004dcdc8  08 00 00 ea                                      b #0x4dcdf0
004dcdcc  04 00 a0 e1                                      mov r0, r4
004dcdd0  08 40 40 e2                                      sub r4, r0, #8
004dcdd4  08 30 10 e5                                      ldr r3, [r0, #-8]
004dcdd8  04 00 a0 e1                                      mov r0, r4
004dcddc  0f e0 a0 e1                                      mov lr, pc
004dcde0  00 f0 93 e5                                      ldr pc, [r3]
004dcde4  08 00 95 e5                                      ldr r0, [r5, #8]
004dcde8  04 00 50 e1                                      cmp r0, r4
004dcdec  f6 ff ff 1a                                      bne #0x4dcdcc
004dcdf0  08 00 40 e2                                      sub r0, r0, #8
004dcdf4  91 cd f8 eb                                      bl #0x310440
004dcdf8  04 40 95 e5                                      ldr r4, [r5, #4]
004dcdfc  01 10 a0 e3                                      mov r1, #1
004dce00  01 00 84 e0                                      add r0, r4, r1
004dce04  80 01 a0 e1                                      lsl r0, r0, #3
004dce08  d7 cd f8 eb                                      bl #0x31056c
004dce0c  08 30 a0 e3                                      mov r3, #8
004dce10  00 00 54 e3                                      cmp r4, #0
004dce14  18 00 80 e8                                      stm r0, {r3, r4}
004dce18  03 30 80 e0                                      add r3, r0, r3
004dce1c  07 00 00 0a                                      beq #0x4dce40
004dce20  64 10 9f e5                                      ldr r1, [pc, #0x64]
004dce24  00 20 a0 e3                                      mov r2, #0
004dce28  01 10 97 e7                                      ldr r1, [r7, r1]
004dce2c  08 10 81 e2                                      add r1, r1, #8
004dce30  01 20 82 e2                                      add r2, r2, #1
004dce34  04 00 52 e1                                      cmp r2, r4
004dce38  08 10 a0 e5                                      str r1, [r0, #8]!
004dce3c  fb ff ff 1a                                      bne #0x4dce30
004dce40  04 20 95 e5                                      ldr r2, [r5, #4]
004dce44  08 30 85 e5                                      str r3, [r5, #8]
004dce48  00 00 52 e3                                      cmp r2, #0
004dce4c  0b 00 00 0a                                      beq #0x4dce80
004dce50  00 40 a0 e3                                      mov r4, #0
004dce54  00 00 00 ea                                      b #0x4dce5c
004dce58  08 30 95 e5                                      ldr r3, [r5, #8]
004dce5c  84 01 83 e0                                      add r0, r3, r4, lsl #3
004dce60  06 10 a0 e1                                      mov r1, r6
004dce64  84 31 93 e7                                      ldr r3, [r3, r4, lsl #3]
004dce68  0f e0 a0 e1                                      mov lr, pc
004dce6c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004dce70  04 30 95 e5                                      ldr r3, [r5, #4]
004dce74  01 40 84 e2                                      add r4, r4, #1
004dce78  04 00 53 e1                                      cmp r3, r4
004dce7c  f5 ff ff 8a                                      bhi #0x4dce58
004dce80  0c d0 8d e2                                      add sp, sp, #0xc
004dce84  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
004dce88  2c 7d 4b 00 6c 46 00 00                          .byte 0x2c, 0x7d, 0x4b, 0x00, 0x6c, 0x46, 0x00, 0x00
