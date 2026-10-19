; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0082138c, declared_size=96, range_size=96, mode=arm
; class-group: tGLRoomInfo
; alias: _ZN11tGLRoomInfoD1Ev
; demangled: tGLRoomInfo::~tGLRoomInfo()
; decoder-mode: arm
0082138c  10 40 2d e9                                      push {r4, lr}
00821390  00 40 a0 e1                                      mov r4, r0
00821394  04 00 90 e5                                      ldr r0, [r0, #4]
00821398  00 00 50 e3                                      cmp r0, #0
0082139c  02 00 00 0a                                      beq #0x8213ac
008213a0  26 bc eb eb                                      bl #0x310440
008213a4  00 30 a0 e3                                      mov r3, #0
008213a8  04 30 84 e5                                      str r3, [r4, #4]
008213ac  08 00 94 e5                                      ldr r0, [r4, #8]
008213b0  00 00 50 e3                                      cmp r0, #0
008213b4  02 00 00 0a                                      beq #0x8213c4
008213b8  20 bc eb eb                                      bl #0x310440
008213bc  00 30 a0 e3                                      mov r3, #0
008213c0  08 30 84 e5                                      str r3, [r4, #8]
008213c4  20 00 94 e5                                      ldr r0, [r4, #0x20]
008213c8  00 00 50 e3                                      cmp r0, #0
008213cc  02 00 00 0a                                      beq #0x8213dc
008213d0  1a bc eb eb                                      bl #0x310440
008213d4  00 30 a0 e3                                      mov r3, #0
008213d8  20 30 84 e5                                      str r3, [r4, #0x20]
008213dc  00 30 a0 e3                                      mov r3, #0
008213e0  24 30 84 e5                                      str r3, [r4, #0x24]
008213e4  04 00 a0 e1                                      mov r0, r4
008213e8  10 80 bd e8                                      pop {r4, pc}
