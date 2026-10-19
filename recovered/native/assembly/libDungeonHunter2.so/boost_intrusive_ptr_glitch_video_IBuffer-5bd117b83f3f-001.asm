; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00637b8c, declared_size=32, range_size=32, mode=arm
; class-group: boost::intrusive_ptr<glitch::video::IBuffer>
; alias: _ZN5boost13intrusive_ptrIN6glitch5video7IBufferEED1Ev
; demangled: boost::intrusive_ptr<glitch::video::IBuffer>::~intrusive_ptr()
; decoder-mode: arm
00637b8c  10 40 2d e9                                      push {r4, lr}
00637b90  00 40 a0 e1                                      mov r4, r0
00637b94  00 00 90 e5                                      ldr r0, [r0]
00637b98  00 00 50 e3                                      cmp r0, #0
00637b9c  00 00 00 0a                                      beq #0x637ba4
00637ba0  77 96 f3 eb                                      bl #0x31d584
00637ba4  04 00 a0 e1                                      mov r0, r4
00637ba8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006bc88c, declared_size=56, range_size=56, mode=arm
; class-group: boost::intrusive_ptr<glitch::video::IBuffer>
; alias: _ZN5boost13intrusive_ptrIN6glitch5video7IBufferEEaSERKS4_
; demangled: boost::intrusive_ptr<glitch::video::IBuffer>::operator=(boost::intrusive_ptr<glitch::video::IBuffer> const&)
; decoder-mode: arm
006bc88c  10 40 2d e9                                      push {r4, lr}
006bc890  00 30 91 e5                                      ldr r3, [r1]
006bc894  00 40 a0 e1                                      mov r4, r0
006bc898  00 00 53 e3                                      cmp r3, #0
006bc89c  04 20 93 15                                      ldrne r2, [r3, #4]
006bc8a0  01 20 82 12                                      addne r2, r2, #1
006bc8a4  04 20 83 15                                      strne r2, [r3, #4]
006bc8a8  00 00 90 e5                                      ldr r0, [r0]
006bc8ac  00 30 84 e5                                      str r3, [r4]
006bc8b0  00 00 50 e3                                      cmp r0, #0
006bc8b4  00 00 00 0a                                      beq #0x6bc8bc
006bc8b8  31 83 f1 eb                                      bl #0x31d584
006bc8bc  04 00 a0 e1                                      mov r0, r4
006bc8c0  10 80 bd e8                                      pop {r4, pc}
