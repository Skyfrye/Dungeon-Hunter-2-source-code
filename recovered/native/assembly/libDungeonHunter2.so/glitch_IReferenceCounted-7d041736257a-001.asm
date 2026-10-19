; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031d580, declared_size=4, range_size=4, mode=arm
; class-group: glitch::IReferenceCounted
; alias: _ZN6glitch17IReferenceCountedD1Ev
; demangled: glitch::IReferenceCounted::~IReferenceCounted()
; decoder-mode: arm
0031d580  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d584, declared_size=72, range_size=72, mode=arm
; class-group: glitch::IReferenceCounted
; alias: _ZNK6glitch17IReferenceCounted4dropEv
; demangled: glitch::IReferenceCounted::drop() const
; decoder-mode: arm
0031d584  10 40 2d e9                                      push {r4, lr}
0031d588  04 30 90 e5                                      ldr r3, [r0, #4]
0031d58c  00 40 a0 e1                                      mov r4, r0
0031d590  01 30 43 e2                                      sub r3, r3, #1
0031d594  00 00 53 e3                                      cmp r3, #0
0031d598  04 30 80 e5                                      str r3, [r0, #4]
0031d59c  01 00 00 0a                                      beq #0x31d5a8
0031d5a0  00 00 a0 e3                                      mov r0, #0
0031d5a4  10 80 bd e8                                      pop {r4, pc}
0031d5a8  00 30 90 e5                                      ldr r3, [r0]
0031d5ac  0f e0 a0 e1                                      mov lr, pc
0031d5b0  08 f0 93 e5                                      ldr pc, [r3, #8]
0031d5b4  04 00 a0 e1                                      mov r0, r4
0031d5b8  00 30 94 e5                                      ldr r3, [r4]
0031d5bc  0f e0 a0 e1                                      mov lr, pc
0031d5c0  04 f0 93 e5                                      ldr pc, [r3, #4]
0031d5c4  01 00 a0 e3                                      mov r0, #1
0031d5c8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0031d5cc, declared_size=4, range_size=4, mode=arm
; class-group: glitch::IReferenceCounted
; alias: _ZN6glitch17IReferenceCounted8onDeleteEv
; demangled: glitch::IReferenceCounted::onDelete()
; decoder-mode: arm
0031d5cc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031fd58, declared_size=52, range_size=52, mode=arm
; class-group: glitch::IReferenceCounted
; alias: _ZN6glitch17IReferenceCountedD0Ev
; demangled: glitch::IReferenceCounted::~IReferenceCounted()
; decoder-mode: arm
0031fd58  24 30 9f e5                                      ldr r3, [pc, #0x24]
0031fd5c  24 20 9f e5                                      ldr r2, [pc, #0x24]
0031fd60  10 40 2d e9                                      push {r4, lr}
0031fd64  03 30 8f e0                                      add r3, pc, r3
0031fd68  02 20 93 e7                                      ldr r2, [r3, r2]
0031fd6c  00 40 a0 e1                                      mov r4, r0
0031fd70  08 20 82 e2                                      add r2, r2, #8
0031fd74  00 20 80 e5                                      str r2, [r0]
0031fd78  b0 c1 ff eb                                      bl #0x310440
0031fd7c  04 00 a0 e1                                      mov r0, r4
0031fd80  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0031fd84  2c 4d 67 00 44 2b 00 00                          .byte 0x2c, 0x4d, 0x67, 0x00, 0x44, 0x2b, 0x00, 0x00
