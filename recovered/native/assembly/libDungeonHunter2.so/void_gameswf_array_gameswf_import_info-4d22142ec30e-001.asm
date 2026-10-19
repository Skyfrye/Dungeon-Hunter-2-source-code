; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00767498, declared_size=100, range_size=100, mode=arm
; class-group: void gameswf::array<gameswf::import_info>
; alias: _ZN7gameswf5arrayINS_11import_infoEE9push_backIS1_EEvRKT_
; demangled: void gameswf::array<gameswf::import_info>::push_back<gameswf::import_info>(gameswf::import_info const&)
; decoder-mode: arm
00767498  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0076749c  04 30 90 e5                                      ldr r3, [r0, #4]
007674a0  08 20 90 e5                                      ldr r2, [r0, #8]
007674a4  00 40 a0 e1                                      mov r4, r0
007674a8  01 70 83 e2                                      add r7, r3, #1
007674ac  02 00 57 e1                                      cmp r7, r2
007674b0  01 60 a0 e1                                      mov r6, r1
007674b4  0c 00 00 ca                                      bgt #0x7674ec
007674b8  00 20 94 e5                                      ldr r2, [r4]
007674bc  2c 50 a0 e3                                      mov r5, #0x2c
007674c0  06 10 a0 e1                                      mov r1, r6
007674c4  95 23 25 e0                                      mla r5, r5, r3, r2
007674c8  05 00 a0 e1                                      mov r0, r5
007674cc  d6 ae ff eb                                      bl #0x75302c
007674d0  14 30 96 e5                                      ldr r3, [r6, #0x14]
007674d4  18 00 85 e2                                      add r0, r5, #0x18
007674d8  18 10 86 e2                                      add r1, r6, #0x18
007674dc  14 30 85 e5                                      str r3, [r5, #0x14]
007674e0  d1 ae ff eb                                      bl #0x75302c
007674e4  04 70 84 e5                                      str r7, [r4, #4]
007674e8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007674ec  c7 10 87 e0                                      add r1, r7, r7, asr #1
007674f0  74 f4 ff eb                                      bl #0x7646c8
007674f4  04 30 94 e5                                      ldr r3, [r4, #4]
007674f8  ee ff ff ea                                      b #0x7674b8
