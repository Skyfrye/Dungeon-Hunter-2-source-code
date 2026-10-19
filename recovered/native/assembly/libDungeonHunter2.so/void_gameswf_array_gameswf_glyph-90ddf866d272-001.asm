; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0078a81c, declared_size=156, range_size=156, mode=arm
; class-group: void gameswf::array<gameswf::glyph>
; alias: _ZN7gameswf5arrayINS_5glyphEE9push_backIS1_EEvRKT_
; demangled: void gameswf::array<gameswf::glyph>::push_back<gameswf::glyph>(gameswf::glyph const&)
; decoder-mode: arm
0078a81c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0078a820  04 30 90 e5                                      ldr r3, [r0, #4]
0078a824  08 20 90 e5                                      ldr r2, [r0, #8]
0078a828  00 60 a0 e1                                      mov r6, r0
0078a82c  01 70 83 e2                                      add r7, r3, #1
0078a830  02 00 57 e1                                      cmp r7, r2
0078a834  01 40 a0 e1                                      mov r4, r1
0078a838  1a 00 00 ca                                      bgt #0x78a8a8
0078a83c  24 20 a0 e3                                      mov r2, #0x24
0078a840  92 03 03 e0                                      mul r3, r2, r3
0078a844  00 10 94 e5                                      ldr r1, [r4]
0078a848  00 20 96 e5                                      ldr r2, [r6]
0078a84c  03 10 82 e7                                      str r1, [r2, r3]
0078a850  04 00 94 e5                                      ldr r0, [r4, #4]
0078a854  03 50 82 e0                                      add r5, r2, r3
0078a858  00 00 50 e3                                      cmp r0, #0
0078a85c  04 00 85 e5                                      str r0, [r5, #4]
0078a860  00 00 00 0a                                      beq #0x78a868
0078a864  fe 3c ff eb                                      bl #0x759c64
0078a868  08 c0 85 e2                                      add ip, r5, #8
0078a86c  08 30 84 e2                                      add r3, r4, #8
0078a870  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
0078a874  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0078a878  18 30 94 e5                                      ldr r3, [r4, #0x18]
0078a87c  18 30 85 e5                                      str r3, [r5, #0x18]
0078a880  bc 31 d4 e1                                      ldrh r3, [r4, #0x1c]
0078a884  bc 31 c5 e1                                      strh r3, [r5, #0x1c]
0078a888  be 31 d4 e1                                      ldrh r3, [r4, #0x1e]
0078a88c  be 31 c5 e1                                      strh r3, [r5, #0x1e]
0078a890  b0 32 d4 e1                                      ldrh r3, [r4, #0x20]
0078a894  b0 32 c5 e1                                      strh r3, [r5, #0x20]
0078a898  22 30 d4 e5                                      ldrb r3, [r4, #0x22]
0078a89c  22 30 c5 e5                                      strb r3, [r5, #0x22]
0078a8a0  04 70 86 e5                                      str r7, [r6, #4]
0078a8a4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0078a8a8  c7 10 87 e0                                      add r1, r7, r7, asr #1
0078a8ac  ec fe ff eb                                      bl #0x78a464
0078a8b0  04 30 96 e5                                      ldr r3, [r6, #4]
0078a8b4  e0 ff ff ea                                      b #0x78a83c
