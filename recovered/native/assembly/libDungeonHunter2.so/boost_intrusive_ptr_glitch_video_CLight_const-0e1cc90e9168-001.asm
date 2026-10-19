; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005b9118, declared_size=112, range_size=112, mode=arm
; class-group: boost::intrusive_ptr<glitch::video::CLight const>
; alias: _ZN5boost13intrusive_ptrIKN6glitch5video6CLightEED1Ev
; demangled: boost::intrusive_ptr<glitch::video::CLight const>::~intrusive_ptr()
; decoder-mode: arm
005b9118  10 40 2d e9                                      push {r4, lr}
005b911c  00 40 a0 e1                                      mov r4, r0
005b9120  00 00 90 e5                                      ldr r0, [r0]
005b9124  54 30 9f e5                                      ldr r3, [pc, #0x54]
005b9128  00 00 50 e3                                      cmp r0, #0
005b912c  03 30 8f e0                                      add r3, pc, r3
005b9130  10 00 00 0a                                      beq #0x5b9178
005b9134  00 20 90 e5                                      ldr r2, [r0]
005b9138  01 20 42 e2                                      sub r2, r2, #1
005b913c  00 00 52 e3                                      cmp r2, #0
005b9140  00 20 80 e5                                      str r2, [r0]
005b9144  0b 00 00 1a                                      bne #0x5b9178
005b9148  54 20 d0 e5                                      ldrb r2, [r0, #0x54]
005b914c  00 00 52 e3                                      cmp r2, #0
005b9150  05 00 00 1a                                      bne #0x5b916c
005b9154  28 10 9f e5                                      ldr r1, [pc, #0x28]
005b9158  50 20 90 e5                                      ldr r2, [r0, #0x50]
005b915c  01 30 93 e7                                      ldr r3, [r3, r1]
005b9160  00 10 93 e5                                      ldr r1, [r3]
005b9164  00 10 82 e5                                      str r1, [r2]
005b9168  00 20 83 e5                                      str r2, [r3]
005b916c  00 30 a0 e3                                      mov r3, #0
005b9170  50 30 80 e5                                      str r3, [r0, #0x50]
005b9174  4d 54 f5 eb                                      bl #0x30e2b0
005b9178  04 00 a0 e1                                      mov r0, r4
005b917c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005b9180  64 b9 3d 00 c0 3c 00 00                          .byte 0x64, 0xb9, 0x3d, 0x00, 0xc0, 0x3c, 0x00, 0x00
