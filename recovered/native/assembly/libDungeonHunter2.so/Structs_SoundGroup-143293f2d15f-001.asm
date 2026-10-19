; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d0ee0, declared_size=40, range_size=40, mode=arm
; class-group: Structs::SoundGroup
; alias: _ZN7Structs10SoundGroup8finalizeEv
; demangled: Structs::SoundGroup::finalize()
; decoder-mode: arm
004d0ee0  10 40 2d e9                                      push {r4, lr}
004d0ee4  00 40 a0 e1                                      mov r4, r0
004d0ee8  08 00 90 e5                                      ldr r0, [r0, #8]
004d0eec  00 00 50 e3                                      cmp r0, #0
004d0ef0  03 00 00 0a                                      beq #0x4d0f04
004d0ef4  51 fd f8 eb                                      bl #0x310440
004d0ef8  00 30 a0 e3                                      mov r3, #0
004d0efc  04 30 84 e5                                      str r3, [r4, #4]
004d0f00  08 30 84 e5                                      str r3, [r4, #8]
004d0f04  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d0f08, declared_size=64, range_size=64, mode=arm
; class-group: Structs::SoundGroup
; alias: _ZN7Structs10SoundGroupD1Ev
; demangled: Structs::SoundGroup::~SoundGroup()
; decoder-mode: arm
004d0f08  10 40 2d e9                                      push {r4, lr}
004d0f0c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004d0f10  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004d0f14  00 40 a0 e1                                      mov r4, r0
004d0f18  03 30 8f e0                                      add r3, pc, r3
004d0f1c  08 00 90 e5                                      ldr r0, [r0, #8]
004d0f20  02 20 93 e7                                      ldr r2, [r3, r2]
004d0f24  00 00 50 e3                                      cmp r0, #0
004d0f28  08 20 82 e2                                      add r2, r2, #8
004d0f2c  00 20 84 e5                                      str r2, [r4]
004d0f30  00 00 00 0a                                      beq #0x4d0f38
004d0f34  41 fd f8 eb                                      bl #0x310440
004d0f38  04 00 a0 e1                                      mov r0, r4
004d0f3c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d0f40  78 3b 4c 00 00 3b 00 00                          .byte 0x78, 0x3b, 0x4c, 0x00, 0x00, 0x3b, 0x00, 0x00

; FUNCTION 0x004d0f48, declared_size=28, range_size=28, mode=arm
; class-group: Structs::SoundGroup
; alias: _ZN7Structs10SoundGroupD0Ev
; demangled: Structs::SoundGroup::~SoundGroup()
; decoder-mode: arm
004d0f48  10 40 2d e9                                      push {r4, lr}
004d0f4c  00 40 a0 e1                                      mov r4, r0
004d0f50  ec ff ff eb                                      bl #0x4d0f08
004d0f54  04 00 a0 e1                                      mov r0, r4
004d0f58  38 fd f8 eb                                      bl #0x310440
004d0f5c  04 00 a0 e1                                      mov r0, r4
004d0f60  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d0f64, declared_size=64, range_size=64, mode=arm
; class-group: Structs::SoundGroup
; alias: _ZN7Structs10SoundGroupD2Ev
; demangled: Structs::SoundGroup::~SoundGroup()
; decoder-mode: arm
004d0f64  10 40 2d e9                                      push {r4, lr}
004d0f68  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004d0f6c  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004d0f70  00 40 a0 e1                                      mov r4, r0
004d0f74  03 30 8f e0                                      add r3, pc, r3
004d0f78  08 00 90 e5                                      ldr r0, [r0, #8]
004d0f7c  02 20 93 e7                                      ldr r2, [r3, r2]
004d0f80  00 00 50 e3                                      cmp r0, #0
004d0f84  08 20 82 e2                                      add r2, r2, #8
004d0f88  00 20 84 e5                                      str r2, [r4]
004d0f8c  00 00 00 0a                                      beq #0x4d0f94
004d0f90  2a fd f8 eb                                      bl #0x310440
004d0f94  04 00 a0 e1                                      mov r0, r4
004d0f98  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d0f9c  1c 3b 4c 00 00 3b 00 00                          .byte 0x1c, 0x3b, 0x4c, 0x00, 0x00, 0x3b, 0x00, 0x00

; FUNCTION 0x004eb784, declared_size=280, range_size=280, mode=arm
; class-group: Structs::SoundGroup
; alias: _ZN7Structs10SoundGroup4readEP11IStreamBase
; demangled: Structs::SoundGroup::read(IStreamBase*)
; decoder-mode: arm
004eb784  70 40 2d e9                                      push {r4, r5, r6, lr}
004eb788  00 40 a0 e1                                      mov r4, r0
004eb78c  08 d0 4d e2                                      sub sp, sp, #8
004eb790  01 00 a0 e1                                      mov r0, r1
004eb794  01 50 a0 e1                                      mov r5, r1
004eb798  04 10 84 e2                                      add r1, r4, #4
004eb79c  7f ce fb eb                                      bl #0x3df1a0
004eb7a0  01 30 a0 e3                                      mov r3, #1
004eb7a4  00 00 53 e3                                      cmp r3, #0
004eb7a8  04 30 8d e5                                      str r3, [sp, #4]
004eb7ac  0f 00 00 1a                                      bne #0x4eb7f0
004eb7b0  05 30 84 e2                                      add r3, r4, #5
004eb7b4  06 20 84 e2                                      add r2, r4, #6
004eb7b8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eb7bc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004eb7c0  02 00 53 e1                                      cmp r3, r2
004eb7c4  01 10 20 e0                                      eor r1, r0, r1
004eb7c8  01 10 43 e5                                      strb r1, [r3, #-1]
004eb7cc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eb7d0  00 10 21 e0                                      eor r1, r1, r0
004eb7d4  01 10 c2 e5                                      strb r1, [r2, #1]
004eb7d8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004eb7dc  01 20 42 e2                                      sub r2, r2, #1
004eb7e0  00 10 21 e0                                      eor r1, r1, r0
004eb7e4  01 10 43 e5                                      strb r1, [r3, #-1]
004eb7e8  01 30 83 e2                                      add r3, r3, #1
004eb7ec  f1 ff ff 3a                                      blo #0x4eb7b8
004eb7f0  08 00 94 e5                                      ldr r0, [r4, #8]
004eb7f4  00 00 50 e3                                      cmp r0, #0
004eb7f8  00 00 00 0a                                      beq #0x4eb800
004eb7fc  0f 93 f8 eb                                      bl #0x310440
004eb800  04 00 94 e5                                      ldr r0, [r4, #4]
004eb804  01 10 a0 e3                                      mov r1, #1
004eb808  00 60 a0 e3                                      mov r6, #0
004eb80c  01 00 80 e0                                      add r0, r0, r1
004eb810  55 93 f8 eb                                      bl #0x31056c
004eb814  04 20 94 e5                                      ldr r2, [r4, #4]
004eb818  00 10 a0 e1                                      mov r1, r0
004eb81c  08 00 84 e5                                      str r0, [r4, #8]
004eb820  06 30 a0 e1                                      mov r3, r6
004eb824  05 00 a0 e1                                      mov r0, r5
004eb828  09 af f8 eb                                      bl #0x317454
004eb82c  04 30 94 e5                                      ldr r3, [r4, #4]
004eb830  08 20 94 e5                                      ldr r2, [r4, #8]
004eb834  05 00 a0 e1                                      mov r0, r5
004eb838  0c 10 84 e2                                      add r1, r4, #0xc
004eb83c  03 60 c2 e7                                      strb r6, [r2, r3]
004eb840  12 b6 fd eb                                      bl #0x459090
004eb844  01 30 a0 e3                                      mov r3, #1
004eb848  06 00 53 e1                                      cmp r3, r6
004eb84c  04 30 8d e5                                      str r3, [sp, #4]
004eb850  0f 00 00 1a                                      bne #0x4eb894
004eb854  0e 30 84 e2                                      add r3, r4, #0xe
004eb858  0d 40 84 e2                                      add r4, r4, #0xd
004eb85c  01 10 d3 e5                                      ldrb r1, [r3, #1]
004eb860  01 20 54 e5                                      ldrb r2, [r4, #-1]
004eb864  03 00 54 e1                                      cmp r4, r3
004eb868  02 20 21 e0                                      eor r2, r1, r2
004eb86c  01 20 44 e5                                      strb r2, [r4, #-1]
004eb870  01 10 d3 e5                                      ldrb r1, [r3, #1]
004eb874  01 20 22 e0                                      eor r2, r2, r1
004eb878  01 20 c3 e5                                      strb r2, [r3, #1]
004eb87c  01 10 54 e5                                      ldrb r1, [r4, #-1]
004eb880  01 30 43 e2                                      sub r3, r3, #1
004eb884  01 20 22 e0                                      eor r2, r2, r1
004eb888  01 20 44 e5                                      strb r2, [r4, #-1]
004eb88c  01 40 84 e2                                      add r4, r4, #1
004eb890  f1 ff ff 3a                                      blo #0x4eb85c
004eb894  08 d0 8d e2                                      add sp, sp, #8
004eb898  70 80 bd e8                                      pop {r4, r5, r6, pc}
