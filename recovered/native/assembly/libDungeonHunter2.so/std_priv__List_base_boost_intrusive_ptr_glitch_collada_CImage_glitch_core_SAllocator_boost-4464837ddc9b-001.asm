; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0065b03c, declared_size=80, range_size=80, mode=arm
; class-group: std::priv::_List_base<boost::intrusive_ptr<glitch::collada::CImage>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::collada::CImage>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv10_List_baseIN5boost13intrusive_ptrIN6glitch7collada6CImageEEENS3_4core10SAllocatorIS6_LNS3_6memory13E_MEMORY_HINTE0EEEE5clearEv
; demangled: std::priv::_List_base<boost::intrusive_ptr<glitch::collada::CImage>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::collada::CImage>, (glitch::memory::E_MEMORY_HINT)0> >::clear()
; decoder-mode: arm
0065b03c  70 40 2d e9                                      push {r4, r5, r6, lr}
0065b040  00 40 90 e5                                      ldr r4, [r0]
0065b044  00 60 a0 e1                                      mov r6, r0
0065b048  00 00 54 e1                                      cmp r4, r0
0065b04c  01 00 00 1a                                      bne #0x65b058
0065b050  0a 00 00 ea                                      b #0x65b080
0065b054  05 40 a0 e1                                      mov r4, r5
0065b058  08 00 94 e5                                      ldr r0, [r4, #8]
0065b05c  00 50 94 e5                                      ldr r5, [r4]
0065b060  00 00 50 e3                                      cmp r0, #0
0065b064  00 00 00 0a                                      beq #0x65b06c
0065b068  45 09 f3 eb                                      bl #0x31d584
0065b06c  04 00 a0 e1                                      mov r0, r4
0065b070  f6 d4 f2 eb                                      bl #0x310450
0065b074  06 00 55 e1                                      cmp r5, r6
0065b078  f5 ff ff 1a                                      bne #0x65b054
0065b07c  06 40 a0 e1                                      mov r4, r6
0065b080  04 40 86 e5                                      str r4, [r6, #4]
0065b084  00 40 86 e5                                      str r4, [r6]
0065b088  70 80 bd e8                                      pop {r4, r5, r6, pc}
