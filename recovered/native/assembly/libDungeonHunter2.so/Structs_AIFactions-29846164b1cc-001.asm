; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004db654, declared_size=104, range_size=104, mode=arm
; class-group: Structs::AIFactions
; alias: _ZN7Structs10AIFactions8finalizeEv
; demangled: Structs::AIFactions::finalize()
; decoder-mode: arm
004db654  70 40 2d e9                                      push {r4, r5, r6, lr}
004db658  08 30 90 e5                                      ldr r3, [r0, #8]
004db65c  00 50 a0 e1                                      mov r5, r0
004db660  00 00 53 e3                                      cmp r3, #0
004db664  13 00 00 0a                                      beq #0x4db6b8
004db668  04 20 13 e5                                      ldr r2, [r3, #-4]
004db66c  0c 00 a0 e3                                      mov r0, #0xc
004db670  90 32 20 e0                                      mla r0, r0, r2, r3
004db674  00 00 53 e1                                      cmp r3, r0
004db678  01 00 00 1a                                      bne #0x4db684
004db67c  08 00 00 ea                                      b #0x4db6a4
004db680  04 00 a0 e1                                      mov r0, r4
004db684  0c 40 40 e2                                      sub r4, r0, #0xc
004db688  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
004db68c  04 00 a0 e1                                      mov r0, r4
004db690  0f e0 a0 e1                                      mov lr, pc
004db694  00 f0 93 e5                                      ldr pc, [r3]
004db698  08 00 95 e5                                      ldr r0, [r5, #8]
004db69c  04 00 50 e1                                      cmp r0, r4
004db6a0  f6 ff ff 1a                                      bne #0x4db680
004db6a4  08 00 40 e2                                      sub r0, r0, #8
004db6a8  64 d3 f8 eb                                      bl #0x310440
004db6ac  00 30 a0 e3                                      mov r3, #0
004db6b0  04 30 85 e5                                      str r3, [r5, #4]
004db6b4  08 30 85 e5                                      str r3, [r5, #8]
004db6b8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004db6bc, declared_size=128, range_size=128, mode=arm
; class-group: Structs::AIFactions
; alias: _ZN7Structs10AIFactionsD1Ev
; demangled: Structs::AIFactions::~AIFactions()
; decoder-mode: arm
004db6bc  70 40 2d e9                                      push {r4, r5, r6, lr}
004db6c0  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
004db6c4  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
004db6c8  08 10 90 e5                                      ldr r1, [r0, #8]
004db6cc  03 30 8f e0                                      add r3, pc, r3
004db6d0  02 20 93 e7                                      ldr r2, [r3, r2]
004db6d4  00 00 51 e3                                      cmp r1, #0
004db6d8  00 50 a0 e1                                      mov r5, r0
004db6dc  08 20 82 e2                                      add r2, r2, #8
004db6e0  00 20 80 e5                                      str r2, [r0]
004db6e4  10 00 00 0a                                      beq #0x4db72c
004db6e8  04 30 11 e5                                      ldr r3, [r1, #-4]
004db6ec  0c 00 a0 e3                                      mov r0, #0xc
004db6f0  90 13 20 e0                                      mla r0, r0, r3, r1
004db6f4  00 00 51 e1                                      cmp r1, r0
004db6f8  01 00 00 1a                                      bne #0x4db704
004db6fc  08 00 00 ea                                      b #0x4db724
004db700  04 00 a0 e1                                      mov r0, r4
004db704  0c 40 40 e2                                      sub r4, r0, #0xc
004db708  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
004db70c  04 00 a0 e1                                      mov r0, r4
004db710  0f e0 a0 e1                                      mov lr, pc
004db714  00 f0 93 e5                                      ldr pc, [r3]
004db718  08 00 95 e5                                      ldr r0, [r5, #8]
004db71c  04 00 50 e1                                      cmp r0, r4
004db720  f6 ff ff 1a                                      bne #0x4db700
004db724  08 00 40 e2                                      sub r0, r0, #8
004db728  44 d3 f8 eb                                      bl #0x310440
004db72c  05 00 a0 e1                                      mov r0, r5
004db730  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004db734  c4 93 4b 00 38 3c 00 00                          .byte 0xc4, 0x93, 0x4b, 0x00, 0x38, 0x3c, 0x00, 0x00

; FUNCTION 0x004db73c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::AIFactions
; alias: _ZN7Structs10AIFactionsD0Ev
; demangled: Structs::AIFactions::~AIFactions()
; decoder-mode: arm
004db73c  10 40 2d e9                                      push {r4, lr}
004db740  00 40 a0 e1                                      mov r4, r0
004db744  dc ff ff eb                                      bl #0x4db6bc
004db748  04 00 a0 e1                                      mov r0, r4
004db74c  3b d3 f8 eb                                      bl #0x310440
004db750  04 00 a0 e1                                      mov r0, r4
004db754  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004db758, declared_size=128, range_size=128, mode=arm
; class-group: Structs::AIFactions
; alias: _ZN7Structs10AIFactionsD2Ev
; demangled: Structs::AIFactions::~AIFactions()
; decoder-mode: arm
004db758  70 40 2d e9                                      push {r4, r5, r6, lr}
004db75c  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
004db760  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
004db764  08 10 90 e5                                      ldr r1, [r0, #8]
004db768  03 30 8f e0                                      add r3, pc, r3
004db76c  02 20 93 e7                                      ldr r2, [r3, r2]
004db770  00 00 51 e3                                      cmp r1, #0
004db774  00 50 a0 e1                                      mov r5, r0
004db778  08 20 82 e2                                      add r2, r2, #8
004db77c  00 20 80 e5                                      str r2, [r0]
004db780  10 00 00 0a                                      beq #0x4db7c8
004db784  04 30 11 e5                                      ldr r3, [r1, #-4]
004db788  0c 00 a0 e3                                      mov r0, #0xc
004db78c  90 13 20 e0                                      mla r0, r0, r3, r1
004db790  00 00 51 e1                                      cmp r1, r0
004db794  01 00 00 1a                                      bne #0x4db7a0
004db798  08 00 00 ea                                      b #0x4db7c0
004db79c  04 00 a0 e1                                      mov r0, r4
004db7a0  0c 40 40 e2                                      sub r4, r0, #0xc
004db7a4  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
004db7a8  04 00 a0 e1                                      mov r0, r4
004db7ac  0f e0 a0 e1                                      mov lr, pc
004db7b0  00 f0 93 e5                                      ldr pc, [r3]
004db7b4  08 00 95 e5                                      ldr r0, [r5, #8]
004db7b8  04 00 50 e1                                      cmp r0, r4
004db7bc  f6 ff ff 1a                                      bne #0x4db79c
004db7c0  08 00 40 e2                                      sub r0, r0, #8
004db7c4  1d d3 f8 eb                                      bl #0x310440
004db7c8  05 00 a0 e1                                      mov r0, r5
004db7cc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004db7d0  28 93 4b 00 38 3c 00 00                          .byte 0x28, 0x93, 0x4b, 0x00, 0x38, 0x3c, 0x00, 0x00

; FUNCTION 0x004dd158, declared_size=364, range_size=364, mode=arm
; class-group: Structs::AIFactions
; alias: _ZN7Structs10AIFactions4readEP11IStreamBase
; demangled: Structs::AIFactions::read(IStreamBase*)
; decoder-mode: arm
004dd158  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004dd15c  00 50 a0 e1                                      mov r5, r0
004dd160  08 d0 4d e2                                      sub sp, sp, #8
004dd164  01 00 a0 e1                                      mov r0, r1
004dd168  01 70 a0 e1                                      mov r7, r1
004dd16c  48 61 9f e5                                      ldr r6, [pc, #0x148]
004dd170  04 10 85 e2                                      add r1, r5, #4
004dd174  09 08 fc eb                                      bl #0x3df1a0
004dd178  01 30 a0 e3                                      mov r3, #1
004dd17c  00 00 53 e3                                      cmp r3, #0
004dd180  04 30 8d e5                                      str r3, [sp, #4]
004dd184  06 60 8f e0                                      add r6, pc, r6
004dd188  0f 00 00 1a                                      bne #0x4dd1cc
004dd18c  05 30 85 e2                                      add r3, r5, #5
004dd190  06 20 85 e2                                      add r2, r5, #6
004dd194  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dd198  01 10 53 e5                                      ldrb r1, [r3, #-1]
004dd19c  02 00 53 e1                                      cmp r3, r2
004dd1a0  01 10 20 e0                                      eor r1, r0, r1
004dd1a4  01 10 43 e5                                      strb r1, [r3, #-1]
004dd1a8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dd1ac  00 10 21 e0                                      eor r1, r1, r0
004dd1b0  01 10 c2 e5                                      strb r1, [r2, #1]
004dd1b4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004dd1b8  01 20 42 e2                                      sub r2, r2, #1
004dd1bc  00 10 21 e0                                      eor r1, r1, r0
004dd1c0  01 10 43 e5                                      strb r1, [r3, #-1]
004dd1c4  01 30 83 e2                                      add r3, r3, #1
004dd1c8  f1 ff ff 3a                                      blo #0x4dd194
004dd1cc  08 30 95 e5                                      ldr r3, [r5, #8]
004dd1d0  00 00 53 e3                                      cmp r3, #0
004dd1d4  10 00 00 0a                                      beq #0x4dd21c
004dd1d8  04 20 13 e5                                      ldr r2, [r3, #-4]
004dd1dc  0c 00 a0 e3                                      mov r0, #0xc
004dd1e0  90 32 20 e0                                      mla r0, r0, r2, r3
004dd1e4  00 00 53 e1                                      cmp r3, r0
004dd1e8  01 00 00 1a                                      bne #0x4dd1f4
004dd1ec  08 00 00 ea                                      b #0x4dd214
004dd1f0  04 00 a0 e1                                      mov r0, r4
004dd1f4  0c 40 40 e2                                      sub r4, r0, #0xc
004dd1f8  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
004dd1fc  04 00 a0 e1                                      mov r0, r4
004dd200  0f e0 a0 e1                                      mov lr, pc
004dd204  00 f0 93 e5                                      ldr pc, [r3]
004dd208  08 00 95 e5                                      ldr r0, [r5, #8]
004dd20c  04 00 50 e1                                      cmp r0, r4
004dd210  f6 ff ff 1a                                      bne #0x4dd1f0
004dd214  08 00 40 e2                                      sub r0, r0, #8
004dd218  88 cc f8 eb                                      bl #0x310440
004dd21c  04 40 95 e5                                      ldr r4, [r5, #4]
004dd220  0c 80 a0 e3                                      mov r8, #0xc
004dd224  01 10 a0 e3                                      mov r1, #1
004dd228  98 04 00 e0                                      mul r0, r8, r4
004dd22c  08 00 80 e2                                      add r0, r0, #8
004dd230  cd cc f8 eb                                      bl #0x31056c
004dd234  00 00 54 e3                                      cmp r4, #0
004dd238  00 80 80 e5                                      str r8, [r0]
004dd23c  04 40 80 e5                                      str r4, [r0, #4]
004dd240  08 30 80 e2                                      add r3, r0, #8
004dd244  08 00 00 0a                                      beq #0x4dd26c
004dd248  70 10 9f e5                                      ldr r1, [pc, #0x70]
004dd24c  00 20 a0 e3                                      mov r2, #0
004dd250  01 10 96 e7                                      ldr r1, [r6, r1]
004dd254  08 10 81 e2                                      add r1, r1, #8
004dd258  01 20 82 e2                                      add r2, r2, #1
004dd25c  04 00 52 e1                                      cmp r2, r4
004dd260  08 10 80 e5                                      str r1, [r0, #8]
004dd264  0c 00 80 e2                                      add r0, r0, #0xc
004dd268  fa ff ff 1a                                      bne #0x4dd258
004dd26c  04 20 95 e5                                      ldr r2, [r5, #4]
004dd270  08 30 85 e5                                      str r3, [r5, #8]
004dd274  00 00 52 e3                                      cmp r2, #0
004dd278  0d 00 00 0a                                      beq #0x4dd2b4
004dd27c  00 40 a0 e3                                      mov r4, #0
004dd280  04 60 a0 e1                                      mov r6, r4
004dd284  00 00 00 ea                                      b #0x4dd28c
004dd288  08 30 95 e5                                      ldr r3, [r5, #8]
004dd28c  04 00 83 e0                                      add r0, r3, r4
004dd290  07 10 a0 e1                                      mov r1, r7
004dd294  04 30 93 e7                                      ldr r3, [r3, r4]
004dd298  0f e0 a0 e1                                      mov lr, pc
004dd29c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004dd2a0  04 30 95 e5                                      ldr r3, [r5, #4]
004dd2a4  01 60 86 e2                                      add r6, r6, #1
004dd2a8  0c 40 84 e2                                      add r4, r4, #0xc
004dd2ac  06 00 53 e1                                      cmp r3, r6
004dd2b0  f4 ff ff 8a                                      bhi #0x4dd288
004dd2b4  08 d0 8d e2                                      add sp, sp, #8
004dd2b8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004dd2bc  0c 79 4b 00 d0 1d 00 00                          .byte 0x0c, 0x79, 0x4b, 0x00, 0xd0, 0x1d, 0x00, 0x00
