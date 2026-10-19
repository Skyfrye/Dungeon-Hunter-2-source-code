; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007c721c, declared_size=72, range_size=72, mode=arm
; class-group: void gameswf::array<gameswf::button_record>
; alias: _ZN7gameswf5arrayINS_13button_recordEE9push_backIS1_EEvRKT_
; demangled: void gameswf::array<gameswf::button_record>::push_back<gameswf::button_record>(gameswf::button_record const&)
; decoder-mode: arm
007c721c  70 40 2d e9                                      push {r4, r5, r6, lr}
007c7220  04 30 90 e5                                      ldr r3, [r0, #4]
007c7224  08 20 90 e5                                      ldr r2, [r0, #8]
007c7228  00 40 a0 e1                                      mov r4, r0
007c722c  01 50 83 e2                                      add r5, r3, #1
007c7230  02 00 55 e1                                      cmp r5, r2
007c7234  01 60 a0 e1                                      mov r6, r1
007c7238  02 00 00 da                                      ble #0x7c7248
007c723c  c5 10 85 e0                                      add r1, r5, r5, asr #1
007c7240  d3 ff ff eb                                      bl #0x7c7194
007c7244  04 30 94 e5                                      ldr r3, [r4, #4]
007c7248  00 20 94 e5                                      ldr r2, [r4]
007c724c  64 00 a0 e3                                      mov r0, #0x64
007c7250  06 10 a0 e1                                      mov r1, r6
007c7254  90 23 20 e0                                      mla r0, r0, r3, r2
007c7258  8b ff ff eb                                      bl #0x7c708c
007c725c  04 50 84 e5                                      str r5, [r4, #4]
007c7260  70 80 bd e8                                      pop {r4, r5, r6, pc}
