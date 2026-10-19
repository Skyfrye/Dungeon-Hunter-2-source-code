; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6b88, declared_size=4, range_size=4, mode=arm
; class-group: Structs::CharEffect
; alias: _ZN7Structs10CharEffectD2Ev
; demangled: Structs::CharEffect::~CharEffect()
; decoder-mode: arm
004c6b88  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6b8c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::CharEffect
; alias: _ZN7Structs10CharEffectD1Ev
; demangled: Structs::CharEffect::~CharEffect()
; decoder-mode: arm
004c6b8c  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6b90, declared_size=4, range_size=4, mode=arm
; class-group: Structs::CharEffect
; alias: _ZN7Structs10CharEffect8finalizeEv
; demangled: Structs::CharEffect::finalize()
; decoder-mode: arm
004c6b90  1e ff 2f e1                                      bx lr

; FUNCTION 0x004ce33c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::CharEffect
; alias: _ZN7Structs10CharEffectD0Ev
; demangled: Structs::CharEffect::~CharEffect()
; decoder-mode: arm
004ce33c  10 40 2d e9                                      push {r4, lr}
004ce340  00 40 a0 e1                                      mov r4, r0
004ce344  10 e2 ff eb                                      bl #0x4c6b8c
004ce348  04 00 a0 e1                                      mov r0, r4
004ce34c  3b 08 f9 eb                                      bl #0x310440
004ce350  04 00 a0 e1                                      mov r0, r4
004ce354  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004ed5a8, declared_size=404, range_size=404, mode=arm
; class-group: Structs::CharEffect
; alias: _ZN7Structs10CharEffect4readEP11IStreamBase
; demangled: Structs::CharEffect::read(IStreamBase*)
; decoder-mode: arm
004ed5a8  30 40 2d e9                                      push {r4, r5, lr}
004ed5ac  00 40 a0 e1                                      mov r4, r0
004ed5b0  0c d0 4d e2                                      sub sp, sp, #0xc
004ed5b4  01 00 a0 e1                                      mov r0, r1
004ed5b8  01 50 a0 e1                                      mov r5, r1
004ed5bc  04 10 84 e2                                      add r1, r4, #4
004ed5c0  b2 ae fd eb                                      bl #0x459090
004ed5c4  01 30 a0 e3                                      mov r3, #1
004ed5c8  00 00 53 e3                                      cmp r3, #0
004ed5cc  04 30 8d e5                                      str r3, [sp, #4]
004ed5d0  0f 00 00 1a                                      bne #0x4ed614
004ed5d4  05 30 84 e2                                      add r3, r4, #5
004ed5d8  06 20 84 e2                                      add r2, r4, #6
004ed5dc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ed5e0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ed5e4  02 00 53 e1                                      cmp r3, r2
004ed5e8  01 10 20 e0                                      eor r1, r0, r1
004ed5ec  01 10 43 e5                                      strb r1, [r3, #-1]
004ed5f0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ed5f4  00 10 21 e0                                      eor r1, r1, r0
004ed5f8  01 10 c2 e5                                      strb r1, [r2, #1]
004ed5fc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ed600  01 20 42 e2                                      sub r2, r2, #1
004ed604  00 10 21 e0                                      eor r1, r1, r0
004ed608  01 10 43 e5                                      strb r1, [r3, #-1]
004ed60c  01 30 83 e2                                      add r3, r3, #1
004ed610  f1 ff ff 3a                                      blo #0x4ed5dc
004ed614  05 00 a0 e1                                      mov r0, r5
004ed618  08 10 84 e2                                      add r1, r4, #8
004ed61c  9b ae fd eb                                      bl #0x459090
004ed620  01 30 a0 e3                                      mov r3, #1
004ed624  00 00 53 e3                                      cmp r3, #0
004ed628  04 30 8d e5                                      str r3, [sp, #4]
004ed62c  0f 00 00 1a                                      bne #0x4ed670
004ed630  09 30 84 e2                                      add r3, r4, #9
004ed634  0a 20 84 e2                                      add r2, r4, #0xa
004ed638  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ed63c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ed640  03 00 52 e1                                      cmp r2, r3
004ed644  01 10 20 e0                                      eor r1, r0, r1
004ed648  01 10 43 e5                                      strb r1, [r3, #-1]
004ed64c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ed650  00 10 21 e0                                      eor r1, r1, r0
004ed654  01 10 c2 e5                                      strb r1, [r2, #1]
004ed658  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ed65c  01 20 42 e2                                      sub r2, r2, #1
004ed660  00 10 21 e0                                      eor r1, r1, r0
004ed664  01 10 43 e5                                      strb r1, [r3, #-1]
004ed668  01 30 83 e2                                      add r3, r3, #1
004ed66c  f1 ff ff 8a                                      bhi #0x4ed638
004ed670  05 00 a0 e1                                      mov r0, r5
004ed674  0c 10 84 e2                                      add r1, r4, #0xc
004ed678  84 ae fd eb                                      bl #0x459090
004ed67c  01 30 a0 e3                                      mov r3, #1
004ed680  00 00 53 e3                                      cmp r3, #0
004ed684  04 30 8d e5                                      str r3, [sp, #4]
004ed688  0f 00 00 1a                                      bne #0x4ed6cc
004ed68c  0d 30 84 e2                                      add r3, r4, #0xd
004ed690  0e 20 84 e2                                      add r2, r4, #0xe
004ed694  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ed698  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ed69c  02 00 53 e1                                      cmp r3, r2
004ed6a0  01 10 20 e0                                      eor r1, r0, r1
004ed6a4  01 10 43 e5                                      strb r1, [r3, #-1]
004ed6a8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ed6ac  00 10 21 e0                                      eor r1, r1, r0
004ed6b0  01 10 c2 e5                                      strb r1, [r2, #1]
004ed6b4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ed6b8  01 20 42 e2                                      sub r2, r2, #1
004ed6bc  00 10 21 e0                                      eor r1, r1, r0
004ed6c0  01 10 43 e5                                      strb r1, [r3, #-1]
004ed6c4  01 30 83 e2                                      add r3, r3, #1
004ed6c8  f1 ff ff 3a                                      blo #0x4ed694
004ed6cc  05 00 a0 e1                                      mov r0, r5
004ed6d0  10 10 84 e2                                      add r1, r4, #0x10
004ed6d4  6d ae fd eb                                      bl #0x459090
004ed6d8  01 30 a0 e3                                      mov r3, #1
004ed6dc  00 00 53 e3                                      cmp r3, #0
004ed6e0  04 30 8d e5                                      str r3, [sp, #4]
004ed6e4  0f 00 00 1a                                      bne #0x4ed728
004ed6e8  11 30 84 e2                                      add r3, r4, #0x11
004ed6ec  12 20 84 e2                                      add r2, r4, #0x12
004ed6f0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ed6f4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ed6f8  02 00 53 e1                                      cmp r3, r2
004ed6fc  01 10 20 e0                                      eor r1, r0, r1
004ed700  01 10 43 e5                                      strb r1, [r3, #-1]
004ed704  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ed708  00 10 21 e0                                      eor r1, r1, r0
004ed70c  01 10 c2 e5                                      strb r1, [r2, #1]
004ed710  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ed714  01 20 42 e2                                      sub r2, r2, #1
004ed718  00 10 21 e0                                      eor r1, r1, r0
004ed71c  01 10 43 e5                                      strb r1, [r3, #-1]
004ed720  01 30 83 e2                                      add r3, r3, #1
004ed724  f1 ff ff 3a                                      blo #0x4ed6f0
004ed728  05 00 a0 e1                                      mov r0, r5
004ed72c  14 10 84 e2                                      add r1, r4, #0x14
004ed730  59 b8 ff eb                                      bl #0x4db89c
004ed734  0c d0 8d e2                                      add sp, sp, #0xc
004ed738  30 80 bd e8                                      pop {r4, r5, pc}
