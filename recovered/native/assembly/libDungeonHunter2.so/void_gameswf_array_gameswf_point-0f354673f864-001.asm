; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00785688, declared_size=76, range_size=76, mode=arm
; class-group: void gameswf::array<gameswf::point>
; alias: _ZN7gameswf5arrayINS_5pointEE9push_backIS1_EEvRKT_
; demangled: void gameswf::array<gameswf::point>::push_back<gameswf::point>(gameswf::point const&)
; decoder-mode: arm
00785688  70 40 2d e9                                      push {r4, r5, r6, lr}
0078568c  04 30 90 e5                                      ldr r3, [r0, #4]
00785690  08 20 90 e5                                      ldr r2, [r0, #8]
00785694  00 40 a0 e1                                      mov r4, r0
00785698  01 50 83 e2                                      add r5, r3, #1
0078569c  02 00 55 e1                                      cmp r5, r2
007856a0  01 60 a0 e1                                      mov r6, r1
007856a4  02 00 00 da                                      ble #0x7856b4
007856a8  c5 10 85 e0                                      add r1, r5, r5, asr #1
007856ac  d6 ff ff eb                                      bl #0x78560c
007856b0  04 30 94 e5                                      ldr r3, [r4, #4]
007856b4  00 20 94 e5                                      ldr r2, [r4]
007856b8  00 00 96 e5                                      ldr r0, [r6]
007856bc  83 11 82 e0                                      add r1, r2, r3, lsl #3
007856c0  83 01 82 e7                                      str r0, [r2, r3, lsl #3]
007856c4  04 30 96 e5                                      ldr r3, [r6, #4]
007856c8  04 30 81 e5                                      str r3, [r1, #4]
007856cc  04 50 84 e5                                      str r5, [r4, #4]
007856d0  70 80 bd e8                                      pop {r4, r5, r6, pc}
