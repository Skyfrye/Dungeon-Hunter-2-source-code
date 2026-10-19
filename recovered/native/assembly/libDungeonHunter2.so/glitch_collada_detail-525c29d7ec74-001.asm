; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00670a60, declared_size=672, range_size=672, mode=arm
; class-group: glitch::collada::detail
; alias: _ZN6glitch7collada6detail27constructCompatibilityTableEv
; demangled: glitch::collada::detail::constructCompatibilityTable()
; decoder-mode: arm
00670a60  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00670a64  88 42 9f e5                                      ldr r4, [pc, #0x288]
00670a68  04 40 8f e0                                      add r4, pc, r4
00670a6c  00 50 94 e5                                      ldr r5, [r4]
00670a70  01 50 15 e2                                      ands r5, r5, #1
00670a74  8d 00 00 0a                                      beq #0x670cb0
00670a78  78 62 9f e5                                      ldr r6, [pc, #0x278]
00670a7c  01 50 a0 e3                                      mov r5, #1
00670a80  00 70 a0 e3                                      mov r7, #0
00670a84  06 60 8f e0                                      add r6, pc, r6
00670a88  06 00 a0 e1                                      mov r0, r6
00670a8c  05 80 a0 e1                                      mov r8, r5
00670a90  00 30 a0 e3                                      mov r3, #0
00670a94  87 40 87 e0                                      add r4, r7, r7, lsl #1
00670a98  a3 22 84 e0                                      add r2, r4, r3, lsr #5
00670a9c  1f c0 03 e2                                      and ip, r3, #0x1f
00670aa0  02 21 86 e0                                      add r2, r6, r2, lsl #2
00670aa4  04 10 92 e5                                      ldr r1, [r2, #4]
00670aa8  01 30 83 e2                                      add r3, r3, #1
00670aac  5c 00 53 e3                                      cmp r3, #0x5c
00670ab0  15 1c c1 e1                                      bic r1, r1, r5, lsl ip
00670ab4  04 10 82 e5                                      str r1, [r2, #4]
00670ab8  f6 ff ff 1a                                      bne #0x670a98
00670abc  a7 32 84 e0                                      add r3, r4, r7, lsr #5
00670ac0  1f 10 07 e2                                      and r1, r7, #0x1f
00670ac4  03 31 80 e0                                      add r3, r0, r3, lsl #2
00670ac8  04 20 93 e5                                      ldr r2, [r3, #4]
00670acc  01 70 87 e2                                      add r7, r7, #1
00670ad0  5c 00 57 e3                                      cmp r7, #0x5c
00670ad4  18 21 82 e1                                      orr r2, r2, r8, lsl r1
00670ad8  04 20 83 e5                                      str r2, [r3, #4]
00670adc  eb ff ff 1a                                      bne #0x670a90
00670ae0  50 74 90 e5                                      ldr r7, [r0, #0x450]
00670ae4  d8 23 90 e5                                      ldr r2, [r0, #0x3d8]
00670ae8  20 64 90 e5                                      ldr r6, [r0, #0x420]
00670aec  1e 75 87 e3                                      orr r7, r7, #0x7800000
00670af0  50 74 80 e5                                      str r7, [r0, #0x450]
00670af4  0c 71 90 e5                                      ldr r7, [r0, #0x10c]
00670af8  0f 27 82 e3                                      orr r2, r2, #0x3c0000
00670afc  2c 94 90 e5                                      ldr sb, [r0, #0x42c]
00670b00  3a 36 87 e3                                      orr r3, r7, #0x3a00000
00670b04  18 71 90 e5                                      ldr r7, [r0, #0x118]
00670b08  38 84 90 e5                                      ldr r8, [r0, #0x438]
00670b0c  44 a4 90 e5                                      ldr sl, [r0, #0x444]
00670b10  36 76 87 e3                                      orr r7, r7, #0x3600000
00670b14  18 71 80 e5                                      str r7, [r0, #0x118]
00670b18  30 71 90 e5                                      ldr r7, [r0, #0x130]
00670b1c  e4 53 90 e5                                      ldr r5, [r0, #0x3e4]
00670b20  f0 c3 90 e5                                      ldr ip, [r0, #0x3f0]
00670b24  1e 76 87 e3                                      orr r7, r7, #0x1e00000
00670b28  30 71 80 e5                                      str r7, [r0, #0x130]
00670b2c  00 71 90 e5                                      ldr r7, [r0, #0x100]
00670b30  fc 43 90 e5                                      ldr r4, [r0, #0x3fc]
00670b34  08 14 90 e5                                      ldr r1, [r0, #0x408]
00670b38  0f 75 87 e3                                      orr r7, r7, #0x3c00000
00670b3c  24 b1 90 e5                                      ldr fp, [r0, #0x124]
00670b40  00 71 80 e5                                      str r7, [r0, #0x100]
00670b44  d8 23 80 e5                                      str r2, [r0, #0x3d8]
00670b48  a8 73 90 e5                                      ldr r7, [r0, #0x3a8]
00670b4c  7c 20 90 e5                                      ldr r2, [r0, #0x7c]
00670b50  3a 95 89 e3                                      orr sb, sb, #0xe800000
00670b54  2e a5 8a e3                                      orr sl, sl, #0xb800000
00670b58  36 85 88 e3                                      orr r8, r8, #0xd800000
00670b5c  0f 64 86 e3                                      orr r6, r6, #0xf000000
00670b60  3a 58 85 e3                                      orr r5, r5, #0x3a0000
00670b64  2e 48 84 e3                                      orr r4, r4, #0x2e0000
00670b68  36 c8 8c e3                                      orr ip, ip, #0x360000
00670b6c  1e 18 81 e3                                      orr r1, r1, #0x1e0000
00670b70  2e b6 8b e3                                      orr fp, fp, #0x2e00000
00670b74  1d 7a 87 e3                                      orr r7, r7, #0x1d000
00670b78  0e 2b 82 e3                                      orr r2, r2, #0x3800
00670b7c  a8 73 80 e5                                      str r7, [r0, #0x3a8]
00670b80  2c 94 80 e5                                      str sb, [r0, #0x42c]
00670b84  44 a4 80 e5                                      str sl, [r0, #0x444]
00670b88  38 84 80 e5                                      str r8, [r0, #0x438]
00670b8c  20 64 80 e5                                      str r6, [r0, #0x420]
00670b90  e4 53 80 e5                                      str r5, [r0, #0x3e4]
00670b94  fc 43 80 e5                                      str r4, [r0, #0x3fc]
00670b98  f0 c3 80 e5                                      str ip, [r0, #0x3f0]
00670b9c  08 14 80 e5                                      str r1, [r0, #0x408]
00670ba0  0c 31 80 e5                                      str r3, [r0, #0x10c]
00670ba4  24 b1 80 e5                                      str fp, [r0, #0x124]
00670ba8  9c 73 90 e5                                      ldr r7, [r0, #0x39c]
00670bac  b4 a3 90 e5                                      ldr sl, [r0, #0x3b4]
00670bb0  c0 93 90 e5                                      ldr sb, [r0, #0x3c0]
00670bb4  cc 83 90 e5                                      ldr r8, [r0, #0x3cc]
00670bb8  60 13 90 e5                                      ldr r1, [r0, #0x360]
00670bbc  6c 63 90 e5                                      ldr r6, [r0, #0x36c]
00670bc0  78 43 90 e5                                      ldr r4, [r0, #0x378]
00670bc4  84 53 90 e5                                      ldr r5, [r0, #0x384]
00670bc8  90 c3 90 e5                                      ldr ip, [r0, #0x390]
00670bcc  88 b0 90 e5                                      ldr fp, [r0, #0x88]
00670bd0  7c 20 80 e5                                      str r2, [r0, #0x7c]
00670bd4  a0 20 90 e5                                      ldr r2, [r0, #0xa0]
00670bd8  94 30 90 e5                                      ldr r3, [r0, #0x94]
00670bdc  17 9a 89 e3                                      orr sb, sb, #0x17000
00670be0  07 2b 82 e3                                      orr r2, r2, #0x1c00
00670be4  a0 20 80 e5                                      str r2, [r0, #0xa0]
00670be8  10 20 90 e5                                      ldr r2, [r0, #0x10]
00670bec  0b 3b 83 e3                                      orr r3, r3, #0x2c00
00670bf0  94 30 80 e5                                      str r3, [r0, #0x94]
00670bf4  1c 20 82 e3                                      orr r2, r2, #0x1c
00670bf8  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
00670bfc  10 20 80 e5                                      str r2, [r0, #0x10]
00670c00  34 20 90 e5                                      ldr r2, [r0, #0x34]
00670c04  1a 30 83 e3                                      orr r3, r3, #0x1a
00670c08  1c 30 80 e5                                      str r3, [r0, #0x1c]
00670c0c  0e 20 82 e3                                      orr r2, r2, #0xe
00670c10  28 30 90 e5                                      ldr r3, [r0, #0x28]
00670c14  34 20 80 e5                                      str r2, [r0, #0x34]
00670c18  4c 20 90 e5                                      ldr r2, [r0, #0x4c]
00670c1c  16 30 83 e3                                      orr r3, r3, #0x16
00670c20  28 30 80 e5                                      str r3, [r0, #0x28]
00670c24  3a 2e 82 e3                                      orr r2, r2, #0x3a0
00670c28  64 30 90 e5                                      ldr r3, [r0, #0x64]
00670c2c  4c 20 80 e5                                      str r2, [r0, #0x4c]
00670c30  58 20 90 e5                                      ldr r2, [r0, #0x58]
00670c34  2e 3e 83 e3                                      orr r3, r3, #0x2e0
00670c38  64 30 80 e5                                      str r3, [r0, #0x64]
00670c3c  36 2e 82 e3                                      orr r2, r2, #0x360
00670c40  70 30 90 e5                                      ldr r3, [r0, #0x70]
00670c44  58 20 80 e5                                      str r2, [r0, #0x58]
00670c48  40 20 90 e5                                      ldr r2, [r0, #0x40]
00670c4c  1e 3e 83 e3                                      orr r3, r3, #0x1e0
00670c50  70 30 80 e5                                      str r3, [r0, #0x70]
00670c54  1b aa 8a e3                                      orr sl, sl, #0x1b000
00670c58  0f 8a 88 e3                                      orr r8, r8, #0xf000
00670c5c  1e 7a 87 e3                                      orr r7, r7, #0x1e000
00670c60  3a 6d 86 e3                                      orr r6, r6, #0xe80
00670c64  2e 5d 85 e3                                      orr r5, r5, #0xb80
00670c68  36 4d 84 e3                                      orr r4, r4, #0xd80
00670c6c  1e cd 8c e3                                      orr ip, ip, #0x780
00670c70  0f 1c 81 e3                                      orr r1, r1, #0xf00
00670c74  0d bb 8b e3                                      orr fp, fp, #0x3400
00670c78  0f 3d 82 e3                                      orr r3, r2, #0x3c0
00670c7c  c0 93 80 e5                                      str sb, [r0, #0x3c0]
00670c80  b4 a3 80 e5                                      str sl, [r0, #0x3b4]
00670c84  cc 83 80 e5                                      str r8, [r0, #0x3cc]
00670c88  9c 73 80 e5                                      str r7, [r0, #0x39c]
00670c8c  6c 63 80 e5                                      str r6, [r0, #0x36c]
00670c90  84 53 80 e5                                      str r5, [r0, #0x384]
00670c94  78 43 80 e5                                      str r4, [r0, #0x378]
00670c98  90 c3 80 e5                                      str ip, [r0, #0x390]
00670c9c  60 13 80 e5                                      str r1, [r0, #0x360]
00670ca0  88 b0 80 e5                                      str fp, [r0, #0x88]
00670ca4  40 30 80 e5                                      str r3, [r0, #0x40]
00670ca8  04 00 80 e2                                      add r0, r0, #4
00670cac  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00670cb0  04 00 a0 e1                                      mov r0, r4
00670cb4  ac 76 f2 eb                                      bl #0x30e76c
00670cb8  00 00 50 e3                                      cmp r0, #0
00670cbc  6d ff ff 0a                                      beq #0x670a78
00670cc0  04 40 84 e2                                      add r4, r4, #4
00670cc4  45 2e 84 e2                                      add r2, r4, #0x450
00670cc8  04 30 a0 e1                                      mov r3, r4
00670ccc  04 50 83 e4                                      str r5, [r3], #4
00670cd0  04 50 84 e5                                      str r5, [r4, #4]
00670cd4  0c 40 84 e2                                      add r4, r4, #0xc
00670cd8  02 00 54 e1                                      cmp r4, r2
00670cdc  04 50 83 e5                                      str r5, [r3, #4]
00670ce0  f8 ff ff 1a                                      bne #0x670cc8
00670ce4  10 00 9f e5                                      ldr r0, [pc, #0x10]
00670ce8  00 00 8f e0                                      add r0, pc, r0
00670cec  52 77 f2 eb                                      bl #0x30ea3c
00670cf0  60 ff ff ea                                      b #0x670a78
; mapping-symbol data/literal pool
00670cf4  a0 66 38 00 84 66 38 00 20 64 38 00              .byte 0xa0, 0x66, 0x38, 0x00, 0x84, 0x66, 0x38, 0x00, 0x20, 0x64, 0x38, 0x00
