; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005aa338, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<boost::intrusive_ptr<glitch::video::IRenderTarget>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::IRenderTarget>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5video13IRenderTargetEEENS2_4core10SAllocatorIS5_LNS2_6memory13E_MEMORY_HINTE0EEEE19_M_clear_after_moveEv
; demangled: std::vector<boost::intrusive_ptr<glitch::video::IRenderTarget>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::IRenderTarget>, (glitch::memory::E_MEMORY_HINT)0> >::_M_clear_after_move()
; decoder-mode: arm
005aa338  70 40 2d e9                                      push {r4, r5, r6, lr}
005aa33c  00 60 a0 e1                                      mov r6, r0
005aa340  00 50 96 e5                                      ldr r5, [r6]
005aa344  04 00 90 e5                                      ldr r0, [r0, #4]
005aa348  05 00 50 e1                                      cmp r0, r5
005aa34c  08 00 00 0a                                      beq #0x5aa374
005aa350  00 40 a0 e1                                      mov r4, r0
005aa354  04 00 14 e5                                      ldr r0, [r4, #-4]
005aa358  04 40 44 e2                                      sub r4, r4, #4
005aa35c  00 00 50 e3                                      cmp r0, #0
005aa360  00 00 00 0a                                      beq #0x5aa368
005aa364  86 cc f5 eb                                      bl #0x31d584
005aa368  04 00 55 e1                                      cmp r5, r4
005aa36c  f8 ff ff 1a                                      bne #0x5aa354
005aa370  00 00 96 e5                                      ldr r0, [r6]
005aa374  70 40 bd e8                                      pop {r4, r5, r6, lr}
005aa378  34 98 f5 ea                                      b #0x310450

; FUNCTION 0x005aa37c, declared_size=76, range_size=76, mode=arm
; class-group: std::vector<boost::intrusive_ptr<glitch::video::IRenderTarget>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::IRenderTarget>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5video13IRenderTargetEEENS2_4core10SAllocatorIS5_LNS2_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<boost::intrusive_ptr<glitch::video::IRenderTarget>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::IRenderTarget>, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
005aa37c  70 40 2d e9                                      push {r4, r5, r6, lr}
005aa380  04 40 90 e5                                      ldr r4, [r0, #4]
005aa384  00 50 90 e5                                      ldr r5, [r0]
005aa388  00 60 a0 e1                                      mov r6, r0
005aa38c  05 00 54 e1                                      cmp r4, r5
005aa390  06 00 00 0a                                      beq #0x5aa3b0
005aa394  04 00 14 e5                                      ldr r0, [r4, #-4]
005aa398  04 40 44 e2                                      sub r4, r4, #4
005aa39c  00 00 50 e3                                      cmp r0, #0
005aa3a0  00 00 00 0a                                      beq #0x5aa3a8
005aa3a4  76 cc f5 eb                                      bl #0x31d584
005aa3a8  04 00 55 e1                                      cmp r5, r4
005aa3ac  f8 ff ff 1a                                      bne #0x5aa394
005aa3b0  00 00 96 e5                                      ldr r0, [r6]
005aa3b4  00 00 50 e3                                      cmp r0, #0
005aa3b8  00 00 00 0a                                      beq #0x5aa3c0
005aa3bc  23 98 f5 eb                                      bl #0x310450
005aa3c0  06 00 a0 e1                                      mov r0, r6
005aa3c4  70 80 bd e8                                      pop {r4, r5, r6, pc}
