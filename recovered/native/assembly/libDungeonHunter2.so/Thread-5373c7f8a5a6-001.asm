; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00317e10, declared_size=4, range_size=4, mode=arm
; class-group: Thread
; alias: _ZN6ThreadD1Ev
; demangled: Thread::~Thread()
; decoder-mode: arm
00317e10  1e ff 2f e1                                      bx lr

; FUNCTION 0x00317fe8, declared_size=52, range_size=52, mode=arm
; class-group: Thread
; alias: _ZN6ThreadD0Ev
; demangled: Thread::~Thread()
; decoder-mode: arm
00317fe8  24 30 9f e5                                      ldr r3, [pc, #0x24]
00317fec  24 20 9f e5                                      ldr r2, [pc, #0x24]
00317ff0  10 40 2d e9                                      push {r4, lr}
00317ff4  03 30 8f e0                                      add r3, pc, r3
00317ff8  02 20 93 e7                                      ldr r2, [r3, r2]
00317ffc  00 40 a0 e1                                      mov r4, r0
00318000  08 20 82 e2                                      add r2, r2, #8
00318004  00 20 80 e5                                      str r2, [r0]
00318008  0c e1 ff eb                                      bl #0x310440
0031800c  04 00 a0 e1                                      mov r0, r4
00318010  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00318014  9c ca 67 00 2c 17 00 00                          .byte 0x9c, 0xca, 0x67, 0x00, 0x2c, 0x17, 0x00, 0x00

; FUNCTION 0x0084559c, declared_size=36, range_size=36, mode=arm
; class-group: Thread
; alias: _ZN6Thread22IsCurrectThreadRunningEv
; demangled: Thread::IsCurrectThreadRunning()
; decoder-mode: arm
0084559c  10 40 2d e9                                      push {r4, lr}
008455a0  00 10 a0 e3                                      mov r1, #0
008455a4  04 00 90 e5                                      ldr r0, [r0, #4]
008455a8  78 24 eb eb                                      bl #0x30e790
008455ac  16 00 50 e3                                      cmp r0, #0x16
008455b0  03 00 50 13                                      cmpne r0, #3
008455b4  00 00 a0 03                                      moveq r0, #0
008455b8  01 00 a0 13                                      movne r0, #1
008455bc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008455c0, declared_size=76, range_size=76, mode=arm
; class-group: Thread
; alias: _ZN6Thread3RunEv
; demangled: Thread::Run()
; decoder-mode: arm
008455c0  10 40 2d e9                                      push {r4, lr}
008455c4  00 40 a0 e1                                      mov r4, r0
008455c8  ea 22 eb eb                                      bl #0x30e178
008455cc  00 10 a0 e1                                      mov r1, r0
008455d0  30 00 9f e5                                      ldr r0, [pc, #0x30]
008455d4  00 00 8f e0                                      add r0, pc, r0
008455d8  69 98 ff eb                                      bl #0x82b784
008455dc  08 30 d4 e5                                      ldrb r3, [r4, #8]
008455e0  00 00 53 e3                                      cmp r3, #0
008455e4  06 00 00 1a                                      bne #0x845604
008455e8  00 30 94 e5                                      ldr r3, [r4]
008455ec  04 00 a0 e1                                      mov r0, r4
008455f0  0f e0 a0 e1                                      mov lr, pc
008455f4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
008455f8  08 30 d4 e5                                      ldrb r3, [r4, #8]
008455fc  00 00 53 e3                                      cmp r3, #0
00845600  f8 ff ff 0a                                      beq #0x8455e8
00845604  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00845608  8c 9c 0c 00                                      .byte 0x8c, 0x9c, 0x0c, 0x00

; FUNCTION 0x0084560c, declared_size=124, range_size=124, mode=arm
; class-group: Thread
; alias: _ZN6Thread4StopEv
; demangled: Thread::Stop()
; decoder-mode: arm
0084560c  30 40 2d e9                                      push {r4, r5, lr}
00845610  08 50 d0 e5                                      ldrb r5, [r0, #8]
00845614  0c d0 4d e2                                      sub sp, sp, #0xc
00845618  00 40 a0 e1                                      mov r4, r0
0084561c  00 00 55 e3                                      cmp r5, #0
00845620  02 00 00 0a                                      beq #0x845630
00845624  00 00 a0 e3                                      mov r0, #0
00845628  0c d0 8d e2                                      add sp, sp, #0xc
0084562c  30 80 bd e8                                      pop {r4, r5, pc}
00845630  01 30 a0 e3                                      mov r3, #1
00845634  08 30 c0 e5                                      strb r3, [r0, #8]
00845638  d7 ff ff eb                                      bl #0x84559c
0084563c  00 00 50 e3                                      cmp r0, #0
00845640  05 00 00 0a                                      beq #0x84565c
00845644  08 10 8d e2                                      add r1, sp, #8
00845648  04 50 21 e5                                      str r5, [r1, #-4]!
0084564c  04 00 94 e5                                      ldr r0, [r4, #4]
00845650  92 25 eb eb                                      bl #0x30eca0
00845654  00 00 50 e3                                      cmp r0, #0
00845658  04 00 00 1a                                      bne #0x845670
0084565c  04 00 a0 e1                                      mov r0, r4
00845660  00 30 94 e5                                      ldr r3, [r4]
00845664  0f e0 a0 e1                                      mov lr, pc
00845668  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0084566c  ec ff ff ea                                      b #0x845624
00845670  04 00 a0 e1                                      mov r0, r4
00845674  00 30 94 e5                                      ldr r3, [r4]
00845678  0f e0 a0 e1                                      mov lr, pc
0084567c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00845680  00 00 e0 e3                                      mvn r0, #0
00845684  e7 ff ff ea                                      b #0x845628

; FUNCTION 0x00845688, declared_size=92, range_size=92, mode=arm
; class-group: Thread
; alias: _ZN6Thread5StartEv
; demangled: Thread::Start()
; decoder-mode: arm
00845688  10 40 2d e9                                      push {r4, lr}
0084568c  00 30 90 e5                                      ldr r3, [r0]
00845690  00 40 a0 e1                                      mov r4, r0
00845694  0f e0 a0 e1                                      mov lr, pc
00845698  08 f0 93 e5                                      ldr pc, [r3, #8]
0084569c  38 30 9f e5                                      ldr r3, [pc, #0x38]
008456a0  00 00 50 e3                                      cmp r0, #0
008456a4  03 30 8f e0                                      add r3, pc, r3
008456a8  01 00 00 aa                                      bge #0x8456b4
008456ac  00 00 e0 e3                                      mvn r0, #0
008456b0  10 80 bd e8                                      pop {r4, pc}
008456b4  24 20 9f e5                                      ldr r2, [pc, #0x24]
008456b8  00 10 a0 e3                                      mov r1, #0
008456bc  08 10 c4 e5                                      strb r1, [r4, #8]
008456c0  02 20 93 e7                                      ldr r2, [r3, r2]
008456c4  04 00 84 e2                                      add r0, r4, #4
008456c8  04 30 a0 e1                                      mov r3, r4
008456cc  43 22 eb eb                                      bl #0x30dfe0
008456d0  00 00 50 e3                                      cmp r0, #0
008456d4  00 00 e0 13                                      mvnne r0, #0
008456d8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
008456dc  ec f3 14 00 cc 1c 00 00                          .byte 0xec, 0xf3, 0x14, 0x00, 0xcc, 0x1c, 0x00, 0x00
