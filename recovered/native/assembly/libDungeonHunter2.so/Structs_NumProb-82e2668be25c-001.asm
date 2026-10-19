; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6c18, declared_size=4, range_size=4, mode=arm
; class-group: Structs::NumProb
; alias: _ZN7Structs7NumProbD2Ev
; demangled: Structs::NumProb::~NumProb()
; decoder-mode: arm
004c6c18  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6c1c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::NumProb
; alias: _ZN7Structs7NumProbD1Ev
; demangled: Structs::NumProb::~NumProb()
; decoder-mode: arm
004c6c1c  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6c20, declared_size=4, range_size=4, mode=arm
; class-group: Structs::NumProb
; alias: _ZN7Structs7NumProb8finalizeEv
; demangled: Structs::NumProb::finalize()
; decoder-mode: arm
004c6c20  1e ff 2f e1                                      bx lr

; FUNCTION 0x004ce1ec, declared_size=28, range_size=28, mode=arm
; class-group: Structs::NumProb
; alias: _ZN7Structs7NumProbD0Ev
; demangled: Structs::NumProb::~NumProb()
; decoder-mode: arm
004ce1ec  10 40 2d e9                                      push {r4, lr}
004ce1f0  00 40 a0 e1                                      mov r4, r0
004ce1f4  88 e2 ff eb                                      bl #0x4c6c1c
004ce1f8  04 00 a0 e1                                      mov r0, r4
004ce1fc  8f 08 f9 eb                                      bl #0x310440
004ce200  04 00 a0 e1                                      mov r0, r4
004ce204  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004dbc9c, declared_size=208, range_size=208, mode=arm
; class-group: Structs::NumProb
; alias: _ZN7Structs7NumProb4readEP11IStreamBase
; demangled: Structs::NumProb::read(IStreamBase*)
; decoder-mode: arm
004dbc9c  70 40 2d e9                                      push {r4, r5, r6, lr}
004dbca0  04 60 80 e2                                      add r6, r0, #4
004dbca4  08 d0 4d e2                                      sub sp, sp, #8
004dbca8  00 40 a0 e1                                      mov r4, r0
004dbcac  01 50 a0 e1                                      mov r5, r1
004dbcb0  01 00 a0 e1                                      mov r0, r1
004dbcb4  06 10 a0 e1                                      mov r1, r6
004dbcb8  7b ff ff eb                                      bl #0x4dbaac
004dbcbc  01 30 a0 e3                                      mov r3, #1
004dbcc0  00 00 53 e3                                      cmp r3, #0
004dbcc4  04 30 8d e5                                      str r3, [sp, #4]
004dbcc8  0e 00 00 1a                                      bne #0x4dbd08
004dbccc  05 30 84 e2                                      add r3, r4, #5
004dbcd0  01 10 d6 e5                                      ldrb r1, [r6, #1]
004dbcd4  01 20 53 e5                                      ldrb r2, [r3, #-1]
004dbcd8  06 00 53 e1                                      cmp r3, r6
004dbcdc  02 20 21 e0                                      eor r2, r1, r2
004dbce0  01 20 43 e5                                      strb r2, [r3, #-1]
004dbce4  01 10 d6 e5                                      ldrb r1, [r6, #1]
004dbce8  01 20 22 e0                                      eor r2, r2, r1
004dbcec  01 20 c6 e5                                      strb r2, [r6, #1]
004dbcf0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004dbcf4  01 60 46 e2                                      sub r6, r6, #1
004dbcf8  01 20 22 e0                                      eor r2, r2, r1
004dbcfc  01 20 43 e5                                      strb r2, [r3, #-1]
004dbd00  01 30 83 e2                                      add r3, r3, #1
004dbd04  f1 ff ff 3a                                      blo #0x4dbcd0
004dbd08  06 60 84 e2                                      add r6, r4, #6
004dbd0c  05 00 a0 e1                                      mov r0, r5
004dbd10  06 10 a0 e1                                      mov r1, r6
004dbd14  64 ff ff eb                                      bl #0x4dbaac
004dbd18  01 30 a0 e3                                      mov r3, #1
004dbd1c  00 00 53 e3                                      cmp r3, #0
004dbd20  04 30 8d e5                                      str r3, [sp, #4]
004dbd24  0e 00 00 1a                                      bne #0x4dbd64
004dbd28  07 40 84 e2                                      add r4, r4, #7
004dbd2c  01 20 d6 e5                                      ldrb r2, [r6, #1]
004dbd30  01 30 54 e5                                      ldrb r3, [r4, #-1]
004dbd34  04 00 56 e1                                      cmp r6, r4
004dbd38  03 30 22 e0                                      eor r3, r2, r3
004dbd3c  01 30 44 e5                                      strb r3, [r4, #-1]
004dbd40  01 20 d6 e5                                      ldrb r2, [r6, #1]
004dbd44  02 30 23 e0                                      eor r3, r3, r2
004dbd48  01 30 c6 e5                                      strb r3, [r6, #1]
004dbd4c  01 20 54 e5                                      ldrb r2, [r4, #-1]
004dbd50  01 60 46 e2                                      sub r6, r6, #1
004dbd54  02 30 23 e0                                      eor r3, r3, r2
004dbd58  01 30 44 e5                                      strb r3, [r4, #-1]
004dbd5c  01 40 84 e2                                      add r4, r4, #1
004dbd60  f1 ff ff 8a                                      bhi #0x4dbd2c
004dbd64  08 d0 8d e2                                      add sp, sp, #8
004dbd68  70 80 bd e8                                      pop {r4, r5, r6, pc}
