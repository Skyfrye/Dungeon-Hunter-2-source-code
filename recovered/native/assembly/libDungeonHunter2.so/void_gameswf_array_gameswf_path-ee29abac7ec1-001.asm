; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00779c34, declared_size=72, range_size=72, mode=arm
; class-group: void gameswf::array<gameswf::path>
; alias: _ZN7gameswf5arrayINS_4pathEE9push_backIS1_EEvRKT_
; demangled: void gameswf::array<gameswf::path>::push_back<gameswf::path>(gameswf::path const&)
; decoder-mode: arm
00779c34  70 40 2d e9                                      push {r4, r5, r6, lr}
00779c38  04 30 90 e5                                      ldr r3, [r0, #4]
00779c3c  08 20 90 e5                                      ldr r2, [r0, #8]
00779c40  00 40 a0 e1                                      mov r4, r0
00779c44  01 50 83 e2                                      add r5, r3, #1
00779c48  02 00 55 e1                                      cmp r5, r2
00779c4c  01 60 a0 e1                                      mov r6, r1
00779c50  02 00 00 da                                      ble #0x779c60
00779c54  c5 10 85 e0                                      add r1, r5, r5, asr #1
00779c58  b3 9e ff eb                                      bl #0x76172c
00779c5c  04 30 94 e5                                      ldr r3, [r4, #4]
00779c60  00 20 94 e5                                      ldr r2, [r4]
00779c64  28 00 a0 e3                                      mov r0, #0x28
00779c68  06 10 a0 e1                                      mov r1, r6
00779c6c  90 23 20 e0                                      mla r0, r0, r3, r2
00779c70  7b ff ff eb                                      bl #0x779a64
00779c74  04 50 84 e5                                      str r5, [r4, #4]
00779c78  70 80 bd e8                                      pop {r4, r5, r6, pc}
