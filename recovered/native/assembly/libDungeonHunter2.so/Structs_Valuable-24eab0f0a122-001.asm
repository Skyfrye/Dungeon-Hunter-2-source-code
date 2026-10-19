; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d47c8, declared_size=76, range_size=76, mode=arm
; class-group: Structs::Valuable
; alias: _ZN7Structs8Valuable8finalizeEv
; demangled: Structs::Valuable::finalize()
; decoder-mode: arm
004d47c8  10 40 2d e9                                      push {r4, lr}
004d47cc  00 40 a0 e1                                      mov r4, r0
004d47d0  08 00 90 e5                                      ldr r0, [r0, #8]
004d47d4  00 00 50 e3                                      cmp r0, #0
004d47d8  03 00 00 0a                                      beq #0x4d47ec
004d47dc  17 ef f8 eb                                      bl #0x310440
004d47e0  00 30 a0 e3                                      mov r3, #0
004d47e4  04 30 84 e5                                      str r3, [r4, #4]
004d47e8  08 30 84 e5                                      str r3, [r4, #8]
004d47ec  50 00 94 e5                                      ldr r0, [r4, #0x50]
004d47f0  00 00 50 e3                                      cmp r0, #0
004d47f4  03 00 00 0a                                      beq #0x4d4808
004d47f8  10 ef f8 eb                                      bl #0x310440
004d47fc  00 30 a0 e3                                      mov r3, #0
004d4800  4c 30 84 e5                                      str r3, [r4, #0x4c]
004d4804  50 30 84 e5                                      str r3, [r4, #0x50]
004d4808  04 00 a0 e1                                      mov r0, r4
004d480c  10 40 bd e8                                      pop {r4, lr}
004d4810  37 ff ff ea                                      b #0x4d44f4

; FUNCTION 0x004d50c0, declared_size=88, range_size=88, mode=arm
; class-group: Structs::Valuable
; alias: _ZN7Structs8ValuableD1Ev
; demangled: Structs::Valuable::~Valuable()
; decoder-mode: arm
004d50c0  10 40 2d e9                                      push {r4, lr}
004d50c4  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d50c8  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d50cc  00 40 a0 e1                                      mov r4, r0
004d50d0  03 30 8f e0                                      add r3, pc, r3
004d50d4  08 00 90 e5                                      ldr r0, [r0, #8]
004d50d8  02 20 93 e7                                      ldr r2, [r3, r2]
004d50dc  00 00 50 e3                                      cmp r0, #0
004d50e0  08 20 82 e2                                      add r2, r2, #8
004d50e4  00 20 84 e5                                      str r2, [r4]
004d50e8  00 00 00 0a                                      beq #0x4d50f0
004d50ec  d3 ec f8 eb                                      bl #0x310440
004d50f0  50 00 94 e5                                      ldr r0, [r4, #0x50]
004d50f4  00 00 50 e3                                      cmp r0, #0
004d50f8  00 00 00 0a                                      beq #0x4d5100
004d50fc  cf ec f8 eb                                      bl #0x310440
004d5100  04 00 a0 e1                                      mov r0, r4
004d5104  12 fe ff eb                                      bl #0x4d4954
004d5108  04 00 a0 e1                                      mov r0, r4
004d510c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d5110  c0 f9 4b 00 74 3a 00 00                          .byte 0xc0, 0xf9, 0x4b, 0x00, 0x74, 0x3a, 0x00, 0x00

; FUNCTION 0x004d5118, declared_size=28, range_size=28, mode=arm
; class-group: Structs::Valuable
; alias: _ZN7Structs8ValuableD0Ev
; demangled: Structs::Valuable::~Valuable()
; decoder-mode: arm
004d5118  10 40 2d e9                                      push {r4, lr}
004d511c  00 40 a0 e1                                      mov r4, r0
004d5120  e6 ff ff eb                                      bl #0x4d50c0
004d5124  04 00 a0 e1                                      mov r0, r4
004d5128  c4 ec f8 eb                                      bl #0x310440
004d512c  04 00 a0 e1                                      mov r0, r4
004d5130  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d5134, declared_size=88, range_size=88, mode=arm
; class-group: Structs::Valuable
; alias: _ZN7Structs8ValuableD2Ev
; demangled: Structs::Valuable::~Valuable()
; decoder-mode: arm
004d5134  10 40 2d e9                                      push {r4, lr}
004d5138  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d513c  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d5140  00 40 a0 e1                                      mov r4, r0
004d5144  03 30 8f e0                                      add r3, pc, r3
004d5148  08 00 90 e5                                      ldr r0, [r0, #8]
004d514c  02 20 93 e7                                      ldr r2, [r3, r2]
004d5150  00 00 50 e3                                      cmp r0, #0
004d5154  08 20 82 e2                                      add r2, r2, #8
004d5158  00 20 84 e5                                      str r2, [r4]
004d515c  00 00 00 0a                                      beq #0x4d5164
004d5160  b6 ec f8 eb                                      bl #0x310440
004d5164  50 00 94 e5                                      ldr r0, [r4, #0x50]
004d5168  00 00 50 e3                                      cmp r0, #0
004d516c  00 00 00 0a                                      beq #0x4d5174
004d5170  b2 ec f8 eb                                      bl #0x310440
004d5174  04 00 a0 e1                                      mov r0, r4
004d5178  f5 fd ff eb                                      bl #0x4d4954
004d517c  04 00 a0 e1                                      mov r0, r4
004d5180  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d5184  4c f9 4b 00 74 3a 00 00                          .byte 0x4c, 0xf9, 0x4b, 0x00, 0x74, 0x3a, 0x00, 0x00

; FUNCTION 0x004fa670, declared_size=2216, range_size=2216, mode=arm
; class-group: Structs::Valuable
; alias: _ZN7Structs8Valuable4readEP11IStreamBase
; demangled: Structs::Valuable::read(IStreamBase*)
; decoder-mode: arm
004fa670  70 40 2d e9                                      push {r4, r5, r6, lr}
004fa674  00 40 a0 e1                                      mov r4, r0
004fa678  08 d0 4d e2                                      sub sp, sp, #8
004fa67c  01 50 a0 e1                                      mov r5, r1
004fa680  7d c7 ff eb                                      bl #0x4ec47c
004fa684  05 00 a0 e1                                      mov r0, r5
004fa688  44 10 84 e2                                      add r1, r4, #0x44
004fa68c  7f 7a fd eb                                      bl #0x459090
004fa690  01 30 a0 e3                                      mov r3, #1
004fa694  00 00 53 e3                                      cmp r3, #0
004fa698  04 30 8d e5                                      str r3, [sp, #4]
004fa69c  0f 00 00 1a                                      bne #0x4fa6e0
004fa6a0  45 30 84 e2                                      add r3, r4, #0x45
004fa6a4  46 20 84 e2                                      add r2, r4, #0x46
004fa6a8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa6ac  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fa6b0  02 00 53 e1                                      cmp r3, r2
004fa6b4  01 10 20 e0                                      eor r1, r0, r1
004fa6b8  01 10 43 e5                                      strb r1, [r3, #-1]
004fa6bc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa6c0  00 10 21 e0                                      eor r1, r1, r0
004fa6c4  01 10 c2 e5                                      strb r1, [r2, #1]
004fa6c8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fa6cc  01 20 42 e2                                      sub r2, r2, #1
004fa6d0  00 10 21 e0                                      eor r1, r1, r0
004fa6d4  01 10 43 e5                                      strb r1, [r3, #-1]
004fa6d8  01 30 83 e2                                      add r3, r3, #1
004fa6dc  f1 ff ff 3a                                      blo #0x4fa6a8
004fa6e0  05 00 a0 e1                                      mov r0, r5
004fa6e4  48 10 84 e2                                      add r1, r4, #0x48
004fa6e8  68 7a fd eb                                      bl #0x459090
004fa6ec  01 30 a0 e3                                      mov r3, #1
004fa6f0  00 00 53 e3                                      cmp r3, #0
004fa6f4  04 30 8d e5                                      str r3, [sp, #4]
004fa6f8  0f 00 00 1a                                      bne #0x4fa73c
004fa6fc  49 30 84 e2                                      add r3, r4, #0x49
004fa700  4a 20 84 e2                                      add r2, r4, #0x4a
004fa704  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa708  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fa70c  02 00 53 e1                                      cmp r3, r2
004fa710  01 10 20 e0                                      eor r1, r0, r1
004fa714  01 10 43 e5                                      strb r1, [r3, #-1]
004fa718  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa71c  00 10 21 e0                                      eor r1, r1, r0
004fa720  01 10 c2 e5                                      strb r1, [r2, #1]
004fa724  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fa728  01 20 42 e2                                      sub r2, r2, #1
004fa72c  00 10 21 e0                                      eor r1, r1, r0
004fa730  01 10 43 e5                                      strb r1, [r3, #-1]
004fa734  01 30 83 e2                                      add r3, r3, #1
004fa738  f1 ff ff 3a                                      blo #0x4fa704
004fa73c  05 00 a0 e1                                      mov r0, r5
004fa740  4c 10 84 e2                                      add r1, r4, #0x4c
004fa744  95 92 fb eb                                      bl #0x3df1a0
004fa748  01 30 a0 e3                                      mov r3, #1
004fa74c  00 00 53 e3                                      cmp r3, #0
004fa750  04 30 8d e5                                      str r3, [sp, #4]
004fa754  0f 00 00 1a                                      bne #0x4fa798
004fa758  4d 30 84 e2                                      add r3, r4, #0x4d
004fa75c  4e 20 84 e2                                      add r2, r4, #0x4e
004fa760  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa764  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fa768  02 00 53 e1                                      cmp r3, r2
004fa76c  01 10 20 e0                                      eor r1, r0, r1
004fa770  01 10 43 e5                                      strb r1, [r3, #-1]
004fa774  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa778  00 10 21 e0                                      eor r1, r1, r0
004fa77c  01 10 c2 e5                                      strb r1, [r2, #1]
004fa780  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fa784  01 20 42 e2                                      sub r2, r2, #1
004fa788  00 10 21 e0                                      eor r1, r1, r0
004fa78c  01 10 43 e5                                      strb r1, [r3, #-1]
004fa790  01 30 83 e2                                      add r3, r3, #1
004fa794  f1 ff ff 3a                                      blo #0x4fa760
004fa798  50 00 94 e5                                      ldr r0, [r4, #0x50]
004fa79c  00 00 50 e3                                      cmp r0, #0
004fa7a0  00 00 00 0a                                      beq #0x4fa7a8
004fa7a4  25 57 f8 eb                                      bl #0x310440
004fa7a8  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
004fa7ac  01 10 a0 e3                                      mov r1, #1
004fa7b0  00 60 a0 e3                                      mov r6, #0
004fa7b4  01 00 80 e0                                      add r0, r0, r1
004fa7b8  6b 57 f8 eb                                      bl #0x31056c
004fa7bc  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
004fa7c0  00 10 a0 e1                                      mov r1, r0
004fa7c4  50 00 84 e5                                      str r0, [r4, #0x50]
004fa7c8  06 30 a0 e1                                      mov r3, r6
004fa7cc  05 00 a0 e1                                      mov r0, r5
004fa7d0  1f 73 f8 eb                                      bl #0x317454
004fa7d4  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
004fa7d8  50 20 94 e5                                      ldr r2, [r4, #0x50]
004fa7dc  05 00 a0 e1                                      mov r0, r5
004fa7e0  54 10 84 e2                                      add r1, r4, #0x54
004fa7e4  03 60 c2 e7                                      strb r6, [r2, r3]
004fa7e8  28 7a fd eb                                      bl #0x459090
004fa7ec  01 30 a0 e3                                      mov r3, #1
004fa7f0  06 00 53 e1                                      cmp r3, r6
004fa7f4  04 30 8d e5                                      str r3, [sp, #4]
004fa7f8  0f 00 00 1a                                      bne #0x4fa83c
004fa7fc  55 30 84 e2                                      add r3, r4, #0x55
004fa800  56 20 84 e2                                      add r2, r4, #0x56
004fa804  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa808  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fa80c  02 00 53 e1                                      cmp r3, r2
004fa810  01 10 20 e0                                      eor r1, r0, r1
004fa814  01 10 43 e5                                      strb r1, [r3, #-1]
004fa818  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa81c  00 10 21 e0                                      eor r1, r1, r0
004fa820  01 10 c2 e5                                      strb r1, [r2, #1]
004fa824  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fa828  01 20 42 e2                                      sub r2, r2, #1
004fa82c  00 10 21 e0                                      eor r1, r1, r0
004fa830  01 10 43 e5                                      strb r1, [r3, #-1]
004fa834  01 30 83 e2                                      add r3, r3, #1
004fa838  f1 ff ff 3a                                      blo #0x4fa804
004fa83c  05 00 a0 e1                                      mov r0, r5
004fa840  58 10 84 e2                                      add r1, r4, #0x58
004fa844  11 7a fd eb                                      bl #0x459090
004fa848  01 30 a0 e3                                      mov r3, #1
004fa84c  00 00 53 e3                                      cmp r3, #0
004fa850  04 30 8d e5                                      str r3, [sp, #4]
004fa854  0f 00 00 1a                                      bne #0x4fa898
004fa858  59 30 84 e2                                      add r3, r4, #0x59
004fa85c  5a 20 84 e2                                      add r2, r4, #0x5a
004fa860  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa864  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fa868  02 00 53 e1                                      cmp r3, r2
004fa86c  01 10 20 e0                                      eor r1, r0, r1
004fa870  01 10 43 e5                                      strb r1, [r3, #-1]
004fa874  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa878  00 10 21 e0                                      eor r1, r1, r0
004fa87c  01 10 c2 e5                                      strb r1, [r2, #1]
004fa880  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fa884  01 20 42 e2                                      sub r2, r2, #1
004fa888  00 10 21 e0                                      eor r1, r1, r0
004fa88c  01 10 43 e5                                      strb r1, [r3, #-1]
004fa890  01 30 83 e2                                      add r3, r3, #1
004fa894  f1 ff ff 3a                                      blo #0x4fa860
004fa898  05 00 a0 e1                                      mov r0, r5
004fa89c  5c 10 84 e2                                      add r1, r4, #0x5c
004fa8a0  fa 79 fd eb                                      bl #0x459090
004fa8a4  01 30 a0 e3                                      mov r3, #1
004fa8a8  00 00 53 e3                                      cmp r3, #0
004fa8ac  04 30 8d e5                                      str r3, [sp, #4]
004fa8b0  0f 00 00 1a                                      bne #0x4fa8f4
004fa8b4  5d 30 84 e2                                      add r3, r4, #0x5d
004fa8b8  5e 20 84 e2                                      add r2, r4, #0x5e
004fa8bc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa8c0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fa8c4  02 00 53 e1                                      cmp r3, r2
004fa8c8  01 10 20 e0                                      eor r1, r0, r1
004fa8cc  01 10 43 e5                                      strb r1, [r3, #-1]
004fa8d0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa8d4  00 10 21 e0                                      eor r1, r1, r0
004fa8d8  01 10 c2 e5                                      strb r1, [r2, #1]
004fa8dc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fa8e0  01 20 42 e2                                      sub r2, r2, #1
004fa8e4  00 10 21 e0                                      eor r1, r1, r0
004fa8e8  01 10 43 e5                                      strb r1, [r3, #-1]
004fa8ec  01 30 83 e2                                      add r3, r3, #1
004fa8f0  f1 ff ff 3a                                      blo #0x4fa8bc
004fa8f4  05 00 a0 e1                                      mov r0, r5
004fa8f8  60 10 84 e2                                      add r1, r4, #0x60
004fa8fc  e3 79 fd eb                                      bl #0x459090
004fa900  01 30 a0 e3                                      mov r3, #1
004fa904  00 00 53 e3                                      cmp r3, #0
004fa908  04 30 8d e5                                      str r3, [sp, #4]
004fa90c  0f 00 00 1a                                      bne #0x4fa950
004fa910  61 30 84 e2                                      add r3, r4, #0x61
004fa914  62 20 84 e2                                      add r2, r4, #0x62
004fa918  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa91c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fa920  02 00 53 e1                                      cmp r3, r2
004fa924  01 10 20 e0                                      eor r1, r0, r1
004fa928  01 10 43 e5                                      strb r1, [r3, #-1]
004fa92c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa930  00 10 21 e0                                      eor r1, r1, r0
004fa934  01 10 c2 e5                                      strb r1, [r2, #1]
004fa938  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fa93c  01 20 42 e2                                      sub r2, r2, #1
004fa940  00 10 21 e0                                      eor r1, r1, r0
004fa944  01 10 43 e5                                      strb r1, [r3, #-1]
004fa948  01 30 83 e2                                      add r3, r3, #1
004fa94c  f1 ff ff 3a                                      blo #0x4fa918
004fa950  05 00 a0 e1                                      mov r0, r5
004fa954  64 10 84 e2                                      add r1, r4, #0x64
004fa958  cc 79 fd eb                                      bl #0x459090
004fa95c  01 30 a0 e3                                      mov r3, #1
004fa960  00 00 53 e3                                      cmp r3, #0
004fa964  04 30 8d e5                                      str r3, [sp, #4]
004fa968  0f 00 00 1a                                      bne #0x4fa9ac
004fa96c  65 30 84 e2                                      add r3, r4, #0x65
004fa970  66 20 84 e2                                      add r2, r4, #0x66
004fa974  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa978  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fa97c  02 00 53 e1                                      cmp r3, r2
004fa980  01 10 20 e0                                      eor r1, r0, r1
004fa984  01 10 43 e5                                      strb r1, [r3, #-1]
004fa988  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa98c  00 10 21 e0                                      eor r1, r1, r0
004fa990  01 10 c2 e5                                      strb r1, [r2, #1]
004fa994  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fa998  01 20 42 e2                                      sub r2, r2, #1
004fa99c  00 10 21 e0                                      eor r1, r1, r0
004fa9a0  01 10 43 e5                                      strb r1, [r3, #-1]
004fa9a4  01 30 83 e2                                      add r3, r3, #1
004fa9a8  f1 ff ff 3a                                      blo #0x4fa974
004fa9ac  05 00 a0 e1                                      mov r0, r5
004fa9b0  68 10 84 e2                                      add r1, r4, #0x68
004fa9b4  b5 79 fd eb                                      bl #0x459090
004fa9b8  01 30 a0 e3                                      mov r3, #1
004fa9bc  00 00 53 e3                                      cmp r3, #0
004fa9c0  04 30 8d e5                                      str r3, [sp, #4]
004fa9c4  0f 00 00 1a                                      bne #0x4faa08
004fa9c8  69 30 84 e2                                      add r3, r4, #0x69
004fa9cc  6a 20 84 e2                                      add r2, r4, #0x6a
004fa9d0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa9d4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fa9d8  02 00 53 e1                                      cmp r3, r2
004fa9dc  01 10 20 e0                                      eor r1, r0, r1
004fa9e0  01 10 43 e5                                      strb r1, [r3, #-1]
004fa9e4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fa9e8  00 10 21 e0                                      eor r1, r1, r0
004fa9ec  01 10 c2 e5                                      strb r1, [r2, #1]
004fa9f0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fa9f4  01 20 42 e2                                      sub r2, r2, #1
004fa9f8  00 10 21 e0                                      eor r1, r1, r0
004fa9fc  01 10 43 e5                                      strb r1, [r3, #-1]
004faa00  01 30 83 e2                                      add r3, r3, #1
004faa04  f1 ff ff 3a                                      blo #0x4fa9d0
004faa08  05 00 a0 e1                                      mov r0, r5
004faa0c  6c 10 84 e2                                      add r1, r4, #0x6c
004faa10  9e 79 fd eb                                      bl #0x459090
004faa14  01 30 a0 e3                                      mov r3, #1
004faa18  00 00 53 e3                                      cmp r3, #0
004faa1c  04 30 8d e5                                      str r3, [sp, #4]
004faa20  0f 00 00 1a                                      bne #0x4faa64
004faa24  6d 30 84 e2                                      add r3, r4, #0x6d
004faa28  6e 20 84 e2                                      add r2, r4, #0x6e
004faa2c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004faa30  01 10 53 e5                                      ldrb r1, [r3, #-1]
004faa34  02 00 53 e1                                      cmp r3, r2
004faa38  01 10 20 e0                                      eor r1, r0, r1
004faa3c  01 10 43 e5                                      strb r1, [r3, #-1]
004faa40  01 00 d2 e5                                      ldrb r0, [r2, #1]
004faa44  00 10 21 e0                                      eor r1, r1, r0
004faa48  01 10 c2 e5                                      strb r1, [r2, #1]
004faa4c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004faa50  01 20 42 e2                                      sub r2, r2, #1
004faa54  00 10 21 e0                                      eor r1, r1, r0
004faa58  01 10 43 e5                                      strb r1, [r3, #-1]
004faa5c  01 30 83 e2                                      add r3, r3, #1
004faa60  f1 ff ff 3a                                      blo #0x4faa2c
004faa64  05 00 a0 e1                                      mov r0, r5
004faa68  70 10 84 e2                                      add r1, r4, #0x70
004faa6c  87 79 fd eb                                      bl #0x459090
004faa70  01 30 a0 e3                                      mov r3, #1
004faa74  00 00 53 e3                                      cmp r3, #0
004faa78  04 30 8d e5                                      str r3, [sp, #4]
004faa7c  0f 00 00 1a                                      bne #0x4faac0
004faa80  71 30 84 e2                                      add r3, r4, #0x71
004faa84  72 20 84 e2                                      add r2, r4, #0x72
004faa88  01 00 d2 e5                                      ldrb r0, [r2, #1]
004faa8c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004faa90  02 00 53 e1                                      cmp r3, r2
004faa94  01 10 20 e0                                      eor r1, r0, r1
004faa98  01 10 43 e5                                      strb r1, [r3, #-1]
004faa9c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004faaa0  00 10 21 e0                                      eor r1, r1, r0
004faaa4  01 10 c2 e5                                      strb r1, [r2, #1]
004faaa8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004faaac  01 20 42 e2                                      sub r2, r2, #1
004faab0  00 10 21 e0                                      eor r1, r1, r0
004faab4  01 10 43 e5                                      strb r1, [r3, #-1]
004faab8  01 30 83 e2                                      add r3, r3, #1
004faabc  f1 ff ff 3a                                      blo #0x4faa88
004faac0  05 00 a0 e1                                      mov r0, r5
004faac4  74 10 84 e2                                      add r1, r4, #0x74
004faac8  70 79 fd eb                                      bl #0x459090
004faacc  01 30 a0 e3                                      mov r3, #1
004faad0  00 00 53 e3                                      cmp r3, #0
004faad4  04 30 8d e5                                      str r3, [sp, #4]
004faad8  0f 00 00 1a                                      bne #0x4fab1c
004faadc  75 30 84 e2                                      add r3, r4, #0x75
004faae0  76 20 84 e2                                      add r2, r4, #0x76
004faae4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004faae8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004faaec  02 00 53 e1                                      cmp r3, r2
004faaf0  01 10 20 e0                                      eor r1, r0, r1
004faaf4  01 10 43 e5                                      strb r1, [r3, #-1]
004faaf8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004faafc  00 10 21 e0                                      eor r1, r1, r0
004fab00  01 10 c2 e5                                      strb r1, [r2, #1]
004fab04  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fab08  01 20 42 e2                                      sub r2, r2, #1
004fab0c  00 10 21 e0                                      eor r1, r1, r0
004fab10  01 10 43 e5                                      strb r1, [r3, #-1]
004fab14  01 30 83 e2                                      add r3, r3, #1
004fab18  f1 ff ff 3a                                      blo #0x4faae4
004fab1c  05 00 a0 e1                                      mov r0, r5
004fab20  78 10 84 e2                                      add r1, r4, #0x78
004fab24  59 79 fd eb                                      bl #0x459090
004fab28  01 30 a0 e3                                      mov r3, #1
004fab2c  00 00 53 e3                                      cmp r3, #0
004fab30  04 30 8d e5                                      str r3, [sp, #4]
004fab34  0f 00 00 1a                                      bne #0x4fab78
004fab38  79 30 84 e2                                      add r3, r4, #0x79
004fab3c  7a 20 84 e2                                      add r2, r4, #0x7a
004fab40  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fab44  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fab48  02 00 53 e1                                      cmp r3, r2
004fab4c  01 10 20 e0                                      eor r1, r0, r1
004fab50  01 10 43 e5                                      strb r1, [r3, #-1]
004fab54  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fab58  00 10 21 e0                                      eor r1, r1, r0
004fab5c  01 10 c2 e5                                      strb r1, [r2, #1]
004fab60  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fab64  01 20 42 e2                                      sub r2, r2, #1
004fab68  00 10 21 e0                                      eor r1, r1, r0
004fab6c  01 10 43 e5                                      strb r1, [r3, #-1]
004fab70  01 30 83 e2                                      add r3, r3, #1
004fab74  f1 ff ff 3a                                      blo #0x4fab40
004fab78  05 00 a0 e1                                      mov r0, r5
004fab7c  7c 10 84 e2                                      add r1, r4, #0x7c
004fab80  42 79 fd eb                                      bl #0x459090
004fab84  01 30 a0 e3                                      mov r3, #1
004fab88  00 00 53 e3                                      cmp r3, #0
004fab8c  04 30 8d e5                                      str r3, [sp, #4]
004fab90  0f 00 00 1a                                      bne #0x4fabd4
004fab94  7d 30 84 e2                                      add r3, r4, #0x7d
004fab98  7e 20 84 e2                                      add r2, r4, #0x7e
004fab9c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004faba0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004faba4  02 00 53 e1                                      cmp r3, r2
004faba8  01 10 20 e0                                      eor r1, r0, r1
004fabac  01 10 43 e5                                      strb r1, [r3, #-1]
004fabb0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fabb4  00 10 21 e0                                      eor r1, r1, r0
004fabb8  01 10 c2 e5                                      strb r1, [r2, #1]
004fabbc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fabc0  01 20 42 e2                                      sub r2, r2, #1
004fabc4  00 10 21 e0                                      eor r1, r1, r0
004fabc8  01 10 43 e5                                      strb r1, [r3, #-1]
004fabcc  01 30 83 e2                                      add r3, r3, #1
004fabd0  f1 ff ff 3a                                      blo #0x4fab9c
004fabd4  05 00 a0 e1                                      mov r0, r5
004fabd8  80 10 84 e2                                      add r1, r4, #0x80
004fabdc  2b 79 fd eb                                      bl #0x459090
004fabe0  01 30 a0 e3                                      mov r3, #1
004fabe4  00 00 53 e3                                      cmp r3, #0
004fabe8  04 30 8d e5                                      str r3, [sp, #4]
004fabec  0f 00 00 1a                                      bne #0x4fac30
004fabf0  81 30 84 e2                                      add r3, r4, #0x81
004fabf4  82 20 84 e2                                      add r2, r4, #0x82
004fabf8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fabfc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fac00  02 00 53 e1                                      cmp r3, r2
004fac04  01 10 20 e0                                      eor r1, r0, r1
004fac08  01 10 43 e5                                      strb r1, [r3, #-1]
004fac0c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fac10  00 10 21 e0                                      eor r1, r1, r0
004fac14  01 10 c2 e5                                      strb r1, [r2, #1]
004fac18  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fac1c  01 20 42 e2                                      sub r2, r2, #1
004fac20  00 10 21 e0                                      eor r1, r1, r0
004fac24  01 10 43 e5                                      strb r1, [r3, #-1]
004fac28  01 30 83 e2                                      add r3, r3, #1
004fac2c  f1 ff ff 3a                                      blo #0x4fabf8
004fac30  05 00 a0 e1                                      mov r0, r5
004fac34  84 10 84 e2                                      add r1, r4, #0x84
004fac38  14 79 fd eb                                      bl #0x459090
004fac3c  01 30 a0 e3                                      mov r3, #1
004fac40  00 00 53 e3                                      cmp r3, #0
004fac44  04 30 8d e5                                      str r3, [sp, #4]
004fac48  0f 00 00 1a                                      bne #0x4fac8c
004fac4c  85 30 84 e2                                      add r3, r4, #0x85
004fac50  86 20 84 e2                                      add r2, r4, #0x86
004fac54  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fac58  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fac5c  02 00 53 e1                                      cmp r3, r2
004fac60  01 10 20 e0                                      eor r1, r0, r1
004fac64  01 10 43 e5                                      strb r1, [r3, #-1]
004fac68  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fac6c  00 10 21 e0                                      eor r1, r1, r0
004fac70  01 10 c2 e5                                      strb r1, [r2, #1]
004fac74  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fac78  01 20 42 e2                                      sub r2, r2, #1
004fac7c  00 10 21 e0                                      eor r1, r1, r0
004fac80  01 10 43 e5                                      strb r1, [r3, #-1]
004fac84  01 30 83 e2                                      add r3, r3, #1
004fac88  f1 ff ff 3a                                      blo #0x4fac54
004fac8c  05 00 a0 e1                                      mov r0, r5
004fac90  88 10 84 e2                                      add r1, r4, #0x88
004fac94  fd 78 fd eb                                      bl #0x459090
004fac98  01 30 a0 e3                                      mov r3, #1
004fac9c  00 00 53 e3                                      cmp r3, #0
004faca0  04 30 8d e5                                      str r3, [sp, #4]
004faca4  0f 00 00 1a                                      bne #0x4face8
004faca8  89 30 84 e2                                      add r3, r4, #0x89
004facac  8a 20 84 e2                                      add r2, r4, #0x8a
004facb0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004facb4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004facb8  02 00 53 e1                                      cmp r3, r2
004facbc  01 10 20 e0                                      eor r1, r0, r1
004facc0  01 10 43 e5                                      strb r1, [r3, #-1]
004facc4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004facc8  00 10 21 e0                                      eor r1, r1, r0
004faccc  01 10 c2 e5                                      strb r1, [r2, #1]
004facd0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004facd4  01 20 42 e2                                      sub r2, r2, #1
004facd8  00 10 21 e0                                      eor r1, r1, r0
004facdc  01 10 43 e5                                      strb r1, [r3, #-1]
004face0  01 30 83 e2                                      add r3, r3, #1
004face4  f1 ff ff 3a                                      blo #0x4facb0
004face8  05 00 a0 e1                                      mov r0, r5
004facec  8c 10 84 e2                                      add r1, r4, #0x8c
004facf0  e6 78 fd eb                                      bl #0x459090
004facf4  01 30 a0 e3                                      mov r3, #1
004facf8  00 00 53 e3                                      cmp r3, #0
004facfc  04 30 8d e5                                      str r3, [sp, #4]
004fad00  0f 00 00 1a                                      bne #0x4fad44
004fad04  8d 30 84 e2                                      add r3, r4, #0x8d
004fad08  8e 20 84 e2                                      add r2, r4, #0x8e
004fad0c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fad10  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fad14  02 00 53 e1                                      cmp r3, r2
004fad18  01 10 20 e0                                      eor r1, r0, r1
004fad1c  01 10 43 e5                                      strb r1, [r3, #-1]
004fad20  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fad24  00 10 21 e0                                      eor r1, r1, r0
004fad28  01 10 c2 e5                                      strb r1, [r2, #1]
004fad2c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fad30  01 20 42 e2                                      sub r2, r2, #1
004fad34  00 10 21 e0                                      eor r1, r1, r0
004fad38  01 10 43 e5                                      strb r1, [r3, #-1]
004fad3c  01 30 83 e2                                      add r3, r3, #1
004fad40  f1 ff ff 3a                                      blo #0x4fad0c
004fad44  05 00 a0 e1                                      mov r0, r5
004fad48  90 10 84 e2                                      add r1, r4, #0x90
004fad4c  cf 78 fd eb                                      bl #0x459090
004fad50  01 30 a0 e3                                      mov r3, #1
004fad54  00 00 53 e3                                      cmp r3, #0
004fad58  04 30 8d e5                                      str r3, [sp, #4]
004fad5c  0f 00 00 1a                                      bne #0x4fada0
004fad60  91 30 84 e2                                      add r3, r4, #0x91
004fad64  92 20 84 e2                                      add r2, r4, #0x92
004fad68  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fad6c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fad70  02 00 53 e1                                      cmp r3, r2
004fad74  01 10 20 e0                                      eor r1, r0, r1
004fad78  01 10 43 e5                                      strb r1, [r3, #-1]
004fad7c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fad80  00 10 21 e0                                      eor r1, r1, r0
004fad84  01 10 c2 e5                                      strb r1, [r2, #1]
004fad88  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fad8c  01 20 42 e2                                      sub r2, r2, #1
004fad90  00 10 21 e0                                      eor r1, r1, r0
004fad94  01 10 43 e5                                      strb r1, [r3, #-1]
004fad98  01 30 83 e2                                      add r3, r3, #1
004fad9c  f1 ff ff 3a                                      blo #0x4fad68
004fada0  05 00 a0 e1                                      mov r0, r5
004fada4  94 10 84 e2                                      add r1, r4, #0x94
004fada8  b8 78 fd eb                                      bl #0x459090
004fadac  01 30 a0 e3                                      mov r3, #1
004fadb0  00 00 53 e3                                      cmp r3, #0
004fadb4  04 30 8d e5                                      str r3, [sp, #4]
004fadb8  0f 00 00 1a                                      bne #0x4fadfc
004fadbc  95 30 84 e2                                      add r3, r4, #0x95
004fadc0  96 20 84 e2                                      add r2, r4, #0x96
004fadc4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fadc8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fadcc  02 00 53 e1                                      cmp r3, r2
004fadd0  01 10 20 e0                                      eor r1, r0, r1
004fadd4  01 10 43 e5                                      strb r1, [r3, #-1]
004fadd8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004faddc  00 10 21 e0                                      eor r1, r1, r0
004fade0  01 10 c2 e5                                      strb r1, [r2, #1]
004fade4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fade8  01 20 42 e2                                      sub r2, r2, #1
004fadec  00 10 21 e0                                      eor r1, r1, r0
004fadf0  01 10 43 e5                                      strb r1, [r3, #-1]
004fadf4  01 30 83 e2                                      add r3, r3, #1
004fadf8  f1 ff ff 3a                                      blo #0x4fadc4
004fadfc  05 00 a0 e1                                      mov r0, r5
004fae00  98 10 84 e2                                      add r1, r4, #0x98
004fae04  a1 78 fd eb                                      bl #0x459090
004fae08  01 30 a0 e3                                      mov r3, #1
004fae0c  00 00 53 e3                                      cmp r3, #0
004fae10  04 30 8d e5                                      str r3, [sp, #4]
004fae14  0f 00 00 1a                                      bne #0x4fae58
004fae18  99 30 84 e2                                      add r3, r4, #0x99
004fae1c  9a 20 84 e2                                      add r2, r4, #0x9a
004fae20  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fae24  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fae28  02 00 53 e1                                      cmp r3, r2
004fae2c  01 10 20 e0                                      eor r1, r0, r1
004fae30  01 10 43 e5                                      strb r1, [r3, #-1]
004fae34  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fae38  00 10 21 e0                                      eor r1, r1, r0
004fae3c  01 10 c2 e5                                      strb r1, [r2, #1]
004fae40  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fae44  01 20 42 e2                                      sub r2, r2, #1
004fae48  00 10 21 e0                                      eor r1, r1, r0
004fae4c  01 10 43 e5                                      strb r1, [r3, #-1]
004fae50  01 30 83 e2                                      add r3, r3, #1
004fae54  f1 ff ff 3a                                      blo #0x4fae20
004fae58  05 00 a0 e1                                      mov r0, r5
004fae5c  9c 10 84 e2                                      add r1, r4, #0x9c
004fae60  8a 78 fd eb                                      bl #0x459090
004fae64  01 30 a0 e3                                      mov r3, #1
004fae68  00 00 53 e3                                      cmp r3, #0
004fae6c  04 30 8d e5                                      str r3, [sp, #4]
004fae70  0f 00 00 1a                                      bne #0x4faeb4
004fae74  9d 30 84 e2                                      add r3, r4, #0x9d
004fae78  9e 20 84 e2                                      add r2, r4, #0x9e
004fae7c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fae80  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fae84  02 00 53 e1                                      cmp r3, r2
004fae88  01 10 20 e0                                      eor r1, r0, r1
004fae8c  01 10 43 e5                                      strb r1, [r3, #-1]
004fae90  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fae94  00 10 21 e0                                      eor r1, r1, r0
004fae98  01 10 c2 e5                                      strb r1, [r2, #1]
004fae9c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004faea0  01 20 42 e2                                      sub r2, r2, #1
004faea4  00 10 21 e0                                      eor r1, r1, r0
004faea8  01 10 43 e5                                      strb r1, [r3, #-1]
004faeac  01 30 83 e2                                      add r3, r3, #1
004faeb0  f1 ff ff 3a                                      blo #0x4fae7c
004faeb4  05 00 a0 e1                                      mov r0, r5
004faeb8  a0 10 84 e2                                      add r1, r4, #0xa0
004faebc  73 78 fd eb                                      bl #0x459090
004faec0  01 30 a0 e3                                      mov r3, #1
004faec4  00 00 53 e3                                      cmp r3, #0
004faec8  04 30 8d e5                                      str r3, [sp, #4]
004faecc  0f 00 00 1a                                      bne #0x4faf10
004faed0  a2 30 84 e2                                      add r3, r4, #0xa2
004faed4  a1 40 84 e2                                      add r4, r4, #0xa1
004faed8  01 10 d3 e5                                      ldrb r1, [r3, #1]
004faedc  01 20 54 e5                                      ldrb r2, [r4, #-1]
004faee0  03 00 54 e1                                      cmp r4, r3
004faee4  02 20 21 e0                                      eor r2, r1, r2
004faee8  01 20 44 e5                                      strb r2, [r4, #-1]
004faeec  01 10 d3 e5                                      ldrb r1, [r3, #1]
004faef0  01 20 22 e0                                      eor r2, r2, r1
004faef4  01 20 c3 e5                                      strb r2, [r3, #1]
004faef8  01 10 54 e5                                      ldrb r1, [r4, #-1]
004faefc  01 30 43 e2                                      sub r3, r3, #1
004faf00  01 20 22 e0                                      eor r2, r2, r1
004faf04  01 20 44 e5                                      strb r2, [r4, #-1]
004faf08  01 40 84 e2                                      add r4, r4, #1
004faf0c  f1 ff ff 3a                                      blo #0x4faed8
004faf10  08 d0 8d e2                                      add sp, sp, #8
004faf14  70 80 bd e8                                      pop {r4, r5, r6, pc}
