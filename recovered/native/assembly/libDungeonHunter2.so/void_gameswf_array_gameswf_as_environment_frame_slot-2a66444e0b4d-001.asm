; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007cd360, declared_size=100, range_size=100, mode=arm
; class-group: void gameswf::array<gameswf::as_environment::frame_slot>
; alias: _ZN7gameswf5arrayINS_14as_environment10frame_slotEE9push_backIS2_EEvRKT_
; demangled: void gameswf::array<gameswf::as_environment::frame_slot>::push_back<gameswf::as_environment::frame_slot>(gameswf::as_environment::frame_slot const&)
; decoder-mode: arm
007cd360  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007cd364  04 30 90 e5                                      ldr r3, [r0, #4]
007cd368  08 20 90 e5                                      ldr r2, [r0, #8]
007cd36c  00 40 a0 e1                                      mov r4, r0
007cd370  01 60 83 e2                                      add r6, r3, #1
007cd374  02 00 56 e1                                      cmp r6, r2
007cd378  01 70 a0 e1                                      mov r7, r1
007cd37c  0c 00 00 ca                                      bgt #0x7cd3b4
007cd380  00 50 94 e5                                      ldr r5, [r4]
007cd384  07 10 a0 e1                                      mov r1, r7
007cd388  83 52 85 e0                                      add r5, r5, r3, lsl #5
007cd38c  05 00 a0 e1                                      mov r0, r5
007cd390  25 17 fe eb                                      bl #0x75302c
007cd394  00 30 a0 e3                                      mov r3, #0
007cd398  15 30 c5 e5                                      strb r3, [r5, #0x15]
007cd39c  14 30 c5 e5                                      strb r3, [r5, #0x14]
007cd3a0  14 00 85 e2                                      add r0, r5, #0x14
007cd3a4  14 10 87 e2                                      add r1, r7, #0x14
007cd3a8  e3 28 ff eb                                      bl #0x79773c
007cd3ac  04 60 84 e5                                      str r6, [r4, #4]
007cd3b0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007cd3b4  c6 10 86 e0                                      add r1, r6, r6, asr #1
007cd3b8  f4 33 fe eb                                      bl #0x75a390
007cd3bc  04 30 94 e5                                      ldr r3, [r4, #4]
007cd3c0  ee ff ff ea                                      b #0x7cd380
