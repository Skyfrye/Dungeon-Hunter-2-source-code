; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00527560, declared_size=256, range_size=256, mode=arm
; class-group: std::deque<PFObject*, std::allocator<PFObject*> >& std::map<PFFloor*, std::deque<PFObject*, std::allocator<PFObject*> >, std::less<PFFloor*>, std::allocator<std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > > > >
; alias: _ZNSt3mapIP7PFFloorSt5dequeIP8PFObjectSaIS4_EESt4lessIS1_ESaISt4pairIKS1_S6_EEEixIS1_EERS6_RKT_
; demangled: std::deque<PFObject*, std::allocator<PFObject*> >& std::map<PFFloor*, std::deque<PFObject*, std::allocator<PFObject*> >, std::less<PFFloor*>, std::allocator<std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > > > >::operator[]<PFFloor*>(PFFloor* const&)
; decoder-mode: arm
00527560  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00527564  04 40 90 e5                                      ldr r4, [r0, #4]
00527568  60 d0 4d e2                                      sub sp, sp, #0x60
0052756c  00 70 a0 e1                                      mov r7, r0
00527570  00 00 54 e3                                      cmp r4, #0
00527574  01 60 a0 e1                                      mov r6, r1
00527578  00 40 a0 01                                      moveq r4, r0
0052757c  0b 00 00 0a                                      beq #0x5275b0
00527580  00 10 91 e5                                      ldr r1, [r1]
00527584  00 20 a0 e1                                      mov r2, r0
00527588  00 00 00 ea                                      b #0x527590
0052758c  03 40 a0 e1                                      mov r4, r3
00527590  10 30 94 e5                                      ldr r3, [r4, #0x10]
00527594  03 00 51 e1                                      cmp r1, r3
00527598  0c 30 94 85                                      ldrhi r3, [r4, #0xc]
0052759c  08 30 94 95                                      ldrls r3, [r4, #8]
005275a0  02 40 a0 81                                      movhi r4, r2
005275a4  04 20 a0 e1                                      mov r2, r4
005275a8  00 00 53 e3                                      cmp r3, #0
005275ac  f6 ff ff 1a                                      bne #0x52758c
005275b0  04 00 57 e1                                      cmp r7, r4
005275b4  04 00 00 0a                                      beq #0x5275cc
005275b8  00 20 96 e5                                      ldr r2, [r6]
005275bc  10 30 94 e5                                      ldr r3, [r4, #0x10]
005275c0  04 00 a0 e1                                      mov r0, r4
005275c4  03 00 52 e1                                      cmp r2, r3
005275c8  21 00 00 2a                                      bhs #0x527654
005275cc  00 30 a0 e3                                      mov r3, #0
005275d0  30 50 8d e2                                      add r5, sp, #0x30
005275d4  03 10 a0 e1                                      mov r1, r3
005275d8  05 00 a0 e1                                      mov r0, r5
005275dc  30 30 8d e5                                      str r3, [sp, #0x30]
005275e0  34 30 8d e5                                      str r3, [sp, #0x34]
005275e4  38 30 8d e5                                      str r3, [sp, #0x38]
005275e8  3c 30 8d e5                                      str r3, [sp, #0x3c]
005275ec  40 30 8d e5                                      str r3, [sp, #0x40]
005275f0  44 30 8d e5                                      str r3, [sp, #0x44]
005275f4  48 30 8d e5                                      str r3, [sp, #0x48]
005275f8  4c 30 8d e5                                      str r3, [sp, #0x4c]
005275fc  50 30 8d e5                                      str r3, [sp, #0x50]
00527600  54 30 8d e5                                      str r3, [sp, #0x54]
00527604  e3 fd ff eb                                      bl #0x526d98
00527608  00 30 96 e5                                      ldr r3, [r6]
0052760c  60 80 8d e2                                      add r8, sp, #0x60
00527610  05 10 a0 e1                                      mov r1, r5
00527614  5c 30 28 e5                                      str r3, [r8, #-0x5c]!
00527618  04 60 88 e2                                      add r6, r8, #4
0052761c  06 00 a0 e1                                      mov r0, r6
00527620  07 fe ff eb                                      bl #0x526e44
00527624  07 10 a0 e1                                      mov r1, r7
00527628  08 30 a0 e1                                      mov r3, r8
0052762c  58 20 8d e2                                      add r2, sp, #0x58
00527630  5c 00 8d e2                                      add r0, sp, #0x5c
00527634  58 40 8d e5                                      str r4, [sp, #0x58]
00527638  eb fe ff eb                                      bl #0x5271ec
0052763c  5c 40 9d e5                                      ldr r4, [sp, #0x5c]
00527640  06 00 a0 e1                                      mov r0, r6
00527644  f0 ef ff eb                                      bl #0x52360c
00527648  05 00 a0 e1                                      mov r0, r5
0052764c  ee ef ff eb                                      bl #0x52360c
00527650  04 00 a0 e1                                      mov r0, r4
00527654  14 00 80 e2                                      add r0, r0, #0x14
00527658  60 d0 8d e2                                      add sp, sp, #0x60
0052765c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
