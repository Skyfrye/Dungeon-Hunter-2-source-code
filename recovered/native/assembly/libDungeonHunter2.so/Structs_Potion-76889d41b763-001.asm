; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d4814, declared_size=76, range_size=76, mode=arm
; class-group: Structs::Potion
; alias: _ZN7Structs6Potion8finalizeEv
; demangled: Structs::Potion::finalize()
; decoder-mode: arm
004d4814  10 40 2d e9                                      push {r4, lr}
004d4818  00 40 a0 e1                                      mov r4, r0
004d481c  08 00 90 e5                                      ldr r0, [r0, #8]
004d4820  00 00 50 e3                                      cmp r0, #0
004d4824  03 00 00 0a                                      beq #0x4d4838
004d4828  04 ef f8 eb                                      bl #0x310440
004d482c  00 30 a0 e3                                      mov r3, #0
004d4830  04 30 84 e5                                      str r3, [r4, #4]
004d4834  08 30 84 e5                                      str r3, [r4, #8]
004d4838  50 00 94 e5                                      ldr r0, [r4, #0x50]
004d483c  00 00 50 e3                                      cmp r0, #0
004d4840  03 00 00 0a                                      beq #0x4d4854
004d4844  fd ee f8 eb                                      bl #0x310440
004d4848  00 30 a0 e3                                      mov r3, #0
004d484c  4c 30 84 e5                                      str r3, [r4, #0x4c]
004d4850  50 30 84 e5                                      str r3, [r4, #0x50]
004d4854  04 00 a0 e1                                      mov r0, r4
004d4858  10 40 bd e8                                      pop {r4, lr}
004d485c  24 ff ff ea                                      b #0x4d44f4

; FUNCTION 0x004d518c, declared_size=88, range_size=88, mode=arm
; class-group: Structs::Potion
; alias: _ZN7Structs6PotionD1Ev
; demangled: Structs::Potion::~Potion()
; decoder-mode: arm
004d518c  10 40 2d e9                                      push {r4, lr}
004d5190  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d5194  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d5198  00 40 a0 e1                                      mov r4, r0
004d519c  03 30 8f e0                                      add r3, pc, r3
004d51a0  08 00 90 e5                                      ldr r0, [r0, #8]
004d51a4  02 20 93 e7                                      ldr r2, [r3, r2]
004d51a8  00 00 50 e3                                      cmp r0, #0
004d51ac  08 20 82 e2                                      add r2, r2, #8
004d51b0  00 20 84 e5                                      str r2, [r4]
004d51b4  00 00 00 0a                                      beq #0x4d51bc
004d51b8  a0 ec f8 eb                                      bl #0x310440
004d51bc  50 00 94 e5                                      ldr r0, [r4, #0x50]
004d51c0  00 00 50 e3                                      cmp r0, #0
004d51c4  00 00 00 0a                                      beq #0x4d51cc
004d51c8  9c ec f8 eb                                      bl #0x310440
004d51cc  04 00 a0 e1                                      mov r0, r4
004d51d0  df fd ff eb                                      bl #0x4d4954
004d51d4  04 00 a0 e1                                      mov r0, r4
004d51d8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d51dc  f4 f8 4b 00 44 28 00 00                          .byte 0xf4, 0xf8, 0x4b, 0x00, 0x44, 0x28, 0x00, 0x00

; FUNCTION 0x004d51e4, declared_size=28, range_size=28, mode=arm
; class-group: Structs::Potion
; alias: _ZN7Structs6PotionD0Ev
; demangled: Structs::Potion::~Potion()
; decoder-mode: arm
004d51e4  10 40 2d e9                                      push {r4, lr}
004d51e8  00 40 a0 e1                                      mov r4, r0
004d51ec  e6 ff ff eb                                      bl #0x4d518c
004d51f0  04 00 a0 e1                                      mov r0, r4
004d51f4  91 ec f8 eb                                      bl #0x310440
004d51f8  04 00 a0 e1                                      mov r0, r4
004d51fc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d5200, declared_size=88, range_size=88, mode=arm
; class-group: Structs::Potion
; alias: _ZN7Structs6PotionD2Ev
; demangled: Structs::Potion::~Potion()
; decoder-mode: arm
004d5200  10 40 2d e9                                      push {r4, lr}
004d5204  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d5208  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d520c  00 40 a0 e1                                      mov r4, r0
004d5210  03 30 8f e0                                      add r3, pc, r3
004d5214  08 00 90 e5                                      ldr r0, [r0, #8]
004d5218  02 20 93 e7                                      ldr r2, [r3, r2]
004d521c  00 00 50 e3                                      cmp r0, #0
004d5220  08 20 82 e2                                      add r2, r2, #8
004d5224  00 20 84 e5                                      str r2, [r4]
004d5228  00 00 00 0a                                      beq #0x4d5230
004d522c  83 ec f8 eb                                      bl #0x310440
004d5230  50 00 94 e5                                      ldr r0, [r4, #0x50]
004d5234  00 00 50 e3                                      cmp r0, #0
004d5238  00 00 00 0a                                      beq #0x4d5240
004d523c  7f ec f8 eb                                      bl #0x310440
004d5240  04 00 a0 e1                                      mov r0, r4
004d5244  c2 fd ff eb                                      bl #0x4d4954
004d5248  04 00 a0 e1                                      mov r0, r4
004d524c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d5250  80 f8 4b 00 44 28 00 00                          .byte 0x80, 0xf8, 0x4b, 0x00, 0x44, 0x28, 0x00, 0x00

; FUNCTION 0x004faf18, declared_size=2216, range_size=2216, mode=arm
; class-group: Structs::Potion
; alias: _ZN7Structs6Potion4readEP11IStreamBase
; demangled: Structs::Potion::read(IStreamBase*)
; decoder-mode: arm
004faf18  70 40 2d e9                                      push {r4, r5, r6, lr}
004faf1c  00 40 a0 e1                                      mov r4, r0
004faf20  08 d0 4d e2                                      sub sp, sp, #8
004faf24  01 50 a0 e1                                      mov r5, r1
004faf28  53 c5 ff eb                                      bl #0x4ec47c
004faf2c  05 00 a0 e1                                      mov r0, r5
004faf30  44 10 84 e2                                      add r1, r4, #0x44
004faf34  55 78 fd eb                                      bl #0x459090
004faf38  01 30 a0 e3                                      mov r3, #1
004faf3c  00 00 53 e3                                      cmp r3, #0
004faf40  04 30 8d e5                                      str r3, [sp, #4]
004faf44  0f 00 00 1a                                      bne #0x4faf88
004faf48  45 30 84 e2                                      add r3, r4, #0x45
004faf4c  46 20 84 e2                                      add r2, r4, #0x46
004faf50  01 00 d2 e5                                      ldrb r0, [r2, #1]
004faf54  01 10 53 e5                                      ldrb r1, [r3, #-1]
004faf58  02 00 53 e1                                      cmp r3, r2
004faf5c  01 10 20 e0                                      eor r1, r0, r1
004faf60  01 10 43 e5                                      strb r1, [r3, #-1]
004faf64  01 00 d2 e5                                      ldrb r0, [r2, #1]
004faf68  00 10 21 e0                                      eor r1, r1, r0
004faf6c  01 10 c2 e5                                      strb r1, [r2, #1]
004faf70  01 00 53 e5                                      ldrb r0, [r3, #-1]
004faf74  01 20 42 e2                                      sub r2, r2, #1
004faf78  00 10 21 e0                                      eor r1, r1, r0
004faf7c  01 10 43 e5                                      strb r1, [r3, #-1]
004faf80  01 30 83 e2                                      add r3, r3, #1
004faf84  f1 ff ff 3a                                      blo #0x4faf50
004faf88  05 00 a0 e1                                      mov r0, r5
004faf8c  48 10 84 e2                                      add r1, r4, #0x48
004faf90  3e 78 fd eb                                      bl #0x459090
004faf94  01 30 a0 e3                                      mov r3, #1
004faf98  00 00 53 e3                                      cmp r3, #0
004faf9c  04 30 8d e5                                      str r3, [sp, #4]
004fafa0  0f 00 00 1a                                      bne #0x4fafe4
004fafa4  49 30 84 e2                                      add r3, r4, #0x49
004fafa8  4a 20 84 e2                                      add r2, r4, #0x4a
004fafac  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fafb0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fafb4  02 00 53 e1                                      cmp r3, r2
004fafb8  01 10 20 e0                                      eor r1, r0, r1
004fafbc  01 10 43 e5                                      strb r1, [r3, #-1]
004fafc0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fafc4  00 10 21 e0                                      eor r1, r1, r0
004fafc8  01 10 c2 e5                                      strb r1, [r2, #1]
004fafcc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fafd0  01 20 42 e2                                      sub r2, r2, #1
004fafd4  00 10 21 e0                                      eor r1, r1, r0
004fafd8  01 10 43 e5                                      strb r1, [r3, #-1]
004fafdc  01 30 83 e2                                      add r3, r3, #1
004fafe0  f1 ff ff 3a                                      blo #0x4fafac
004fafe4  05 00 a0 e1                                      mov r0, r5
004fafe8  4c 10 84 e2                                      add r1, r4, #0x4c
004fafec  6b 90 fb eb                                      bl #0x3df1a0
004faff0  01 30 a0 e3                                      mov r3, #1
004faff4  00 00 53 e3                                      cmp r3, #0
004faff8  04 30 8d e5                                      str r3, [sp, #4]
004faffc  0f 00 00 1a                                      bne #0x4fb040
004fb000  4d 30 84 e2                                      add r3, r4, #0x4d
004fb004  4e 20 84 e2                                      add r2, r4, #0x4e
004fb008  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb00c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fb010  02 00 53 e1                                      cmp r3, r2
004fb014  01 10 20 e0                                      eor r1, r0, r1
004fb018  01 10 43 e5                                      strb r1, [r3, #-1]
004fb01c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb020  00 10 21 e0                                      eor r1, r1, r0
004fb024  01 10 c2 e5                                      strb r1, [r2, #1]
004fb028  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fb02c  01 20 42 e2                                      sub r2, r2, #1
004fb030  00 10 21 e0                                      eor r1, r1, r0
004fb034  01 10 43 e5                                      strb r1, [r3, #-1]
004fb038  01 30 83 e2                                      add r3, r3, #1
004fb03c  f1 ff ff 3a                                      blo #0x4fb008
004fb040  50 00 94 e5                                      ldr r0, [r4, #0x50]
004fb044  00 00 50 e3                                      cmp r0, #0
004fb048  00 00 00 0a                                      beq #0x4fb050
004fb04c  fb 54 f8 eb                                      bl #0x310440
004fb050  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
004fb054  01 10 a0 e3                                      mov r1, #1
004fb058  00 60 a0 e3                                      mov r6, #0
004fb05c  01 00 80 e0                                      add r0, r0, r1
004fb060  41 55 f8 eb                                      bl #0x31056c
004fb064  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
004fb068  00 10 a0 e1                                      mov r1, r0
004fb06c  50 00 84 e5                                      str r0, [r4, #0x50]
004fb070  06 30 a0 e1                                      mov r3, r6
004fb074  05 00 a0 e1                                      mov r0, r5
004fb078  f5 70 f8 eb                                      bl #0x317454
004fb07c  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
004fb080  50 20 94 e5                                      ldr r2, [r4, #0x50]
004fb084  05 00 a0 e1                                      mov r0, r5
004fb088  54 10 84 e2                                      add r1, r4, #0x54
004fb08c  03 60 c2 e7                                      strb r6, [r2, r3]
004fb090  fe 77 fd eb                                      bl #0x459090
004fb094  01 30 a0 e3                                      mov r3, #1
004fb098  06 00 53 e1                                      cmp r3, r6
004fb09c  04 30 8d e5                                      str r3, [sp, #4]
004fb0a0  0f 00 00 1a                                      bne #0x4fb0e4
004fb0a4  55 30 84 e2                                      add r3, r4, #0x55
004fb0a8  56 20 84 e2                                      add r2, r4, #0x56
004fb0ac  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb0b0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fb0b4  02 00 53 e1                                      cmp r3, r2
004fb0b8  01 10 20 e0                                      eor r1, r0, r1
004fb0bc  01 10 43 e5                                      strb r1, [r3, #-1]
004fb0c0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb0c4  00 10 21 e0                                      eor r1, r1, r0
004fb0c8  01 10 c2 e5                                      strb r1, [r2, #1]
004fb0cc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fb0d0  01 20 42 e2                                      sub r2, r2, #1
004fb0d4  00 10 21 e0                                      eor r1, r1, r0
004fb0d8  01 10 43 e5                                      strb r1, [r3, #-1]
004fb0dc  01 30 83 e2                                      add r3, r3, #1
004fb0e0  f1 ff ff 3a                                      blo #0x4fb0ac
004fb0e4  05 00 a0 e1                                      mov r0, r5
004fb0e8  58 10 84 e2                                      add r1, r4, #0x58
004fb0ec  e7 77 fd eb                                      bl #0x459090
004fb0f0  01 30 a0 e3                                      mov r3, #1
004fb0f4  00 00 53 e3                                      cmp r3, #0
004fb0f8  04 30 8d e5                                      str r3, [sp, #4]
004fb0fc  0f 00 00 1a                                      bne #0x4fb140
004fb100  59 30 84 e2                                      add r3, r4, #0x59
004fb104  5a 20 84 e2                                      add r2, r4, #0x5a
004fb108  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb10c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fb110  02 00 53 e1                                      cmp r3, r2
004fb114  01 10 20 e0                                      eor r1, r0, r1
004fb118  01 10 43 e5                                      strb r1, [r3, #-1]
004fb11c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb120  00 10 21 e0                                      eor r1, r1, r0
004fb124  01 10 c2 e5                                      strb r1, [r2, #1]
004fb128  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fb12c  01 20 42 e2                                      sub r2, r2, #1
004fb130  00 10 21 e0                                      eor r1, r1, r0
004fb134  01 10 43 e5                                      strb r1, [r3, #-1]
004fb138  01 30 83 e2                                      add r3, r3, #1
004fb13c  f1 ff ff 3a                                      blo #0x4fb108
004fb140  05 00 a0 e1                                      mov r0, r5
004fb144  5c 10 84 e2                                      add r1, r4, #0x5c
004fb148  d0 77 fd eb                                      bl #0x459090
004fb14c  01 30 a0 e3                                      mov r3, #1
004fb150  00 00 53 e3                                      cmp r3, #0
004fb154  04 30 8d e5                                      str r3, [sp, #4]
004fb158  0f 00 00 1a                                      bne #0x4fb19c
004fb15c  5d 30 84 e2                                      add r3, r4, #0x5d
004fb160  5e 20 84 e2                                      add r2, r4, #0x5e
004fb164  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb168  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fb16c  02 00 53 e1                                      cmp r3, r2
004fb170  01 10 20 e0                                      eor r1, r0, r1
004fb174  01 10 43 e5                                      strb r1, [r3, #-1]
004fb178  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb17c  00 10 21 e0                                      eor r1, r1, r0
004fb180  01 10 c2 e5                                      strb r1, [r2, #1]
004fb184  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fb188  01 20 42 e2                                      sub r2, r2, #1
004fb18c  00 10 21 e0                                      eor r1, r1, r0
004fb190  01 10 43 e5                                      strb r1, [r3, #-1]
004fb194  01 30 83 e2                                      add r3, r3, #1
004fb198  f1 ff ff 3a                                      blo #0x4fb164
004fb19c  05 00 a0 e1                                      mov r0, r5
004fb1a0  60 10 84 e2                                      add r1, r4, #0x60
004fb1a4  b9 77 fd eb                                      bl #0x459090
004fb1a8  01 30 a0 e3                                      mov r3, #1
004fb1ac  00 00 53 e3                                      cmp r3, #0
004fb1b0  04 30 8d e5                                      str r3, [sp, #4]
004fb1b4  0f 00 00 1a                                      bne #0x4fb1f8
004fb1b8  61 30 84 e2                                      add r3, r4, #0x61
004fb1bc  62 20 84 e2                                      add r2, r4, #0x62
004fb1c0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb1c4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fb1c8  02 00 53 e1                                      cmp r3, r2
004fb1cc  01 10 20 e0                                      eor r1, r0, r1
004fb1d0  01 10 43 e5                                      strb r1, [r3, #-1]
004fb1d4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb1d8  00 10 21 e0                                      eor r1, r1, r0
004fb1dc  01 10 c2 e5                                      strb r1, [r2, #1]
004fb1e0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fb1e4  01 20 42 e2                                      sub r2, r2, #1
004fb1e8  00 10 21 e0                                      eor r1, r1, r0
004fb1ec  01 10 43 e5                                      strb r1, [r3, #-1]
004fb1f0  01 30 83 e2                                      add r3, r3, #1
004fb1f4  f1 ff ff 3a                                      blo #0x4fb1c0
004fb1f8  05 00 a0 e1                                      mov r0, r5
004fb1fc  64 10 84 e2                                      add r1, r4, #0x64
004fb200  a2 77 fd eb                                      bl #0x459090
004fb204  01 30 a0 e3                                      mov r3, #1
004fb208  00 00 53 e3                                      cmp r3, #0
004fb20c  04 30 8d e5                                      str r3, [sp, #4]
004fb210  0f 00 00 1a                                      bne #0x4fb254
004fb214  65 30 84 e2                                      add r3, r4, #0x65
004fb218  66 20 84 e2                                      add r2, r4, #0x66
004fb21c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb220  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fb224  02 00 53 e1                                      cmp r3, r2
004fb228  01 10 20 e0                                      eor r1, r0, r1
004fb22c  01 10 43 e5                                      strb r1, [r3, #-1]
004fb230  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb234  00 10 21 e0                                      eor r1, r1, r0
004fb238  01 10 c2 e5                                      strb r1, [r2, #1]
004fb23c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fb240  01 20 42 e2                                      sub r2, r2, #1
004fb244  00 10 21 e0                                      eor r1, r1, r0
004fb248  01 10 43 e5                                      strb r1, [r3, #-1]
004fb24c  01 30 83 e2                                      add r3, r3, #1
004fb250  f1 ff ff 3a                                      blo #0x4fb21c
004fb254  05 00 a0 e1                                      mov r0, r5
004fb258  68 10 84 e2                                      add r1, r4, #0x68
004fb25c  8b 77 fd eb                                      bl #0x459090
004fb260  01 30 a0 e3                                      mov r3, #1
004fb264  00 00 53 e3                                      cmp r3, #0
004fb268  04 30 8d e5                                      str r3, [sp, #4]
004fb26c  0f 00 00 1a                                      bne #0x4fb2b0
004fb270  69 30 84 e2                                      add r3, r4, #0x69
004fb274  6a 20 84 e2                                      add r2, r4, #0x6a
004fb278  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb27c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fb280  02 00 53 e1                                      cmp r3, r2
004fb284  01 10 20 e0                                      eor r1, r0, r1
004fb288  01 10 43 e5                                      strb r1, [r3, #-1]
004fb28c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb290  00 10 21 e0                                      eor r1, r1, r0
004fb294  01 10 c2 e5                                      strb r1, [r2, #1]
004fb298  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fb29c  01 20 42 e2                                      sub r2, r2, #1
004fb2a0  00 10 21 e0                                      eor r1, r1, r0
004fb2a4  01 10 43 e5                                      strb r1, [r3, #-1]
004fb2a8  01 30 83 e2                                      add r3, r3, #1
004fb2ac  f1 ff ff 3a                                      blo #0x4fb278
004fb2b0  05 00 a0 e1                                      mov r0, r5
004fb2b4  6c 10 84 e2                                      add r1, r4, #0x6c
004fb2b8  74 77 fd eb                                      bl #0x459090
004fb2bc  01 30 a0 e3                                      mov r3, #1
004fb2c0  00 00 53 e3                                      cmp r3, #0
004fb2c4  04 30 8d e5                                      str r3, [sp, #4]
004fb2c8  0f 00 00 1a                                      bne #0x4fb30c
004fb2cc  6d 30 84 e2                                      add r3, r4, #0x6d
004fb2d0  6e 20 84 e2                                      add r2, r4, #0x6e
004fb2d4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb2d8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fb2dc  02 00 53 e1                                      cmp r3, r2
004fb2e0  01 10 20 e0                                      eor r1, r0, r1
004fb2e4  01 10 43 e5                                      strb r1, [r3, #-1]
004fb2e8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb2ec  00 10 21 e0                                      eor r1, r1, r0
004fb2f0  01 10 c2 e5                                      strb r1, [r2, #1]
004fb2f4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fb2f8  01 20 42 e2                                      sub r2, r2, #1
004fb2fc  00 10 21 e0                                      eor r1, r1, r0
004fb300  01 10 43 e5                                      strb r1, [r3, #-1]
004fb304  01 30 83 e2                                      add r3, r3, #1
004fb308  f1 ff ff 3a                                      blo #0x4fb2d4
004fb30c  05 00 a0 e1                                      mov r0, r5
004fb310  70 10 84 e2                                      add r1, r4, #0x70
004fb314  5d 77 fd eb                                      bl #0x459090
004fb318  01 30 a0 e3                                      mov r3, #1
004fb31c  00 00 53 e3                                      cmp r3, #0
004fb320  04 30 8d e5                                      str r3, [sp, #4]
004fb324  0f 00 00 1a                                      bne #0x4fb368
004fb328  71 30 84 e2                                      add r3, r4, #0x71
004fb32c  72 20 84 e2                                      add r2, r4, #0x72
004fb330  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb334  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fb338  02 00 53 e1                                      cmp r3, r2
004fb33c  01 10 20 e0                                      eor r1, r0, r1
004fb340  01 10 43 e5                                      strb r1, [r3, #-1]
004fb344  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb348  00 10 21 e0                                      eor r1, r1, r0
004fb34c  01 10 c2 e5                                      strb r1, [r2, #1]
004fb350  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fb354  01 20 42 e2                                      sub r2, r2, #1
004fb358  00 10 21 e0                                      eor r1, r1, r0
004fb35c  01 10 43 e5                                      strb r1, [r3, #-1]
004fb360  01 30 83 e2                                      add r3, r3, #1
004fb364  f1 ff ff 3a                                      blo #0x4fb330
004fb368  05 00 a0 e1                                      mov r0, r5
004fb36c  74 10 84 e2                                      add r1, r4, #0x74
004fb370  46 77 fd eb                                      bl #0x459090
004fb374  01 30 a0 e3                                      mov r3, #1
004fb378  00 00 53 e3                                      cmp r3, #0
004fb37c  04 30 8d e5                                      str r3, [sp, #4]
004fb380  0f 00 00 1a                                      bne #0x4fb3c4
004fb384  75 30 84 e2                                      add r3, r4, #0x75
004fb388  76 20 84 e2                                      add r2, r4, #0x76
004fb38c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb390  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fb394  02 00 53 e1                                      cmp r3, r2
004fb398  01 10 20 e0                                      eor r1, r0, r1
004fb39c  01 10 43 e5                                      strb r1, [r3, #-1]
004fb3a0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb3a4  00 10 21 e0                                      eor r1, r1, r0
004fb3a8  01 10 c2 e5                                      strb r1, [r2, #1]
004fb3ac  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fb3b0  01 20 42 e2                                      sub r2, r2, #1
004fb3b4  00 10 21 e0                                      eor r1, r1, r0
004fb3b8  01 10 43 e5                                      strb r1, [r3, #-1]
004fb3bc  01 30 83 e2                                      add r3, r3, #1
004fb3c0  f1 ff ff 3a                                      blo #0x4fb38c
004fb3c4  05 00 a0 e1                                      mov r0, r5
004fb3c8  78 10 84 e2                                      add r1, r4, #0x78
004fb3cc  2f 77 fd eb                                      bl #0x459090
004fb3d0  01 30 a0 e3                                      mov r3, #1
004fb3d4  00 00 53 e3                                      cmp r3, #0
004fb3d8  04 30 8d e5                                      str r3, [sp, #4]
004fb3dc  0f 00 00 1a                                      bne #0x4fb420
004fb3e0  79 30 84 e2                                      add r3, r4, #0x79
004fb3e4  7a 20 84 e2                                      add r2, r4, #0x7a
004fb3e8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb3ec  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fb3f0  02 00 53 e1                                      cmp r3, r2
004fb3f4  01 10 20 e0                                      eor r1, r0, r1
004fb3f8  01 10 43 e5                                      strb r1, [r3, #-1]
004fb3fc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb400  00 10 21 e0                                      eor r1, r1, r0
004fb404  01 10 c2 e5                                      strb r1, [r2, #1]
004fb408  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fb40c  01 20 42 e2                                      sub r2, r2, #1
004fb410  00 10 21 e0                                      eor r1, r1, r0
004fb414  01 10 43 e5                                      strb r1, [r3, #-1]
004fb418  01 30 83 e2                                      add r3, r3, #1
004fb41c  f1 ff ff 3a                                      blo #0x4fb3e8
004fb420  05 00 a0 e1                                      mov r0, r5
004fb424  7c 10 84 e2                                      add r1, r4, #0x7c
004fb428  18 77 fd eb                                      bl #0x459090
004fb42c  01 30 a0 e3                                      mov r3, #1
004fb430  00 00 53 e3                                      cmp r3, #0
004fb434  04 30 8d e5                                      str r3, [sp, #4]
004fb438  0f 00 00 1a                                      bne #0x4fb47c
004fb43c  7d 30 84 e2                                      add r3, r4, #0x7d
004fb440  7e 20 84 e2                                      add r2, r4, #0x7e
004fb444  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb448  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fb44c  02 00 53 e1                                      cmp r3, r2
004fb450  01 10 20 e0                                      eor r1, r0, r1
004fb454  01 10 43 e5                                      strb r1, [r3, #-1]
004fb458  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb45c  00 10 21 e0                                      eor r1, r1, r0
004fb460  01 10 c2 e5                                      strb r1, [r2, #1]
004fb464  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fb468  01 20 42 e2                                      sub r2, r2, #1
004fb46c  00 10 21 e0                                      eor r1, r1, r0
004fb470  01 10 43 e5                                      strb r1, [r3, #-1]
004fb474  01 30 83 e2                                      add r3, r3, #1
004fb478  f1 ff ff 3a                                      blo #0x4fb444
004fb47c  05 00 a0 e1                                      mov r0, r5
004fb480  80 10 84 e2                                      add r1, r4, #0x80
004fb484  01 77 fd eb                                      bl #0x459090
004fb488  01 30 a0 e3                                      mov r3, #1
004fb48c  00 00 53 e3                                      cmp r3, #0
004fb490  04 30 8d e5                                      str r3, [sp, #4]
004fb494  0f 00 00 1a                                      bne #0x4fb4d8
004fb498  81 30 84 e2                                      add r3, r4, #0x81
004fb49c  82 20 84 e2                                      add r2, r4, #0x82
004fb4a0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb4a4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fb4a8  02 00 53 e1                                      cmp r3, r2
004fb4ac  01 10 20 e0                                      eor r1, r0, r1
004fb4b0  01 10 43 e5                                      strb r1, [r3, #-1]
004fb4b4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb4b8  00 10 21 e0                                      eor r1, r1, r0
004fb4bc  01 10 c2 e5                                      strb r1, [r2, #1]
004fb4c0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fb4c4  01 20 42 e2                                      sub r2, r2, #1
004fb4c8  00 10 21 e0                                      eor r1, r1, r0
004fb4cc  01 10 43 e5                                      strb r1, [r3, #-1]
004fb4d0  01 30 83 e2                                      add r3, r3, #1
004fb4d4  f1 ff ff 3a                                      blo #0x4fb4a0
004fb4d8  05 00 a0 e1                                      mov r0, r5
004fb4dc  84 10 84 e2                                      add r1, r4, #0x84
004fb4e0  ea 76 fd eb                                      bl #0x459090
004fb4e4  01 30 a0 e3                                      mov r3, #1
004fb4e8  00 00 53 e3                                      cmp r3, #0
004fb4ec  04 30 8d e5                                      str r3, [sp, #4]
004fb4f0  0f 00 00 1a                                      bne #0x4fb534
004fb4f4  85 30 84 e2                                      add r3, r4, #0x85
004fb4f8  86 20 84 e2                                      add r2, r4, #0x86
004fb4fc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb500  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fb504  02 00 53 e1                                      cmp r3, r2
004fb508  01 10 20 e0                                      eor r1, r0, r1
004fb50c  01 10 43 e5                                      strb r1, [r3, #-1]
004fb510  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb514  00 10 21 e0                                      eor r1, r1, r0
004fb518  01 10 c2 e5                                      strb r1, [r2, #1]
004fb51c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fb520  01 20 42 e2                                      sub r2, r2, #1
004fb524  00 10 21 e0                                      eor r1, r1, r0
004fb528  01 10 43 e5                                      strb r1, [r3, #-1]
004fb52c  01 30 83 e2                                      add r3, r3, #1
004fb530  f1 ff ff 3a                                      blo #0x4fb4fc
004fb534  05 00 a0 e1                                      mov r0, r5
004fb538  88 10 84 e2                                      add r1, r4, #0x88
004fb53c  d3 76 fd eb                                      bl #0x459090
004fb540  01 30 a0 e3                                      mov r3, #1
004fb544  00 00 53 e3                                      cmp r3, #0
004fb548  04 30 8d e5                                      str r3, [sp, #4]
004fb54c  0f 00 00 1a                                      bne #0x4fb590
004fb550  89 30 84 e2                                      add r3, r4, #0x89
004fb554  8a 20 84 e2                                      add r2, r4, #0x8a
004fb558  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb55c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fb560  02 00 53 e1                                      cmp r3, r2
004fb564  01 10 20 e0                                      eor r1, r0, r1
004fb568  01 10 43 e5                                      strb r1, [r3, #-1]
004fb56c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb570  00 10 21 e0                                      eor r1, r1, r0
004fb574  01 10 c2 e5                                      strb r1, [r2, #1]
004fb578  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fb57c  01 20 42 e2                                      sub r2, r2, #1
004fb580  00 10 21 e0                                      eor r1, r1, r0
004fb584  01 10 43 e5                                      strb r1, [r3, #-1]
004fb588  01 30 83 e2                                      add r3, r3, #1
004fb58c  f1 ff ff 3a                                      blo #0x4fb558
004fb590  05 00 a0 e1                                      mov r0, r5
004fb594  8c 10 84 e2                                      add r1, r4, #0x8c
004fb598  bc 76 fd eb                                      bl #0x459090
004fb59c  01 30 a0 e3                                      mov r3, #1
004fb5a0  00 00 53 e3                                      cmp r3, #0
004fb5a4  04 30 8d e5                                      str r3, [sp, #4]
004fb5a8  0f 00 00 1a                                      bne #0x4fb5ec
004fb5ac  8d 30 84 e2                                      add r3, r4, #0x8d
004fb5b0  8e 20 84 e2                                      add r2, r4, #0x8e
004fb5b4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb5b8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fb5bc  02 00 53 e1                                      cmp r3, r2
004fb5c0  01 10 20 e0                                      eor r1, r0, r1
004fb5c4  01 10 43 e5                                      strb r1, [r3, #-1]
004fb5c8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb5cc  00 10 21 e0                                      eor r1, r1, r0
004fb5d0  01 10 c2 e5                                      strb r1, [r2, #1]
004fb5d4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fb5d8  01 20 42 e2                                      sub r2, r2, #1
004fb5dc  00 10 21 e0                                      eor r1, r1, r0
004fb5e0  01 10 43 e5                                      strb r1, [r3, #-1]
004fb5e4  01 30 83 e2                                      add r3, r3, #1
004fb5e8  f1 ff ff 3a                                      blo #0x4fb5b4
004fb5ec  05 00 a0 e1                                      mov r0, r5
004fb5f0  90 10 84 e2                                      add r1, r4, #0x90
004fb5f4  a5 76 fd eb                                      bl #0x459090
004fb5f8  01 30 a0 e3                                      mov r3, #1
004fb5fc  00 00 53 e3                                      cmp r3, #0
004fb600  04 30 8d e5                                      str r3, [sp, #4]
004fb604  0f 00 00 1a                                      bne #0x4fb648
004fb608  91 30 84 e2                                      add r3, r4, #0x91
004fb60c  92 20 84 e2                                      add r2, r4, #0x92
004fb610  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb614  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fb618  02 00 53 e1                                      cmp r3, r2
004fb61c  01 10 20 e0                                      eor r1, r0, r1
004fb620  01 10 43 e5                                      strb r1, [r3, #-1]
004fb624  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb628  00 10 21 e0                                      eor r1, r1, r0
004fb62c  01 10 c2 e5                                      strb r1, [r2, #1]
004fb630  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fb634  01 20 42 e2                                      sub r2, r2, #1
004fb638  00 10 21 e0                                      eor r1, r1, r0
004fb63c  01 10 43 e5                                      strb r1, [r3, #-1]
004fb640  01 30 83 e2                                      add r3, r3, #1
004fb644  f1 ff ff 3a                                      blo #0x4fb610
004fb648  05 00 a0 e1                                      mov r0, r5
004fb64c  94 10 84 e2                                      add r1, r4, #0x94
004fb650  8e 76 fd eb                                      bl #0x459090
004fb654  01 30 a0 e3                                      mov r3, #1
004fb658  00 00 53 e3                                      cmp r3, #0
004fb65c  04 30 8d e5                                      str r3, [sp, #4]
004fb660  0f 00 00 1a                                      bne #0x4fb6a4
004fb664  95 30 84 e2                                      add r3, r4, #0x95
004fb668  96 20 84 e2                                      add r2, r4, #0x96
004fb66c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb670  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fb674  02 00 53 e1                                      cmp r3, r2
004fb678  01 10 20 e0                                      eor r1, r0, r1
004fb67c  01 10 43 e5                                      strb r1, [r3, #-1]
004fb680  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb684  00 10 21 e0                                      eor r1, r1, r0
004fb688  01 10 c2 e5                                      strb r1, [r2, #1]
004fb68c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fb690  01 20 42 e2                                      sub r2, r2, #1
004fb694  00 10 21 e0                                      eor r1, r1, r0
004fb698  01 10 43 e5                                      strb r1, [r3, #-1]
004fb69c  01 30 83 e2                                      add r3, r3, #1
004fb6a0  f1 ff ff 3a                                      blo #0x4fb66c
004fb6a4  05 00 a0 e1                                      mov r0, r5
004fb6a8  98 10 84 e2                                      add r1, r4, #0x98
004fb6ac  77 76 fd eb                                      bl #0x459090
004fb6b0  01 30 a0 e3                                      mov r3, #1
004fb6b4  00 00 53 e3                                      cmp r3, #0
004fb6b8  04 30 8d e5                                      str r3, [sp, #4]
004fb6bc  0f 00 00 1a                                      bne #0x4fb700
004fb6c0  99 30 84 e2                                      add r3, r4, #0x99
004fb6c4  9a 20 84 e2                                      add r2, r4, #0x9a
004fb6c8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb6cc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fb6d0  02 00 53 e1                                      cmp r3, r2
004fb6d4  01 10 20 e0                                      eor r1, r0, r1
004fb6d8  01 10 43 e5                                      strb r1, [r3, #-1]
004fb6dc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb6e0  00 10 21 e0                                      eor r1, r1, r0
004fb6e4  01 10 c2 e5                                      strb r1, [r2, #1]
004fb6e8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fb6ec  01 20 42 e2                                      sub r2, r2, #1
004fb6f0  00 10 21 e0                                      eor r1, r1, r0
004fb6f4  01 10 43 e5                                      strb r1, [r3, #-1]
004fb6f8  01 30 83 e2                                      add r3, r3, #1
004fb6fc  f1 ff ff 3a                                      blo #0x4fb6c8
004fb700  05 00 a0 e1                                      mov r0, r5
004fb704  9c 10 84 e2                                      add r1, r4, #0x9c
004fb708  60 76 fd eb                                      bl #0x459090
004fb70c  01 30 a0 e3                                      mov r3, #1
004fb710  00 00 53 e3                                      cmp r3, #0
004fb714  04 30 8d e5                                      str r3, [sp, #4]
004fb718  0f 00 00 1a                                      bne #0x4fb75c
004fb71c  9d 30 84 e2                                      add r3, r4, #0x9d
004fb720  9e 20 84 e2                                      add r2, r4, #0x9e
004fb724  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb728  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fb72c  02 00 53 e1                                      cmp r3, r2
004fb730  01 10 20 e0                                      eor r1, r0, r1
004fb734  01 10 43 e5                                      strb r1, [r3, #-1]
004fb738  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb73c  00 10 21 e0                                      eor r1, r1, r0
004fb740  01 10 c2 e5                                      strb r1, [r2, #1]
004fb744  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fb748  01 20 42 e2                                      sub r2, r2, #1
004fb74c  00 10 21 e0                                      eor r1, r1, r0
004fb750  01 10 43 e5                                      strb r1, [r3, #-1]
004fb754  01 30 83 e2                                      add r3, r3, #1
004fb758  f1 ff ff 3a                                      blo #0x4fb724
004fb75c  05 00 a0 e1                                      mov r0, r5
004fb760  a0 10 84 e2                                      add r1, r4, #0xa0
004fb764  49 76 fd eb                                      bl #0x459090
004fb768  01 30 a0 e3                                      mov r3, #1
004fb76c  00 00 53 e3                                      cmp r3, #0
004fb770  04 30 8d e5                                      str r3, [sp, #4]
004fb774  0f 00 00 1a                                      bne #0x4fb7b8
004fb778  a2 30 84 e2                                      add r3, r4, #0xa2
004fb77c  a1 40 84 e2                                      add r4, r4, #0xa1
004fb780  01 10 d3 e5                                      ldrb r1, [r3, #1]
004fb784  01 20 54 e5                                      ldrb r2, [r4, #-1]
004fb788  03 00 54 e1                                      cmp r4, r3
004fb78c  02 20 21 e0                                      eor r2, r1, r2
004fb790  01 20 44 e5                                      strb r2, [r4, #-1]
004fb794  01 10 d3 e5                                      ldrb r1, [r3, #1]
004fb798  01 20 22 e0                                      eor r2, r2, r1
004fb79c  01 20 c3 e5                                      strb r2, [r3, #1]
004fb7a0  01 10 54 e5                                      ldrb r1, [r4, #-1]
004fb7a4  01 30 43 e2                                      sub r3, r3, #1
004fb7a8  01 20 22 e0                                      eor r2, r2, r1
004fb7ac  01 20 44 e5                                      strb r2, [r4, #-1]
004fb7b0  01 40 84 e2                                      add r4, r4, #1
004fb7b4  f1 ff ff 3a                                      blo #0x4fb780
004fb7b8  08 d0 8d e2                                      add sp, sp, #8
004fb7bc  70 80 bd e8                                      pop {r4, r5, r6, pc}
