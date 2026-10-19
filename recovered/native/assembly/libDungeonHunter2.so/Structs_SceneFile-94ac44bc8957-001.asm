; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d3ab8, declared_size=40, range_size=40, mode=arm
; class-group: Structs::SceneFile
; alias: _ZN7Structs9SceneFile8finalizeEv
; demangled: Structs::SceneFile::finalize()
; decoder-mode: arm
004d3ab8  10 40 2d e9                                      push {r4, lr}
004d3abc  00 40 a0 e1                                      mov r4, r0
004d3ac0  08 00 90 e5                                      ldr r0, [r0, #8]
004d3ac4  00 00 50 e3                                      cmp r0, #0
004d3ac8  03 00 00 0a                                      beq #0x4d3adc
004d3acc  5b f2 f8 eb                                      bl #0x310440
004d3ad0  00 30 a0 e3                                      mov r3, #0
004d3ad4  04 30 84 e5                                      str r3, [r4, #4]
004d3ad8  08 30 84 e5                                      str r3, [r4, #8]
004d3adc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d3ae0, declared_size=64, range_size=64, mode=arm
; class-group: Structs::SceneFile
; alias: _ZN7Structs9SceneFileD1Ev
; demangled: Structs::SceneFile::~SceneFile()
; decoder-mode: arm
004d3ae0  10 40 2d e9                                      push {r4, lr}
004d3ae4  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004d3ae8  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004d3aec  00 40 a0 e1                                      mov r4, r0
004d3af0  03 30 8f e0                                      add r3, pc, r3
004d3af4  08 00 90 e5                                      ldr r0, [r0, #8]
004d3af8  02 20 93 e7                                      ldr r2, [r3, r2]
004d3afc  00 00 50 e3                                      cmp r0, #0
004d3b00  08 20 82 e2                                      add r2, r2, #8
004d3b04  00 20 84 e5                                      str r2, [r4]
004d3b08  00 00 00 0a                                      beq #0x4d3b10
004d3b0c  4b f2 f8 eb                                      bl #0x310440
004d3b10  04 00 a0 e1                                      mov r0, r4
004d3b14  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d3b18  a0 0f 4c 00 a8 3d 00 00                          .byte 0xa0, 0x0f, 0x4c, 0x00, 0xa8, 0x3d, 0x00, 0x00

; FUNCTION 0x004d3b20, declared_size=28, range_size=28, mode=arm
; class-group: Structs::SceneFile
; alias: _ZN7Structs9SceneFileD0Ev
; demangled: Structs::SceneFile::~SceneFile()
; decoder-mode: arm
004d3b20  10 40 2d e9                                      push {r4, lr}
004d3b24  00 40 a0 e1                                      mov r4, r0
004d3b28  ec ff ff eb                                      bl #0x4d3ae0
004d3b2c  04 00 a0 e1                                      mov r0, r4
004d3b30  42 f2 f8 eb                                      bl #0x310440
004d3b34  04 00 a0 e1                                      mov r0, r4
004d3b38  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d3b3c, declared_size=64, range_size=64, mode=arm
; class-group: Structs::SceneFile
; alias: _ZN7Structs9SceneFileD2Ev
; demangled: Structs::SceneFile::~SceneFile()
; decoder-mode: arm
004d3b3c  10 40 2d e9                                      push {r4, lr}
004d3b40  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004d3b44  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004d3b48  00 40 a0 e1                                      mov r4, r0
004d3b4c  03 30 8f e0                                      add r3, pc, r3
004d3b50  08 00 90 e5                                      ldr r0, [r0, #8]
004d3b54  02 20 93 e7                                      ldr r2, [r3, r2]
004d3b58  00 00 50 e3                                      cmp r0, #0
004d3b5c  08 20 82 e2                                      add r2, r2, #8
004d3b60  00 20 84 e5                                      str r2, [r4]
004d3b64  00 00 00 0a                                      beq #0x4d3b6c
004d3b68  34 f2 f8 eb                                      bl #0x310440
004d3b6c  04 00 a0 e1                                      mov r0, r4
004d3b70  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d3b74  44 0f 4c 00 a8 3d 00 00                          .byte 0x44, 0x0f, 0x4c, 0x00, 0xa8, 0x3d, 0x00, 0x00

; FUNCTION 0x004dd4ec, declared_size=188, range_size=188, mode=arm
; class-group: Structs::SceneFile
; alias: _ZN7Structs9SceneFile4readEP11IStreamBase
; demangled: Structs::SceneFile::read(IStreamBase*)
; decoder-mode: arm
004dd4ec  70 40 2d e9                                      push {r4, r5, r6, lr}
004dd4f0  00 40 a0 e1                                      mov r4, r0
004dd4f4  08 d0 4d e2                                      sub sp, sp, #8
004dd4f8  01 00 a0 e1                                      mov r0, r1
004dd4fc  01 60 a0 e1                                      mov r6, r1
004dd500  04 10 84 e2                                      add r1, r4, #4
004dd504  25 07 fc eb                                      bl #0x3df1a0
004dd508  01 30 a0 e3                                      mov r3, #1
004dd50c  00 00 53 e3                                      cmp r3, #0
004dd510  04 30 8d e5                                      str r3, [sp, #4]
004dd514  0f 00 00 1a                                      bne #0x4dd558
004dd518  05 30 84 e2                                      add r3, r4, #5
004dd51c  06 20 84 e2                                      add r2, r4, #6
004dd520  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dd524  01 10 53 e5                                      ldrb r1, [r3, #-1]
004dd528  02 00 53 e1                                      cmp r3, r2
004dd52c  01 10 20 e0                                      eor r1, r0, r1
004dd530  01 10 43 e5                                      strb r1, [r3, #-1]
004dd534  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dd538  00 10 21 e0                                      eor r1, r1, r0
004dd53c  01 10 c2 e5                                      strb r1, [r2, #1]
004dd540  01 00 53 e5                                      ldrb r0, [r3, #-1]
004dd544  01 20 42 e2                                      sub r2, r2, #1
004dd548  00 10 21 e0                                      eor r1, r1, r0
004dd54c  01 10 43 e5                                      strb r1, [r3, #-1]
004dd550  01 30 83 e2                                      add r3, r3, #1
004dd554  f1 ff ff 3a                                      blo #0x4dd520
004dd558  08 00 94 e5                                      ldr r0, [r4, #8]
004dd55c  00 00 50 e3                                      cmp r0, #0
004dd560  00 00 00 0a                                      beq #0x4dd568
004dd564  b5 cb f8 eb                                      bl #0x310440
004dd568  04 00 94 e5                                      ldr r0, [r4, #4]
004dd56c  01 10 a0 e3                                      mov r1, #1
004dd570  00 50 a0 e3                                      mov r5, #0
004dd574  01 00 80 e0                                      add r0, r0, r1
004dd578  fb cb f8 eb                                      bl #0x31056c
004dd57c  04 20 94 e5                                      ldr r2, [r4, #4]
004dd580  00 10 a0 e1                                      mov r1, r0
004dd584  08 00 84 e5                                      str r0, [r4, #8]
004dd588  05 30 a0 e1                                      mov r3, r5
004dd58c  06 00 a0 e1                                      mov r0, r6
004dd590  af e7 f8 eb                                      bl #0x317454
004dd594  04 30 94 e5                                      ldr r3, [r4, #4]
004dd598  08 20 94 e5                                      ldr r2, [r4, #8]
004dd59c  03 50 c2 e7                                      strb r5, [r2, r3]
004dd5a0  08 d0 8d e2                                      add sp, sp, #8
004dd5a4  70 80 bd e8                                      pop {r4, r5, r6, pc}
