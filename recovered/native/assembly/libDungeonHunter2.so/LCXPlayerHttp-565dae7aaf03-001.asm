; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0089d3ac, declared_size=20, range_size=20, mode=arm
; class-group: LCXPlayerHttp
; alias: _ZN13LCXPlayerHttp14GetRequestDataEv
; demangled: LCXPlayerHttp::GetRequestData()
; decoder-mode: arm
0089d3ac  24 34 d0 e5                                      ldrb r3, [r0, #0x424]
0089d3b0  00 00 53 e3                                      cmp r3, #0
0089d3b4  1c 04 90 15                                      ldrne r0, [r0, #0x41c]
0089d3b8  08 00 80 02                                      addeq r0, r0, #8
0089d3bc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0089d3c0, declared_size=28, range_size=28, mode=arm
; class-group: LCXPlayerHttp
; alias: _ZN13LCXPlayerHttp13UpdateRequestEv
; demangled: LCXPlayerHttp::UpdateRequest()
; decoder-mode: arm
0089d3c0  10 40 2d e9                                      push {r4, lr}
0089d3c4  04 30 90 e5                                      ldr r3, [r0, #4]
0089d3c8  03 00 a0 e1                                      mov r0, r3
0089d3cc  00 30 93 e5                                      ldr r3, [r3]
0089d3d0  0f e0 a0 e1                                      mov lr, pc
0089d3d4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0089d3d8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0089d3dc, declared_size=28, range_size=28, mode=arm
; class-group: LCXPlayerHttp
; alias: _ZN13LCXPlayerHttp12IsInProgressEv
; demangled: LCXPlayerHttp::IsInProgress()
; decoder-mode: arm
0089d3dc  10 40 2d e9                                      push {r4, lr}
0089d3e0  04 30 90 e5                                      ldr r3, [r0, #4]
0089d3e4  03 00 a0 e1                                      mov r0, r3
0089d3e8  00 30 93 e5                                      ldr r3, [r3]
0089d3ec  0f e0 a0 e1                                      mov lr, pc
0089d3f0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0089d3f4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0089d3f8, declared_size=28, range_size=28, mode=arm
; class-group: LCXPlayerHttp
; alias: _ZN13LCXPlayerHttp15IsErrorOccurredEv
; demangled: LCXPlayerHttp::IsErrorOccurred()
; decoder-mode: arm
0089d3f8  10 40 2d e9                                      push {r4, lr}
0089d3fc  04 30 90 e5                                      ldr r3, [r0, #4]
0089d400  03 00 a0 e1                                      mov r0, r3
0089d404  00 30 93 e5                                      ldr r3, [r3]
0089d408  0f e0 a0 e1                                      mov lr, pc
0089d40c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0089d410  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0089d414, declared_size=8, range_size=8, mode=arm
; class-group: LCXPlayerHttp
; alias: _ZN13LCXPlayerHttp11GetResponseEv
; demangled: LCXPlayerHttp::GetResponse()
; decoder-mode: arm
0089d414  08 04 90 e5                                      ldr r0, [r0, #0x408]
0089d418  1e ff 2f e1                                      bx lr

; FUNCTION 0x0089d41c, declared_size=8, range_size=8, mode=arm
; class-group: LCXPlayerHttp
; alias: _ZN13LCXPlayerHttp14GetResponseLenEv
; demangled: LCXPlayerHttp::GetResponseLen()
; decoder-mode: arm
0089d41c  0c 04 90 e5                                      ldr r0, [r0, #0x40c]
0089d420  1e ff 2f e1                                      bx lr

; FUNCTION 0x0089d424, declared_size=8, range_size=8, mode=arm
; class-group: LCXPlayerHttp
; alias: _ZN13LCXPlayerHttp14SetResponseLenEi
; demangled: LCXPlayerHttp::SetResponseLen(int)
; decoder-mode: arm
0089d424  0c 14 80 e5                                      str r1, [r0, #0x40c]
0089d428  1e ff 2f e1                                      bx lr

; FUNCTION 0x0089d42c, declared_size=88, range_size=88, mode=arm
; class-group: LCXPlayerHttp
; alias: _ZN13LCXPlayerHttp6CancelEv
; demangled: LCXPlayerHttp::Cancel()
; decoder-mode: arm
0089d42c  10 40 2d e9                                      push {r4, lr}
0089d430  04 30 90 e5                                      ldr r3, [r0, #4]
0089d434  00 40 a0 e1                                      mov r4, r0
0089d438  03 00 a0 e1                                      mov r0, r3
0089d43c  00 30 93 e5                                      ldr r3, [r3]
0089d440  0f e0 a0 e1                                      mov lr, pc
0089d444  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0089d448  1c 04 94 e5                                      ldr r0, [r4, #0x41c]
0089d44c  00 00 50 e3                                      cmp r0, #0
0089d450  02 00 00 0a                                      beq #0x89d460
0089d454  95 c3 e9 eb                                      bl #0x30e2b0
0089d458  00 30 a0 e3                                      mov r3, #0
0089d45c  1c 34 84 e5                                      str r3, [r4, #0x41c]
0089d460  08 04 94 e5                                      ldr r0, [r4, #0x408]
0089d464  00 00 50 e3                                      cmp r0, #0
0089d468  02 00 00 0a                                      beq #0x89d478
0089d46c  8f c3 e9 eb                                      bl #0x30e2b0
0089d470  00 30 a0 e3                                      mov r3, #0
0089d474  08 34 84 e5                                      str r3, [r4, #0x408]
0089d478  00 30 a0 e3                                      mov r3, #0
0089d47c  0c 34 84 e5                                      str r3, [r4, #0x40c]
0089d480  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0089d484, declared_size=28, range_size=28, mode=arm
; class-group: LCXPlayerHttp
; alias: _ZN13LCXPlayerHttp16GetRequestLengthEv
; demangled: LCXPlayerHttp::GetRequestLength()
; decoder-mode: arm
0089d484  24 34 d0 e5                                      ldrb r3, [r0, #0x424]
0089d488  00 00 53 e3                                      cmp r3, #0
0089d48c  01 00 00 0a                                      beq #0x89d498
0089d490  20 04 90 e5                                      ldr r0, [r0, #0x420]
0089d494  1e ff 2f e1                                      bx lr
0089d498  08 00 80 e2                                      add r0, r0, #8
0089d49c  fd fd ff ea                                      b #0x89cc98

; FUNCTION 0x0089d4a0, declared_size=92, range_size=92, mode=arm
; class-group: LCXPlayerHttp
; alias: _ZN13LCXPlayerHttp15SetResponseDataEPci
; demangled: LCXPlayerHttp::SetResponseData(char*, int)
; decoder-mode: arm
0089d4a0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0089d4a4  00 40 a0 e1                                      mov r4, r0
0089d4a8  08 04 90 e5                                      ldr r0, [r0, #0x408]
0089d4ac  01 60 a0 e1                                      mov r6, r1
0089d4b0  02 50 a0 e1                                      mov r5, r2
0089d4b4  00 00 50 e3                                      cmp r0, #0
0089d4b8  02 00 00 0a                                      beq #0x89d4c8
0089d4bc  7b c3 e9 eb                                      bl #0x30e2b0
0089d4c0  00 30 a0 e3                                      mov r3, #0
0089d4c4  08 34 84 e5                                      str r3, [r4, #0x408]
0089d4c8  01 70 85 e2                                      add r7, r5, #1
0089d4cc  07 00 a0 e1                                      mov r0, r7
0089d4d0  fe c2 e9 eb                                      bl #0x30e0d0
0089d4d4  07 20 a0 e1                                      mov r2, r7
0089d4d8  08 04 84 e5                                      str r0, [r4, #0x408]
0089d4dc  00 10 a0 e3                                      mov r1, #0
0089d4e0  86 fe ff eb                                      bl #0x89cf00
0089d4e4  06 10 a0 e1                                      mov r1, r6
0089d4e8  08 04 94 e5                                      ldr r0, [r4, #0x408]
0089d4ec  05 20 a0 e1                                      mov r2, r5
0089d4f0  7d fe ff eb                                      bl #0x89ceec
0089d4f4  0c 54 84 e5                                      str r5, [r4, #0x40c]
0089d4f8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0089d4fc, declared_size=200, range_size=200, mode=arm
; class-group: LCXPlayerHttp
; alias: _ZN13LCXPlayerHttpD1Ev
; demangled: LCXPlayerHttp::~LCXPlayerHttp()
; decoder-mode: arm
0089d4fc  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
0089d500  b8 20 9f e5                                      ldr r2, [pc, #0xb8]
0089d504  10 40 2d e9                                      push {r4, lr}
0089d508  03 30 8f e0                                      add r3, pc, r3
0089d50c  02 20 93 e7                                      ldr r2, [r3, r2]
0089d510  00 40 a0 e1                                      mov r4, r0
0089d514  08 20 82 e2                                      add r2, r2, #8
0089d518  00 20 80 e5                                      str r2, [r0]
0089d51c  c2 ff ff eb                                      bl #0x89d42c
0089d520  10 04 94 e5                                      ldr r0, [r4, #0x410]
0089d524  00 00 50 e3                                      cmp r0, #0
0089d528  02 00 00 0a                                      beq #0x89d538
0089d52c  e1 c2 e9 eb                                      bl #0x30e0b8
0089d530  00 30 a0 e3                                      mov r3, #0
0089d534  10 34 84 e5                                      str r3, [r4, #0x410]
0089d538  14 04 94 e5                                      ldr r0, [r4, #0x414]
0089d53c  00 00 50 e3                                      cmp r0, #0
0089d540  02 00 00 0a                                      beq #0x89d550
0089d544  db c2 e9 eb                                      bl #0x30e0b8
0089d548  00 30 a0 e3                                      mov r3, #0
0089d54c  14 34 84 e5                                      str r3, [r4, #0x414]
0089d550  18 04 94 e5                                      ldr r0, [r4, #0x418]
0089d554  00 00 50 e3                                      cmp r0, #0
0089d558  02 00 00 0a                                      beq #0x89d568
0089d55c  d5 c2 e9 eb                                      bl #0x30e0b8
0089d560  00 30 a0 e3                                      mov r3, #0
0089d564  18 34 84 e5                                      str r3, [r4, #0x418]
0089d568  1c 04 94 e5                                      ldr r0, [r4, #0x41c]
0089d56c  00 00 50 e3                                      cmp r0, #0
0089d570  02 00 00 0a                                      beq #0x89d580
0089d574  4d c3 e9 eb                                      bl #0x30e2b0
0089d578  00 30 a0 e3                                      mov r3, #0
0089d57c  1c 34 84 e5                                      str r3, [r4, #0x41c]
0089d580  08 04 94 e5                                      ldr r0, [r4, #0x408]
0089d584  00 00 50 e3                                      cmp r0, #0
0089d588  02 00 00 0a                                      beq #0x89d598
0089d58c  47 c3 e9 eb                                      bl #0x30e2b0
0089d590  00 30 a0 e3                                      mov r3, #0
0089d594  08 34 84 e5                                      str r3, [r4, #0x408]
0089d598  04 30 94 e5                                      ldr r3, [r4, #4]
0089d59c  00 00 53 e3                                      cmp r3, #0
0089d5a0  03 00 00 0a                                      beq #0x89d5b4
0089d5a4  03 00 a0 e1                                      mov r0, r3
0089d5a8  00 30 93 e5                                      ldr r3, [r3]
0089d5ac  0f e0 a0 e1                                      mov lr, pc
0089d5b0  04 f0 93 e5                                      ldr pc, [r3, #4]
0089d5b4  04 00 a0 e1                                      mov r0, r4
0089d5b8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0089d5bc  88 75 0f 00 70 2f 00 00                          .byte 0x88, 0x75, 0x0f, 0x00, 0x70, 0x2f, 0x00, 0x00

; FUNCTION 0x0089d5c4, declared_size=28, range_size=28, mode=arm
; class-group: LCXPlayerHttp
; alias: _ZN13LCXPlayerHttpD0Ev
; demangled: LCXPlayerHttp::~LCXPlayerHttp()
; decoder-mode: arm
0089d5c4  10 40 2d e9                                      push {r4, lr}
0089d5c8  00 40 a0 e1                                      mov r4, r0
0089d5cc  ca ff ff eb                                      bl #0x89d4fc
0089d5d0  04 00 a0 e1                                      mov r0, r4
0089d5d4  35 c3 e9 eb                                      bl #0x30e2b0
0089d5d8  04 00 a0 e1                                      mov r0, r4
0089d5dc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0089d5e0, declared_size=200, range_size=200, mode=arm
; class-group: LCXPlayerHttp
; alias: _ZN13LCXPlayerHttpD2Ev
; demangled: LCXPlayerHttp::~LCXPlayerHttp()
; decoder-mode: arm
0089d5e0  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
0089d5e4  b8 20 9f e5                                      ldr r2, [pc, #0xb8]
0089d5e8  10 40 2d e9                                      push {r4, lr}
0089d5ec  03 30 8f e0                                      add r3, pc, r3
0089d5f0  02 20 93 e7                                      ldr r2, [r3, r2]
0089d5f4  00 40 a0 e1                                      mov r4, r0
0089d5f8  08 20 82 e2                                      add r2, r2, #8
0089d5fc  00 20 80 e5                                      str r2, [r0]
0089d600  89 ff ff eb                                      bl #0x89d42c
0089d604  10 04 94 e5                                      ldr r0, [r4, #0x410]
0089d608  00 00 50 e3                                      cmp r0, #0
0089d60c  02 00 00 0a                                      beq #0x89d61c
0089d610  a8 c2 e9 eb                                      bl #0x30e0b8
0089d614  00 30 a0 e3                                      mov r3, #0
0089d618  10 34 84 e5                                      str r3, [r4, #0x410]
0089d61c  14 04 94 e5                                      ldr r0, [r4, #0x414]
0089d620  00 00 50 e3                                      cmp r0, #0
0089d624  02 00 00 0a                                      beq #0x89d634
0089d628  a2 c2 e9 eb                                      bl #0x30e0b8
0089d62c  00 30 a0 e3                                      mov r3, #0
0089d630  14 34 84 e5                                      str r3, [r4, #0x414]
0089d634  18 04 94 e5                                      ldr r0, [r4, #0x418]
0089d638  00 00 50 e3                                      cmp r0, #0
0089d63c  02 00 00 0a                                      beq #0x89d64c
0089d640  9c c2 e9 eb                                      bl #0x30e0b8
0089d644  00 30 a0 e3                                      mov r3, #0
0089d648  18 34 84 e5                                      str r3, [r4, #0x418]
0089d64c  1c 04 94 e5                                      ldr r0, [r4, #0x41c]
0089d650  00 00 50 e3                                      cmp r0, #0
0089d654  02 00 00 0a                                      beq #0x89d664
0089d658  14 c3 e9 eb                                      bl #0x30e2b0
0089d65c  00 30 a0 e3                                      mov r3, #0
0089d660  1c 34 84 e5                                      str r3, [r4, #0x41c]
0089d664  08 04 94 e5                                      ldr r0, [r4, #0x408]
0089d668  00 00 50 e3                                      cmp r0, #0
0089d66c  02 00 00 0a                                      beq #0x89d67c
0089d670  0e c3 e9 eb                                      bl #0x30e2b0
0089d674  00 30 a0 e3                                      mov r3, #0
0089d678  08 34 84 e5                                      str r3, [r4, #0x408]
0089d67c  04 30 94 e5                                      ldr r3, [r4, #4]
0089d680  00 00 53 e3                                      cmp r3, #0
0089d684  03 00 00 0a                                      beq #0x89d698
0089d688  03 00 a0 e1                                      mov r0, r3
0089d68c  00 30 93 e5                                      ldr r3, [r3]
0089d690  0f e0 a0 e1                                      mov lr, pc
0089d694  04 f0 93 e5                                      ldr pc, [r3, #4]
0089d698  04 00 a0 e1                                      mov r0, r4
0089d69c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0089d6a0  a4 74 0f 00 70 2f 00 00                          .byte 0xa4, 0x74, 0x0f, 0x00, 0x70, 0x2f, 0x00, 0x00

; FUNCTION 0x0089d6a8, declared_size=680, range_size=680, mode=arm
; class-group: LCXPlayerHttp
; alias: _ZN13LCXPlayerHttp18sendByGetWithNoVerEPcS0_
; demangled: LCXPlayerHttp::sendByGetWithNoVer(char*, char*)
; decoder-mode: arm
0089d6a8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0089d6ac  74 62 9f e5                                      ldr r6, [pc, #0x274]
0089d6b0  74 92 9f e5                                      ldr sb, [pc, #0x274]
0089d6b4  00 50 a0 e1                                      mov r5, r0
0089d6b8  06 60 8f e0                                      add r6, pc, r6
0089d6bc  09 30 96 e7                                      ldr r3, [r6, sb]
0089d6c0  68 02 9f e5                                      ldr r0, [pc, #0x268]
0089d6c4  c5 df 4d e2                                      sub sp, sp, #0x314
0089d6c8  00 30 93 e5                                      ldr r3, [r3]
0089d6cc  01 80 a0 e1                                      mov r8, r1
0089d6d0  02 b0 a0 e1                                      mov fp, r2
0089d6d4  00 00 8f e0                                      add r0, pc, r0
0089d6d8  0c 33 8d e5                                      str r3, [sp, #0x30c]
0089d6dc  08 fb ff eb                                      bl #0x89c304
0089d6e0  00 00 58 e3                                      cmp r8, #0
0089d6e4  00 00 5b 13                                      cmpne fp, #0
0089d6e8  00 40 a0 13                                      movne r4, #0
0089d6ec  01 40 a0 03                                      moveq r4, #1
0089d6f0  87 00 00 0a                                      beq #0x89d914
0089d6f4  43 7f 8d e2                                      add r7, sp, #0x10c
0089d6f8  0c a0 8d e2                                      add sl, sp, #0xc
0089d6fc  04 10 a0 e1                                      mov r1, r4
0089d700  01 2c a0 e3                                      mov r2, #0x100
0089d704  07 00 a0 e1                                      mov r0, r7
0089d708  54 c3 e9 eb                                      bl #0x30e460
0089d70c  01 2c a0 e3                                      mov r2, #0x100
0089d710  0a 00 a0 e1                                      mov r0, sl
0089d714  04 10 a0 e1                                      mov r1, r4
0089d718  50 c3 e9 eb                                      bl #0x30e460
0089d71c  07 00 a0 e1                                      mov r0, r7
0089d720  04 10 a0 e1                                      mov r1, r4
0089d724  01 2c a0 e3                                      mov r2, #0x100
0089d728  f4 fd ff eb                                      bl #0x89cf00
0089d72c  0a 00 a0 e1                                      mov r0, sl
0089d730  04 10 a0 e1                                      mov r1, r4
0089d734  01 2c a0 e3                                      mov r2, #0x100
0089d738  f0 fd ff eb                                      bl #0x89cf00
0089d73c  07 10 a0 e1                                      mov r1, r7
0089d740  2f 30 a0 e3                                      mov r3, #0x2f
0089d744  02 20 a0 e3                                      mov r2, #2
0089d748  08 00 a0 e1                                      mov r0, r8
0089d74c  4e fc ff eb                                      bl #0x89c88c
0089d750  04 10 a0 e1                                      mov r1, r4
0089d754  00 30 a0 e1                                      mov r3, r0
0089d758  01 2c a0 e3                                      mov r2, #0x100
0089d75c  07 00 a0 e1                                      mov r0, r7
0089d760  00 30 8d e5                                      str r3, [sp]
0089d764  e5 fd ff eb                                      bl #0x89cf00
0089d768  08 00 a0 e1                                      mov r0, r8
0089d76c  49 fd ff eb                                      bl #0x89cc98
0089d770  00 30 9d e5                                      ldr r3, [sp]
0089d774  00 20 63 e0                                      rsb r2, r3, r0
0089d778  03 10 88 e0                                      add r1, r8, r3
0089d77c  07 00 a0 e1                                      mov r0, r7
0089d780  d9 fd ff eb                                      bl #0x89ceec
0089d784  0a 10 a0 e1                                      mov r1, sl
0089d788  04 20 a0 e1                                      mov r2, r4
0089d78c  2f 30 a0 e3                                      mov r3, #0x2f
0089d790  07 00 a0 e1                                      mov r0, r7
0089d794  3c fc ff eb                                      bl #0x89c88c
0089d798  07 00 a0 e1                                      mov r0, r7
0089d79c  3d fd ff eb                                      bl #0x89cc98
0089d7a0  0a 00 a0 e1                                      mov r0, sl
0089d7a4  3b fd ff eb                                      bl #0x89cc98
0089d7a8  01 20 80 e2                                      add r2, r0, #1
0089d7ac  00 30 a0 e1                                      mov r3, r0
0089d7b0  02 00 a0 e1                                      mov r0, r2
0089d7b4  00 30 8d e5                                      str r3, [sp]
0089d7b8  04 20 8d e5                                      str r2, [sp, #4]
0089d7bc  43 c2 e9 eb                                      bl #0x30e0d0
0089d7c0  04 10 a0 e1                                      mov r1, r4
0089d7c4  04 20 9d e5                                      ldr r2, [sp, #4]
0089d7c8  00 70 a0 e1                                      mov r7, r0
0089d7cc  cb fd ff eb                                      bl #0x89cf00
0089d7d0  00 30 9d e5                                      ldr r3, [sp]
0089d7d4  0a 10 a0 e1                                      mov r1, sl
0089d7d8  07 00 a0 e1                                      mov r0, r7
0089d7dc  03 20 a0 e1                                      mov r2, r3
0089d7e0  08 a0 85 e2                                      add sl, r5, #8
0089d7e4  c0 fd ff eb                                      bl #0x89ceec
0089d7e8  0a 00 a0 e1                                      mov r0, sl
0089d7ec  04 10 a0 e1                                      mov r1, r4
0089d7f0  01 2b a0 e3                                      mov r2, #0x400
0089d7f4  c1 fd ff eb                                      bl #0x89cf00
0089d7f8  08 04 95 e5                                      ldr r0, [r5, #0x408]
0089d7fc  00 00 50 e3                                      cmp r0, #0
0089d800  01 00 00 0a                                      beq #0x89d80c
0089d804  a9 c2 e9 eb                                      bl #0x30e2b0
0089d808  08 44 85 e5                                      str r4, [r5, #0x408]
0089d80c  20 11 9f e5                                      ldr r1, [pc, #0x120]
0089d810  0a 00 a0 e1                                      mov r0, sl
0089d814  83 4f 8d e2                                      add r4, sp, #0x20c
0089d818  01 10 8f e0                                      add r1, pc, r1
0089d81c  ae fd ff eb                                      bl #0x89cedc
0089d820  18 14 95 e5                                      ldr r1, [r5, #0x418]
0089d824  0a 00 a0 e1                                      mov r0, sl
0089d828  00 00 51 e3                                      cmp r1, #0
0089d82c  08 10 a0 01                                      moveq r1, r8
0089d830  a7 fd ff eb                                      bl #0x89ced4
0089d834  fc 10 9f e5                                      ldr r1, [pc, #0xfc]
0089d838  0a 00 a0 e1                                      mov r0, sl
0089d83c  01 10 8f e0                                      add r1, pc, r1
0089d840  a3 fd ff eb                                      bl #0x89ced4
0089d844  0b 10 a0 e1                                      mov r1, fp
0089d848  0a 00 a0 e1                                      mov r0, sl
0089d84c  a0 fd ff eb                                      bl #0x89ced4
0089d850  e4 10 9f e5                                      ldr r1, [pc, #0xe4]
0089d854  0a 00 a0 e1                                      mov r0, sl
0089d858  01 10 8f e0                                      add r1, pc, r1
0089d85c  9c fd ff eb                                      bl #0x89ced4
0089d860  d8 10 9f e5                                      ldr r1, [pc, #0xd8]
0089d864  0a 00 a0 e1                                      mov r0, sl
0089d868  01 10 8f e0                                      add r1, pc, r1
0089d86c  98 fd ff eb                                      bl #0x89ced4
0089d870  07 10 a0 e1                                      mov r1, r7
0089d874  0a 00 a0 e1                                      mov r0, sl
0089d878  95 fd ff eb                                      bl #0x89ced4
0089d87c  04 00 a0 e1                                      mov r0, r4
0089d880  16 46 f2 eb                                      bl #0x52f0e0
0089d884  b8 10 9f e5                                      ldr r1, [pc, #0xb8]
0089d888  0a 00 a0 e1                                      mov r0, sl
0089d88c  01 10 8f e0                                      add r1, pc, r1
0089d890  8f fd ff eb                                      bl #0x89ced4
0089d894  04 10 a0 e1                                      mov r1, r4
0089d898  0a 00 a0 e1                                      mov r0, sl
0089d89c  8c fd ff eb                                      bl #0x89ced4
0089d8a0  a0 10 9f e5                                      ldr r1, [pc, #0xa0]
0089d8a4  0a 00 a0 e1                                      mov r0, sl
0089d8a8  01 10 8f e0                                      add r1, pc, r1
0089d8ac  88 fd ff eb                                      bl #0x89ced4
0089d8b0  00 00 57 e3                                      cmp r7, #0
0089d8b4  01 00 00 0a                                      beq #0x89d8c0
0089d8b8  07 00 a0 e1                                      mov r0, r7
0089d8bc  7b c2 e9 eb                                      bl #0x30e2b0
0089d8c0  04 30 95 e5                                      ldr r3, [r5, #4]
0089d8c4  00 40 a0 e3                                      mov r4, #0
0089d8c8  24 44 c5 e5                                      strb r4, [r5, #0x424]
0089d8cc  03 00 a0 e1                                      mov r0, r3
0089d8d0  00 30 93 e5                                      ldr r3, [r3]
0089d8d4  0f e0 a0 e1                                      mov lr, pc
0089d8d8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0089d8dc  08 04 95 e5                                      ldr r0, [r5, #0x408]
0089d8e0  04 00 50 e1                                      cmp r0, r4
0089d8e4  01 00 00 0a                                      beq #0x89d8f0
0089d8e8  70 c2 e9 eb                                      bl #0x30e2b0
0089d8ec  08 44 85 e5                                      str r4, [r5, #0x408]
0089d8f0  00 30 a0 e3                                      mov r3, #0
0089d8f4  0c 34 85 e5                                      str r3, [r5, #0x40c]
0089d8f8  09 30 96 e7                                      ldr r3, [r6, sb]
0089d8fc  0c 23 9d e5                                      ldr r2, [sp, #0x30c]
0089d900  00 30 93 e5                                      ldr r3, [r3]
0089d904  03 00 52 e1                                      cmp r2, r3
0089d908  05 00 00 1a                                      bne #0x89d924
0089d90c  c5 df 8d e2                                      add sp, sp, #0x314
0089d910  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0089d914  30 00 9f e5                                      ldr r0, [pc, #0x30]
0089d918  00 00 8f e0                                      add r0, pc, r0
0089d91c  78 fa ff eb                                      bl #0x89c304
0089d920  f4 ff ff ea                                      b #0x89d8f8
0089d924  79 c2 e9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0089d928  d8 73 0f 00 ac 40 00 00 04 74 07 00 90 ee 06 00  .byte 0xd8, 0x73, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x04, 0x74, 0x07, 0x00, 0x90, 0xee, 0x06, 0x00
0089d938  3c 52 05 00 60 f1 06 00 60 f1 06 00 9c 72 07 00  .byte 0x3c, 0x52, 0x05, 0x00, 0x60, 0xf1, 0x06, 0x00, 0x60, 0xf1, 0x06, 0x00, 0x9c, 0x72, 0x07, 0x00
0089d948  b8 f0 06 00 e0 71 07 00                          .byte 0xb8, 0xf0, 0x06, 0x00, 0xe0, 0x71, 0x07, 0x00

; FUNCTION 0x0089d950, declared_size=168, range_size=168, mode=arm
; class-group: LCXPlayerHttp
; alias: _ZN13LCXPlayerHttpC1EPcS0_S0_
; demangled: LCXPlayerHttp::LCXPlayerHttp(char*, char*, char*)
; decoder-mode: arm
0089d950  98 c0 9f e5                                      ldr ip, [pc, #0x98]
0089d954  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0089d958  94 e0 9f e5                                      ldr lr, [pc, #0x94]
0089d95c  0c c0 8f e0                                      add ip, pc, ip
0089d960  00 50 51 e2                                      subs r5, r1, #0
0089d964  0e e0 9c e7                                      ldr lr, [ip, lr]
0089d968  00 40 a0 e1                                      mov r4, r0
0089d96c  02 60 a0 e1                                      mov r6, r2
0089d970  08 e0 8e e2                                      add lr, lr, #8
0089d974  00 e0 80 e5                                      str lr, [r0]
0089d978  03 70 a0 e1                                      mov r7, r3
0089d97c  10 54 80 05                                      streq r5, [r0, #0x410]
0089d980  02 00 00 0a                                      beq #0x89d990
0089d984  05 00 a0 e1                                      mov r0, r5
0089d988  63 fe ff eb                                      bl #0x89d31c
0089d98c  10 04 84 e5                                      str r0, [r4, #0x410]
0089d990  00 00 56 e3                                      cmp r6, #0
0089d994  14 64 84 05                                      streq r6, [r4, #0x414]
0089d998  02 00 00 0a                                      beq #0x89d9a8
0089d99c  06 00 a0 e1                                      mov r0, r6
0089d9a0  5d fe ff eb                                      bl #0x89d31c
0089d9a4  14 04 84 e5                                      str r0, [r4, #0x414]
0089d9a8  00 00 57 e3                                      cmp r7, #0
0089d9ac  18 74 84 05                                      streq r7, [r4, #0x418]
0089d9b0  02 00 00 0a                                      beq #0x89d9c0
0089d9b4  07 00 a0 e1                                      mov r0, r7
0089d9b8  57 fe ff eb                                      bl #0x89d31c
0089d9bc  18 04 84 e5                                      str r0, [r4, #0x418]
0089d9c0  05 00 a0 e1                                      mov r0, r5
0089d9c4  50 10 a0 e3                                      mov r1, #0x50
0089d9c8  04 20 a0 e1                                      mov r2, r4
0089d9cc  ea 02 00 eb                                      bl #0x89e57c
0089d9d0  00 30 a0 e3                                      mov r3, #0
0089d9d4  04 00 84 e5                                      str r0, [r4, #4]
0089d9d8  0c 34 84 e5                                      str r3, [r4, #0x40c]
0089d9dc  1c 34 84 e5                                      str r3, [r4, #0x41c]
0089d9e0  20 34 84 e5                                      str r3, [r4, #0x420]
0089d9e4  08 34 84 e5                                      str r3, [r4, #0x408]
0089d9e8  04 00 a0 e1                                      mov r0, r4
0089d9ec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0089d9f0  34 71 0f 00 70 2f 00 00                          .byte 0x34, 0x71, 0x0f, 0x00, 0x70, 0x2f, 0x00, 0x00

; FUNCTION 0x0089d9f8, declared_size=168, range_size=168, mode=arm
; class-group: LCXPlayerHttp
; alias: _ZN13LCXPlayerHttpC2EPcS0_S0_
; demangled: LCXPlayerHttp::LCXPlayerHttp(char*, char*, char*)
; decoder-mode: arm
0089d9f8  98 c0 9f e5                                      ldr ip, [pc, #0x98]
0089d9fc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0089da00  94 e0 9f e5                                      ldr lr, [pc, #0x94]
0089da04  0c c0 8f e0                                      add ip, pc, ip
0089da08  00 50 51 e2                                      subs r5, r1, #0
0089da0c  0e e0 9c e7                                      ldr lr, [ip, lr]
0089da10  00 40 a0 e1                                      mov r4, r0
0089da14  02 60 a0 e1                                      mov r6, r2
0089da18  08 e0 8e e2                                      add lr, lr, #8
0089da1c  00 e0 80 e5                                      str lr, [r0]
0089da20  03 70 a0 e1                                      mov r7, r3
0089da24  10 54 80 05                                      streq r5, [r0, #0x410]
0089da28  02 00 00 0a                                      beq #0x89da38
0089da2c  05 00 a0 e1                                      mov r0, r5
0089da30  39 fe ff eb                                      bl #0x89d31c
0089da34  10 04 84 e5                                      str r0, [r4, #0x410]
0089da38  00 00 56 e3                                      cmp r6, #0
0089da3c  14 64 84 05                                      streq r6, [r4, #0x414]
0089da40  02 00 00 0a                                      beq #0x89da50
0089da44  06 00 a0 e1                                      mov r0, r6
0089da48  33 fe ff eb                                      bl #0x89d31c
0089da4c  14 04 84 e5                                      str r0, [r4, #0x414]
0089da50  00 00 57 e3                                      cmp r7, #0
0089da54  18 74 84 05                                      streq r7, [r4, #0x418]
0089da58  02 00 00 0a                                      beq #0x89da68
0089da5c  07 00 a0 e1                                      mov r0, r7
0089da60  2d fe ff eb                                      bl #0x89d31c
0089da64  18 04 84 e5                                      str r0, [r4, #0x418]
0089da68  05 00 a0 e1                                      mov r0, r5
0089da6c  50 10 a0 e3                                      mov r1, #0x50
0089da70  04 20 a0 e1                                      mov r2, r4
0089da74  c0 02 00 eb                                      bl #0x89e57c
0089da78  00 30 a0 e3                                      mov r3, #0
0089da7c  04 00 84 e5                                      str r0, [r4, #4]
0089da80  0c 34 84 e5                                      str r3, [r4, #0x40c]
0089da84  1c 34 84 e5                                      str r3, [r4, #0x41c]
0089da88  20 34 84 e5                                      str r3, [r4, #0x420]
0089da8c  08 34 84 e5                                      str r3, [r4, #0x408]
0089da90  04 00 a0 e1                                      mov r0, r4
0089da94  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0089da98  8c 70 0f 00 70 2f 00 00                          .byte 0x8c, 0x70, 0x0f, 0x00, 0x70, 0x2f, 0x00, 0x00

; FUNCTION 0x0089daa0, declared_size=720, range_size=720, mode=arm
; class-group: LCXPlayerHttp
; alias: _ZN13LCXPlayerHttp15sendVideoByPostEPcS0_S0_RiS0_
; demangled: LCXPlayerHttp::sendVideoByPost(char*, char*, char*, int&, char*)
; decoder-mode: arm
0089daa0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0089daa4  ac 42 9f e5                                      ldr r4, [pc, #0x2ac]
0089daa8  ac c2 9f e5                                      ldr ip, [pc, #0x2ac]
0089daac  89 df 4d e2                                      sub sp, sp, #0x224
0089dab0  04 40 8f e0                                      add r4, pc, r4
0089dab4  10 c0 8d e5                                      str ip, [sp, #0x10]
0089dab8  0c c0 94 e7                                      ldr ip, [r4, ip]
0089dabc  47 7f 8d e2                                      add r7, sp, #0x11c
0089dac0  1c 60 8d e2                                      add r6, sp, #0x1c
0089dac4  00 c0 9c e5                                      ldr ip, [ip]
0089dac8  01 b0 a0 e1                                      mov fp, r1
0089dacc  08 40 8d e5                                      str r4, [sp, #8]
0089dad0  0c 20 8d e5                                      str r2, [sp, #0xc]
0089dad4  00 40 a0 e1                                      mov r4, r0
0089dad8  00 10 a0 e3                                      mov r1, #0
0089dadc  01 2c a0 e3                                      mov r2, #0x100
0089dae0  07 00 a0 e1                                      mov r0, r7
0089dae4  1c c2 8d e5                                      str ip, [sp, #0x21c]
0089dae8  14 30 8d e5                                      str r3, [sp, #0x14]
0089daec  48 52 9d e5                                      ldr r5, [sp, #0x248]
0089daf0  4c 92 9d e5                                      ldr sb, [sp, #0x24c]
0089daf4  59 c2 e9 eb                                      bl #0x30e460
0089daf8  00 10 a0 e3                                      mov r1, #0
0089dafc  01 2c a0 e3                                      mov r2, #0x100
0089db00  06 00 a0 e1                                      mov r0, r6
0089db04  55 c2 e9 eb                                      bl #0x30e460
0089db08  07 00 a0 e1                                      mov r0, r7
0089db0c  00 10 a0 e3                                      mov r1, #0
0089db10  01 2c a0 e3                                      mov r2, #0x100
0089db14  f9 fc ff eb                                      bl #0x89cf00
0089db18  06 00 a0 e1                                      mov r0, r6
0089db1c  01 2c a0 e3                                      mov r2, #0x100
0089db20  00 10 a0 e3                                      mov r1, #0
0089db24  f5 fc ff eb                                      bl #0x89cf00
0089db28  2f 30 a0 e3                                      mov r3, #0x2f
0089db2c  07 10 a0 e1                                      mov r1, r7
0089db30  02 20 a0 e3                                      mov r2, #2
0089db34  0b 00 a0 e1                                      mov r0, fp
0089db38  53 fb ff eb                                      bl #0x89c88c
0089db3c  00 10 a0 e3                                      mov r1, #0
0089db40  00 80 a0 e1                                      mov r8, r0
0089db44  01 2c a0 e3                                      mov r2, #0x100
0089db48  07 00 a0 e1                                      mov r0, r7
0089db4c  eb fc ff eb                                      bl #0x89cf00
0089db50  0b 00 a0 e1                                      mov r0, fp
0089db54  4f fc ff eb                                      bl #0x89cc98
0089db58  08 10 8b e0                                      add r1, fp, r8
0089db5c  00 20 68 e0                                      rsb r2, r8, r0
0089db60  07 00 a0 e1                                      mov r0, r7
0089db64  e0 fc ff eb                                      bl #0x89ceec
0089db68  2f 30 a0 e3                                      mov r3, #0x2f
0089db6c  06 10 a0 e1                                      mov r1, r6
0089db70  00 20 a0 e3                                      mov r2, #0
0089db74  07 00 a0 e1                                      mov r0, r7
0089db78  43 fb ff eb                                      bl #0x89c88c
0089db7c  07 00 a0 e1                                      mov r0, r7
0089db80  44 fc ff eb                                      bl #0x89cc98
0089db84  06 00 a0 e1                                      mov r0, r6
0089db88  42 fc ff eb                                      bl #0x89cc98
0089db8c  01 a0 80 e2                                      add sl, r0, #1
0089db90  00 80 a0 e1                                      mov r8, r0
0089db94  0a 00 a0 e1                                      mov r0, sl
0089db98  4c c1 e9 eb                                      bl #0x30e0d0
0089db9c  0a 20 a0 e1                                      mov r2, sl
0089dba0  00 70 a0 e1                                      mov r7, r0
0089dba4  00 10 a0 e3                                      mov r1, #0
0089dba8  d4 fc ff eb                                      bl #0x89cf00
0089dbac  07 00 a0 e1                                      mov r0, r7
0089dbb0  06 10 a0 e1                                      mov r1, r6
0089dbb4  08 20 a0 e1                                      mov r2, r8
0089dbb8  cb fc ff eb                                      bl #0x89ceec
0089dbbc  1c 04 94 e5                                      ldr r0, [r4, #0x41c]
0089dbc0  00 00 50 e3                                      cmp r0, #0
0089dbc4  02 00 00 0a                                      beq #0x89dbd4
0089dbc8  3a c1 e9 eb                                      bl #0x30e0b8
0089dbcc  00 30 a0 e3                                      mov r3, #0
0089dbd0  1c 34 84 e5                                      str r3, [r4, #0x41c]
0089dbd4  00 00 95 e5                                      ldr r0, [r5]
0089dbd8  80 a1 9f e5                                      ldr sl, [pc, #0x180]
0089dbdc  01 0b 80 e2                                      add r0, r0, #0x400
0089dbe0  3a c1 e9 eb                                      bl #0x30e0d0
0089dbe4  1c 04 84 e5                                      str r0, [r4, #0x41c]
0089dbe8  00 20 95 e5                                      ldr r2, [r5]
0089dbec  00 10 a0 e3                                      mov r1, #0
0089dbf0  0a a0 8f e0                                      add sl, pc, sl
0089dbf4  01 2b 82 e2                                      add r2, r2, #0x400
0089dbf8  c0 fc ff eb                                      bl #0x89cf00
0089dbfc  00 00 95 e5                                      ldr r0, [r5]
0089dc00  01 0b 80 e2                                      add r0, r0, #0x400
0089dc04  31 c1 e9 eb                                      bl #0x30e0d0
0089dc08  00 20 95 e5                                      ldr r2, [r5]
0089dc0c  00 10 a0 e3                                      mov r1, #0
0089dc10  00 60 a0 e1                                      mov r6, r0
0089dc14  01 2b 82 e2                                      add r2, r2, #0x400
0089dc18  b8 fc ff eb                                      bl #0x89cf00
0089dc1c  40 11 9f e5                                      ldr r1, [pc, #0x140]
0089dc20  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0089dc24  01 10 8f e0                                      add r1, pc, r1
0089dc28  a9 fc ff eb                                      bl #0x89ced4
0089dc2c  14 14 94 e5                                      ldr r1, [r4, #0x414]
0089dc30  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0089dc34  a6 fc ff eb                                      bl #0x89ced4
0089dc38  28 11 9f e5                                      ldr r1, [pc, #0x128]
0089dc3c  09 20 a0 e1                                      mov r2, sb
0089dc40  06 00 a0 e1                                      mov r0, r6
0089dc44  01 10 8f e0                                      add r1, pc, r1
0089dc48  a5 c3 e9 eb                                      bl #0x30eae4
0089dc4c  14 10 9d e5                                      ldr r1, [sp, #0x14]
0089dc50  00 90 a0 e1                                      mov sb, r0
0089dc54  00 20 95 e5                                      ldr r2, [r5]
0089dc58  00 00 86 e0                                      add r0, r6, r0
0089dc5c  a2 fc ff eb                                      bl #0x89ceec
0089dc60  00 00 95 e5                                      ldr r0, [r5]
0089dc64  0a 10 a0 e1                                      mov r1, sl
0089dc68  1c 20 a0 e3                                      mov r2, #0x1c
0089dc6c  00 00 89 e0                                      add r0, sb, r0
0089dc70  00 00 86 e0                                      add r0, r6, r0
0089dc74  9c fc ff eb                                      bl #0x89ceec
0089dc78  0a 00 a0 e1                                      mov r0, sl
0089dc7c  00 a0 95 e5                                      ldr sl, [r5]
0089dc80  04 fc ff eb                                      bl #0x89cc98
0089dc84  1c c4 94 e5                                      ldr ip, [r4, #0x41c]
0089dc88  dc 10 9f e5                                      ldr r1, [pc, #0xdc]
0089dc8c  00 80 89 e0                                      add r8, sb, r0
0089dc90  0a 80 88 e0                                      add r8, r8, sl
0089dc94  01 10 8f e0                                      add r1, pc, r1
0089dc98  0b 20 a0 e1                                      mov r2, fp
0089dc9c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0089dca0  0c 00 a0 e1                                      mov r0, ip
0089dca4  80 01 8d e8                                      stm sp, {r7, r8}
0089dca8  8d c3 e9 eb                                      bl #0x30eae4
0089dcac  00 00 85 e5                                      str r0, [r5]
0089dcb0  1c 34 94 e5                                      ldr r3, [r4, #0x41c]
0089dcb4  08 20 a0 e1                                      mov r2, r8
0089dcb8  06 10 a0 e1                                      mov r1, r6
0089dcbc  00 00 83 e0                                      add r0, r3, r0
0089dcc0  89 fc ff eb                                      bl #0x89ceec
0089dcc4  00 30 95 e5                                      ldr r3, [r5]
0089dcc8  00 00 56 e3                                      cmp r6, #0
0089dccc  03 80 88 e0                                      add r8, r8, r3
0089dcd0  00 80 85 e5                                      str r8, [r5]
0089dcd4  20 84 84 e5                                      str r8, [r4, #0x420]
0089dcd8  01 00 00 0a                                      beq #0x89dce4
0089dcdc  06 00 a0 e1                                      mov r0, r6
0089dce0  f4 c0 e9 eb                                      bl #0x30e0b8
0089dce4  00 00 57 e3                                      cmp r7, #0
0089dce8  01 00 00 0a                                      beq #0x89dcf4
0089dcec  07 00 a0 e1                                      mov r0, r7
0089dcf0  6e c1 e9 eb                                      bl #0x30e2b0
0089dcf4  04 30 94 e5                                      ldr r3, [r4, #4]
0089dcf8  01 20 a0 e3                                      mov r2, #1
0089dcfc  24 24 c4 e5                                      strb r2, [r4, #0x424]
0089dd00  03 00 a0 e1                                      mov r0, r3
0089dd04  00 30 93 e5                                      ldr r3, [r3]
0089dd08  0f e0 a0 e1                                      mov lr, pc
0089dd0c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0089dd10  08 04 94 e5                                      ldr r0, [r4, #0x408]
0089dd14  00 00 50 e3                                      cmp r0, #0
0089dd18  02 00 00 0a                                      beq #0x89dd28
0089dd1c  63 c1 e9 eb                                      bl #0x30e2b0
0089dd20  00 30 a0 e3                                      mov r3, #0
0089dd24  08 34 84 e5                                      str r3, [r4, #0x408]
0089dd28  08 20 9d e5                                      ldr r2, [sp, #8]
0089dd2c  10 10 9d e5                                      ldr r1, [sp, #0x10]
0089dd30  01 30 92 e7                                      ldr r3, [r2, r1]
0089dd34  00 20 a0 e3                                      mov r2, #0
0089dd38  0c 24 84 e5                                      str r2, [r4, #0x40c]
0089dd3c  1c 22 9d e5                                      ldr r2, [sp, #0x21c]
0089dd40  00 30 93 e5                                      ldr r3, [r3]
0089dd44  03 00 52 e1                                      cmp r2, r3
0089dd48  01 00 00 1a                                      bne #0x89dd54
0089dd4c  89 df 8d e2                                      add sp, sp, #0x224
0089dd50  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0089dd54  6d c1 e9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0089dd58  e0 6f 0f 00 ac 40 00 00 a0 ec 06 00 8c eb 06 00  .byte 0xe0, 0x6f, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00, 0xa0, 0xec, 0x06, 0x00, 0x8c, 0xeb, 0x06, 0x00
0089dd68  dc eb 06 00 1c ec 06 00                          .byte 0xdc, 0xeb, 0x06, 0x00, 0x1c, 0xec, 0x06, 0x00

; FUNCTION 0x0089dd70, declared_size=728, range_size=728, mode=arm
; class-group: LCXPlayerHttp
; alias: _ZN13LCXPlayerHttp12downloadFileEPcS0_S0_S0_ll
; demangled: LCXPlayerHttp::downloadFile(char*, char*, char*, char*, long, long)
; decoder-mode: arm
0089dd70  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0089dd74  88 52 9f e5                                      ldr r5, [pc, #0x288]
0089dd78  88 72 9f e5                                      ldr r7, [pc, #0x288]
0089dd7c  00 40 a0 e1                                      mov r4, r0
0089dd80  05 50 8f e0                                      add r5, pc, r5
0089dd84  07 c0 95 e7                                      ldr ip, [r5, r7]
0089dd88  7c 02 9f e5                                      ldr r0, [pc, #0x27c]
0089dd8c  24 d0 4d e2                                      sub sp, sp, #0x24
0089dd90  00 c0 9c e5                                      ldr ip, [ip]
0089dd94  00 00 8f e0                                      add r0, pc, r0
0089dd98  08 60 8d e2                                      add r6, sp, #8
0089dd9c  03 90 a0 e1                                      mov sb, r3
0089dda0  1c c0 8d e5                                      str ip, [sp, #0x1c]
0089dda4  06 00 8d e8                                      stm sp, {r1, r2}
0089dda8  48 a0 9d e5                                      ldr sl, [sp, #0x48]
0089ddac  54 f9 ff eb                                      bl #0x89c304
0089ddb0  00 c0 a0 e3                                      mov ip, #0
0089ddb4  04 30 86 e2                                      add r3, r6, #4
0089ddb8  04 c0 83 e4                                      str ip, [r3], #4
0089ddbc  04 c0 83 e4                                      str ip, [r3], #4
0089ddc0  04 c0 83 e4                                      str ip, [r3], #4
0089ddc4  08 80 84 e2                                      add r8, r4, #8
0089ddc8  0c 10 a0 e1                                      mov r1, ip
0089ddcc  01 2b a0 e3                                      mov r2, #0x400
0089ddd0  00 c0 83 e5                                      str ip, [r3]
0089ddd4  08 00 a0 e1                                      mov r0, r8
0089ddd8  08 c0 8d e5                                      str ip, [sp, #8]
0089dddc  47 fc ff eb                                      bl #0x89cf00
0089dde0  28 12 9f e5                                      ldr r1, [pc, #0x228]
0089dde4  08 00 a0 e1                                      mov r0, r8
0089dde8  24 b2 9f e5                                      ldr fp, [pc, #0x224]
0089ddec  01 10 8f e0                                      add r1, pc, r1
0089ddf0  37 fc ff eb                                      bl #0x89ced4
0089ddf4  04 10 9d e5                                      ldr r1, [sp, #4]
0089ddf8  08 00 a0 e1                                      mov r0, r8
0089ddfc  34 fc ff eb                                      bl #0x89ced4
0089de00  10 12 9f e5                                      ldr r1, [pc, #0x210]
0089de04  0b b0 8f e0                                      add fp, pc, fp
0089de08  08 00 a0 e1                                      mov r0, r8
0089de0c  01 10 8f e0                                      add r1, pc, r1
0089de10  2f fc ff eb                                      bl #0x89ced4
0089de14  0b 10 a0 e1                                      mov r1, fp
0089de18  08 00 a0 e1                                      mov r0, r8
0089de1c  2c fc ff eb                                      bl #0x89ced4
0089de20  f4 11 9f e5                                      ldr r1, [pc, #0x1f4]
0089de24  08 00 a0 e1                                      mov r0, r8
0089de28  01 10 8f e0                                      add r1, pc, r1
0089de2c  28 fc ff eb                                      bl #0x89ced4
0089de30  00 10 9d e5                                      ldr r1, [sp]
0089de34  08 00 a0 e1                                      mov r0, r8
0089de38  25 fc ff eb                                      bl #0x89ced4
0089de3c  08 00 a0 e1                                      mov r0, r8
0089de40  0b 10 a0 e1                                      mov r1, fp
0089de44  22 fc ff eb                                      bl #0x89ced4
0089de48  00 00 5a e3                                      cmp sl, #0
0089de4c  09 00 00 0a                                      beq #0x89de78
0089de50  c8 11 9f e5                                      ldr r1, [pc, #0x1c8]
0089de54  08 00 a0 e1                                      mov r0, r8
0089de58  01 10 8f e0                                      add r1, pc, r1
0089de5c  1c fc ff eb                                      bl #0x89ced4
0089de60  0a 10 a0 e1                                      mov r1, sl
0089de64  08 00 a0 e1                                      mov r0, r8
0089de68  19 fc ff eb                                      bl #0x89ced4
0089de6c  08 00 a0 e1                                      mov r0, r8
0089de70  0b 10 a0 e1                                      mov r1, fp
0089de74  16 fc ff eb                                      bl #0x89ced4
0089de78  a4 a1 9f e5                                      ldr sl, [pc, #0x1a4]
0089de7c  a4 11 9f e5                                      ldr r1, [pc, #0x1a4]
0089de80  08 00 a0 e1                                      mov r0, r8
0089de84  0a a0 8f e0                                      add sl, pc, sl
0089de88  01 10 8f e0                                      add r1, pc, r1
0089de8c  10 fc ff eb                                      bl #0x89ced4
0089de90  0a 10 a0 e1                                      mov r1, sl
0089de94  08 00 a0 e1                                      mov r0, r8
0089de98  0d fc ff eb                                      bl #0x89ced4
0089de9c  88 11 9f e5                                      ldr r1, [pc, #0x188]
0089dea0  08 00 a0 e1                                      mov r0, r8
0089dea4  01 10 8f e0                                      add r1, pc, r1
0089dea8  09 fc ff eb                                      bl #0x89ced4
0089deac  0a 10 a0 e1                                      mov r1, sl
0089deb0  08 00 a0 e1                                      mov r0, r8
0089deb4  06 fc ff eb                                      bl #0x89ced4
0089deb8  70 11 9f e5                                      ldr r1, [pc, #0x170]
0089debc  08 00 a0 e1                                      mov r0, r8
0089dec0  01 10 8f e0                                      add r1, pc, r1
0089dec4  02 fc ff eb                                      bl #0x89ced4
0089dec8  08 00 a0 e1                                      mov r0, r8
0089decc  0a 10 a0 e1                                      mov r1, sl
0089ded0  ff fb ff eb                                      bl #0x89ced4
0089ded4  00 00 59 e3                                      cmp sb, #0
0089ded8  09 00 00 0a                                      beq #0x89df04
0089dedc  50 11 9f e5                                      ldr r1, [pc, #0x150]
0089dee0  08 00 a0 e1                                      mov r0, r8
0089dee4  01 10 8f e0                                      add r1, pc, r1
0089dee8  f9 fb ff eb                                      bl #0x89ced4
0089deec  09 10 a0 e1                                      mov r1, sb
0089def0  08 00 a0 e1                                      mov r0, r8
0089def4  f6 fb ff eb                                      bl #0x89ced4
0089def8  08 00 a0 e1                                      mov r0, r8
0089defc  0a 10 a0 e1                                      mov r1, sl
0089df00  f3 fb ff eb                                      bl #0x89ced4
0089df04  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
0089df08  00 00 52 e3                                      cmp r2, #0
0089df0c  16 00 00 da                                      ble #0x89df6c
0089df10  20 11 9f e5                                      ldr r1, [pc, #0x120]
0089df14  08 00 a0 e1                                      mov r0, r8
0089df18  01 10 8f e0                                      add r1, pc, r1
0089df1c  ec fb ff eb                                      bl #0x89ced4
0089df20  0a 20 a0 e3                                      mov r2, #0xa
0089df24  06 10 a0 e1                                      mov r1, r6
0089df28  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
0089df2c  f8 f8 ff eb                                      bl #0x89c314
0089df30  06 10 a0 e1                                      mov r1, r6
0089df34  08 00 a0 e1                                      mov r0, r8
0089df38  e5 fb ff eb                                      bl #0x89ced4
0089df3c  f8 10 9f e5                                      ldr r1, [pc, #0xf8]
0089df40  08 00 a0 e1                                      mov r0, r8
0089df44  01 10 8f e0                                      add r1, pc, r1
0089df48  e1 fb ff eb                                      bl #0x89ced4
0089df4c  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
0089df50  50 20 9d e5                                      ldr r2, [sp, #0x50]
0089df54  02 00 53 e1                                      cmp r3, r2
0089df58  1c 00 00 ba                                      blt #0x89dfd0
0089df5c  dc 10 9f e5                                      ldr r1, [pc, #0xdc]
0089df60  08 00 a0 e1                                      mov r0, r8
0089df64  01 10 8f e0                                      add r1, pc, r1
0089df68  d9 fb ff eb                                      bl #0x89ced4
0089df6c  d0 10 9f e5                                      ldr r1, [pc, #0xd0]
0089df70  08 00 a0 e1                                      mov r0, r8
0089df74  00 60 a0 e3                                      mov r6, #0
0089df78  01 10 8f e0                                      add r1, pc, r1
0089df7c  d4 fb ff eb                                      bl #0x89ced4
0089df80  04 30 94 e5                                      ldr r3, [r4, #4]
0089df84  24 64 c4 e5                                      strb r6, [r4, #0x424]
0089df88  03 00 a0 e1                                      mov r0, r3
0089df8c  00 30 93 e5                                      ldr r3, [r3]
0089df90  0f e0 a0 e1                                      mov lr, pc
0089df94  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0089df98  08 04 94 e5                                      ldr r0, [r4, #0x408]
0089df9c  06 00 50 e1                                      cmp r0, r6
0089dfa0  01 00 00 0a                                      beq #0x89dfac
0089dfa4  c1 c0 e9 eb                                      bl #0x30e2b0
0089dfa8  08 64 84 e5                                      str r6, [r4, #0x408]
0089dfac  07 30 95 e7                                      ldr r3, [r5, r7]
0089dfb0  00 20 a0 e3                                      mov r2, #0
0089dfb4  0c 24 84 e5                                      str r2, [r4, #0x40c]
0089dfb8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0089dfbc  00 30 93 e5                                      ldr r3, [r3]
0089dfc0  03 00 52 e1                                      cmp r2, r3
0089dfc4  0d 00 00 1a                                      bne #0x89e000
0089dfc8  24 d0 8d e2                                      add sp, sp, #0x24
0089dfcc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0089dfd0  06 00 a0 e1                                      mov r0, r6
0089dfd4  14 20 a0 e3                                      mov r2, #0x14
0089dfd8  00 10 a0 e3                                      mov r1, #0
0089dfdc  c7 fb ff eb                                      bl #0x89cf00
0089dfe0  06 10 a0 e1                                      mov r1, r6
0089dfe4  50 00 9d e5                                      ldr r0, [sp, #0x50]
0089dfe8  0a 20 a0 e3                                      mov r2, #0xa
0089dfec  c8 f8 ff eb                                      bl #0x89c314
0089dff0  08 00 a0 e1                                      mov r0, r8
0089dff4  06 10 a0 e1                                      mov r1, r6
0089dff8  b5 fb ff eb                                      bl #0x89ced4
0089dffc  d6 ff ff ea                                      b #0x89df5c
0089e000  c2 c0 e9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0089e004  10 6d 0f 00 ac 40 00 00 a4 6d 07 00 bc e8 06 00  .byte 0x10, 0x6d, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00, 0xa4, 0x6d, 0x07, 0x00, 0xbc, 0xe8, 0x06, 0x00
0089e014  fc 21 02 00 a4 e8 06 00 98 e8 06 00 70 e8 06 00  .byte 0xfc, 0x21, 0x02, 0x00, 0xa4, 0xe8, 0x06, 0x00, 0x98, 0xe8, 0x06, 0x00, 0x70, 0xe8, 0x06, 0x00
0089e024  7c 21 02 00 50 e8 06 00 44 e8 06 00 68 e8 06 00  .byte 0x7c, 0x21, 0x02, 0x00, 0x50, 0xe8, 0x06, 0x00, 0x44, 0xe8, 0x06, 0x00, 0x68, 0xe8, 0x06, 0x00
0089e034  5c e8 06 00 38 e8 06 00 9c 4a 05 00 9c 20 02 00  .byte 0x5c, 0xe8, 0x06, 0x00, 0x38, 0xe8, 0x06, 0x00, 0x9c, 0x4a, 0x05, 0x00, 0x9c, 0x20, 0x02, 0x00
0089e044  88 20 02 00                                      .byte 0x88, 0x20, 0x02, 0x00

; FUNCTION 0x0089e048, declared_size=672, range_size=672, mode=arm
; class-group: LCXPlayerHttp
; alias: _ZN13LCXPlayerHttp10sendByPostEPcS0_
; demangled: LCXPlayerHttp::sendByPost(char*, char*)
; decoder-mode: arm
0089e048  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0089e04c  78 72 9f e5                                      ldr r7, [pc, #0x278]
0089e050  78 32 9f e5                                      ldr r3, [pc, #0x278]
0089e054  87 df 4d e2                                      sub sp, sp, #0x21c
0089e058  07 70 8f e0                                      add r7, pc, r7
0089e05c  0c 30 8d e5                                      str r3, [sp, #0xc]
0089e060  03 30 97 e7                                      ldr r3, [r7, r3]
0089e064  00 40 a0 e1                                      mov r4, r0
0089e068  64 02 9f e5                                      ldr r0, [pc, #0x264]
0089e06c  00 30 93 e5                                      ldr r3, [r3]
0089e070  01 a0 a0 e1                                      mov sl, r1
0089e074  02 60 a0 e1                                      mov r6, r2
0089e078  00 00 8f e0                                      add r0, pc, r0
0089e07c  14 32 8d e5                                      str r3, [sp, #0x214]
0089e080  9f f8 ff eb                                      bl #0x89c304
0089e084  00 00 5a e3                                      cmp sl, #0
0089e088  00 00 56 13                                      cmpne r6, #0
0089e08c  00 50 a0 13                                      movne r5, #0
0089e090  01 50 a0 03                                      moveq r5, #1
0089e094  87 00 00 0a                                      beq #0x89e2b8
0089e098  45 8f 8d e2                                      add r8, sp, #0x114
0089e09c  14 90 8d e2                                      add sb, sp, #0x14
0089e0a0  05 10 a0 e1                                      mov r1, r5
0089e0a4  01 2c a0 e3                                      mov r2, #0x100
0089e0a8  08 00 a0 e1                                      mov r0, r8
0089e0ac  eb c0 e9 eb                                      bl #0x30e460
0089e0b0  01 2c a0 e3                                      mov r2, #0x100
0089e0b4  05 10 a0 e1                                      mov r1, r5
0089e0b8  09 00 a0 e1                                      mov r0, sb
0089e0bc  e7 c0 e9 eb                                      bl #0x30e460
0089e0c0  08 00 a0 e1                                      mov r0, r8
0089e0c4  05 10 a0 e1                                      mov r1, r5
0089e0c8  01 2c a0 e3                                      mov r2, #0x100
0089e0cc  8b fb ff eb                                      bl #0x89cf00
0089e0d0  09 00 a0 e1                                      mov r0, sb
0089e0d4  05 10 a0 e1                                      mov r1, r5
0089e0d8  01 2c a0 e3                                      mov r2, #0x100
0089e0dc  87 fb ff eb                                      bl #0x89cf00
0089e0e0  2f 30 a0 e3                                      mov r3, #0x2f
0089e0e4  08 10 a0 e1                                      mov r1, r8
0089e0e8  02 20 a0 e3                                      mov r2, #2
0089e0ec  0a 00 a0 e1                                      mov r0, sl
0089e0f0  e5 f9 ff eb                                      bl #0x89c88c
0089e0f4  05 10 a0 e1                                      mov r1, r5
0089e0f8  00 b0 a0 e1                                      mov fp, r0
0089e0fc  01 2c a0 e3                                      mov r2, #0x100
0089e100  08 00 a0 e1                                      mov r0, r8
0089e104  7d fb ff eb                                      bl #0x89cf00
0089e108  0a 00 a0 e1                                      mov r0, sl
0089e10c  e1 fa ff eb                                      bl #0x89cc98
0089e110  0b 10 8a e0                                      add r1, sl, fp
0089e114  00 20 6b e0                                      rsb r2, fp, r0
0089e118  08 00 a0 e1                                      mov r0, r8
0089e11c  72 fb ff eb                                      bl #0x89ceec
0089e120  09 10 a0 e1                                      mov r1, sb
0089e124  05 20 a0 e1                                      mov r2, r5
0089e128  2f 30 a0 e3                                      mov r3, #0x2f
0089e12c  08 00 a0 e1                                      mov r0, r8
0089e130  d5 f9 ff eb                                      bl #0x89c88c
0089e134  08 00 a0 e1                                      mov r0, r8
0089e138  d6 fa ff eb                                      bl #0x89cc98
0089e13c  09 00 a0 e1                                      mov r0, sb
0089e140  d4 fa ff eb                                      bl #0x89cc98
0089e144  01 80 80 e2                                      add r8, r0, #1
0089e148  00 30 a0 e1                                      mov r3, r0
0089e14c  08 00 a0 e1                                      mov r0, r8
0089e150  08 30 8d e5                                      str r3, [sp, #8]
0089e154  dd bf e9 eb                                      bl #0x30e0d0
0089e158  08 20 a0 e1                                      mov r2, r8
0089e15c  05 10 a0 e1                                      mov r1, r5
0089e160  00 b0 a0 e1                                      mov fp, r0
0089e164  65 fb ff eb                                      bl #0x89cf00
0089e168  08 30 9d e5                                      ldr r3, [sp, #8]
0089e16c  09 10 a0 e1                                      mov r1, sb
0089e170  0b 00 a0 e1                                      mov r0, fp
0089e174  03 20 a0 e1                                      mov r2, r3
0089e178  08 80 84 e2                                      add r8, r4, #8
0089e17c  5a fb ff eb                                      bl #0x89ceec
0089e180  08 00 a0 e1                                      mov r0, r8
0089e184  05 10 a0 e1                                      mov r1, r5
0089e188  01 2b a0 e3                                      mov r2, #0x400
0089e18c  5b fb ff eb                                      bl #0x89cf00
0089e190  08 04 94 e5                                      ldr r0, [r4, #0x408]
0089e194  00 00 50 e3                                      cmp r0, #0
0089e198  01 00 00 0a                                      beq #0x89e1a4
0089e19c  43 c0 e9 eb                                      bl #0x30e2b0
0089e1a0  08 54 84 e5                                      str r5, [r4, #0x408]
0089e1a4  2c 11 9f e5                                      ldr r1, [pc, #0x12c]
0089e1a8  06 00 a0 e1                                      mov r0, r6
0089e1ac  01 10 8f e0                                      add r1, pc, r1
0089e1b0  47 fb ff eb                                      bl #0x89ced4
0089e1b4  14 14 94 e5                                      ldr r1, [r4, #0x414]
0089e1b8  06 00 a0 e1                                      mov r0, r6
0089e1bc  44 fb ff eb                                      bl #0x89ced4
0089e1c0  06 00 a0 e1                                      mov r0, r6
0089e1c4  b3 fa ff eb                                      bl #0x89cc98
0089e1c8  0c 11 9f e5                                      ldr r1, [pc, #0x10c]
0089e1cc  00 00 8d e5                                      str r0, [sp]
0089e1d0  0a 20 a0 e1                                      mov r2, sl
0089e1d4  01 10 8f e0                                      add r1, pc, r1
0089e1d8  08 00 a0 e1                                      mov r0, r8
0089e1dc  0b 30 a0 e1                                      mov r3, fp
0089e1e0  3f c2 e9 eb                                      bl #0x30eae4
0089e1e4  1c 04 94 e5                                      ldr r0, [r4, #0x41c]
0089e1e8  00 00 50 e3                                      cmp r0, #0
0089e1ec  02 00 00 0a                                      beq #0x89e1fc
0089e1f0  2e c0 e9 eb                                      bl #0x30e2b0
0089e1f4  00 30 a0 e3                                      mov r3, #0
0089e1f8  1c 34 84 e5                                      str r3, [r4, #0x41c]
0089e1fc  08 00 a0 e1                                      mov r0, r8
0089e200  a4 fa ff eb                                      bl #0x89cc98
0089e204  00 50 a0 e1                                      mov r5, r0
0089e208  06 00 a0 e1                                      mov r0, r6
0089e20c  a1 fa ff eb                                      bl #0x89cc98
0089e210  05 50 80 e0                                      add r5, r0, r5
0089e214  01 a0 85 e2                                      add sl, r5, #1
0089e218  0a 00 a0 e1                                      mov r0, sl
0089e21c  ab bf e9 eb                                      bl #0x30e0d0
0089e220  0a 20 a0 e1                                      mov r2, sl
0089e224  1c 04 84 e5                                      str r0, [r4, #0x41c]
0089e228  00 10 a0 e3                                      mov r1, #0
0089e22c  33 fb ff eb                                      bl #0x89cf00
0089e230  a8 10 9f e5                                      ldr r1, [pc, #0xa8]
0089e234  08 20 a0 e1                                      mov r2, r8
0089e238  06 30 a0 e1                                      mov r3, r6
0089e23c  01 10 8f e0                                      add r1, pc, r1
0089e240  1c 04 94 e5                                      ldr r0, [r4, #0x41c]
0089e244  26 c2 e9 eb                                      bl #0x30eae4
0089e248  00 00 5b e3                                      cmp fp, #0
0089e24c  20 54 84 e5                                      str r5, [r4, #0x420]
0089e250  01 00 00 0a                                      beq #0x89e25c
0089e254  0b 00 a0 e1                                      mov r0, fp
0089e258  14 c0 e9 eb                                      bl #0x30e2b0
0089e25c  04 30 94 e5                                      ldr r3, [r4, #4]
0089e260  01 20 a0 e3                                      mov r2, #1
0089e264  24 24 c4 e5                                      strb r2, [r4, #0x424]
0089e268  03 00 a0 e1                                      mov r0, r3
0089e26c  00 30 93 e5                                      ldr r3, [r3]
0089e270  0f e0 a0 e1                                      mov lr, pc
0089e274  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0089e278  08 04 94 e5                                      ldr r0, [r4, #0x408]
0089e27c  00 00 50 e3                                      cmp r0, #0
0089e280  02 00 00 0a                                      beq #0x89e290
0089e284  09 c0 e9 eb                                      bl #0x30e2b0
0089e288  00 30 a0 e3                                      mov r3, #0
0089e28c  08 34 84 e5                                      str r3, [r4, #0x408]
0089e290  00 30 a0 e3                                      mov r3, #0
0089e294  0c 34 84 e5                                      str r3, [r4, #0x40c]
0089e298  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0089e29c  14 22 9d e5                                      ldr r2, [sp, #0x214]
0089e2a0  0c 30 97 e7                                      ldr r3, [r7, ip]
0089e2a4  00 30 93 e5                                      ldr r3, [r3]
0089e2a8  03 00 52 e1                                      cmp r2, r3
0089e2ac  05 00 00 1a                                      bne #0x89e2c8
0089e2b0  87 df 8d e2                                      add sp, sp, #0x21c
0089e2b4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0089e2b8  24 00 9f e5                                      ldr r0, [pc, #0x24]
0089e2bc  00 00 8f e0                                      add r0, pc, r0
0089e2c0  0f f8 ff eb                                      bl #0x89c304
0089e2c4  f3 ff ff ea                                      b #0x89e298
0089e2c8  10 c0 e9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0089e2cc  38 6a 0f 00 ac 40 00 00 e0 6a 07 00 04 e6 06 00  .byte 0x38, 0x6a, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe0, 0x6a, 0x07, 0x00, 0x04, 0xe6, 0x06, 0x00
0089e2dc  e4 e5 06 00 cc 28 02 00 bc 68 07 00              .byte 0xe4, 0xe5, 0x06, 0x00, 0xcc, 0x28, 0x02, 0x00, 0xbc, 0x68, 0x07, 0x00

; FUNCTION 0x0089e2e8, declared_size=660, range_size=660, mode=arm
; class-group: LCXPlayerHttp
; alias: _ZN13LCXPlayerHttp9sendByGetEPcS0_
; demangled: LCXPlayerHttp::sendByGet(char*, char*)
; decoder-mode: arm
0089e2e8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0089e2ec  60 62 9f e5                                      ldr r6, [pc, #0x260]
0089e2f0  60 92 9f e5                                      ldr sb, [pc, #0x260]
0089e2f4  00 50 a0 e1                                      mov r5, r0
0089e2f8  06 60 8f e0                                      add r6, pc, r6
0089e2fc  09 30 96 e7                                      ldr r3, [r6, sb]
0089e300  54 02 9f e5                                      ldr r0, [pc, #0x254]
0089e304  85 df 4d e2                                      sub sp, sp, #0x214
0089e308  00 30 93 e5                                      ldr r3, [r3]
0089e30c  01 80 a0 e1                                      mov r8, r1
0089e310  02 b0 a0 e1                                      mov fp, r2
0089e314  00 00 8f e0                                      add r0, pc, r0
0089e318  0c 32 8d e5                                      str r3, [sp, #0x20c]
0089e31c  f8 f7 ff eb                                      bl #0x89c304
0089e320  00 00 58 e3                                      cmp r8, #0
0089e324  00 00 5b 13                                      cmpne fp, #0
0089e328  00 40 a0 13                                      movne r4, #0
0089e32c  01 40 a0 03                                      moveq r4, #1
0089e330  82 00 00 0a                                      beq #0x89e540
0089e334  43 7f 8d e2                                      add r7, sp, #0x10c
0089e338  0c a0 8d e2                                      add sl, sp, #0xc
0089e33c  04 10 a0 e1                                      mov r1, r4
0089e340  01 2c a0 e3                                      mov r2, #0x100
0089e344  07 00 a0 e1                                      mov r0, r7
0089e348  44 c0 e9 eb                                      bl #0x30e460
0089e34c  01 2c a0 e3                                      mov r2, #0x100
0089e350  0a 00 a0 e1                                      mov r0, sl
0089e354  04 10 a0 e1                                      mov r1, r4
0089e358  40 c0 e9 eb                                      bl #0x30e460
0089e35c  07 00 a0 e1                                      mov r0, r7
0089e360  04 10 a0 e1                                      mov r1, r4
0089e364  01 2c a0 e3                                      mov r2, #0x100
0089e368  e4 fa ff eb                                      bl #0x89cf00
0089e36c  0a 00 a0 e1                                      mov r0, sl
0089e370  04 10 a0 e1                                      mov r1, r4
0089e374  01 2c a0 e3                                      mov r2, #0x100
0089e378  e0 fa ff eb                                      bl #0x89cf00
0089e37c  07 10 a0 e1                                      mov r1, r7
0089e380  2f 30 a0 e3                                      mov r3, #0x2f
0089e384  02 20 a0 e3                                      mov r2, #2
0089e388  08 00 a0 e1                                      mov r0, r8
0089e38c  3e f9 ff eb                                      bl #0x89c88c
0089e390  04 10 a0 e1                                      mov r1, r4
0089e394  00 30 a0 e1                                      mov r3, r0
0089e398  01 2c a0 e3                                      mov r2, #0x100
0089e39c  07 00 a0 e1                                      mov r0, r7
0089e3a0  00 30 8d e5                                      str r3, [sp]
0089e3a4  d5 fa ff eb                                      bl #0x89cf00
0089e3a8  08 00 a0 e1                                      mov r0, r8
0089e3ac  39 fa ff eb                                      bl #0x89cc98
0089e3b0  00 30 9d e5                                      ldr r3, [sp]
0089e3b4  00 20 63 e0                                      rsb r2, r3, r0
0089e3b8  03 10 88 e0                                      add r1, r8, r3
0089e3bc  07 00 a0 e1                                      mov r0, r7
0089e3c0  c9 fa ff eb                                      bl #0x89ceec
0089e3c4  0a 10 a0 e1                                      mov r1, sl
0089e3c8  04 20 a0 e1                                      mov r2, r4
0089e3cc  2f 30 a0 e3                                      mov r3, #0x2f
0089e3d0  07 00 a0 e1                                      mov r0, r7
0089e3d4  2c f9 ff eb                                      bl #0x89c88c
0089e3d8  07 00 a0 e1                                      mov r0, r7
0089e3dc  2d fa ff eb                                      bl #0x89cc98
0089e3e0  0a 00 a0 e1                                      mov r0, sl
0089e3e4  2b fa ff eb                                      bl #0x89cc98
0089e3e8  01 20 80 e2                                      add r2, r0, #1
0089e3ec  00 30 a0 e1                                      mov r3, r0
0089e3f0  02 00 a0 e1                                      mov r0, r2
0089e3f4  00 30 8d e5                                      str r3, [sp]
0089e3f8  04 20 8d e5                                      str r2, [sp, #4]
0089e3fc  33 bf e9 eb                                      bl #0x30e0d0
0089e400  04 10 a0 e1                                      mov r1, r4
0089e404  04 20 9d e5                                      ldr r2, [sp, #4]
0089e408  00 70 a0 e1                                      mov r7, r0
0089e40c  bb fa ff eb                                      bl #0x89cf00
0089e410  00 30 9d e5                                      ldr r3, [sp]
0089e414  0a 10 a0 e1                                      mov r1, sl
0089e418  07 00 a0 e1                                      mov r0, r7
0089e41c  03 20 a0 e1                                      mov r2, r3
0089e420  08 a0 85 e2                                      add sl, r5, #8
0089e424  b0 fa ff eb                                      bl #0x89ceec
0089e428  0a 00 a0 e1                                      mov r0, sl
0089e42c  04 10 a0 e1                                      mov r1, r4
0089e430  01 2b a0 e3                                      mov r2, #0x400
0089e434  b1 fa ff eb                                      bl #0x89cf00
0089e438  08 04 95 e5                                      ldr r0, [r5, #0x408]
0089e43c  00 00 50 e3                                      cmp r0, #0
0089e440  01 00 00 0a                                      beq #0x89e44c
0089e444  99 bf e9 eb                                      bl #0x30e2b0
0089e448  08 44 85 e5                                      str r4, [r5, #0x408]
0089e44c  0c 11 9f e5                                      ldr r1, [pc, #0x10c]
0089e450  0a 00 a0 e1                                      mov r0, sl
0089e454  01 10 8f e0                                      add r1, pc, r1
0089e458  9f fa ff eb                                      bl #0x89cedc
0089e45c  08 10 a0 e1                                      mov r1, r8
0089e460  0a 00 a0 e1                                      mov r0, sl
0089e464  9a fa ff eb                                      bl #0x89ced4
0089e468  f4 10 9f e5                                      ldr r1, [pc, #0xf4]
0089e46c  0a 00 a0 e1                                      mov r0, sl
0089e470  01 10 8f e0                                      add r1, pc, r1
0089e474  96 fa ff eb                                      bl #0x89ced4
0089e478  0b 10 a0 e1                                      mov r1, fp
0089e47c  0a 00 a0 e1                                      mov r0, sl
0089e480  93 fa ff eb                                      bl #0x89ced4
0089e484  dc 10 9f e5                                      ldr r1, [pc, #0xdc]
0089e488  0a 00 a0 e1                                      mov r0, sl
0089e48c  01 10 8f e0                                      add r1, pc, r1
0089e490  8f fa ff eb                                      bl #0x89ced4
0089e494  14 14 95 e5                                      ldr r1, [r5, #0x414]
0089e498  0a 00 a0 e1                                      mov r0, sl
0089e49c  8c fa ff eb                                      bl #0x89ced4
0089e4a0  c4 10 9f e5                                      ldr r1, [pc, #0xc4]
0089e4a4  0a 00 a0 e1                                      mov r0, sl
0089e4a8  01 10 8f e0                                      add r1, pc, r1
0089e4ac  88 fa ff eb                                      bl #0x89ced4
0089e4b0  b8 10 9f e5                                      ldr r1, [pc, #0xb8]
0089e4b4  0a 00 a0 e1                                      mov r0, sl
0089e4b8  01 10 8f e0                                      add r1, pc, r1
0089e4bc  84 fa ff eb                                      bl #0x89ced4
0089e4c0  07 10 a0 e1                                      mov r1, r7
0089e4c4  0a 00 a0 e1                                      mov r0, sl
0089e4c8  81 fa ff eb                                      bl #0x89ced4
0089e4cc  a0 10 9f e5                                      ldr r1, [pc, #0xa0]
0089e4d0  0a 00 a0 e1                                      mov r0, sl
0089e4d4  01 10 8f e0                                      add r1, pc, r1
0089e4d8  7d fa ff eb                                      bl #0x89ced4
0089e4dc  00 00 57 e3                                      cmp r7, #0
0089e4e0  01 00 00 0a                                      beq #0x89e4ec
0089e4e4  07 00 a0 e1                                      mov r0, r7
0089e4e8  70 bf e9 eb                                      bl #0x30e2b0
0089e4ec  04 30 95 e5                                      ldr r3, [r5, #4]
0089e4f0  00 40 a0 e3                                      mov r4, #0
0089e4f4  24 44 c5 e5                                      strb r4, [r5, #0x424]
0089e4f8  03 00 a0 e1                                      mov r0, r3
0089e4fc  00 30 93 e5                                      ldr r3, [r3]
0089e500  0f e0 a0 e1                                      mov lr, pc
0089e504  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0089e508  08 04 95 e5                                      ldr r0, [r5, #0x408]
0089e50c  04 00 50 e1                                      cmp r0, r4
0089e510  01 00 00 0a                                      beq #0x89e51c
0089e514  65 bf e9 eb                                      bl #0x30e2b0
0089e518  08 44 85 e5                                      str r4, [r5, #0x408]
0089e51c  00 30 a0 e3                                      mov r3, #0
0089e520  0c 34 85 e5                                      str r3, [r5, #0x40c]
0089e524  09 30 96 e7                                      ldr r3, [r6, sb]
0089e528  0c 22 9d e5                                      ldr r2, [sp, #0x20c]
0089e52c  00 30 93 e5                                      ldr r3, [r3]
0089e530  03 00 52 e1                                      cmp r2, r3
0089e534  05 00 00 1a                                      bne #0x89e550
0089e538  85 df 8d e2                                      add sp, sp, #0x214
0089e53c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0089e540  30 00 9f e5                                      ldr r0, [pc, #0x30]
0089e544  00 00 8f e0                                      add r0, pc, r0
0089e548  6d f7 ff eb                                      bl #0x89c304
0089e54c  f4 ff ff ea                                      b #0x89e524
0089e550  6e bf e9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0089e554  98 67 0f 00 ac 40 00 00 c4 67 07 00 54 e2 06 00  .byte 0x98, 0x67, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00, 0xc4, 0x67, 0x07, 0x00, 0x54, 0xe2, 0x06, 0x00
0089e564  08 46 05 00 24 e3 06 00 10 e5 06 00 10 e5 06 00  .byte 0x08, 0x46, 0x05, 0x00, 0x24, 0xe3, 0x06, 0x00, 0x10, 0xe5, 0x06, 0x00, 0x10, 0xe5, 0x06, 0x00
0089e574  8c e4 06 00 b4 65 07 00                          .byte 0x8c, 0xe4, 0x06, 0x00, 0xb4, 0x65, 0x07, 0x00
