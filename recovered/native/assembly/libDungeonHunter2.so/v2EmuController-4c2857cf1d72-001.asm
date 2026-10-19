; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00405f48, declared_size=376, range_size=376, mode=arm
; class-group: v2EmuController
; alias: _ZN15v2EmuController8_onEventEPK13EvMouseButtonPK12EventManager
; demangled: v2EmuController::_onEvent(EvMouseButton const*, EventManager const*)
; decoder-mode: arm
00405f48  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00405f4c  08 30 91 e5                                      ldr r3, [r1, #8]
00405f50  60 71 9f e5                                      ldr r7, [pc, #0x160]
00405f54  40 d0 4d e2                                      sub sp, sp, #0x40
00405f58  00 00 53 e3                                      cmp r3, #0
00405f5c  01 80 a0 e1                                      mov r8, r1
00405f60  00 40 a0 e1                                      mov r4, r0
00405f64  07 70 8f e0                                      add r7, pc, r7
00405f68  1d 00 00 1a                                      bne #0x405fe4
00405f6c  0c 30 d1 e5                                      ldrb r3, [r1, #0xc]
00405f70  00 00 53 e3                                      cmp r3, #0
00405f74  1a 00 00 1a                                      bne #0x405fe4
00405f78  18 30 90 e5                                      ldr r3, [r0, #0x18]
00405f7c  03 20 03 e2                                      and r2, r3, #3
00405f80  03 00 52 e3                                      cmp r2, #3
00405f84  30 00 00 0a                                      beq #0x40604c
00405f88  01 00 13 e3                                      tst r3, #1
00405f8c  17 00 00 1a                                      bne #0x405ff0
00405f90  02 00 13 e3                                      tst r3, #2
00405f94  12 00 00 0a                                      beq #0x405fe4
00405f98  f0 01 d1 e1                                      ldrsh r0, [r1, #0x10]
00405f9c  00 30 a0 e3                                      mov r3, #0
00405fa0  0c 30 8d e5                                      str r3, [sp, #0xc]
00405fa4  04 30 8d e5                                      str r3, [sp, #4]
00405fa8  08 30 8d e5                                      str r3, [sp, #8]
00405fac  6c 22 fc eb                                      bl #0x30e964
00405fb0  00 60 a0 e1                                      mov r6, r0
00405fb4  fe 00 d8 e1                                      ldrsh r0, [r8, #0xe]
00405fb8  69 22 fc eb                                      bl #0x30e964
00405fbc  f8 30 9f e5                                      ldr r3, [pc, #0xf8]
00405fc0  04 50 8d e2                                      add r5, sp, #4
00405fc4  28 00 8d e5                                      str r0, [sp, #0x28]
00405fc8  28 10 8d e2                                      add r1, sp, #0x28
00405fcc  03 00 97 e7                                      ldr r0, [r7, r3]
00405fd0  05 20 a0 e1                                      mov r2, r5
00405fd4  2c 60 8d e5                                      str r6, [sp, #0x2c]
00405fd8  29 7e 04 eb                                      bl #0x525884
00405fdc  00 00 50 e3                                      cmp r0, #0
00405fe0  30 00 00 1a                                      bne #0x4060a8
00405fe4  00 00 a0 e3                                      mov r0, #0
00405fe8  40 d0 8d e2                                      add sp, sp, #0x40
00405fec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00405ff0  f0 01 d1 e1                                      ldrsh r0, [r1, #0x10]
00405ff4  00 30 a0 e3                                      mov r3, #0
00405ff8  18 30 8d e5                                      str r3, [sp, #0x18]
00405ffc  10 30 8d e5                                      str r3, [sp, #0x10]
00406000  14 30 8d e5                                      str r3, [sp, #0x14]
00406004  56 22 fc eb                                      bl #0x30e964
00406008  00 60 a0 e1                                      mov r6, r0
0040600c  fe 00 d8 e1                                      ldrsh r0, [r8, #0xe]
00406010  53 22 fc eb                                      bl #0x30e964
00406014  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
00406018  10 50 8d e2                                      add r5, sp, #0x10
0040601c  30 00 8d e5                                      str r0, [sp, #0x30]
00406020  30 10 8d e2                                      add r1, sp, #0x30
00406024  03 00 97 e7                                      ldr r0, [r7, r3]
00406028  05 20 a0 e1                                      mov r2, r5
0040602c  34 60 8d e5                                      str r6, [sp, #0x34]
00406030  13 7e 04 eb                                      bl #0x525884
00406034  00 00 50 e3                                      cmp r0, #0
00406038  e9 ff ff 0a                                      beq #0x405fe4
0040603c  04 00 a0 e1                                      mov r0, r4
00406040  05 10 a0 e1                                      mov r1, r5
00406044  b3 fc ff eb                                      bl #0x405318
00406048  e5 ff ff ea                                      b #0x405fe4
0040604c  f0 01 d1 e1                                      ldrsh r0, [r1, #0x10]
00406050  00 30 a0 e3                                      mov r3, #0
00406054  24 30 8d e5                                      str r3, [sp, #0x24]
00406058  1c 30 8d e5                                      str r3, [sp, #0x1c]
0040605c  20 30 8d e5                                      str r3, [sp, #0x20]
00406060  3f 22 fc eb                                      bl #0x30e964
00406064  00 60 a0 e1                                      mov r6, r0
00406068  fe 00 d8 e1                                      ldrsh r0, [r8, #0xe]
0040606c  3c 22 fc eb                                      bl #0x30e964
00406070  44 30 9f e5                                      ldr r3, [pc, #0x44]
00406074  1c 50 8d e2                                      add r5, sp, #0x1c
00406078  38 00 8d e5                                      str r0, [sp, #0x38]
0040607c  38 10 8d e2                                      add r1, sp, #0x38
00406080  03 00 97 e7                                      ldr r0, [r7, r3]
00406084  05 20 a0 e1                                      mov r2, r5
00406088  3c 60 8d e5                                      str r6, [sp, #0x3c]
0040608c  fc 7d 04 eb                                      bl #0x525884
00406090  00 00 50 e3                                      cmp r0, #0
00406094  d2 ff ff 0a                                      beq #0x405fe4
00406098  04 00 a0 e1                                      mov r0, r4
0040609c  05 10 a0 e1                                      mov r1, r5
004060a0  0f fd ff eb                                      bl #0x4054e4
004060a4  ce ff ff ea                                      b #0x405fe4
004060a8  04 00 a0 e1                                      mov r0, r4
004060ac  05 10 a0 e1                                      mov r1, r5
004060b0  6a fc ff eb                                      bl #0x405260
004060b4  ca ff ff ea                                      b #0x405fe4
; mapping-symbol data/literal pool
004060b8  2c eb 58 00 04 12 00 00                          .byte 0x2c, 0xeb, 0x58, 0x00, 0x04, 0x12, 0x00, 0x00

; FUNCTION 0x004060c0, declared_size=904, range_size=904, mode=arm
; class-group: v2EmuController
; alias: _ZN15v2EmuController8_onEventEPK10EvKeyboardPK12EventManager
; demangled: v2EmuController::_onEvent(EvKeyboard const*, EventManager const*)
; decoder-mode: arm
004060c0  30 40 2d e9                                      push {r4, r5, lr}
004060c4  01 40 a0 e1                                      mov r4, r1
004060c8  0c 10 91 e5                                      ldr r1, [r1, #0xc]
004060cc  14 d0 4d e2                                      sub sp, sp, #0x14
004060d0  00 50 a0 e1                                      mov r5, r0
004060d4  31 30 41 e2                                      sub r3, r1, #0x31
004060d8  61 00 53 e3                                      cmp r3, #0x61
004060dc  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
004060e0  88 00 00 ea                                      b #0x406308
004060e4  91 00 00 ea                                      b #0x406330
004060e8  90 00 00 ea                                      b #0x406330
004060ec  8f 00 00 ea                                      b #0x406330
004060f0  8e 00 00 ea                                      b #0x406330
004060f4  83 00 00 ea                                      b #0x406308
004060f8  82 00 00 ea                                      b #0x406308
004060fc  81 00 00 ea                                      b #0x406308
00406100  80 00 00 ea                                      b #0x406308
00406104  7f 00 00 ea                                      b #0x406308
00406108  7e 00 00 ea                                      b #0x406308
0040610c  7d 00 00 ea                                      b #0x406308
00406110  7c 00 00 ea                                      b #0x406308
00406114  7b 00 00 ea                                      b #0x406308
00406118  7a 00 00 ea                                      b #0x406308
0040611c  79 00 00 ea                                      b #0x406308
00406120  78 00 00 ea                                      b #0x406308
00406124  77 00 00 ea                                      b #0x406308
00406128  76 00 00 ea                                      b #0x406308
0040612c  75 00 00 ea                                      b #0x406308
00406130  74 00 00 ea                                      b #0x406308
00406134  73 00 00 ea                                      b #0x406308
00406138  72 00 00 ea                                      b #0x406308
0040613c  71 00 00 ea                                      b #0x406308
00406140  70 00 00 ea                                      b #0x406308
00406144  6f 00 00 ea                                      b #0x406308
00406148  6e 00 00 ea                                      b #0x406308
0040614c  6d 00 00 ea                                      b #0x406308
00406150  6c 00 00 ea                                      b #0x406308
00406154  7a 00 00 ea                                      b #0x406344
00406158  7f 00 00 ea                                      b #0x40635c
0040615c  69 00 00 ea                                      b #0x406308
00406160  68 00 00 ea                                      b #0x406308
00406164  67 00 00 ea                                      b #0x406308
00406168  66 00 00 ea                                      b #0x406308
0040616c  65 00 00 ea                                      b #0x406308
00406170  64 00 00 ea                                      b #0x406308
00406174  63 00 00 ea                                      b #0x406308
00406178  62 00 00 ea                                      b #0x406308
0040617c  61 00 00 ea                                      b #0x406308
00406180  60 00 00 ea                                      b #0x406308
00406184  5f 00 00 ea                                      b #0x406308
00406188  5e 00 00 ea                                      b #0x406308
0040618c  5d 00 00 ea                                      b #0x406308
00406190  5c 00 00 ea                                      b #0x406308
00406194  5b 00 00 ea                                      b #0x406308
00406198  5a 00 00 ea                                      b #0x406308
0040619c  74 00 00 ea                                      b #0x406374
004061a0  73 00 00 ea                                      b #0x406374
004061a4  72 00 00 ea                                      b #0x406374
004061a8  7f 00 00 ea                                      b #0x4063ac
004061ac  55 00 00 ea                                      b #0x406308
004061b0  54 00 00 ea                                      b #0x406308
004061b4  53 00 00 ea                                      b #0x406308
004061b8  52 00 00 ea                                      b #0x406308
004061bc  51 00 00 ea                                      b #0x406308
004061c0  50 00 00 ea                                      b #0x406308
004061c4  4f 00 00 ea                                      b #0x406308
004061c8  4e 00 00 ea                                      b #0x406308
004061cc  4d 00 00 ea                                      b #0x406308
004061d0  4c 00 00 ea                                      b #0x406308
004061d4  4b 00 00 ea                                      b #0x406308
004061d8  4a 00 00 ea                                      b #0x406308
004061dc  49 00 00 ea                                      b #0x406308
004061e0  48 00 00 ea                                      b #0x406308
004061e4  47 00 00 ea                                      b #0x406308
004061e8  46 00 00 ea                                      b #0x406308
004061ec  45 00 00 ea                                      b #0x406308
004061f0  44 00 00 ea                                      b #0x406308
004061f4  43 00 00 ea                                      b #0x406308
004061f8  42 00 00 ea                                      b #0x406308
004061fc  41 00 00 ea                                      b #0x406308
00406200  40 00 00 ea                                      b #0x406308
00406204  3f 00 00 ea                                      b #0x406308
00406208  3e 00 00 ea                                      b #0x406308
0040620c  3d 00 00 ea                                      b #0x406308
00406210  3c 00 00 ea                                      b #0x406308
00406214  3b 00 00 ea                                      b #0x406308
00406218  3a 00 00 ea                                      b #0x406308
0040621c  39 00 00 ea                                      b #0x406308
00406220  38 00 00 ea                                      b #0x406308
00406224  37 00 00 ea                                      b #0x406308
00406228  36 00 00 ea                                      b #0x406308
0040622c  35 00 00 ea                                      b #0x406308
00406230  34 00 00 ea                                      b #0x406308
00406234  33 00 00 ea                                      b #0x406308
00406238  32 00 00 ea                                      b #0x406308
0040623c  0a 00 00 ea                                      b #0x40626c
00406240  5f 00 00 ea                                      b #0x4063c4
00406244  65 00 00 ea                                      b #0x4063e0
00406248  6b 00 00 ea                                      b #0x4063fc
0040624c  2d 00 00 ea                                      b #0x406308
00406250  2c 00 00 ea                                      b #0x406308
00406254  2b 00 00 ea                                      b #0x406308
00406258  2a 00 00 ea                                      b #0x406308
0040625c  29 00 00 ea                                      b #0x406308
00406260  28 00 00 ea                                      b #0x406308
00406264  6b 00 00 ea                                      b #0x406418
00406268  29 00 00 ea                                      b #0x406314
0040626c  10 30 d4 e5                                      ldrb r3, [r4, #0x10]
00406270  14 40 90 e5                                      ldr r4, [r0, #0x14]
00406274  00 00 53 e3                                      cmp r3, #0
00406278  09 40 84 13                                      orrne r4, r4, #9
0040627c  09 40 c4 03                                      biceq r4, r4, #9
00406280  14 40 80 e5                                      str r4, [r0, #0x14]
00406284  00 30 a0 e3                                      mov r3, #0
00406288  01 00 14 e3                                      tst r4, #1
0040628c  0c 30 8d e5                                      str r3, [sp, #0xc]
00406290  04 30 8d e5                                      str r3, [sp, #4]
00406294  08 30 8d e5                                      str r3, [sp, #8]
00406298  02 00 00 0a                                      beq #0x4062a8
0040629c  c3 34 a0 e3                                      mov r3, #0xc3000000
004062a0  12 37 83 e2                                      add r3, r3, #0x480000
004062a4  04 30 8d e5                                      str r3, [sp, #4]
004062a8  02 00 14 e3                                      tst r4, #2
004062ac  04 00 00 0a                                      beq #0x4062c4
004062b0  43 14 a0 e3                                      mov r1, #0x43000000
004062b4  04 00 9d e5                                      ldr r0, [sp, #4]
004062b8  12 17 81 e2                                      add r1, r1, #0x480000
004062bc  38 22 fc eb                                      bl #0x30eba4
004062c0  04 00 8d e5                                      str r0, [sp, #4]
004062c4  04 00 14 e3                                      tst r4, #4
004062c8  04 00 00 0a                                      beq #0x4062e0
004062cc  43 14 a0 e3                                      mov r1, #0x43000000
004062d0  08 00 9d e5                                      ldr r0, [sp, #8]
004062d4  12 17 81 e2                                      add r1, r1, #0x480000
004062d8  33 20 fc eb                                      bl #0x30e3ac
004062dc  08 00 8d e5                                      str r0, [sp, #8]
004062e0  08 00 14 e3                                      tst r4, #8
004062e4  04 00 00 0a                                      beq #0x4062fc
004062e8  43 14 a0 e3                                      mov r1, #0x43000000
004062ec  08 00 9d e5                                      ldr r0, [sp, #8]
004062f0  12 17 81 e2                                      add r1, r1, #0x480000
004062f4  2a 22 fc eb                                      bl #0x30eba4
004062f8  08 00 8d e5                                      str r0, [sp, #8]
004062fc  05 00 a0 e1                                      mov r0, r5
00406300  04 10 8d e2                                      add r1, sp, #4
00406304  1a fc ff eb                                      bl #0x405374
00406308  00 00 a0 e3                                      mov r0, #0
0040630c  14 d0 8d e2                                      add sp, sp, #0x14
00406310  30 80 bd e8                                      pop {r4, r5, pc}
00406314  10 30 d4 e5                                      ldrb r3, [r4, #0x10]
00406318  00 00 53 e3                                      cmp r3, #0
0040631c  18 30 90 e5                                      ldr r3, [r0, #0x18]
00406320  12 30 83 13                                      orrne r3, r3, #0x12
00406324  12 30 c3 03                                      biceq r3, r3, #0x12
00406328  18 30 80 e5                                      str r3, [r0, #0x18]
0040632c  f5 ff ff ea                                      b #0x406308
00406330  10 30 d4 e5                                      ldrb r3, [r4, #0x10]
00406334  00 00 53 e3                                      cmp r3, #0
00406338  f2 ff ff 0a                                      beq #0x406308
0040633c  db fc ff eb                                      bl #0x4056b0
00406340  f0 ff ff ea                                      b #0x406308
00406344  10 30 d4 e5                                      ldrb r3, [r4, #0x10]
00406348  00 00 53 e3                                      cmp r3, #0
0040634c  ed ff ff 0a                                      beq #0x406308
00406350  00 10 a0 e3                                      mov r1, #0
00406354  28 fd ff eb                                      bl #0x4057fc
00406358  ea ff ff ea                                      b #0x406308
0040635c  10 30 d4 e5                                      ldrb r3, [r4, #0x10]
00406360  00 00 53 e3                                      cmp r3, #0
00406364  e7 ff ff 0a                                      beq #0x406308
00406368  00 10 a0 e3                                      mov r1, #0
0040636c  e4 fd ff eb                                      bl #0x405b04
00406370  e4 ff ff ea                                      b #0x406308
00406374  0c 00 90 e5                                      ldr r0, [r0, #0xc]
00406378  00 00 50 e3                                      cmp r0, #0
0040637c  e1 ff ff 0a                                      beq #0x406308
00406380  5f 10 41 e2                                      sub r1, r1, #0x5f
00406384  b7 d6 fe eb                                      bl #0x3bbe68
00406388  01 00 70 e3                                      cmn r0, #1
0040638c  00 10 a0 e1                                      mov r1, r0
00406390  dc ff ff 0a                                      beq #0x406308
00406394  10 30 d4 e5                                      ldrb r3, [r4, #0x10]
00406398  00 00 53 e3                                      cmp r3, #0
0040639c  26 00 00 0a                                      beq #0x40643c
004063a0  05 00 a0 e1                                      mov r0, r5
004063a4  9d fd ff eb                                      bl #0x405a20
004063a8  d6 ff ff ea                                      b #0x406308
004063ac  10 10 d4 e5                                      ldrb r1, [r4, #0x10]
004063b0  00 00 51 e3                                      cmp r1, #0
004063b4  1e 00 00 0a                                      beq #0x406434
004063b8  00 10 a0 e3                                      mov r1, #0
004063bc  8d fc ff eb                                      bl #0x4055f8
004063c0  d0 ff ff ea                                      b #0x406308
004063c4  10 30 d4 e5                                      ldrb r3, [r4, #0x10]
004063c8  14 40 90 e5                                      ldr r4, [r0, #0x14]
004063cc  00 00 53 e3                                      cmp r3, #0
004063d0  06 40 84 13                                      orrne r4, r4, #6
004063d4  06 40 c4 03                                      biceq r4, r4, #6
004063d8  14 40 80 e5                                      str r4, [r0, #0x14]
004063dc  a8 ff ff ea                                      b #0x406284
004063e0  10 30 d4 e5                                      ldrb r3, [r4, #0x10]
004063e4  14 40 90 e5                                      ldr r4, [r0, #0x14]
004063e8  00 00 53 e3                                      cmp r3, #0
004063ec  05 40 84 13                                      orrne r4, r4, #5
004063f0  05 40 c4 03                                      biceq r4, r4, #5
004063f4  14 40 80 e5                                      str r4, [r0, #0x14]
004063f8  a1 ff ff ea                                      b #0x406284
004063fc  10 30 d4 e5                                      ldrb r3, [r4, #0x10]
00406400  14 40 90 e5                                      ldr r4, [r0, #0x14]
00406404  00 00 53 e3                                      cmp r3, #0
00406408  0a 40 84 13                                      orrne r4, r4, #0xa
0040640c  0a 40 c4 03                                      biceq r4, r4, #0xa
00406410  14 40 80 e5                                      str r4, [r0, #0x14]
00406414  9a ff ff ea                                      b #0x406284
00406418  10 30 d4 e5                                      ldrb r3, [r4, #0x10]
0040641c  00 00 53 e3                                      cmp r3, #0
00406420  18 30 90 e5                                      ldr r3, [r0, #0x18]
00406424  09 30 83 13                                      orrne r3, r3, #9
00406428  09 30 c3 03                                      biceq r3, r3, #9
0040642c  18 30 80 e5                                      str r3, [r0, #0x18]
00406430  b4 ff ff ea                                      b #0x406308
00406434  86 fc ff eb                                      bl #0x405654
00406438  b2 ff ff ea                                      b #0x406308
0040643c  05 00 a0 e1                                      mov r0, r5
00406440  43 fd ff eb                                      bl #0x405954
00406444  af ff ff ea                                      b #0x406308

; FUNCTION 0x00406448, declared_size=8, range_size=8, mode=arm
; class-group: v2EmuController
; alias: _ZThn16_N15v2EmuController7onEventEPK6IEventPK12EventManager
; demangled: non-virtual thunk to v2EmuController::onEvent(IEvent const*, EventManager const*)
; decoder-mode: arm
00406448  10 00 40 e2                                      sub r0, r0, #0x10
0040644c  ff ff ff ea                                      b #0x406450

; FUNCTION 0x00406450, declared_size=96, range_size=96, mode=arm
; class-group: v2EmuController
; alias: _ZN15v2EmuController7onEventEPK6IEventPK12EventManager
; demangled: v2EmuController::onEvent(IEvent const*, EventManager const*)
; decoder-mode: arm
00406450  70 40 2d e9                                      push {r4, r5, r6, lr}
00406454  00 60 a0 e1                                      mov r6, r0
00406458  00 30 91 e5                                      ldr r3, [r1]
0040645c  01 00 a0 e1                                      mov r0, r1
00406460  01 40 a0 e1                                      mov r4, r1
00406464  02 50 a0 e1                                      mov r5, r2
00406468  0f e0 a0 e1                                      mov lr, pc
0040646c  08 f0 93 e5                                      ldr pc, [r3, #8]
00406470  00 00 50 e3                                      cmp r0, #0
00406474  04 00 00 1a                                      bne #0x40648c
00406478  06 00 a0 e1                                      mov r0, r6
0040647c  04 10 a0 e1                                      mov r1, r4
00406480  05 20 a0 e1                                      mov r2, r5
00406484  70 40 bd e8                                      pop {r4, r5, r6, lr}
00406488  0c ff ff ea                                      b #0x4060c0
0040648c  02 00 50 e3                                      cmp r0, #2
00406490  01 00 00 0a                                      beq #0x40649c
00406494  00 00 a0 e3                                      mov r0, #0
00406498  70 80 bd e8                                      pop {r4, r5, r6, pc}
0040649c  06 00 a0 e1                                      mov r0, r6
004064a0  04 10 a0 e1                                      mov r1, r4
004064a4  05 20 a0 e1                                      mov r2, r5
004064a8  70 40 bd e8                                      pop {r4, r5, r6, lr}
004064ac  a5 fe ff ea                                      b #0x405f48

; FUNCTION 0x004064b0, declared_size=8, range_size=8, mode=arm
; class-group: v2EmuController
; alias: _ZThn16_N15v2EmuControllerD1Ev
; demangled: non-virtual thunk to v2EmuController::~v2EmuController()
; decoder-mode: arm
004064b0  10 00 40 e2                                      sub r0, r0, #0x10
004064b4  ff ff ff ea                                      b #0x4064b8

; FUNCTION 0x004064b8, declared_size=104, range_size=104, mode=arm
; class-group: v2EmuController
; alias: _ZN15v2EmuControllerD1Ev
; demangled: v2EmuController::~v2EmuController()
; decoder-mode: arm
004064b8  54 30 9f e5                                      ldr r3, [pc, #0x54]
004064bc  54 20 9f e5                                      ldr r2, [pc, #0x54]
004064c0  54 10 9f e5                                      ldr r1, [pc, #0x54]
004064c4  03 30 8f e0                                      add r3, pc, r3
004064c8  70 40 2d e9                                      push {r4, r5, r6, lr}
004064cc  02 20 93 e7                                      ldr r2, [r3, r2]
004064d0  01 60 93 e7                                      ldr r6, [r3, r1]
004064d4  00 40 a0 e1                                      mov r4, r0
004064d8  20 10 82 e2                                      add r1, r2, #0x20
004064dc  08 20 82 e2                                      add r2, r2, #8
004064e0  00 20 80 e5                                      str r2, [r0]
004064e4  10 10 a4 e5                                      str r1, [r4, #0x10]!
004064e8  00 50 a0 e1                                      mov r5, r0
004064ec  04 20 a0 e1                                      mov r2, r4
004064f0  00 10 a0 e3                                      mov r1, #0
004064f4  14 00 96 e5                                      ldr r0, [r6, #0x14]
004064f8  07 c7 fc eb                                      bl #0x33811c
004064fc  14 00 96 e5                                      ldr r0, [r6, #0x14]
00406500  04 20 a0 e1                                      mov r2, r4
00406504  02 10 a0 e3                                      mov r1, #2
00406508  03 c7 fc eb                                      bl #0x33811c
0040650c  05 00 a0 e1                                      mov r0, r5
00406510  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00406514  cc e5 58 00 c0 2c 00 00 f4 37 00 00              .byte 0xcc, 0xe5, 0x58, 0x00, 0xc0, 0x2c, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00406520, declared_size=8, range_size=8, mode=arm
; class-group: v2EmuController
; alias: _ZThn16_N15v2EmuControllerD0Ev
; demangled: non-virtual thunk to v2EmuController::~v2EmuController()
; decoder-mode: arm
00406520  10 00 40 e2                                      sub r0, r0, #0x10
00406524  ff ff ff ea                                      b #0x406528

; FUNCTION 0x00406528, declared_size=28, range_size=28, mode=arm
; class-group: v2EmuController
; alias: _ZN15v2EmuControllerD0Ev
; demangled: v2EmuController::~v2EmuController()
; decoder-mode: arm
00406528  10 40 2d e9                                      push {r4, lr}
0040652c  00 40 a0 e1                                      mov r4, r0
00406530  e0 ff ff eb                                      bl #0x4064b8
00406534  04 00 a0 e1                                      mov r0, r4
00406538  c0 27 fc eb                                      bl #0x310440
0040653c  04 00 a0 e1                                      mov r0, r4
00406540  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00406544, declared_size=104, range_size=104, mode=arm
; class-group: v2EmuController
; alias: _ZN15v2EmuControllerD2Ev
; demangled: v2EmuController::~v2EmuController()
; decoder-mode: arm
00406544  54 30 9f e5                                      ldr r3, [pc, #0x54]
00406548  54 20 9f e5                                      ldr r2, [pc, #0x54]
0040654c  54 10 9f e5                                      ldr r1, [pc, #0x54]
00406550  03 30 8f e0                                      add r3, pc, r3
00406554  70 40 2d e9                                      push {r4, r5, r6, lr}
00406558  02 20 93 e7                                      ldr r2, [r3, r2]
0040655c  01 60 93 e7                                      ldr r6, [r3, r1]
00406560  00 40 a0 e1                                      mov r4, r0
00406564  20 10 82 e2                                      add r1, r2, #0x20
00406568  08 20 82 e2                                      add r2, r2, #8
0040656c  00 20 80 e5                                      str r2, [r0]
00406570  10 10 a4 e5                                      str r1, [r4, #0x10]!
00406574  00 50 a0 e1                                      mov r5, r0
00406578  04 20 a0 e1                                      mov r2, r4
0040657c  00 10 a0 e3                                      mov r1, #0
00406580  14 00 96 e5                                      ldr r0, [r6, #0x14]
00406584  e4 c6 fc eb                                      bl #0x33811c
00406588  14 00 96 e5                                      ldr r0, [r6, #0x14]
0040658c  04 20 a0 e1                                      mov r2, r4
00406590  02 10 a0 e3                                      mov r1, #2
00406594  e0 c6 fc eb                                      bl #0x33811c
00406598  05 00 a0 e1                                      mov r0, r5
0040659c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004065a0  40 e5 58 00 c0 2c 00 00 f4 37 00 00              .byte 0x40, 0xe5, 0x58, 0x00, 0xc0, 0x2c, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x004065ac, declared_size=288, range_size=288, mode=arm
; class-group: v2EmuController
; alias: _ZN15v2EmuControllerC1EP14v2Controllable
; demangled: v2EmuController::v2EmuController(v2Controllable*)
; decoder-mode: arm
004065ac  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
004065b0  f0 50 9f e5                                      ldr r5, [pc, #0xf0]
004065b4  f0 30 9f e5                                      ldr r3, [pc, #0xf0]
004065b8  00 20 a0 e3                                      mov r2, #0
004065bc  05 50 8f e0                                      add r5, pc, r5
004065c0  03 30 95 e7                                      ldr r3, [r5, r3]
004065c4  00 00 51 e3                                      cmp r1, #0
004065c8  0c d0 4d e2                                      sub sp, sp, #0xc
004065cc  08 30 83 e2                                      add r3, r3, #8
004065d0  00 40 a0 e1                                      mov r4, r0
004065d4  00 30 80 e5                                      str r3, [r0]
004065d8  0c 20 80 e5                                      str r2, [r0, #0xc]
004065dc  04 10 80 e5                                      str r1, [r0, #4]
004065e0  08 20 c0 e5                                      strb r2, [r0, #8]
004065e4  09 20 c0 e5                                      strb r2, [r0, #9]
004065e8  0a 20 c0 e5                                      strb r2, [r0, #0xa]
004065ec  18 00 00 0a                                      beq #0x406654
004065f0  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
004065f4  b8 20 9f e5                                      ldr r2, [pc, #0xb8]
004065f8  00 60 a0 e3                                      mov r6, #0
004065fc  03 30 95 e7                                      ldr r3, [r5, r3]
00406600  02 70 95 e7                                      ldr r7, [r5, r2]
00406604  14 60 84 e5                                      str r6, [r4, #0x14]
00406608  20 20 83 e2                                      add r2, r3, #0x20
0040660c  08 30 83 e2                                      add r3, r3, #8
00406610  00 30 84 e5                                      str r3, [r4]
00406614  10 20 84 e5                                      str r2, [r4, #0x10]
00406618  18 60 84 e5                                      str r6, [r4, #0x18]
0040661c  10 50 84 e2                                      add r5, r4, #0x10
00406620  06 10 a0 e1                                      mov r1, r6
00406624  05 20 a0 e1                                      mov r2, r5
00406628  06 30 a0 e1                                      mov r3, r6
0040662c  14 00 97 e5                                      ldr r0, [r7, #0x14]
00406630  da c9 fc eb                                      bl #0x338da0
00406634  14 00 97 e5                                      ldr r0, [r7, #0x14]
00406638  05 20 a0 e1                                      mov r2, r5
0040663c  06 30 a0 e1                                      mov r3, r6
00406640  02 10 a0 e3                                      mov r1, #2
00406644  d5 c9 fc eb                                      bl #0x338da0
00406648  04 00 a0 e1                                      mov r0, r4
0040664c  0c d0 8d e2                                      add sp, sp, #0xc
00406650  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00406654  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
00406658  03 30 95 e7                                      ldr r3, [r5, r3]
0040665c  00 30 93 e5                                      ldr r3, [r3]
00406660  02 00 53 e3                                      cmp r3, #2
00406664  00 10 81 05                                      streq r1, [r1]
00406668  e0 ff ff 0a                                      beq #0x4065f0
0040666c  01 00 53 e3                                      cmp r3, #1
00406670  de ff ff 1a                                      bne #0x4065f0
00406674  40 00 9f e5                                      ldr r0, [pc, #0x40]
00406678  40 10 9f e5                                      ldr r1, [pc, #0x40]
0040667c  40 20 9f e5                                      ldr r2, [pc, #0x40]
00406680  00 00 95 e7                                      ldr r0, [r5, r0]
00406684  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00406688  44 c0 a0 e3                                      mov ip, #0x44
0040668c  01 10 8f e0                                      add r1, pc, r1
00406690  02 20 8f e0                                      add r2, pc, r2
00406694  03 30 8f e0                                      add r3, pc, r3
00406698  a8 00 80 e2                                      add r0, r0, #0xa8
0040669c  00 c0 8d e5                                      str ip, [sp]
004066a0  57 1e fc eb                                      bl #0x30e004
004066a4  d1 ff ff ea                                      b #0x4065f0
; mapping-symbol data/literal pool
004066a8  d4 e4 58 00 a4 2a 00 00 c0 2c 00 00 f4 37 00 00  .byte 0xd4, 0xe4, 0x58, 0x00, 0xa4, 0x2a, 0x00, 0x00, 0xc0, 0x2c, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
004066b8  c0 39 00 00 c0 19 00 00 4c 7d 4b 00 30 ce 4b 00  .byte 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x4c, 0x7d, 0x4b, 0x00, 0x30, 0xce, 0x4b, 0x00
004066c8  44 13 4c 00                                      .byte 0x44, 0x13, 0x4c, 0x00

; FUNCTION 0x004066cc, declared_size=288, range_size=288, mode=arm
; class-group: v2EmuController
; alias: _ZN15v2EmuControllerC2EP14v2Controllable
; demangled: v2EmuController::v2EmuController(v2Controllable*)
; decoder-mode: arm
004066cc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
004066d0  f0 50 9f e5                                      ldr r5, [pc, #0xf0]
004066d4  f0 30 9f e5                                      ldr r3, [pc, #0xf0]
004066d8  00 20 a0 e3                                      mov r2, #0
004066dc  05 50 8f e0                                      add r5, pc, r5
004066e0  03 30 95 e7                                      ldr r3, [r5, r3]
004066e4  00 00 51 e3                                      cmp r1, #0
004066e8  0c d0 4d e2                                      sub sp, sp, #0xc
004066ec  08 30 83 e2                                      add r3, r3, #8
004066f0  00 40 a0 e1                                      mov r4, r0
004066f4  00 30 80 e5                                      str r3, [r0]
004066f8  0c 20 80 e5                                      str r2, [r0, #0xc]
004066fc  04 10 80 e5                                      str r1, [r0, #4]
00406700  08 20 c0 e5                                      strb r2, [r0, #8]
00406704  09 20 c0 e5                                      strb r2, [r0, #9]
00406708  0a 20 c0 e5                                      strb r2, [r0, #0xa]
0040670c  18 00 00 0a                                      beq #0x406774
00406710  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
00406714  b8 20 9f e5                                      ldr r2, [pc, #0xb8]
00406718  00 60 a0 e3                                      mov r6, #0
0040671c  03 30 95 e7                                      ldr r3, [r5, r3]
00406720  02 70 95 e7                                      ldr r7, [r5, r2]
00406724  14 60 84 e5                                      str r6, [r4, #0x14]
00406728  20 20 83 e2                                      add r2, r3, #0x20
0040672c  08 30 83 e2                                      add r3, r3, #8
00406730  00 30 84 e5                                      str r3, [r4]
00406734  10 20 84 e5                                      str r2, [r4, #0x10]
00406738  18 60 84 e5                                      str r6, [r4, #0x18]
0040673c  10 50 84 e2                                      add r5, r4, #0x10
00406740  06 10 a0 e1                                      mov r1, r6
00406744  05 20 a0 e1                                      mov r2, r5
00406748  06 30 a0 e1                                      mov r3, r6
0040674c  14 00 97 e5                                      ldr r0, [r7, #0x14]
00406750  92 c9 fc eb                                      bl #0x338da0
00406754  14 00 97 e5                                      ldr r0, [r7, #0x14]
00406758  05 20 a0 e1                                      mov r2, r5
0040675c  06 30 a0 e1                                      mov r3, r6
00406760  02 10 a0 e3                                      mov r1, #2
00406764  8d c9 fc eb                                      bl #0x338da0
00406768  04 00 a0 e1                                      mov r0, r4
0040676c  0c d0 8d e2                                      add sp, sp, #0xc
00406770  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00406774  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
00406778  03 30 95 e7                                      ldr r3, [r5, r3]
0040677c  00 30 93 e5                                      ldr r3, [r3]
00406780  02 00 53 e3                                      cmp r3, #2
00406784  00 10 81 05                                      streq r1, [r1]
00406788  e0 ff ff 0a                                      beq #0x406710
0040678c  01 00 53 e3                                      cmp r3, #1
00406790  de ff ff 1a                                      bne #0x406710
00406794  40 00 9f e5                                      ldr r0, [pc, #0x40]
00406798  40 10 9f e5                                      ldr r1, [pc, #0x40]
0040679c  40 20 9f e5                                      ldr r2, [pc, #0x40]
004067a0  00 00 95 e7                                      ldr r0, [r5, r0]
004067a4  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
004067a8  44 c0 a0 e3                                      mov ip, #0x44
004067ac  01 10 8f e0                                      add r1, pc, r1
004067b0  02 20 8f e0                                      add r2, pc, r2
004067b4  03 30 8f e0                                      add r3, pc, r3
004067b8  a8 00 80 e2                                      add r0, r0, #0xa8
004067bc  00 c0 8d e5                                      str ip, [sp]
004067c0  0f 1e fc eb                                      bl #0x30e004
004067c4  d1 ff ff ea                                      b #0x406710
; mapping-symbol data/literal pool
004067c8  b4 e3 58 00 a4 2a 00 00 c0 2c 00 00 f4 37 00 00  .byte 0xb4, 0xe3, 0x58, 0x00, 0xa4, 0x2a, 0x00, 0x00, 0xc0, 0x2c, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
004067d8  c0 39 00 00 c0 19 00 00 2c 7c 4b 00 10 cd 4b 00  .byte 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x2c, 0x7c, 0x4b, 0x00, 0x10, 0xcd, 0x4b, 0x00
004067e8  24 12 4c 00                                      .byte 0x24, 0x12, 0x4c, 0x00
