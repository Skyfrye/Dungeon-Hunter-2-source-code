; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a6658, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::LevelList
; alias: _ZN6Arrays9LevelList13finalizeNamesEv
; demangled: Arrays::LevelList::finalizeNames()
; decoder-mode: arm
004a6658  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a665c  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a6660  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a6664  05 50 8f e0                                      add r5, pc, r5
004a6668  06 30 95 e7                                      ldr r3, [r5, r6]
004a666c  00 30 93 e5                                      ldr r3, [r3]
004a6670  00 00 53 e3                                      cmp r3, #0
004a6674  1a 00 00 0a                                      beq #0x4a66e4
004a6678  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a667c  07 20 95 e7                                      ldr r2, [r5, r7]
004a6680  00 20 92 e5                                      ldr r2, [r2]
004a6684  00 00 52 e3                                      cmp r2, #0
004a6688  10 00 00 0a                                      beq #0x4a66d0
004a668c  00 40 a0 e3                                      mov r4, #0
004a6690  01 00 00 ea                                      b #0x4a669c
004a6694  06 30 95 e7                                      ldr r3, [r5, r6]
004a6698  00 30 93 e5                                      ldr r3, [r3]
004a669c  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a66a0  01 40 84 e2                                      add r4, r4, #1
004a66a4  00 00 50 e3                                      cmp r0, #0
004a66a8  02 00 00 0a                                      beq #0x4a66b8
004a66ac  63 a7 f9 eb                                      bl #0x310440
004a66b0  06 30 95 e7                                      ldr r3, [r5, r6]
004a66b4  00 30 93 e5                                      ldr r3, [r3]
004a66b8  07 20 95 e7                                      ldr r2, [r5, r7]
004a66bc  00 20 92 e5                                      ldr r2, [r2]
004a66c0  04 00 52 e1                                      cmp r2, r4
004a66c4  f2 ff ff 8a                                      bhi #0x4a6694
004a66c8  00 00 53 e3                                      cmp r3, #0
004a66cc  01 00 00 0a                                      beq #0x4a66d8
004a66d0  03 00 a0 e1                                      mov r0, r3
004a66d4  59 a7 f9 eb                                      bl #0x310440
004a66d8  06 30 95 e7                                      ldr r3, [r5, r6]
004a66dc  00 20 a0 e3                                      mov r2, #0
004a66e0  00 20 83 e5                                      str r2, [r3]
004a66e4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a66e8  2c e4 4e 00 5c 3b 00 00 c0 18 00 00              .byte 0x2c, 0xe4, 0x4e, 0x00, 0x5c, 0x3b, 0x00, 0x00, 0xc0, 0x18, 0x00, 0x00

; FUNCTION 0x004a66f4, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::LevelList
; alias: _ZN6Arrays9LevelList8finalizeEv
; demangled: Arrays::LevelList::finalize()
; decoder-mode: arm
004a66f4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a66f8  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a66fc  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a6700  05 50 8f e0                                      add r5, pc, r5
004a6704  07 30 95 e7                                      ldr r3, [r5, r7]
004a6708  00 30 93 e5                                      ldr r3, [r3]
004a670c  00 00 53 e3                                      cmp r3, #0
004a6710  2c 00 00 0a                                      beq #0x4a67c8
004a6714  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a6718  08 20 95 e7                                      ldr r2, [r5, r8]
004a671c  00 20 92 e5                                      ldr r2, [r2]
004a6720  00 00 52 e3                                      cmp r2, #0
004a6724  12 00 00 0a                                      beq #0x4a6774
004a6728  00 40 a0 e3                                      mov r4, #0
004a672c  04 60 a0 e1                                      mov r6, r4
004a6730  01 00 00 ea                                      b #0x4a673c
004a6734  07 30 95 e7                                      ldr r3, [r5, r7]
004a6738  00 30 93 e5                                      ldr r3, [r3]
004a673c  04 00 83 e0                                      add r0, r3, r4
004a6740  04 30 93 e7                                      ldr r3, [r3, r4]
004a6744  0f e0 a0 e1                                      mov lr, pc
004a6748  08 f0 93 e5                                      ldr pc, [r3, #8]
004a674c  08 30 95 e7                                      ldr r3, [r5, r8]
004a6750  01 60 86 e2                                      add r6, r6, #1
004a6754  48 40 84 e2                                      add r4, r4, #0x48
004a6758  00 30 93 e5                                      ldr r3, [r3]
004a675c  06 00 53 e1                                      cmp r3, r6
004a6760  f3 ff ff 8a                                      bhi #0x4a6734
004a6764  07 30 95 e7                                      ldr r3, [r5, r7]
004a6768  00 30 93 e5                                      ldr r3, [r3]
004a676c  00 00 53 e3                                      cmp r3, #0
004a6770  11 00 00 0a                                      beq #0x4a67bc
004a6774  04 20 13 e5                                      ldr r2, [r3, #-4]
004a6778  48 00 a0 e3                                      mov r0, #0x48
004a677c  90 32 20 e0                                      mla r0, r0, r2, r3
004a6780  00 00 53 e1                                      cmp r3, r0
004a6784  01 00 00 1a                                      bne #0x4a6790
004a6788  09 00 00 ea                                      b #0x4a67b4
004a678c  04 00 a0 e1                                      mov r0, r4
004a6790  48 40 40 e2                                      sub r4, r0, #0x48
004a6794  48 30 10 e5                                      ldr r3, [r0, #-0x48]
004a6798  04 00 a0 e1                                      mov r0, r4
004a679c  0f e0 a0 e1                                      mov lr, pc
004a67a0  00 f0 93 e5                                      ldr pc, [r3]
004a67a4  07 30 95 e7                                      ldr r3, [r5, r7]
004a67a8  00 00 93 e5                                      ldr r0, [r3]
004a67ac  04 00 50 e1                                      cmp r0, r4
004a67b0  f5 ff ff 1a                                      bne #0x4a678c
004a67b4  08 00 40 e2                                      sub r0, r0, #8
004a67b8  20 a7 f9 eb                                      bl #0x310440
004a67bc  07 30 95 e7                                      ldr r3, [r5, r7]
004a67c0  00 20 a0 e3                                      mov r2, #0
004a67c4  00 20 83 e5                                      str r2, [r3]
004a67c8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a67cc  90 e3 4e 00 74 08 00 00 c0 18 00 00              .byte 0x90, 0xe3, 0x4e, 0x00, 0x74, 0x08, 0x00, 0x00, 0xc0, 0x18, 0x00, 0x00

; FUNCTION 0x004b4f28, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::LevelList
; alias: _ZN6Arrays9LevelList9readNamesEP11IStreamBase
; demangled: Arrays::LevelList::readNames(IStreamBase*)
; decoder-mode: arm
004b4f28  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b4f2c  00 70 a0 e1                                      mov r7, r0
004b4f30  1c d0 4d e2                                      sub sp, sp, #0x1c
004b4f34  c7 c5 ff eb                                      bl #0x4a6658
004b4f38  07 00 a0 e1                                      mov r0, r7
004b4f3c  d3 7a f9 eb                                      bl #0x313a90
004b4f40  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b4f44  01 30 a0 e3                                      mov r3, #1
004b4f48  00 00 53 e3                                      cmp r3, #0
004b4f4c  06 60 8f e0                                      add r6, pc, r6
004b4f50  14 00 8d e5                                      str r0, [sp, #0x14]
004b4f54  0c 30 8d e5                                      str r3, [sp, #0xc]
004b4f58  12 00 00 1a                                      bne #0x4b4fa8
004b4f5c  14 30 8d e2                                      add r3, sp, #0x14
004b4f60  02 20 83 e2                                      add r2, r3, #2
004b4f64  01 30 83 e2                                      add r3, r3, #1
004b4f68  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b4f6c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b4f70  03 00 52 e1                                      cmp r2, r3
004b4f74  02 40 a0 e1                                      mov r4, r2
004b4f78  01 10 20 e0                                      eor r1, r0, r1
004b4f7c  01 10 43 e5                                      strb r1, [r3, #-1]
004b4f80  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b4f84  00 10 21 e0                                      eor r1, r1, r0
004b4f88  01 10 c2 e5                                      strb r1, [r2, #1]
004b4f8c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b4f90  01 20 42 e2                                      sub r2, r2, #1
004b4f94  00 10 21 e0                                      eor r1, r1, r0
004b4f98  01 10 43 e5                                      strb r1, [r3, #-1]
004b4f9c  01 30 83 e2                                      add r3, r3, #1
004b4fa0  f0 ff ff 8a                                      bhi #0x4b4f68
004b4fa4  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b4fa8  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b4fac  03 30 96 e7                                      ldr r3, [r6, r3]
004b4fb0  00 30 93 e5                                      ldr r3, [r3]
004b4fb4  00 00 53 e1                                      cmp r3, r0
004b4fb8  01 00 00 0a                                      beq #0x4b4fc4
004b4fbc  1c d0 8d e2                                      add sp, sp, #0x1c
004b4fc0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b4fc4  00 01 a0 e1                                      lsl r0, r0, #2
004b4fc8  01 10 a0 e3                                      mov r1, #1
004b4fcc  66 6d f9 eb                                      bl #0x31056c
004b4fd0  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b4fd4  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b4fd8  09 30 96 e7                                      ldr r3, [r6, sb]
004b4fdc  00 00 52 e3                                      cmp r2, #0
004b4fe0  00 00 83 e5                                      str r0, [r3]
004b4fe4  f4 ff ff 0a                                      beq #0x4b4fbc
004b4fe8  10 a0 8d e2                                      add sl, sp, #0x10
004b4fec  01 80 a0 e3                                      mov r8, #1
004b4ff0  08 10 8a e0                                      add r1, sl, r8
004b4ff4  02 30 8a e2                                      add r3, sl, #2
004b4ff8  00 40 a0 e3                                      mov r4, #0
004b4ffc  0a 00 8d e8                                      stm sp, {r1, r3}
004b5000  07 00 a0 e1                                      mov r0, r7
004b5004  0a 10 a0 e1                                      mov r1, sl
004b5008  64 a8 fc eb                                      bl #0x3df1a0
004b500c  00 00 58 e3                                      cmp r8, #0
004b5010  0c 80 8d e5                                      str r8, [sp, #0xc]
004b5014  0f 00 00 1a                                      bne #0x4b5058
004b5018  00 30 9d e5                                      ldr r3, [sp]
004b501c  04 20 9d e5                                      ldr r2, [sp, #4]
004b5020  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b5024  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b5028  03 00 52 e1                                      cmp r2, r3
004b502c  01 10 20 e0                                      eor r1, r0, r1
004b5030  01 10 43 e5                                      strb r1, [r3, #-1]
004b5034  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b5038  00 10 21 e0                                      eor r1, r1, r0
004b503c  01 10 c2 e5                                      strb r1, [r2, #1]
004b5040  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b5044  01 20 42 e2                                      sub r2, r2, #1
004b5048  00 10 21 e0                                      eor r1, r1, r0
004b504c  01 10 43 e5                                      strb r1, [r3, #-1]
004b5050  01 30 83 e2                                      add r3, r3, #1
004b5054  f1 ff ff 8a                                      bhi #0x4b5020
004b5058  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b505c  09 50 96 e7                                      ldr r5, [r6, sb]
004b5060  01 10 a0 e3                                      mov r1, #1
004b5064  01 00 80 e0                                      add r0, r0, r1
004b5068  00 b0 95 e5                                      ldr fp, [r5]
004b506c  3e 6d f9 eb                                      bl #0x31056c
004b5070  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b5074  00 30 95 e5                                      ldr r3, [r5]
004b5078  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b507c  07 00 a0 e1                                      mov r0, r7
004b5080  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b5084  00 30 a0 e3                                      mov r3, #0
004b5088  f1 88 f9 eb                                      bl #0x317454
004b508c  00 30 95 e5                                      ldr r3, [r5]
004b5090  00 10 a0 e3                                      mov r1, #0
004b5094  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b5098  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b509c  01 40 84 e2                                      add r4, r4, #1
004b50a0  03 10 c2 e7                                      strb r1, [r2, r3]
004b50a4  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b50a8  04 00 53 e1                                      cmp r3, r4
004b50ac  d3 ff ff 8a                                      bhi #0x4b5000
004b50b0  c1 ff ff ea                                      b #0x4b4fbc
; mapping-symbol data/literal pool
004b50b4  44 fb 4d 00 c0 18 00 00 5c 3b 00 00              .byte 0x44, 0xfb, 0x4d, 0x00, 0xc0, 0x18, 0x00, 0x00, 0x5c, 0x3b, 0x00, 0x00

; FUNCTION 0x004ba794, declared_size=336, range_size=336, mode=arm
; class-group: Arrays::LevelList
; alias: _ZN6Arrays9LevelList4readEP11IStreamBase
; demangled: Arrays::LevelList::read(IStreamBase*)
; decoder-mode: arm
004ba794  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004ba798  0c d0 4d e2                                      sub sp, sp, #0xc
004ba79c  00 a0 a0 e1                                      mov sl, r0
004ba7a0  ba 64 f9 eb                                      bl #0x313a90
004ba7a4  28 61 9f e5                                      ldr r6, [pc, #0x128]
004ba7a8  01 30 a0 e3                                      mov r3, #1
004ba7ac  00 00 53 e3                                      cmp r3, #0
004ba7b0  04 00 8d e5                                      str r0, [sp, #4]
004ba7b4  00 30 8d e5                                      str r3, [sp]
004ba7b8  06 60 8f e0                                      add r6, pc, r6
004ba7bc  10 00 00 1a                                      bne #0x4ba804
004ba7c0  04 30 8d e2                                      add r3, sp, #4
004ba7c4  02 20 83 e2                                      add r2, r3, #2
004ba7c8  01 30 83 e2                                      add r3, r3, #1
004ba7cc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ba7d0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ba7d4  03 00 52 e1                                      cmp r2, r3
004ba7d8  01 10 20 e0                                      eor r1, r0, r1
004ba7dc  01 10 43 e5                                      strb r1, [r3, #-1]
004ba7e0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ba7e4  00 10 21 e0                                      eor r1, r1, r0
004ba7e8  01 10 c2 e5                                      strb r1, [r2, #1]
004ba7ec  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ba7f0  01 20 42 e2                                      sub r2, r2, #1
004ba7f4  00 10 21 e0                                      eor r1, r1, r0
004ba7f8  01 10 43 e5                                      strb r1, [r3, #-1]
004ba7fc  01 30 83 e2                                      add r3, r3, #1
004ba800  f1 ff ff 8a                                      bhi #0x4ba7cc
004ba804  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004ba808  b9 af ff eb                                      bl #0x4a66f4
004ba80c  04 40 9d e5                                      ldr r4, [sp, #4]
004ba810  07 30 96 e7                                      ldr r3, [r6, r7]
004ba814  01 10 a0 e3                                      mov r1, #1
004ba818  84 01 84 e0                                      add r0, r4, r4, lsl #3
004ba81c  01 00 80 e0                                      add r0, r0, r1
004ba820  00 40 83 e5                                      str r4, [r3]
004ba824  80 01 a0 e1                                      lsl r0, r0, #3
004ba828  4f 57 f9 eb                                      bl #0x31056c
004ba82c  48 30 a0 e3                                      mov r3, #0x48
004ba830  00 00 54 e3                                      cmp r4, #0
004ba834  18 00 80 e8                                      stm r0, {r3, r4}
004ba838  08 30 80 e2                                      add r3, r0, #8
004ba83c  0b 00 00 0a                                      beq #0x4ba870
004ba840  94 10 9f e5                                      ldr r1, [pc, #0x94]
004ba844  00 20 a0 e3                                      mov r2, #0
004ba848  01 c0 96 e7                                      ldr ip, [r6, r1]
004ba84c  02 10 a0 e1                                      mov r1, r2
004ba850  08 c0 8c e2                                      add ip, ip, #8
004ba854  01 20 82 e2                                      add r2, r2, #1
004ba858  04 00 52 e1                                      cmp r2, r4
004ba85c  08 c0 80 e5                                      str ip, [r0, #8]
004ba860  14 10 80 e5                                      str r1, [r0, #0x14]
004ba864  28 10 80 e5                                      str r1, [r0, #0x28]
004ba868  48 00 80 e2                                      add r0, r0, #0x48
004ba86c  f8 ff ff 1a                                      bne #0x4ba854
004ba870  07 20 96 e7                                      ldr r2, [r6, r7]
004ba874  64 80 9f e5                                      ldr r8, [pc, #0x64]
004ba878  00 10 92 e5                                      ldr r1, [r2]
004ba87c  08 20 96 e7                                      ldr r2, [r6, r8]
004ba880  00 00 51 e3                                      cmp r1, #0
004ba884  00 30 82 e5                                      str r3, [r2]
004ba888  0f 00 00 0a                                      beq #0x4ba8cc
004ba88c  00 40 a0 e3                                      mov r4, #0
004ba890  04 50 a0 e1                                      mov r5, r4
004ba894  01 00 00 ea                                      b #0x4ba8a0
004ba898  08 30 96 e7                                      ldr r3, [r6, r8]
004ba89c  00 30 93 e5                                      ldr r3, [r3]
004ba8a0  04 00 83 e0                                      add r0, r3, r4
004ba8a4  0a 10 a0 e1                                      mov r1, sl
004ba8a8  04 30 93 e7                                      ldr r3, [r3, r4]
004ba8ac  0f e0 a0 e1                                      mov lr, pc
004ba8b0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004ba8b4  07 30 96 e7                                      ldr r3, [r6, r7]
004ba8b8  01 50 85 e2                                      add r5, r5, #1
004ba8bc  48 40 84 e2                                      add r4, r4, #0x48
004ba8c0  00 30 93 e5                                      ldr r3, [r3]
004ba8c4  05 00 53 e1                                      cmp r3, r5
004ba8c8  f2 ff ff 8a                                      bhi #0x4ba898
004ba8cc  0c d0 8d e2                                      add sp, sp, #0xc
004ba8d0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004ba8d4  d8 a2 4d 00 c0 18 00 00 38 34 00 00 74 08 00 00  .byte 0xd8, 0xa2, 0x4d, 0x00, 0xc0, 0x18, 0x00, 0x00, 0x38, 0x34, 0x00, 0x00, 0x74, 0x08, 0x00, 0x00
