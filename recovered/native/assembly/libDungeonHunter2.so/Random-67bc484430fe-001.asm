; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0033ff90, declared_size=196, range_size=196, mode=arm
; class-group: Random
; alias: _ZN6Random9GetRandomEib
; demangled: Random::GetRandom(int, bool)
; decoder-mode: arm
0033ff90  70 40 2d e9                                      push {r4, r5, r6, lr}
0033ff94  a8 40 9f e5                                      ldr r4, [pc, #0xa8]
0033ff98  00 50 51 e2                                      subs r5, r1, #0
0033ff9c  04 40 8f e0                                      add r4, pc, r4
0033ffa0  23 00 00 0a                                      beq #0x340034
0033ffa4  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
0033ffa8  03 20 94 e7                                      ldr r2, [r4, r3]
0033ffac  02 30 a0 e1                                      mov r3, r2
0033ffb0  00 20 92 e5                                      ldr r2, [r2]
0033ffb4  00 00 50 e3                                      cmp r0, #0
0033ffb8  13 00 00 0a                                      beq #0x34000c
0033ffbc  ab 16 0e e3                                      movw r1, #0xe6ab
0033ffc0  91 02 02 e0                                      mul r2, r1, r2
0033ffc4  17 cb 0d e3                                      movw ip, #0xdb17
0033ffc8  2b 1a 82 e2                                      add r1, r2, #0x2b000
0033ffcc  ff 1f 81 e2                                      add r1, r1, #0x3fc
0033ffd0  01 10 81 e2                                      add r1, r1, #1
0033ffd4  52 cb 42 e3                                      movt ip, #0x2b52
0033ffd8  9c e1 82 e0                                      umull lr, r2, ip, r1
0033ffdc  6b c2 0f e3                                      movw ip, #0xf26b
0033ffe0  01 e0 62 e0                                      rsb lr, r2, r1
0033ffe4  ae 20 82 e0                                      add r2, r2, lr, lsr #1
0033ffe8  da c0 40 e3                                      movt ip, #0xda
0033ffec  a2 2b a0 e1                                      lsr r2, r2, #0x17
0033fff0  9c 12 62 e0                                      mls r2, ip, r2, r1
0033fff4  00 10 a0 e1                                      mov r1, r0
0033fff8  00 20 83 e5                                      str r2, [r3]
0033fffc  02 00 a0 e1                                      mov r0, r2
00340000  c9 3a ff eb                                      bl #0x30eb2c
00340004  c1 0f 21 e0                                      eor r0, r1, r1, asr #31
00340008  c1 0f 40 e0                                      sub r0, r0, r1, asr #31
0034000c  38 30 9f e5                                      ldr r3, [pc, #0x38]
00340010  00 00 55 e3                                      cmp r5, #0
00340014  03 30 94 e7                                      ldr r3, [r4, r3]
00340018  04 20 93 15                                      ldrne r2, [r3, #4]
0034001c  00 20 93 05                                      ldreq r2, [r3]
00340020  01 20 82 12                                      addne r2, r2, #1
00340024  01 20 82 02                                      addeq r2, r2, #1
00340028  04 20 83 15                                      strne r2, [r3, #4]
0034002c  00 20 83 05                                      streq r2, [r3]
00340030  70 80 bd e8                                      pop {r4, r5, r6, pc}
00340034  14 30 9f e5                                      ldr r3, [pc, #0x14]
00340038  03 30 94 e7                                      ldr r3, [r4, r3]
0034003c  00 20 93 e5                                      ldr r2, [r3]
00340040  db ff ff ea                                      b #0x33ffb4
; mapping-symbol data/literal pool
00340044  f4 4a 65 00 10 0b 00 00 88 10 00 00 94 0c 00 00  .byte 0xf4, 0x4a, 0x65, 0x00, 0x10, 0x0b, 0x00, 0x00, 0x88, 0x10, 0x00, 0x00, 0x94, 0x0c, 0x00, 0x00

; FUNCTION 0x0037bc2c, declared_size=148, range_size=148, mode=arm
; class-group: Random
; alias: _ZN6Random9GetRandomEib.clone.1
; demangled: Random::GetRandom(int, bool) [clone .clone.1]
; decoder-mode: arm
0037bc2c  10 40 2d e9                                      push {r4, lr}
0037bc30  7c 40 9f e5                                      ldr r4, [pc, #0x7c]
0037bc34  00 00 50 e3                                      cmp r0, #0
0037bc38  04 40 8f e0                                      add r4, pc, r4
0037bc3c  16 00 00 0a                                      beq #0x37bc9c
0037bc40  70 20 9f e5                                      ldr r2, [pc, #0x70]
0037bc44  00 10 a0 e1                                      mov r1, r0
0037bc48  ab 06 0e e3                                      movw r0, #0xe6ab
0037bc4c  02 20 94 e7                                      ldr r2, [r4, r2]
0037bc50  17 3b 0d e3                                      movw r3, #0xdb17
0037bc54  52 3b 42 e3                                      movt r3, #0x2b52
0037bc58  00 e0 92 e5                                      ldr lr, [r2]
0037bc5c  6b c2 0f e3                                      movw ip, #0xf26b
0037bc60  da c0 40 e3                                      movt ip, #0xda
0037bc64  90 0e 00 e0                                      mul r0, r0, lr
0037bc68  2b 0a 80 e2                                      add r0, r0, #0x2b000
0037bc6c  ff 0f 80 e2                                      add r0, r0, #0x3fc
0037bc70  01 00 80 e2                                      add r0, r0, #1
0037bc74  93 e0 83 e0                                      umull lr, r3, r3, r0
0037bc78  00 e0 63 e0                                      rsb lr, r3, r0
0037bc7c  ae 30 83 e0                                      add r3, r3, lr, lsr #1
0037bc80  a3 3b a0 e1                                      lsr r3, r3, #0x17
0037bc84  9c 03 63 e0                                      mls r3, ip, r3, r0
0037bc88  03 00 a0 e1                                      mov r0, r3
0037bc8c  00 30 82 e5                                      str r3, [r2]
0037bc90  a5 4b fe eb                                      bl #0x30eb2c
0037bc94  c1 0f 21 e0                                      eor r0, r1, r1, asr #31
0037bc98  c1 0f 40 e0                                      sub r0, r0, r1, asr #31
0037bc9c  18 30 9f e5                                      ldr r3, [pc, #0x18]
0037bca0  03 30 94 e7                                      ldr r3, [r4, r3]
0037bca4  00 20 93 e5                                      ldr r2, [r3]
0037bca8  01 20 82 e2                                      add r2, r2, #1
0037bcac  00 20 83 e5                                      str r2, [r3]
0037bcb0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0037bcb4  58 8e 61 00 94 0c 00 00 88 10 00 00              .byte 0x58, 0x8e, 0x61, 0x00, 0x94, 0x0c, 0x00, 0x00, 0x88, 0x10, 0x00, 0x00

; FUNCTION 0x00388c58, declared_size=148, range_size=148, mode=arm
; class-group: Random
; alias: _ZN6Random9GetRandomEib.clone.3
; demangled: Random::GetRandom(int, bool) [clone .clone.3]
; decoder-mode: arm
00388c58  10 40 2d e9                                      push {r4, lr}
00388c5c  7c 40 9f e5                                      ldr r4, [pc, #0x7c]
00388c60  00 00 50 e3                                      cmp r0, #0
00388c64  04 40 8f e0                                      add r4, pc, r4
00388c68  16 00 00 0a                                      beq #0x388cc8
00388c6c  70 20 9f e5                                      ldr r2, [pc, #0x70]
00388c70  00 10 a0 e1                                      mov r1, r0
00388c74  ab 06 0e e3                                      movw r0, #0xe6ab
00388c78  02 20 94 e7                                      ldr r2, [r4, r2]
00388c7c  17 3b 0d e3                                      movw r3, #0xdb17
00388c80  52 3b 42 e3                                      movt r3, #0x2b52
00388c84  00 e0 92 e5                                      ldr lr, [r2]
00388c88  6b c2 0f e3                                      movw ip, #0xf26b
00388c8c  da c0 40 e3                                      movt ip, #0xda
00388c90  90 0e 00 e0                                      mul r0, r0, lr
00388c94  2b 0a 80 e2                                      add r0, r0, #0x2b000
00388c98  ff 0f 80 e2                                      add r0, r0, #0x3fc
00388c9c  01 00 80 e2                                      add r0, r0, #1
00388ca0  93 e0 83 e0                                      umull lr, r3, r3, r0
00388ca4  00 e0 63 e0                                      rsb lr, r3, r0
00388ca8  ae 30 83 e0                                      add r3, r3, lr, lsr #1
00388cac  a3 3b a0 e1                                      lsr r3, r3, #0x17
00388cb0  9c 03 63 e0                                      mls r3, ip, r3, r0
00388cb4  03 00 a0 e1                                      mov r0, r3
00388cb8  00 30 82 e5                                      str r3, [r2]
00388cbc  9a 17 fe eb                                      bl #0x30eb2c
00388cc0  c1 0f 21 e0                                      eor r0, r1, r1, asr #31
00388cc4  c1 0f 40 e0                                      sub r0, r0, r1, asr #31
00388cc8  18 30 9f e5                                      ldr r3, [pc, #0x18]
00388ccc  03 30 94 e7                                      ldr r3, [r4, r3]
00388cd0  00 20 93 e5                                      ldr r2, [r3]
00388cd4  01 20 82 e2                                      add r2, r2, #1
00388cd8  00 20 83 e5                                      str r2, [r3]
00388cdc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00388ce0  2c be 60 00 94 0c 00 00 88 10 00 00              .byte 0x2c, 0xbe, 0x60, 0x00, 0x94, 0x0c, 0x00, 0x00, 0x88, 0x10, 0x00, 0x00

; FUNCTION 0x0038bc3c, declared_size=296, range_size=296, mode=arm
; class-group: Random
; alias: _ZN6Random9GetRandomEib.clone.2
; demangled: Random::GetRandom(int, bool) [clone .clone.2]
; decoder-mode: arm
0038bc3c  10 31 9f e5                                      ldr r3, [pc, #0x110]
0038bc40  00 00 50 e3                                      cmp r0, #0
0038bc44  30 00 2d e9                                      push {r4, r5}
0038bc48  03 30 8f e0                                      add r3, pc, r3
0038bc4c  20 00 00 0a                                      beq #0x38bcd4
0038bc50  00 21 9f e5                                      ldr r2, [pc, #0x100]
0038bc54  ab 16 0e e3                                      movw r1, #0xe6ab
0038bc58  17 cb 0d e3                                      movw ip, #0xdb17
0038bc5c  02 40 93 e7                                      ldr r4, [r3, r2]
0038bc60  52 cb 42 e3                                      movt ip, #0x2b52
0038bc64  6b 02 0f e3                                      movw r0, #0xf26b
0038bc68  00 20 94 e5                                      ldr r2, [r4]
0038bc6c  da 00 40 e3                                      movt r0, #0xda
0038bc70  91 02 02 e0                                      mul r2, r1, r2
0038bc74  03 15 0b e3                                      movw r1, #0xb503
0038bc78  2b 2a 82 e2                                      add r2, r2, #0x2b000
0038bc7c  ff 2f 82 e2                                      add r2, r2, #0x3fc
0038bc80  01 20 82 e2                                      add r2, r2, #1
0038bc84  9c 52 8c e0                                      umull r5, ip, ip, r2
0038bc88  7e 15 4a e3                                      movt r1, #0xa57e
0038bc8c  02 50 6c e0                                      rsb r5, ip, r2
0038bc90  a5 c0 8c e0                                      add ip, ip, r5, lsr #1
0038bc94  c0 50 9f e5                                      ldr r5, [pc, #0xc0]
0038bc98  05 50 93 e7                                      ldr r5, [r3, r5]
0038bc9c  ac 3b a0 e1                                      lsr r3, ip, #0x17
0038bca0  90 23 63 e0                                      mls r3, r0, r3, r2
0038bca4  04 00 95 e5                                      ldr r0, [r5, #4]
0038bca8  91 c3 82 e0                                      umull ip, r2, r1, r3
0038bcac  63 10 a0 e3                                      mov r1, #0x63
0038bcb0  22 23 a0 e1                                      lsr r2, r2, #6
0038bcb4  91 32 62 e0                                      mls r2, r1, r2, r3
0038bcb8  01 10 80 e2                                      add r1, r0, #1
0038bcbc  04 10 85 e5                                      str r1, [r5, #4]
0038bcc0  c2 0f 22 e0                                      eor r0, r2, r2, asr #31
0038bcc4  c2 0f 40 e0                                      sub r0, r0, r2, asr #31
0038bcc8  00 30 84 e5                                      str r3, [r4]
0038bccc  30 00 bd e8                                      pop {r4, r5}
0038bcd0  1e ff 2f e1                                      bx lr
0038bcd4  84 20 9f e5                                      ldr r2, [pc, #0x84]
0038bcd8  ab 16 0e e3                                      movw r1, #0xe6ab
0038bcdc  17 cb 0d e3                                      movw ip, #0xdb17
0038bce0  02 40 93 e7                                      ldr r4, [r3, r2]
0038bce4  52 cb 42 e3                                      movt ip, #0x2b52
0038bce8  6b 02 0f e3                                      movw r0, #0xf26b
0038bcec  00 20 94 e5                                      ldr r2, [r4]
0038bcf0  da 00 40 e3                                      movt r0, #0xda
0038bcf4  91 02 02 e0                                      mul r2, r1, r2
0038bcf8  03 15 0b e3                                      movw r1, #0xb503
0038bcfc  2b 2a 82 e2                                      add r2, r2, #0x2b000
0038bd00  ff 2f 82 e2                                      add r2, r2, #0x3fc
0038bd04  01 20 82 e2                                      add r2, r2, #1
0038bd08  9c 52 8c e0                                      umull r5, ip, ip, r2
0038bd0c  7e 15 4a e3                                      movt r1, #0xa57e
0038bd10  02 50 6c e0                                      rsb r5, ip, r2
0038bd14  a5 c0 8c e0                                      add ip, ip, r5, lsr #1
0038bd18  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
0038bd1c  05 50 93 e7                                      ldr r5, [r3, r5]
0038bd20  ac 3b a0 e1                                      lsr r3, ip, #0x17
0038bd24  90 23 63 e0                                      mls r3, r0, r3, r2
0038bd28  00 00 95 e5                                      ldr r0, [r5]
0038bd2c  91 c3 82 e0                                      umull ip, r2, r1, r3
0038bd30  63 10 a0 e3                                      mov r1, #0x63
0038bd34  22 23 a0 e1                                      lsr r2, r2, #6
0038bd38  91 32 62 e0                                      mls r2, r1, r2, r3
0038bd3c  01 10 80 e2                                      add r1, r0, #1
0038bd40  00 10 85 e5                                      str r1, [r5]
0038bd44  c2 0f 22 e0                                      eor r0, r2, r2, asr #31
0038bd48  c2 0f 40 e0                                      sub r0, r0, r2, asr #31
0038bd4c  00 30 84 e5                                      str r3, [r4]
0038bd50  dd ff ff ea                                      b #0x38bccc
; mapping-symbol data/literal pool
0038bd54  48 8e 60 00 10 0b 00 00 88 10 00 00 94 0c 00 00  .byte 0x48, 0x8e, 0x60, 0x00, 0x10, 0x0b, 0x00, 0x00, 0x88, 0x10, 0x00, 0x00, 0x94, 0x0c, 0x00, 0x00

; FUNCTION 0x0038e578, declared_size=148, range_size=148, mode=arm
; class-group: Random
; alias: _ZN6Random9GetRandomEib.clone.1
; demangled: Random::GetRandom(int, bool) [clone .clone.1]
; decoder-mode: arm
0038e578  10 40 2d e9                                      push {r4, lr}
0038e57c  7c 40 9f e5                                      ldr r4, [pc, #0x7c]
0038e580  00 00 50 e3                                      cmp r0, #0
0038e584  04 40 8f e0                                      add r4, pc, r4
0038e588  16 00 00 0a                                      beq #0x38e5e8
0038e58c  70 20 9f e5                                      ldr r2, [pc, #0x70]
0038e590  00 10 a0 e1                                      mov r1, r0
0038e594  ab 06 0e e3                                      movw r0, #0xe6ab
0038e598  02 20 94 e7                                      ldr r2, [r4, r2]
0038e59c  17 3b 0d e3                                      movw r3, #0xdb17
0038e5a0  52 3b 42 e3                                      movt r3, #0x2b52
0038e5a4  00 e0 92 e5                                      ldr lr, [r2]
0038e5a8  6b c2 0f e3                                      movw ip, #0xf26b
0038e5ac  da c0 40 e3                                      movt ip, #0xda
0038e5b0  90 0e 00 e0                                      mul r0, r0, lr
0038e5b4  2b 0a 80 e2                                      add r0, r0, #0x2b000
0038e5b8  ff 0f 80 e2                                      add r0, r0, #0x3fc
0038e5bc  01 00 80 e2                                      add r0, r0, #1
0038e5c0  93 e0 83 e0                                      umull lr, r3, r3, r0
0038e5c4  00 e0 63 e0                                      rsb lr, r3, r0
0038e5c8  ae 30 83 e0                                      add r3, r3, lr, lsr #1
0038e5cc  a3 3b a0 e1                                      lsr r3, r3, #0x17
0038e5d0  9c 03 63 e0                                      mls r3, ip, r3, r0
0038e5d4  03 00 a0 e1                                      mov r0, r3
0038e5d8  00 30 82 e5                                      str r3, [r2]
0038e5dc  52 01 fe eb                                      bl #0x30eb2c
0038e5e0  c1 0f 21 e0                                      eor r0, r1, r1, asr #31
0038e5e4  c1 0f 40 e0                                      sub r0, r0, r1, asr #31
0038e5e8  18 30 9f e5                                      ldr r3, [pc, #0x18]
0038e5ec  03 30 94 e7                                      ldr r3, [r4, r3]
0038e5f0  00 20 93 e5                                      ldr r2, [r3]
0038e5f4  01 20 82 e2                                      add r2, r2, #1
0038e5f8  00 20 83 e5                                      str r2, [r3]
0038e5fc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0038e600  0c 65 60 00 94 0c 00 00 88 10 00 00              .byte 0x0c, 0x65, 0x60, 0x00, 0x94, 0x0c, 0x00, 0x00, 0x88, 0x10, 0x00, 0x00

; FUNCTION 0x003af6d8, declared_size=148, range_size=148, mode=arm
; class-group: Random
; alias: _ZN6Random9GetRandomEib.clone.1
; demangled: Random::GetRandom(int, bool) [clone .clone.1]
; decoder-mode: arm
003af6d8  10 40 2d e9                                      push {r4, lr}
003af6dc  7c 40 9f e5                                      ldr r4, [pc, #0x7c]
003af6e0  00 00 50 e3                                      cmp r0, #0
003af6e4  04 40 8f e0                                      add r4, pc, r4
003af6e8  16 00 00 0a                                      beq #0x3af748
003af6ec  70 20 9f e5                                      ldr r2, [pc, #0x70]
003af6f0  00 10 a0 e1                                      mov r1, r0
003af6f4  ab 06 0e e3                                      movw r0, #0xe6ab
003af6f8  02 20 94 e7                                      ldr r2, [r4, r2]
003af6fc  17 3b 0d e3                                      movw r3, #0xdb17
003af700  52 3b 42 e3                                      movt r3, #0x2b52
003af704  00 e0 92 e5                                      ldr lr, [r2]
003af708  6b c2 0f e3                                      movw ip, #0xf26b
003af70c  da c0 40 e3                                      movt ip, #0xda
003af710  90 0e 00 e0                                      mul r0, r0, lr
003af714  2b 0a 80 e2                                      add r0, r0, #0x2b000
003af718  ff 0f 80 e2                                      add r0, r0, #0x3fc
003af71c  01 00 80 e2                                      add r0, r0, #1
003af720  93 e0 83 e0                                      umull lr, r3, r3, r0
003af724  00 e0 63 e0                                      rsb lr, r3, r0
003af728  ae 30 83 e0                                      add r3, r3, lr, lsr #1
003af72c  a3 3b a0 e1                                      lsr r3, r3, #0x17
003af730  9c 03 63 e0                                      mls r3, ip, r3, r0
003af734  03 00 a0 e1                                      mov r0, r3
003af738  00 30 82 e5                                      str r3, [r2]
003af73c  fa 7c fd eb                                      bl #0x30eb2c
003af740  c1 0f 21 e0                                      eor r0, r1, r1, asr #31
003af744  c1 0f 40 e0                                      sub r0, r0, r1, asr #31
003af748  18 30 9f e5                                      ldr r3, [pc, #0x18]
003af74c  03 30 94 e7                                      ldr r3, [r4, r3]
003af750  00 20 93 e5                                      ldr r2, [r3]
003af754  01 20 82 e2                                      add r2, r2, #1
003af758  00 20 83 e5                                      str r2, [r3]
003af75c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003af760  ac 53 5e 00 94 0c 00 00 88 10 00 00              .byte 0xac, 0x53, 0x5e, 0x00, 0x94, 0x0c, 0x00, 0x00, 0x88, 0x10, 0x00, 0x00

; FUNCTION 0x003c26a0, declared_size=148, range_size=148, mode=arm
; class-group: Random
; alias: _ZN6Random9GetRandomEib.clone.1
; demangled: Random::GetRandom(int, bool) [clone .clone.1]
; decoder-mode: arm
003c26a0  10 40 2d e9                                      push {r4, lr}
003c26a4  7c 40 9f e5                                      ldr r4, [pc, #0x7c]
003c26a8  00 00 50 e3                                      cmp r0, #0
003c26ac  04 40 8f e0                                      add r4, pc, r4
003c26b0  16 00 00 0a                                      beq #0x3c2710
003c26b4  70 20 9f e5                                      ldr r2, [pc, #0x70]
003c26b8  00 10 a0 e1                                      mov r1, r0
003c26bc  ab 06 0e e3                                      movw r0, #0xe6ab
003c26c0  02 20 94 e7                                      ldr r2, [r4, r2]
003c26c4  17 3b 0d e3                                      movw r3, #0xdb17
003c26c8  52 3b 42 e3                                      movt r3, #0x2b52
003c26cc  00 e0 92 e5                                      ldr lr, [r2]
003c26d0  6b c2 0f e3                                      movw ip, #0xf26b
003c26d4  da c0 40 e3                                      movt ip, #0xda
003c26d8  90 0e 00 e0                                      mul r0, r0, lr
003c26dc  2b 0a 80 e2                                      add r0, r0, #0x2b000
003c26e0  ff 0f 80 e2                                      add r0, r0, #0x3fc
003c26e4  01 00 80 e2                                      add r0, r0, #1
003c26e8  93 e0 83 e0                                      umull lr, r3, r3, r0
003c26ec  00 e0 63 e0                                      rsb lr, r3, r0
003c26f0  ae 30 83 e0                                      add r3, r3, lr, lsr #1
003c26f4  a3 3b a0 e1                                      lsr r3, r3, #0x17
003c26f8  9c 03 63 e0                                      mls r3, ip, r3, r0
003c26fc  03 00 a0 e1                                      mov r0, r3
003c2700  00 30 82 e5                                      str r3, [r2]
003c2704  08 31 fd eb                                      bl #0x30eb2c
003c2708  c1 0f 21 e0                                      eor r0, r1, r1, asr #31
003c270c  c1 0f 40 e0                                      sub r0, r0, r1, asr #31
003c2710  18 30 9f e5                                      ldr r3, [pc, #0x18]
003c2714  03 30 94 e7                                      ldr r3, [r4, r3]
003c2718  00 20 93 e5                                      ldr r2, [r3]
003c271c  01 20 82 e2                                      add r2, r2, #1
003c2720  00 20 83 e5                                      str r2, [r3]
003c2724  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003c2728  e4 23 5d 00 94 0c 00 00 88 10 00 00              .byte 0xe4, 0x23, 0x5d, 0x00, 0x94, 0x0c, 0x00, 0x00, 0x88, 0x10, 0x00, 0x00

; FUNCTION 0x003ca708, declared_size=148, range_size=148, mode=arm
; class-group: Random
; alias: _ZN6Random9GetRandomEib.clone.1
; demangled: Random::GetRandom(int, bool) [clone .clone.1]
; decoder-mode: arm
003ca708  10 40 2d e9                                      push {r4, lr}
003ca70c  7c 40 9f e5                                      ldr r4, [pc, #0x7c]
003ca710  00 00 50 e3                                      cmp r0, #0
003ca714  04 40 8f e0                                      add r4, pc, r4
003ca718  16 00 00 0a                                      beq #0x3ca778
003ca71c  70 20 9f e5                                      ldr r2, [pc, #0x70]
003ca720  00 10 a0 e1                                      mov r1, r0
003ca724  ab 06 0e e3                                      movw r0, #0xe6ab
003ca728  02 20 94 e7                                      ldr r2, [r4, r2]
003ca72c  17 3b 0d e3                                      movw r3, #0xdb17
003ca730  52 3b 42 e3                                      movt r3, #0x2b52
003ca734  00 e0 92 e5                                      ldr lr, [r2]
003ca738  6b c2 0f e3                                      movw ip, #0xf26b
003ca73c  da c0 40 e3                                      movt ip, #0xda
003ca740  90 0e 00 e0                                      mul r0, r0, lr
003ca744  2b 0a 80 e2                                      add r0, r0, #0x2b000
003ca748  ff 0f 80 e2                                      add r0, r0, #0x3fc
003ca74c  01 00 80 e2                                      add r0, r0, #1
003ca750  93 e0 83 e0                                      umull lr, r3, r3, r0
003ca754  00 e0 63 e0                                      rsb lr, r3, r0
003ca758  ae 30 83 e0                                      add r3, r3, lr, lsr #1
003ca75c  a3 3b a0 e1                                      lsr r3, r3, #0x17
003ca760  9c 03 63 e0                                      mls r3, ip, r3, r0
003ca764  03 00 a0 e1                                      mov r0, r3
003ca768  00 30 82 e5                                      str r3, [r2]
003ca76c  ee 10 fd eb                                      bl #0x30eb2c
003ca770  c1 0f 21 e0                                      eor r0, r1, r1, asr #31
003ca774  c1 0f 40 e0                                      sub r0, r0, r1, asr #31
003ca778  18 30 9f e5                                      ldr r3, [pc, #0x18]
003ca77c  03 30 94 e7                                      ldr r3, [r4, r3]
003ca780  00 20 93 e5                                      ldr r2, [r3]
003ca784  01 20 82 e2                                      add r2, r2, #1
003ca788  00 20 83 e5                                      str r2, [r3]
003ca78c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003ca790  7c a3 5c 00 94 0c 00 00 88 10 00 00              .byte 0x7c, 0xa3, 0x5c, 0x00, 0x94, 0x0c, 0x00, 0x00, 0x88, 0x10, 0x00, 0x00

; FUNCTION 0x003e8dac, declared_size=148, range_size=148, mode=arm
; class-group: Random
; alias: _ZN6Random9GetRandomEib.clone.1
; demangled: Random::GetRandom(int, bool) [clone .clone.1]
; decoder-mode: arm
003e8dac  10 40 2d e9                                      push {r4, lr}
003e8db0  7c 40 9f e5                                      ldr r4, [pc, #0x7c]
003e8db4  00 00 50 e3                                      cmp r0, #0
003e8db8  04 40 8f e0                                      add r4, pc, r4
003e8dbc  16 00 00 0a                                      beq #0x3e8e1c
003e8dc0  70 20 9f e5                                      ldr r2, [pc, #0x70]
003e8dc4  00 10 a0 e1                                      mov r1, r0
003e8dc8  ab 06 0e e3                                      movw r0, #0xe6ab
003e8dcc  02 20 94 e7                                      ldr r2, [r4, r2]
003e8dd0  17 3b 0d e3                                      movw r3, #0xdb17
003e8dd4  52 3b 42 e3                                      movt r3, #0x2b52
003e8dd8  00 e0 92 e5                                      ldr lr, [r2]
003e8ddc  6b c2 0f e3                                      movw ip, #0xf26b
003e8de0  da c0 40 e3                                      movt ip, #0xda
003e8de4  90 0e 00 e0                                      mul r0, r0, lr
003e8de8  2b 0a 80 e2                                      add r0, r0, #0x2b000
003e8dec  ff 0f 80 e2                                      add r0, r0, #0x3fc
003e8df0  01 00 80 e2                                      add r0, r0, #1
003e8df4  93 e0 83 e0                                      umull lr, r3, r3, r0
003e8df8  00 e0 63 e0                                      rsb lr, r3, r0
003e8dfc  ae 30 83 e0                                      add r3, r3, lr, lsr #1
003e8e00  a3 3b a0 e1                                      lsr r3, r3, #0x17
003e8e04  9c 03 63 e0                                      mls r3, ip, r3, r0
003e8e08  03 00 a0 e1                                      mov r0, r3
003e8e0c  00 30 82 e5                                      str r3, [r2]
003e8e10  45 97 fc eb                                      bl #0x30eb2c
003e8e14  c1 0f 21 e0                                      eor r0, r1, r1, asr #31
003e8e18  c1 0f 40 e0                                      sub r0, r0, r1, asr #31
003e8e1c  18 30 9f e5                                      ldr r3, [pc, #0x18]
003e8e20  03 30 94 e7                                      ldr r3, [r4, r3]
003e8e24  00 20 93 e5                                      ldr r2, [r3]
003e8e28  01 20 82 e2                                      add r2, r2, #1
003e8e2c  00 20 83 e5                                      str r2, [r3]
003e8e30  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003e8e34  d8 bc 5a 00 94 0c 00 00 88 10 00 00              .byte 0xd8, 0xbc, 0x5a, 0x00, 0x94, 0x0c, 0x00, 0x00, 0x88, 0x10, 0x00, 0x00

; FUNCTION 0x003ec5d4, declared_size=148, range_size=148, mode=arm
; class-group: Random
; alias: _ZN6Random9GetRandomEib.clone.17
; demangled: Random::GetRandom(int, bool) [clone .clone.17]
; decoder-mode: arm
003ec5d4  10 40 2d e9                                      push {r4, lr}
003ec5d8  7c 40 9f e5                                      ldr r4, [pc, #0x7c]
003ec5dc  00 00 50 e3                                      cmp r0, #0
003ec5e0  04 40 8f e0                                      add r4, pc, r4
003ec5e4  16 00 00 0a                                      beq #0x3ec644
003ec5e8  70 20 9f e5                                      ldr r2, [pc, #0x70]
003ec5ec  00 10 a0 e1                                      mov r1, r0
003ec5f0  ab 06 0e e3                                      movw r0, #0xe6ab
003ec5f4  02 20 94 e7                                      ldr r2, [r4, r2]
003ec5f8  17 3b 0d e3                                      movw r3, #0xdb17
003ec5fc  52 3b 42 e3                                      movt r3, #0x2b52
003ec600  00 e0 92 e5                                      ldr lr, [r2]
003ec604  6b c2 0f e3                                      movw ip, #0xf26b
003ec608  da c0 40 e3                                      movt ip, #0xda
003ec60c  90 0e 00 e0                                      mul r0, r0, lr
003ec610  2b 0a 80 e2                                      add r0, r0, #0x2b000
003ec614  ff 0f 80 e2                                      add r0, r0, #0x3fc
003ec618  01 00 80 e2                                      add r0, r0, #1
003ec61c  93 e0 83 e0                                      umull lr, r3, r3, r0
003ec620  00 e0 63 e0                                      rsb lr, r3, r0
003ec624  ae 30 83 e0                                      add r3, r3, lr, lsr #1
003ec628  a3 3b a0 e1                                      lsr r3, r3, #0x17
003ec62c  9c 03 63 e0                                      mls r3, ip, r3, r0
003ec630  03 00 a0 e1                                      mov r0, r3
003ec634  00 30 82 e5                                      str r3, [r2]
003ec638  3b 89 fc eb                                      bl #0x30eb2c
003ec63c  c1 0f 21 e0                                      eor r0, r1, r1, asr #31
003ec640  c1 0f 40 e0                                      sub r0, r0, r1, asr #31
003ec644  18 30 9f e5                                      ldr r3, [pc, #0x18]
003ec648  03 30 94 e7                                      ldr r3, [r4, r3]
003ec64c  00 20 93 e5                                      ldr r2, [r3]
003ec650  01 20 82 e2                                      add r2, r2, #1
003ec654  00 20 83 e5                                      str r2, [r3]
003ec658  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003ec65c  b0 84 5a 00 94 0c 00 00 88 10 00 00              .byte 0xb0, 0x84, 0x5a, 0x00, 0x94, 0x0c, 0x00, 0x00, 0x88, 0x10, 0x00, 0x00

; FUNCTION 0x00401afc, declared_size=148, range_size=148, mode=arm
; class-group: Random
; alias: _ZN6Random9GetRandomEib.clone.1
; demangled: Random::GetRandom(int, bool) [clone .clone.1]
; decoder-mode: arm
00401afc  10 40 2d e9                                      push {r4, lr}
00401b00  7c 40 9f e5                                      ldr r4, [pc, #0x7c]
00401b04  00 00 50 e3                                      cmp r0, #0
00401b08  04 40 8f e0                                      add r4, pc, r4
00401b0c  16 00 00 0a                                      beq #0x401b6c
00401b10  70 20 9f e5                                      ldr r2, [pc, #0x70]
00401b14  00 10 a0 e1                                      mov r1, r0
00401b18  ab 06 0e e3                                      movw r0, #0xe6ab
00401b1c  02 20 94 e7                                      ldr r2, [r4, r2]
00401b20  17 3b 0d e3                                      movw r3, #0xdb17
00401b24  52 3b 42 e3                                      movt r3, #0x2b52
00401b28  00 e0 92 e5                                      ldr lr, [r2]
00401b2c  6b c2 0f e3                                      movw ip, #0xf26b
00401b30  da c0 40 e3                                      movt ip, #0xda
00401b34  90 0e 00 e0                                      mul r0, r0, lr
00401b38  2b 0a 80 e2                                      add r0, r0, #0x2b000
00401b3c  ff 0f 80 e2                                      add r0, r0, #0x3fc
00401b40  01 00 80 e2                                      add r0, r0, #1
00401b44  93 e0 83 e0                                      umull lr, r3, r3, r0
00401b48  00 e0 63 e0                                      rsb lr, r3, r0
00401b4c  ae 30 83 e0                                      add r3, r3, lr, lsr #1
00401b50  a3 3b a0 e1                                      lsr r3, r3, #0x17
00401b54  9c 03 63 e0                                      mls r3, ip, r3, r0
00401b58  03 00 a0 e1                                      mov r0, r3
00401b5c  00 30 82 e5                                      str r3, [r2]
00401b60  f1 33 fc eb                                      bl #0x30eb2c
00401b64  c1 0f 21 e0                                      eor r0, r1, r1, asr #31
00401b68  c1 0f 40 e0                                      sub r0, r0, r1, asr #31
00401b6c  18 30 9f e5                                      ldr r3, [pc, #0x18]
00401b70  03 30 94 e7                                      ldr r3, [r4, r3]
00401b74  00 20 93 e5                                      ldr r2, [r3]
00401b78  01 20 82 e2                                      add r2, r2, #1
00401b7c  00 20 83 e5                                      str r2, [r3]
00401b80  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00401b84  88 2f 59 00 94 0c 00 00 88 10 00 00              .byte 0x88, 0x2f, 0x59, 0x00, 0x94, 0x0c, 0x00, 0x00, 0x88, 0x10, 0x00, 0x00

; FUNCTION 0x00493780, declared_size=148, range_size=148, mode=arm
; class-group: Random
; alias: _ZN6Random9GetRandomEib.clone.1
; demangled: Random::GetRandom(int, bool) [clone .clone.1]
; decoder-mode: arm
00493780  10 40 2d e9                                      push {r4, lr}
00493784  7c 40 9f e5                                      ldr r4, [pc, #0x7c]
00493788  00 00 50 e3                                      cmp r0, #0
0049378c  04 40 8f e0                                      add r4, pc, r4
00493790  16 00 00 0a                                      beq #0x4937f0
00493794  70 20 9f e5                                      ldr r2, [pc, #0x70]
00493798  00 10 a0 e1                                      mov r1, r0
0049379c  ab 06 0e e3                                      movw r0, #0xe6ab
004937a0  02 20 94 e7                                      ldr r2, [r4, r2]
004937a4  17 3b 0d e3                                      movw r3, #0xdb17
004937a8  52 3b 42 e3                                      movt r3, #0x2b52
004937ac  00 e0 92 e5                                      ldr lr, [r2]
004937b0  6b c2 0f e3                                      movw ip, #0xf26b
004937b4  da c0 40 e3                                      movt ip, #0xda
004937b8  90 0e 00 e0                                      mul r0, r0, lr
004937bc  2b 0a 80 e2                                      add r0, r0, #0x2b000
004937c0  ff 0f 80 e2                                      add r0, r0, #0x3fc
004937c4  01 00 80 e2                                      add r0, r0, #1
004937c8  93 e0 83 e0                                      umull lr, r3, r3, r0
004937cc  00 e0 63 e0                                      rsb lr, r3, r0
004937d0  ae 30 83 e0                                      add r3, r3, lr, lsr #1
004937d4  a3 3b a0 e1                                      lsr r3, r3, #0x17
004937d8  9c 03 63 e0                                      mls r3, ip, r3, r0
004937dc  03 00 a0 e1                                      mov r0, r3
004937e0  00 30 82 e5                                      str r3, [r2]
004937e4  d0 ec f9 eb                                      bl #0x30eb2c
004937e8  c1 0f 21 e0                                      eor r0, r1, r1, asr #31
004937ec  c1 0f 40 e0                                      sub r0, r0, r1, asr #31
004937f0  18 30 9f e5                                      ldr r3, [pc, #0x18]
004937f4  03 30 94 e7                                      ldr r3, [r4, r3]
004937f8  00 20 93 e5                                      ldr r2, [r3]
004937fc  01 20 82 e2                                      add r2, r2, #1
00493800  00 20 83 e5                                      str r2, [r3]
00493804  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00493808  04 13 50 00 94 0c 00 00 88 10 00 00              .byte 0x04, 0x13, 0x50, 0x00, 0x94, 0x0c, 0x00, 0x00, 0x88, 0x10, 0x00, 0x00
