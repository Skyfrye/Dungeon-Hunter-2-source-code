; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00412160, declared_size=152, range_size=152, mode=arm
; class-group: gameswf::character::custom
; alias: _ZN7gameswf9character6customC1Ev
; demangled: gameswf::character::custom::custom()
; decoder-mode: arm
00412160  70 00 2d e9                                      push {r4, r5, r6}
00412164  5c 40 90 e5                                      ldr r4, [r0, #0x5c]
00412168  00 20 e0 e3                                      mvn r2, #0
0041216c  fe 15 a0 e3                                      mov r1, #0x3f800000
00412170  12 40 d7 e7                                      bfi r4, r2, #0, #0x18
00412174  24 5c a0 e1                                      lsr r5, r4, #0x18
00412178  00 20 a0 e3                                      mov r2, #0
0041217c  00 c0 a0 e3                                      mov ip, #0
00412180  12 50 c0 e7                                      bfi r5, r2, #0, #1
00412184  01 60 a0 e3                                      mov r6, #1
00412188  5c 40 80 e5                                      str r4, [r0, #0x5c]
0041218c  68 20 80 e5                                      str r2, [r0, #0x68]
00412190  1c c0 80 e5                                      str ip, [r0, #0x1c]
00412194  30 10 80 e5                                      str r1, [r0, #0x30]
00412198  4c 60 c0 e5                                      strb r6, [r0, #0x4c]
0041219c  5f 50 c0 e5                                      strb r5, [r0, #0x5f]
004121a0  00 10 80 e5                                      str r1, [r0]
004121a4  08 10 80 e5                                      str r1, [r0, #8]
004121a8  10 10 80 e5                                      str r1, [r0, #0x10]
004121ac  18 10 80 e5                                      str r1, [r0, #0x18]
004121b0  04 c0 80 e5                                      str ip, [r0, #4]
004121b4  0c c0 80 e5                                      str ip, [r0, #0xc]
004121b8  14 c0 80 e5                                      str ip, [r0, #0x14]
004121bc  24 20 80 e5                                      str r2, [r0, #0x24]
004121c0  28 20 80 e5                                      str r2, [r0, #0x28]
004121c4  2c 20 80 e5                                      str r2, [r0, #0x2c]
004121c8  34 20 80 e5                                      str r2, [r0, #0x34]
004121cc  20 10 80 e5                                      str r1, [r0, #0x20]
004121d0  38 20 80 e5                                      str r2, [r0, #0x38]
004121d4  3c 20 80 e5                                      str r2, [r0, #0x3c]
004121d8  40 20 80 e5                                      str r2, [r0, #0x40]
004121dc  44 20 80 e5                                      str r2, [r0, #0x44]
004121e0  48 20 c0 e5                                      strb r2, [r0, #0x48]
004121e4  4d 20 c0 e5                                      strb r2, [r0, #0x4d]
004121e8  60 20 80 e5                                      str r2, [r0, #0x60]
004121ec  64 20 80 e5                                      str r2, [r0, #0x64]
004121f0  70 00 bd e8                                      pop {r4, r5, r6}
004121f4  1e ff 2f e1                                      bx lr

; FUNCTION 0x007533c0, declared_size=176, range_size=176, mode=arm
; class-group: gameswf::character::custom
; alias: _ZN7gameswf9character6customD1Ev
; demangled: gameswf::character::custom::~custom()
; decoder-mode: arm
007533c0  10 40 2d e9                                      push {r4, lr}
007533c4  dc 34 d0 e1                                      ldrsb r3, [r0, #0x4c]
007533c8  00 40 a0 e1                                      mov r4, r0
007533cc  01 00 73 e3                                      cmn r3, #1
007533d0  08 00 00 0a                                      beq #0x7533f8
007533d4  40 c0 94 e5                                      ldr ip, [r4, #0x40]
007533d8  3c 00 84 e2                                      add r0, r4, #0x3c
007533dc  00 00 5c e3                                      cmp ip, #0
007533e0  08 00 00 da                                      ble #0x753408
007533e4  00 10 a0 e3                                      mov r1, #0
007533e8  40 10 84 e5                                      str r1, [r4, #0x40]
007533ec  b5 fe ff eb                                      bl #0x752ec8
007533f0  04 00 a0 e1                                      mov r0, r4
007533f4  10 80 bd e8                                      pop {r4, pc}
007533f8  58 00 90 e5                                      ldr r0, [r0, #0x58]
007533fc  54 10 94 e5                                      ldr r1, [r4, #0x54]
00753400  cc fd ff eb                                      bl #0x752b38
00753404  f2 ff ff ea                                      b #0x7533d4
00753408  f5 ff ff aa                                      bge #0x7533e4
0075340c  2c 10 a0 e3                                      mov r1, #0x2c
00753410  91 0c 01 e0                                      mul r1, r1, ip
00753414  00 20 a0 e3                                      mov r2, #0
00753418  00 e0 90 e5                                      ldr lr, [r0]
0075341c  01 c0 9c e2                                      adds ip, ip, #1
00753420  01 30 8e e0                                      add r3, lr, r1
00753424  04 30 83 e2                                      add r3, r3, #4
00753428  01 20 8e e7                                      str r2, [lr, r1]
0075342c  04 20 83 e4                                      str r2, [r3], #4
00753430  04 20 83 e4                                      str r2, [r3], #4
00753434  04 20 83 e4                                      str r2, [r3], #4
00753438  04 20 83 e4                                      str r2, [r3], #4
0075343c  04 20 83 e4                                      str r2, [r3], #4
00753440  04 20 83 e4                                      str r2, [r3], #4
00753444  04 20 83 e4                                      str r2, [r3], #4
00753448  04 20 83 e4                                      str r2, [r3], #4
0075344c  04 20 83 e4                                      str r2, [r3], #4
00753450  00 20 83 e5                                      str r2, [r3]
00753454  2c 10 81 e2                                      add r1, r1, #0x2c
00753458  ee ff ff 1a                                      bne #0x753418
0075345c  00 10 a0 e3                                      mov r1, #0
00753460  40 10 84 e5                                      str r1, [r4, #0x40]
00753464  97 fe ff eb                                      bl #0x752ec8
00753468  04 00 a0 e1                                      mov r0, r4
0075346c  10 80 bd e8                                      pop {r4, pc}
