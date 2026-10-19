; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003c007c, declared_size=4, range_size=4, mode=arm
; class-group: CSInteract
; alias: _ZN10CSInteractD1Ev
; demangled: CSInteract::~CSInteract()
; decoder-mode: arm
003c007c  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c0080, declared_size=4, range_size=4, mode=arm
; class-group: CSInteract
; alias: _ZN10CSInteract8OnUpdateEiP9CharacterP16CharStateMachine
; demangled: CSInteract::OnUpdate(int, Character*, CharStateMachine*)
; decoder-mode: arm
003c0080  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c07f0, declared_size=52, range_size=52, mode=arm
; class-group: CSInteract
; alias: _ZN10CSInteractD0Ev
; demangled: CSInteract::~CSInteract()
; decoder-mode: arm
003c07f0  24 30 9f e5                                      ldr r3, [pc, #0x24]
003c07f4  24 20 9f e5                                      ldr r2, [pc, #0x24]
003c07f8  10 40 2d e9                                      push {r4, lr}
003c07fc  03 30 8f e0                                      add r3, pc, r3
003c0800  02 20 93 e7                                      ldr r2, [r3, r2]
003c0804  00 40 a0 e1                                      mov r4, r0
003c0808  08 20 82 e2                                      add r2, r2, #8
003c080c  00 20 80 e5                                      str r2, [r0]
003c0810  0a 3f fd eb                                      bl #0x310440
003c0814  04 00 a0 e1                                      mov r0, r4
003c0818  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003c081c  94 42 5d 00 08 2a 00 00                          .byte 0x94, 0x42, 0x5d, 0x00, 0x08, 0x2a, 0x00, 0x00

; FUNCTION 0x003c1558, declared_size=168, range_size=168, mode=arm
; class-group: CSInteract
; alias: _ZN10CSInteract7OnEventEiP9CharacterP16CharStateMachineiPv
; demangled: CSInteract::OnEvent(int, Character*, CharStateMachine*, int, void*)
; decoder-mode: arm
003c1558  70 40 2d e9                                      push {r4, r5, r6, lr}
003c155c  10 30 9d e5                                      ldr r3, [sp, #0x10]
003c1560  02 40 a0 e1                                      mov r4, r2
003c1564  14 50 9d e5                                      ldr r5, [sp, #0x14]
003c1568  28 00 53 e3                                      cmp r3, #0x28
003c156c  00 00 00 0a                                      beq #0x3c1574
003c1570  70 80 bd e8                                      pop {r4, r5, r6, pc}
003c1574  4c 65 92 e5                                      ldr r6, [r2, #0x54c]
003c1578  00 00 56 e3                                      cmp r6, #0
003c157c  fb ff ff 0a                                      beq #0x3c1570
003c1580  70 10 9f e5                                      ldr r1, [pc, #0x70]
003c1584  05 00 a0 e1                                      mov r0, r5
003c1588  01 10 8f e0                                      add r1, pc, r1
003c158c  62 33 fd eb                                      bl #0x30e31c
003c1590  00 00 50 e3                                      cmp r0, #0
003c1594  07 00 00 1a                                      bne #0x3c15b8
003c1598  f4 30 96 e5                                      ldr r3, [r6, #0xf4]
003c159c  06 00 53 e3                                      cmp r3, #6
003c15a0  01 00 00 1a                                      bne #0x3c15ac
003c15a4  06 00 a0 e1                                      mov r0, r6
003c15a8  ae b3 00 eb                                      bl #0x3ee468
003c15ac  00 30 a0 e3                                      mov r3, #0
003c15b0  4c 35 84 e5                                      str r3, [r4, #0x54c]
003c15b4  70 80 bd e8                                      pop {r4, r5, r6, pc}
003c15b8  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
003c15bc  05 00 a0 e1                                      mov r0, r5
003c15c0  01 10 8f e0                                      add r1, pc, r1
003c15c4  54 33 fd eb                                      bl #0x30e31c
003c15c8  00 00 50 e3                                      cmp r0, #0
003c15cc  e7 ff ff 1a                                      bne #0x3c1570
003c15d0  f4 30 96 e5                                      ldr r3, [r6, #0xf4]
003c15d4  06 00 53 e3                                      cmp r3, #6
003c15d8  e4 ff ff 1a                                      bne #0x3c1570
003c15dc  06 00 a0 e1                                      mov r0, r6
003c15e0  04 10 a0 e1                                      mov r1, r4
003c15e4  04 b4 00 eb                                      bl #0x3ee5fc
003c15e8  00 00 50 e3                                      cmp r0, #0
003c15ec  00 30 e0 03                                      mvneq r3, #0
003c15f0  44 35 84 05                                      streq r3, [r4, #0x544]
003c15f4  dd ff ff ea                                      b #0x3c1570
; mapping-symbol data/literal pool
003c15f8  50 36 50 00 20 36 50 00                          .byte 0x50, 0x36, 0x50, 0x00, 0x20, 0x36, 0x50, 0x00

; FUNCTION 0x003c4f8c, declared_size=296, range_size=296, mode=arm
; class-group: CSInteract
; alias: _ZN10CSInteract6OnBlurEiP9CharacterP16CharStateMachinei
; demangled: CSInteract::OnBlur(int, Character*, CharStateMachine*, int)
; decoder-mode: arm
003c4f8c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003c4f90  0c 41 9f e5                                      ldr r4, [pc, #0x10c]
003c4f94  0c 71 9f e5                                      ldr r7, [pc, #0x10c]
003c4f98  0c 11 9f e5                                      ldr r1, [pc, #0x10c]
003c4f9c  04 40 8f e0                                      add r4, pc, r4
003c4fa0  07 30 94 e7                                      ldr r3, [r4, r7]
003c4fa4  01 80 94 e7                                      ldr r8, [r4, r1]
003c4fa8  24 d0 4d e2                                      sub sp, sp, #0x24
003c4fac  00 30 93 e5                                      ldr r3, [r3]
003c4fb0  08 00 a0 e1                                      mov r0, r8
003c4fb4  02 50 a0 e1                                      mov r5, r2
003c4fb8  1c 30 8d e5                                      str r3, [sp, #0x1c]
003c4fbc  40 a0 9d e5                                      ldr sl, [sp, #0x40]
003c4fc0  30 ca fd eb                                      bl #0x337888
003c4fc4  e4 10 9f e5                                      ldr r1, [pc, #0xe4]
003c4fc8  04 60 8d e2                                      add r6, sp, #4
003c4fcc  0d 20 a0 e1                                      mov r2, sp
003c4fd0  01 10 8f e0                                      add r1, pc, r1
003c4fd4  06 00 a0 e1                                      mov r0, r6
003c4fd8  43 3c fd eb                                      bl #0x3140ec
003c4fdc  06 10 a0 e1                                      mov r1, r6
003c4fe0  08 00 a0 e1                                      mov r0, r8
003c4fe4  a7 ca fd eb                                      bl #0x337a88
003c4fe8  06 00 a0 e1                                      mov r0, r6
003c4fec  98 4c fd eb                                      bl #0x318254
003c4ff0  05 00 a0 e1                                      mov r0, r5
003c4ff4  5c 78 ff eb                                      bl #0x3a316c
003c4ff8  00 00 50 e3                                      cmp r0, #0
003c4ffc  14 00 00 0a                                      beq #0x3c5054
003c5000  44 35 95 e5                                      ldr r3, [r5, #0x544]
003c5004  04 30 43 e2                                      sub r3, r3, #4
003c5008  01 00 53 e3                                      cmp r3, #1
003c500c  09 00 00 8a                                      bhi #0x3c5038
003c5010  13 00 5a e3                                      cmp sl, #0x13
003c5014  17 00 00 9a                                      bls #0x3c5078
003c5018  4c 05 95 e5                                      ldr r0, [r5, #0x54c]
003c501c  00 00 50 e3                                      cmp r0, #0
003c5020  04 00 00 0a                                      beq #0x3c5038
003c5024  f4 30 90 e5                                      ldr r3, [r0, #0xf4]
003c5028  06 00 53 e3                                      cmp r3, #6
003c502c  16 00 00 0a                                      beq #0x3c508c
003c5030  00 30 a0 e3                                      mov r3, #0
003c5034  4c 35 85 e5                                      str r3, [r5, #0x54c]
003c5038  07 30 94 e7                                      ldr r3, [r4, r7]
003c503c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003c5040  00 30 93 e5                                      ldr r3, [r3]
003c5044  03 00 52 e1                                      cmp r2, r3
003c5048  14 00 00 1a                                      bne #0x3c50a0
003c504c  24 d0 8d e2                                      add sp, sp, #0x24
003c5050  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003c5054  05 00 a0 e1                                      mov r0, r5
003c5058  2b 78 ff eb                                      bl #0x3a310c
003c505c  00 00 50 e3                                      cmp r0, #0
003c5060  e6 ff ff 0a                                      beq #0x3c5000
003c5064  51 1d 85 e2                                      add r1, r5, #0x1440
003c5068  1c 10 81 e2                                      add r1, r1, #0x1c
003c506c  05 00 a0 e1                                      mov r0, r5
003c5070  0a 3a ff eb                                      bl #0x3938a0
003c5074  e1 ff ff ea                                      b #0x3c5000
003c5078  01 30 a0 e3                                      mov r3, #1
003c507c  13 aa a0 e1                                      lsl sl, r3, sl
003c5080  c2 0a 1a e3                                      tst sl, #0xc2000
003c5084  eb ff ff 1a                                      bne #0x3c5038
003c5088  e2 ff ff ea                                      b #0x3c5018
003c508c  90 33 90 e5                                      ldr r3, [r0, #0x390]
003c5090  05 00 53 e1                                      cmp r3, r5
003c5094  e5 ff ff 1a                                      bne #0x3c5030
003c5098  42 a5 00 eb                                      bl #0x3ee5a8
003c509c  e3 ff ff ea                                      b #0x3c5030
003c50a0  9a 24 fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c50a4  f4 fa 5c 00 ac 40 00 00 84 08 00 00 80 fe 4f 00  .byte 0xf4, 0xfa, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x80, 0xfe, 0x4f, 0x00

; FUNCTION 0x003c5548, declared_size=316, range_size=316, mode=arm
; class-group: CSInteract
; alias: _ZN10CSInteract7OnFocusEiP9CharacterP16CharStateMachineiiPv
; demangled: CSInteract::OnFocus(int, Character*, CharStateMachine*, int, int, void*)
; decoder-mode: arm
003c5548  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003c554c  1c 41 9f e5                                      ldr r4, [pc, #0x11c]
003c5550  1c 81 9f e5                                      ldr r8, [pc, #0x11c]
003c5554  1c 11 9f e5                                      ldr r1, [pc, #0x11c]
003c5558  04 40 8f e0                                      add r4, pc, r4
003c555c  08 30 94 e7                                      ldr r3, [r4, r8]
003c5560  01 60 94 e7                                      ldr r6, [r4, r1]
003c5564  44 d0 4d e2                                      sub sp, sp, #0x44
003c5568  00 30 93 e5                                      ldr r3, [r3]
003c556c  06 00 a0 e1                                      mov r0, r6
003c5570  02 50 a0 e1                                      mov r5, r2
003c5574  3c 30 8d e5                                      str r3, [sp, #0x3c]
003c5578  68 a0 9d e5                                      ldr sl, [sp, #0x68]
003c557c  c1 c8 fd eb                                      bl #0x337888
003c5580  f4 10 9f e5                                      ldr r1, [pc, #0xf4]
003c5584  24 70 8d e2                                      add r7, sp, #0x24
003c5588  08 20 8d e2                                      add r2, sp, #8
003c558c  01 10 8f e0                                      add r1, pc, r1
003c5590  07 00 a0 e1                                      mov r0, r7
003c5594  d4 3a fd eb                                      bl #0x3140ec
003c5598  07 10 a0 e1                                      mov r1, r7
003c559c  06 00 a0 e1                                      mov r0, r6
003c55a0  38 c9 fd eb                                      bl #0x337a88
003c55a4  07 00 a0 e1                                      mov r0, r7
003c55a8  29 4b fd eb                                      bl #0x318254
003c55ac  06 00 a0 e1                                      mov r0, r6
003c55b0  b4 c8 fd eb                                      bl #0x337888
003c55b4  c4 10 9f e5                                      ldr r1, [pc, #0xc4]
003c55b8  0c 70 8d e2                                      add r7, sp, #0xc
003c55bc  04 20 8d e2                                      add r2, sp, #4
003c55c0  01 10 8f e0                                      add r1, pc, r1
003c55c4  07 00 a0 e1                                      mov r0, r7
003c55c8  c7 3a fd eb                                      bl #0x3140ec
003c55cc  07 10 a0 e1                                      mov r1, r7
003c55d0  06 00 a0 e1                                      mov r0, r6
003c55d4  2b c9 fd eb                                      bl #0x337a88
003c55d8  07 00 a0 e1                                      mov r0, r7
003c55dc  1c 4b fd eb                                      bl #0x318254
003c55e0  05 00 a0 e1                                      mov r0, r5
003c55e4  9e 76 ff eb                                      bl #0x3a3064
003c55e8  00 00 50 e3                                      cmp r0, #0
003c55ec  19 00 00 1a                                      bne #0x3c5658
003c55f0  c1 33 06 e3                                      movw r3, #0x63c1
003c55f4  4f 0e 85 e2                                      add r0, r5, #0x4f0
003c55f8  20 35 85 e5                                      str r3, [r5, #0x520]
003c55fc  0c 00 80 e2                                      add r0, r0, #0xc
003c5600  00 10 e0 e3                                      mvn r1, #0
003c5604  51 ed ff eb                                      bl #0x3c0b50
003c5608  05 00 a0 e1                                      mov r0, r5
003c560c  d6 76 ff eb                                      bl #0x3a316c
003c5610  00 00 50 e3                                      cmp r0, #0
003c5614  08 00 00 0a                                      beq #0x3c563c
003c5618  05 00 a0 e1                                      mov r0, r5
003c561c  25 dc ff eb                                      bl #0x3bc6b8
003c5620  08 30 94 e7                                      ldr r3, [r4, r8]
003c5624  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
003c5628  00 30 93 e5                                      ldr r3, [r3]
003c562c  03 00 52 e1                                      cmp r2, r3
003c5630  0d 00 00 1a                                      bne #0x3c566c
003c5634  44 d0 8d e2                                      add sp, sp, #0x44
003c5638  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003c563c  48 35 d5 e5                                      ldrb r3, [r5, #0x548]
003c5640  00 00 53 e3                                      cmp r3, #0
003c5644  f3 ff ff 0a                                      beq #0x3c5618
003c5648  0a 10 a0 e1                                      mov r1, sl
003c564c  78 03 95 e5                                      ldr r0, [r5, #0x378]
003c5650  19 ff 00 eb                                      bl #0x4052bc
003c5654  ef ff ff ea                                      b #0x3c5618
003c5658  4f 0e 85 e2                                      add r0, r5, #0x4f0
003c565c  0c 00 80 e2                                      add r0, r0, #0xc
003c5660  00 10 a0 e3                                      mov r1, #0
003c5664  e5 f0 ff eb                                      bl #0x3c1a00
003c5668  ec ff ff ea                                      b #0x3c5620
003c566c  27 23 fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c5670  38 f5 5c 00 ac 40 00 00 84 08 00 00 c4 f8 4f 00  .byte 0x38, 0xf5, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xc4, 0xf8, 0x4f, 0x00
003c5680  58 f9 4f 00                                      .byte 0x58, 0xf9, 0x4f, 0x00

; FUNCTION 0x003c8984, declared_size=420, range_size=420, mode=arm
; class-group: CSInteract
; alias: _ZN10CSInteract6OnInitEiP9CharacterP16CharStateMachine
; demangled: CSInteract::OnInit(int, Character*, CharStateMachine*)
; decoder-mode: arm
003c8984  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003c8988  8c 71 9f e5                                      ldr r7, [pc, #0x18c]
003c898c  8c 31 9f e5                                      ldr r3, [pc, #0x18c]
003c8990  4f 5e 82 e2                                      add r5, r2, #0x4f0
003c8994  07 70 8f e0                                      add r7, pc, r7
003c8998  03 c0 97 e7                                      ldr ip, [r7, r3]
003c899c  0c 50 85 e2                                      add r5, r5, #0xc
003c89a0  5c d0 4d e2                                      sub sp, sp, #0x5c
003c89a4  00 40 a0 e3                                      mov r4, #0
003c89a8  01 60 a0 e1                                      mov r6, r1
003c89ac  05 00 a0 e1                                      mov r0, r5
003c89b0  22 20 a0 e3                                      mov r2, #0x22
003c89b4  03 30 a0 e3                                      mov r3, #3
003c89b8  00 c0 8d e5                                      str ip, [sp]
003c89bc  50 c0 8d e5                                      str ip, [sp, #0x50]
003c89c0  54 40 8d e5                                      str r4, [sp, #0x54]
003c89c4  04 40 8d e5                                      str r4, [sp, #4]
003c89c8  52 fc ff eb                                      bl #0x3c7b18
003c89cc  05 00 a0 e1                                      mov r0, r5
003c89d0  06 10 a0 e1                                      mov r1, r6
003c89d4  58 23 0c e3                                      movw r2, #0xc358
003c89d8  0c 30 a0 e3                                      mov r3, #0xc
003c89dc  48 40 8d e5                                      str r4, [sp, #0x48]
003c89e0  4c 40 8d e5                                      str r4, [sp, #0x4c]
003c89e4  00 40 8d e5                                      str r4, [sp]
003c89e8  04 40 8d e5                                      str r4, [sp, #4]
003c89ec  49 fc ff eb                                      bl #0x3c7b18
003c89f0  05 00 a0 e1                                      mov r0, r5
003c89f4  06 10 a0 e1                                      mov r1, r6
003c89f8  5a 23 0c e3                                      movw r2, #0xc35a
003c89fc  0b 30 a0 e3                                      mov r3, #0xb
003c8a00  40 40 8d e5                                      str r4, [sp, #0x40]
003c8a04  44 40 8d e5                                      str r4, [sp, #0x44]
003c8a08  00 40 8d e5                                      str r4, [sp]
003c8a0c  04 40 8d e5                                      str r4, [sp, #4]
003c8a10  40 fc ff eb                                      bl #0x3c7b18
003c8a14  05 00 a0 e1                                      mov r0, r5
003c8a18  06 10 a0 e1                                      mov r1, r6
003c8a1c  5b 23 0c e3                                      movw r2, #0xc35b
003c8a20  0a 30 a0 e3                                      mov r3, #0xa
003c8a24  38 40 8d e5                                      str r4, [sp, #0x38]
003c8a28  3c 40 8d e5                                      str r4, [sp, #0x3c]
003c8a2c  00 40 8d e5                                      str r4, [sp]
003c8a30  04 40 8d e5                                      str r4, [sp, #4]
003c8a34  37 fc ff eb                                      bl #0x3c7b18
003c8a38  05 00 a0 e1                                      mov r0, r5
003c8a3c  06 10 a0 e1                                      mov r1, r6
003c8a40  5c 23 0c e3                                      movw r2, #0xc35c
003c8a44  09 30 a0 e3                                      mov r3, #9
003c8a48  30 40 8d e5                                      str r4, [sp, #0x30]
003c8a4c  34 40 8d e5                                      str r4, [sp, #0x34]
003c8a50  00 40 8d e5                                      str r4, [sp]
003c8a54  04 40 8d e5                                      str r4, [sp, #4]
003c8a58  2e fc ff eb                                      bl #0x3c7b18
003c8a5c  05 00 a0 e1                                      mov r0, r5
003c8a60  06 10 a0 e1                                      mov r1, r6
003c8a64  5d 23 0c e3                                      movw r2, #0xc35d
003c8a68  08 30 a0 e3                                      mov r3, #8
003c8a6c  28 40 8d e5                                      str r4, [sp, #0x28]
003c8a70  2c 40 8d e5                                      str r4, [sp, #0x2c]
003c8a74  00 40 8d e5                                      str r4, [sp]
003c8a78  04 40 8d e5                                      str r4, [sp, #4]
003c8a7c  25 fc ff eb                                      bl #0x3c7b18
003c8a80  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
003c8a84  05 00 a0 e1                                      mov r0, r5
003c8a88  06 10 a0 e1                                      mov r1, r6
003c8a8c  03 70 97 e7                                      ldr r7, [r7, r3]
003c8a90  55 23 0c e3                                      movw r2, #0xc355
003c8a94  06 30 a0 e3                                      mov r3, #6
003c8a98  20 70 8d e5                                      str r7, [sp, #0x20]
003c8a9c  24 40 8d e5                                      str r4, [sp, #0x24]
003c8aa0  00 70 8d e5                                      str r7, [sp]
003c8aa4  04 40 8d e5                                      str r4, [sp, #4]
003c8aa8  1a fc ff eb                                      bl #0x3c7b18
003c8aac  05 00 a0 e1                                      mov r0, r5
003c8ab0  06 10 a0 e1                                      mov r1, r6
003c8ab4  51 23 0c e3                                      movw r2, #0xc351
003c8ab8  04 30 a0 e3                                      mov r3, #4
003c8abc  18 70 8d e5                                      str r7, [sp, #0x18]
003c8ac0  1c 40 8d e5                                      str r4, [sp, #0x1c]
003c8ac4  00 70 8d e5                                      str r7, [sp]
003c8ac8  04 40 8d e5                                      str r4, [sp, #4]
003c8acc  11 fc ff eb                                      bl #0x3c7b18
003c8ad0  05 00 a0 e1                                      mov r0, r5
003c8ad4  06 10 a0 e1                                      mov r1, r6
003c8ad8  52 23 0c e3                                      movw r2, #0xc352
003c8adc  03 30 a0 e3                                      mov r3, #3
003c8ae0  10 70 8d e5                                      str r7, [sp, #0x10]
003c8ae4  14 40 8d e5                                      str r4, [sp, #0x14]
003c8ae8  00 70 8d e5                                      str r7, [sp]
003c8aec  04 40 8d e5                                      str r4, [sp, #4]
003c8af0  08 fc ff eb                                      bl #0x3c7b18
003c8af4  05 00 a0 e1                                      mov r0, r5
003c8af8  06 10 a0 e1                                      mov r1, r6
003c8afc  57 23 0c e3                                      movw r2, #0xc357
003c8b00  0f 30 a0 e3                                      mov r3, #0xf
003c8b04  00 70 8d e5                                      str r7, [sp]
003c8b08  90 00 8d e9                                      stmib sp, {r4, r7}
003c8b0c  0c 40 8d e5                                      str r4, [sp, #0xc]
003c8b10  00 fc ff eb                                      bl #0x3c7b18
003c8b14  5c d0 8d e2                                      add sp, sp, #0x5c
003c8b18  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
003c8b1c  fc c0 5c 00 94 48 00 00 70 0d 00 00              .byte 0xfc, 0xc0, 0x5c, 0x00, 0x94, 0x48, 0x00, 0x00, 0x70, 0x0d, 0x00, 0x00
