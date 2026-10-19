; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00493834, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<VisualFXManager::AnimFXStep*>
; alias: _ZNSaIPN15VisualFXManager10AnimFXStepEE11_M_allocateEjRj
; demangled: std::allocator<VisualFXManager::AnimFXStep*>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
00493834  10 40 2d e9                                      push {r4, lr}
00493838  07 01 71 e3                                      cmn r1, #0xc0000001
0049383c  08 d0 4d e2                                      sub sp, sp, #8
00493840  02 40 a0 e1                                      mov r4, r2
00493844  10 00 00 8a                                      bhi #0x49388c
00493848  00 00 51 e3                                      cmp r1, #0
0049384c  01 00 a0 01                                      moveq r0, r1
00493850  01 00 00 1a                                      bne #0x49385c
00493854  08 d0 8d e2                                      add sp, sp, #8
00493858  10 80 bd e8                                      pop {r4, pc}
0049385c  01 01 a0 e1                                      lsl r0, r1, #2
00493860  80 00 50 e3                                      cmp r0, #0x80
00493864  04 00 8d e5                                      str r0, [sp, #4]
00493868  05 00 00 8a                                      bhi #0x493884
0049386c  04 00 8d e2                                      add r0, sp, #4
00493870  92 d5 09 eb                                      bl #0x708ec0
00493874  04 30 9d e5                                      ldr r3, [sp, #4]
00493878  23 31 a0 e1                                      lsr r3, r3, #2
0049387c  00 30 84 e5                                      str r3, [r4]
00493880  f3 ff ff ea                                      b #0x493854
00493884  f2 f2 f9 eb                                      bl #0x310454
00493888  f9 ff ff ea                                      b #0x493874
0049388c  0c 00 9f e5                                      ldr r0, [pc, #0xc]
00493890  00 00 8f e0                                      add r0, pc, r0
00493894  0a ea f9 eb                                      bl #0x30e0c4
00493898  01 00 a0 e3                                      mov r0, #1
0049389c  69 e9 f9 eb                                      bl #0x30de48
; mapping-symbol data/literal pool
004938a0  e0 ab 42 00                                      .byte 0xe0, 0xab, 0x42, 0x00
