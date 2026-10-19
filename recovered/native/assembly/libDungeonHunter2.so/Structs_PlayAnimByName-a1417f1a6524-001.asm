; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d3518, declared_size=76, range_size=76, mode=arm
; class-group: Structs::PlayAnimByName
; alias: _ZN7Structs14PlayAnimByName8finalizeEv
; demangled: Structs::PlayAnimByName::finalize()
; decoder-mode: arm
004d3518  10 40 2d e9                                      push {r4, lr}
004d351c  00 40 a0 e1                                      mov r4, r0
004d3520  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d3524  00 00 50 e3                                      cmp r0, #0
004d3528  03 00 00 0a                                      beq #0x4d353c
004d352c  c3 f3 f8 eb                                      bl #0x310440
004d3530  00 30 a0 e3                                      mov r3, #0
004d3534  08 30 84 e5                                      str r3, [r4, #8]
004d3538  0c 30 84 e5                                      str r3, [r4, #0xc]
004d353c  18 00 94 e5                                      ldr r0, [r4, #0x18]
004d3540  00 00 50 e3                                      cmp r0, #0
004d3544  03 00 00 0a                                      beq #0x4d3558
004d3548  bc f3 f8 eb                                      bl #0x310440
004d354c  00 30 a0 e3                                      mov r3, #0
004d3550  14 30 84 e5                                      str r3, [r4, #0x14]
004d3554  18 30 84 e5                                      str r3, [r4, #0x18]
004d3558  04 00 a0 e1                                      mov r0, r4
004d355c  10 40 bd e8                                      pop {r4, lr}
004d3560  c0 cd ff ea                                      b #0x4c6c68

; FUNCTION 0x004d3564, declared_size=88, range_size=88, mode=arm
; class-group: Structs::PlayAnimByName
; alias: _ZN7Structs14PlayAnimByNameD1Ev
; demangled: Structs::PlayAnimByName::~PlayAnimByName()
; decoder-mode: arm
004d3564  10 40 2d e9                                      push {r4, lr}
004d3568  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d356c  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d3570  00 40 a0 e1                                      mov r4, r0
004d3574  03 30 8f e0                                      add r3, pc, r3
004d3578  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d357c  02 20 93 e7                                      ldr r2, [r3, r2]
004d3580  00 00 50 e3                                      cmp r0, #0
004d3584  08 20 82 e2                                      add r2, r2, #8
004d3588  00 20 84 e5                                      str r2, [r4]
004d358c  00 00 00 0a                                      beq #0x4d3594
004d3590  aa f3 f8 eb                                      bl #0x310440
004d3594  18 00 94 e5                                      ldr r0, [r4, #0x18]
004d3598  00 00 50 e3                                      cmp r0, #0
004d359c  00 00 00 0a                                      beq #0x4d35a4
004d35a0  a6 f3 f8 eb                                      bl #0x310440
004d35a4  04 00 a0 e1                                      mov r0, r4
004d35a8  ac cd ff eb                                      bl #0x4c6c60
004d35ac  04 00 a0 e1                                      mov r0, r4
004d35b0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d35b4  1c 15 4c 00 14 06 00 00                          .byte 0x1c, 0x15, 0x4c, 0x00, 0x14, 0x06, 0x00, 0x00

; FUNCTION 0x004d35bc, declared_size=28, range_size=28, mode=arm
; class-group: Structs::PlayAnimByName
; alias: _ZN7Structs14PlayAnimByNameD0Ev
; demangled: Structs::PlayAnimByName::~PlayAnimByName()
; decoder-mode: arm
004d35bc  10 40 2d e9                                      push {r4, lr}
004d35c0  00 40 a0 e1                                      mov r4, r0
004d35c4  e6 ff ff eb                                      bl #0x4d3564
004d35c8  04 00 a0 e1                                      mov r0, r4
004d35cc  9b f3 f8 eb                                      bl #0x310440
004d35d0  04 00 a0 e1                                      mov r0, r4
004d35d4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d35d8, declared_size=88, range_size=88, mode=arm
; class-group: Structs::PlayAnimByName
; alias: _ZN7Structs14PlayAnimByNameD2Ev
; demangled: Structs::PlayAnimByName::~PlayAnimByName()
; decoder-mode: arm
004d35d8  10 40 2d e9                                      push {r4, lr}
004d35dc  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d35e0  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d35e4  00 40 a0 e1                                      mov r4, r0
004d35e8  03 30 8f e0                                      add r3, pc, r3
004d35ec  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d35f0  02 20 93 e7                                      ldr r2, [r3, r2]
004d35f4  00 00 50 e3                                      cmp r0, #0
004d35f8  08 20 82 e2                                      add r2, r2, #8
004d35fc  00 20 84 e5                                      str r2, [r4]
004d3600  00 00 00 0a                                      beq #0x4d3608
004d3604  8d f3 f8 eb                                      bl #0x310440
004d3608  18 00 94 e5                                      ldr r0, [r4, #0x18]
004d360c  00 00 50 e3                                      cmp r0, #0
004d3610  00 00 00 0a                                      beq #0x4d3618
004d3614  89 f3 f8 eb                                      bl #0x310440
004d3618  04 00 a0 e1                                      mov r0, r4
004d361c  8f cd ff eb                                      bl #0x4c6c60
004d3620  04 00 a0 e1                                      mov r0, r4
004d3624  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d3628  a8 14 4c 00 14 06 00 00                          .byte 0xa8, 0x14, 0x4c, 0x00, 0x14, 0x06, 0x00, 0x00

; FUNCTION 0x00502418, declared_size=380, range_size=380, mode=arm
; class-group: Structs::PlayAnimByName
; alias: _ZN7Structs14PlayAnimByName4readEP11IStreamBase
; demangled: Structs::PlayAnimByName::read(IStreamBase*)
; decoder-mode: arm
00502418  70 40 2d e9                                      push {r4, r5, r6, lr}
0050241c  00 40 a0 e1                                      mov r4, r0
00502420  08 d0 4d e2                                      sub sp, sp, #8
00502424  01 50 a0 e1                                      mov r5, r1
00502428  fe f4 ff eb                                      bl #0x4ff828
0050242c  05 00 a0 e1                                      mov r0, r5
00502430  08 10 84 e2                                      add r1, r4, #8
00502434  59 73 fb eb                                      bl #0x3df1a0
00502438  01 30 a0 e3                                      mov r3, #1
0050243c  00 00 53 e3                                      cmp r3, #0
00502440  04 30 8d e5                                      str r3, [sp, #4]
00502444  0f 00 00 1a                                      bne #0x502488
00502448  09 30 84 e2                                      add r3, r4, #9
0050244c  0a 20 84 e2                                      add r2, r4, #0xa
00502450  01 00 d2 e5                                      ldrb r0, [r2, #1]
00502454  01 10 53 e5                                      ldrb r1, [r3, #-1]
00502458  03 00 52 e1                                      cmp r2, r3
0050245c  01 10 20 e0                                      eor r1, r0, r1
00502460  01 10 43 e5                                      strb r1, [r3, #-1]
00502464  01 00 d2 e5                                      ldrb r0, [r2, #1]
00502468  00 10 21 e0                                      eor r1, r1, r0
0050246c  01 10 c2 e5                                      strb r1, [r2, #1]
00502470  01 00 53 e5                                      ldrb r0, [r3, #-1]
00502474  01 20 42 e2                                      sub r2, r2, #1
00502478  00 10 21 e0                                      eor r1, r1, r0
0050247c  01 10 43 e5                                      strb r1, [r3, #-1]
00502480  01 30 83 e2                                      add r3, r3, #1
00502484  f1 ff ff 8a                                      bhi #0x502450
00502488  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0050248c  00 00 50 e3                                      cmp r0, #0
00502490  00 00 00 0a                                      beq #0x502498
00502494  e9 37 f8 eb                                      bl #0x310440
00502498  08 00 94 e5                                      ldr r0, [r4, #8]
0050249c  01 10 a0 e3                                      mov r1, #1
005024a0  00 60 a0 e3                                      mov r6, #0
005024a4  01 00 80 e0                                      add r0, r0, r1
005024a8  2f 38 f8 eb                                      bl #0x31056c
005024ac  08 20 94 e5                                      ldr r2, [r4, #8]
005024b0  00 10 a0 e1                                      mov r1, r0
005024b4  0c 00 84 e5                                      str r0, [r4, #0xc]
005024b8  06 30 a0 e1                                      mov r3, r6
005024bc  05 00 a0 e1                                      mov r0, r5
005024c0  e3 53 f8 eb                                      bl #0x317454
005024c4  08 30 94 e5                                      ldr r3, [r4, #8]
005024c8  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005024cc  10 10 84 e2                                      add r1, r4, #0x10
005024d0  05 00 a0 e1                                      mov r0, r5
005024d4  03 60 c2 e7                                      strb r6, [r2, r3]
005024d8  ef 64 ff eb                                      bl #0x4db89c
005024dc  05 00 a0 e1                                      mov r0, r5
005024e0  14 10 84 e2                                      add r1, r4, #0x14
005024e4  2d 73 fb eb                                      bl #0x3df1a0
005024e8  01 30 a0 e3                                      mov r3, #1
005024ec  06 00 53 e1                                      cmp r3, r6
005024f0  04 30 8d e5                                      str r3, [sp, #4]
005024f4  0f 00 00 1a                                      bne #0x502538
005024f8  15 30 84 e2                                      add r3, r4, #0x15
005024fc  16 20 84 e2                                      add r2, r4, #0x16
00502500  01 00 d2 e5                                      ldrb r0, [r2, #1]
00502504  01 10 53 e5                                      ldrb r1, [r3, #-1]
00502508  02 00 53 e1                                      cmp r3, r2
0050250c  01 10 20 e0                                      eor r1, r0, r1
00502510  01 10 43 e5                                      strb r1, [r3, #-1]
00502514  01 00 d2 e5                                      ldrb r0, [r2, #1]
00502518  00 10 21 e0                                      eor r1, r1, r0
0050251c  01 10 c2 e5                                      strb r1, [r2, #1]
00502520  01 00 53 e5                                      ldrb r0, [r3, #-1]
00502524  01 20 42 e2                                      sub r2, r2, #1
00502528  00 10 21 e0                                      eor r1, r1, r0
0050252c  01 10 43 e5                                      strb r1, [r3, #-1]
00502530  01 30 83 e2                                      add r3, r3, #1
00502534  f1 ff ff 3a                                      blo #0x502500
00502538  18 00 94 e5                                      ldr r0, [r4, #0x18]
0050253c  00 00 50 e3                                      cmp r0, #0
00502540  00 00 00 0a                                      beq #0x502548
00502544  bd 37 f8 eb                                      bl #0x310440
00502548  14 00 94 e5                                      ldr r0, [r4, #0x14]
0050254c  01 10 a0 e3                                      mov r1, #1
00502550  00 60 a0 e3                                      mov r6, #0
00502554  01 00 80 e0                                      add r0, r0, r1
00502558  03 38 f8 eb                                      bl #0x31056c
0050255c  14 20 94 e5                                      ldr r2, [r4, #0x14]
00502560  00 10 a0 e1                                      mov r1, r0
00502564  18 00 84 e5                                      str r0, [r4, #0x18]
00502568  06 30 a0 e1                                      mov r3, r6
0050256c  05 00 a0 e1                                      mov r0, r5
00502570  b7 53 f8 eb                                      bl #0x317454
00502574  18 20 94 e5                                      ldr r2, [r4, #0x18]
00502578  14 30 94 e5                                      ldr r3, [r4, #0x14]
0050257c  05 00 a0 e1                                      mov r0, r5
00502580  1c 10 84 e2                                      add r1, r4, #0x1c
00502584  03 60 c2 e7                                      strb r6, [r2, r3]
00502588  c3 64 ff eb                                      bl #0x4db89c
0050258c  08 d0 8d e2                                      add sp, sp, #8
00502590  70 80 bd e8                                      pop {r4, r5, r6, pc}
