; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00888fc8, declared_size=8, range_size=8, mode=arm
; class-group: vox::StreamMemoryBufferCursor
; alias: _ZN3vox24StreamMemoryBufferCursor10IsSeekableEv
; demangled: vox::StreamMemoryBufferCursor::IsSeekable()
; decoder-mode: arm
00888fc8  01 00 a0 e3                                      mov r0, #1
00888fcc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00888fd0, declared_size=8, range_size=8, mode=arm
; class-group: vox::StreamMemoryBufferCursor
; alias: _ZN3vox24StreamMemoryBufferCursor4TellEv
; demangled: vox::StreamMemoryBufferCursor::Tell()
; decoder-mode: arm
00888fd0  08 00 90 e5                                      ldr r0, [r0, #8]
00888fd4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00888fd8, declared_size=8, range_size=8, mode=arm
; class-group: vox::StreamMemoryBufferCursor
; alias: _ZN3vox24StreamMemoryBufferCursor20AllowBufferReferenceEv
; demangled: vox::StreamMemoryBufferCursor::AllowBufferReference()
; decoder-mode: arm
00888fd8  01 00 a0 e3                                      mov r0, #1
00888fdc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00888fe0, declared_size=4, range_size=4, mode=arm
; class-group: vox::StreamMemoryBufferCursor
; alias: _ZN3vox24StreamMemoryBufferCursorD1Ev
; demangled: vox::StreamMemoryBufferCursor::~StreamMemoryBufferCursor()
; decoder-mode: arm
00888fe0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00888fe4, declared_size=20, range_size=20, mode=arm
; class-group: vox::StreamMemoryBufferCursor
; alias: _ZN3vox24StreamMemoryBufferCursorD0Ev
; demangled: vox::StreamMemoryBufferCursor::~StreamMemoryBufferCursor()
; decoder-mode: arm
00888fe4  10 40 2d e9                                      push {r4, lr}
00888fe8  00 40 a0 e1                                      mov r4, r0
00888fec  af 14 ea eb                                      bl #0x30e2b0
00888ff0  04 00 a0 e1                                      mov r0, r4
00888ff4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008892b4, declared_size=60, range_size=60, mode=arm
; class-group: vox::StreamMemoryBufferCursor
; alias: _ZN3vox24StreamMemoryBufferCursor11EndOfStreamEv
; demangled: vox::StreamMemoryBufferCursor::EndOfStream()
; decoder-mode: arm
008892b4  10 40 2d e9                                      push {r4, lr}
008892b8  04 30 90 e5                                      ldr r3, [r0, #4]
008892bc  00 40 a0 e1                                      mov r4, r0
008892c0  00 00 53 e3                                      cmp r3, #0
008892c4  03 00 a0 01                                      moveq r0, r3
008892c8  03 00 00 0a                                      beq #0x8892dc
008892cc  03 00 a0 e1                                      mov r0, r3
008892d0  00 30 93 e5                                      ldr r3, [r3]
008892d4  0f e0 a0 e1                                      mov lr, pc
008892d8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
008892dc  08 20 94 e5                                      ldr r2, [r4, #8]
008892e0  00 00 52 e1                                      cmp r2, r0
008892e4  00 00 a0 13                                      movne r0, #0
008892e8  01 00 a0 03                                      moveq r0, #1
008892ec  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008892f0, declared_size=164, range_size=164, mode=arm
; class-group: vox::StreamMemoryBufferCursor
; alias: _ZN3vox24StreamMemoryBufferCursor4SeekEii
; demangled: vox::StreamMemoryBufferCursor::Seek(int, int)
; decoder-mode: arm
008892f0  30 40 2d e9                                      push {r4, r5, lr}
008892f4  08 50 90 e5                                      ldr r5, [r0, #8]
008892f8  01 00 52 e3                                      cmp r2, #1
008892fc  0c d0 4d e2                                      sub sp, sp, #0xc
00889300  00 40 a0 e1                                      mov r4, r0
00889304  01 50 85 00                                      addeq r5, r5, r1
00889308  03 00 00 0a                                      beq #0x88931c
0088930c  02 00 52 e3                                      cmp r2, #2
00889310  12 00 00 0a                                      beq #0x889360
00889314  00 00 52 e3                                      cmp r2, #0
00889318  01 50 a0 01                                      moveq r5, r1
0088931c  00 00 55 e3                                      cmp r5, #0
00889320  0b 00 00 ba                                      blt #0x889354
00889324  04 30 94 e5                                      ldr r3, [r4, #4]
00889328  00 00 53 e3                                      cmp r3, #0
0088932c  03 00 a0 01                                      moveq r0, r3
00889330  03 00 00 0a                                      beq #0x889344
00889334  03 00 a0 e1                                      mov r0, r3
00889338  00 30 93 e5                                      ldr r3, [r3]
0088933c  0f e0 a0 e1                                      mov lr, pc
00889340  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00889344  00 00 55 e1                                      cmp r5, r0
00889348  08 50 84 d5                                      strle r5, [r4, #8]
0088934c  00 00 a0 d3                                      movle r0, #0
00889350  00 00 00 da                                      ble #0x889358
00889354  00 00 e0 e3                                      mvn r0, #0
00889358  0c d0 8d e2                                      add sp, sp, #0xc
0088935c  30 80 bd e8                                      pop {r4, r5, pc}
00889360  04 50 90 e5                                      ldr r5, [r0, #4]
00889364  00 00 55 e3                                      cmp r5, #0
00889368  05 00 a0 01                                      moveq r0, r5
0088936c  05 00 00 0a                                      beq #0x889388
00889370  00 30 95 e5                                      ldr r3, [r5]
00889374  05 00 a0 e1                                      mov r0, r5
00889378  04 10 8d e5                                      str r1, [sp, #4]
0088937c  0f e0 a0 e1                                      mov lr, pc
00889380  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00889384  04 10 9d e5                                      ldr r1, [sp, #4]
00889388  01 10 e0 e1                                      mvn r1, r1
0088938c  00 50 81 e0                                      add r5, r1, r0
00889390  e1 ff ff ea                                      b #0x88931c

; FUNCTION 0x00889394, declared_size=116, range_size=116, mode=arm
; class-group: vox::StreamMemoryBufferCursor
; alias: _ZN3vox24StreamMemoryBufferCursor7ReadRefERPhi
; demangled: vox::StreamMemoryBufferCursor::ReadRef(unsigned char*&, int)
; decoder-mode: arm
00889394  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00889398  04 40 90 e5                                      ldr r4, [r0, #4]
0088939c  00 50 a0 e1                                      mov r5, r0
008893a0  01 60 a0 e1                                      mov r6, r1
008893a4  00 00 54 e3                                      cmp r4, #0
008893a8  02 70 a0 e1                                      mov r7, r2
008893ac  13 00 00 0a                                      beq #0x889400
008893b0  08 30 94 e5                                      ldr r3, [r4, #8]
008893b4  00 00 53 e3                                      cmp r3, #0
008893b8  10 00 00 0a                                      beq #0x889400
008893bc  00 00 52 e3                                      cmp r2, #0
008893c0  0e 00 00 da                                      ble #0x889400
008893c4  00 30 94 e5                                      ldr r3, [r4]
008893c8  04 00 a0 e1                                      mov r0, r4
008893cc  0f e0 a0 e1                                      mov lr, pc
008893d0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
008893d4  08 30 95 e5                                      ldr r3, [r5, #8]
008893d8  08 20 94 e5                                      ldr r2, [r4, #8]
008893dc  00 00 63 e0                                      rsb r0, r3, r0
008893e0  03 20 82 e0                                      add r2, r2, r3
008893e4  00 20 86 e5                                      str r2, [r6]
008893e8  08 20 95 e5                                      ldr r2, [r5, #8]
008893ec  07 00 50 e1                                      cmp r0, r7
008893f0  07 00 a0 a1                                      movge r0, r7
008893f4  00 20 82 e0                                      add r2, r2, r0
008893f8  08 20 85 e5                                      str r2, [r5, #8]
008893fc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00889400  00 00 a0 e3                                      mov r0, #0
00889404  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00889408, declared_size=136, range_size=136, mode=arm
; class-group: vox::StreamMemoryBufferCursor
; alias: _ZN3vox24StreamMemoryBufferCursor4ReadEPhi
; demangled: vox::StreamMemoryBufferCursor::Read(unsigned char*, int)
; decoder-mode: arm
00889408  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0088940c  04 40 90 e5                                      ldr r4, [r0, #4]
00889410  00 50 a0 e1                                      mov r5, r0
00889414  01 60 a0 e1                                      mov r6, r1
00889418  00 00 51 e3                                      cmp r1, #0
0088941c  00 00 54 13                                      cmpne r4, #0
00889420  02 70 a0 e1                                      mov r7, r2
00889424  16 00 00 0a                                      beq #0x889484
00889428  08 30 94 e5                                      ldr r3, [r4, #8]
0088942c  00 00 53 e3                                      cmp r3, #0
00889430  13 00 00 0a                                      beq #0x889484
00889434  00 00 52 e3                                      cmp r2, #0
00889438  11 00 00 da                                      ble #0x889484
0088943c  00 30 94 e5                                      ldr r3, [r4]
00889440  04 00 a0 e1                                      mov r0, r4
00889444  0f e0 a0 e1                                      mov lr, pc
00889448  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0088944c  08 30 95 e5                                      ldr r3, [r5, #8]
00889450  08 10 94 e5                                      ldr r1, [r4, #8]
00889454  00 40 63 e0                                      rsb r4, r3, r0
00889458  07 00 54 e1                                      cmp r4, r7
0088945c  07 40 a0 a1                                      movge r4, r7
00889460  03 10 81 e0                                      add r1, r1, r3
00889464  06 00 a0 e1                                      mov r0, r6
00889468  04 20 a0 e1                                      mov r2, r4
0088946c  fd 14 ea eb                                      bl #0x30e868
00889470  08 30 95 e5                                      ldr r3, [r5, #8]
00889474  04 00 a0 e1                                      mov r0, r4
00889478  04 30 83 e0                                      add r3, r3, r4
0088947c  08 30 85 e5                                      str r3, [r5, #8]
00889480  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00889484  00 40 a0 e3                                      mov r4, #0
00889488  04 00 a0 e1                                      mov r0, r4
0088948c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
