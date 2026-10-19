; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a3b08, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::GameObjectDict
; alias: _ZN6Arrays14GameObjectDict13finalizeNamesEv
; demangled: Arrays::GameObjectDict::finalizeNames()
; decoder-mode: arm
004a3b08  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a3b0c  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a3b10  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a3b14  05 50 8f e0                                      add r5, pc, r5
004a3b18  06 30 95 e7                                      ldr r3, [r5, r6]
004a3b1c  00 30 93 e5                                      ldr r3, [r3]
004a3b20  00 00 53 e3                                      cmp r3, #0
004a3b24  1a 00 00 0a                                      beq #0x4a3b94
004a3b28  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a3b2c  07 20 95 e7                                      ldr r2, [r5, r7]
004a3b30  00 20 92 e5                                      ldr r2, [r2]
004a3b34  00 00 52 e3                                      cmp r2, #0
004a3b38  10 00 00 0a                                      beq #0x4a3b80
004a3b3c  00 40 a0 e3                                      mov r4, #0
004a3b40  01 00 00 ea                                      b #0x4a3b4c
004a3b44  06 30 95 e7                                      ldr r3, [r5, r6]
004a3b48  00 30 93 e5                                      ldr r3, [r3]
004a3b4c  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a3b50  01 40 84 e2                                      add r4, r4, #1
004a3b54  00 00 50 e3                                      cmp r0, #0
004a3b58  02 00 00 0a                                      beq #0x4a3b68
004a3b5c  37 b2 f9 eb                                      bl #0x310440
004a3b60  06 30 95 e7                                      ldr r3, [r5, r6]
004a3b64  00 30 93 e5                                      ldr r3, [r3]
004a3b68  07 20 95 e7                                      ldr r2, [r5, r7]
004a3b6c  00 20 92 e5                                      ldr r2, [r2]
004a3b70  04 00 52 e1                                      cmp r2, r4
004a3b74  f2 ff ff 8a                                      bhi #0x4a3b44
004a3b78  00 00 53 e3                                      cmp r3, #0
004a3b7c  01 00 00 0a                                      beq #0x4a3b88
004a3b80  03 00 a0 e1                                      mov r0, r3
004a3b84  2d b2 f9 eb                                      bl #0x310440
004a3b88  06 30 95 e7                                      ldr r3, [r5, r6]
004a3b8c  00 20 a0 e3                                      mov r2, #0
004a3b90  00 20 83 e5                                      str r2, [r3]
004a3b94  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a3b98  7c 0f 4f 00 a0 46 00 00 48 11 00 00              .byte 0x7c, 0x0f, 0x4f, 0x00, 0xa0, 0x46, 0x00, 0x00, 0x48, 0x11, 0x00, 0x00

; FUNCTION 0x004a3ba4, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::GameObjectDict
; alias: _ZN6Arrays14GameObjectDict8finalizeEv
; demangled: Arrays::GameObjectDict::finalize()
; decoder-mode: arm
004a3ba4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a3ba8  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a3bac  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a3bb0  05 50 8f e0                                      add r5, pc, r5
004a3bb4  07 30 95 e7                                      ldr r3, [r5, r7]
004a3bb8  00 30 93 e5                                      ldr r3, [r3]
004a3bbc  00 00 53 e3                                      cmp r3, #0
004a3bc0  2c 00 00 0a                                      beq #0x4a3c78
004a3bc4  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a3bc8  08 20 95 e7                                      ldr r2, [r5, r8]
004a3bcc  00 20 92 e5                                      ldr r2, [r2]
004a3bd0  00 00 52 e3                                      cmp r2, #0
004a3bd4  12 00 00 0a                                      beq #0x4a3c24
004a3bd8  00 40 a0 e3                                      mov r4, #0
004a3bdc  04 60 a0 e1                                      mov r6, r4
004a3be0  01 00 00 ea                                      b #0x4a3bec
004a3be4  07 30 95 e7                                      ldr r3, [r5, r7]
004a3be8  00 30 93 e5                                      ldr r3, [r3]
004a3bec  04 00 83 e0                                      add r0, r3, r4
004a3bf0  04 30 93 e7                                      ldr r3, [r3, r4]
004a3bf4  0f e0 a0 e1                                      mov lr, pc
004a3bf8  08 f0 93 e5                                      ldr pc, [r3, #8]
004a3bfc  08 30 95 e7                                      ldr r3, [r5, r8]
004a3c00  01 60 86 e2                                      add r6, r6, #1
004a3c04  0c 40 84 e2                                      add r4, r4, #0xc
004a3c08  00 30 93 e5                                      ldr r3, [r3]
004a3c0c  06 00 53 e1                                      cmp r3, r6
004a3c10  f3 ff ff 8a                                      bhi #0x4a3be4
004a3c14  07 30 95 e7                                      ldr r3, [r5, r7]
004a3c18  00 30 93 e5                                      ldr r3, [r3]
004a3c1c  00 00 53 e3                                      cmp r3, #0
004a3c20  11 00 00 0a                                      beq #0x4a3c6c
004a3c24  04 20 13 e5                                      ldr r2, [r3, #-4]
004a3c28  0c 00 a0 e3                                      mov r0, #0xc
004a3c2c  90 32 20 e0                                      mla r0, r0, r2, r3
004a3c30  00 00 53 e1                                      cmp r3, r0
004a3c34  01 00 00 1a                                      bne #0x4a3c40
004a3c38  09 00 00 ea                                      b #0x4a3c64
004a3c3c  04 00 a0 e1                                      mov r0, r4
004a3c40  0c 40 40 e2                                      sub r4, r0, #0xc
004a3c44  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
004a3c48  04 00 a0 e1                                      mov r0, r4
004a3c4c  0f e0 a0 e1                                      mov lr, pc
004a3c50  00 f0 93 e5                                      ldr pc, [r3]
004a3c54  07 30 95 e7                                      ldr r3, [r5, r7]
004a3c58  00 00 93 e5                                      ldr r0, [r3]
004a3c5c  04 00 50 e1                                      cmp r0, r4
004a3c60  f5 ff ff 1a                                      bne #0x4a3c3c
004a3c64  08 00 40 e2                                      sub r0, r0, #8
004a3c68  f4 b1 f9 eb                                      bl #0x310440
004a3c6c  07 30 95 e7                                      ldr r3, [r5, r7]
004a3c70  00 20 a0 e3                                      mov r2, #0
004a3c74  00 20 83 e5                                      str r2, [r3]
004a3c78  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a3c7c  e0 0e 4f 00 a8 1c 00 00 48 11 00 00              .byte 0xe0, 0x0e, 0x4f, 0x00, 0xa8, 0x1c, 0x00, 0x00, 0x48, 0x11, 0x00, 0x00

; FUNCTION 0x004b2130, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::GameObjectDict
; alias: _ZN6Arrays14GameObjectDict9readNamesEP11IStreamBase
; demangled: Arrays::GameObjectDict::readNames(IStreamBase*)
; decoder-mode: arm
004b2130  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b2134  00 70 a0 e1                                      mov r7, r0
004b2138  1c d0 4d e2                                      sub sp, sp, #0x1c
004b213c  71 c6 ff eb                                      bl #0x4a3b08
004b2140  07 00 a0 e1                                      mov r0, r7
004b2144  51 86 f9 eb                                      bl #0x313a90
004b2148  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b214c  01 30 a0 e3                                      mov r3, #1
004b2150  00 00 53 e3                                      cmp r3, #0
004b2154  06 60 8f e0                                      add r6, pc, r6
004b2158  14 00 8d e5                                      str r0, [sp, #0x14]
004b215c  0c 30 8d e5                                      str r3, [sp, #0xc]
004b2160  12 00 00 1a                                      bne #0x4b21b0
004b2164  14 30 8d e2                                      add r3, sp, #0x14
004b2168  02 20 83 e2                                      add r2, r3, #2
004b216c  01 30 83 e2                                      add r3, r3, #1
004b2170  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b2174  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b2178  03 00 52 e1                                      cmp r2, r3
004b217c  02 40 a0 e1                                      mov r4, r2
004b2180  01 10 20 e0                                      eor r1, r0, r1
004b2184  01 10 43 e5                                      strb r1, [r3, #-1]
004b2188  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b218c  00 10 21 e0                                      eor r1, r1, r0
004b2190  01 10 c2 e5                                      strb r1, [r2, #1]
004b2194  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b2198  01 20 42 e2                                      sub r2, r2, #1
004b219c  00 10 21 e0                                      eor r1, r1, r0
004b21a0  01 10 43 e5                                      strb r1, [r3, #-1]
004b21a4  01 30 83 e2                                      add r3, r3, #1
004b21a8  f0 ff ff 8a                                      bhi #0x4b2170
004b21ac  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b21b0  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b21b4  03 30 96 e7                                      ldr r3, [r6, r3]
004b21b8  00 30 93 e5                                      ldr r3, [r3]
004b21bc  00 00 53 e1                                      cmp r3, r0
004b21c0  01 00 00 0a                                      beq #0x4b21cc
004b21c4  1c d0 8d e2                                      add sp, sp, #0x1c
004b21c8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b21cc  00 01 a0 e1                                      lsl r0, r0, #2
004b21d0  01 10 a0 e3                                      mov r1, #1
004b21d4  e4 78 f9 eb                                      bl #0x31056c
004b21d8  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b21dc  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b21e0  09 30 96 e7                                      ldr r3, [r6, sb]
004b21e4  00 00 52 e3                                      cmp r2, #0
004b21e8  00 00 83 e5                                      str r0, [r3]
004b21ec  f4 ff ff 0a                                      beq #0x4b21c4
004b21f0  10 a0 8d e2                                      add sl, sp, #0x10
004b21f4  01 80 a0 e3                                      mov r8, #1
004b21f8  08 10 8a e0                                      add r1, sl, r8
004b21fc  02 30 8a e2                                      add r3, sl, #2
004b2200  00 40 a0 e3                                      mov r4, #0
004b2204  0a 00 8d e8                                      stm sp, {r1, r3}
004b2208  07 00 a0 e1                                      mov r0, r7
004b220c  0a 10 a0 e1                                      mov r1, sl
004b2210  e2 b3 fc eb                                      bl #0x3df1a0
004b2214  00 00 58 e3                                      cmp r8, #0
004b2218  0c 80 8d e5                                      str r8, [sp, #0xc]
004b221c  0f 00 00 1a                                      bne #0x4b2260
004b2220  00 30 9d e5                                      ldr r3, [sp]
004b2224  04 20 9d e5                                      ldr r2, [sp, #4]
004b2228  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b222c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b2230  03 00 52 e1                                      cmp r2, r3
004b2234  01 10 20 e0                                      eor r1, r0, r1
004b2238  01 10 43 e5                                      strb r1, [r3, #-1]
004b223c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b2240  00 10 21 e0                                      eor r1, r1, r0
004b2244  01 10 c2 e5                                      strb r1, [r2, #1]
004b2248  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b224c  01 20 42 e2                                      sub r2, r2, #1
004b2250  00 10 21 e0                                      eor r1, r1, r0
004b2254  01 10 43 e5                                      strb r1, [r3, #-1]
004b2258  01 30 83 e2                                      add r3, r3, #1
004b225c  f1 ff ff 8a                                      bhi #0x4b2228
004b2260  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b2264  09 50 96 e7                                      ldr r5, [r6, sb]
004b2268  01 10 a0 e3                                      mov r1, #1
004b226c  01 00 80 e0                                      add r0, r0, r1
004b2270  00 b0 95 e5                                      ldr fp, [r5]
004b2274  bc 78 f9 eb                                      bl #0x31056c
004b2278  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b227c  00 30 95 e5                                      ldr r3, [r5]
004b2280  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b2284  07 00 a0 e1                                      mov r0, r7
004b2288  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b228c  00 30 a0 e3                                      mov r3, #0
004b2290  6f 94 f9 eb                                      bl #0x317454
004b2294  00 30 95 e5                                      ldr r3, [r5]
004b2298  00 10 a0 e3                                      mov r1, #0
004b229c  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b22a0  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b22a4  01 40 84 e2                                      add r4, r4, #1
004b22a8  03 10 c2 e7                                      strb r1, [r2, r3]
004b22ac  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b22b0  04 00 53 e1                                      cmp r3, r4
004b22b4  d3 ff ff 8a                                      bhi #0x4b2208
004b22b8  c1 ff ff ea                                      b #0x4b21c4
; mapping-symbol data/literal pool
004b22bc  3c 29 4e 00 48 11 00 00 a0 46 00 00              .byte 0x3c, 0x29, 0x4e, 0x00, 0x48, 0x11, 0x00, 0x00, 0xa0, 0x46, 0x00, 0x00

; FUNCTION 0x004b22c8, declared_size=4, range_size=4, mode=arm
; class-group: Arrays::GameObjectDict
; alias: _ZN6Arrays14GameObjectDict9skipNamesEP11IStreamBase
; demangled: Arrays::GameObjectDict::skipNames(IStreamBase*)
; decoder-mode: arm
004b22c8  98 ff ff ea                                      b #0x4b2130

; FUNCTION 0x004b5544, declared_size=332, range_size=332, mode=arm
; class-group: Arrays::GameObjectDict
; alias: _ZN6Arrays14GameObjectDict4readEP11IStreamBase
; demangled: Arrays::GameObjectDict::read(IStreamBase*)
; decoder-mode: arm
004b5544  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004b5548  0c d0 4d e2                                      sub sp, sp, #0xc
004b554c  00 a0 a0 e1                                      mov sl, r0
004b5550  4e 79 f9 eb                                      bl #0x313a90
004b5554  24 61 9f e5                                      ldr r6, [pc, #0x124]
004b5558  01 30 a0 e3                                      mov r3, #1
004b555c  00 00 53 e3                                      cmp r3, #0
004b5560  04 00 8d e5                                      str r0, [sp, #4]
004b5564  00 30 8d e5                                      str r3, [sp]
004b5568  06 60 8f e0                                      add r6, pc, r6
004b556c  10 00 00 1a                                      bne #0x4b55b4
004b5570  04 30 8d e2                                      add r3, sp, #4
004b5574  02 20 83 e2                                      add r2, r3, #2
004b5578  01 30 83 e2                                      add r3, r3, #1
004b557c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b5580  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b5584  03 00 52 e1                                      cmp r2, r3
004b5588  01 10 20 e0                                      eor r1, r0, r1
004b558c  01 10 43 e5                                      strb r1, [r3, #-1]
004b5590  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b5594  00 10 21 e0                                      eor r1, r1, r0
004b5598  01 10 c2 e5                                      strb r1, [r2, #1]
004b559c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b55a0  01 20 42 e2                                      sub r2, r2, #1
004b55a4  00 10 21 e0                                      eor r1, r1, r0
004b55a8  01 10 43 e5                                      strb r1, [r3, #-1]
004b55ac  01 30 83 e2                                      add r3, r3, #1
004b55b0  f1 ff ff 8a                                      bhi #0x4b557c
004b55b4  7a b9 ff eb                                      bl #0x4a3ba4
004b55b8  c4 70 9f e5                                      ldr r7, [pc, #0xc4]
004b55bc  04 40 9d e5                                      ldr r4, [sp, #4]
004b55c0  0c 50 a0 e3                                      mov r5, #0xc
004b55c4  07 30 96 e7                                      ldr r3, [r6, r7]
004b55c8  95 04 00 e0                                      mul r0, r5, r4
004b55cc  00 40 83 e5                                      str r4, [r3]
004b55d0  08 00 80 e2                                      add r0, r0, #8
004b55d4  01 10 a0 e3                                      mov r1, #1
004b55d8  e3 6b f9 eb                                      bl #0x31056c
004b55dc  00 00 54 e3                                      cmp r4, #0
004b55e0  00 50 80 e5                                      str r5, [r0]
004b55e4  04 40 80 e5                                      str r4, [r0, #4]
004b55e8  08 30 80 e2                                      add r3, r0, #8
004b55ec  0a 00 00 0a                                      beq #0x4b561c
004b55f0  90 10 9f e5                                      ldr r1, [pc, #0x90]
004b55f4  00 20 a0 e3                                      mov r2, #0
004b55f8  02 c0 a0 e1                                      mov ip, r2
004b55fc  01 10 96 e7                                      ldr r1, [r6, r1]
004b5600  08 10 81 e2                                      add r1, r1, #8
004b5604  01 20 82 e2                                      add r2, r2, #1
004b5608  04 00 52 e1                                      cmp r2, r4
004b560c  08 10 80 e5                                      str r1, [r0, #8]
004b5610  10 c0 80 e5                                      str ip, [r0, #0x10]
004b5614  0c 00 80 e2                                      add r0, r0, #0xc
004b5618  f9 ff ff 1a                                      bne #0x4b5604
004b561c  07 20 96 e7                                      ldr r2, [r6, r7]
004b5620  64 80 9f e5                                      ldr r8, [pc, #0x64]
004b5624  00 10 92 e5                                      ldr r1, [r2]
004b5628  08 20 96 e7                                      ldr r2, [r6, r8]
004b562c  00 00 51 e3                                      cmp r1, #0
004b5630  00 30 82 e5                                      str r3, [r2]
004b5634  0f 00 00 0a                                      beq #0x4b5678
004b5638  00 40 a0 e3                                      mov r4, #0
004b563c  04 50 a0 e1                                      mov r5, r4
004b5640  01 00 00 ea                                      b #0x4b564c
004b5644  08 30 96 e7                                      ldr r3, [r6, r8]
004b5648  00 30 93 e5                                      ldr r3, [r3]
004b564c  04 00 83 e0                                      add r0, r3, r4
004b5650  0a 10 a0 e1                                      mov r1, sl
004b5654  04 30 93 e7                                      ldr r3, [r3, r4]
004b5658  0f e0 a0 e1                                      mov lr, pc
004b565c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004b5660  07 30 96 e7                                      ldr r3, [r6, r7]
004b5664  01 50 85 e2                                      add r5, r5, #1
004b5668  0c 40 84 e2                                      add r4, r4, #0xc
004b566c  00 30 93 e5                                      ldr r3, [r3]
004b5670  05 00 53 e1                                      cmp r3, r5
004b5674  f2 ff ff 8a                                      bhi #0x4b5644
004b5678  0c d0 8d e2                                      add sp, sp, #0xc
004b567c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004b5680  28 f5 4d 00 48 11 00 00 bc 0a 00 00 a8 1c 00 00  .byte 0x28, 0xf5, 0x4d, 0x00, 0x48, 0x11, 0x00, 0x00, 0xbc, 0x0a, 0x00, 0x00, 0xa8, 0x1c, 0x00, 0x00
