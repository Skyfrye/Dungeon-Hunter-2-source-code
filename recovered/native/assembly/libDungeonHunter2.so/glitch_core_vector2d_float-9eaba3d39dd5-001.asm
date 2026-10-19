; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00420060, declared_size=584, range_size=584, mode=arm
; class-group: glitch::core::vector2d<float>
; alias: _ZNK6glitch4core8vector2dIfE8getAngleEv
; demangled: glitch::core::vector2d<float>::getAngle() const
; decoder-mode: arm
00420060  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00420064  04 50 90 e5                                      ldr r5, [r0, #4]
00420068  00 40 a0 e1                                      mov r4, r0
0042006c  00 10 a0 e3                                      mov r1, #0
00420070  05 00 a0 e1                                      mov r0, r5
00420074  c4 b7 fb eb                                      bl #0x30df8c
00420078  00 00 50 e3                                      cmp r0, #0
0042007c  0a 00 00 0a                                      beq #0x4200ac
00420080  00 00 94 e5                                      ldr r0, [r4]
00420084  00 10 a0 e3                                      mov r1, #0
00420088  9f b9 fb eb                                      bl #0x30e70c
0042008c  00 00 50 e3                                      cmp r0, #0
00420090  00 70 08 13                                      movwne r7, #0x8000
00420094  00 60 a0 e3                                      mov r6, #0
00420098  00 70 a0 03                                      moveq r7, #0
0042009c  66 70 44 13                                      movtne r7, #0x4066
004200a0  06 00 a0 e1                                      mov r0, r6
004200a4  07 10 a0 e1                                      mov r1, r7
004200a8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004200ac  00 60 94 e5                                      ldr r6, [r4]
004200b0  00 10 a0 e3                                      mov r1, #0
004200b4  06 00 a0 e1                                      mov r0, r6
004200b8  b3 b7 fb eb                                      bl #0x30df8c
004200bc  00 00 50 e3                                      cmp r0, #0
004200c0  0b 00 00 0a                                      beq #0x4200f4
004200c4  05 00 a0 e1                                      mov r0, r5
004200c8  00 10 a0 e3                                      mov r1, #0
004200cc  8e b9 fb eb                                      bl #0x30e70c
004200d0  00 00 50 e3                                      cmp r0, #0
004200d4  00 70 0e 03                                      movweq r7, #0xe000
004200d8  00 70 08 13                                      movwne r7, #0x8000
004200dc  00 60 a0 e3                                      mov r6, #0
004200e0  70 70 44 03                                      movteq r7, #0x4070
004200e4  56 70 44 13                                      movtne r7, #0x4056
004200e8  06 00 a0 e1                                      mov r0, r6
004200ec  07 10 a0 e1                                      mov r1, r7
004200f0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004200f4  06 10 a0 e1                                      mov r1, r6
004200f8  06 00 a0 e1                                      mov r0, r6
004200fc  1a bb fb eb                                      bl #0x30ed6c
00420100  05 10 a0 e1                                      mov r1, r5
00420104  00 60 a0 e1                                      mov r6, r0
00420108  05 00 a0 e1                                      mov r0, r5
0042010c  16 bb fb eb                                      bl #0x30ed6c
00420110  00 10 a0 e1                                      mov r1, r0
00420114  06 00 a0 e1                                      mov r0, r6
00420118  a1 ba fb eb                                      bl #0x30eba4
0042011c  e0 b9 fb eb                                      bl #0x30e8a4
00420120  26 b8 fb eb                                      bl #0x30e1c0
00420124  5d b9 fb eb                                      bl #0x30e6a0
00420128  00 10 a0 e1                                      mov r1, r0
0042012c  05 00 a0 e1                                      mov r0, r5
00420130  d7 ba fb eb                                      bl #0x30ec94
00420134  da b9 fb eb                                      bl #0x30e8a4
00420138  00 20 a0 e1                                      mov r2, r0
0042013c  01 30 a0 e1                                      mov r3, r1
00420140  00 60 a0 e1                                      mov r6, r0
00420144  01 70 a0 e1                                      mov r7, r1
00420148  59 ba fb eb                                      bl #0x30eab4
0042014c  01 30 a0 e1                                      mov r3, r1
00420150  ff 15 a0 e3                                      mov r1, #0x3fc00000
00420154  00 20 a0 e1                                      mov r2, r0
00420158  03 16 81 e2                                      add r1, r1, #0x300000
0042015c  00 00 a0 e3                                      mov r0, #0
00420160  f1 b8 fb eb                                      bl #0x30e52c
00420164  15 b8 fb eb                                      bl #0x30e1c0
00420168  06 20 a0 e1                                      mov r2, r6
0042016c  07 30 a0 e1                                      mov r3, r7
00420170  72 b8 fb eb                                      bl #0x30e340
00420174  ea ba fb eb                                      bl #0x30ed24
00420178  f8 21 0c e3                                      movw r2, #0xc1f8
0042017c  dc 35 0a e3                                      movw r3, #0xa5dc
00420180  63 2a 41 e3                                      movt r2, #0x1a63
00420184  4c 30 44 e3                                      movt r3, #0x404c
00420188  49 ba fb eb                                      bl #0x30eab4
0042018c  00 50 94 e5                                      ldr r5, [r4]
00420190  00 60 a0 e1                                      mov r6, r0
00420194  01 70 a0 e1                                      mov r7, r1
00420198  05 00 a0 e1                                      mov r0, r5
0042019c  00 10 a0 e3                                      mov r1, #0
004201a0  54 b8 fb eb                                      bl #0x30e2f8
004201a4  00 00 50 e3                                      cmp r0, #0
004201a8  0a 00 00 0a                                      beq #0x4201d8
004201ac  04 80 94 e5                                      ldr r8, [r4, #4]
004201b0  00 10 a0 e3                                      mov r1, #0
004201b4  08 00 a0 e1                                      mov r0, r8
004201b8  4e b8 fb eb                                      bl #0x30e2f8
004201bc  00 00 50 e3                                      cmp r0, #0
004201c0  1d 00 00 1a                                      bne #0x42023c
004201c4  08 00 a0 e1                                      mov r0, r8
004201c8  00 10 a0 e3                                      mov r1, #0
004201cc  4e b9 fb eb                                      bl #0x30e70c
004201d0  00 00 50 e3                                      cmp r0, #0
004201d4  21 00 00 1a                                      bne #0x420260
004201d8  05 00 a0 e1                                      mov r0, r5
004201dc  00 10 a0 e3                                      mov r1, #0
004201e0  49 b9 fb eb                                      bl #0x30e70c
004201e4  00 00 50 e3                                      cmp r0, #0
004201e8  ac ff ff 0a                                      beq #0x4200a0
004201ec  04 40 94 e5                                      ldr r4, [r4, #4]
004201f0  00 10 a0 e3                                      mov r1, #0
004201f4  04 00 a0 e1                                      mov r0, r4
004201f8  43 b9 fb eb                                      bl #0x30e70c
004201fc  00 00 50 e3                                      cmp r0, #0
00420200  1f 00 00 1a                                      bne #0x420284
00420204  04 00 a0 e1                                      mov r0, r4
00420208  00 10 a0 e3                                      mov r1, #0
0042020c  39 b8 fb eb                                      bl #0x30e2f8
00420210  00 00 50 e3                                      cmp r0, #0
00420214  a1 ff ff 0a                                      beq #0x4200a0
00420218  00 10 0e e3                                      movw r1, #0xe000
0042021c  06 20 a0 e1                                      mov r2, r6
00420220  07 30 a0 e1                                      mov r3, r7
00420224  00 00 a0 e3                                      mov r0, #0
00420228  70 10 44 e3                                      movt r1, #0x4070
0042022c  be b8 fb eb                                      bl #0x30e52c
00420230  00 60 a0 e1                                      mov r6, r0
00420234  01 70 a0 e1                                      mov r7, r1
00420238  98 ff ff ea                                      b #0x4200a0
0042023c  00 30 0e e3                                      movw r3, #0xe000
00420240  06 00 a0 e1                                      mov r0, r6
00420244  07 10 a0 e1                                      mov r1, r7
00420248  00 20 a0 e3                                      mov r2, #0
0042024c  70 30 44 e3                                      movt r3, #0x4070
00420250  3b ba fb eb                                      bl #0x30eb44
00420254  00 60 a0 e1                                      mov r6, r0
00420258  01 70 a0 e1                                      mov r7, r1
0042025c  8f ff ff ea                                      b #0x4200a0
00420260  00 30 08 e3                                      movw r3, #0x8000
00420264  06 00 a0 e1                                      mov r0, r6
00420268  07 10 a0 e1                                      mov r1, r7
0042026c  00 20 a0 e3                                      mov r2, #0
00420270  56 30 44 e3                                      movt r3, #0x4056
00420274  32 ba fb eb                                      bl #0x30eb44
00420278  00 60 a0 e1                                      mov r6, r0
0042027c  01 70 a0 e1                                      mov r7, r1
00420280  86 ff ff ea                                      b #0x4200a0
00420284  00 10 08 e3                                      movw r1, #0x8000
00420288  06 20 a0 e1                                      mov r2, r6
0042028c  07 30 a0 e1                                      mov r3, r7
00420290  00 00 a0 e3                                      mov r0, #0
00420294  56 10 44 e3                                      movt r1, #0x4056
00420298  a3 b8 fb eb                                      bl #0x30e52c
0042029c  00 60 a0 e1                                      mov r6, r0
004202a0  01 70 a0 e1                                      mov r7, r1
004202a4  7d ff ff ea                                      b #0x4200a0
