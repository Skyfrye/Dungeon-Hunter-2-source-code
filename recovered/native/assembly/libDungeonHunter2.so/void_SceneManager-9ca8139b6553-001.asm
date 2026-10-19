; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00353dec, declared_size=356, range_size=356, mode=arm
; class-group: void SceneManager
; alias: _ZN12SceneManager16renderCustomListIN6glitch5scene13CSceneManager18SUnsortedNodeEntryEEEv31E_SCENE_NODE_CUSTOM_RENDER_PASSRSt6vectorIT_NS1_4core10SAllocatorIS7_LNS1_6memory13E_MEMORY_HINTE0EEEE
; demangled: void SceneManager::renderCustomList<glitch::scene::CSceneManager::SUnsortedNodeEntry>(E_SCENE_NODE_CUSTOM_RENDER_PASS, std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >&)
; decoder-mode: arm
00353dec  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00353df0  08 00 51 e3                                      cmp r1, #8
00353df4  09 30 a0 c3                                      movgt r3, #9
00353df8  74 31 80 c5                                      strgt r3, [r0, #0x174]
00353dfc  74 11 80 d5                                      strle r1, [r0, #0x174]
00353e00  88 14 80 e5                                      str r1, [r0, #0x488]
00353e04  04 10 92 e5                                      ldr r1, [r2, #4]
00353e08  00 60 92 e5                                      ldr r6, [r2]
00353e0c  02 50 a0 e1                                      mov r5, r2
00353e10  08 20 92 e5                                      ldr r2, [r2, #8]
00353e14  20 d0 4d e2                                      sub sp, sp, #0x20
00353e18  00 30 a0 e3                                      mov r3, #0
00353e1c  01 60 66 e0                                      rsb r6, r6, r1
00353e20  02 00 51 e1                                      cmp r1, r2
00353e24  00 40 a0 e1                                      mov r4, r0
00353e28  c6 61 a0 e1                                      asr r6, r6, #3
00353e2c  14 30 8d e5                                      str r3, [sp, #0x14]
00353e30  18 30 8d e5                                      str r3, [sp, #0x18]
00353e34  3d 00 00 0a                                      beq #0x353f30
00353e38  00 30 81 e5                                      str r3, [r1]
00353e3c  18 30 9d e5                                      ldr r3, [sp, #0x18]
00353e40  04 30 81 e5                                      str r3, [r1, #4]
00353e44  04 30 95 e5                                      ldr r3, [r5, #4]
00353e48  08 30 83 e2                                      add r3, r3, #8
00353e4c  04 30 85 e5                                      str r3, [r5, #4]
00353e50  00 30 95 e5                                      ldr r3, [r5]
00353e54  a8 c0 94 e5                                      ldr ip, [r4, #0xa8]
00353e58  ac 00 94 e5                                      ldr r0, [r4, #0xac]
00353e5c  04 20 93 e5                                      ldr r2, [r3, #4]
00353e60  b0 10 94 e5                                      ldr r1, [r4, #0xb0]
00353e64  00 30 93 e5                                      ldr r3, [r3]
00353e68  00 70 a0 e3                                      mov r7, #0
00353e6c  00 00 56 e3                                      cmp r6, #0
00353e70  9c c0 84 e5                                      str ip, [r4, #0x9c]
00353e74  a0 00 84 e5                                      str r0, [r4, #0xa0]
00353e78  a4 10 84 e5                                      str r1, [r4, #0xa4]
00353e7c  ac 20 84 e5                                      str r2, [r4, #0xac]
00353e80  a8 30 84 e5                                      str r3, [r4, #0xa8]
00353e84  b0 70 84 e5                                      str r7, [r4, #0xb0]
00353e88  16 00 00 0a                                      beq #0x353ee8
00353e8c  07 80 a0 e1                                      mov r8, r7
00353e90  00 00 00 ea                                      b #0x353e98
00353e94  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
00353e98  00 20 95 e5                                      ldr r2, [r5]
00353e9c  01 70 87 e2                                      add r7, r7, #1
00353ea0  ac 10 94 e5                                      ldr r1, [r4, #0xac]
00353ea4  87 01 82 e0                                      add r0, r2, r7, lsl #3
00353ea8  87 c1 92 e7                                      ldr ip, [r2, r7, lsl #3]
00353eac  04 00 90 e5                                      ldr r0, [r0, #4]
00353eb0  b0 20 94 e5                                      ldr r2, [r4, #0xb0]
00353eb4  a8 c0 84 e5                                      str ip, [r4, #0xa8]
00353eb8  ac 00 84 e5                                      str r0, [r4, #0xac]
00353ebc  a4 20 84 e5                                      str r2, [r4, #0xa4]
00353ec0  9c 30 84 e5                                      str r3, [r4, #0x9c]
00353ec4  a0 10 84 e5                                      str r1, [r4, #0xa0]
00353ec8  b0 80 84 e5                                      str r8, [r4, #0xb0]
00353ecc  03 00 a0 e1                                      mov r0, r3
00353ed0  00 30 93 e5                                      ldr r3, [r3]
00353ed4  0f e0 a0 e1                                      mov lr, pc
00353ed8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00353edc  06 00 57 e1                                      cmp r7, r6
00353ee0  eb ff ff 1a                                      bne #0x353e94
00353ee4  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
00353ee8  04 20 95 e5                                      ldr r2, [r5, #4]
00353eec  ac e0 94 e5                                      ldr lr, [r4, #0xac]
00353ef0  b0 c0 94 e5                                      ldr ip, [r4, #0xb0]
00353ef4  03 00 12 e9                                      ldmdb r2, {r0, r1}
00353ef8  00 20 a0 e3                                      mov r2, #0
00353efc  ac 10 84 e5                                      str r1, [r4, #0xac]
00353f00  a8 00 84 e5                                      str r0, [r4, #0xa8]
00353f04  9c 30 84 e5                                      str r3, [r4, #0x9c]
00353f08  a0 e0 84 e5                                      str lr, [r4, #0xa0]
00353f0c  a4 c0 84 e5                                      str ip, [r4, #0xa4]
00353f10  b0 20 84 e5                                      str r2, [r4, #0xb0]
00353f14  05 00 a0 e1                                      mov r0, r5
00353f18  0c 10 8d e2                                      add r1, sp, #0xc
00353f1c  10 20 8d e5                                      str r2, [sp, #0x10]
00353f20  0c 20 8d e5                                      str r2, [sp, #0xc]
00353f24  f1 fb ff eb                                      bl #0x352ef0
00353f28  20 d0 8d e2                                      add sp, sp, #0x20
00353f2c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00353f30  01 c0 a0 e3                                      mov ip, #1
00353f34  05 00 a0 e1                                      mov r0, r5
00353f38  14 20 8d e2                                      add r2, sp, #0x14
00353f3c  1c 30 8d e2                                      add r3, sp, #0x1c
00353f40  04 c0 8d e5                                      str ip, [sp, #4]
00353f44  00 c0 8d e5                                      str ip, [sp]
00353f48  eb f6 ff eb                                      bl #0x351afc
00353f4c  bf ff ff ea                                      b #0x353e50

; FUNCTION 0x00357780, declared_size=448, range_size=448, mode=arm
; class-group: void SceneManager
; alias: _ZN12SceneManager16renderCustomListIN6glitch5scene13CSceneManager17SDefaultNodeEntryEEEv31E_SCENE_NODE_CUSTOM_RENDER_PASSRSt6vectorIT_NS1_4core10SAllocatorIS7_LNS1_6memory13E_MEMORY_HINTE0EEEE
; demangled: void SceneManager::renderCustomList<glitch::scene::CSceneManager::SDefaultNodeEntry>(E_SCENE_NODE_CUSTOM_RENDER_PASS, std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >&)
; decoder-mode: arm
00357780  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00357784  08 00 51 e3                                      cmp r1, #8
00357788  09 30 a0 c3                                      movgt r3, #9
0035778c  74 31 80 c5                                      strgt r3, [r0, #0x174]
00357790  74 11 80 d5                                      strle r1, [r0, #0x174]
00357794  88 14 80 e5                                      str r1, [r0, #0x488]
00357798  04 10 92 e5                                      ldr r1, [r2, #4]
0035779c  00 60 92 e5                                      ldr r6, [r2]
003577a0  02 50 a0 e1                                      mov r5, r2
003577a4  08 20 92 e5                                      ldr r2, [r2, #8]
003577a8  34 d0 4d e2                                      sub sp, sp, #0x34
003577ac  00 30 a0 e3                                      mov r3, #0
003577b0  01 60 66 e0                                      rsb r6, r6, r1
003577b4  02 00 51 e1                                      cmp r1, r2
003577b8  00 40 a0 e1                                      mov r4, r0
003577bc  46 62 a0 e1                                      asr r6, r6, #4
003577c0  1c 30 8d e5                                      str r3, [sp, #0x1c]
003577c4  20 30 8d e5                                      str r3, [sp, #0x20]
003577c8  24 30 8d e5                                      str r3, [sp, #0x24]
003577cc  28 30 8d e5                                      str r3, [sp, #0x28]
003577d0  51 00 00 0a                                      beq #0x35791c
003577d4  00 30 81 e5                                      str r3, [r1]
003577d8  20 30 9d e5                                      ldr r3, [sp, #0x20]
003577dc  1c 70 8d e2                                      add r7, sp, #0x1c
003577e0  04 30 81 e5                                      str r3, [r1, #4]
003577e4  24 30 9d e5                                      ldr r3, [sp, #0x24]
003577e8  08 30 81 e5                                      str r3, [r1, #8]
003577ec  00 00 53 e3                                      cmp r3, #0
003577f0  00 20 93 15                                      ldrne r2, [r3]
003577f4  01 20 82 12                                      addne r2, r2, #1
003577f8  00 20 83 15                                      strne r2, [r3]
003577fc  28 30 9d e5                                      ldr r3, [sp, #0x28]
00357800  0c 30 81 e5                                      str r3, [r1, #0xc]
00357804  04 30 95 e5                                      ldr r3, [r5, #4]
00357808  10 30 83 e2                                      add r3, r3, #0x10
0035780c  04 30 85 e5                                      str r3, [r5, #4]
00357810  08 00 87 e2                                      add r0, r7, #8
00357814  88 e9 ff eb                                      bl #0x351e3c
00357818  00 20 95 e5                                      ldr r2, [r5]
0035781c  a8 e0 94 e5                                      ldr lr, [r4, #0xa8]
00357820  ac c0 94 e5                                      ldr ip, [r4, #0xac]
00357824  0c 10 92 e5                                      ldr r1, [r2, #0xc]
00357828  00 30 92 e5                                      ldr r3, [r2]
0035782c  b0 00 94 e5                                      ldr r0, [r4, #0xb0]
00357830  04 20 92 e5                                      ldr r2, [r2, #4]
00357834  00 00 56 e3                                      cmp r6, #0
00357838  9c e0 84 e5                                      str lr, [r4, #0x9c]
0035783c  a0 c0 84 e5                                      str ip, [r4, #0xa0]
00357840  a4 00 84 e5                                      str r0, [r4, #0xa4]
00357844  ac 20 84 e5                                      str r2, [r4, #0xac]
00357848  b0 10 84 e5                                      str r1, [r4, #0xb0]
0035784c  a8 30 84 e5                                      str r3, [r4, #0xa8]
00357850  17 00 00 0a                                      beq #0x3578b4
00357854  00 70 a0 e3                                      mov r7, #0
00357858  00 00 00 ea                                      b #0x357860
0035785c  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
00357860  00 00 95 e5                                      ldr r0, [r5]
00357864  01 70 87 e2                                      add r7, r7, #1
00357868  ac 10 94 e5                                      ldr r1, [r4, #0xac]
0035786c  07 22 80 e0                                      add r2, r0, r7, lsl #4
00357870  07 e2 90 e7                                      ldr lr, [r0, r7, lsl #4]
00357874  04 c0 92 e5                                      ldr ip, [r2, #4]
00357878  0c 00 92 e5                                      ldr r0, [r2, #0xc]
0035787c  b0 20 94 e5                                      ldr r2, [r4, #0xb0]
00357880  a8 e0 84 e5                                      str lr, [r4, #0xa8]
00357884  b0 00 84 e5                                      str r0, [r4, #0xb0]
00357888  ac c0 84 e5                                      str ip, [r4, #0xac]
0035788c  a4 20 84 e5                                      str r2, [r4, #0xa4]
00357890  9c 30 84 e5                                      str r3, [r4, #0x9c]
00357894  a0 10 84 e5                                      str r1, [r4, #0xa0]
00357898  03 00 a0 e1                                      mov r0, r3
0035789c  00 30 93 e5                                      ldr r3, [r3]
003578a0  0f e0 a0 e1                                      mov lr, pc
003578a4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
003578a8  06 00 57 e1                                      cmp r7, r6
003578ac  ea ff ff 1a                                      bne #0x35785c
003578b0  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
003578b4  04 10 95 e5                                      ldr r1, [r5, #4]
003578b8  b0 00 94 e5                                      ldr r0, [r4, #0xb0]
003578bc  ac c0 94 e5                                      ldr ip, [r4, #0xac]
003578c0  10 20 41 e2                                      sub r2, r1, #0x10
003578c4  0c e0 92 e5                                      ldr lr, [r2, #0xc]
003578c8  10 10 11 e5                                      ldr r1, [r1, #-0x10]
003578cc  04 20 92 e5                                      ldr r2, [r2, #4]
003578d0  0c 60 8d e2                                      add r6, sp, #0xc
003578d4  9c 30 84 e5                                      str r3, [r4, #0x9c]
003578d8  a4 00 84 e5                                      str r0, [r4, #0xa4]
003578dc  a8 10 84 e5                                      str r1, [r4, #0xa8]
003578e0  b0 e0 84 e5                                      str lr, [r4, #0xb0]
003578e4  a0 c0 84 e5                                      str ip, [r4, #0xa0]
003578e8  ac 20 84 e5                                      str r2, [r4, #0xac]
003578ec  00 30 a0 e3                                      mov r3, #0
003578f0  05 00 a0 e1                                      mov r0, r5
003578f4  06 10 a0 e1                                      mov r1, r6
003578f8  18 30 8d e5                                      str r3, [sp, #0x18]
003578fc  0c 30 8d e5                                      str r3, [sp, #0xc]
00357900  10 30 8d e5                                      str r3, [sp, #0x10]
00357904  14 30 8d e5                                      str r3, [sp, #0x14]
00357908  89 ff ff eb                                      bl #0x357734
0035790c  08 00 86 e2                                      add r0, r6, #8
00357910  49 e9 ff eb                                      bl #0x351e3c
00357914  34 d0 8d e2                                      add sp, sp, #0x34
00357918  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0035791c  1c 70 8d e2                                      add r7, sp, #0x1c
00357920  01 c0 a0 e3                                      mov ip, #1
00357924  05 00 a0 e1                                      mov r0, r5
00357928  07 20 a0 e1                                      mov r2, r7
0035792c  2c 30 8d e2                                      add r3, sp, #0x2c
00357930  04 c0 8d e5                                      str ip, [sp, #4]
00357934  00 c0 8d e5                                      str ip, [sp]
00357938  51 e9 ff eb                                      bl #0x351e84
0035793c  b3 ff ff ea                                      b #0x357810
