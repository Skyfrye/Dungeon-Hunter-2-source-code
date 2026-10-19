; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005aa3c8, declared_size=112, range_size=112, mode=arm
; class-group: boost::intrusive_ptr<glitch::video::CLight>
; alias: _ZN5boost13intrusive_ptrIN6glitch5video6CLightEED1Ev
; demangled: boost::intrusive_ptr<glitch::video::CLight>::~intrusive_ptr()
; decoder-mode: arm
005aa3c8  10 40 2d e9                                      push {r4, lr}
005aa3cc  00 40 a0 e1                                      mov r4, r0
005aa3d0  00 00 90 e5                                      ldr r0, [r0]
005aa3d4  54 30 9f e5                                      ldr r3, [pc, #0x54]
005aa3d8  00 00 50 e3                                      cmp r0, #0
005aa3dc  03 30 8f e0                                      add r3, pc, r3
005aa3e0  10 00 00 0a                                      beq #0x5aa428
005aa3e4  00 20 90 e5                                      ldr r2, [r0]
005aa3e8  01 20 42 e2                                      sub r2, r2, #1
005aa3ec  00 00 52 e3                                      cmp r2, #0
005aa3f0  00 20 80 e5                                      str r2, [r0]
005aa3f4  0b 00 00 1a                                      bne #0x5aa428
005aa3f8  54 20 d0 e5                                      ldrb r2, [r0, #0x54]
005aa3fc  00 00 52 e3                                      cmp r2, #0
005aa400  05 00 00 1a                                      bne #0x5aa41c
005aa404  28 10 9f e5                                      ldr r1, [pc, #0x28]
005aa408  50 20 90 e5                                      ldr r2, [r0, #0x50]
005aa40c  01 30 93 e7                                      ldr r3, [r3, r1]
005aa410  00 10 93 e5                                      ldr r1, [r3]
005aa414  00 10 82 e5                                      str r1, [r2]
005aa418  00 20 83 e5                                      str r2, [r3]
005aa41c  00 30 a0 e3                                      mov r3, #0
005aa420  50 30 80 e5                                      str r3, [r0, #0x50]
005aa424  a1 8f f5 eb                                      bl #0x30e2b0
005aa428  04 00 a0 e1                                      mov r0, r4
005aa42c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005aa430  b4 a6 3e 00 c0 3c 00 00                          .byte 0xb4, 0xa6, 0x3e, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x005bb650, declared_size=136, range_size=136, mode=arm
; class-group: boost::intrusive_ptr<glitch::video::CLight>
; alias: _ZN5boost13intrusive_ptrIN6glitch5video6CLightEEaSERKS4_
; demangled: boost::intrusive_ptr<glitch::video::CLight>::operator=(boost::intrusive_ptr<glitch::video::CLight> const&)
; decoder-mode: arm
005bb650  10 40 2d e9                                      push {r4, lr}
005bb654  00 30 91 e5                                      ldr r3, [r1]
005bb658  00 40 a0 e1                                      mov r4, r0
005bb65c  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
005bb660  00 00 53 e3                                      cmp r3, #0
005bb664  00 10 93 15                                      ldrne r1, [r3]
005bb668  02 20 8f e0                                      add r2, pc, r2
005bb66c  01 10 81 12                                      addne r1, r1, #1
005bb670  00 10 83 15                                      strne r1, [r3]
005bb674  00 00 90 e5                                      ldr r0, [r0]
005bb678  00 30 84 e5                                      str r3, [r4]
005bb67c  00 00 50 e3                                      cmp r0, #0
005bb680  10 00 00 0a                                      beq #0x5bb6c8
005bb684  00 30 90 e5                                      ldr r3, [r0]
005bb688  01 30 43 e2                                      sub r3, r3, #1
005bb68c  00 00 53 e3                                      cmp r3, #0
005bb690  00 30 80 e5                                      str r3, [r0]
005bb694  0b 00 00 1a                                      bne #0x5bb6c8
005bb698  54 30 d0 e5                                      ldrb r3, [r0, #0x54]
005bb69c  00 00 53 e3                                      cmp r3, #0
005bb6a0  05 00 00 1a                                      bne #0x5bb6bc
005bb6a4  28 30 9f e5                                      ldr r3, [pc, #0x28]
005bb6a8  50 10 90 e5                                      ldr r1, [r0, #0x50]
005bb6ac  03 30 92 e7                                      ldr r3, [r2, r3]
005bb6b0  00 20 93 e5                                      ldr r2, [r3]
005bb6b4  00 20 81 e5                                      str r2, [r1]
005bb6b8  00 10 83 e5                                      str r1, [r3]
005bb6bc  00 30 a0 e3                                      mov r3, #0
005bb6c0  50 30 80 e5                                      str r3, [r0, #0x50]
005bb6c4  f9 4a f5 eb                                      bl #0x30e2b0
005bb6c8  04 00 a0 e1                                      mov r0, r4
005bb6cc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005bb6d0  28 94 3d 00 c0 3c 00 00                          .byte 0x28, 0x94, 0x3d, 0x00, 0xc0, 0x3c, 0x00, 0x00
