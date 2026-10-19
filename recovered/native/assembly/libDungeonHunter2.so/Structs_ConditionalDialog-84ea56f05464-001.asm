; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004da94c, declared_size=100, range_size=100, mode=arm
; class-group: Structs::ConditionalDialog
; alias: _ZN7Structs17ConditionalDialog8finalizeEv
; demangled: Structs::ConditionalDialog::finalize()
; decoder-mode: arm
004da94c  70 40 2d e9                                      push {r4, r5, r6, lr}
004da950  08 30 90 e5                                      ldr r3, [r0, #8]
004da954  00 50 a0 e1                                      mov r5, r0
004da958  00 00 53 e3                                      cmp r3, #0
004da95c  12 00 00 0a                                      beq #0x4da9ac
004da960  04 00 13 e5                                      ldr r0, [r3, #-4]
004da964  00 02 83 e0                                      add r0, r3, r0, lsl #4
004da968  00 00 53 e1                                      cmp r3, r0
004da96c  01 00 00 1a                                      bne #0x4da978
004da970  08 00 00 ea                                      b #0x4da998
004da974  04 00 a0 e1                                      mov r0, r4
004da978  10 40 40 e2                                      sub r4, r0, #0x10
004da97c  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004da980  04 00 a0 e1                                      mov r0, r4
004da984  0f e0 a0 e1                                      mov lr, pc
004da988  00 f0 93 e5                                      ldr pc, [r3]
004da98c  08 00 95 e5                                      ldr r0, [r5, #8]
004da990  04 00 50 e1                                      cmp r0, r4
004da994  f6 ff ff 1a                                      bne #0x4da974
004da998  08 00 40 e2                                      sub r0, r0, #8
004da99c  a7 d6 f8 eb                                      bl #0x310440
004da9a0  00 30 a0 e3                                      mov r3, #0
004da9a4  04 30 85 e5                                      str r3, [r5, #4]
004da9a8  08 30 85 e5                                      str r3, [r5, #8]
004da9ac  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004da9b0, declared_size=124, range_size=124, mode=arm
; class-group: Structs::ConditionalDialog
; alias: _ZN7Structs17ConditionalDialogD1Ev
; demangled: Structs::ConditionalDialog::~ConditionalDialog()
; decoder-mode: arm
004da9b0  70 40 2d e9                                      push {r4, r5, r6, lr}
004da9b4  68 30 9f e5                                      ldr r3, [pc, #0x68]
004da9b8  68 20 9f e5                                      ldr r2, [pc, #0x68]
004da9bc  08 10 90 e5                                      ldr r1, [r0, #8]
004da9c0  03 30 8f e0                                      add r3, pc, r3
004da9c4  02 20 93 e7                                      ldr r2, [r3, r2]
004da9c8  00 00 51 e3                                      cmp r1, #0
004da9cc  00 50 a0 e1                                      mov r5, r0
004da9d0  08 20 82 e2                                      add r2, r2, #8
004da9d4  00 20 80 e5                                      str r2, [r0]
004da9d8  0f 00 00 0a                                      beq #0x4daa1c
004da9dc  04 00 11 e5                                      ldr r0, [r1, #-4]
004da9e0  00 02 81 e0                                      add r0, r1, r0, lsl #4
004da9e4  00 00 51 e1                                      cmp r1, r0
004da9e8  01 00 00 1a                                      bne #0x4da9f4
004da9ec  08 00 00 ea                                      b #0x4daa14
004da9f0  04 00 a0 e1                                      mov r0, r4
004da9f4  10 40 40 e2                                      sub r4, r0, #0x10
004da9f8  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004da9fc  04 00 a0 e1                                      mov r0, r4
004daa00  0f e0 a0 e1                                      mov lr, pc
004daa04  00 f0 93 e5                                      ldr pc, [r3]
004daa08  08 00 95 e5                                      ldr r0, [r5, #8]
004daa0c  04 00 50 e1                                      cmp r0, r4
004daa10  f6 ff ff 1a                                      bne #0x4da9f0
004daa14  08 00 40 e2                                      sub r0, r0, #8
004daa18  88 d6 f8 eb                                      bl #0x310440
004daa1c  05 00 a0 e1                                      mov r0, r5
004daa20  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004daa24  d0 a0 4b 00 34 06 00 00                          .byte 0xd0, 0xa0, 0x4b, 0x00, 0x34, 0x06, 0x00, 0x00

; FUNCTION 0x004daa2c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ConditionalDialog
; alias: _ZN7Structs17ConditionalDialogD0Ev
; demangled: Structs::ConditionalDialog::~ConditionalDialog()
; decoder-mode: arm
004daa2c  10 40 2d e9                                      push {r4, lr}
004daa30  00 40 a0 e1                                      mov r4, r0
004daa34  dd ff ff eb                                      bl #0x4da9b0
004daa38  04 00 a0 e1                                      mov r0, r4
004daa3c  7f d6 f8 eb                                      bl #0x310440
004daa40  04 00 a0 e1                                      mov r0, r4
004daa44  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004daa48, declared_size=124, range_size=124, mode=arm
; class-group: Structs::ConditionalDialog
; alias: _ZN7Structs17ConditionalDialogD2Ev
; demangled: Structs::ConditionalDialog::~ConditionalDialog()
; decoder-mode: arm
004daa48  70 40 2d e9                                      push {r4, r5, r6, lr}
004daa4c  68 30 9f e5                                      ldr r3, [pc, #0x68]
004daa50  68 20 9f e5                                      ldr r2, [pc, #0x68]
004daa54  08 10 90 e5                                      ldr r1, [r0, #8]
004daa58  03 30 8f e0                                      add r3, pc, r3
004daa5c  02 20 93 e7                                      ldr r2, [r3, r2]
004daa60  00 00 51 e3                                      cmp r1, #0
004daa64  00 50 a0 e1                                      mov r5, r0
004daa68  08 20 82 e2                                      add r2, r2, #8
004daa6c  00 20 80 e5                                      str r2, [r0]
004daa70  0f 00 00 0a                                      beq #0x4daab4
004daa74  04 00 11 e5                                      ldr r0, [r1, #-4]
004daa78  00 02 81 e0                                      add r0, r1, r0, lsl #4
004daa7c  00 00 51 e1                                      cmp r1, r0
004daa80  01 00 00 1a                                      bne #0x4daa8c
004daa84  08 00 00 ea                                      b #0x4daaac
004daa88  04 00 a0 e1                                      mov r0, r4
004daa8c  10 40 40 e2                                      sub r4, r0, #0x10
004daa90  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004daa94  04 00 a0 e1                                      mov r0, r4
004daa98  0f e0 a0 e1                                      mov lr, pc
004daa9c  00 f0 93 e5                                      ldr pc, [r3]
004daaa0  08 00 95 e5                                      ldr r0, [r5, #8]
004daaa4  04 00 50 e1                                      cmp r0, r4
004daaa8  f6 ff ff 1a                                      bne #0x4daa88
004daaac  08 00 40 e2                                      sub r0, r0, #8
004daab0  62 d6 f8 eb                                      bl #0x310440
004daab4  05 00 a0 e1                                      mov r0, r5
004daab8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004daabc  38 a0 4b 00 34 06 00 00                          .byte 0x38, 0xa0, 0x4b, 0x00, 0x34, 0x06, 0x00, 0x00

; FUNCTION 0x004dcbd4, declared_size=356, range_size=356, mode=arm
; class-group: Structs::ConditionalDialog
; alias: _ZN7Structs17ConditionalDialog4readEP11IStreamBase
; demangled: Structs::ConditionalDialog::read(IStreamBase*)
; decoder-mode: arm
004dcbd4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
004dcbd8  00 50 a0 e1                                      mov r5, r0
004dcbdc  0c d0 4d e2                                      sub sp, sp, #0xc
004dcbe0  01 00 a0 e1                                      mov r0, r1
004dcbe4  01 60 a0 e1                                      mov r6, r1
004dcbe8  40 71 9f e5                                      ldr r7, [pc, #0x140]
004dcbec  04 10 85 e2                                      add r1, r5, #4
004dcbf0  6a 09 fc eb                                      bl #0x3df1a0
004dcbf4  01 30 a0 e3                                      mov r3, #1
004dcbf8  00 00 53 e3                                      cmp r3, #0
004dcbfc  04 30 8d e5                                      str r3, [sp, #4]
004dcc00  07 70 8f e0                                      add r7, pc, r7
004dcc04  0f 00 00 1a                                      bne #0x4dcc48
004dcc08  05 30 85 e2                                      add r3, r5, #5
004dcc0c  06 20 85 e2                                      add r2, r5, #6
004dcc10  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dcc14  01 10 53 e5                                      ldrb r1, [r3, #-1]
004dcc18  02 00 53 e1                                      cmp r3, r2
004dcc1c  01 10 20 e0                                      eor r1, r0, r1
004dcc20  01 10 43 e5                                      strb r1, [r3, #-1]
004dcc24  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dcc28  00 10 21 e0                                      eor r1, r1, r0
004dcc2c  01 10 c2 e5                                      strb r1, [r2, #1]
004dcc30  01 00 53 e5                                      ldrb r0, [r3, #-1]
004dcc34  01 20 42 e2                                      sub r2, r2, #1
004dcc38  00 10 21 e0                                      eor r1, r1, r0
004dcc3c  01 10 43 e5                                      strb r1, [r3, #-1]
004dcc40  01 30 83 e2                                      add r3, r3, #1
004dcc44  f1 ff ff 3a                                      blo #0x4dcc10
004dcc48  08 30 95 e5                                      ldr r3, [r5, #8]
004dcc4c  00 00 53 e3                                      cmp r3, #0
004dcc50  0f 00 00 0a                                      beq #0x4dcc94
004dcc54  04 00 13 e5                                      ldr r0, [r3, #-4]
004dcc58  00 02 83 e0                                      add r0, r3, r0, lsl #4
004dcc5c  00 00 53 e1                                      cmp r3, r0
004dcc60  01 00 00 1a                                      bne #0x4dcc6c
004dcc64  08 00 00 ea                                      b #0x4dcc8c
004dcc68  04 00 a0 e1                                      mov r0, r4
004dcc6c  10 40 40 e2                                      sub r4, r0, #0x10
004dcc70  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004dcc74  04 00 a0 e1                                      mov r0, r4
004dcc78  0f e0 a0 e1                                      mov lr, pc
004dcc7c  00 f0 93 e5                                      ldr pc, [r3]
004dcc80  08 00 95 e5                                      ldr r0, [r5, #8]
004dcc84  04 00 50 e1                                      cmp r0, r4
004dcc88  f6 ff ff 1a                                      bne #0x4dcc68
004dcc8c  08 00 40 e2                                      sub r0, r0, #8
004dcc90  ea cd f8 eb                                      bl #0x310440
004dcc94  04 40 95 e5                                      ldr r4, [r5, #4]
004dcc98  01 10 a0 e3                                      mov r1, #1
004dcc9c  04 02 a0 e1                                      lsl r0, r4, #4
004dcca0  08 00 80 e2                                      add r0, r0, #8
004dcca4  30 ce f8 eb                                      bl #0x31056c
004dcca8  10 30 a0 e3                                      mov r3, #0x10
004dccac  00 00 54 e3                                      cmp r4, #0
004dccb0  18 00 80 e8                                      stm r0, {r3, r4}
004dccb4  08 30 80 e2                                      add r3, r0, #8
004dccb8  0a 00 00 0a                                      beq #0x4dcce8
004dccbc  70 10 9f e5                                      ldr r1, [pc, #0x70]
004dccc0  00 20 a0 e3                                      mov r2, #0
004dccc4  02 c0 a0 e1                                      mov ip, r2
004dccc8  01 10 97 e7                                      ldr r1, [r7, r1]
004dcccc  08 10 81 e2                                      add r1, r1, #8
004dccd0  01 20 82 e2                                      add r2, r2, #1
004dccd4  04 00 52 e1                                      cmp r2, r4
004dccd8  08 10 80 e5                                      str r1, [r0, #8]
004dccdc  14 c0 80 e5                                      str ip, [r0, #0x14]
004dcce0  10 00 80 e2                                      add r0, r0, #0x10
004dcce4  f9 ff ff 1a                                      bne #0x4dccd0
004dcce8  04 20 95 e5                                      ldr r2, [r5, #4]
004dccec  08 30 85 e5                                      str r3, [r5, #8]
004dccf0  00 00 52 e3                                      cmp r2, #0
004dccf4  0b 00 00 0a                                      beq #0x4dcd28
004dccf8  00 40 a0 e3                                      mov r4, #0
004dccfc  00 00 00 ea                                      b #0x4dcd04
004dcd00  08 30 95 e5                                      ldr r3, [r5, #8]
004dcd04  04 02 83 e0                                      add r0, r3, r4, lsl #4
004dcd08  06 10 a0 e1                                      mov r1, r6
004dcd0c  04 32 93 e7                                      ldr r3, [r3, r4, lsl #4]
004dcd10  0f e0 a0 e1                                      mov lr, pc
004dcd14  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004dcd18  04 30 95 e5                                      ldr r3, [r5, #4]
004dcd1c  01 40 84 e2                                      add r4, r4, #1
004dcd20  04 00 53 e1                                      cmp r3, r4
004dcd24  f5 ff ff 8a                                      bhi #0x4dcd00
004dcd28  0c d0 8d e2                                      add sp, sp, #0xc
004dcd2c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
004dcd30  90 7e 4b 00 d0 16 00 00                          .byte 0x90, 0x7e, 0x4b, 0x00, 0xd0, 0x16, 0x00, 0x00
