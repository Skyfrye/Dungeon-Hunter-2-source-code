; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c5724, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ClassFuncScaleWithPercentageForBuff
; alias: _ZN7Structs35ClassFuncScaleWithPercentageForBuffD2Ev
; demangled: Structs::ClassFuncScaleWithPercentageForBuff::~ClassFuncScaleWithPercentageForBuff()
; decoder-mode: arm
004c5724  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c5728, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ClassFuncScaleWithPercentageForBuff
; alias: _ZN7Structs35ClassFuncScaleWithPercentageForBuffD1Ev
; demangled: Structs::ClassFuncScaleWithPercentageForBuff::~ClassFuncScaleWithPercentageForBuff()
; decoder-mode: arm
004c5728  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c572c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ClassFuncScaleWithPercentageForBuff
; alias: _ZN7Structs35ClassFuncScaleWithPercentageForBuff8finalizeEv
; demangled: Structs::ClassFuncScaleWithPercentageForBuff::finalize()
; decoder-mode: arm
004c572c  1e ff 2f e1                                      bx lr

; FUNCTION 0x004ce9b0, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ClassFuncScaleWithPercentageForBuff
; alias: _ZN7Structs35ClassFuncScaleWithPercentageForBuffD0Ev
; demangled: Structs::ClassFuncScaleWithPercentageForBuff::~ClassFuncScaleWithPercentageForBuff()
; decoder-mode: arm
004ce9b0  10 40 2d e9                                      push {r4, lr}
004ce9b4  00 40 a0 e1                                      mov r4, r0
004ce9b8  5a db ff eb                                      bl #0x4c5728
004ce9bc  04 00 a0 e1                                      mov r0, r4
004ce9c0  9e 06 f9 eb                                      bl #0x310440
004ce9c4  04 00 a0 e1                                      mov r0, r4
004ce9c8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f06f4, declared_size=484, range_size=484, mode=arm
; class-group: Structs::ClassFuncScaleWithPercentageForBuff
; alias: _ZN7Structs35ClassFuncScaleWithPercentageForBuff4readEP11IStreamBase
; demangled: Structs::ClassFuncScaleWithPercentageForBuff::read(IStreamBase*)
; decoder-mode: arm
004f06f4  30 40 2d e9                                      push {r4, r5, lr}
004f06f8  00 40 a0 e1                                      mov r4, r0
004f06fc  0c d0 4d e2                                      sub sp, sp, #0xc
004f0700  01 00 a0 e1                                      mov r0, r1
004f0704  01 50 a0 e1                                      mov r5, r1
004f0708  04 10 84 e2                                      add r1, r4, #4
004f070c  5f a2 fd eb                                      bl #0x459090
004f0710  01 30 a0 e3                                      mov r3, #1
004f0714  00 00 53 e3                                      cmp r3, #0
004f0718  04 30 8d e5                                      str r3, [sp, #4]
004f071c  0f 00 00 1a                                      bne #0x4f0760
004f0720  05 30 84 e2                                      add r3, r4, #5
004f0724  06 20 84 e2                                      add r2, r4, #6
004f0728  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f072c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f0730  03 00 52 e1                                      cmp r2, r3
004f0734  01 10 20 e0                                      eor r1, r0, r1
004f0738  01 10 43 e5                                      strb r1, [r3, #-1]
004f073c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0740  00 10 21 e0                                      eor r1, r1, r0
004f0744  01 10 c2 e5                                      strb r1, [r2, #1]
004f0748  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f074c  01 20 42 e2                                      sub r2, r2, #1
004f0750  00 10 21 e0                                      eor r1, r1, r0
004f0754  01 10 43 e5                                      strb r1, [r3, #-1]
004f0758  01 30 83 e2                                      add r3, r3, #1
004f075c  f1 ff ff 8a                                      bhi #0x4f0728
004f0760  05 00 a0 e1                                      mov r0, r5
004f0764  08 10 84 e2                                      add r1, r4, #8
004f0768  48 a2 fd eb                                      bl #0x459090
004f076c  01 30 a0 e3                                      mov r3, #1
004f0770  00 00 53 e3                                      cmp r3, #0
004f0774  04 30 8d e5                                      str r3, [sp, #4]
004f0778  0f 00 00 1a                                      bne #0x4f07bc
004f077c  09 30 84 e2                                      add r3, r4, #9
004f0780  0a 20 84 e2                                      add r2, r4, #0xa
004f0784  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0788  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f078c  03 00 52 e1                                      cmp r2, r3
004f0790  01 10 20 e0                                      eor r1, r0, r1
004f0794  01 10 43 e5                                      strb r1, [r3, #-1]
004f0798  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f079c  00 10 21 e0                                      eor r1, r1, r0
004f07a0  01 10 c2 e5                                      strb r1, [r2, #1]
004f07a4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f07a8  01 20 42 e2                                      sub r2, r2, #1
004f07ac  00 10 21 e0                                      eor r1, r1, r0
004f07b0  01 10 43 e5                                      strb r1, [r3, #-1]
004f07b4  01 30 83 e2                                      add r3, r3, #1
004f07b8  f1 ff ff 8a                                      bhi #0x4f0784
004f07bc  05 00 a0 e1                                      mov r0, r5
004f07c0  0c 10 84 e2                                      add r1, r4, #0xc
004f07c4  31 a2 fd eb                                      bl #0x459090
004f07c8  01 30 a0 e3                                      mov r3, #1
004f07cc  00 00 53 e3                                      cmp r3, #0
004f07d0  04 30 8d e5                                      str r3, [sp, #4]
004f07d4  0f 00 00 1a                                      bne #0x4f0818
004f07d8  0d 30 84 e2                                      add r3, r4, #0xd
004f07dc  0e 20 84 e2                                      add r2, r4, #0xe
004f07e0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f07e4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f07e8  03 00 52 e1                                      cmp r2, r3
004f07ec  01 10 20 e0                                      eor r1, r0, r1
004f07f0  01 10 43 e5                                      strb r1, [r3, #-1]
004f07f4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f07f8  00 10 21 e0                                      eor r1, r1, r0
004f07fc  01 10 c2 e5                                      strb r1, [r2, #1]
004f0800  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f0804  01 20 42 e2                                      sub r2, r2, #1
004f0808  00 10 21 e0                                      eor r1, r1, r0
004f080c  01 10 43 e5                                      strb r1, [r3, #-1]
004f0810  01 30 83 e2                                      add r3, r3, #1
004f0814  f1 ff ff 8a                                      bhi #0x4f07e0
004f0818  05 00 a0 e1                                      mov r0, r5
004f081c  10 10 84 e2                                      add r1, r4, #0x10
004f0820  1a a2 fd eb                                      bl #0x459090
004f0824  01 30 a0 e3                                      mov r3, #1
004f0828  00 00 53 e3                                      cmp r3, #0
004f082c  04 30 8d e5                                      str r3, [sp, #4]
004f0830  0f 00 00 1a                                      bne #0x4f0874
004f0834  11 30 84 e2                                      add r3, r4, #0x11
004f0838  12 20 84 e2                                      add r2, r4, #0x12
004f083c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0840  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f0844  03 00 52 e1                                      cmp r2, r3
004f0848  01 10 20 e0                                      eor r1, r0, r1
004f084c  01 10 43 e5                                      strb r1, [r3, #-1]
004f0850  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0854  00 10 21 e0                                      eor r1, r1, r0
004f0858  01 10 c2 e5                                      strb r1, [r2, #1]
004f085c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f0860  01 20 42 e2                                      sub r2, r2, #1
004f0864  00 10 21 e0                                      eor r1, r1, r0
004f0868  01 10 43 e5                                      strb r1, [r3, #-1]
004f086c  01 30 83 e2                                      add r3, r3, #1
004f0870  f1 ff ff 8a                                      bhi #0x4f083c
004f0874  05 00 a0 e1                                      mov r0, r5
004f0878  14 10 84 e2                                      add r1, r4, #0x14
004f087c  03 a2 fd eb                                      bl #0x459090
004f0880  01 30 a0 e3                                      mov r3, #1
004f0884  00 00 53 e3                                      cmp r3, #0
004f0888  04 30 8d e5                                      str r3, [sp, #4]
004f088c  0f 00 00 1a                                      bne #0x4f08d0
004f0890  16 30 84 e2                                      add r3, r4, #0x16
004f0894  15 40 84 e2                                      add r4, r4, #0x15
004f0898  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f089c  01 20 54 e5                                      ldrb r2, [r4, #-1]
004f08a0  04 00 53 e1                                      cmp r3, r4
004f08a4  02 20 21 e0                                      eor r2, r1, r2
004f08a8  01 20 44 e5                                      strb r2, [r4, #-1]
004f08ac  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f08b0  01 20 22 e0                                      eor r2, r2, r1
004f08b4  01 20 c3 e5                                      strb r2, [r3, #1]
004f08b8  01 10 54 e5                                      ldrb r1, [r4, #-1]
004f08bc  01 30 43 e2                                      sub r3, r3, #1
004f08c0  01 20 22 e0                                      eor r2, r2, r1
004f08c4  01 20 44 e5                                      strb r2, [r4, #-1]
004f08c8  01 40 84 e2                                      add r4, r4, #1
004f08cc  f1 ff ff 8a                                      bhi #0x4f0898
004f08d0  0c d0 8d e2                                      add sp, sp, #0xc
004f08d4  30 80 bd e8                                      pop {r4, r5, pc}
