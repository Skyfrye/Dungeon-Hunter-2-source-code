; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00644cb8, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<glitch::collada::CMesh::SBuffer, glitch::core::SAllocator<glitch::collada::CMesh::SBuffer, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada5CMesh7SBufferENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<glitch::collada::CMesh::SBuffer, glitch::core::SAllocator<glitch::collada::CMesh::SBuffer, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
00644cb8  70 40 2d e9                                      push {r4, r5, r6, lr}
00644cbc  04 40 90 e5                                      ldr r4, [r0, #4]
00644cc0  00 50 90 e5                                      ldr r5, [r0]
00644cc4  00 60 a0 e1                                      mov r6, r0
00644cc8  05 00 54 e1                                      cmp r4, r5
00644ccc  04 00 00 0a                                      beq #0x644ce4
00644cd0  0c 40 44 e2                                      sub r4, r4, #0xc
00644cd4  04 00 a0 e1                                      mov r0, r4
00644cd8  ea ff ff eb                                      bl #0x644c88
00644cdc  04 00 55 e1                                      cmp r5, r4
00644ce0  fa ff ff 1a                                      bne #0x644cd0
00644ce4  00 00 96 e5                                      ldr r0, [r6]
00644ce8  00 00 50 e3                                      cmp r0, #0
00644cec  00 00 00 0a                                      beq #0x644cf4
00644cf0  d6 2d f3 eb                                      bl #0x310450
00644cf4  06 00 a0 e1                                      mov r0, r6
00644cf8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00644db8, declared_size=256, range_size=256, mode=arm
; class-group: std::vector<glitch::collada::CMesh::SBuffer, glitch::core::SAllocator<glitch::collada::CMesh::SBuffer, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada5CMesh7SBufferENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEEC1ERKS9_
; demangled: std::vector<glitch::collada::CMesh::SBuffer, glitch::core::SAllocator<glitch::collada::CMesh::SBuffer, (glitch::memory::E_MEMORY_HINT)0> >::vector(std::vector<glitch::collada::CMesh::SBuffer, glitch::core::SAllocator<glitch::collada::CMesh::SBuffer, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
00644db8  70 40 2d e9                                      push {r4, r5, r6, lr}
00644dbc  04 20 91 e5                                      ldr r2, [r1, #4]
00644dc0  00 30 91 e5                                      ldr r3, [r1]
00644dc4  01 50 a0 e1                                      mov r5, r1
00644dc8  00 10 a0 e3                                      mov r1, #0
00644dcc  02 30 63 e0                                      rsb r3, r3, r2
00644dd0  43 31 a0 e1                                      asr r3, r3, #2
00644dd4  00 40 a0 e1                                      mov r4, r0
00644dd8  03 61 83 e0                                      add r6, r3, r3, lsl #2
00644ddc  00 10 80 e5                                      str r1, [r0]
00644de0  06 62 86 e0                                      add r6, r6, r6, lsl #4
00644de4  04 10 80 e5                                      str r1, [r0, #4]
00644de8  06 64 86 e0                                      add r6, r6, r6, lsl #8
00644dec  08 10 80 e5                                      str r1, [r0, #8]
00644df0  06 68 86 e0                                      add r6, r6, r6, lsl #16
00644df4  86 30 83 e0                                      add r3, r3, r6, lsl #1
00644df8  0c 60 a0 e3                                      mov r6, #0xc
00644dfc  96 03 06 e0                                      mul r6, r6, r3
00644e00  06 00 a0 e1                                      mov r0, r6
00644e04  d7 2d f3 eb                                      bl #0x310568
00644e08  06 60 80 e0                                      add r6, r0, r6
00644e0c  08 60 84 e5                                      str r6, [r4, #8]
00644e10  00 00 84 e5                                      str r0, [r4]
00644e14  04 00 84 e5                                      str r0, [r4, #4]
00644e18  04 20 95 e5                                      ldr r2, [r5, #4]
00644e1c  00 30 95 e5                                      ldr r3, [r5]
00644e20  02 20 63 e0                                      rsb r2, r3, r2
00644e24  42 21 a0 e1                                      asr r2, r2, #2
00644e28  02 61 82 e0                                      add r6, r2, r2, lsl #2
00644e2c  06 62 86 e0                                      add r6, r6, r6, lsl #4
00644e30  06 64 86 e0                                      add r6, r6, r6, lsl #8
00644e34  06 68 86 e0                                      add r6, r6, r6, lsl #16
00644e38  86 60 82 e0                                      add r6, r2, r6, lsl #1
00644e3c  00 00 56 e3                                      cmp r6, #0
00644e40  19 00 00 da                                      ble #0x644eac
00644e44  06 c0 a0 e1                                      mov ip, r6
00644e48  00 20 a0 e1                                      mov r2, r0
00644e4c  00 10 93 e5                                      ldr r1, [r3]
00644e50  00 10 82 e5                                      str r1, [r2]
00644e54  00 00 51 e3                                      cmp r1, #0
00644e58  04 50 91 15                                      ldrne r5, [r1, #4]
00644e5c  01 50 85 12                                      addne r5, r5, #1
00644e60  04 50 81 15                                      strne r5, [r1, #4]
00644e64  04 10 93 e5                                      ldr r1, [r3, #4]
00644e68  04 10 82 e5                                      str r1, [r2, #4]
00644e6c  00 00 51 e3                                      cmp r1, #0
00644e70  00 50 91 15                                      ldrne r5, [r1]
00644e74  01 50 85 12                                      addne r5, r5, #1
00644e78  00 50 81 15                                      strne r5, [r1]
00644e7c  08 10 93 e5                                      ldr r1, [r3, #8]
00644e80  0c 30 83 e2                                      add r3, r3, #0xc
00644e84  00 00 51 e3                                      cmp r1, #0
00644e88  08 10 82 e5                                      str r1, [r2, #8]
00644e8c  00 50 91 15                                      ldrne r5, [r1]
00644e90  0c 20 82 e2                                      add r2, r2, #0xc
00644e94  01 50 85 12                                      addne r5, r5, #1
00644e98  00 50 81 15                                      strne r5, [r1]
00644e9c  01 c0 5c e2                                      subs ip, ip, #1
00644ea0  e9 ff ff 1a                                      bne #0x644e4c
00644ea4  0c 30 a0 e3                                      mov r3, #0xc
00644ea8  93 06 20 e0                                      mla r0, r3, r6, r0
00644eac  04 00 84 e5                                      str r0, [r4, #4]
00644eb0  04 00 a0 e1                                      mov r0, r4
00644eb4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00645140, declared_size=272, range_size=272, mode=arm
; class-group: std::vector<glitch::collada::CMesh::SBuffer, glitch::core::SAllocator<glitch::collada::CMesh::SBuffer, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada5CMesh7SBufferENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE7reserveEj
; demangled: std::vector<glitch::collada::CMesh::SBuffer, glitch::core::SAllocator<glitch::collada::CMesh::SBuffer, (glitch::memory::E_MEMORY_HINT)0> >::reserve(unsigned int)
; decoder-mode: arm
00645140  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00645144  00 40 a0 e1                                      mov r4, r0
00645148  00 20 90 e5                                      ldr r2, [r0]
0064514c  08 00 90 e5                                      ldr r0, [r0, #8]
00645150  08 d0 4d e2                                      sub sp, sp, #8
00645154  01 30 a0 e1                                      mov r3, r1
00645158  00 00 62 e0                                      rsb r0, r2, r0
0064515c  40 01 a0 e1                                      asr r0, r0, #2
00645160  04 10 8d e5                                      str r1, [sp, #4]
00645164  00 11 80 e0                                      add r1, r0, r0, lsl #2
00645168  01 12 81 e0                                      add r1, r1, r1, lsl #4
0064516c  01 14 81 e0                                      add r1, r1, r1, lsl #8
00645170  01 18 81 e0                                      add r1, r1, r1, lsl #16
00645174  81 00 80 e0                                      add r0, r0, r1, lsl #1
00645178  00 00 53 e1                                      cmp r3, r0
0064517c  24 00 00 9a                                      bls #0x645214
00645180  55 15 05 e3                                      movw r1, #0x5555
00645184  01 17 81 e1                                      orr r1, r1, r1, lsl #14
00645188  01 00 53 e1                                      cmp r3, r1
0064518c  22 00 00 8a                                      bhi #0x64521c
00645190  04 30 94 e5                                      ldr r3, [r4, #4]
00645194  00 00 52 e3                                      cmp r2, #0
00645198  03 10 62 e0                                      rsb r1, r2, r3
0064519c  41 11 a0 e1                                      asr r1, r1, #2
006451a0  01 51 81 e0                                      add r5, r1, r1, lsl #2
006451a4  05 52 85 e0                                      add r5, r5, r5, lsl #4
006451a8  05 54 85 e0                                      add r5, r5, r5, lsl #8
006451ac  05 58 85 e0                                      add r5, r5, r5, lsl #16
006451b0  85 50 81 e0                                      add r5, r1, r5, lsl #1
006451b4  1d 00 00 0a                                      beq #0x645230
006451b8  04 00 a0 e1                                      mov r0, r4
006451bc  04 10 8d e2                                      add r1, sp, #4
006451c0  b4 ff ff eb                                      bl #0x645098
006451c4  04 60 94 e5                                      ldr r6, [r4, #4]
006451c8  00 70 94 e5                                      ldr r7, [r4]
006451cc  00 80 a0 e1                                      mov r8, r0
006451d0  07 00 56 e1                                      cmp r6, r7
006451d4  05 00 00 0a                                      beq #0x6451f0
006451d8  0c 60 46 e2                                      sub r6, r6, #0xc
006451dc  06 00 a0 e1                                      mov r0, r6
006451e0  a8 fe ff eb                                      bl #0x644c88
006451e4  06 00 57 e1                                      cmp r7, r6
006451e8  fa ff ff 1a                                      bne #0x6451d8
006451ec  00 60 94 e5                                      ldr r6, [r4]
006451f0  06 00 a0 e1                                      mov r0, r6
006451f4  95 2c f3 eb                                      bl #0x310450
006451f8  04 20 9d e5                                      ldr r2, [sp, #4]
006451fc  0c 30 a0 e3                                      mov r3, #0xc
00645200  93 85 25 e0                                      mla r5, r3, r5, r8
00645204  93 82 23 e0                                      mla r3, r3, r2, r8
00645208  04 50 84 e5                                      str r5, [r4, #4]
0064520c  08 30 84 e5                                      str r3, [r4, #8]
00645210  00 80 84 e5                                      str r8, [r4]
00645214  08 d0 8d e2                                      add sp, sp, #8
00645218  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0064521c  28 00 9f e5                                      ldr r0, [pc, #0x28]
00645220  00 00 8f e0                                      add r0, pc, r0
00645224  05 0f 03 eb                                      bl #0x708e40
00645228  00 20 94 e5                                      ldr r2, [r4]
0064522c  d7 ff ff ea                                      b #0x645190
00645230  04 30 9d e5                                      ldr r3, [sp, #4]
00645234  0c 00 a0 e3                                      mov r0, #0xc
00645238  02 10 a0 e1                                      mov r1, r2
0064523c  90 03 00 e0                                      mul r0, r0, r3
00645240  c8 2c f3 eb                                      bl #0x310568
00645244  00 80 a0 e1                                      mov r8, r0
00645248  ea ff ff ea                                      b #0x6451f8
; mapping-symbol data/literal pool
0064524c  48 92 27 00                                      .byte 0x48, 0x92, 0x27, 0x00

; FUNCTION 0x00645394, declared_size=500, range_size=500, mode=arm
; class-group: std::vector<glitch::collada::CMesh::SBuffer, glitch::core::SAllocator<glitch::collada::CMesh::SBuffer, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada5CMesh7SBufferENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE9push_backERKS3_
; demangled: std::vector<glitch::collada::CMesh::SBuffer, glitch::core::SAllocator<glitch::collada::CMesh::SBuffer, (glitch::memory::E_MEMORY_HINT)0> >::push_back(glitch::collada::CMesh::SBuffer const&)
; decoder-mode: arm
00645394  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00645398  48 00 90 e9                                      ldmib r0, {r3, r6}
0064539c  00 40 a0 e1                                      mov r4, r0
006453a0  01 50 a0 e1                                      mov r5, r1
006453a4  06 00 53 e1                                      cmp r3, r6
006453a8  15 00 00 0a                                      beq #0x645404
006453ac  00 20 91 e5                                      ldr r2, [r1]
006453b0  00 20 83 e5                                      str r2, [r3]
006453b4  00 00 52 e3                                      cmp r2, #0
006453b8  04 10 92 15                                      ldrne r1, [r2, #4]
006453bc  01 10 81 12                                      addne r1, r1, #1
006453c0  04 10 82 15                                      strne r1, [r2, #4]
006453c4  04 20 95 e5                                      ldr r2, [r5, #4]
006453c8  04 20 83 e5                                      str r2, [r3, #4]
006453cc  00 00 52 e3                                      cmp r2, #0
006453d0  00 10 92 15                                      ldrne r1, [r2]
006453d4  01 10 81 12                                      addne r1, r1, #1
006453d8  00 10 82 15                                      strne r1, [r2]
006453dc  08 20 95 e5                                      ldr r2, [r5, #8]
006453e0  08 20 83 e5                                      str r2, [r3, #8]
006453e4  00 00 52 e3                                      cmp r2, #0
006453e8  00 30 92 15                                      ldrne r3, [r2]
006453ec  01 30 83 12                                      addne r3, r3, #1
006453f0  00 30 82 15                                      strne r3, [r2]
006453f4  04 30 90 e5                                      ldr r3, [r0, #4]
006453f8  0c 30 83 e2                                      add r3, r3, #0xc
006453fc  04 30 80 e5                                      str r3, [r0, #4]
00645400  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00645404  00 20 90 e5                                      ldr r2, [r0]
00645408  55 35 05 e3                                      movw r3, #0x5555
0064540c  03 37 83 e1                                      orr r3, r3, r3, lsl #14
00645410  06 20 62 e0                                      rsb r2, r2, r6
00645414  42 21 a0 e1                                      asr r2, r2, #2
00645418  02 11 82 e0                                      add r1, r2, r2, lsl #2
0064541c  01 12 81 e0                                      add r1, r1, r1, lsl #4
00645420  01 14 81 e0                                      add r1, r1, r1, lsl #8
00645424  01 18 81 e0                                      add r1, r1, r1, lsl #16
00645428  81 20 82 e0                                      add r2, r2, r1, lsl #1
0064542c  01 00 52 e3                                      cmp r2, #1
00645430  02 10 82 20                                      addhs r1, r2, r2
00645434  01 10 82 32                                      addlo r1, r2, #1
00645438  03 00 51 e1                                      cmp r1, r3
0064543c  4c 00 00 9a                                      bls #0x645574
00645440  03 70 e0 e3                                      mvn r7, #3
00645444  07 00 a0 e1                                      mov r0, r7
00645448  00 10 a0 e3                                      mov r1, #0
0064544c  45 2c f3 eb                                      bl #0x310568
00645450  00 30 94 e5                                      ldr r3, [r4]
00645454  00 80 a0 e1                                      mov r8, r0
00645458  06 60 63 e0                                      rsb r6, r3, r6
0064545c  46 21 a0 e1                                      asr r2, r6, #2
00645460  02 61 82 e0                                      add r6, r2, r2, lsl #2
00645464  06 62 86 e0                                      add r6, r6, r6, lsl #4
00645468  06 64 86 e0                                      add r6, r6, r6, lsl #8
0064546c  06 68 86 e0                                      add r6, r6, r6, lsl #16
00645470  86 60 82 e0                                      add r6, r2, r6, lsl #1
00645474  00 00 56 e3                                      cmp r6, #0
00645478  00 a0 a0 d1                                      movle sl, r0
0064547c  19 00 00 da                                      ble #0x6454e8
00645480  06 00 a0 e1                                      mov r0, r6
00645484  08 20 a0 e1                                      mov r2, r8
00645488  00 10 93 e5                                      ldr r1, [r3]
0064548c  00 10 82 e5                                      str r1, [r2]
00645490  00 00 51 e3                                      cmp r1, #0
00645494  04 c0 91 15                                      ldrne ip, [r1, #4]
00645498  01 c0 8c 12                                      addne ip, ip, #1
0064549c  04 c0 81 15                                      strne ip, [r1, #4]
006454a0  04 10 93 e5                                      ldr r1, [r3, #4]
006454a4  04 10 82 e5                                      str r1, [r2, #4]
006454a8  00 00 51 e3                                      cmp r1, #0
006454ac  00 c0 91 15                                      ldrne ip, [r1]
006454b0  01 c0 8c 12                                      addne ip, ip, #1
006454b4  00 c0 81 15                                      strne ip, [r1]
006454b8  08 10 93 e5                                      ldr r1, [r3, #8]
006454bc  0c 30 83 e2                                      add r3, r3, #0xc
006454c0  00 00 51 e3                                      cmp r1, #0
006454c4  08 10 82 e5                                      str r1, [r2, #8]
006454c8  00 c0 91 15                                      ldrne ip, [r1]
006454cc  0c 20 82 e2                                      add r2, r2, #0xc
006454d0  01 c0 8c 12                                      addne ip, ip, #1
006454d4  00 c0 81 15                                      strne ip, [r1]
006454d8  01 00 50 e2                                      subs r0, r0, #1
006454dc  e9 ff ff 1a                                      bne #0x645488
006454e0  0c a0 a0 e3                                      mov sl, #0xc
006454e4  9a 86 2a e0                                      mla sl, sl, r6, r8
006454e8  00 30 95 e5                                      ldr r3, [r5]
006454ec  00 30 8a e5                                      str r3, [sl]
006454f0  00 00 53 e3                                      cmp r3, #0
006454f4  04 20 93 15                                      ldrne r2, [r3, #4]
006454f8  01 20 82 12                                      addne r2, r2, #1
006454fc  04 20 83 15                                      strne r2, [r3, #4]
00645500  04 30 95 e5                                      ldr r3, [r5, #4]
00645504  04 30 8a e5                                      str r3, [sl, #4]
00645508  00 00 53 e3                                      cmp r3, #0
0064550c  00 20 93 15                                      ldrne r2, [r3]
00645510  01 20 82 12                                      addne r2, r2, #1
00645514  00 20 83 15                                      strne r2, [r3]
00645518  08 30 95 e5                                      ldr r3, [r5, #8]
0064551c  08 30 8a e5                                      str r3, [sl, #8]
00645520  00 00 53 e3                                      cmp r3, #0
00645524  00 20 93 15                                      ldrne r2, [r3]
00645528  0c a0 8a e2                                      add sl, sl, #0xc
0064552c  01 20 82 12                                      addne r2, r2, #1
00645530  00 20 83 15                                      strne r2, [r3]
00645534  04 50 94 e5                                      ldr r5, [r4, #4]
00645538  00 60 94 e5                                      ldr r6, [r4]
0064553c  06 00 55 e1                                      cmp r5, r6
00645540  05 00 00 0a                                      beq #0x64555c
00645544  0c 50 45 e2                                      sub r5, r5, #0xc
00645548  05 00 a0 e1                                      mov r0, r5
0064554c  cd fd ff eb                                      bl #0x644c88
00645550  05 00 56 e1                                      cmp r6, r5
00645554  fa ff ff 1a                                      bne #0x645544
00645558  00 60 94 e5                                      ldr r6, [r4]
0064555c  06 00 a0 e1                                      mov r0, r6
00645560  07 70 88 e0                                      add r7, r8, r7
00645564  b9 2b f3 eb                                      bl #0x310450
00645568  08 70 84 e5                                      str r7, [r4, #8]
0064556c  00 05 84 e8                                      stm r4, {r8, sl}
00645570  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00645574  01 00 52 e1                                      cmp r2, r1
00645578  b0 ff ff 8a                                      bhi #0x645440
0064557c  0c 70 a0 e3                                      mov r7, #0xc
00645580  97 01 07 e0                                      mul r7, r7, r1
00645584  ae ff ff ea                                      b #0x645444
