; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6bc4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::TriggerPlate
; alias: _ZN7Structs12TriggerPlateD2Ev
; demangled: Structs::TriggerPlate::~TriggerPlate()
; decoder-mode: arm
004c6bc4  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6bc8, declared_size=4, range_size=4, mode=arm
; class-group: Structs::TriggerPlate
; alias: _ZN7Structs12TriggerPlateD1Ev
; demangled: Structs::TriggerPlate::~TriggerPlate()
; decoder-mode: arm
004c6bc8  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6bcc, declared_size=4, range_size=4, mode=arm
; class-group: Structs::TriggerPlate
; alias: _ZN7Structs12TriggerPlate8finalizeEv
; demangled: Structs::TriggerPlate::finalize()
; decoder-mode: arm
004c6bcc  1e ff 2f e1                                      bx lr

; FUNCTION 0x004ce2b0, declared_size=28, range_size=28, mode=arm
; class-group: Structs::TriggerPlate
; alias: _ZN7Structs12TriggerPlateD0Ev
; demangled: Structs::TriggerPlate::~TriggerPlate()
; decoder-mode: arm
004ce2b0  10 40 2d e9                                      push {r4, lr}
004ce2b4  00 40 a0 e1                                      mov r4, r0
004ce2b8  42 e2 ff eb                                      bl #0x4c6bc8
004ce2bc  04 00 a0 e1                                      mov r0, r4
004ce2c0  5e 08 f9 eb                                      bl #0x310440
004ce2c4  04 00 a0 e1                                      mov r0, r4
004ce2c8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004ed35c, declared_size=588, range_size=588, mode=arm
; class-group: Structs::TriggerPlate
; alias: _ZN7Structs12TriggerPlate4readEP11IStreamBase
; demangled: Structs::TriggerPlate::read(IStreamBase*)
; decoder-mode: arm
004ed35c  30 40 2d e9                                      push {r4, r5, lr}
004ed360  00 40 a0 e1                                      mov r4, r0
004ed364  0c d0 4d e2                                      sub sp, sp, #0xc
004ed368  01 00 a0 e1                                      mov r0, r1
004ed36c  01 50 a0 e1                                      mov r5, r1
004ed370  04 10 84 e2                                      add r1, r4, #4
004ed374  45 af fd eb                                      bl #0x459090
004ed378  01 30 a0 e3                                      mov r3, #1
004ed37c  00 00 53 e3                                      cmp r3, #0
004ed380  04 30 8d e5                                      str r3, [sp, #4]
004ed384  0f 00 00 1a                                      bne #0x4ed3c8
004ed388  05 30 84 e2                                      add r3, r4, #5
004ed38c  06 20 84 e2                                      add r2, r4, #6
004ed390  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ed394  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ed398  02 00 53 e1                                      cmp r3, r2
004ed39c  01 10 20 e0                                      eor r1, r0, r1
004ed3a0  01 10 43 e5                                      strb r1, [r3, #-1]
004ed3a4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ed3a8  00 10 21 e0                                      eor r1, r1, r0
004ed3ac  01 10 c2 e5                                      strb r1, [r2, #1]
004ed3b0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ed3b4  01 20 42 e2                                      sub r2, r2, #1
004ed3b8  00 10 21 e0                                      eor r1, r1, r0
004ed3bc  01 10 43 e5                                      strb r1, [r3, #-1]
004ed3c0  01 30 83 e2                                      add r3, r3, #1
004ed3c4  f1 ff ff 3a                                      blo #0x4ed390
004ed3c8  08 10 84 e2                                      add r1, r4, #8
004ed3cc  05 00 a0 e1                                      mov r0, r5
004ed3d0  31 b9 ff eb                                      bl #0x4db89c
004ed3d4  05 00 a0 e1                                      mov r0, r5
004ed3d8  0c 10 84 e2                                      add r1, r4, #0xc
004ed3dc  2b af fd eb                                      bl #0x459090
004ed3e0  01 30 a0 e3                                      mov r3, #1
004ed3e4  00 00 53 e3                                      cmp r3, #0
004ed3e8  04 30 8d e5                                      str r3, [sp, #4]
004ed3ec  0f 00 00 1a                                      bne #0x4ed430
004ed3f0  0d 30 84 e2                                      add r3, r4, #0xd
004ed3f4  0e 20 84 e2                                      add r2, r4, #0xe
004ed3f8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ed3fc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ed400  02 00 53 e1                                      cmp r3, r2
004ed404  01 10 20 e0                                      eor r1, r0, r1
004ed408  01 10 43 e5                                      strb r1, [r3, #-1]
004ed40c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ed410  00 10 21 e0                                      eor r1, r1, r0
004ed414  01 10 c2 e5                                      strb r1, [r2, #1]
004ed418  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ed41c  01 20 42 e2                                      sub r2, r2, #1
004ed420  00 10 21 e0                                      eor r1, r1, r0
004ed424  01 10 43 e5                                      strb r1, [r3, #-1]
004ed428  01 30 83 e2                                      add r3, r3, #1
004ed42c  f1 ff ff 3a                                      blo #0x4ed3f8
004ed430  05 00 a0 e1                                      mov r0, r5
004ed434  10 10 84 e2                                      add r1, r4, #0x10
004ed438  14 af fd eb                                      bl #0x459090
004ed43c  01 30 a0 e3                                      mov r3, #1
004ed440  00 00 53 e3                                      cmp r3, #0
004ed444  04 30 8d e5                                      str r3, [sp, #4]
004ed448  0f 00 00 1a                                      bne #0x4ed48c
004ed44c  11 30 84 e2                                      add r3, r4, #0x11
004ed450  12 20 84 e2                                      add r2, r4, #0x12
004ed454  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ed458  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ed45c  02 00 53 e1                                      cmp r3, r2
004ed460  01 10 20 e0                                      eor r1, r0, r1
004ed464  01 10 43 e5                                      strb r1, [r3, #-1]
004ed468  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ed46c  00 10 21 e0                                      eor r1, r1, r0
004ed470  01 10 c2 e5                                      strb r1, [r2, #1]
004ed474  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ed478  01 20 42 e2                                      sub r2, r2, #1
004ed47c  00 10 21 e0                                      eor r1, r1, r0
004ed480  01 10 43 e5                                      strb r1, [r3, #-1]
004ed484  01 30 83 e2                                      add r3, r3, #1
004ed488  f1 ff ff 3a                                      blo #0x4ed454
004ed48c  05 00 a0 e1                                      mov r0, r5
004ed490  14 10 84 e2                                      add r1, r4, #0x14
004ed494  fd ae fd eb                                      bl #0x459090
004ed498  01 30 a0 e3                                      mov r3, #1
004ed49c  00 00 53 e3                                      cmp r3, #0
004ed4a0  04 30 8d e5                                      str r3, [sp, #4]
004ed4a4  0f 00 00 1a                                      bne #0x4ed4e8
004ed4a8  15 30 84 e2                                      add r3, r4, #0x15
004ed4ac  16 20 84 e2                                      add r2, r4, #0x16
004ed4b0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ed4b4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ed4b8  02 00 53 e1                                      cmp r3, r2
004ed4bc  01 10 20 e0                                      eor r1, r0, r1
004ed4c0  01 10 43 e5                                      strb r1, [r3, #-1]
004ed4c4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ed4c8  00 10 21 e0                                      eor r1, r1, r0
004ed4cc  01 10 c2 e5                                      strb r1, [r2, #1]
004ed4d0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ed4d4  01 20 42 e2                                      sub r2, r2, #1
004ed4d8  00 10 21 e0                                      eor r1, r1, r0
004ed4dc  01 10 43 e5                                      strb r1, [r3, #-1]
004ed4e0  01 30 83 e2                                      add r3, r3, #1
004ed4e4  f1 ff ff 3a                                      blo #0x4ed4b0
004ed4e8  05 00 a0 e1                                      mov r0, r5
004ed4ec  18 10 84 e2                                      add r1, r4, #0x18
004ed4f0  e6 ae fd eb                                      bl #0x459090
004ed4f4  01 30 a0 e3                                      mov r3, #1
004ed4f8  00 00 53 e3                                      cmp r3, #0
004ed4fc  04 30 8d e5                                      str r3, [sp, #4]
004ed500  0f 00 00 1a                                      bne #0x4ed544
004ed504  19 30 84 e2                                      add r3, r4, #0x19
004ed508  1a 20 84 e2                                      add r2, r4, #0x1a
004ed50c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ed510  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ed514  02 00 53 e1                                      cmp r3, r2
004ed518  01 10 20 e0                                      eor r1, r0, r1
004ed51c  01 10 43 e5                                      strb r1, [r3, #-1]
004ed520  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ed524  00 10 21 e0                                      eor r1, r1, r0
004ed528  01 10 c2 e5                                      strb r1, [r2, #1]
004ed52c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ed530  01 20 42 e2                                      sub r2, r2, #1
004ed534  00 10 21 e0                                      eor r1, r1, r0
004ed538  01 10 43 e5                                      strb r1, [r3, #-1]
004ed53c  01 30 83 e2                                      add r3, r3, #1
004ed540  f1 ff ff 3a                                      blo #0x4ed50c
004ed544  05 00 a0 e1                                      mov r0, r5
004ed548  1c 10 84 e2                                      add r1, r4, #0x1c
004ed54c  cf ae fd eb                                      bl #0x459090
004ed550  01 30 a0 e3                                      mov r3, #1
004ed554  00 00 53 e3                                      cmp r3, #0
004ed558  04 30 8d e5                                      str r3, [sp, #4]
004ed55c  0f 00 00 1a                                      bne #0x4ed5a0
004ed560  1e 30 84 e2                                      add r3, r4, #0x1e
004ed564  1d 40 84 e2                                      add r4, r4, #0x1d
004ed568  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ed56c  01 20 54 e5                                      ldrb r2, [r4, #-1]
004ed570  04 00 53 e1                                      cmp r3, r4
004ed574  02 20 21 e0                                      eor r2, r1, r2
004ed578  01 20 44 e5                                      strb r2, [r4, #-1]
004ed57c  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ed580  01 20 22 e0                                      eor r2, r2, r1
004ed584  01 20 c3 e5                                      strb r2, [r3, #1]
004ed588  01 10 54 e5                                      ldrb r1, [r4, #-1]
004ed58c  01 30 43 e2                                      sub r3, r3, #1
004ed590  01 20 22 e0                                      eor r2, r2, r1
004ed594  01 20 44 e5                                      strb r2, [r4, #-1]
004ed598  01 40 84 e2                                      add r4, r4, #1
004ed59c  f1 ff ff 8a                                      bhi #0x4ed568
004ed5a0  0c d0 8d e2                                      add sp, sp, #0xc
004ed5a4  30 80 bd e8                                      pop {r4, r5, pc}
