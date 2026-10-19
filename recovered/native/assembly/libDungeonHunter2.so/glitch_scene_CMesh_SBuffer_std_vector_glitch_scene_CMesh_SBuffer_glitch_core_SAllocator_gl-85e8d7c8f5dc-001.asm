; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006bbf08, declared_size=168, range_size=168, mode=arm
; class-group: glitch::scene::CMesh::SBuffer* std::vector<glitch::scene::CMesh::SBuffer, glitch::core::SAllocator<glitch::scene::CMesh::SBuffer, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene5CMesh7SBufferENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_allocate_and_copyIPKS3_EEPS3_RjT_SF_
; demangled: glitch::scene::CMesh::SBuffer* std::vector<glitch::scene::CMesh::SBuffer, glitch::core::SAllocator<glitch::scene::CMesh::SBuffer, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_and_copy<glitch::scene::CMesh::SBuffer const*>(unsigned int&, glitch::scene::CMesh::SBuffer const*, glitch::scene::CMesh::SBuffer const*)
; decoder-mode: arm
006bbf08  70 40 2d e9                                      push {r4, r5, r6, lr}
006bbf0c  00 10 91 e5                                      ldr r1, [r1]
006bbf10  03 50 a0 e1                                      mov r5, r3
006bbf14  02 40 a0 e1                                      mov r4, r2
006bbf18  0c 00 a0 e3                                      mov r0, #0xc
006bbf1c  90 01 00 e0                                      mul r0, r0, r1
006bbf20  05 50 64 e0                                      rsb r5, r4, r5
006bbf24  00 10 a0 e3                                      mov r1, #0
006bbf28  8e 51 f1 eb                                      bl #0x310568
006bbf2c  45 31 a0 e1                                      asr r3, r5, #2
006bbf30  03 51 83 e0                                      add r5, r3, r3, lsl #2
006bbf34  05 52 85 e0                                      add r5, r5, r5, lsl #4
006bbf38  05 54 85 e0                                      add r5, r5, r5, lsl #8
006bbf3c  05 58 85 e0                                      add r5, r5, r5, lsl #16
006bbf40  85 50 83 e0                                      add r5, r3, r5, lsl #1
006bbf44  00 00 55 e3                                      cmp r5, #0
006bbf48  17 00 00 da                                      ble #0x6bbfac
006bbf4c  00 30 a0 e1                                      mov r3, r0
006bbf50  00 00 00 ea                                      b #0x6bbf58
006bbf54  0c 30 83 e2                                      add r3, r3, #0xc
006bbf58  00 20 94 e5                                      ldr r2, [r4]
006bbf5c  00 20 83 e5                                      str r2, [r3]
006bbf60  00 00 52 e3                                      cmp r2, #0
006bbf64  04 10 92 15                                      ldrne r1, [r2, #4]
006bbf68  01 10 81 12                                      addne r1, r1, #1
006bbf6c  04 10 82 15                                      strne r1, [r2, #4]
006bbf70  04 20 94 e5                                      ldr r2, [r4, #4]
006bbf74  00 00 52 e3                                      cmp r2, #0
006bbf78  04 20 83 e5                                      str r2, [r3, #4]
006bbf7c  00 10 92 15                                      ldrne r1, [r2]
006bbf80  01 10 81 12                                      addne r1, r1, #1
006bbf84  00 10 82 15                                      strne r1, [r2]
006bbf88  08 20 94 e5                                      ldr r2, [r4, #8]
006bbf8c  0c 40 84 e2                                      add r4, r4, #0xc
006bbf90  00 00 52 e3                                      cmp r2, #0
006bbf94  08 20 83 e5                                      str r2, [r3, #8]
006bbf98  00 10 92 15                                      ldrne r1, [r2]
006bbf9c  01 10 81 12                                      addne r1, r1, #1
006bbfa0  00 10 82 15                                      strne r1, [r2]
006bbfa4  01 50 55 e2                                      subs r5, r5, #1
006bbfa8  e9 ff ff 1a                                      bne #0x6bbf54
006bbfac  70 80 bd e8                                      pop {r4, r5, r6, pc}
