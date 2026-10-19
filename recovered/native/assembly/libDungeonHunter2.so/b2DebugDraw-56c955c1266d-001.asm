; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007e8c44, declared_size=4, range_size=4, mode=arm
; class-group: b2DebugDraw
; alias: _ZN11b2DebugDrawD1Ev
; demangled: b2DebugDraw::~b2DebugDraw()
; decoder-mode: arm
007e8c44  1e ff 2f e1                                      bx lr

; FUNCTION 0x007e8c9c, declared_size=44, range_size=44, mode=arm
; class-group: b2DebugDraw
; alias: _ZN11b2DebugDrawC2Ev
; demangled: b2DebugDraw::b2DebugDraw()
; decoder-mode: arm
007e8c9c  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
007e8ca0  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
007e8ca4  00 c0 a0 e3                                      mov ip, #0
007e8ca8  03 30 8f e0                                      add r3, pc, r3
007e8cac  02 20 93 e7                                      ldr r2, [r3, r2]
007e8cb0  04 c0 80 e5                                      str ip, [r0, #4]
007e8cb4  08 20 82 e2                                      add r2, r2, #8
007e8cb8  00 20 80 e5                                      str r2, [r0]
007e8cbc  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
007e8cc0  e8 bd 1a 00 f8 13 00 00                          .byte 0xe8, 0xbd, 0x1a, 0x00, 0xf8, 0x13, 0x00, 0x00

; FUNCTION 0x007e8cc8, declared_size=44, range_size=44, mode=arm
; class-group: b2DebugDraw
; alias: _ZN11b2DebugDrawC1Ev
; demangled: b2DebugDraw::b2DebugDraw()
; decoder-mode: arm
007e8cc8  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
007e8ccc  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
007e8cd0  00 c0 a0 e3                                      mov ip, #0
007e8cd4  03 30 8f e0                                      add r3, pc, r3
007e8cd8  02 20 93 e7                                      ldr r2, [r3, r2]
007e8cdc  04 c0 80 e5                                      str ip, [r0, #4]
007e8ce0  08 20 82 e2                                      add r2, r2, #8
007e8ce4  00 20 80 e5                                      str r2, [r0]
007e8ce8  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
007e8cec  bc bd 1a 00 f8 13 00 00                          .byte 0xbc, 0xbd, 0x1a, 0x00, 0xf8, 0x13, 0x00, 0x00

; FUNCTION 0x007e8cf4, declared_size=8, range_size=8, mode=arm
; class-group: b2DebugDraw
; alias: _ZN11b2DebugDraw8SetFlagsEj
; demangled: b2DebugDraw::SetFlags(unsigned int)
; decoder-mode: arm
007e8cf4  04 10 80 e5                                      str r1, [r0, #4]
007e8cf8  1e ff 2f e1                                      bx lr

; FUNCTION 0x007e8cfc, declared_size=8, range_size=8, mode=arm
; class-group: b2DebugDraw
; alias: _ZNK11b2DebugDraw8GetFlagsEv
; demangled: b2DebugDraw::GetFlags() const
; decoder-mode: arm
007e8cfc  04 00 90 e5                                      ldr r0, [r0, #4]
007e8d00  1e ff 2f e1                                      bx lr

; FUNCTION 0x007e8d04, declared_size=16, range_size=16, mode=arm
; class-group: b2DebugDraw
; alias: _ZN11b2DebugDraw11AppendFlagsEj
; demangled: b2DebugDraw::AppendFlags(unsigned int)
; decoder-mode: arm
007e8d04  04 30 90 e5                                      ldr r3, [r0, #4]
007e8d08  01 30 83 e1                                      orr r3, r3, r1
007e8d0c  04 30 80 e5                                      str r3, [r0, #4]
007e8d10  1e ff 2f e1                                      bx lr

; FUNCTION 0x007e8d14, declared_size=16, range_size=16, mode=arm
; class-group: b2DebugDraw
; alias: _ZN11b2DebugDraw10ClearFlagsEj
; demangled: b2DebugDraw::ClearFlags(unsigned int)
; decoder-mode: arm
007e8d14  04 30 90 e5                                      ldr r3, [r0, #4]
007e8d18  01 30 c3 e1                                      bic r3, r3, r1
007e8d1c  04 30 80 e5                                      str r3, [r0, #4]
007e8d20  1e ff 2f e1                                      bx lr

; FUNCTION 0x007e8d38, declared_size=20, range_size=20, mode=arm
; class-group: b2DebugDraw
; alias: _ZN11b2DebugDrawD0Ev
; demangled: b2DebugDraw::~b2DebugDraw()
; decoder-mode: arm
007e8d38  10 40 2d e9                                      push {r4, lr}
007e8d3c  00 40 a0 e1                                      mov r4, r0
007e8d40  5a 95 ec eb                                      bl #0x30e2b0
007e8d44  04 00 a0 e1                                      mov r0, r4
007e8d48  10 80 bd e8                                      pop {r4, pc}
