; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005aefb4, declared_size=124, range_size=124, mode=arm
; class-group: glitch::video::detail::SMapBufferBase<glitch::video::E_BUFFER_READ_MAP_ACCESS, (glitch::video::E_BUFFER_READ_MAP_ACCESS)1>
; alias: _ZN6glitch5video6detail14SMapBufferBaseINS0_24E_BUFFER_READ_MAP_ACCESSELS3_1EED2Ev
; demangled: glitch::video::detail::SMapBufferBase<glitch::video::E_BUFFER_READ_MAP_ACCESS, (glitch::video::E_BUFFER_READ_MAP_ACCESS)1>::~SMapBufferBase()
; decoder-mode: arm
005aefb4  70 40 2d e9                                      push {r4, r5, r6, lr}
005aefb8  04 30 90 e5                                      ldr r3, [r0, #4]
005aefbc  00 40 a0 e1                                      mov r4, r0
005aefc0  00 00 53 e3                                      cmp r3, #0
005aefc4  08 00 00 0a                                      beq #0x5aefec
005aefc8  00 50 90 e5                                      ldr r5, [r0]
005aefcc  13 30 d5 e5                                      ldrb r3, [r5, #0x13]
005aefd0  1f 20 03 e2                                      and r2, r3, #0x1f
005aefd4  01 00 52 e3                                      cmp r2, #1
005aefd8  09 00 00 9a                                      bls #0x5af004
005aefdc  01 20 42 e2                                      sub r2, r2, #1
005aefe0  1f 30 c3 e3                                      bic r3, r3, #0x1f
005aefe4  03 30 82 e1                                      orr r3, r2, r3
005aefe8  13 30 c5 e5                                      strb r3, [r5, #0x13]
005aefec  00 00 94 e5                                      ldr r0, [r4]
005aeff0  00 00 50 e3                                      cmp r0, #0
005aeff4  00 00 00 0a                                      beq #0x5aeffc
005aeff8  61 b9 f5 eb                                      bl #0x31d584
005aeffc  04 00 a0 e1                                      mov r0, r4
005af000  70 80 bd e8                                      pop {r4, r5, r6, pc}
005af004  12 30 d5 e5                                      ldrb r3, [r5, #0x12]
005af008  20 00 13 e3                                      tst r3, #0x20
005af00c  02 00 00 1a                                      bne #0x5af01c
005af010  00 30 a0 e3                                      mov r3, #0
005af014  13 30 c5 e5                                      strb r3, [r5, #0x13]
005af018  f3 ff ff ea                                      b #0x5aefec
005af01c  00 30 95 e5                                      ldr r3, [r5]
005af020  05 00 a0 e1                                      mov r0, r5
005af024  0f e0 a0 e1                                      mov lr, pc
005af028  18 f0 93 e5                                      ldr pc, [r3, #0x18]
005af02c  f7 ff ff ea                                      b #0x5af010
