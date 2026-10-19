; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0077931c, declared_size=16, range_size=16, mode=arm
; class-group: gameswf::path
; alias: _ZNK7gameswf4path8is_emptyEv
; demangled: gameswf::path::is_empty() const
; decoder-mode: arm
0077931c  18 00 90 e5                                      ldr r0, [r0, #0x18]
00779320  01 00 70 e2                                      rsbs r0, r0, #1
00779324  00 00 a0 33                                      movlo r0, #0
00779328  1e ff 2f e1                                      bx lr

; FUNCTION 0x00779a64, declared_size=156, range_size=156, mode=arm
; class-group: gameswf::path
; alias: _ZN7gameswf4pathC1ERKS0_
; demangled: gameswf::path::path(gameswf::path const&)
; decoder-mode: arm
00779a64  70 40 2d e9                                      push {r4, r5, r6, lr}
00779a68  00 30 91 e5                                      ldr r3, [r1]
00779a6c  00 50 a0 e1                                      mov r5, r0
00779a70  00 40 a0 e3                                      mov r4, #0
00779a74  00 30 80 e5                                      str r3, [r0]
00779a78  04 30 91 e5                                      ldr r3, [r1, #4]
00779a7c  01 60 a0 e1                                      mov r6, r1
00779a80  14 00 80 e2                                      add r0, r0, #0x14
00779a84  04 30 85 e5                                      str r3, [r5, #4]
00779a88  08 30 91 e5                                      ldr r3, [r1, #8]
00779a8c  08 30 85 e5                                      str r3, [r5, #8]
00779a90  0c 30 91 e5                                      ldr r3, [r1, #0xc]
00779a94  0c 30 85 e5                                      str r3, [r5, #0xc]
00779a98  10 30 91 e5                                      ldr r3, [r1, #0x10]
00779a9c  14 40 85 e5                                      str r4, [r5, #0x14]
00779aa0  18 40 85 e5                                      str r4, [r5, #0x18]
00779aa4  10 30 85 e5                                      str r3, [r5, #0x10]
00779aa8  1c 40 85 e5                                      str r4, [r5, #0x1c]
00779aac  20 40 c5 e5                                      strb r4, [r5, #0x20]
00779ab0  18 10 91 e5                                      ldr r1, [r1, #0x18]
00779ab4  f4 9f ff eb                                      bl #0x761a8c
00779ab8  18 30 95 e5                                      ldr r3, [r5, #0x18]
00779abc  04 00 53 e1                                      cmp r3, r4
00779ac0  0a 00 00 da                                      ble #0x779af0
00779ac4  14 20 96 e5                                      ldr r2, [r6, #0x14]
00779ac8  14 c0 95 e5                                      ldr ip, [r5, #0x14]
00779acc  04 32 a0 e1                                      lsl r3, r4, #4
00779ad0  01 40 84 e2                                      add r4, r4, #1
00779ad4  03 c0 8c e0                                      add ip, ip, r3
00779ad8  03 30 82 e0                                      add r3, r2, r3
00779adc  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
00779ae0  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00779ae4  18 30 95 e5                                      ldr r3, [r5, #0x18]
00779ae8  03 00 54 e1                                      cmp r4, r3
00779aec  f4 ff ff ba                                      blt #0x779ac4
00779af0  24 30 d6 e5                                      ldrb r3, [r6, #0x24]
00779af4  05 00 a0 e1                                      mov r0, r5
00779af8  24 30 c5 e5                                      strb r3, [r5, #0x24]
00779afc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00779b00, declared_size=36, range_size=36, mode=arm
; class-group: gameswf::path
; alias: _ZN7gameswf4path5resetEffiii
; demangled: gameswf::path::reset(float, float, int, int, int)
; decoder-mode: arm
00779b00  04 40 2d e5                                      str r4, [sp, #-4]!
00779b04  10 10 9d e9                                      ldmib sp, {r4, ip}
00779b08  0c 10 80 e5                                      str r1, [r0, #0xc]
00779b0c  10 20 80 e5                                      str r2, [r0, #0x10]
00779b10  18 10 80 e8                                      stm r0, {r3, r4, ip}
00779b14  00 10 a0 e3                                      mov r1, #0
00779b18  14 00 80 e2                                      add r0, r0, #0x14
00779b1c  10 00 bd e8                                      ldm sp!, {r4}
00779b20  d9 9f ff ea                                      b #0x761a8c

; FUNCTION 0x00779b24, declared_size=64, range_size=64, mode=arm
; class-group: gameswf::path
; alias: _ZN7gameswf4pathC1Effiii
; demangled: gameswf::path::path(float, float, int, int, int)
; decoder-mode: arm
00779b24  10 40 2d e9                                      push {r4, lr}
00779b28  00 c0 a0 e3                                      mov ip, #0
00779b2c  08 d0 4d e2                                      sub sp, sp, #8
00779b30  20 c0 c0 e5                                      strb ip, [r0, #0x20]
00779b34  14 c0 80 e5                                      str ip, [r0, #0x14]
00779b38  18 c0 80 e5                                      str ip, [r0, #0x18]
00779b3c  1c c0 80 e5                                      str ip, [r0, #0x1c]
00779b40  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00779b44  00 40 a0 e1                                      mov r4, r0
00779b48  00 c0 8d e5                                      str ip, [sp]
00779b4c  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00779b50  04 c0 8d e5                                      str ip, [sp, #4]
00779b54  e9 ff ff eb                                      bl #0x779b00
00779b58  04 00 a0 e1                                      mov r0, r4
00779b5c  08 d0 8d e2                                      add sp, sp, #8
00779b60  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00779b64, declared_size=64, range_size=64, mode=arm
; class-group: gameswf::path
; alias: _ZN7gameswf4pathC2Effiii
; demangled: gameswf::path::path(float, float, int, int, int)
; decoder-mode: arm
00779b64  10 40 2d e9                                      push {r4, lr}
00779b68  00 c0 a0 e3                                      mov ip, #0
00779b6c  08 d0 4d e2                                      sub sp, sp, #8
00779b70  20 c0 c0 e5                                      strb ip, [r0, #0x20]
00779b74  14 c0 80 e5                                      str ip, [r0, #0x14]
00779b78  18 c0 80 e5                                      str ip, [r0, #0x18]
00779b7c  1c c0 80 e5                                      str ip, [r0, #0x1c]
00779b80  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00779b84  00 40 a0 e1                                      mov r4, r0
00779b88  00 c0 8d e5                                      str ip, [sp]
00779b8c  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00779b90  04 c0 8d e5                                      str ip, [sp, #4]
00779b94  d9 ff ff eb                                      bl #0x779b00
00779b98  04 00 a0 e1                                      mov r0, r4
00779b9c  08 d0 8d e2                                      add sp, sp, #8
00779ba0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00779ba4, declared_size=72, range_size=72, mode=arm
; class-group: gameswf::path
; alias: _ZN7gameswf4pathC1Ev
; demangled: gameswf::path::path()
; decoder-mode: arm
00779ba4  10 40 2d e9                                      push {r4, lr}
00779ba8  00 c0 a0 e3                                      mov ip, #0
00779bac  00 10 a0 e3                                      mov r1, #0
00779bb0  14 c0 80 e5                                      str ip, [r0, #0x14]
00779bb4  18 c0 80 e5                                      str ip, [r0, #0x18]
00779bb8  1c c0 80 e5                                      str ip, [r0, #0x1c]
00779bbc  20 c0 c0 e5                                      strb ip, [r0, #0x20]
00779bc0  24 c0 c0 e5                                      strb ip, [r0, #0x24]
00779bc4  08 d0 4d e2                                      sub sp, sp, #8
00779bc8  00 40 a0 e1                                      mov r4, r0
00779bcc  0c 30 a0 e1                                      mov r3, ip
00779bd0  01 20 a0 e1                                      mov r2, r1
00779bd4  00 c0 8d e5                                      str ip, [sp]
00779bd8  04 c0 8d e5                                      str ip, [sp, #4]
00779bdc  c7 ff ff eb                                      bl #0x779b00
00779be0  04 00 a0 e1                                      mov r0, r4
00779be4  08 d0 8d e2                                      add sp, sp, #8
00779be8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00779bec, declared_size=72, range_size=72, mode=arm
; class-group: gameswf::path
; alias: _ZN7gameswf4pathC2Ev
; demangled: gameswf::path::path()
; decoder-mode: arm
00779bec  10 40 2d e9                                      push {r4, lr}
00779bf0  00 c0 a0 e3                                      mov ip, #0
00779bf4  00 10 a0 e3                                      mov r1, #0
00779bf8  14 c0 80 e5                                      str ip, [r0, #0x14]
00779bfc  18 c0 80 e5                                      str ip, [r0, #0x18]
00779c00  1c c0 80 e5                                      str ip, [r0, #0x1c]
00779c04  20 c0 c0 e5                                      strb ip, [r0, #0x20]
00779c08  24 c0 c0 e5                                      strb ip, [r0, #0x24]
00779c0c  08 d0 4d e2                                      sub sp, sp, #8
00779c10  00 40 a0 e1                                      mov r4, r0
00779c14  0c 30 a0 e1                                      mov r3, ip
00779c18  01 20 a0 e1                                      mov r2, r1
00779c1c  00 c0 8d e5                                      str ip, [sp]
00779c20  04 c0 8d e5                                      str ip, [sp, #4]
00779c24  b5 ff ff eb                                      bl #0x779b00
00779c28  04 00 a0 e1                                      mov r0, r4
00779c2c  08 d0 8d e2                                      add sp, sp, #8
00779c30  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00779ff4, declared_size=1404, range_size=1404, mode=arm
; class-group: gameswf::path
; alias: _ZN7gameswf4path10point_testEff
; demangled: gameswf::path::point_test(float, float)
; decoder-mode: arm
00779ff4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00779ff8  24 d0 4d e2                                      sub sp, sp, #0x24
00779ffc  08 00 8d e5                                      str r0, [sp, #8]
0077a000  18 30 90 e5                                      ldr r3, [r0, #0x18]
0077a004  02 70 a0 e1                                      mov r7, r2
0077a008  10 10 8d e5                                      str r1, [sp, #0x10]
0077a00c  00 00 53 e3                                      cmp r3, #0
0077a010  0c 30 8d e5                                      str r3, [sp, #0xc]
0077a014  53 01 00 da                                      ble #0x77a568
0077a018  00 30 90 e5                                      ldr r3, [r0]
0077a01c  00 00 53 e3                                      cmp r3, #0
0077a020  50 01 00 ba                                      blt #0x77a568
0077a024  00 40 a0 e3                                      mov r4, #0
0077a028  0c b0 90 e5                                      ldr fp, [r0, #0xc]
0077a02c  10 60 90 e5                                      ldr r6, [r0, #0x10]
0077a030  18 40 8d e5                                      str r4, [sp, #0x18]
0077a034  08 20 9d e5                                      ldr r2, [sp, #8]
0077a038  14 90 92 e5                                      ldr sb, [r2, #0x14]
0077a03c  04 a2 89 e0                                      add sl, sb, r4, lsl #4
0077a040  0a 00 a0 e1                                      mov r0, sl
0077a044  08 80 9a e5                                      ldr r8, [sl, #8]
0077a048  0c 50 9a e5                                      ldr r5, [sl, #0xc]
0077a04c  a3 fc ff eb                                      bl #0x7792e0
0077a050  00 00 50 e3                                      cmp r0, #0
0077a054  36 00 00 0a                                      beq #0x77a134
0077a058  06 00 a0 e1                                      mov r0, r6
0077a05c  07 10 a0 e1                                      mov r1, r7
0077a060  a9 51 ee eb                                      bl #0x30e70c
0077a064  00 00 50 e3                                      cmp r0, #0
0077a068  03 01 00 0a                                      beq #0x77a47c
0077a06c  05 00 a0 e1                                      mov r0, r5
0077a070  07 10 a0 e1                                      mov r1, r7
0077a074  0e 51 ee eb                                      bl #0x30e4b4
0077a078  00 00 50 e3                                      cmp r0, #0
0077a07c  fe 00 00 0a                                      beq #0x77a47c
0077a080  06 10 a0 e1                                      mov r1, r6
0077a084  05 00 a0 e1                                      mov r0, r5
0077a088  c7 50 ee eb                                      bl #0x30e3ac
0077a08c  00 a0 a0 e1                                      mov sl, r0
0077a090  0a 10 a0 e1                                      mov r1, sl
0077a094  10 00 9d e5                                      ldr r0, [sp, #0x10]
0077a098  33 53 ee eb                                      bl #0x30ed6c
0077a09c  0a 10 a0 e1                                      mov r1, sl
0077a0a0  00 30 a0 e1                                      mov r3, r0
0077a0a4  0b 00 a0 e1                                      mov r0, fp
0077a0a8  00 30 8d e5                                      str r3, [sp]
0077a0ac  2e 53 ee eb                                      bl #0x30ed6c
0077a0b0  0b 10 a0 e1                                      mov r1, fp
0077a0b4  00 90 a0 e1                                      mov sb, r0
0077a0b8  08 00 a0 e1                                      mov r0, r8
0077a0bc  ba 50 ee eb                                      bl #0x30e3ac
0077a0c0  06 10 a0 e1                                      mov r1, r6
0077a0c4  00 a0 a0 e1                                      mov sl, r0
0077a0c8  07 00 a0 e1                                      mov r0, r7
0077a0cc  b6 50 ee eb                                      bl #0x30e3ac
0077a0d0  00 10 a0 e1                                      mov r1, r0
0077a0d4  0a 00 a0 e1                                      mov r0, sl
0077a0d8  23 53 ee eb                                      bl #0x30ed6c
0077a0dc  00 10 a0 e1                                      mov r1, r0
0077a0e0  09 00 a0 e1                                      mov r0, sb
0077a0e4  ae 52 ee eb                                      bl #0x30eba4
0077a0e8  00 30 9d e5                                      ldr r3, [sp]
0077a0ec  00 10 a0 e1                                      mov r1, r0
0077a0f0  03 00 a0 e1                                      mov r0, r3
0077a0f4  84 51 ee eb                                      bl #0x30e70c
0077a0f8  00 00 50 e3                                      cmp r0, #0
0077a0fc  02 00 00 0a                                      beq #0x77a10c
0077a100  18 30 9d e5                                      ldr r3, [sp, #0x18]
0077a104  01 30 83 e2                                      add r3, r3, #1
0077a108  18 30 8d e5                                      str r3, [sp, #0x18]
0077a10c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0077a110  01 40 84 e2                                      add r4, r4, #1
0077a114  08 b0 a0 e1                                      mov fp, r8
0077a118  03 00 54 e1                                      cmp r4, r3
0077a11c  05 60 a0 e1                                      mov r6, r5
0077a120  c3 ff ff 1a                                      bne #0x77a034
0077a124  18 20 9d e5                                      ldr r2, [sp, #0x18]
0077a128  01 00 02 e2                                      and r0, r2, #1
0077a12c  24 d0 8d e2                                      add sp, sp, #0x24
0077a130  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0077a134  06 00 a0 e1                                      mov r0, r6
0077a138  07 10 a0 e1                                      mov r1, r7
0077a13c  72 51 ee eb                                      bl #0x30e70c
0077a140  04 92 99 e7                                      ldr sb, [sb, r4, lsl #4]
0077a144  00 00 50 e3                                      cmp r0, #0
0077a148  14 90 8d e5                                      str sb, [sp, #0x14]
0077a14c  04 a0 9a e5                                      ldr sl, [sl, #4]
0077a150  09 00 00 0a                                      beq #0x77a17c
0077a154  05 00 a0 e1                                      mov r0, r5
0077a158  07 10 a0 e1                                      mov r1, r7
0077a15c  6a 51 ee eb                                      bl #0x30e70c
0077a160  00 00 50 e3                                      cmp r0, #0
0077a164  04 00 00 0a                                      beq #0x77a17c
0077a168  0a 00 a0 e1                                      mov r0, sl
0077a16c  07 10 a0 e1                                      mov r1, r7
0077a170  65 51 ee eb                                      bl #0x30e70c
0077a174  00 00 50 e3                                      cmp r0, #0
0077a178  e3 ff ff 1a                                      bne #0x77a10c
0077a17c  06 00 a0 e1                                      mov r0, r6
0077a180  07 10 a0 e1                                      mov r1, r7
0077a184  5b 50 ee eb                                      bl #0x30e2f8
0077a188  00 00 50 e3                                      cmp r0, #0
0077a18c  09 00 00 0a                                      beq #0x77a1b8
0077a190  05 00 a0 e1                                      mov r0, r5
0077a194  07 10 a0 e1                                      mov r1, r7
0077a198  56 50 ee eb                                      bl #0x30e2f8
0077a19c  00 00 50 e3                                      cmp r0, #0
0077a1a0  04 00 00 0a                                      beq #0x77a1b8
0077a1a4  0a 00 a0 e1                                      mov r0, sl
0077a1a8  07 10 a0 e1                                      mov r1, r7
0077a1ac  51 50 ee eb                                      bl #0x30e2f8
0077a1b0  00 00 50 e3                                      cmp r0, #0
0077a1b4  d4 ff ff 1a                                      bne #0x77a10c
0077a1b8  0b 00 a0 e1                                      mov r0, fp
0077a1bc  10 10 9d e5                                      ldr r1, [sp, #0x10]
0077a1c0  51 51 ee eb                                      bl #0x30e70c
0077a1c4  00 00 50 e3                                      cmp r0, #0
0077a1c8  09 00 00 0a                                      beq #0x77a1f4
0077a1cc  08 00 a0 e1                                      mov r0, r8
0077a1d0  10 10 9d e5                                      ldr r1, [sp, #0x10]
0077a1d4  4c 51 ee eb                                      bl #0x30e70c
0077a1d8  00 00 50 e3                                      cmp r0, #0
0077a1dc  04 00 00 0a                                      beq #0x77a1f4
0077a1e0  14 00 9d e5                                      ldr r0, [sp, #0x14]
0077a1e4  10 10 9d e5                                      ldr r1, [sp, #0x10]
0077a1e8  47 51 ee eb                                      bl #0x30e70c
0077a1ec  00 00 50 e3                                      cmp r0, #0
0077a1f0  c5 ff ff 1a                                      bne #0x77a10c
0077a1f4  06 10 a0 e1                                      mov r1, r6
0077a1f8  05 00 a0 e1                                      mov r0, r5
0077a1fc  68 52 ee eb                                      bl #0x30eba4
0077a200  03 11 a0 e3                                      mov r1, #0xc0000000
0077a204  00 90 a0 e1                                      mov sb, r0
0077a208  0a 00 a0 e1                                      mov r0, sl
0077a20c  d6 52 ee eb                                      bl #0x30ed6c
0077a210  00 10 a0 e1                                      mov r1, r0
0077a214  09 00 a0 e1                                      mov r0, sb
0077a218  61 52 ee eb                                      bl #0x30eba4
0077a21c  06 10 a0 e1                                      mov r1, r6
0077a220  00 90 a0 e1                                      mov sb, r0
0077a224  0a 00 a0 e1                                      mov r0, sl
0077a228  5f 50 ee eb                                      bl #0x30e3ac
0077a22c  00 10 a0 e1                                      mov r1, r0
0077a230  5b 52 ee eb                                      bl #0x30eba4
0077a234  07 10 a0 e1                                      mov r1, r7
0077a238  00 a0 a0 e1                                      mov sl, r0
0077a23c  06 00 a0 e1                                      mov r0, r6
0077a240  59 50 ee eb                                      bl #0x30e3ac
0077a244  0a 10 a0 e1                                      mov r1, sl
0077a248  00 60 a0 e1                                      mov r6, r0
0077a24c  0a 00 a0 e1                                      mov r0, sl
0077a250  c5 52 ee eb                                      bl #0x30ed6c
0077a254  81 14 a0 e3                                      mov r1, #0x81000000
0077a258  00 30 a0 e1                                      mov r3, r0
0077a25c  c1 10 a0 e1                                      asr r1, r1, #1
0077a260  09 00 a0 e1                                      mov r0, sb
0077a264  00 30 8d e5                                      str r3, [sp]
0077a268  bf 52 ee eb                                      bl #0x30ed6c
0077a26c  06 10 a0 e1                                      mov r1, r6
0077a270  bd 52 ee eb                                      bl #0x30ed6c
0077a274  00 30 9d e5                                      ldr r3, [sp]
0077a278  00 10 a0 e1                                      mov r1, r0
0077a27c  03 00 a0 e1                                      mov r0, r3
0077a280  47 52 ee eb                                      bl #0x30eba4
0077a284  00 10 a0 e3                                      mov r1, #0
0077a288  1c 00 8d e5                                      str r0, [sp, #0x1c]
0077a28c  1e 51 ee eb                                      bl #0x30e70c
0077a290  00 00 50 e3                                      cmp r0, #0
0077a294  9c ff ff 1a                                      bne #0x77a10c
0077a298  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0077a29c  a0 4f ee eb                                      bl #0x30e124
0077a2a0  00 10 a0 e3                                      mov r1, #0
0077a2a4  00 30 a0 e1                                      mov r3, r0
0077a2a8  0a 00 a0 e1                                      mov r0, sl
0077a2ac  00 30 8d e5                                      str r3, [sp]
0077a2b0  15 51 ee eb                                      bl #0x30e70c
0077a2b4  00 00 50 e3                                      cmp r0, #0
0077a2b8  00 30 9d e5                                      ldr r3, [sp]
0077a2bc  a2 00 00 1a                                      bne #0x77a54c
0077a2c0  03 10 a0 e1                                      mov r1, r3
0077a2c4  0a 00 a0 e1                                      mov r0, sl
0077a2c8  35 52 ee eb                                      bl #0x30eba4
0077a2cc  bf 14 a0 e3                                      mov r1, #0xbf000000
0077a2d0  a5 52 ee eb                                      bl #0x30ed6c
0077a2d4  00 a0 a0 e1                                      mov sl, r0
0077a2d8  09 00 a0 e1                                      mov r0, sb
0077a2dc  00 10 a0 e3                                      mov r1, #0
0077a2e0  29 4f ee eb                                      bl #0x30df8c
0077a2e4  00 00 50 e3                                      cmp r0, #0
0077a2e8  31 00 00 1a                                      bne #0x77a3b4
0077a2ec  09 10 a0 e1                                      mov r1, sb
0077a2f0  0a 00 a0 e1                                      mov r0, sl
0077a2f4  66 52 ee eb                                      bl #0x30ec94
0077a2f8  00 10 a0 e3                                      mov r1, #0
0077a2fc  00 90 a0 e1                                      mov sb, r0
0077a300  6b 50 ee eb                                      bl #0x30e4b4
0077a304  00 00 50 e3                                      cmp r0, #0
0077a308  29 00 00 0a                                      beq #0x77a3b4
0077a30c  09 00 a0 e1                                      mov r0, sb
0077a310  fe 15 a0 e3                                      mov r1, #0x3f800000
0077a314  fc 50 ee eb                                      bl #0x30e70c
0077a318  00 00 50 e3                                      cmp r0, #0
0077a31c  24 00 00 0a                                      beq #0x77a3b4
0077a320  0b 10 a0 e1                                      mov r1, fp
0077a324  14 00 9d e5                                      ldr r0, [sp, #0x14]
0077a328  1f 50 ee eb                                      bl #0x30e3ac
0077a32c  00 10 a0 e1                                      mov r1, r0
0077a330  1b 52 ee eb                                      bl #0x30eba4
0077a334  09 10 a0 e1                                      mov r1, sb
0077a338  8b 52 ee eb                                      bl #0x30ed6c
0077a33c  0b 10 a0 e1                                      mov r1, fp
0077a340  17 52 ee eb                                      bl #0x30eba4
0077a344  0b 10 a0 e1                                      mov r1, fp
0077a348  00 20 a0 e1                                      mov r2, r0
0077a34c  08 00 a0 e1                                      mov r0, r8
0077a350  04 20 8d e5                                      str r2, [sp, #4]
0077a354  12 52 ee eb                                      bl #0x30eba4
0077a358  03 11 a0 e3                                      mov r1, #0xc0000000
0077a35c  00 30 a0 e1                                      mov r3, r0
0077a360  14 00 9d e5                                      ldr r0, [sp, #0x14]
0077a364  00 30 8d e5                                      str r3, [sp]
0077a368  7f 52 ee eb                                      bl #0x30ed6c
0077a36c  00 30 9d e5                                      ldr r3, [sp]
0077a370  00 10 a0 e1                                      mov r1, r0
0077a374  03 00 a0 e1                                      mov r0, r3
0077a378  09 52 ee eb                                      bl #0x30eba4
0077a37c  09 10 a0 e1                                      mov r1, sb
0077a380  79 52 ee eb                                      bl #0x30ed6c
0077a384  09 10 a0 e1                                      mov r1, sb
0077a388  77 52 ee eb                                      bl #0x30ed6c
0077a38c  04 20 9d e5                                      ldr r2, [sp, #4]
0077a390  00 10 a0 e1                                      mov r1, r0
0077a394  02 00 a0 e1                                      mov r0, r2
0077a398  01 52 ee eb                                      bl #0x30eba4
0077a39c  10 10 9d e5                                      ldr r1, [sp, #0x10]
0077a3a0  d4 4f ee eb                                      bl #0x30e2f8
0077a3a4  00 00 50 e3                                      cmp r0, #0
0077a3a8  18 30 9d 15                                      ldrne r3, [sp, #0x18]
0077a3ac  01 30 83 12                                      addne r3, r3, #1
0077a3b0  18 30 8d 15                                      strne r3, [sp, #0x18]
0077a3b4  0a 00 a0 e1                                      mov r0, sl
0077a3b8  00 10 a0 e3                                      mov r1, #0
0077a3bc  f2 4e ee eb                                      bl #0x30df8c
0077a3c0  00 00 50 e3                                      cmp r0, #0
0077a3c4  50 ff ff 1a                                      bne #0x77a10c
0077a3c8  0a 10 a0 e1                                      mov r1, sl
0077a3cc  06 00 a0 e1                                      mov r0, r6
0077a3d0  2f 52 ee eb                                      bl #0x30ec94
0077a3d4  00 10 a0 e3                                      mov r1, #0
0077a3d8  00 60 a0 e1                                      mov r6, r0
0077a3dc  34 50 ee eb                                      bl #0x30e4b4
0077a3e0  00 00 50 e3                                      cmp r0, #0
0077a3e4  48 ff ff 0a                                      beq #0x77a10c
0077a3e8  06 00 a0 e1                                      mov r0, r6
0077a3ec  fe 15 a0 e3                                      mov r1, #0x3f800000
0077a3f0  c5 50 ee eb                                      bl #0x30e70c
0077a3f4  00 00 50 e3                                      cmp r0, #0
0077a3f8  43 ff ff 0a                                      beq #0x77a10c
0077a3fc  0b 10 a0 e1                                      mov r1, fp
0077a400  14 00 9d e5                                      ldr r0, [sp, #0x14]
0077a404  e8 4f ee eb                                      bl #0x30e3ac
0077a408  00 10 a0 e1                                      mov r1, r0
0077a40c  e4 51 ee eb                                      bl #0x30eba4
0077a410  06 10 a0 e1                                      mov r1, r6
0077a414  54 52 ee eb                                      bl #0x30ed6c
0077a418  0b 10 a0 e1                                      mov r1, fp
0077a41c  e0 51 ee eb                                      bl #0x30eba4
0077a420  0b 10 a0 e1                                      mov r1, fp
0077a424  00 90 a0 e1                                      mov sb, r0
0077a428  08 00 a0 e1                                      mov r0, r8
0077a42c  dc 51 ee eb                                      bl #0x30eba4
0077a430  03 11 a0 e3                                      mov r1, #0xc0000000
0077a434  00 a0 a0 e1                                      mov sl, r0
0077a438  14 00 9d e5                                      ldr r0, [sp, #0x14]
0077a43c  4a 52 ee eb                                      bl #0x30ed6c
0077a440  00 10 a0 e1                                      mov r1, r0
0077a444  0a 00 a0 e1                                      mov r0, sl
0077a448  d5 51 ee eb                                      bl #0x30eba4
0077a44c  06 10 a0 e1                                      mov r1, r6
0077a450  45 52 ee eb                                      bl #0x30ed6c
0077a454  06 10 a0 e1                                      mov r1, r6
0077a458  43 52 ee eb                                      bl #0x30ed6c
0077a45c  00 10 a0 e1                                      mov r1, r0
0077a460  09 00 a0 e1                                      mov r0, sb
0077a464  ce 51 ee eb                                      bl #0x30eba4
0077a468  10 10 9d e5                                      ldr r1, [sp, #0x10]
0077a46c  a1 4f ee eb                                      bl #0x30e2f8
0077a470  00 00 50 e3                                      cmp r0, #0
0077a474  24 ff ff 0a                                      beq #0x77a10c
0077a478  29 00 00 ea                                      b #0x77a524
0077a47c  06 00 a0 e1                                      mov r0, r6
0077a480  07 10 a0 e1                                      mov r1, r7
0077a484  9b 4f ee eb                                      bl #0x30e2f8
0077a488  00 00 50 e3                                      cmp r0, #0
0077a48c  1e ff ff 0a                                      beq #0x77a10c
0077a490  05 00 a0 e1                                      mov r0, r5
0077a494  07 10 a0 e1                                      mov r1, r7
0077a498  43 51 ee eb                                      bl #0x30e9ac
0077a49c  00 00 50 e3                                      cmp r0, #0
0077a4a0  19 ff ff 0a                                      beq #0x77a10c
0077a4a4  06 10 a0 e1                                      mov r1, r6
0077a4a8  05 00 a0 e1                                      mov r0, r5
0077a4ac  be 4f ee eb                                      bl #0x30e3ac
0077a4b0  00 a0 a0 e1                                      mov sl, r0
0077a4b4  0a 10 a0 e1                                      mov r1, sl
0077a4b8  10 00 9d e5                                      ldr r0, [sp, #0x10]
0077a4bc  2a 52 ee eb                                      bl #0x30ed6c
0077a4c0  0a 10 a0 e1                                      mov r1, sl
0077a4c4  00 30 a0 e1                                      mov r3, r0
0077a4c8  0b 00 a0 e1                                      mov r0, fp
0077a4cc  00 30 8d e5                                      str r3, [sp]
0077a4d0  25 52 ee eb                                      bl #0x30ed6c
0077a4d4  0b 10 a0 e1                                      mov r1, fp
0077a4d8  00 90 a0 e1                                      mov sb, r0
0077a4dc  08 00 a0 e1                                      mov r0, r8
0077a4e0  b1 4f ee eb                                      bl #0x30e3ac
0077a4e4  06 10 a0 e1                                      mov r1, r6
0077a4e8  00 a0 a0 e1                                      mov sl, r0
0077a4ec  07 00 a0 e1                                      mov r0, r7
0077a4f0  ad 4f ee eb                                      bl #0x30e3ac
0077a4f4  00 10 a0 e1                                      mov r1, r0
0077a4f8  0a 00 a0 e1                                      mov r0, sl
0077a4fc  1a 52 ee eb                                      bl #0x30ed6c
0077a500  00 10 a0 e1                                      mov r1, r0
0077a504  09 00 a0 e1                                      mov r0, sb
0077a508  a5 51 ee eb                                      bl #0x30eba4
0077a50c  00 30 9d e5                                      ldr r3, [sp]
0077a510  00 10 a0 e1                                      mov r1, r0
0077a514  03 00 a0 e1                                      mov r0, r3
0077a518  76 4f ee eb                                      bl #0x30e2f8
0077a51c  00 00 50 e3                                      cmp r0, #0
0077a520  f9 fe ff 0a                                      beq #0x77a10c
0077a524  18 20 9d e5                                      ldr r2, [sp, #0x18]
0077a528  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0077a52c  01 40 84 e2                                      add r4, r4, #1
0077a530  01 20 82 e2                                      add r2, r2, #1
0077a534  03 00 54 e1                                      cmp r4, r3
0077a538  18 20 8d e5                                      str r2, [sp, #0x18]
0077a53c  08 b0 a0 e1                                      mov fp, r8
0077a540  05 60 a0 e1                                      mov r6, r5
0077a544  ba fe ff 1a                                      bne #0x77a034
0077a548  f5 fe ff ea                                      b #0x77a124
0077a54c  03 10 a0 e1                                      mov r1, r3
0077a550  0a 00 a0 e1                                      mov r0, sl
0077a554  94 4f ee eb                                      bl #0x30e3ac
0077a558  bf 14 a0 e3                                      mov r1, #0xbf000000
0077a55c  02 52 ee eb                                      bl #0x30ed6c
0077a560  00 a0 a0 e1                                      mov sl, r0
0077a564  5b ff ff ea                                      b #0x77a2d8
0077a568  00 00 a0 e3                                      mov r0, #0
0077a56c  ee fe ff ea                                      b #0x77a12c

; FUNCTION 0x0077ac18, declared_size=108, range_size=108, mode=arm
; class-group: gameswf::path
; alias: _ZNK7gameswf4path13tesselate_newEv
; demangled: gameswf::path::tesselate_new() const
; decoder-mode: arm
0077ac18  30 40 2d e9                                      push {r4, r5, lr}
0077ac1c  00 40 a0 e1                                      mov r4, r0
0077ac20  04 10 94 e5                                      ldr r1, [r4, #4]
0077ac24  00 00 90 e5                                      ldr r0, [r0]
0077ac28  08 20 94 e5                                      ldr r2, [r4, #8]
0077ac2c  10 c0 94 e5                                      ldr ip, [r4, #0x10]
0077ac30  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0077ac34  0c d0 4d e2                                      sub sp, sp, #0xc
0077ac38  01 00 40 e2                                      sub r0, r0, #1
0077ac3c  01 10 41 e2                                      sub r1, r1, #1
0077ac40  01 20 42 e2                                      sub r2, r2, #1
0077ac44  00 c0 8d e5                                      str ip, [sp]
0077ac48  0b 33 00 eb                                      bl #0x78787c
0077ac4c  18 30 94 e5                                      ldr r3, [r4, #0x18]
0077ac50  00 00 53 e3                                      cmp r3, #0
0077ac54  07 00 00 da                                      ble #0x77ac78
0077ac58  00 50 a0 e3                                      mov r5, #0
0077ac5c  14 00 94 e5                                      ldr r0, [r4, #0x14]
0077ac60  05 02 80 e0                                      add r0, r0, r5, lsl #4
0077ac64  e5 ff ff eb                                      bl #0x77ac00
0077ac68  18 30 94 e5                                      ldr r3, [r4, #0x18]
0077ac6c  01 50 85 e2                                      add r5, r5, #1
0077ac70  03 00 55 e1                                      cmp r5, r3
0077ac74  f8 ff ff ba                                      blt #0x77ac5c
0077ac78  0c d0 8d e2                                      add sp, sp, #0xc
0077ac7c  30 40 bd e8                                      pop {r4, r5, lr}
0077ac80  07 2a 00 ea                                      b #0x7854a4

; FUNCTION 0x0077ad2c, declared_size=108, range_size=108, mode=arm
; class-group: gameswf::path
; alias: _ZNK7gameswf4path9tesselateEv
; demangled: gameswf::path::tesselate() const
; decoder-mode: arm
0077ad2c  30 40 2d e9                                      push {r4, r5, lr}
0077ad30  00 40 a0 e1                                      mov r4, r0
0077ad34  04 10 94 e5                                      ldr r1, [r4, #4]
0077ad38  00 00 90 e5                                      ldr r0, [r0]
0077ad3c  08 20 94 e5                                      ldr r2, [r4, #8]
0077ad40  10 c0 94 e5                                      ldr ip, [r4, #0x10]
0077ad44  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0077ad48  0c d0 4d e2                                      sub sp, sp, #0xc
0077ad4c  01 00 40 e2                                      sub r0, r0, #1
0077ad50  01 10 41 e2                                      sub r1, r1, #1
0077ad54  01 20 42 e2                                      sub r2, r2, #1
0077ad58  00 c0 8d e5                                      str ip, [sp]
0077ad5c  60 31 00 eb                                      bl #0x7872e4
0077ad60  18 30 94 e5                                      ldr r3, [r4, #0x18]
0077ad64  00 00 53 e3                                      cmp r3, #0
0077ad68  07 00 00 da                                      ble #0x77ad8c
0077ad6c  00 50 a0 e3                                      mov r5, #0
0077ad70  14 00 94 e5                                      ldr r0, [r4, #0x14]
0077ad74  05 02 80 e0                                      add r0, r0, r5, lsl #4
0077ad78  e5 ff ff eb                                      bl #0x77ad14
0077ad7c  18 30 94 e5                                      ldr r3, [r4, #0x18]
0077ad80  01 50 85 e2                                      add r5, r5, #1
0077ad84  03 00 55 e1                                      cmp r5, r3
0077ad88  f8 ff ff ba                                      blt #0x77ad70
0077ad8c  0c d0 8d e2                                      add sp, sp, #0xc
0077ad90  30 40 bd e8                                      pop {r4, r5, lr}
0077ad94  2b 31 00 ea                                      b #0x787248
