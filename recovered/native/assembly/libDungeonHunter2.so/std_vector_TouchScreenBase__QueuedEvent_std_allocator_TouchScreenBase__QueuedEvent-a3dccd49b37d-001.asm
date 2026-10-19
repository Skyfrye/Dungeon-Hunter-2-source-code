; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0033bdac, declared_size=92, range_size=92, mode=arm
; class-group: std::vector<TouchScreenBase::_QueuedEvent, std::allocator<TouchScreenBase::_QueuedEvent> >
; alias: _ZNSt6vectorIN15TouchScreenBase12_QueuedEventESaIS1_EED1Ev
; demangled: std::vector<TouchScreenBase::_QueuedEvent, std::allocator<TouchScreenBase::_QueuedEvent> >::~vector()
; decoder-mode: arm
0033bdac  10 40 2d e9                                      push {r4, lr}
0033bdb0  00 40 a0 e1                                      mov r4, r0
0033bdb4  00 00 90 e5                                      ldr r0, [r0]
0033bdb8  00 00 50 e3                                      cmp r0, #0
0033bdbc  0c 00 00 0a                                      beq #0x33bdf4
0033bdc0  08 30 94 e5                                      ldr r3, [r4, #8]
0033bdc4  03 30 60 e0                                      rsb r3, r0, r3
0033bdc8  43 31 a0 e1                                      asr r3, r3, #2
0033bdcc  03 11 83 e0                                      add r1, r3, r3, lsl #2
0033bdd0  01 12 81 e0                                      add r1, r1, r1, lsl #4
0033bdd4  01 14 81 e0                                      add r1, r1, r1, lsl #8
0033bdd8  01 18 81 e0                                      add r1, r1, r1, lsl #16
0033bddc  81 30 83 e0                                      add r3, r3, r1, lsl #1
0033bde0  0c 10 a0 e3                                      mov r1, #0xc
0033bde4  91 03 01 e0                                      mul r1, r1, r3
0033bde8  80 00 51 e3                                      cmp r1, #0x80
0033bdec  02 00 00 8a                                      bhi #0x33bdfc
0033bdf0  42 34 0f eb                                      bl #0x708f00
0033bdf4  04 00 a0 e1                                      mov r0, r4
0033bdf8  10 80 bd e8                                      pop {r4, pc}
0033bdfc  8f 51 ff eb                                      bl #0x310440
0033be00  04 00 a0 e1                                      mov r0, r4
0033be04  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0033bfa8, declared_size=316, range_size=316, mode=arm
; class-group: std::vector<TouchScreenBase::_QueuedEvent, std::allocator<TouchScreenBase::_QueuedEvent> >
; alias: _ZNSt6vectorIN15TouchScreenBase12_QueuedEventESaIS1_EE7reserveEj.clone.2
; demangled: std::vector<TouchScreenBase::_QueuedEvent, std::allocator<TouchScreenBase::_QueuedEvent> >::reserve(unsigned int) [clone .clone.2]
; decoder-mode: arm
0033bfa8  70 40 2d e9                                      push {r4, r5, r6, lr}
0033bfac  00 20 90 e5                                      ldr r2, [r0]
0033bfb0  08 30 90 e5                                      ldr r3, [r0, #8]
0033bfb4  10 10 a0 e3                                      mov r1, #0x10
0033bfb8  08 d0 4d e2                                      sub sp, sp, #8
0033bfbc  03 30 62 e0                                      rsb r3, r2, r3
0033bfc0  43 31 a0 e1                                      asr r3, r3, #2
0033bfc4  00 40 a0 e1                                      mov r4, r0
0033bfc8  03 c1 83 e0                                      add ip, r3, r3, lsl #2
0033bfcc  9c c1 2c e0                                      mla ip, ip, r1, ip
0033bfd0  04 10 8d e5                                      str r1, [sp, #4]
0033bfd4  0c c4 8c e0                                      add ip, ip, ip, lsl #8
0033bfd8  0c c8 8c e0                                      add ip, ip, ip, lsl #16
0033bfdc  8c 30 83 e0                                      add r3, r3, ip, lsl #1
0033bfe0  0f 00 53 e3                                      cmp r3, #0xf
0033bfe4  35 00 00 8a                                      bhi #0x33c0c0
0033bfe8  04 30 90 e5                                      ldr r3, [r0, #4]
0033bfec  00 00 52 e3                                      cmp r2, #0
0033bff0  03 c0 62 e0                                      rsb ip, r2, r3
0033bff4  4c c1 a0 e1                                      asr ip, ip, #2
0033bff8  0c 51 8c e0                                      add r5, ip, ip, lsl #2
0033bffc  95 51 25 e0                                      mla r5, r5, r1, r5
0033c000  05 54 85 e0                                      add r5, r5, r5, lsl #8
0033c004  05 58 85 e0                                      add r5, r5, r5, lsl #16
0033c008  85 50 8c e0                                      add r5, ip, r5, lsl #1
0033c00c  2f 00 00 0a                                      beq #0x33c0d0
0033c010  04 10 8d e2                                      add r1, sp, #4
0033c014  c4 ff ff eb                                      bl #0x33bf2c
0033c018  04 30 94 e5                                      ldr r3, [r4, #4]
0033c01c  00 60 a0 e1                                      mov r6, r0
0033c020  00 00 94 e5                                      ldr r0, [r4]
0033c024  00 00 53 e1                                      cmp r3, r0
0033c028  0e 00 00 0a                                      beq #0x33c068
0033c02c  0c 20 43 e2                                      sub r2, r3, #0xc
0033c030  02 20 60 e0                                      rsb r2, r0, r2
0033c034  22 21 a0 e1                                      lsr r2, r2, #2
0033c038  02 11 82 e0                                      add r1, r2, r2, lsl #2
0033c03c  81 12 81 e0                                      add r1, r1, r1, lsl #5
0033c040  81 10 82 e0                                      add r1, r2, r1, lsl #1
0033c044  81 12 81 e0                                      add r1, r1, r1, lsl #5
0033c048  81 c7 a0 e1                                      lsl ip, r1, #0xf
0033c04c  0c 10 61 e0                                      rsb r1, r1, ip
0033c050  81 20 82 e0                                      add r2, r2, r1, lsl #1
0033c054  03 21 c2 e3                                      bic r2, r2, #0xc0000000
0033c058  0b 10 e0 e3                                      mvn r1, #0xb
0033c05c  91 02 02 e0                                      mul r2, r1, r2
0033c060  01 20 82 e0                                      add r2, r2, r1
0033c064  02 30 83 e0                                      add r3, r3, r2
0033c068  00 00 53 e3                                      cmp r3, #0
0033c06c  08 20 94 e5                                      ldr r2, [r4, #8]
0033c070  0b 00 00 0a                                      beq #0x33c0a4
0033c074  02 30 63 e0                                      rsb r3, r3, r2
0033c078  43 31 a0 e1                                      asr r3, r3, #2
0033c07c  03 11 83 e0                                      add r1, r3, r3, lsl #2
0033c080  01 12 81 e0                                      add r1, r1, r1, lsl #4
0033c084  01 14 81 e0                                      add r1, r1, r1, lsl #8
0033c088  01 18 81 e0                                      add r1, r1, r1, lsl #16
0033c08c  81 30 83 e0                                      add r3, r3, r1, lsl #1
0033c090  0c 10 a0 e3                                      mov r1, #0xc
0033c094  91 03 01 e0                                      mul r1, r1, r3
0033c098  80 00 51 e3                                      cmp r1, #0x80
0033c09c  09 00 00 8a                                      bhi #0x33c0c8
0033c0a0  96 33 0f eb                                      bl #0x708f00
0033c0a4  04 20 9d e5                                      ldr r2, [sp, #4]
0033c0a8  0c 30 a0 e3                                      mov r3, #0xc
0033c0ac  93 65 25 e0                                      mla r5, r3, r5, r6
0033c0b0  93 62 23 e0                                      mla r3, r3, r2, r6
0033c0b4  04 50 84 e5                                      str r5, [r4, #4]
0033c0b8  08 30 84 e5                                      str r3, [r4, #8]
0033c0bc  00 60 84 e5                                      str r6, [r4]
0033c0c0  08 d0 8d e2                                      add sp, sp, #8
0033c0c4  70 80 bd e8                                      pop {r4, r5, r6, pc}
0033c0c8  dc 50 ff eb                                      bl #0x310440
0033c0cc  f4 ff ff ea                                      b #0x33c0a4
0033c0d0  08 00 80 e2                                      add r0, r0, #8
0033c0d4  04 20 8d e2                                      add r2, sp, #4
0033c0d8  71 ff ff eb                                      bl #0x33bea4
0033c0dc  00 60 a0 e1                                      mov r6, r0
0033c0e0  ef ff ff ea                                      b #0x33c0a4

; FUNCTION 0x0033c0e4, declared_size=436, range_size=436, mode=arm
; class-group: std::vector<TouchScreenBase::_QueuedEvent, std::allocator<TouchScreenBase::_QueuedEvent> >
; alias: _ZNSt6vectorIN15TouchScreenBase12_QueuedEventESaIS1_EE22_M_insert_overflow_auxEPS1_RKS1_RKSt12__false_typejb.clone.5
; demangled: std::vector<TouchScreenBase::_QueuedEvent, std::allocator<TouchScreenBase::_QueuedEvent> >::_M_insert_overflow_aux(TouchScreenBase::_QueuedEvent*, TouchScreenBase::_QueuedEvent const&, std::__false_type const&, unsigned int, bool) [clone .clone.5]
; decoder-mode: arm
0033c0e4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0033c0e8  00 40 a0 e1                                      mov r4, r0
0033c0ec  01 10 90 e8                                      ldm r0, {r0, ip}
0033c0f0  01 60 a0 e1                                      mov r6, r1
0033c0f4  55 35 05 e3                                      movw r3, #0x5555
0033c0f8  0c 00 60 e0                                      rsb r0, r0, ip
0033c0fc  40 01 a0 e1                                      asr r0, r0, #2
0033c100  03 37 83 e1                                      orr r3, r3, r3, lsl #14
0033c104  00 11 80 e0                                      add r1, r0, r0, lsl #2
0033c108  0c d0 4d e2                                      sub sp, sp, #0xc
0033c10c  01 12 81 e0                                      add r1, r1, r1, lsl #4
0033c110  02 50 a0 e1                                      mov r5, r2
0033c114  01 14 81 e0                                      add r1, r1, r1, lsl #8
0033c118  01 18 81 e0                                      add r1, r1, r1, lsl #16
0033c11c  81 00 80 e0                                      add r0, r0, r1, lsl #1
0033c120  01 00 50 e3                                      cmp r0, #1
0033c124  00 10 80 20                                      addhs r1, r0, r0
0033c128  01 10 80 32                                      addlo r1, r0, #1
0033c12c  03 00 51 e1                                      cmp r1, r3
0033c130  53 00 00 8a                                      bhi #0x33c284
0033c134  01 00 50 e1                                      cmp r0, r1
0033c138  51 00 00 8a                                      bhi #0x33c284
0033c13c  08 20 8d e2                                      add r2, sp, #8
0033c140  04 10 22 e5                                      str r1, [r2, #-4]!
0033c144  08 00 84 e2                                      add r0, r4, #8
0033c148  55 ff ff eb                                      bl #0x33bea4
0033c14c  00 20 94 e5                                      ldr r2, [r4]
0033c150  00 70 a0 e1                                      mov r7, r0
0033c154  06 60 62 e0                                      rsb r6, r2, r6
0033c158  46 61 a0 e1                                      asr r6, r6, #2
0033c15c  06 31 86 e0                                      add r3, r6, r6, lsl #2
0033c160  03 32 83 e0                                      add r3, r3, r3, lsl #4
0033c164  03 34 83 e0                                      add r3, r3, r3, lsl #8
0033c168  03 38 83 e0                                      add r3, r3, r3, lsl #16
0033c16c  83 60 86 e0                                      add r6, r6, r3, lsl #1
0033c170  00 00 56 e3                                      cmp r6, #0
0033c174  00 30 a0 d1                                      movle r3, r0
0033c178  10 00 00 da                                      ble #0x33c1c0
0033c17c  0c 20 82 e2                                      add r2, r2, #0xc
0033c180  0c 30 80 e2                                      add r3, r0, #0xc
0033c184  06 10 a0 e1                                      mov r1, r6
0033c188  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
0033c18c  01 10 51 e2                                      subs r1, r1, #1
0033c190  0c 00 03 e5                                      str r0, [r3, #-0xc]
0033c194  b8 00 52 e1                                      ldrh r0, [r2, #-8]
0033c198  b8 00 43 e1                                      strh r0, [r3, #-8]
0033c19c  b6 00 52 e1                                      ldrh r0, [r2, #-6]
0033c1a0  b6 00 43 e1                                      strh r0, [r3, #-6]
0033c1a4  04 00 12 e5                                      ldr r0, [r2, #-4]
0033c1a8  0c 20 82 e2                                      add r2, r2, #0xc
0033c1ac  04 00 03 e5                                      str r0, [r3, #-4]
0033c1b0  0c 30 83 e2                                      add r3, r3, #0xc
0033c1b4  f3 ff ff 1a                                      bne #0x33c188
0033c1b8  0c 30 a0 e3                                      mov r3, #0xc
0033c1bc  93 76 23 e0                                      mla r3, r3, r6, r7
0033c1c0  00 20 95 e5                                      ldr r2, [r5]
0033c1c4  0c 60 83 e2                                      add r6, r3, #0xc
0033c1c8  00 20 83 e5                                      str r2, [r3]
0033c1cc  b4 20 d5 e1                                      ldrh r2, [r5, #4]
0033c1d0  b4 20 c3 e1                                      strh r2, [r3, #4]
0033c1d4  b6 00 d5 e1                                      ldrh r0, [r5, #6]
0033c1d8  b6 00 c3 e1                                      strh r0, [r3, #6]
0033c1dc  08 20 95 e5                                      ldr r2, [r5, #8]
0033c1e0  08 20 83 e5                                      str r2, [r3, #8]
0033c1e4  09 00 94 e8                                      ldm r4, {r0, r3}
0033c1e8  00 00 53 e1                                      cmp r3, r0
0033c1ec  0e 00 00 0a                                      beq #0x33c22c
0033c1f0  0c 20 43 e2                                      sub r2, r3, #0xc
0033c1f4  02 20 60 e0                                      rsb r2, r0, r2
0033c1f8  22 21 a0 e1                                      lsr r2, r2, #2
0033c1fc  02 11 82 e0                                      add r1, r2, r2, lsl #2
0033c200  81 12 81 e0                                      add r1, r1, r1, lsl #5
0033c204  81 10 82 e0                                      add r1, r2, r1, lsl #1
0033c208  81 12 81 e0                                      add r1, r1, r1, lsl #5
0033c20c  81 c7 a0 e1                                      lsl ip, r1, #0xf
0033c210  0c 10 61 e0                                      rsb r1, r1, ip
0033c214  81 20 82 e0                                      add r2, r2, r1, lsl #1
0033c218  03 21 c2 e3                                      bic r2, r2, #0xc0000000
0033c21c  0b 10 e0 e3                                      mvn r1, #0xb
0033c220  91 02 02 e0                                      mul r2, r1, r2
0033c224  01 20 82 e0                                      add r2, r2, r1
0033c228  02 30 83 e0                                      add r3, r3, r2
0033c22c  00 00 53 e3                                      cmp r3, #0
0033c230  08 20 94 e5                                      ldr r2, [r4, #8]
0033c234  0b 00 00 0a                                      beq #0x33c268
0033c238  02 30 63 e0                                      rsb r3, r3, r2
0033c23c  43 31 a0 e1                                      asr r3, r3, #2
0033c240  03 11 83 e0                                      add r1, r3, r3, lsl #2
0033c244  01 12 81 e0                                      add r1, r1, r1, lsl #4
0033c248  01 14 81 e0                                      add r1, r1, r1, lsl #8
0033c24c  01 18 81 e0                                      add r1, r1, r1, lsl #16
0033c250  81 30 83 e0                                      add r3, r3, r1, lsl #1
0033c254  0c 10 a0 e3                                      mov r1, #0xc
0033c258  91 03 01 e0                                      mul r1, r1, r3
0033c25c  80 00 51 e3                                      cmp r1, #0x80
0033c260  0a 00 00 8a                                      bhi #0x33c290
0033c264  25 33 0f eb                                      bl #0x708f00
0033c268  04 30 9d e5                                      ldr r3, [sp, #4]
0033c26c  0c 20 a0 e3                                      mov r2, #0xc
0033c270  00 70 84 e5                                      str r7, [r4]
0033c274  92 73 27 e0                                      mla r7, r2, r3, r7
0033c278  c0 00 84 e9                                      stmib r4, {r6, r7}
0033c27c  0c d0 8d e2                                      add sp, sp, #0xc
0033c280  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0033c284  55 15 05 e3                                      movw r1, #0x5555
0033c288  01 17 81 e1                                      orr r1, r1, r1, lsl #14
0033c28c  aa ff ff ea                                      b #0x33c13c
0033c290  6a 50 ff eb                                      bl #0x310440
0033c294  f3 ff ff ea                                      b #0x33c268
