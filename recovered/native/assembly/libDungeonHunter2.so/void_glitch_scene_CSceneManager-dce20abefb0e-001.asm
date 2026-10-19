; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00353c7c, declared_size=368, range_size=368, mode=arm
; class-group: void glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager10renderListINS1_24SRenderDataSortNodeEntryEEEvNS0_24E_SCENE_NODE_RENDER_PASSERSt6vectorIT_NS_4core10SAllocatorIS6_LNS_6memory13E_MEMORY_HINTE0EEEEbb.clone.10
; demangled: void glitch::scene::CSceneManager::renderList<glitch::scene::CSceneManager::SRenderDataSortNodeEntry>(glitch::scene::E_SCENE_NODE_RENDER_PASS, std::vector<glitch::scene::CSceneManager::SRenderDataSortNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SRenderDataSortNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >&, bool, bool) [clone .clone.10]
; decoder-mode: arm
00353c7c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00353c80  74 11 80 e5                                      str r1, [r0, #0x174]
00353c84  04 10 92 e5                                      ldr r1, [r2, #4]
00353c88  00 60 92 e5                                      ldr r6, [r2]
00353c8c  00 40 a0 e1                                      mov r4, r0
00353c90  08 00 92 e5                                      ldr r0, [r2, #8]
00353c94  24 d0 4d e2                                      sub sp, sp, #0x24
00353c98  02 50 a0 e1                                      mov r5, r2
00353c9c  01 60 66 e0                                      rsb r6, r6, r1
00353ca0  00 20 a0 e3                                      mov r2, #0
00353ca4  00 00 51 e1                                      cmp r1, r0
00353ca8  03 70 a0 e1                                      mov r7, r3
00353cac  c6 61 a0 e1                                      asr r6, r6, #3
00353cb0  0c 20 8d e5                                      str r2, [sp, #0xc]
00353cb4  10 20 8d e5                                      str r2, [sp, #0x10]
00353cb8  43 00 00 0a                                      beq #0x353dcc
00353cbc  00 20 81 e5                                      str r2, [r1]
00353cc0  10 30 9d e5                                      ldr r3, [sp, #0x10]
00353cc4  04 30 81 e5                                      str r3, [r1, #4]
00353cc8  04 30 95 e5                                      ldr r3, [r5, #4]
00353ccc  08 30 83 e2                                      add r3, r3, #8
00353cd0  04 30 85 e5                                      str r3, [r5, #4]
00353cd4  00 30 95 e5                                      ldr r3, [r5]
00353cd8  a8 c0 94 e5                                      ldr ip, [r4, #0xa8]
00353cdc  ac 00 94 e5                                      ldr r0, [r4, #0xac]
00353ce0  04 20 93 e5                                      ldr r2, [r3, #4]
00353ce4  b0 10 94 e5                                      ldr r1, [r4, #0xb0]
00353ce8  00 30 93 e5                                      ldr r3, [r3]
00353cec  00 80 a0 e3                                      mov r8, #0
00353cf0  00 00 56 e3                                      cmp r6, #0
00353cf4  9c c0 84 e5                                      str ip, [r4, #0x9c]
00353cf8  a0 00 84 e5                                      str r0, [r4, #0xa0]
00353cfc  a4 10 84 e5                                      str r1, [r4, #0xa4]
00353d00  ac 20 84 e5                                      str r2, [r4, #0xac]
00353d04  a8 30 84 e5                                      str r3, [r4, #0xa8]
00353d08  b0 80 84 e5                                      str r8, [r4, #0xb0]
00353d0c  16 00 00 0a                                      beq #0x353d6c
00353d10  08 a0 a0 e1                                      mov sl, r8
00353d14  00 00 00 ea                                      b #0x353d1c
00353d18  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
00353d1c  00 20 95 e5                                      ldr r2, [r5]
00353d20  01 80 88 e2                                      add r8, r8, #1
00353d24  ac 10 94 e5                                      ldr r1, [r4, #0xac]
00353d28  88 01 82 e0                                      add r0, r2, r8, lsl #3
00353d2c  88 c1 92 e7                                      ldr ip, [r2, r8, lsl #3]
00353d30  04 00 90 e5                                      ldr r0, [r0, #4]
00353d34  b0 20 94 e5                                      ldr r2, [r4, #0xb0]
00353d38  a8 c0 84 e5                                      str ip, [r4, #0xa8]
00353d3c  ac 00 84 e5                                      str r0, [r4, #0xac]
00353d40  a4 20 84 e5                                      str r2, [r4, #0xa4]
00353d44  9c 30 84 e5                                      str r3, [r4, #0x9c]
00353d48  a0 10 84 e5                                      str r1, [r4, #0xa0]
00353d4c  b0 a0 84 e5                                      str sl, [r4, #0xb0]
00353d50  03 00 a0 e1                                      mov r0, r3
00353d54  00 30 93 e5                                      ldr r3, [r3]
00353d58  0f e0 a0 e1                                      mov lr, pc
00353d5c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00353d60  08 00 56 e1                                      cmp r6, r8
00353d64  eb ff ff 1a                                      bne #0x353d18
00353d68  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
00353d6c  04 20 95 e5                                      ldr r2, [r5, #4]
00353d70  ac 60 94 e5                                      ldr r6, [r4, #0xac]
00353d74  b0 c0 94 e5                                      ldr ip, [r4, #0xb0]
00353d78  03 00 12 e9                                      ldmdb r2, {r0, r1}
00353d7c  00 00 57 e3                                      cmp r7, #0
00353d80  00 20 a0 e3                                      mov r2, #0
00353d84  9c 30 84 e5                                      str r3, [r4, #0x9c]
00353d88  a0 60 84 e5                                      str r6, [r4, #0xa0]
00353d8c  a4 c0 84 e5                                      str ip, [r4, #0xa4]
00353d90  a8 00 84 e5                                      str r0, [r4, #0xa8]
00353d94  ac 10 84 e5                                      str r1, [r4, #0xac]
00353d98  b0 20 84 e5                                      str r2, [r4, #0xb0]
00353d9c  06 00 00 0a                                      beq #0x353dbc
00353da0  05 00 a0 e1                                      mov r0, r5
00353da4  14 10 8d e2                                      add r1, sp, #0x14
00353da8  18 20 8d e5                                      str r2, [sp, #0x18]
00353dac  14 20 8d e5                                      str r2, [sp, #0x14]
00353db0  f9 fd ff eb                                      bl #0x35359c
00353db4  24 d0 8d e2                                      add sp, sp, #0x24
00353db8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00353dbc  04 30 95 e5                                      ldr r3, [r5, #4]
00353dc0  08 30 43 e2                                      sub r3, r3, #8
00353dc4  04 30 85 e5                                      str r3, [r5, #4]
00353dc8  f9 ff ff ea                                      b #0x353db4
00353dcc  01 c0 a0 e3                                      mov ip, #1
00353dd0  05 00 a0 e1                                      mov r0, r5
00353dd4  0c 20 8d e2                                      add r2, sp, #0xc
00353dd8  1c 30 8d e2                                      add r3, sp, #0x1c
00353ddc  04 c0 8d e5                                      str ip, [sp, #4]
00353de0  00 c0 8d e5                                      str ip, [sp]
00353de4  ac f7 ff eb                                      bl #0x351c9c
00353de8  b9 ff ff ea                                      b #0x353cd4

; FUNCTION 0x00353f50, declared_size=368, range_size=368, mode=arm
; class-group: void glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager10renderListINS1_18SUnsortedNodeEntryEEEvNS0_24E_SCENE_NODE_RENDER_PASSERSt6vectorIT_NS_4core10SAllocatorIS6_LNS_6memory13E_MEMORY_HINTE0EEEEbb.clone.4
; demangled: void glitch::scene::CSceneManager::renderList<glitch::scene::CSceneManager::SUnsortedNodeEntry>(glitch::scene::E_SCENE_NODE_RENDER_PASS, std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >&, bool, bool) [clone .clone.4]
; decoder-mode: arm
00353f50  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00353f54  74 11 80 e5                                      str r1, [r0, #0x174]
00353f58  04 10 92 e5                                      ldr r1, [r2, #4]
00353f5c  00 60 92 e5                                      ldr r6, [r2]
00353f60  00 40 a0 e1                                      mov r4, r0
00353f64  08 00 92 e5                                      ldr r0, [r2, #8]
00353f68  24 d0 4d e2                                      sub sp, sp, #0x24
00353f6c  02 50 a0 e1                                      mov r5, r2
00353f70  01 60 66 e0                                      rsb r6, r6, r1
00353f74  00 20 a0 e3                                      mov r2, #0
00353f78  00 00 51 e1                                      cmp r1, r0
00353f7c  03 70 a0 e1                                      mov r7, r3
00353f80  c6 61 a0 e1                                      asr r6, r6, #3
00353f84  0c 20 8d e5                                      str r2, [sp, #0xc]
00353f88  10 20 8d e5                                      str r2, [sp, #0x10]
00353f8c  43 00 00 0a                                      beq #0x3540a0
00353f90  00 20 81 e5                                      str r2, [r1]
00353f94  10 30 9d e5                                      ldr r3, [sp, #0x10]
00353f98  04 30 81 e5                                      str r3, [r1, #4]
00353f9c  04 30 95 e5                                      ldr r3, [r5, #4]
00353fa0  08 30 83 e2                                      add r3, r3, #8
00353fa4  04 30 85 e5                                      str r3, [r5, #4]
00353fa8  00 30 95 e5                                      ldr r3, [r5]
00353fac  a8 c0 94 e5                                      ldr ip, [r4, #0xa8]
00353fb0  ac 00 94 e5                                      ldr r0, [r4, #0xac]
00353fb4  04 20 93 e5                                      ldr r2, [r3, #4]
00353fb8  b0 10 94 e5                                      ldr r1, [r4, #0xb0]
00353fbc  00 30 93 e5                                      ldr r3, [r3]
00353fc0  00 80 a0 e3                                      mov r8, #0
00353fc4  00 00 56 e3                                      cmp r6, #0
00353fc8  9c c0 84 e5                                      str ip, [r4, #0x9c]
00353fcc  a0 00 84 e5                                      str r0, [r4, #0xa0]
00353fd0  a4 10 84 e5                                      str r1, [r4, #0xa4]
00353fd4  ac 20 84 e5                                      str r2, [r4, #0xac]
00353fd8  a8 30 84 e5                                      str r3, [r4, #0xa8]
00353fdc  b0 80 84 e5                                      str r8, [r4, #0xb0]
00353fe0  16 00 00 0a                                      beq #0x354040
00353fe4  08 a0 a0 e1                                      mov sl, r8
00353fe8  00 00 00 ea                                      b #0x353ff0
00353fec  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
00353ff0  00 20 95 e5                                      ldr r2, [r5]
00353ff4  01 80 88 e2                                      add r8, r8, #1
00353ff8  ac 10 94 e5                                      ldr r1, [r4, #0xac]
00353ffc  88 01 82 e0                                      add r0, r2, r8, lsl #3
00354000  88 c1 92 e7                                      ldr ip, [r2, r8, lsl #3]
00354004  04 00 90 e5                                      ldr r0, [r0, #4]
00354008  b0 20 94 e5                                      ldr r2, [r4, #0xb0]
0035400c  a8 c0 84 e5                                      str ip, [r4, #0xa8]
00354010  ac 00 84 e5                                      str r0, [r4, #0xac]
00354014  a4 20 84 e5                                      str r2, [r4, #0xa4]
00354018  9c 30 84 e5                                      str r3, [r4, #0x9c]
0035401c  a0 10 84 e5                                      str r1, [r4, #0xa0]
00354020  b0 a0 84 e5                                      str sl, [r4, #0xb0]
00354024  03 00 a0 e1                                      mov r0, r3
00354028  00 30 93 e5                                      ldr r3, [r3]
0035402c  0f e0 a0 e1                                      mov lr, pc
00354030  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00354034  08 00 56 e1                                      cmp r6, r8
00354038  eb ff ff 1a                                      bne #0x353fec
0035403c  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
00354040  04 20 95 e5                                      ldr r2, [r5, #4]
00354044  ac 60 94 e5                                      ldr r6, [r4, #0xac]
00354048  b0 c0 94 e5                                      ldr ip, [r4, #0xb0]
0035404c  03 00 12 e9                                      ldmdb r2, {r0, r1}
00354050  00 00 57 e3                                      cmp r7, #0
00354054  00 20 a0 e3                                      mov r2, #0
00354058  9c 30 84 e5                                      str r3, [r4, #0x9c]
0035405c  a0 60 84 e5                                      str r6, [r4, #0xa0]
00354060  a4 c0 84 e5                                      str ip, [r4, #0xa4]
00354064  a8 00 84 e5                                      str r0, [r4, #0xa8]
00354068  ac 10 84 e5                                      str r1, [r4, #0xac]
0035406c  b0 20 84 e5                                      str r2, [r4, #0xb0]
00354070  06 00 00 0a                                      beq #0x354090
00354074  05 00 a0 e1                                      mov r0, r5
00354078  14 10 8d e2                                      add r1, sp, #0x14
0035407c  18 20 8d e5                                      str r2, [sp, #0x18]
00354080  14 20 8d e5                                      str r2, [sp, #0x14]
00354084  99 fb ff eb                                      bl #0x352ef0
00354088  24 d0 8d e2                                      add sp, sp, #0x24
0035408c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00354090  04 30 95 e5                                      ldr r3, [r5, #4]
00354094  08 30 43 e2                                      sub r3, r3, #8
00354098  04 30 85 e5                                      str r3, [r5, #4]
0035409c  f9 ff ff ea                                      b #0x354088
003540a0  01 c0 a0 e3                                      mov ip, #1
003540a4  05 00 a0 e1                                      mov r0, r5
003540a8  0c 20 8d e2                                      add r2, sp, #0xc
003540ac  1c 30 8d e2                                      add r3, sp, #0x1c
003540b0  04 c0 8d e5                                      str ip, [sp, #4]
003540b4  00 c0 8d e5                                      str ip, [sp]
003540b8  8f f6 ff eb                                      bl #0x351afc
003540bc  b9 ff ff ea                                      b #0x353fa8

; FUNCTION 0x0058acac, declared_size=372, range_size=372, mode=arm
; class-group: void glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager10renderListINS1_24SRenderDataSortNodeEntryEEEvNS0_24E_SCENE_NODE_RENDER_PASSERSt6vectorIT_NS_4core10SAllocatorIS6_LNS_6memory13E_MEMORY_HINTE0EEEEbb.clone.8
; demangled: void glitch::scene::CSceneManager::renderList<glitch::scene::CSceneManager::SRenderDataSortNodeEntry>(glitch::scene::E_SCENE_NODE_RENDER_PASS, std::vector<glitch::scene::CSceneManager::SRenderDataSortNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SRenderDataSortNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >&, bool, bool) [clone .clone.8]
; decoder-mode: arm
0058acac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0058acb0  74 11 80 e5                                      str r1, [r0, #0x174]
0058acb4  04 10 92 e5                                      ldr r1, [r2, #4]
0058acb8  00 60 92 e5                                      ldr r6, [r2]
0058acbc  02 50 a0 e1                                      mov r5, r2
0058acc0  08 20 92 e5                                      ldr r2, [r2, #8]
0058acc4  20 d0 4d e2                                      sub sp, sp, #0x20
0058acc8  00 30 a0 e3                                      mov r3, #0
0058accc  01 60 66 e0                                      rsb r6, r6, r1
0058acd0  02 00 51 e1                                      cmp r1, r2
0058acd4  00 40 a0 e1                                      mov r4, r0
0058acd8  c6 61 a0 e1                                      asr r6, r6, #3
0058acdc  0c 30 8d e5                                      str r3, [sp, #0xc]
0058ace0  10 30 8d e5                                      str r3, [sp, #0x10]
0058ace4  45 00 00 0a                                      beq #0x58ae00
0058ace8  00 30 81 e5                                      str r3, [r1]
0058acec  10 30 9d e5                                      ldr r3, [sp, #0x10]
0058acf0  04 30 81 e5                                      str r3, [r1, #4]
0058acf4  04 30 95 e5                                      ldr r3, [r5, #4]
0058acf8  08 30 83 e2                                      add r3, r3, #8
0058acfc  04 30 85 e5                                      str r3, [r5, #4]
0058ad00  00 30 95 e5                                      ldr r3, [r5]
0058ad04  a8 c0 94 e5                                      ldr ip, [r4, #0xa8]
0058ad08  ac 00 94 e5                                      ldr r0, [r4, #0xac]
0058ad0c  04 20 93 e5                                      ldr r2, [r3, #4]
0058ad10  b0 10 94 e5                                      ldr r1, [r4, #0xb0]
0058ad14  00 30 93 e5                                      ldr r3, [r3]
0058ad18  00 70 a0 e3                                      mov r7, #0
0058ad1c  00 00 56 e3                                      cmp r6, #0
0058ad20  9c c0 84 e5                                      str ip, [r4, #0x9c]
0058ad24  a0 00 84 e5                                      str r0, [r4, #0xa0]
0058ad28  a4 10 84 e5                                      str r1, [r4, #0xa4]
0058ad2c  ac 20 84 e5                                      str r2, [r4, #0xac]
0058ad30  a8 30 84 e5                                      str r3, [r4, #0xa8]
0058ad34  b0 70 84 e5                                      str r7, [r4, #0xb0]
0058ad38  16 00 00 0a                                      beq #0x58ad98
0058ad3c  07 80 a0 e1                                      mov r8, r7
0058ad40  00 00 00 ea                                      b #0x58ad48
0058ad44  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
0058ad48  00 20 95 e5                                      ldr r2, [r5]
0058ad4c  01 70 87 e2                                      add r7, r7, #1
0058ad50  ac 10 94 e5                                      ldr r1, [r4, #0xac]
0058ad54  87 01 82 e0                                      add r0, r2, r7, lsl #3
0058ad58  87 c1 92 e7                                      ldr ip, [r2, r7, lsl #3]
0058ad5c  04 00 90 e5                                      ldr r0, [r0, #4]
0058ad60  b0 20 94 e5                                      ldr r2, [r4, #0xb0]
0058ad64  a8 c0 84 e5                                      str ip, [r4, #0xa8]
0058ad68  ac 00 84 e5                                      str r0, [r4, #0xac]
0058ad6c  a4 20 84 e5                                      str r2, [r4, #0xa4]
0058ad70  9c 30 84 e5                                      str r3, [r4, #0x9c]
0058ad74  a0 10 84 e5                                      str r1, [r4, #0xa0]
0058ad78  b0 80 84 e5                                      str r8, [r4, #0xb0]
0058ad7c  03 00 a0 e1                                      mov r0, r3
0058ad80  00 30 93 e5                                      ldr r3, [r3]
0058ad84  0f e0 a0 e1                                      mov lr, pc
0058ad88  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0058ad8c  07 00 56 e1                                      cmp r6, r7
0058ad90  eb ff ff 1a                                      bne #0x58ad44
0058ad94  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
0058ad98  04 20 95 e5                                      ldr r2, [r5, #4]
0058ad9c  ac 60 94 e5                                      ldr r6, [r4, #0xac]
0058ada0  b0 c0 94 e5                                      ldr ip, [r4, #0xb0]
0058ada4  03 00 12 e9                                      ldmdb r2, {r0, r1}
0058ada8  00 20 a0 e3                                      mov r2, #0
0058adac  b0 20 84 e5                                      str r2, [r4, #0xb0]
0058adb0  9c 30 84 e5                                      str r3, [r4, #0x9c]
0058adb4  a0 60 84 e5                                      str r6, [r4, #0xa0]
0058adb8  a4 c0 84 e5                                      str ip, [r4, #0xa4]
0058adbc  a8 00 84 e5                                      str r0, [r4, #0xa8]
0058adc0  ac 10 84 e5                                      str r1, [r4, #0xac]
0058adc4  04 10 95 e5                                      ldr r1, [r5, #4]
0058adc8  00 30 95 e5                                      ldr r3, [r5]
0058adcc  18 20 8d e5                                      str r2, [sp, #0x18]
0058add0  14 20 8d e5                                      str r2, [sp, #0x14]
0058add4  01 20 63 e0                                      rsb r2, r3, r1
0058add8  c2 21 b0 e1                                      asrs r2, r2, #3
0058addc  03 00 00 0a                                      beq #0x58adf0
0058ade0  03 00 51 e1                                      cmp r1, r3
0058ade4  04 30 85 15                                      strne r3, [r5, #4]
0058ade8  20 d0 8d e2                                      add sp, sp, #0x20
0058adec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0058adf0  05 00 a0 e1                                      mov r0, r5
0058adf4  14 30 8d e2                                      add r3, sp, #0x14
0058adf8  fa 1b f7 eb                                      bl #0x351de8
0058adfc  f9 ff ff ea                                      b #0x58ade8
0058ae00  01 c0 a0 e3                                      mov ip, #1
0058ae04  05 00 a0 e1                                      mov r0, r5
0058ae08  0c 20 8d e2                                      add r2, sp, #0xc
0058ae0c  1c 30 8d e2                                      add r3, sp, #0x1c
0058ae10  04 c0 8d e5                                      str ip, [sp, #4]
0058ae14  00 c0 8d e5                                      str ip, [sp]
0058ae18  9f 1b f7 eb                                      bl #0x351c9c
0058ae1c  b7 ff ff ea                                      b #0x58ad00

; FUNCTION 0x0058aee4, declared_size=452, range_size=452, mode=arm
; class-group: void glitch::scene::CSceneManager
; alias: _ZN6glitch5scene13CSceneManager10renderListINS1_18SUnsortedNodeEntryEEEvNS0_24E_SCENE_NODE_RENDER_PASSERSt6vectorIT_NS_4core10SAllocatorIS6_LNS_6memory13E_MEMORY_HINTE0EEEEbb
; demangled: void glitch::scene::CSceneManager::renderList<glitch::scene::CSceneManager::SUnsortedNodeEntry>(glitch::scene::E_SCENE_NODE_RENDER_PASS, std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >&, bool, bool)
; decoder-mode: arm
0058aee4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0058aee8  74 11 80 e5                                      str r1, [r0, #0x174]
0058aeec  04 10 92 e5                                      ldr r1, [r2, #4]
0058aef0  00 60 92 e5                                      ldr r6, [r2]
0058aef4  00 40 a0 e1                                      mov r4, r0
0058aef8  08 00 92 e5                                      ldr r0, [r2, #8]
0058aefc  20 d0 4d e2                                      sub sp, sp, #0x20
0058af00  02 50 a0 e1                                      mov r5, r2
0058af04  01 60 66 e0                                      rsb r6, r6, r1
0058af08  00 20 a0 e3                                      mov r2, #0
0058af0c  00 00 51 e1                                      cmp r1, r0
0058af10  03 80 a0 e1                                      mov r8, r3
0058af14  c6 61 a0 e1                                      asr r6, r6, #3
0058af18  14 20 8d e5                                      str r2, [sp, #0x14]
0058af1c  18 20 8d e5                                      str r2, [sp, #0x18]
0058af20  40 70 dd e5                                      ldrb r7, [sp, #0x40]
0058af24  57 00 00 0a                                      beq #0x58b088
0058af28  00 20 81 e5                                      str r2, [r1]
0058af2c  18 30 9d e5                                      ldr r3, [sp, #0x18]
0058af30  04 30 81 e5                                      str r3, [r1, #4]
0058af34  04 30 95 e5                                      ldr r3, [r5, #4]
0058af38  08 30 83 e2                                      add r3, r3, #8
0058af3c  04 30 85 e5                                      str r3, [r5, #4]
0058af40  00 30 95 e5                                      ldr r3, [r5]
0058af44  a8 c0 94 e5                                      ldr ip, [r4, #0xa8]
0058af48  ac 00 94 e5                                      ldr r0, [r4, #0xac]
0058af4c  04 20 93 e5                                      ldr r2, [r3, #4]
0058af50  b0 10 94 e5                                      ldr r1, [r4, #0xb0]
0058af54  00 30 93 e5                                      ldr r3, [r3]
0058af58  00 a0 a0 e3                                      mov sl, #0
0058af5c  00 00 56 e3                                      cmp r6, #0
0058af60  9c c0 84 e5                                      str ip, [r4, #0x9c]
0058af64  a0 00 84 e5                                      str r0, [r4, #0xa0]
0058af68  a4 10 84 e5                                      str r1, [r4, #0xa4]
0058af6c  ac 20 84 e5                                      str r2, [r4, #0xac]
0058af70  a8 30 84 e5                                      str r3, [r4, #0xa8]
0058af74  b0 a0 84 e5                                      str sl, [r4, #0xb0]
0058af78  22 00 00 0a                                      beq #0x58b008
0058af7c  0a 90 a0 e1                                      mov sb, sl
0058af80  00 00 00 ea                                      b #0x58af88
0058af84  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
0058af88  00 10 95 e5                                      ldr r1, [r5]
0058af8c  01 a0 8a e2                                      add sl, sl, #1
0058af90  ac 20 94 e5                                      ldr r2, [r4, #0xac]
0058af94  8a 01 81 e0                                      add r0, r1, sl, lsl #3
0058af98  8a c1 91 e7                                      ldr ip, [r1, sl, lsl #3]
0058af9c  04 10 90 e5                                      ldr r1, [r0, #4]
0058afa0  b0 00 94 e5                                      ldr r0, [r4, #0xb0]
0058afa4  00 00 57 e3                                      cmp r7, #0
0058afa8  a8 c0 84 e5                                      str ip, [r4, #0xa8]
0058afac  a4 00 84 e5                                      str r0, [r4, #0xa4]
0058afb0  ac 10 84 e5                                      str r1, [r4, #0xac]
0058afb4  9c 30 84 e5                                      str r3, [r4, #0x9c]
0058afb8  a0 20 84 e5                                      str r2, [r4, #0xa0]
0058afbc  b0 90 84 e5                                      str sb, [r4, #0xb0]
0058afc0  08 00 00 0a                                      beq #0x58afe8
0058afc4  00 00 53 e3                                      cmp r3, #0
0058afc8  03 10 a0 e1                                      mov r1, r3
0058afcc  04 00 a0 e1                                      mov r0, r4
0058afd0  04 00 00 0a                                      beq #0x58afe8
0058afd4  d3 fe ff eb                                      bl #0x58ab28
0058afd8  00 00 50 e3                                      cmp r0, #0
0058afdc  06 00 00 1a                                      bne #0x58affc
0058afe0  9c 30 94 e5                                      ldr r3, [r4, #0x9c]
0058afe4  a0 20 94 e5                                      ldr r2, [r4, #0xa0]
0058afe8  03 00 a0 e1                                      mov r0, r3
0058afec  02 10 a0 e1                                      mov r1, r2
0058aff0  00 30 93 e5                                      ldr r3, [r3]
0058aff4  0f e0 a0 e1                                      mov lr, pc
0058aff8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0058affc  06 00 5a e1                                      cmp sl, r6
0058b000  df ff ff 1a                                      bne #0x58af84
0058b004  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
0058b008  04 20 95 e5                                      ldr r2, [r5, #4]
0058b00c  ac 60 94 e5                                      ldr r6, [r4, #0xac]
0058b010  b0 c0 94 e5                                      ldr ip, [r4, #0xb0]
0058b014  03 00 12 e9                                      ldmdb r2, {r0, r1}
0058b018  00 00 58 e3                                      cmp r8, #0
0058b01c  00 20 a0 e3                                      mov r2, #0
0058b020  9c 30 84 e5                                      str r3, [r4, #0x9c]
0058b024  a0 60 84 e5                                      str r6, [r4, #0xa0]
0058b028  a4 c0 84 e5                                      str ip, [r4, #0xa4]
0058b02c  a8 00 84 e5                                      str r0, [r4, #0xa8]
0058b030  ac 10 84 e5                                      str r1, [r4, #0xac]
0058b034  b0 20 84 e5                                      str r2, [r4, #0xb0]
0058b038  0b 00 00 0a                                      beq #0x58b06c
0058b03c  04 10 95 e5                                      ldr r1, [r5, #4]
0058b040  00 30 95 e5                                      ldr r3, [r5]
0058b044  10 20 8d e5                                      str r2, [sp, #0x10]
0058b048  0c 20 8d e5                                      str r2, [sp, #0xc]
0058b04c  01 20 63 e0                                      rsb r2, r3, r1
0058b050  c2 21 b0 e1                                      asrs r2, r2, #3
0058b054  07 00 00 0a                                      beq #0x58b078
0058b058  03 00 51 e1                                      cmp r1, r3
0058b05c  00 00 00 0a                                      beq #0x58b064
0058b060  04 30 85 e5                                      str r3, [r5, #4]
0058b064  20 d0 8d e2                                      add sp, sp, #0x20
0058b068  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0058b06c  04 30 95 e5                                      ldr r3, [r5, #4]
0058b070  08 30 43 e2                                      sub r3, r3, #8
0058b074  f9 ff ff ea                                      b #0x58b060
0058b078  05 00 a0 e1                                      mov r0, r5
0058b07c  0c 30 8d e2                                      add r3, sp, #0xc
0058b080  f0 1a f7 eb                                      bl #0x351c48
0058b084  f6 ff ff ea                                      b #0x58b064
0058b088  01 c0 a0 e3                                      mov ip, #1
0058b08c  05 00 a0 e1                                      mov r0, r5
0058b090  14 20 8d e2                                      add r2, sp, #0x14
0058b094  1c 30 8d e2                                      add r3, sp, #0x1c
0058b098  04 c0 8d e5                                      str ip, [sp, #4]
0058b09c  00 c0 8d e5                                      str ip, [sp]
0058b0a0  95 1a f7 eb                                      bl #0x351afc
0058b0a4  a5 ff ff ea                                      b #0x58af40
