; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00645098, declared_size=168, range_size=168, mode=arm
; class-group: glitch::collada::CMesh::SBuffer* std::vector<glitch::collada::CMesh::SBuffer, glitch::core::SAllocator<glitch::collada::CMesh::SBuffer, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada5CMesh7SBufferENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_allocate_and_copyIPS3_EESB_RjT_SD_
; demangled: glitch::collada::CMesh::SBuffer* std::vector<glitch::collada::CMesh::SBuffer, glitch::core::SAllocator<glitch::collada::CMesh::SBuffer, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_and_copy<glitch::collada::CMesh::SBuffer*>(unsigned int&, glitch::collada::CMesh::SBuffer*, glitch::collada::CMesh::SBuffer*)
; decoder-mode: arm
00645098  70 40 2d e9                                      push {r4, r5, r6, lr}
0064509c  00 10 91 e5                                      ldr r1, [r1]
006450a0  03 50 a0 e1                                      mov r5, r3
006450a4  02 40 a0 e1                                      mov r4, r2
006450a8  0c 00 a0 e3                                      mov r0, #0xc
006450ac  90 01 00 e0                                      mul r0, r0, r1
006450b0  05 50 64 e0                                      rsb r5, r4, r5
006450b4  00 10 a0 e3                                      mov r1, #0
006450b8  2a 2d f3 eb                                      bl #0x310568
006450bc  45 31 a0 e1                                      asr r3, r5, #2
006450c0  03 51 83 e0                                      add r5, r3, r3, lsl #2
006450c4  05 52 85 e0                                      add r5, r5, r5, lsl #4
006450c8  05 54 85 e0                                      add r5, r5, r5, lsl #8
006450cc  05 58 85 e0                                      add r5, r5, r5, lsl #16
006450d0  85 50 83 e0                                      add r5, r3, r5, lsl #1
006450d4  00 00 55 e3                                      cmp r5, #0
006450d8  17 00 00 da                                      ble #0x64513c
006450dc  00 30 a0 e1                                      mov r3, r0
006450e0  00 00 00 ea                                      b #0x6450e8
006450e4  0c 30 83 e2                                      add r3, r3, #0xc
006450e8  00 20 94 e5                                      ldr r2, [r4]
006450ec  00 20 83 e5                                      str r2, [r3]
006450f0  00 00 52 e3                                      cmp r2, #0
006450f4  04 10 92 15                                      ldrne r1, [r2, #4]
006450f8  01 10 81 12                                      addne r1, r1, #1
006450fc  04 10 82 15                                      strne r1, [r2, #4]
00645100  04 20 94 e5                                      ldr r2, [r4, #4]
00645104  00 00 52 e3                                      cmp r2, #0
00645108  04 20 83 e5                                      str r2, [r3, #4]
0064510c  00 10 92 15                                      ldrne r1, [r2]
00645110  01 10 81 12                                      addne r1, r1, #1
00645114  00 10 82 15                                      strne r1, [r2]
00645118  08 20 94 e5                                      ldr r2, [r4, #8]
0064511c  0c 40 84 e2                                      add r4, r4, #0xc
00645120  00 00 52 e3                                      cmp r2, #0
00645124  08 20 83 e5                                      str r2, [r3, #8]
00645128  00 10 92 15                                      ldrne r1, [r2]
0064512c  01 10 81 12                                      addne r1, r1, #1
00645130  00 10 82 15                                      strne r1, [r2]
00645134  01 50 55 e2                                      subs r5, r5, #1
00645138  e9 ff ff 1a                                      bne #0x6450e4
0064513c  70 80 bd e8                                      pop {r4, r5, r6, pc}
