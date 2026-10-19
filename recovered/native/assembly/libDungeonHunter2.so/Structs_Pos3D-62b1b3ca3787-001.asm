; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6c54, declared_size=4, range_size=4, mode=arm
; class-group: Structs::Pos3D
; alias: _ZN7Structs5Pos3DD2Ev
; demangled: Structs::Pos3D::~Pos3D()
; decoder-mode: arm
004c6c54  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6c58, declared_size=4, range_size=4, mode=arm
; class-group: Structs::Pos3D
; alias: _ZN7Structs5Pos3DD1Ev
; demangled: Structs::Pos3D::~Pos3D()
; decoder-mode: arm
004c6c58  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6c5c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::Pos3D
; alias: _ZN7Structs5Pos3D8finalizeEv
; demangled: Structs::Pos3D::finalize()
; decoder-mode: arm
004c6c5c  1e ff 2f e1                                      bx lr

; FUNCTION 0x004ce160, declared_size=28, range_size=28, mode=arm
; class-group: Structs::Pos3D
; alias: _ZN7Structs5Pos3DD0Ev
; demangled: Structs::Pos3D::~Pos3D()
; decoder-mode: arm
004ce160  10 40 2d e9                                      push {r4, lr}
004ce164  00 40 a0 e1                                      mov r4, r0
004ce168  ba e2 ff eb                                      bl #0x4c6c58
004ce16c  04 00 a0 e1                                      mov r0, r4
004ce170  b2 08 f9 eb                                      bl #0x310440
004ce174  04 00 a0 e1                                      mov r0, r4
004ce178  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004ff4d8, declared_size=300, range_size=300, mode=arm
; class-group: Structs::Pos3D
; alias: _ZN7Structs5Pos3D4readEP11IStreamBase
; demangled: Structs::Pos3D::read(IStreamBase*)
; decoder-mode: arm
004ff4d8  30 40 2d e9                                      push {r4, r5, lr}
004ff4dc  00 40 a0 e1                                      mov r4, r0
004ff4e0  0c d0 4d e2                                      sub sp, sp, #0xc
004ff4e4  01 00 a0 e1                                      mov r0, r1
004ff4e8  01 50 a0 e1                                      mov r5, r1
004ff4ec  04 10 84 e2                                      add r1, r4, #4
004ff4f0  e6 66 fd eb                                      bl #0x459090
004ff4f4  01 30 a0 e3                                      mov r3, #1
004ff4f8  00 00 53 e3                                      cmp r3, #0
004ff4fc  04 30 8d e5                                      str r3, [sp, #4]
004ff500  0f 00 00 1a                                      bne #0x4ff544
004ff504  05 30 84 e2                                      add r3, r4, #5
004ff508  06 20 84 e2                                      add r2, r4, #6
004ff50c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ff510  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ff514  02 00 53 e1                                      cmp r3, r2
004ff518  01 10 20 e0                                      eor r1, r0, r1
004ff51c  01 10 43 e5                                      strb r1, [r3, #-1]
004ff520  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ff524  00 10 21 e0                                      eor r1, r1, r0
004ff528  01 10 c2 e5                                      strb r1, [r2, #1]
004ff52c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ff530  01 20 42 e2                                      sub r2, r2, #1
004ff534  00 10 21 e0                                      eor r1, r1, r0
004ff538  01 10 43 e5                                      strb r1, [r3, #-1]
004ff53c  01 30 83 e2                                      add r3, r3, #1
004ff540  f1 ff ff 3a                                      blo #0x4ff50c
004ff544  05 00 a0 e1                                      mov r0, r5
004ff548  08 10 84 e2                                      add r1, r4, #8
004ff54c  cf 66 fd eb                                      bl #0x459090
004ff550  01 30 a0 e3                                      mov r3, #1
004ff554  00 00 53 e3                                      cmp r3, #0
004ff558  04 30 8d e5                                      str r3, [sp, #4]
004ff55c  0f 00 00 1a                                      bne #0x4ff5a0
004ff560  09 30 84 e2                                      add r3, r4, #9
004ff564  0a 20 84 e2                                      add r2, r4, #0xa
004ff568  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ff56c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ff570  03 00 52 e1                                      cmp r2, r3
004ff574  01 10 20 e0                                      eor r1, r0, r1
004ff578  01 10 43 e5                                      strb r1, [r3, #-1]
004ff57c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ff580  00 10 21 e0                                      eor r1, r1, r0
004ff584  01 10 c2 e5                                      strb r1, [r2, #1]
004ff588  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ff58c  01 20 42 e2                                      sub r2, r2, #1
004ff590  00 10 21 e0                                      eor r1, r1, r0
004ff594  01 10 43 e5                                      strb r1, [r3, #-1]
004ff598  01 30 83 e2                                      add r3, r3, #1
004ff59c  f1 ff ff 8a                                      bhi #0x4ff568
004ff5a0  05 00 a0 e1                                      mov r0, r5
004ff5a4  0c 10 84 e2                                      add r1, r4, #0xc
004ff5a8  b8 66 fd eb                                      bl #0x459090
004ff5ac  01 30 a0 e3                                      mov r3, #1
004ff5b0  00 00 53 e3                                      cmp r3, #0
004ff5b4  04 30 8d e5                                      str r3, [sp, #4]
004ff5b8  0f 00 00 1a                                      bne #0x4ff5fc
004ff5bc  0e 30 84 e2                                      add r3, r4, #0xe
004ff5c0  0d 40 84 e2                                      add r4, r4, #0xd
004ff5c4  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ff5c8  01 20 54 e5                                      ldrb r2, [r4, #-1]
004ff5cc  03 00 54 e1                                      cmp r4, r3
004ff5d0  02 20 21 e0                                      eor r2, r1, r2
004ff5d4  01 20 44 e5                                      strb r2, [r4, #-1]
004ff5d8  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ff5dc  01 20 22 e0                                      eor r2, r2, r1
004ff5e0  01 20 c3 e5                                      strb r2, [r3, #1]
004ff5e4  01 10 54 e5                                      ldrb r1, [r4, #-1]
004ff5e8  01 30 43 e2                                      sub r3, r3, #1
004ff5ec  01 20 22 e0                                      eor r2, r2, r1
004ff5f0  01 20 44 e5                                      strb r2, [r4, #-1]
004ff5f4  01 40 84 e2                                      add r4, r4, #1
004ff5f8  f1 ff ff 3a                                      blo #0x4ff5c4
004ff5fc  0c d0 8d e2                                      add sp, sp, #0xc
004ff600  30 80 bd e8                                      pop {r4, r5, pc}
