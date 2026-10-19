; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6990, declared_size=4, range_size=4, mode=arm
; class-group: Structs::SimpleAnim
; alias: _ZN7Structs10SimpleAnimD2Ev
; demangled: Structs::SimpleAnim::~SimpleAnim()
; decoder-mode: arm
004c6990  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6994, declared_size=4, range_size=4, mode=arm
; class-group: Structs::SimpleAnim
; alias: _ZN7Structs10SimpleAnimD1Ev
; demangled: Structs::SimpleAnim::~SimpleAnim()
; decoder-mode: arm
004c6994  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6998, declared_size=4, range_size=4, mode=arm
; class-group: Structs::SimpleAnim
; alias: _ZN7Structs10SimpleAnim8finalizeEv
; demangled: Structs::SimpleAnim::finalize()
; decoder-mode: arm
004c6998  1e ff 2f e1                                      bx lr

; FUNCTION 0x004ce438, declared_size=28, range_size=28, mode=arm
; class-group: Structs::SimpleAnim
; alias: _ZN7Structs10SimpleAnimD0Ev
; demangled: Structs::SimpleAnim::~SimpleAnim()
; decoder-mode: arm
004ce438  10 40 2d e9                                      push {r4, lr}
004ce43c  00 40 a0 e1                                      mov r4, r0
004ce440  53 e1 ff eb                                      bl #0x4c6994
004ce444  04 00 a0 e1                                      mov r0, r4
004ce448  fc 07 f9 eb                                      bl #0x310440
004ce44c  04 00 a0 e1                                      mov r0, r4
004ce450  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004dbd6c, declared_size=208, range_size=208, mode=arm
; class-group: Structs::SimpleAnim
; alias: _ZN7Structs10SimpleAnim4readEP11IStreamBase
; demangled: Structs::SimpleAnim::read(IStreamBase*)
; decoder-mode: arm
004dbd6c  70 40 2d e9                                      push {r4, r5, r6, lr}
004dbd70  04 60 80 e2                                      add r6, r0, #4
004dbd74  08 d0 4d e2                                      sub sp, sp, #8
004dbd78  00 40 a0 e1                                      mov r4, r0
004dbd7c  01 50 a0 e1                                      mov r5, r1
004dbd80  01 00 a0 e1                                      mov r0, r1
004dbd84  06 10 a0 e1                                      mov r1, r6
004dbd88  47 ff ff eb                                      bl #0x4dbaac
004dbd8c  01 30 a0 e3                                      mov r3, #1
004dbd90  00 00 53 e3                                      cmp r3, #0
004dbd94  04 30 8d e5                                      str r3, [sp, #4]
004dbd98  0e 00 00 1a                                      bne #0x4dbdd8
004dbd9c  05 30 84 e2                                      add r3, r4, #5
004dbda0  01 10 d6 e5                                      ldrb r1, [r6, #1]
004dbda4  01 20 53 e5                                      ldrb r2, [r3, #-1]
004dbda8  06 00 53 e1                                      cmp r3, r6
004dbdac  02 20 21 e0                                      eor r2, r1, r2
004dbdb0  01 20 43 e5                                      strb r2, [r3, #-1]
004dbdb4  01 10 d6 e5                                      ldrb r1, [r6, #1]
004dbdb8  01 20 22 e0                                      eor r2, r2, r1
004dbdbc  01 20 c6 e5                                      strb r2, [r6, #1]
004dbdc0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004dbdc4  01 60 46 e2                                      sub r6, r6, #1
004dbdc8  01 20 22 e0                                      eor r2, r2, r1
004dbdcc  01 20 43 e5                                      strb r2, [r3, #-1]
004dbdd0  01 30 83 e2                                      add r3, r3, #1
004dbdd4  f1 ff ff 3a                                      blo #0x4dbda0
004dbdd8  06 60 84 e2                                      add r6, r4, #6
004dbddc  05 00 a0 e1                                      mov r0, r5
004dbde0  06 10 a0 e1                                      mov r1, r6
004dbde4  30 ff ff eb                                      bl #0x4dbaac
004dbde8  01 30 a0 e3                                      mov r3, #1
004dbdec  00 00 53 e3                                      cmp r3, #0
004dbdf0  04 30 8d e5                                      str r3, [sp, #4]
004dbdf4  0e 00 00 1a                                      bne #0x4dbe34
004dbdf8  07 40 84 e2                                      add r4, r4, #7
004dbdfc  01 20 d6 e5                                      ldrb r2, [r6, #1]
004dbe00  01 30 54 e5                                      ldrb r3, [r4, #-1]
004dbe04  04 00 56 e1                                      cmp r6, r4
004dbe08  03 30 22 e0                                      eor r3, r2, r3
004dbe0c  01 30 44 e5                                      strb r3, [r4, #-1]
004dbe10  01 20 d6 e5                                      ldrb r2, [r6, #1]
004dbe14  02 30 23 e0                                      eor r3, r3, r2
004dbe18  01 30 c6 e5                                      strb r3, [r6, #1]
004dbe1c  01 20 54 e5                                      ldrb r2, [r4, #-1]
004dbe20  01 60 46 e2                                      sub r6, r6, #1
004dbe24  02 30 23 e0                                      eor r3, r3, r2
004dbe28  01 30 44 e5                                      strb r3, [r4, #-1]
004dbe2c  01 40 84 e2                                      add r4, r4, #1
004dbe30  f1 ff ff 8a                                      bhi #0x4dbdfc
004dbe34  08 d0 8d e2                                      add sp, sp, #8
004dbe38  70 80 bd e8                                      pop {r4, r5, r6, pc}
