; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005149ac, declared_size=52, range_size=52, mode=arm
; class-group: TiXmlPrinterDH
; alias: _ZN14TiXmlPrinterDHD1Ev
; demangled: TiXmlPrinterDH::~TiXmlPrinterDH()
; decoder-mode: arm
005149ac  24 30 9f e5                                      ldr r3, [pc, #0x24]
005149b0  24 20 9f e5                                      ldr r2, [pc, #0x24]
005149b4  10 40 2d e9                                      push {r4, lr}
005149b8  03 30 8f e0                                      add r3, pc, r3
005149bc  02 20 93 e7                                      ldr r2, [r3, r2]
005149c0  00 40 a0 e1                                      mov r4, r0
005149c4  08 20 82 e2                                      add r2, r2, #8
005149c8  00 20 80 e5                                      str r2, [r0]
005149cc  98 ce fd eb                                      bl #0x488434
005149d0  04 00 a0 e1                                      mov r0, r4
005149d4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005149d8  d8 00 48 00 ec 42 00 00                          .byte 0xd8, 0x00, 0x48, 0x00, 0xec, 0x42, 0x00, 0x00

; FUNCTION 0x00515a6c, declared_size=60, range_size=60, mode=arm
; class-group: TiXmlPrinterDH
; alias: _ZN14TiXmlPrinterDHD0Ev
; demangled: TiXmlPrinterDH::~TiXmlPrinterDH()
; decoder-mode: arm
00515a6c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00515a70  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00515a74  10 40 2d e9                                      push {r4, lr}
00515a78  03 30 8f e0                                      add r3, pc, r3
00515a7c  02 20 93 e7                                      ldr r2, [r3, r2]
00515a80  00 40 a0 e1                                      mov r4, r0
00515a84  08 20 82 e2                                      add r2, r2, #8
00515a88  00 20 80 e5                                      str r2, [r0]
00515a8c  68 ca fd eb                                      bl #0x488434
00515a90  04 00 a0 e1                                      mov r0, r4
00515a94  69 ea f7 eb                                      bl #0x310440
00515a98  04 00 a0 e1                                      mov r0, r4
00515a9c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00515aa0  18 f0 47 00 ec 42 00 00                          .byte 0x18, 0xf0, 0x47, 0x00, 0xec, 0x42, 0x00, 0x00

; FUNCTION 0x00518110, declared_size=472, range_size=472, mode=arm
; class-group: TiXmlPrinterDH
; alias: _ZN14TiXmlPrinterDH10VisitEnterERK12TiXmlElementPK14TiXmlAttribute
; demangled: TiXmlPrinterDH::VisitEnter(TiXmlElement const&, TiXmlAttribute const*)
; decoder-mode: arm
00518110  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00518114  04 30 90 e5                                      ldr r3, [r0, #4]
00518118  00 40 a0 e1                                      mov r4, r0
0051811c  01 70 a0 e1                                      mov r7, r1
00518120  00 00 53 e3                                      cmp r3, #0
00518124  02 60 a0 e1                                      mov r6, r2
00518128  0c 50 80 d2                                      addle r5, r0, #0xc
0051812c  09 00 00 da                                      ble #0x518158
00518130  0c 50 80 e2                                      add r5, r0, #0xc
00518134  00 80 a0 e3                                      mov r8, #0
00518138  05 00 a0 e1                                      mov r0, r5
0051813c  38 10 94 e5                                      ldr r1, [r4, #0x38]
00518140  34 20 94 e5                                      ldr r2, [r4, #0x34]
00518144  ae e1 f7 eb                                      bl #0x310804
00518148  04 30 94 e5                                      ldr r3, [r4, #4]
0051814c  01 80 88 e2                                      add r8, r8, #1
00518150  03 00 58 e1                                      cmp r8, r3
00518154  f7 ff ff ba                                      blt #0x518138
00518158  7c 11 9f e5                                      ldr r1, [pc, #0x17c]
0051815c  05 00 a0 e1                                      mov r0, r5
00518160  01 10 8f e0                                      add r1, pc, r1
00518164  01 20 81 e2                                      add r2, r1, #1
00518168  a5 e1 f7 eb                                      bl #0x310804
0051816c  34 80 97 e5                                      ldr r8, [r7, #0x34]
00518170  08 00 a0 e1                                      mov r0, r8
00518174  36 d7 f7 eb                                      bl #0x30de54
00518178  08 10 a0 e1                                      mov r1, r8
0051817c  00 20 88 e0                                      add r2, r8, r0
00518180  05 00 a0 e1                                      mov r0, r5
00518184  9e e1 f7 eb                                      bl #0x310804
00518188  04 30 94 e5                                      ldr r3, [r4, #4]
0051818c  00 00 56 e3                                      cmp r6, #0
00518190  01 30 83 e2                                      add r3, r3, #1
00518194  04 30 84 e5                                      str r3, [r4, #4]
00518198  18 00 00 0a                                      beq #0x518200
0051819c  05 00 a0 e1                                      mov r0, r5
005181a0  50 10 94 e5                                      ldr r1, [r4, #0x50]
005181a4  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
005181a8  95 e1 f7 eb                                      bl #0x310804
005181ac  04 30 94 e5                                      ldr r3, [r4, #4]
005181b0  00 00 53 e3                                      cmp r3, #0
005181b4  08 00 00 da                                      ble #0x5181dc
005181b8  00 80 a0 e3                                      mov r8, #0
005181bc  05 00 a0 e1                                      mov r0, r5
005181c0  38 10 94 e5                                      ldr r1, [r4, #0x38]
005181c4  34 20 94 e5                                      ldr r2, [r4, #0x34]
005181c8  8d e1 f7 eb                                      bl #0x310804
005181cc  04 30 94 e5                                      ldr r3, [r4, #4]
005181d0  01 80 88 e2                                      add r8, r8, #1
005181d4  03 00 58 e1                                      cmp r8, r3
005181d8  f7 ff ff ba                                      blt #0x5181bc
005181dc  00 10 a0 e3                                      mov r1, #0
005181e0  06 00 a0 e1                                      mov r0, r6
005181e4  01 20 a0 e1                                      mov r2, r1
005181e8  05 30 a0 e1                                      mov r3, r5
005181ec  48 ff ff eb                                      bl #0x517f14
005181f0  06 00 a0 e1                                      mov r0, r6
005181f4  11 f1 ff eb                                      bl #0x514640
005181f8  00 60 50 e2                                      subs r6, r0, #0
005181fc  e6 ff ff 1a                                      bne #0x51819c
00518200  05 00 a0 e1                                      mov r0, r5
00518204  50 10 94 e5                                      ldr r1, [r4, #0x50]
00518208  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
0051820c  7c e1 f7 eb                                      bl #0x310804
00518210  04 30 94 e5                                      ldr r3, [r4, #4]
00518214  01 30 43 e2                                      sub r3, r3, #1
00518218  04 30 84 e5                                      str r3, [r4, #4]
0051821c  18 30 97 e5                                      ldr r3, [r7, #0x18]
00518220  00 00 53 e3                                      cmp r3, #0
00518224  18 00 00 0a                                      beq #0x51828c
00518228  b0 10 9f e5                                      ldr r1, [pc, #0xb0]
0051822c  05 00 a0 e1                                      mov r0, r5
00518230  01 10 8f e0                                      add r1, pc, r1
00518234  01 20 81 e2                                      add r2, r1, #1
00518238  71 e1 f7 eb                                      bl #0x310804
0051823c  18 30 97 e5                                      ldr r3, [r7, #0x18]
00518240  03 00 a0 e1                                      mov r0, r3
00518244  00 30 93 e5                                      ldr r3, [r3]
00518248  0f e0 a0 e1                                      mov lr, pc
0051824c  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00518250  00 00 50 e3                                      cmp r0, #0
00518254  03 00 00 0a                                      beq #0x518268
00518258  18 20 97 e5                                      ldr r2, [r7, #0x18]
0051825c  1c 30 97 e5                                      ldr r3, [r7, #0x1c]
00518260  02 00 53 e1                                      cmp r3, r2
00518264  12 00 00 0a                                      beq #0x5182b4
00518268  05 00 a0 e1                                      mov r0, r5
0051826c  50 10 94 e5                                      ldr r1, [r4, #0x50]
00518270  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
00518274  62 e1 f7 eb                                      bl #0x310804
00518278  04 30 94 e5                                      ldr r3, [r4, #4]
0051827c  01 00 a0 e3                                      mov r0, #1
00518280  00 30 83 e0                                      add r3, r3, r0
00518284  04 30 84 e5                                      str r3, [r4, #4]
00518288  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0051828c  50 10 9f e5                                      ldr r1, [pc, #0x50]
00518290  05 00 a0 e1                                      mov r0, r5
00518294  01 10 8f e0                                      add r1, pc, r1
00518298  03 20 81 e2                                      add r2, r1, #3
0051829c  58 e1 f7 eb                                      bl #0x310804
005182a0  05 00 a0 e1                                      mov r0, r5
005182a4  50 10 94 e5                                      ldr r1, [r4, #0x50]
005182a8  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
005182ac  54 e1 f7 eb                                      bl #0x310804
005182b0  f0 ff ff ea                                      b #0x518278
005182b4  03 00 a0 e1                                      mov r0, r3
005182b8  00 30 93 e5                                      ldr r3, [r3]
005182bc  0f e0 a0 e1                                      mov lr, pc
005182c0  20 f0 93 e5                                      ldr pc, [r3, #0x20]
005182c4  40 30 d0 e5                                      ldrb r3, [r0, #0x40]
005182c8  00 00 53 e3                                      cmp r3, #0
005182cc  e5 ff ff 1a                                      bne #0x518268
005182d0  01 30 83 e2                                      add r3, r3, #1
005182d4  08 30 c4 e5                                      strb r3, [r4, #8]
005182d8  e6 ff ff ea                                      b #0x518278
; mapping-symbol data/literal pool
005182dc  b0 3f 3c 00 98 3e 3c 00 44 3e 3c 00              .byte 0xb0, 0x3f, 0x3c, 0x00, 0x98, 0x3e, 0x3c, 0x00, 0x44, 0x3e, 0x3c, 0x00
