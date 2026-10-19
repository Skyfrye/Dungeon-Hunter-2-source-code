; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00317848, declared_size=4, range_size=4, mode=arm
; class-group: sys
; alias: _ZN3sys13printNoFormatEPKc
; demangled: sys::printNoFormat(char const*)
; decoder-mode: arm
00317848  8d d9 ff ea                                      b #0x30de84

; FUNCTION 0x0031784c, declared_size=200, range_size=200, mode=arm
; class-group: sys
; alias: _ZN3sys5printEPKcz
; demangled: sys::print(char const*, ...)
; decoder-mode: arm
0031784c  0f 00 2d e9                                      push {r0, r1, r2, r3}
00317850  b0 c0 9f e5                                      ldr ip, [pc, #0xb0]
00317854  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00317858  ac 30 9f e5                                      ldr r3, [pc, #0xac]
0031785c  0c c0 8f e0                                      add ip, pc, ip
00317860  43 de 4d e2                                      sub sp, sp, #0x430
00317864  03 40 9c e7                                      ldr r4, [ip, r3]
00317868  04 d0 4d e2                                      sub sp, sp, #4
0031786c  10 60 8d e2                                      add r6, sp, #0x10
00317870  00 70 94 e5                                      ldr r7, [r4]
00317874  11 ed 8d e2                                      add lr, sp, #0x440
00317878  0c e0 8e e2                                      add lr, lr, #0xc
0031787c  04 50 46 e2                                      sub r5, r6, #4
00317880  0e 30 a0 e1                                      mov r3, lr
00317884  48 24 9d e5                                      ldr r2, [sp, #0x448]
00317888  01 1b a0 e3                                      mov r1, #0x400
0031788c  05 00 a0 e1                                      mov r0, r5
00317890  08 e0 8d e5                                      str lr, [sp, #8]
00317894  2c 74 8d e5                                      str r7, [sp, #0x42c]
00317898  97 dc ff eb                                      bl #0x30eafc
0031789c  00 00 a0 e3                                      mov r0, #0
003178a0  36 db ff eb                                      bl #0x30e580
003178a4  04 00 8d e5                                      str r0, [sp, #4]
003178a8  0c 00 46 e2                                      sub r0, r6, #0xc
003178ac  0b dc ff eb                                      bl #0x30e8e0
003178b0  58 20 9f e5                                      ldr r2, [pc, #0x58]
003178b4  01 6b 8d e2                                      add r6, sp, #0x400
003178b8  0c 60 86 e2                                      add r6, r6, #0xc
003178bc  00 30 a0 e1                                      mov r3, r0
003178c0  02 20 8f e0                                      add r2, pc, r2
003178c4  1e 10 a0 e3                                      mov r1, #0x1e
003178c8  06 00 a0 e1                                      mov r0, r6
003178cc  61 db ff eb                                      bl #0x30e658
003178d0  06 00 a0 e1                                      mov r0, r6
003178d4  db ff ff eb                                      bl #0x317848
003178d8  05 00 a0 e1                                      mov r0, r5
003178dc  d9 ff ff eb                                      bl #0x317848
003178e0  2c 24 9d e5                                      ldr r2, [sp, #0x42c]
003178e4  00 30 94 e5                                      ldr r3, [r4]
003178e8  03 00 52 e1                                      cmp r2, r3
003178ec  04 00 00 1a                                      bne #0x317904
003178f0  34 d0 8d e2                                      add sp, sp, #0x34
003178f4  01 db 8d e2                                      add sp, sp, #0x400
003178f8  f0 40 bd e8                                      pop {r4, r5, r6, r7, lr}
003178fc  10 d0 8d e2                                      add sp, sp, #0x10
00317900  1e ff 2f e1                                      bx lr
00317904  81 da ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00317908  34 d2 67 00 ac 40 00 00 d8 6d 5a 00              .byte 0x34, 0xd2, 0x67, 0x00, 0xac, 0x40, 0x00, 0x00, 0xd8, 0x6d, 0x5a, 0x00

; FUNCTION 0x00317914, declared_size=216, range_size=216, mode=arm
; class-group: sys
; alias: _ZN3sys7printlnEPKcz
; demangled: sys::println(char const*, ...)
; decoder-mode: arm
00317914  0f 00 2d e9                                      push {r0, r1, r2, r3}
00317918  bc c0 9f e5                                      ldr ip, [pc, #0xbc]
0031791c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00317920  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
00317924  0c c0 8f e0                                      add ip, pc, ip
00317928  43 de 4d e2                                      sub sp, sp, #0x430
0031792c  03 40 9c e7                                      ldr r4, [ip, r3]
00317930  04 d0 4d e2                                      sub sp, sp, #4
00317934  10 60 8d e2                                      add r6, sp, #0x10
00317938  00 70 94 e5                                      ldr r7, [r4]
0031793c  11 ed 8d e2                                      add lr, sp, #0x440
00317940  0c e0 8e e2                                      add lr, lr, #0xc
00317944  04 50 46 e2                                      sub r5, r6, #4
00317948  0e 30 a0 e1                                      mov r3, lr
0031794c  48 24 9d e5                                      ldr r2, [sp, #0x448]
00317950  01 1b a0 e3                                      mov r1, #0x400
00317954  05 00 a0 e1                                      mov r0, r5
00317958  08 e0 8d e5                                      str lr, [sp, #8]
0031795c  2c 74 8d e5                                      str r7, [sp, #0x42c]
00317960  65 dc ff eb                                      bl #0x30eafc
00317964  00 00 a0 e3                                      mov r0, #0
00317968  04 db ff eb                                      bl #0x30e580
0031796c  04 00 8d e5                                      str r0, [sp, #4]
00317970  0c 00 46 e2                                      sub r0, r6, #0xc
00317974  d9 db ff eb                                      bl #0x30e8e0
00317978  64 20 9f e5                                      ldr r2, [pc, #0x64]
0031797c  01 6b 8d e2                                      add r6, sp, #0x400
00317980  0c 60 86 e2                                      add r6, r6, #0xc
00317984  00 30 a0 e1                                      mov r3, r0
00317988  02 20 8f e0                                      add r2, pc, r2
0031798c  1e 10 a0 e3                                      mov r1, #0x1e
00317990  06 00 a0 e1                                      mov r0, r6
00317994  2f db ff eb                                      bl #0x30e658
00317998  06 00 a0 e1                                      mov r0, r6
0031799c  a9 ff ff eb                                      bl #0x317848
003179a0  05 00 a0 e1                                      mov r0, r5
003179a4  a7 ff ff eb                                      bl #0x317848
003179a8  38 00 9f e5                                      ldr r0, [pc, #0x38]
003179ac  00 00 8f e0                                      add r0, pc, r0
003179b0  a4 ff ff eb                                      bl #0x317848
003179b4  2c 24 9d e5                                      ldr r2, [sp, #0x42c]
003179b8  00 30 94 e5                                      ldr r3, [r4]
003179bc  03 00 52 e1                                      cmp r2, r3
003179c0  04 00 00 1a                                      bne #0x3179d8
003179c4  34 d0 8d e2                                      add sp, sp, #0x34
003179c8  01 db 8d e2                                      add sp, sp, #0x400
003179cc  f0 40 bd e8                                      pop {r4, r5, r6, r7, lr}
003179d0  10 d0 8d e2                                      add sp, sp, #0x10
003179d4  1e ff 2f e1                                      bx lr
003179d8  4c da ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003179dc  6c d1 67 00 ac 40 00 00 10 6d 5a 00 44 40 5b 00  .byte 0x6c, 0xd1, 0x67, 0x00, 0xac, 0x40, 0x00, 0x00, 0x10, 0x6d, 0x5a, 0x00, 0x44, 0x40, 0x5b, 0x00
