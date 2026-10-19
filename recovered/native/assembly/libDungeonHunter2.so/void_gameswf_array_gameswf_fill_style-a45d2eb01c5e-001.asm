; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00761970, declared_size=72, range_size=72, mode=arm
; class-group: void gameswf::array<gameswf::fill_style>
; alias: _ZN7gameswf5arrayINS_10fill_styleEE9push_backIS1_EEvRKT_
; demangled: void gameswf::array<gameswf::fill_style>::push_back<gameswf::fill_style>(gameswf::fill_style const&)
; decoder-mode: arm
00761970  70 40 2d e9                                      push {r4, r5, r6, lr}
00761974  04 30 90 e5                                      ldr r3, [r0, #4]
00761978  08 20 90 e5                                      ldr r2, [r0, #8]
0076197c  00 40 a0 e1                                      mov r4, r0
00761980  01 50 83 e2                                      add r5, r3, #1
00761984  02 00 55 e1                                      cmp r5, r2
00761988  01 60 a0 e1                                      mov r6, r1
0076198c  02 00 00 da                                      ble #0x76199c
00761990  c5 10 85 e0                                      add r1, r5, r5, asr #1
00761994  92 fe ff eb                                      bl #0x7613e4
00761998  04 30 94 e5                                      ldr r3, [r4, #4]
0076199c  00 20 94 e5                                      ldr r2, [r4]
007619a0  54 00 a0 e3                                      mov r0, #0x54
007619a4  06 10 a0 e1                                      mov r1, r6
007619a8  90 23 20 e0                                      mla r0, r0, r3, r2
007619ac  b1 ff ff eb                                      bl #0x761878
007619b0  04 50 84 e5                                      str r5, [r4, #4]
007619b4  70 80 bd e8                                      pop {r4, r5, r6, pc}
