; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0059a368, declared_size=88, range_size=88, mode=arm
; class-group: boost::intrusive_ptr<glitch::scene::IMesh>* std::vector<boost::intrusive_ptr<glitch::scene::IMesh>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IMesh>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5scene5IMeshEEENS2_4core10SAllocatorIS5_LNS2_6memory13E_MEMORY_HINTE0EEEE20_M_allocate_and_copyIPKS5_EEPS5_RjT_SH_
; demangled: boost::intrusive_ptr<glitch::scene::IMesh>* std::vector<boost::intrusive_ptr<glitch::scene::IMesh>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IMesh>, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_and_copy<boost::intrusive_ptr<glitch::scene::IMesh> const*>(unsigned int&, boost::intrusive_ptr<glitch::scene::IMesh> const*, boost::intrusive_ptr<glitch::scene::IMesh> const*)
; decoder-mode: arm
0059a368  70 40 2d e9                                      push {r4, r5, r6, lr}
0059a36c  00 00 91 e5                                      ldr r0, [r1]
0059a370  02 40 a0 e1                                      mov r4, r2
0059a374  03 50 a0 e1                                      mov r5, r3
0059a378  05 50 64 e0                                      rsb r5, r4, r5
0059a37c  00 01 a0 e1                                      lsl r0, r0, #2
0059a380  00 10 a0 e3                                      mov r1, #0
0059a384  45 51 a0 e1                                      asr r5, r5, #2
0059a388  76 d8 f5 eb                                      bl #0x310568
0059a38c  00 00 55 e3                                      cmp r5, #0
0059a390  09 00 00 da                                      ble #0x59a3bc
0059a394  00 20 a0 e3                                      mov r2, #0
0059a398  02 30 94 e7                                      ldr r3, [r4, r2]
0059a39c  00 00 53 e3                                      cmp r3, #0
0059a3a0  02 30 80 e7                                      str r3, [r0, r2]
0059a3a4  04 10 93 15                                      ldrne r1, [r3, #4]
0059a3a8  04 20 82 e2                                      add r2, r2, #4
0059a3ac  01 10 81 12                                      addne r1, r1, #1
0059a3b0  04 10 83 15                                      strne r1, [r3, #4]
0059a3b4  01 50 55 e2                                      subs r5, r5, #1
0059a3b8  f6 ff ff 1a                                      bne #0x59a398
0059a3bc  70 80 bd e8                                      pop {r4, r5, r6, pc}
