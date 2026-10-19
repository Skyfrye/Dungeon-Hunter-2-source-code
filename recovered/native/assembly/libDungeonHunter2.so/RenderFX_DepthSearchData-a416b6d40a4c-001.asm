; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007a8098, declared_size=248, range_size=248, mode=arm
; class-group: RenderFX::DepthSearchData
; alias: _ZN8RenderFX15DepthSearchData4InitEPN7gameswf9characterEPKc
; demangled: RenderFX::DepthSearchData::Init(gameswf::character*, char const*)
; decoder-mode: arm
007a8098  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007a809c  14 30 90 e5                                      ldr r3, [r0, #0x14]
007a80a0  00 40 a0 e1                                      mov r4, r0
007a80a4  01 50 a0 e1                                      mov r5, r1
007a80a8  00 00 53 e3                                      cmp r3, #0
007a80ac  02 70 a0 e1                                      mov r7, r2
007a80b0  2b 00 00 da                                      ble #0x7a8164
007a80b4  04 30 94 e5                                      ldr r3, [r4, #4]
007a80b8  00 00 a0 e3                                      mov r0, #0
007a80bc  14 00 84 e5                                      str r0, [r4, #0x14]
007a80c0  00 00 53 e1                                      cmp r3, r0
007a80c4  1e 00 00 da                                      ble #0x7a8144
007a80c8  08 20 94 e5                                      ldr r2, [r4, #8]
007a80cc  00 30 a0 e3                                      mov r3, #0
007a80d0  04 30 84 e5                                      str r3, [r4, #4]
007a80d4  03 00 52 e1                                      cmp r2, r3
007a80d8  14 60 94 e5                                      ldr r6, [r4, #0x14]
007a80dc  12 00 00 da                                      ble #0x7a812c
007a80e0  00 20 94 e5                                      ldr r2, [r4]
007a80e4  01 10 a0 e3                                      mov r1, #1
007a80e8  03 60 82 e7                                      str r6, [r2, r3]
007a80ec  14 30 94 e5                                      ldr r3, [r4, #0x14]
007a80f0  18 20 94 e5                                      ldr r2, [r4, #0x18]
007a80f4  04 10 84 e5                                      str r1, [r4, #4]
007a80f8  01 60 83 e0                                      add r6, r3, r1
007a80fc  02 00 56 e1                                      cmp r6, r2
007a8100  03 00 00 da                                      ble #0x7a8114
007a8104  10 00 84 e2                                      add r0, r4, #0x10
007a8108  56 11 86 e0                                      add r1, r6, r6, asr r1
007a810c  c2 ff ff eb                                      bl #0x7a801c
007a8110  14 30 94 e5                                      ldr r3, [r4, #0x14]
007a8114  10 20 94 e5                                      ldr r2, [r4, #0x10]
007a8118  83 11 82 e0                                      add r1, r2, r3, lsl #3
007a811c  04 70 81 e5                                      str r7, [r1, #4]
007a8120  83 51 82 e7                                      str r5, [r2, r3, lsl #3]
007a8124  14 60 84 e5                                      str r6, [r4, #0x14]
007a8128  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007a812c  04 00 a0 e1                                      mov r0, r4
007a8130  01 10 a0 e3                                      mov r1, #1
007a8134  a1 f0 fe eb                                      bl #0x7643c0
007a8138  04 30 94 e5                                      ldr r3, [r4, #4]
007a813c  03 31 a0 e1                                      lsl r3, r3, #2
007a8140  e6 ff ff ea                                      b #0x7a80e0
007a8144  df ff ff aa                                      bge #0x7a80c8
007a8148  03 21 a0 e1                                      lsl r2, r3, #2
007a814c  00 10 94 e5                                      ldr r1, [r4]
007a8150  01 30 93 e2                                      adds r3, r3, #1
007a8154  02 00 81 e7                                      str r0, [r1, r2]
007a8158  04 20 82 e2                                      add r2, r2, #4
007a815c  fa ff ff 1a                                      bne #0x7a814c
007a8160  d8 ff ff ea                                      b #0x7a80c8
007a8164  d2 ff ff aa                                      bge #0x7a80b4
007a8168  83 21 a0 e1                                      lsl r2, r3, #3
007a816c  00 00 a0 e3                                      mov r0, #0
007a8170  10 10 94 e5                                      ldr r1, [r4, #0x10]
007a8174  01 30 93 e2                                      adds r3, r3, #1
007a8178  02 c0 81 e0                                      add ip, r1, r2
007a817c  02 00 81 e7                                      str r0, [r1, r2]
007a8180  04 00 8c e5                                      str r0, [ip, #4]
007a8184  08 20 82 e2                                      add r2, r2, #8
007a8188  f8 ff ff 1a                                      bne #0x7a8170
007a818c  c8 ff ff ea                                      b #0x7a80b4

; FUNCTION 0x007a8190, declared_size=172, range_size=172, mode=arm
; class-group: RenderFX::DepthSearchData
; alias: _ZN8RenderFX15DepthSearchDataD1Ev
; demangled: RenderFX::DepthSearchData::~DepthSearchData()
; decoder-mode: arm
007a8190  70 40 2d e9                                      push {r4, r5, r6, lr}
007a8194  14 20 90 e5                                      ldr r2, [r0, #0x14]
007a8198  00 40 a0 e1                                      mov r4, r0
007a819c  10 00 80 e2                                      add r0, r0, #0x10
007a81a0  00 00 52 e3                                      cmp r2, #0
007a81a4  0c 00 00 da                                      ble #0x7a81dc
007a81a8  00 50 a0 e3                                      mov r5, #0
007a81ac  14 50 84 e5                                      str r5, [r4, #0x14]
007a81b0  05 10 a0 e1                                      mov r1, r5
007a81b4  98 ff ff eb                                      bl #0x7a801c
007a81b8  04 30 94 e5                                      ldr r3, [r4, #4]
007a81bc  05 00 53 e1                                      cmp r3, r5
007a81c0  10 00 00 da                                      ble #0x7a8208
007a81c4  00 10 a0 e3                                      mov r1, #0
007a81c8  04 00 a0 e1                                      mov r0, r4
007a81cc  04 10 84 e5                                      str r1, [r4, #4]
007a81d0  7a f0 fe eb                                      bl #0x7643c0
007a81d4  04 00 a0 e1                                      mov r0, r4
007a81d8  70 80 bd e8                                      pop {r4, r5, r6, pc}
007a81dc  f1 ff ff aa                                      bge #0x7a81a8
007a81e0  82 31 a0 e1                                      lsl r3, r2, #3
007a81e4  00 c0 a0 e3                                      mov ip, #0
007a81e8  10 10 94 e5                                      ldr r1, [r4, #0x10]
007a81ec  01 20 92 e2                                      adds r2, r2, #1
007a81f0  03 e0 81 e0                                      add lr, r1, r3
007a81f4  03 c0 81 e7                                      str ip, [r1, r3]
007a81f8  04 c0 8e e5                                      str ip, [lr, #4]
007a81fc  08 30 83 e2                                      add r3, r3, #8
007a8200  f8 ff ff 1a                                      bne #0x7a81e8
007a8204  e7 ff ff ea                                      b #0x7a81a8
007a8208  ed ff ff aa                                      bge #0x7a81c4
007a820c  03 21 a0 e1                                      lsl r2, r3, #2
007a8210  00 10 94 e5                                      ldr r1, [r4]
007a8214  01 30 93 e2                                      adds r3, r3, #1
007a8218  02 50 81 e7                                      str r5, [r1, r2]
007a821c  04 20 82 e2                                      add r2, r2, #4
007a8220  fa ff ff 1a                                      bne #0x7a8210
007a8224  00 10 a0 e3                                      mov r1, #0
007a8228  04 00 a0 e1                                      mov r0, r4
007a822c  04 10 84 e5                                      str r1, [r4, #4]
007a8230  62 f0 fe eb                                      bl #0x7643c0
007a8234  04 00 a0 e1                                      mov r0, r4
007a8238  70 80 bd e8                                      pop {r4, r5, r6, pc}
