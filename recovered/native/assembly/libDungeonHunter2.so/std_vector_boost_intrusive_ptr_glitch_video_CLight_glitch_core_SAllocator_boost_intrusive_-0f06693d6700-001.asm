; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006ffe48, declared_size=156, range_size=156, mode=arm
; class-group: std::vector<boost::intrusive_ptr<glitch::video::CLight>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::CLight>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5video6CLightEEENS2_4core10SAllocatorIS5_LNS2_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<boost::intrusive_ptr<glitch::video::CLight>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::CLight>, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
006ffe48  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006ffe4c  04 40 90 e5                                      ldr r4, [r0, #4]
006ffe50  00 50 90 e5                                      ldr r5, [r0]
006ffe54  80 60 9f e5                                      ldr r6, [pc, #0x80]
006ffe58  00 70 a0 e1                                      mov r7, r0
006ffe5c  05 00 54 e1                                      cmp r4, r5
006ffe60  06 60 8f e0                                      add r6, pc, r6
006ffe64  16 00 00 0a                                      beq #0x6ffec4
006ffe68  70 a0 9f e5                                      ldr sl, [pc, #0x70]
006ffe6c  00 80 a0 e3                                      mov r8, #0
006ffe70  04 30 14 e5                                      ldr r3, [r4, #-4]
006ffe74  04 40 44 e2                                      sub r4, r4, #4
006ffe78  00 00 53 e3                                      cmp r3, #0
006ffe7c  03 00 a0 e1                                      mov r0, r3
006ffe80  0d 00 00 0a                                      beq #0x6ffebc
006ffe84  00 20 93 e5                                      ldr r2, [r3]
006ffe88  01 20 42 e2                                      sub r2, r2, #1
006ffe8c  00 00 52 e3                                      cmp r2, #0
006ffe90  00 20 83 e5                                      str r2, [r3]
006ffe94  08 00 00 1a                                      bne #0x6ffebc
006ffe98  54 20 d3 e5                                      ldrb r2, [r3, #0x54]
006ffe9c  00 00 52 e3                                      cmp r2, #0
006ffea0  0a 20 96 07                                      ldreq r2, [r6, sl]
006ffea4  50 10 93 05                                      ldreq r1, [r3, #0x50]
006ffea8  00 c0 92 05                                      ldreq ip, [r2]
006ffeac  00 c0 81 05                                      streq ip, [r1]
006ffeb0  00 10 82 05                                      streq r1, [r2]
006ffeb4  50 80 83 e5                                      str r8, [r3, #0x50]
006ffeb8  fc 38 f0 eb                                      bl #0x30e2b0
006ffebc  04 00 55 e1                                      cmp r5, r4
006ffec0  ea ff ff 1a                                      bne #0x6ffe70
006ffec4  00 00 97 e5                                      ldr r0, [r7]
006ffec8  00 00 50 e3                                      cmp r0, #0
006ffecc  00 00 00 0a                                      beq #0x6ffed4
006ffed0  5e 41 f0 eb                                      bl #0x310450
006ffed4  07 00 a0 e1                                      mov r0, r7
006ffed8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
006ffedc  30 4c 29 00 c0 3c 00 00                          .byte 0x30, 0x4c, 0x29, 0x00, 0xc0, 0x3c, 0x00, 0x00
